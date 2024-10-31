using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Firebase.Database.Query;

using Uberapp.Conexiones;
using Uberapp.Modelo;

using Xamarin.Forms;

using static Uberapp.Modelo.GoogleMatrix;

namespace Uberapp.Datos
  {
  public class Dofertasdeconduct
    {

    public async Task<ObservableCollection<Mofertasdeconduct>> Listaofertas(Mpedidos parametros)
      {

      var data = new ObservableCollection<Mofertasdeconduct>();
      var collection = Constantes.firebase
             .Child("Ofertasdeconduct")
             .AsObservable<Mofertasdeconduct>()
             .Subscribe(async (item) =>
             {
               var funcion = new Dpedidos();
               parametros.idpedido=await funcion.ObtenerIdpedido(parametros);
              
                 if(item.Key!=item.Object.idoferta &&item.Object.idpedido==parametros.idpedido)
                   {
                   item.Object.Timespan=TimeSpan.FromSeconds(20);
                   item.Object.idoferta=item.Key;
                   item.Object.idpedido=item.Object.idpedido;
                   item.Object.tarifa=item.Object.tarifa;

                   item.Object.tiempoalorigen=item.Object.tiempoalorigen;
                   item.Object.idconductor=item.Object.idconductor;
                   var f = new Dconductores();
                   var listaCond = await f.MostrarConductorXiduser(item.Object.idconductor);
                   listaCond.ForEach(itemCond =>
                   {
                     item.Object.NombreConduc=itemCond.nombre;
                     item.Object.Marca=itemCond.marca;
                     item.Object.FotoConduc=itemCond.fotoperfil;

                   });
                   var fuser = new Dusuarios();
                   var listUser = await fuser.ListarUserXiduser(item.Object.idconductor);
                   listUser.ForEach(itemUser =>
                   {
                     item.Object.Simbolomoneda=itemUser.simbolomoneda;
                   });

                   data.Add(item.Object);
                   }
                 else
                   {
                   data.Remove(item.Object);
                   }
               
             });
      return data;
      }
    public async Task<List<Mofertasdeconduct>> ListaofertasAeliminar(Mpedidos parametros)

      {
      return (await Constantes.firebase
      .Child("Ofertasdeconduct")
          .OnceAsync<Mofertasdeconduct>())
          .Where(a => a.Object.idpedido==parametros.idpedido)
          .Select(item => new Mofertasdeconduct
            {
            idoferta=item.Key,
            idpedido=item.Object.idpedido
            }).ToList();
      }
    public async Task Eliminaroferta(Mpedidos parametros)
      {
      try
        {
        var data = (await Constantes.firebase
               .Child("Ofertasdeconduct")
               .OnceAsync<Mofertasdeconduct>())
               .Where(b => b.Object.idpedido==parametros.idpedido)
               .FirstOrDefault();

        await Constantes.firebase
          .Child("Ofertasdeconduct")
          .Child(data.Key)
          .DeleteAsync();
        }
      catch(Exception)
        {

        }


      }
    public async Task EliminarOfertas(Mpedidos parametros)
      {
      try
        {
        var lista = await ListaofertasAeliminar(parametros);

        foreach(var item in lista)
          {
          await Eliminaroferta(parametros);
          }
        }
      catch(Exception)
        {

        }

      }
    }
  }
