using System;
using System.Collections.Generic;
using System.Text;

using Firebase.Database;
namespace Uberapp.Conexiones
    {
    public class Constantes
        {
    public const string GoogleMapsApiKey = "AIzaSyBvjl_egGtpOE_ZqNPMiH0YECakTNdRfMw";
    public static FirebaseClient firebase= new FirebaseClient("https://taxappgt-default-rtdb.firebaseio.com/");
    public static string storage = "uberapp-curso.appspot.com";
        }
    }
