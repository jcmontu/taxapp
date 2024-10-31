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
    public partial class Digitarcodigo : ContentPage
        {
        public Digitarcodigo(string codigo,GoogleUser googleUser)
            {
            InitializeComponent();
            BindingContext=new VMdigitarcodigo(Navigation,codigo,googleUser);
            }
        }
    }