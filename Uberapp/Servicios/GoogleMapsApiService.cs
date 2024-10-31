using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

using Uberapp.Conexiones;
using Uberapp.Modelo;
using Uberapp.Vistas.Registro;

using Xamarin.Essentials;
using Xamarin.Forms.GoogleMaps;
using Xamarin.Forms;

namespace Uberapp.Servicios
  {
  public class GoogleMapsApiService : IGoogleMapsApiService
    {
    private const string ApiBaseAddress = "https://maps.googleapis.com/maps/";
    private HttpClient CreateClient()
      {
      var httpClient = new HttpClient
        {
        BaseAddress=new Uri(ApiBaseAddress)
        };
      httpClient.DefaultRequestHeaders.Accept.Clear();
      httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
      return httpClient;
      }
    public async Task<GooglePlaceAutoCompleteResult> ApiPlaces(string text)
      {
      GooglePlaceAutoCompleteResult results = null;
      using(var httpclient = CreateClient())
        {
        var response = await httpclient.GetAsync($"api/place/autocomplete/json?input={Uri.EscapeUriString(text)}&key={Constantes.GoogleMapsApiKey}").ConfigureAwait(false);
        if(response.IsSuccessStatusCode)
          {
          var json = await response.Content.ReadAsStringAsync().ConfigureAwait(false);
          if(!string.IsNullOrWhiteSpace(json)&&json!="ERROR")
            {
            results=await Task.Run(() =>
            JsonConvert.DeserializeObject<GooglePlaceAutoCompleteResult>(json)).ConfigureAwait(false);

            }
          }
        }
      return results;
      }
    public async Task<GooglePlace> ApiPlacesDetails(string placeId)
      {
      GooglePlace result = null;
      using(var httpClient = CreateClient())
        {
        var response = await httpClient.GetAsync($"api/place/details/json?placeid={Uri.EscapeUriString(placeId)}&key={Constantes.GoogleMapsApiKey}").ConfigureAwait(false);
        if(response.IsSuccessStatusCode)
          {
          var json = await response.Content.ReadAsStringAsync().ConfigureAwait(false);
          if(!string.IsNullOrWhiteSpace(json)&&json!="ERROR")
            {
            result=new GooglePlace(JObject.Parse(json));
            }
          }
        }
      return result;
      }
    #region MATRIX API
    double latitudActual;
    double longitudActual;
    public async Task<Mlocalizacionactual> LocalizacionActual(Xamarin.Forms.GoogleMaps.Map map)
      {
      try
        {
        var p = new Mlocalizacionactual();
        var location = await Geolocation.GetLastKnownLocationAsync();
        if(location==null)
          {
          location=await Geolocation.GetLocationAsync(new GeolocationRequest
            {
            DesiredAccuracy=GeolocationAccuracy.High,
            Timeout=TimeSpan.FromSeconds(30)
            });
          }
        else
          {
          latitudActual =location.Latitude;
          longitudActual=location.Longitude;
          var punto = new Pin()
            {
            Label="Tu ubicación",
            Type=PinType.Place,
            Icon=(Device.RuntimePlatform==Device.Android) ? BitmapDescriptorFactory.FromBundle("pinactual.png") : BitmapDescriptorFactory.FromView(new Image() { Source="pinactual.png",WidthRequest=64,HeightRequest=64 }),
            Position=new Position(latitudActual,longitudActual),
            IsDraggable=true
            };
          map.Pins.Add(punto);
          var posicion = new Position(latitudActual,longitudActual);

          map.MoveToRegion(MapSpan.FromCenterAndRadius(posicion,Distance.FromMeters(500)));
          var posicionString = latitudActual+"*"+longitudActual;
          
          p.latitud =Math.Round(latitudActual,7);
          p.longitud =Math.Round(longitudActual,7);
         
          }
        return p;
        }
      catch(Exception )
        {
        await Application.Current.MainPage.DisplayAlert("Alerta","Active la ubicación","OK");
        return null;
        }
      }
    public async Task<GoogleMatrix> Calculardistanciatiempo(string origen,string destino)
      {
      GoogleMatrix result = null;
      using(var httpClient = CreateClient())
        {
        var response = await httpClient.GetAsync($"api/distancematrix/json?origins={origen}&destinations={destino}&key={Constantes.GoogleMapsApiKey}").ConfigureAwait(false);
        if(response.IsSuccessStatusCode)
          {
          var json = await response.Content.ReadAsStringAsync().ConfigureAwait(false);
          if(!string.IsNullOrWhiteSpace(json)&&json!="ERROR")
            {
            result=await Task.Run(() =>
            JsonConvert.DeserializeObject<GoogleMatrix>(json)).ConfigureAwait(false);
            }
          }
        }
      return result;
      }
    #endregion
    }
  }
