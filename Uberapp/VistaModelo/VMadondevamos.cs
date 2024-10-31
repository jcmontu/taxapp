using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

using Uberapp.Datos;
using Uberapp.Modelo;
using Uberapp.Servicios;
using Uberapp.VistaModelo;
using Uberapp.Vistas.Configuraciones;
using Uberapp.Vistas.Navegacion;
using Uberapp.Vistas.Registro;

using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.GoogleMaps;
using Xamarin.Forms.OpenWhatsApp;

using static Xamarin.Essentials.Permissions;

namespace Uberapp.VistaModelo
  {
  public class VMadondevamos : BaseViewModel
    {
    #region VARIABLES
    List<GooglePlaceAutoCompletePrediction> _listadirecciones;
    private readonly IGoogleMapsApiService _googleMapsApi = new GoogleMapsApiService();
    string _txtorigen;
    string _txtdestino;
    double ltOrigen = 0;
    double lgOrigen = 0;
    double ltDestino = 0;
    double lgDestino = 0;
    bool _selectorigen;
    bool _selectdestino;
    bool _enabledTxtorigen;
    bool _enabledTxtdestino;
    bool _visibleListdirec;
    bool _fijarenmapa;
    bool _visibleOfertar;
    string _txttarifaEmerg;
    string _txttarifa;
    string _txtbuscador;
    Pin punto = new Pin();
    Xamarin.Forms.GoogleMaps.Map mapa;
    public GoogleMatrix ParametrosMatrix { get; set; }
    ObservableCollection<Mofertasdeconduct> _listaofertas;
    bool _visibleOfertas;
    bool _visibleEsperarOfertas;
    Mpedidos _mpedidos;
    bool _visibleNavegar;
    string Idpedido;
    bool _visibleHallegado;
    bool _visibleCalificar;
    string _txtcomentarCalif;
    string _rating;
    string _estado = "0";
    string _txtcomentarios;
    private readonly IGoogleManager _googleManager;
    string Iduser;
    string _idpasarelapagos;

    List<Mpasarelapagos> _listpasarelapagos;
    bool _visibleEditarprecio;
    string _txttarifaEditar;
    double tarifaInicial;
    Musuarios _muserrecibe;
    bool _visibleConfig;
    string _fotouser;
    string _nombreuser;
    string _idgoogle;
    public static bool _estadoActual = false;

    string _simboloMoneda;
    //conductores
    string _nombreApellidoCond;
    string _fotoperilcond;
    string _nroplaca;
    string _marca;
    string _idconductor;
    string _celularCond;
    string _tiempoAlorigen;
    string _fotovehiculo;

    #endregion
    #region CONSTRUCTOR
    public VMadondevamos(INavigation navigation,Xamarin.Forms.GoogleMaps.Map mapareferencia)
      {
      Muserrecibe = new Musuarios();
      Navigation=navigation;
      mapa=mapareferencia;
      mapa.PropertyChanged+=Mapa_PropertyChanged;
      EnabledTxtorigen=false;
      EnabledTxtdestino=false;
      Selectorigen=false;
      Selectdestino=false;
      VisibleListdirec=false;
      Fijarenmapa=false;
      VisibleOfertar=false;
      Txtbuscador="";
      VisibleOfertas=false;
      VisibleEsperarOfertas=false;
      VisibleNavegar=false;
      VisibleHallegado=false;
      VisibleCalificar=false;
      VisibleEditarprecio=false;
      VisibleConfig=false;
      _googleManager=DependencyService.Get<IGoogleManager>();
      LoguearseConGmail();
      }


    #endregion
    #region OBJETOS
    public string Fotovehiculo
      {
      get { return _fotovehiculo; }
      set { SetValue(ref _fotovehiculo,value); }
      }
    public string TiempoAlorigen
      {
      get { return _tiempoAlorigen; }
      set { SetValue(ref _tiempoAlorigen,value); }
      }
    public string CelularCond
      {
      get { return _celularCond; }
      set { SetValue(ref _celularCond,value); }
      }
    public string Marca
      {
      get { return _marca; }
      set { SetValue(ref _marca,value); }
      }
    public string NombreApellidoCond
      {
      get { return _nombreApellidoCond; }
      set { SetValue(ref _nombreApellidoCond,value); }
      }
    public string Fotoperilcond
      {
      get { return _fotoperilcond; }
      set { SetValue(ref _fotoperilcond,value); }
      }
    public string Nroplaca
      {
      get { return _nroplaca; }
      set { SetValue(ref _nroplaca,value); }
      }
    public string SimboloMoneda
      {
      get { return _simboloMoneda; }
      set { SetValue(ref _simboloMoneda,value); }
      }
    public string Fotouser
      {
      get { return _fotouser; }
      set { SetValue(ref _fotouser,value); }
      }
    public string Nombreuser
      {
      get { return _nombreuser; }
      set { SetValue(ref _nombreuser,value); }
      }
    public Musuarios Muserrecibe
      {
      get { return _muserrecibe; }
      set { SetValue(ref _muserrecibe,value); }
      }
    public bool VisibleConfig
      {
      get { return _visibleConfig; }
      set { SetValue(ref _visibleConfig,value); }
      }

    public string TxttarifaEditar
      {
      get { return _txttarifaEditar; }
      set { SetValue(ref _txttarifaEditar,value); }
      }
    public bool VisibleEditarprecio
      {
      get { return _visibleEditarprecio; }
      set { SetValue(ref _visibleEditarprecio,value); }
      }
    public List<Mpasarelapagos> Listpasarelapagos
      {
      get { return _listpasarelapagos; }
      set { SetValue(ref _listpasarelapagos,value); }
      }
    public string Txtcomentarios
      {
      get { return _txtcomentarios; }
      set { SetValue(ref _txtcomentarios,value); }
      }
    public string Rating
      {
      get { return _rating; }
      set { SetValue(ref _rating,value); }
      }
    public string TxtcomentarCalif
      {
      get { return _txtcomentarCalif; }
      set { SetValue(ref _txtcomentarCalif,value); }
      }
    public bool VisibleCalificar
      {
      get { return _visibleCalificar; }
      set { SetValue(ref _visibleCalificar,value); }
      }
    public bool VisibleHallegado
      {
      get { return _visibleHallegado; }
      set { SetValue(ref _visibleHallegado,value); }
      }
    public bool VisibleNavegar
      {
      get { return _visibleNavegar; }
      set { SetValue(ref _visibleNavegar,value); }
      }
    public bool VisibleEsperarOfertas
      {
      get { return _visibleEsperarOfertas; }
      set { SetValue(ref _visibleEsperarOfertas,value); }
      }
    public bool VisibleOfertas
      {
      get { return _visibleOfertas; }
      set { SetValue(ref _visibleOfertas,value); }
      }
    public ObservableCollection<Mofertasdeconduct> Listaofertas
      {
      get { return _listaofertas; }
      set { SetValue(ref _listaofertas,value); }
      }
    public string Txtbuscador
      {
      get { return _txtbuscador; }
      set { SetValue(ref _txtbuscador,value); }
      }
    public string TxttarifaEmerg
      {
      get { return _txttarifaEmerg; }
      set { SetValue(ref _txttarifaEmerg,value); }
      }
    public string Txttarifa
      {
      get { return _txttarifa; }
      set { SetValue(ref _txttarifa,value); }
      }
    public bool VisibleOfertar
      {
      get { return _visibleOfertar; }
      set { SetValue(ref _visibleOfertar,value); }
      }
    public bool Fijarenmapa
      {
      get { return _fijarenmapa; }
      set { SetValue(ref _fijarenmapa,value); }
      }
    public bool VisibleListdirec
      {
      get { return _visibleListdirec; }
      set { SetValue(ref _visibleListdirec,value); }
      }
    public bool Selectorigen
      {
      get { return _selectorigen; }
      set { SetValue(ref _selectorigen,value); }

      }
    public bool Selectdestino
      {
      get { return _selectdestino; }
      set { SetValue(ref _selectdestino,value); }
      }
    public bool EnabledTxtdestino
      {
      get { return _enabledTxtdestino; }
      set { SetValue(ref _enabledTxtdestino,value); }
      }
    public bool EnabledTxtorigen
      {
      get { return _enabledTxtorigen; }
      set { SetValue(ref _enabledTxtorigen,value); }
      }
    public string Txtorigen
      {
      get { return _txtorigen; }
      set { SetValue(ref _txtorigen,value); }
      }
    public string Txtdestino
      {
      get { return _txtdestino; }
      set { SetValue(ref _txtdestino,value); }
      }
    public List<GooglePlaceAutoCompletePrediction> Listadirecciones
      {
      get { return _listadirecciones; }
      set { SetValue(ref _listadirecciones,value); }
      }
    #endregion
    #region PROCESOS

    private void LoguearseConGmail()
      {
      _googleManager.Login(OnLoginComplete);
      }
    private async void OnLoginComplete(GoogleUser googleuserTrae,string message)
      {
      if(googleuserTrae!=null)
        {
        var funcion = new Dusuarios();
        var parametros = new Musuarios();
        parametros.idgoogle=googleuserTrae.Idgoogle;
        _idgoogle=googleuserTrae.Idgoogle;
        var lista = await funcion.ListarUserXidgoogle(parametros);
        Muserrecibe=new Musuarios();

        if(lista.Count>0)
          {
          lista.ForEach(item =>
                 {
                   Iduser=item.id;
                   Muserrecibe.id=item.id;
                   Muserrecibe.nombre=item.nombre;
                   Muserrecibe.apellido=item.apellido;
                   Muserrecibe.foto=item.foto;
                   Muserrecibe.correo=item.correo;
                   Nombreuser=item.nombre;
                   Fotouser=item.foto;
                   SimboloMoneda=item.simbolomoneda;
                 });
          LocalizacionActual();
          MostrarpasarelaPagos();
          Task.Run(PinActual);
          Listarofertas();
          Activartimer();
          }
        else
          {
          Application.Current.MainPage=new NavigationPage(new Empezar());
          }

        }
      else
        {
        await DisplayAlert("Message",message,"OK");
        }
      }
    //public string Autenticacion()
    //  {
    //  try
    //    {
    //    var ruta = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal),"auth.txt");
    //    _estado=(File.ReadAllText(ruta)).ToString();
    //    return _estado;
    //    }
    //  catch(Exception)
    //    {

    //    return _estado;
    //    }
    //  }


    private void Agregartarifa()
      {
      Txttarifa=TxttarifaEmerg;
      Cerrarofertar();
      }
    private void Cerrarofertar()
      {
      VisibleOfertar=false;
      }
    private void VerOfertar()
      {
      VisibleOfertar=true;
      }
    [Obsolete]
    private async void Mapa_PropertyChanged(object sender,System.ComponentModel.PropertyChangedEventArgs e)
      {
      if(Fijarenmapa==false)
        {
        return;
        }
      var m = (Xamarin.Forms.GoogleMaps.Map)sender;
      if(m.VisibleRegion!=null)
        {
        if(Selectorigen==true)
          {
          Txtorigen=await ObtenerDireccion(m.VisibleRegion.Center.Latitude,m.VisibleRegion.Center.Longitude);
          ltOrigen=m.VisibleRegion.Center.Latitude;
          lgOrigen=m.VisibleRegion.Center.Longitude;
          }
        if(Selectdestino==true)
          {
          Txtdestino=await ObtenerDireccion(m.VisibleRegion.Center.Latitude,m.VisibleRegion.Center.Longitude);
          ltDestino=m.VisibleRegion.Center.Latitude;
          lgDestino=m.VisibleRegion.Center.Longitude;
          }
        }
      }
    private async Task<string> ObtenerDireccion(double lt,double lg)
      {
      try
        {
        Geocoder geoCoder = new Geocoder();
        Position position = new Position(lt,lg);
        IEnumerable<string> direcciones = await geoCoder.GetAddressesForPositionAsync(position);
        string direccion = direcciones.FirstOrDefault();
        return direccion;
        }
      catch(Exception ex)
        {
        Console.WriteLine(ex.Message);
        return ex.Message;
        }
      }
    private void FijarenMapa()
      {
      Fijarenmapa=true;
      VisibleListdirec=false;
      EnabledTxtorigen=false;
      EnabledTxtdestino=false;
      }
    public async Task PinActual()
      {
      punto=new Pin()
        {
        Label="Tu ubicación",
        Type=PinType.Place,
        Icon=(Device.RuntimePlatform==Device.Android) ? BitmapDescriptorFactory.FromBundle("pinactual.png") : BitmapDescriptorFactory.FromView(new Image() { Source="pinactual.png",WidthRequest=64,HeightRequest=64 }),
        Position=new Position(0,0)

        };
      mapa.Pins.Add(punto);
      await GeolocalizacionActual();
      }
    public async Task GeolocalizacionActual()
      {
      try
        {
        var location = await Geolocation.GetLastKnownLocationAsync();
        if(location==null)
          {
          location=await Geolocation.GetLocationAsync(new GeolocationRequest
            {
            DesiredAccuracy=GeolocationAccuracy.High,
            Timeout=TimeSpan.FromSeconds(30)
            });

          }
        if(location!=null)
          {
          ltOrigen=location.Latitude;
          lgOrigen=location.Longitude;
          Txtorigen="Tu ubicación";
          var posicion = new Position(ltOrigen,lgOrigen);
          punto.Position=new Position(ltOrigen,lgOrigen);
          mapa.MoveToRegion(MapSpan.FromCenterAndRadius(posicion,Distance.FromMeters(500)));
          }
        }
      catch(Exception ex)
        {

        Console.WriteLine(ex.Message);
        }
      }
    private async Task Buscardirecciones(string buscador)
      {
      var places = await _googleMapsApi.ApiPlaces(buscador);
      var placeResults = places.AutoCompletePlaces;
      if(placeResults!=null&&placeResults.Count>0)
        {
        Listadirecciones=new List<GooglePlaceAutoCompletePrediction>(placeResults);
        }
      }
    private async Task SeleccionarDireccion(GooglePlaceAutoCompletePrediction parametros)
      {
      var coordenadas = await _googleMapsApi.ApiPlacesDetails(parametros.PlaceId);
      if(coordenadas!=null)
        {
        if(Selectorigen==true)
          {
          ltOrigen=coordenadas.Latitude;
          lgOrigen=coordenadas.Longitude;
          Txtorigen=coordenadas.Name;
          }
        if(Selectdestino==true)
          {
          ltDestino=coordenadas.Latitude;
          lgDestino=coordenadas.Longitude;
          Txtdestino=coordenadas.Name;
          }
        VisibleListdirec=false;
        }
      }
    private void SelecionarOrigen()
      {
      Selectorigen=true;
      Selectdestino=false;
      EnabledTxtorigen=true;
      EnabledTxtdestino=false;
      VisibleListdirec=true;
      Fijarenmapa=false;
      Txtbuscador="";
      }
    private void SelecionarDestino()
      {
      Selectorigen=false;
      Selectdestino=true;
      EnabledTxtorigen=false;
      EnabledTxtdestino=true;
      VisibleListdirec=true;
      Fijarenmapa=false;
      Txtbuscador="";
      }
    private async void Insertarpedido()
      {
      if(!string.IsNullOrWhiteSpace(Txtorigen))
        {
        if(!string.IsNullOrWhiteSpace(Txtdestino))
          {
          if(!string.IsNullOrWhiteSpace(Txttarifa))
            {
            if(string.IsNullOrWhiteSpace(Txtcomentarios))
              {
              Txtcomentarios="-";
              }
            var Coororigen = ltOrigen.ToString().Replace(",",".")+","+lgOrigen.ToString().Replace(",",".");
            var Coordestino = ltDestino.ToString().Replace(",",".")+","+lgDestino.ToString().Replace(",",".");
            ParametrosMatrix=await _googleMapsApi.Calculardistanciatiempo(Coororigen,Coordestino);
            var funcion = new Dpedidos();
            var parametros = new Mpedidos();
            parametros.origen_lugar=Txtorigen;
            parametros.destino_lugar=Txtdestino;
            parametros.idchofer="Modelo";
            parametros.iduser=Iduser;
            parametros.lt_lg_origen=Coororigen;
            parametros.lt_lg_destino=Coordestino;
            parametros.estado="PENDIENTE";
            parametros.tiempo=ParametrosMatrix.Rows[0].Elements[0].duration.text;
            parametros.tarifa=Txttarifa;
            parametros.distancia=ParametrosMatrix.Rows[0].Elements[0].distance.value.ToString();
            parametros.notificacion="-";
            parametros.califalconductor="-";
            parametros.comentalconductor="-";
            parametros.califalcliente="-";
            parametros.comentariosdeseos=Txtcomentarios;
            parametros.idpasarelapago=_idpasarelapagos;
            parametros.tiempoalorigen=TiempoAlorigen;
            await funcion.Insertarpedidos(parametros);
            VisibleEsperarOfertas=true;
            }
          else
            {
            await DisplayAlert("Faltan datos","Ingrese una tarifa","OK");
            }
          }
        else
          {
          await DisplayAlert("Faltan datos","Seleccione un destino","OK");
          }
        }
      else
        {
        await DisplayAlert("Faltan datos","Seleccione un origen","OK");
        }


      }
    private void Volverdebuscar()
      {
      VisibleListdirec=false;
      }
    public async void Listarofertas()
      {
      var funcion = new Dofertasdeconduct();
      var parametros = new Mpedidos();
      parametros.iduser=Iduser;
      Listaofertas=await funcion.Listaofertas(parametros);
      }
    private void Activartimer()
      {
      var tiempo = TimeSpan.FromSeconds(1);
      Device.StartTimer(tiempo,() =>
      {
        if(Listaofertas!=null)
          {
          if(Listaofertas.Count>0)
            {
            VisibleEsperarOfertas=true;
            VisibleOfertas=true;
            foreach(var item in Listaofertas)
              {
              var timespan = item.Timespan-TimeSpan.FromSeconds(1);
              item.Timespan=timespan;
              String[] cadena = timespan.ToString().Split(':');
              var time = cadena[2];
              item.Progress=Convert.ToDouble(time)*0.05;
              if(Convert.ToDouble(time)==0)
                {
                VisibleOfertas=false;
                }
              }
            }
          else
            {

            VisibleOfertas=false;
            ValidarpedidosPend();
            ValidarpedidosConfir();
            ValidarpedidosFin();
            }
          }

        return true;
      });
      }
    private async void ValidarpedidosFin()
      {
      var funcion = new Dpedidos();
      var parametros = new Mpedidos();
      parametros.iduser=Iduser;
      var lista = await funcion.ListarPedidosFinalizados(parametros);
      if(lista.Count>0)
        {
        lista.ForEach(item =>
        {
          Idpedido=item.idpedido;
        });
        VisibleCalificar=true;
        }
      else
        {
        VisibleCalificar=false;
        }
      }
    private async void Calificar()
      {
      if(!string.IsNullOrWhiteSpace(TxtcomentarCalif))
        {
        if(!string.IsNullOrWhiteSpace(Rating))
          {
          var funcion = new Dpedidos();
          var parametros = new Mpedidos();
          parametros.idpedido=Idpedido;
          parametros.comentalconductor=TxtcomentarCalif;
          parametros.califalconductor=Rating;
          await funcion.Calificar(parametros);
          VisibleCalificar=false;
          VisibleNavegar=false;
          }
        else
          {
          await DisplayAlert("Alerta","Seleccione un nivel de calificación","Ok");
          }
        }
      else
        {
        await DisplayAlert("Alerta","Ingrese un comentario","Ok");
        }
      }
    private async void ValidarpedidosConfir()
      {
      var funcion = new Dpedidos();
      var parametros = new Mpedidos();
      parametros.iduser=Iduser;
      var lista = await funcion.ListarPedidosConfirmados(parametros);
      if(lista.Count>0)
        {
        VisibleNavegar=true;
        var notificacion = "-";

        lista.ForEach(item =>
        {
          Idpedido=item.idpedido;
          _idconductor=item.idchofer;
          MostrarConductores();
          Txttarifa=item.tarifa;
          TiempoAlorigen=item.tiempoalorigen;
          notificacion=item.notificacion;
        });
        if(notificacion=="He llegado")
          {
          VisibleHallegado=true;
          }
        }
      }
    private async void EditarNotificacion()
      {
      var funcion = new Dpedidos();
      var parametros = new Mpedidos();
      parametros.idpedido=Idpedido;
      parametros.notificacion="Ok, en camino";

      await funcion.Editarnotificacion(parametros);
      VisibleHallegado=false;

      }
    private async void ValidarpedidosPend()
      {
      var funcion = new Dpedidos();
      var parametros = new Mpedidos();
      parametros.iduser=Iduser;
      var lista = await funcion.ListarPedidosPendientes(parametros);
      if(lista.Count>0)
        {
        lista.ForEach(item =>
        {
          Idpedido=item.idpedido;
          Txttarifa=item.tarifa;
        });
        tarifaInicial=Convert.ToDouble(Txttarifa);
        VisibleEsperarOfertas=true;
        VisibleOfertas=false;
        }
      else
        {
        VisibleEsperarOfertas=false;
        VisibleOfertas=false;
        }
      }
    private async void Confirmarpedido(Mofertasdeconduct parametros)
      {
      var funcion = new Dpedidos();
      _mpedidos=new Mpedidos();
      _mpedidos.iduser=Iduser;
      _mpedidos.tarifa=parametros.tarifa;
      _mpedidos.idchofer=parametros.idconductor;
      _mpedidos.idpedido=parametros.idpedido;
      _mpedidos.tiempoalorigen=parametros.tiempoalorigen;
      await funcion.Confirmarpedido(_mpedidos);
      VisibleNavegar=true;
      VisibleEsperarOfertas=false;
      }
    private async void MostrarpasarelaPagos()
      {
      var funcion = new Dpasarelapagos();
      Listpasarelapagos=await funcion.ListarpasarelaPagos();
      }
    private async void SelectPasarelapagos(Mpasarelapagos parametros)
      {
      _idpasarelapagos=parametros.id;
      if(!string.IsNullOrWhiteSpace(TxttarifaEmerg))
        {
        Txttarifa=TxttarifaEmerg;
        Cerrarofertar();
        }
      else
        {
        await DisplayAlert("Alerta","Ingrese una tarifa","Ok");
        }
      }
    private void OcultarEditarprecio()
      {
      VisibleEditarprecio=false;
      }
    private void VerEditarprecio()
      {
      VisibleEditarprecio=true;
      }
    private async void Aumentarprecio()
      {
      if(!string.IsNullOrWhiteSpace(TxttarifaEditar))
        {
        if(tarifaInicial<Convert.ToDouble(TxttarifaEditar))
          {
          var funcion = new Dpedidos();
          var parametros = new Mpedidos();
          parametros.idpedido=Idpedido;
          parametros.tarifa=TxttarifaEditar;
          await funcion.Aumentarprecio(parametros);
          OcultarEditarprecio();
          }
        else
          {
          await DisplayAlert("Alerta","Ingrese un precio mayor al actual","Ok");
          }
        }
      }
    private async void Eliminarpedido()
      {
      var respuesta = await DisplayAlert("¿Desea cancelar este pedido?","Se eliminara este registro","Si","No");
      if(respuesta==true)
        {
        var funcion = new Dpedidos();
        var parametros = new Mpedidos();
        parametros.idpedido=Idpedido;
        await funcion.Eliminarpedido(parametros);
        //elimando ofertas
        var f = new Dofertasdeconduct();
        var p = new Mpedidos();
        p.idpedido=Idpedido;
        await f.EliminarOfertas(p);
        VisibleEditarprecio=false;
        VisibleOfertas=false;
        VisibleNavegar=false;
        }


      }
    //private async void EliminarOfertas()
    //  {
    //  var f = new Dofertasdeconduct();
    //  var p = new Mpedidos();
    //  p.idpedido=Idpedido;
    //  await f.EliminarOfertas(p);
    //  }
    private void Verconfig()
      {
      VisibleConfig=true;
      }
    private void OcultarConfig()
      {
      VisibleConfig=false;
      }
    private async void Configperfiluser()
      {
      await Navigation.PushAsync(new Perfiluser(Muserrecibe));
      }
    private async void Actualizaruser()
      {
      if(_estadoActual==true)
        {
        _estadoActual=false;
        var f = new Dusuarios();
        var p = new Musuarios();
        p.idgoogle=_idgoogle;
        var lista = await f.ListarUserXidgoogle(p);
        Muserrecibe=new Musuarios();

        if(lista.Count>0)
          {
          lista.ForEach(item =>
          {
            Iduser=item.id;
            Muserrecibe.id=item.id;
            Muserrecibe.nombre=item.nombre;
            Muserrecibe.apellido=item.apellido;
            Muserrecibe.foto=item.foto;
            Muserrecibe.correo=item.correo;
            Nombreuser=item.nombre;
            Fotouser=item.foto;
          });
          }
        }

      }
    private async void MostrarConductores()
      {
      var f = new Dconductores();
      var list = await f.MostrarConductorXiduser(_idconductor);
      list.ForEach(item =>
      {
        NombreApellidoCond=item.nombre+" "+item.apellido;
        Fotoperilcond=item.fotoperfil;
        Nroplaca=item.nroplaca;
        Marca=item.marca;
        CelularCond=item.celular;
        Fotovehiculo=item.fotovehiculo;


      });
      }
    private async void Llamar()
      {
      try
        {
        PhoneDialer.Open("+"+CelularCond);

        }
      catch(Exception ex)
        {
        await DisplayAlert("Alerta",ex.Message,"Ok");
        }
      }
    private void EnviarWhatsapp()
      {
      Chat.Open("+"+CelularCond,"Hola soy tu pasajero(a) "+Nombreuser);
      }
    private void EditarNotiYLlamar()
      {
      EditarNotificacion();
      Llamar();
      }
    private async void LocalizacionActual()
      {

      var pactual = await _googleMapsApi.LocalizacionActual(mapa);
      if(pactual!=null)
        {
        ltOrigen=pactual.latitud;
        lgOrigen=pactual.longitud;
        Txtorigen=await ObtenerDireccion(ltOrigen,lgOrigen);
        }

      }
    #endregion

    #region COMANDOS
    public ICommand EditarNotiYLlamarcommand => new Command(EditarNotiYLlamar);
    public ICommand Llamarcommand => new Command(Llamar);
    public ICommand EnviarWhatsappcommand => new Command(EnviarWhatsapp);
    public ICommand EditarNoticommand => new Command(EditarNotificacion);
    public ICommand ActualizarUsercommand => new Command(Actualizaruser);
    public ICommand Configperfilcommand => new Command(Configperfiluser);
    public ICommand Verconfigcommand => new Command(Verconfig);
    public ICommand OcultarConfigcommand => new Command(OcultarConfig);

    public ICommand EliminarPedidocommand => new Command(Eliminarpedido);
    public ICommand Aumentarpreciocommand => new Command(Aumentarprecio);
    public ICommand Vereditarpreciocommand => new Command(VerEditarprecio);
    public ICommand Ocultareditarpreciocommand => new Command(OcultarEditarprecio);
    public ICommand SelectPasarelapagoscommand => new Command<Mpasarelapagos>(SelectPasarelapagos);
    //public ICommand Validarcommand => new Command(Validarauth);
    public ICommand Calificarcommand => new Command(Calificar);
    public ICommand Confirmarpedidocommand => new Command<Mofertasdeconduct>(Confirmarpedido);
    public ICommand Volverdebuscarcommand => new Command(Volverdebuscar);
    public ICommand Insertarpedidocommand => new Command(Insertarpedido);
    public ICommand Agregartarifacommand => new Command(Agregartarifa);
    public ICommand Cerrarofertarcommand => new Command(Cerrarofertar);

    public ICommand Verofertarcommand => new Command(VerOfertar);
    public ICommand Fijarenmapacommand => new Command(FijarenMapa);
    public ICommand SelectDireccioncommand => new Command<GooglePlaceAutoCompletePrediction>(async (p) => await SeleccionarDireccion(p));
    public ICommand SelectOrigencommand => new Command(SelecionarOrigen);
    public ICommand SelectDestinocommand => new Command(SelecionarDestino);
    public ICommand Buscarcommand => new Command<string>(async (p) => await Buscardirecciones(p));
    #endregion
    }
  }
