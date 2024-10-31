using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Uberapp.VistaModelo;

using Xamarin.Forms;
using Xamarin.Forms.GoogleMaps;
using Xamarin.Forms.Xaml;

namespace Uberapp.Vistas.Navegacion
  {
  [XamlCompilation(XamlCompilationOptions.Compile)]
  public partial class Adondevamos : ContentPage
    {
    public Adondevamos()
      {
      InitializeComponent();
      BindingContext=new VMadondevamos(Navigation,solicitarauto.FindByName<Map>("Mapa"));
      }
    }
  }