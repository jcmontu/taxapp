using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Uberapp.Conexiones;
using Uberapp.Modelo;

namespace Uberapp.Datos
  {
  public class Dpasarelapagos
    {
    public async Task<List<Mpasarelapagos>> ListarpasarelaPagos()
      {
      return (await Constantes.firebase
        .Child("Pasarelapagos")
        .OnceAsync<Mpasarelapagos>())
        .Where(a => a.Key!="Modelo")
        .Select(item => new Mpasarelapagos
          {
          id=item.Key,
          descripcion=item.Object.descripcion,
          icono=item.Object.icono

          }).ToList();
      }
    }
  }
