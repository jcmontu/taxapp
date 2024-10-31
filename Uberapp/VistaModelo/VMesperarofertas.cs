using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

using Uberapp.Datos;
using Uberapp.Modelo;
using Uberapp.VistaModelo;

using Xamarin.Forms;

namespace Uberapp.VistaModelo
  {
  internal class VMesperarofertas : BaseViewModel
    {
    #region VARIABLES
    ObservableCollection<Mofertasdeconduct> _listaofertas;
    bool _visibleOfertas;
    #endregion
    #region CONSTRUCTOR
    public VMesperarofertas(INavigation navigation)
      {
      Navigation=navigation;
      VisibleOfertas=false;
      Listarofertas();
      Activartimer();
      }
    #endregion
    #region OBJETOS
    public bool VisibleOfertas
      {
      get { return _visibleOfertas; }
      set { SetValue(ref _visibleOfertas,value); }
      }
    public ObservableCollection<Mofertasdeconduct> Listaofertas
      {
      get { return _listaofertas; }
      set { SetValue(ref _listaofertas,value); }
      }
    #endregion
    #region PROCESOS
    private void Activartimer()
      {
      var tiempo = TimeSpan.FromSeconds(1);
      Device.StartTimer(tiempo,() =>
     {
       if(Listaofertas.Count>0)
         {
         VisibleOfertas=true;
         foreach(var item in Listaofertas)
           {
           var timespan = item.Timespan-TimeSpan.FromSeconds(1);
           item.Timespan=timespan;
           String[] cadena = timespan.ToString().Split(':');
           var time = cadena[2];
           item.Progress=Convert.ToDouble(time)*0.05;
           //if(Convert.ToDouble(time)==0)
           //  {
           //  Eliminarofertas(item);
           //  }

           }
         return true;
         }
       else
         {
         VisibleOfertas=false;
         return true;
         }

     });
      }
  
    public async void Listarofertas()
      {
      var funcion = new Dofertasdeconduct();
      var parametros = new Mpedidos();
      parametros.iduser="Modelo";
      Listaofertas=await funcion.Listaofertas(parametros);
      }

    #endregion
    #region COMANDOS
    // public ICommand ProcesoSimpcommand => new Command(ProcesoSimple);
    #endregion
    }
  }
