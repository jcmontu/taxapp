using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

using Uberapp.VistaModelo;
using Uberapp.Vistas.Menuprincipal;
using Uberapp.Vistas.Registro;

using Xamarin.Forms;

namespace Uberapp.VistaModelo
  {
  public class VMmenuprincipal : BaseViewModel
    {
    #region VARIABLES
    string _Texto;
    int _estado = 0;
    #endregion
    #region CONSTRUCTOR
    public VMmenuprincipal(INavigation navigation)
      {
      Navigation=navigation;
      Validarauth();
      }
    #endregion
    #region OBJETOS
    public string Texto
      {
      get { return _Texto; }
      set { SetValue(ref _Texto,value); }
      }
    #endregion
    #region PROCESOS
   
    public int Autenticacion()
      {
      try
        {
        var ruta = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal),"auth.txt");
        _estado=Convert.ToInt32(File.ReadAllText(ruta));
        return _estado;
        }
      catch (Exception)
        {

        return _estado;
        }
      }
    public void Validarauth()
      {
      Autenticacion();
      if (_estado==0)
        {
        Application.Current.MainPage=new NavigationPage(new Empezar());
        }
      }

    #endregion
    #region COMANDOS

  public  ICommand Validarcommand => new Command(Validarauth);

    #endregion
    }
  }
