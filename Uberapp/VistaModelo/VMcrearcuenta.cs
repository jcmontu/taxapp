using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

using Uberapp.Modelo;
using Uberapp.Vistas.Menuprincipal;
using Uberapp.Vistas.Registro;

using Xamarin.Forms;

namespace Uberapp.VistaModelo
    {
    public class VMcrearcuenta : BaseViewModel
        {
        #region VARIABLES
        string _Texto;
        private readonly IGoogleManager _googleManager;
        GoogleUser googleuserObtiene = new GoogleUser();

        #endregion
        #region CONSTRUCTOR
        public VMcrearcuenta(INavigation navigation)
            {
            Navigation=navigation;
            _googleManager=DependencyService.Get<IGoogleManager>();
    
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

        public void LoguearseConGmail()
            {
            _googleManager.Login(OnLoginComplete);
            }
        public async void OnLoginComplete(GoogleUser googleuserTrae, string message)
        {
            if (googleuserTrae != null)
            {
               // await DisplayAlert("hola estoy aqui", message, "OK");
                googleuserObtiene = googleuserTrae;

                // Separar el nombre por espacio
                string[] cadena = googleuserObtiene.Name.Split(' ');

                // Asegurarse de que el arreglo tenga al menos dos elementos
                if (cadena.Length > 1)
                {
                    googleuserObtiene.Name = cadena[0];
                    googleuserObtiene.Apellido = cadena[1];
                }
                else
                {
                    // Manejar el caso donde no hay apellido
                    googleuserObtiene.Name = cadena[0];
                    googleuserObtiene.Apellido = string.Empty; // O algún valor por defecto
                }

                await Navigation.PushAsync(new CompletarReg(googleuserObtiene));
            }
            else
            {
                await DisplayAlert("Message", message, "OK");
            }
        }

        #endregion
        #region COMANDOS
        public ICommand Gmailcommand => new Command(LoguearseConGmail);
        #endregion
        }
    }
