using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Test_Metro.Datos;

using System.Linq;
using System.Linq.Expressions;
using System.Data.SqlClient;
using System.Transactions;


namespace Test_Metro.Clases
{
    class Adjunto2
    {
        public int ID { get; set; }
        public string Archivo { get; set; }
        public string Ruta { get; set; }
        public static test_linqsql1Entities tlq = new test_linqsql1Entities();

        public Adjunto2()
        {
            
        }

        private Adjunto2(Datos.Adjunto pTicket)
        {
            ID = pTicket.ID;
            Ruta = pTicket.Ruta;
            Archivo = pTicket.Archivo;
        }

        public static int contar()
        {
            var oTicket = tlq.Adjunto.Count(x => x.Archivo == "111Libro1.xlsx");
            return oTicket;
        }

        public static bool guar(string val1)
        {
            try
            {
                var oTicket = new Datos.Adjunto
                {
                    Archivo = val1,
                    Ruta = "fdsfdsdfsfdsf/" + val1
                };
                tlq.Adjunto.Add(oTicket);
                tlq.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
                throw;
            }
            
        }

        //public void Guardar(string Varch)
        //{
        //    using (var oBdSdcEntidades = new test_linqsql1Entities())
        //    {
        //        using (var oTransactionScope = new TransactionScope())
        //        {
        //            var oTicket = new Models.Adjunto
        //            {
        //                Archivo = Varch,
        //                Ruta = "~/UploadBooks/Attachments/" + Varch
        //            };
        //            oBdSdcEntidades.Adjunto.Add(oTicket);
        //            oBdSdcEntidades.SaveChanges();
        //            oTransactionScope.Complete();
        //        }
        //    }
        //}

    }
}
