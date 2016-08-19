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
using System.Data;

namespace Test_Metro.Clases
{
    class Master_Save
    {
        public static test_linqsql1Entities tlq = new test_linqsql1Entities();

        public static void test1(Object test1)
        {
            var a = new Datos.Adjunto();
            var b = a.GetType();
            var c = test1.GetType();

            a = new Adjunto { Archivo = "sdf", Ruta = "dsfsdf" };



            //var oTicket = new Datos.Adjunto
            //{
            //    Archivo = val1,
            //    Ruta = "trans/" + val1
            //};
            //tlq.Adjunto.Add(oTicket);
            //tlq.SaveChanges();
        }

        public static void test2(List<Datos.Adjunto> test1)
        {
            using (var Transac = new TransactionScope())
            {
                try
                {
                    for (int i = 0; i < test1.Count; i++)
                    {
                        tlq.Adjunto.Add(test1[i]);

                    }
                    tlq.SaveChanges();
                    tlq.Dispose();
                    Transac.Complete();
                }
                catch (Exception ex)
                {
                    Transac.Dispose();
                    throw;
                }
            }
        }

        public static void test3(List<Datos.Adjunto> test1)
        {
            try
            {
                for (int i = 0; i < test1.Count; i++)
                {
                    tlq.Adjunto.Add(test1[i]);
                }
                tlq.SaveChanges();
            }
            catch (Exception ex)
            {
                tlq.Dispose();
                //throw;
            }
        }

        public static void test4( test1)
        {
            try
            {
                for (int i = 0; i < test1.Count; i++)
                {
                    tlq.Adjunto.Add(test1[i]);
                }
                tlq.SaveChanges();
            }
            catch (Exception ex)
            {
                tlq.Dispose();
                //throw;
            }
        }

        public static bool guar(string val1)
        {
            using (var Transac = new TransactionScope())
            {
                try
                {
                    var oTicket = new Datos.Adjunto
                    {
                        Archivo = val1,
                        Ruta = "trans/" + val1
                    };
                    tlq.Adjunto.Add(oTicket);
                    tlq.SaveChanges();
                    //throw new Exception("Put your error message here.");
                    Transac.Complete();
                    return true;
                }
                catch (Exception ex)
                {
                    Transac.Dispose();
                    return false;
                    throw;
                }
            }
        }
    }
}
