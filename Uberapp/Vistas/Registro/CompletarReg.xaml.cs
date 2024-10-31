using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Uberapp.Modelo;
using Uberapp.VistaModelo;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Uberapp.Vistas.Registro
    {
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CompletarReg : ContentPage
        {
        public CompletarReg(GoogleUser parametros)
            {
            InitializeComponent();
            BindingContext=new VMcompletarreg(Navigation,parametros);
            }
        }
    }