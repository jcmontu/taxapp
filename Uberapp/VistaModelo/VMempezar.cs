using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

using Uberapp.Vistas.Menuprincipal;
using Uberapp.Vistas.Registro;

using Xamarin.Forms;

namespace Uberapp.VistaModelo
    {
    public class VMempezar : BaseViewModel
        {
        #region VARIABLES
       
        #endregion
        #region CONSTRUCTOR
        public VMempezar(INavigation navigation)
            {
            Navigation=navigation;

     
      }
    
    #endregion
    #region OBJETOS

    #endregion
    #region PROCESOS
    private async void Ircrearcuenta()
            {
            await Navigation.PushAsync(new Crearcuenta());
            }
        #endregion
        #region COMANDOS
        public ICommand IrcrearcuentaCommand => new Command(Ircrearcuenta);
        #endregion
        }
    }
