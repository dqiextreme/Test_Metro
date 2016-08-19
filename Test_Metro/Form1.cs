using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MetroFramework;
using MetroFramework.Forms;
using Test_Metro.Clases;
using Test_Metro.Datos;

namespace Test_Metro
{
    public partial class Form1 : MetroForm
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }


        public DataSet _Mtd_RetornarDataset(string _p_Str_SentenciaSQL)
        {
            SqlConnection Conn = new SqlConnection(@"Data Source=(localdb)\PRUEBAS;Initial Catalog=test_linqsql1;Integrated Security=True");
            Conn.Open();
            try
            {
                DataSet dataSet = new DataSet();
                SqlCommand sqlCommand = new SqlCommand(_p_Str_SentenciaSQL, Conn);
                sqlCommand.CommandTimeout = 10800;
                new SqlDataAdapter()
                {
                    SelectCommand = sqlCommand
                }.Fill(dataSet);
                return dataSet;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                Conn.Close();
                Conn = (SqlConnection)null;
            }
        }

        private void metroButton1_Click(object sender, EventArgs e)
        {
            String strsql = metroTextBox1.Text.ToString().Trim();
            DataSet test = _Mtd_RetornarDataset(strsql);
            metroGrid1.DataSource = test.Tables[0];
            metroTabControl1.ShowTab(metroTabPage2);
        }

        private void metroButton2_Click(object sender, EventArgs e)
        {
            var a = Adjunto2.contar();
            MetroMessageBox.Show(this, a.ToString());
        }


        public static test_linqsql1Entities tlqs = new test_linqsql1Entities();

        private void metroButton3_Click(object sender, EventArgs e)
        {
            var a = tlqs.Adjunto.Count(x => x.Archivo == "111Libro1.xlsx");
                MetroMessageBox.Show(this, a.ToString());
           
        }

        private void metroButton4_Click(object sender, EventArgs e)
        {
            if (Adjunto2.guar(metroTextBox1.Text.ToString().Trim()))
            {
                MetroMessageBox.Show(this, "Ready");
            }
        }

        private void metroButton5_Click(object sender, EventArgs e)
        {
            var a = new Datos.Adjunto();

            List<Datos.Adjunto> a1 = new List<Adjunto>();
            a1.Add(new Adjunto { Archivo = "sdf", Ruta = "dsfsdf" });
            a1.Add(new Adjunto { Archivo = "sdf2", Ruta = "dsfsdf2" });
            
            a = new Adjunto { Archivo = "sdf", Ruta = "dsfsdf" };

            //Master_Save.test1();
            Master_Save.test3(a1);
        }



    }
}
