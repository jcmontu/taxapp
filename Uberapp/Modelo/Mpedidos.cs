using System;
using System.Collections.Generic;
using System.Text;

namespace Uberapp.Modelo
  {
  public class Mpedidos
    {
    public string idpedido { get; set; }
    public string origen_lugar { get; set; }
    public string destino_lugar { get; set; }
    public string estado { get; set; }
    public string idchofer { get; set; }
    public string iduser { get; set; }
    public string lt_lg_destino { get; set; }
    public string lt_lg_origen { get; set; }
    public string tiempo { get; set; }
    public string tarifa { get; set; }
    public string distancia { get; set; }
    public string notificacion { get; set; }
    public string comentalconductor { get; set; }
    public string califalconductor { get; set; }
    public string califalcliente { get; set; }
    public string comentariosdeseos { get; set; }
    public string idpasarelapago { get; set; }
    public string tiempoalorigen { get; set; }
    }
  }
