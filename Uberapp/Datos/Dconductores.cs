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
  public class Dconductores
    {
    public async Task<List<Mconductores>> MostrarConductorXiduser(string id)
      {

      return (await Constantes.firebase
        .Child("Conductores")
        .OnceAsync<Mconductores>())
         .Where(c => c.Object.iduser==id)
        .Select(item => new Mconductores
          {
          id=item.Key,
          nombre=item.Object.nombre,
          apellido=item.Object.apellido,
          marca=item.Object.marca,
          nroplaca=item.Object.nroplaca,
          fotoperfil=item.Object.fotoperfil,
          celular=item.Object.celular,
          fotovehiculo=item.Object.fotovehiculo,
          }).ToList();
      }
    }
  }
