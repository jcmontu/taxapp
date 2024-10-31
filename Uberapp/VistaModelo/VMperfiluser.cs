using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

using Plugin.Media;
using Plugin.Media.Abstractions;

using Uberapp.Datos;
using Uberapp.Modelo;
using Uberapp.VistaModelo;

using Xamarin.Forms;

namespace Uberapp.VistaModelo
  {
  public class VMperfiluser : BaseViewModel
    {
    #region VARIABLES
    public Musuarios muserRecibe { get; set; }
    MediaFile file;
    string _fotouser;
    string _txtnombre;
    string _txtapellido;
    #endregion
    #region CONSTRUCTOR
    public VMperfiluser(INavigation navigation,Musuarios muserTrae)
      {
      Navigation=navigation;
      muserRecibe=muserTrae;
      Fotouser=muserRecibe.foto;
      Txtapellido=muserRecibe.apellido;
      Txtnombre=muserRecibe.nombre;
      }
    #endregion
    #region OBJETOS
    public string Fotouser
      {
      get { return _fotouser; }
      set {
        SetValue(ref _fotouser,value);
        }
      }
    public string Txtapellido
      {
      get { return _txtapellido; }
      set {
        SetValue(ref _txtapellido,value);
        }
      }
    public string Txtnombre
      {
      get { return _txtnombre; }
      set {
        SetValue(ref _txtnombre,value);
        }
      }
    #endregion
    #region PROCESOS
    private async void SeleccionarFoto()
      {
      await CrossMedia.Current.Initialize();
      try
        {
        file=await CrossMedia.Current.PickPhotoAsync(new PickMediaOptions());
        if(file!=null)
          {
          Fotouser=file.Path;
          Foto=ImageSource.FromStream(() =>
          {
            return file.GetStream();
          });
          }
        }
      catch(Exception)
        {
        await DisplayAlert("Alerta","Intentelo de nuevo","OK");
        }
      }
    private async void Editaruser()
      {
      if(!string.IsNullOrWhiteSpace(Txtapellido))
        {
        if(!string.IsNullOrWhiteSpace(Txtnombre))
          {
          await Subirfoto();
          var f = new Dusuarios();
          var p = new Musuarios();
          p.nombre=Txtnombre;
          p.apellido=Txtapellido;
          p.foto=Fotouser;
          p.id=muserRecibe.id;
          await f.Editarusuario(p);
          VMadondevamos._estadoActual=true;
         await Navigation.PopAsync();
          }
        else
          {
          await DisplayAlert("Alerta","Ingrese un nombre","ok");
          }

        }
      else
        {
        await DisplayAlert("Alerta","Ingrese apellido","ok");
        }
      }
    private async Task Subirfoto()
      {
      if(file!=null)
        {
        await Eliminarfoto();
        var f = new Dusuarios();
        var p = new Musuarios();
        p.id=muserRecibe.id;
        Fotouser=await f.SubirImagenStorage(file.GetStream(),p);
        }
      }
    private async Task Eliminarfoto()
      {
      if(muserRecibe.foto!="sinfoto.png")
        {
        var f = new Dusuarios();
        var nombrefoto = muserRecibe.id+".jpg";
        await f.EliminarFotoStorage(nombrefoto);
        }
      }
    private async void volver()
      {
      await Navigation.PopAsync();
      }




        #endregion
        #region COMANDOS
        public ICommand Volvercommand => new Command(volver);
    public ICommand SeleccionarfotoCommand => new Command(SeleccionarFoto);
    public ICommand Guardarcommand => new Command(Editaruser);
    #endregion
    }
  }
