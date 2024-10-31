using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

using Uberapp.Modelo;
using Uberapp.VistaModelo;
using Twilio;
using Xamarin.Forms;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;
using Uberapp.Vistas.Registro;
using Xamarin.Essentials;
using Uberapp.Datos;
using Rg.Plugins.Popup.Services;
using Uberapp.Vistas.Reutilizables;

namespace Uberapp.VistaModelo
  {
  internal class VMcompletarreg : BaseViewModel
    {
    #region VARIABLES
    string _txtnumero;
    List<Mpaises> _listapaises;
    Mpaises _selectPais;
    Mpaises _selectPaisDefault;


    public GoogleUser _gooogleuserRecibe { get; set; }
    #endregion
    #region CONSTRUCTOR
    public VMcompletarreg(INavigation navigation,GoogleUser _googleUserTrae)
      {
      Navigation=navigation;
      _gooogleuserRecibe=_googleUserTrae;
      ObtenerDataPaisXpais();
      }
    #endregion
    #region OBJETOS
    public Mpaises SelectPais
      {
      get { return _selectPais; }
      set { SetValue(ref _selectPais,value); }
      }
    public Mpaises SelectPaisDefault
      {
      get { return _selectPaisDefault; }
      set { SetValue(ref _selectPaisDefault,value); }
      }
    public string Txtnumero
      {
      get { return _txtnumero; }
      set { SetValue(ref _txtnumero,value); }
      }
    public List<Mpaises> Listapaises
      {
      get { return _listapaises; }
      set { SetValue(ref _listapaises,value); }
      }
    #endregion
    #region PROCESOS
    public async void Enviarsms()
      {
      try
        {
        //string accountSid = Environment.GetEnvironmentVariable("AC4437e5d40a3a30a3ce32241938c9302f");
        //string authToken = Environment.GetEnvironmentVariable("376ec23d0f62fc820bd3d558410a31bd");
        //TwilioClient.Init(accountSid,authToken);
        //var message = MessageResource.Create(
        //body: "This is the ship that made the Kessel Run in fourteen parsecs?",
        //from: new Twilio.Types.PhoneNumber("+17622542420"),
        //to: new Twilio.Types.PhoneNumber("+51940308023"));

        //Console.WriteLine(message.Sid);





        #region GENERAR CODIGO ALEATORIO
        Random generador = new Random();
        String randomsms = generador.Next(0,9999).ToString("D4");

        #endregion
        var accountSid = "ACe56d3cb2aef21de83bd52b65ac5d76e3";
        var authToken = "a9bbb6dbb4e16ca9befc714cc2eb25f0";
        TwilioClient.Init(accountSid,authToken);

        var messageOptions = new CreateMessageOptions(
            new PhoneNumber(SelectPaisDefault.Codigopais+Txtnumero));
        messageOptions.MessagingServiceSid= "MG2ac448a6d7188a0a4ab4735b45d1b077";
        messageOptions.Body="Usa "+randomsms+" para validar tu cuenta en TAXAPP";

        var message = MessageResource.Create(messageOptions);

        Console.WriteLine(message.Body);
        _gooogleuserRecibe.NumeroCel=Txtnumero;
        _gooogleuserRecibe.Simbolomoneda=SelectPaisDefault.Simbolomoneda;
        await Navigation.PushAsync(new Digitarcodigo(randomsms,_gooogleuserRecibe));

        }

      catch(Exception ex)
        {
        await DisplayAlert("Alerta",ex.Message,"OK");
        }
      }
    public void Mostrarpaises()
      {
      var funcion = new Dpaises();
      Listapaises=funcion.Mostrarpaises();
      }
    private void ObtenerDataPaisXpais()
      {
      var funcion = new Dpaises();
      SelectPaisDefault=funcion.MostrarpaisesXnombre("Peru");
      SelectPais=funcion.MostrarpaisesXnombre("Peru");
      }
    private void Irlistapaises()
      {
      var popup = new Listapaises();
      popup.BindingContext=this;
      Mostrarpaises();
      PopupNavigation.Instance.PushAsync(popup);
      }
    private void SeleccionarPais(Mpaises parametros)
      {
      SelectPais=parametros;
      }
    private void Confirmarpais()
      {
      SelectPaisDefault=SelectPais;
      PopupNavigation.Instance.PopAsync();
      }
    private void Cancelar()
      {
      PopupNavigation.Instance.PopAsync();
      }
    private void Buscarpais(string buscador)
      {
      buscador=PrimerletraMayus(buscador);
      var funcion = new Dpaises();
      var lista = funcion.ListaMostrarpaisesXnombre(buscador);
      if(string.IsNullOrWhiteSpace(buscador))
        {
        Listapaises=new List<Mpaises>();
        Mostrarpaises();
        }
      else
        {
        if(lista.Count>0)
          {
          Listapaises=new List<Mpaises>();
          Listapaises=lista;
          }
        }
      }
    private async void Volver()
      {
      await Navigation.PopAsync();
      }
    #endregion
    #region COMANDOS
    public ICommand VolverCommand => new Command(Volver);
    public ICommand Buscarcommand => new Command<string>(Buscarpais);
    public ICommand Cancelarcommand => new Command(Cancelar);
    public ICommand Confirmarcommand => new Command(Confirmarpais);
    public ICommand SelectPaiscommand => new Command<Mpaises>(SeleccionarPais);
    public ICommand Irpaisescommand => new Command(Irlistapaises);
    public ICommand Siguientecommand => new Command(Enviarsms);
    // public ICommand ProcesoSimpcommand => new Command(ProcesoSimple);
    #endregion
    }
  }
