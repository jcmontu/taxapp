using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Firebase.Database.Query;
using Firebase.Storage;

using Uberapp.Conexiones;
using Uberapp.Modelo;

namespace Uberapp.Datos
  {
  public class Dusuarios
    {
    public async Task<bool> Insertarusuarios(Musuarios parametros)
      {
      await Constantes.firebase
        .Child("Usuarios")
        .PostAsync(new Musuarios()
          {
          idgoogle=parametros.idgoogle,
          apellido=parametros.apellido,
          celular=parametros.celular,
          correo=parametros.correo,
          estado=parametros.estado,
          nombre=parametros.nombre,
          calificacion=parametros.calificacion,
          simbolomoneda=parametros.simbolomoneda,
          foto="sinfoto.png"
          });
      return true;
      }
    public async Task<List<Musuarios>> ListarUserXidgoogle(Musuarios parametros)
      {
      return (await Constantes.firebase
        .Child("Usuarios")
        .OnceAsync<Musuarios>())
        .Where(a => a.Object.idgoogle==parametros.idgoogle)
        .Select(item => new Musuarios
          {
          id=item.Key,
          simbolomoneda=item.Object.simbolomoneda,
          nombre=item.Object.nombre,
          apellido=item.Object.apellido,
          correo=item.Object.correo,
          foto=item.Object.foto,
          idgoogle=item.Object.idgoogle
          }).ToList();
      }
    public async Task<List<Musuarios>> ListarUserXiduser(string iduser)
      {
      return (await Constantes.firebase
        .Child("Usuarios")
        .OnceAsync<Musuarios>())
        .Where(a => a.Key==iduser)
        .Select(item => new Musuarios
          {
          id=item.Key,
          simbolomoneda=item.Object.simbolomoneda,
          nombre=item.Object.nombre,
          apellido=item.Object.apellido,
          correo=item.Object.correo,
          foto=item.Object.foto,
          idgoogle=item.Object.idgoogle
          }).ToList();
      }
    public async Task<string> SubirImagenStorage(Stream imageStream,Musuarios parametros)
      {
      string rutafoto;
      var imagen = await new FirebaseStorage(Constantes.storage)
        .Child("fotouser")
        .Child(parametros.id+".jpg")
        .PutAsync(imageStream);
      rutafoto=imagen;
      return rutafoto;
      }
    public async Task Editarusuario(Musuarios parametros)
      {
      var data = (await Constantes.firebase
        .Child("Usuarios")
        .OnceAsync<Musuarios>())
        .Where(a => a.Key==parametros.id)
        .FirstOrDefault();
      data.Object.nombre=parametros.nombre;
      data.Object.apellido=parametros.apellido;
      data.Object.foto= parametros.foto;
      await Constantes.firebase
        .Child("Usuarios")
        .Child(data.Key)
        .PutAsync(data.Object);
      }
    public async Task EliminarFotoStorage(string nombre)
      {
      await new FirebaseStorage(Constantes.storage)
        .Child("fotouser")
        .Child(nombre)
        .DeleteAsync();
      }
    }


  }
