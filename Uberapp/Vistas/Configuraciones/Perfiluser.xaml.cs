using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Uberapp.Modelo;
using Uberapp.VistaModelo;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Uberapp.Vistas.Configuraciones
  {
  [XamlCompilation(XamlCompilationOptions.Compile)]
  public partial class Perfiluser : ContentPage
    {
    public Perfiluser(Musuarios p)
      {
      InitializeComponent();
      BindingContext=new VMperfiluser(Navigation,p);
      }
    }
  }