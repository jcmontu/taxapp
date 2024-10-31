using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

using Uberapp.Datos;
using Uberapp.Modelo;
using Uberapp.VistaModelo;
using Uberapp.Vistas.Menuprincipal;
using Uberapp.Vistas.Navegacion;

using Xamarin.Forms;

namespace Uberapp.VistaModelo
  {
  public class VMdigitarcodigo : BaseViewModel
    {
    #region VARIABLES
    string _txtcodigo;
    string mensajerecibido;
    public GoogleUser GoogleUser { get; set; }
    #endregion
    #region CONSTRUCTOR
    public VMdigitarcodigo(INavigation navigation,string codigo,GoogleUser googleUser)
      {
      Navigation=navigation;
      mensajerecibido=codigo;
      GoogleUser=googleUser;
      }
    #endregion
    #region OBJETOS
    public string Txtcodigo
      {
      get { return _txtcodigo; }
      set { SetValue(ref _txtcodigo,value); }
      }
    #endregion
    #region PROCESOS
    private async void Insertaruser()
      {
      var funcion = new Dusuarios();
      var parametros = new Musuarios();
      parametros.idgoogle=GoogleUser.Idgoogle;
      parametros.nombre=GoogleUser.Name;
      parametros.apellido=GoogleUser.Apellido;
      parametros.celular=GoogleUser.NumeroCel;
      parametros.correo=GoogleUser.Email;
      parametros.estado="ACTIVO";
      parametros.calificacion="0";
      parametros.simbolomoneda=GoogleUser.Simbolomoneda;
      await funcion.Insertarusuarios(parametros);
      }
    public async void Validarcodigo()
      {
      if(Txtcodigo==mensajerecibido)
        {
        //Creararchivo();
        Insertaruser();
        await Navigation.PushAsync(new Adondevamos());
        }
      else
        {
        await DisplayAlert("Alerta","Código Incorrecto","OK");
        }
      }
    //public void Creararchivo()
    //  {
    //  var ruta = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal),"auth.txt");
    //  StreamWriter sw;
    //  string estado = "1"+";"+GoogleUser.Idgoogle ;
    //  try
    //    {
    //    if(File.Exists(ruta)==false)
    //      {
    //      sw=File.CreateText(ruta);
    //      sw.WriteLine(estado);
    //      sw.Flush();
    //      sw.Close();
    //      }
    //    else
    //      {
    //      File.Delete(ruta);
    //      sw=File.CreateText(ruta);
    //      sw.WriteLine(estado);
    //      sw.Flush();
    //      sw.Close();
    //      }
    //    }
    //  catch(Exception)
    //    {

    //    throw;
    //    }

    //  }
    private async void Volver()
      {
      await Navigation.PopAsync();
      }
    #endregion
    #region COMANDOS
    public ICommand Volvercommand => new Command(Volver);
    public ICommand Validarcommand => new Command(Validarcodigo);

    #endregion
    }
  }
