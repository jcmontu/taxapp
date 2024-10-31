using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Firebase.Database.Query;

using Uberapp.Conexiones;
using Uberapp.Modelo;

namespace Uberapp.Datos
  {
  public class Dpedidos
    {
    public async Task<bool> Insertarpedidos(Mpedidos parametros)
      {
      await Constantes.firebase
        .Child("pedidos")
        .PostAsync(new Mpedidos()
          {
          
          destino_lugar=parametros.destino_lugar,
          idchofer=parametros.idchofer,
          iduser=parametros.iduser,
          lt_lg_destino=parametros.lt_lg_destino,
          estado=parametros.estado,
          lt_lg_origen=parametros.lt_lg_origen,
          origen_lugar=parametros.origen_lugar,
          tiempo=parametros.tiempo,
          tarifa=parametros.tarifa,
          distancia=parametros.distancia,
          notificacion=parametros.notificacion,
          califalcliente=parametros.califalcliente,
          califalconductor=parametros.califalconductor,
          comentalconductor=parametros.comentalconductor,
          comentariosdeseos=parametros.comentariosdeseos,
          idpasarelapago=parametros.idpasarelapago,
          tiempoalorigen=parametros.tiempoalorigen,
          }); 
      return true;
      }
    public async Task<string> ObtenerIdpedido(Mpedidos parametros)
      {
      var idpedido = "sin data";
      int contador = 0;
      contador=await Validarpedidos(parametros);
      if(contador>0)
        {
        var data =
               (await Constantes.firebase
               .Child("pedidos")
               .OnceAsync<Mpedidos>())
               .Where(a => a.Object.iduser==parametros.iduser)
               .Where(b => b.Object.estado!="FINALIZADO")
                .Where(c => c.Object.iduser!="-")
               .FirstOrDefault();
        idpedido=data.Key;
        return idpedido;
        }
      return idpedido;
      }
    private async Task<int> Validarpedidos(Mpedidos parametros)
      {
      int contador = 0;
      var data =
       (await Constantes.firebase
       .Child("pedidos")
       .OnceAsync<Mpedidos>())
       .Where(a => a.Object.iduser==parametros.iduser)
       .Where(b => b.Object.estado!="FINALIZADO")
       .Where(c => c.Object.iduser!="-");
      contador=data.Count();
      return contador;
      }
    public async Task Confirmarpedido(Mpedidos parametros)
      {
      var data = (await Constantes.firebase
        .Child("pedidos")
        .OnceAsync<Mpedidos>())
        .Where(a => a.Key==parametros.idpedido)
        .FirstOrDefault();
      data.Object.estado="CONFIRMADO";
      data.Object.tarifa=parametros.tarifa;
      data.Object.idchofer=parametros.idchofer;
      data.Object.tiempoalorigen=parametros.tiempoalorigen;
      await Constantes.firebase
        .Child("pedidos")
        .Child(data.Key)
        .PutAsync(data.Object);
      var funcion = new Dofertasdeconduct();
      await funcion.EliminarOfertas(parametros);

      }
    public async Task<List<Mpedidos>> ListarPedidosPendientes(Mpedidos parametros)
      {
      return (await Constantes.firebase
        .Child("pedidos")
        .OnceAsync<Mpedidos>())
        .Where(a => a.Object.iduser==parametros.iduser)
        .Where(b => b.Object.estado=="PENDIENTE")
        .Select(item => new Mpedidos
          {
          idpedido=item.Key,
          notificacion=item.Object.notificacion,
          tarifa=item.Object.tarifa,
          }).ToList();
      }
    public async Task<List<Mpedidos>> ListarPedidosConfirmados(Mpedidos parametros)
      {

      return (await Constantes.firebase
        .Child("pedidos")
        .OnceAsync<Mpedidos>())
        .Where(a => a.Object.iduser==parametros.iduser)
        .Where(b => b.Object.estado=="CONFIRMADO")
        .Select(item => new Mpedidos
          {
          idpedido=item.Key,
          notificacion=item.Object.notificacion,
           idchofer=item.Object.idchofer,
          tarifa=item.Object.tarifa,
          tiempo=item.Object.tiempo,
          tiempoalorigen=item.Object.tiempoalorigen,
          }).ToList();
      }
    public async Task<List<Mpedidos>> ListarPedidosFinalizados(Mpedidos parametros)
      {

      return (await Constantes.firebase
        .Child("pedidos")
        .OnceAsync<Mpedidos>())
        .Where(a => a.Object.iduser==parametros.iduser)
        .Where(b => b.Object.estado=="FINALIZADO")
        .Where(c => c.Object.comentalconductor=="-")
        .Select(item => new Mpedidos
          {
          idpedido=item.Key,
          notificacion=item.Object.notificacion

          }).ToList();
      }
    public async Task Calificar(Mpedidos parametros)
      {
      var data = (await Constantes.firebase
       .Child("pedidos")
       .OnceAsync<Mpedidos>())
       .Where(a => a.Key==parametros.idpedido)
       .FirstOrDefault();
      data.Object.califalconductor=parametros.califalconductor;
      data.Object.comentalconductor=parametros.comentalconductor;
      await Constantes.firebase
      .Child("pedidos")
      .Child(data.Key)
      .PutAsync(data.Object);
      }
    public async Task Aumentarprecio(Mpedidos parametros)
      {
      var data = (await Constantes.firebase
        .Child("pedidos")
        .OnceAsync<Mpedidos>())
        .Where(a => a.Key==parametros.idpedido)
        .FirstOrDefault();
      data.Object.tarifa=parametros.tarifa;
      await Constantes.firebase
        .Child("pedidos")
        .Child(data.Key)
        .PutAsync(data.Object);
      }
    public async Task Eliminarpedido(Mpedidos parametros)
      {
      var data = (await Constantes.firebase
        .Child("pedidos")
        .OnceAsync<Mpedidos>())
        .Where(b => b.Key==parametros.idpedido)
        .FirstOrDefault();

      await Constantes.firebase
        .Child("pedidos")
        .Child(data.Key)
        .DeleteAsync();

      }
    public async Task Editarnotificacion(Mpedidos parametros)
      {
      var data = (await Constantes.firebase
      .Child("pedidos")
      .OnceAsync<Mpedidos>())
      .Where(a => a.Key==parametros.idpedido)
      .FirstOrDefault();
      data.Object.notificacion=parametros.notificacion;
      await Constantes.firebase
        .Child("pedidos")
        .Child(data.Key)
        .PutAsync(data.Object);
      }
    }
  }
