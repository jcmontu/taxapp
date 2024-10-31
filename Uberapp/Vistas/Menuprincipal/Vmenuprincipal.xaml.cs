using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Uberapp.VistaModelo;
using Uberapp.Vistas.Registro;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Uberapp.Vistas.Menuprincipal
  {
  [XamlCompilation(XamlCompilationOptions.Compile)]
  public partial class Vmenuprincipal : ContentPage
    {

    public Vmenuprincipal()
      {
      InitializeComponent();
      BindingContext=new VMmenuprincipal(Navigation);
      }


    }
  }