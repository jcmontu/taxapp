using System;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Uberapp.Vistas.Registro;

using Uberapp.Vistas.Menuprincipal;
using Uberapp.Vistas.Reutilizables;
using Uberapp.Vistas.Navegacion;
using Uberapp.Vistas.Configuraciones;

namespace Uberapp
  {
  public partial class App : Application
    {
    public App()
      {
      InitializeComponent();

      MainPage=new NavigationPage(new Adondevamos());
      }

    protected override void OnStart()
      {
      }

    protected override void OnSleep()
      {
      }

    protected override void OnResume()
      {
      }
    }
  }
