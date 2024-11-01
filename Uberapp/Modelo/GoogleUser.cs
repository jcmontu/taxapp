﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Uberapp.Modelo
  {
  public class GoogleUser
    {
    public string NumeroCel { get; set; }
    public string Idgoogle { get; set; }
    public string Name { get; set; }
    public string Apellido { get; set; }
    public string Email { get; set; }
    public Uri Picture { get; set; }
    public string Simbolomoneda { get; set; }
    }
  public interface IGoogleManager
    {
    void Login(Action<GoogleUser,string> OnLoginComplete);
    void Logout();
    }
  }
