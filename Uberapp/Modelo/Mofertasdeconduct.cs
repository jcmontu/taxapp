using System;
using System.Collections.Generic;
using System.Text;

using Uberapp.VistaModelo;

namespace Uberapp.Modelo
  {
  public class Mofertasdeconduct : BaseViewModel
    {
    public string idoferta { get; set; }
    public string idconductor { get; set; }
    public string idusuario { get; set; }
    public string estado { get; set; }
    public string tiempoalorigen { get; set; }
    public string idpedido { get; set; }
    public string tarifa { get; set; }
    //Objetos
    public double _progress;
    string _nombreConduc;
    string _fotoConduc;
    string _marca;
    string _simbolomoneda;
    public string Simbolomoneda
      {
      get { return _simbolomoneda; }
      set { SetValue(ref _simbolomoneda,value); }
      }
    public string  NombreConduc
      {
      get { return _nombreConduc; }
      set { SetValue(ref _nombreConduc,value); }
      }
    public string FotoConduc
      {
      get { return _fotoConduc; }
      set { SetValue(ref _fotoConduc,value); }
      }
    public string  Marca
      {
      get { return _marca; }
      set { SetValue(ref _marca,value); }
      }
    public double Progress
      {
      get { return _progress; }
      set { SetValue(ref _progress,value); }
      }
    
  public TimeSpan _timespan;
  public TimeSpan Timespan
    {
    get { return _timespan; }
    set { SetValue(ref _timespan,value); }
    }
  }
  }
