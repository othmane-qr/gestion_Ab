using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp2
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
           
        }

       

        
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-3K62L35\SQLEXPRESS; initial catalog=AttendanceManagement; integrated security=true;");
        SqlCommand Cmd; 
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds = new DataSet(); 
        DataTable dt = new DataTable();
        int indexRow;

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            dg.Visibility = Visibility.Visible;
            conn.Open();

            Cmd = new SqlCommand("select u.[Full Name] , a.[Date] , a.[Description] ,c.[Class Name], a.IsJustified From Users u inner join Attendance a on a.[Student Id] =u.[User Id] inner join Classes c on c.[Id Class]=u.[Class Id]", conn);
            SqlDataReader dr = Cmd.ExecuteReader();
            DataTable t = new DataTable();
            t.Load(dr);
            dg.ItemsSource = t.DefaultView;
            dr.Close();
            conn.Close();

        }

        private void DataGrid_Loaded(object sender, RoutedEventArgs e)
        {

          

            dg.Visibility = Visibility.Hidden;

            conn.Open();

            Cmd = new SqlCommand("select [Class Name] from Classes", conn);
            SqlDataReader dr = Cmd.ExecuteReader();

            while (dr.Read())
            {

                combo_class.Items.Add(dr["Class Name"]);



            }


            conn.Close();




        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            /*md = new SqlCommand("select u.[Full Name] , a.[Date] , a.[Description] ,c.[Class Name], a.IsJustified From Users u inner join Attendance a on a.[Student Id] =u.[User Id] inner join Classes c on c.[Id Class]=u.[Class Id]", conn);
            da.Fill(ds, [""]);
            DataView dv = new DataView();
            dv.Table = ds.Tables[0];
            dg.DataContext = dv;
            dv.RowFilter = $"[Class Name] like '%{combo_class.Text}%' ";
            dg.DataContext = dv;*/


            /*string com = combo_class.Text;*/
            /*MessageBox.Show(com);*/
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            DataRowView row = dg.SelectedItem as DataRowView;
            int id_student = Convert.ToInt32(row.Row[0].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("update from Attendance where [Student id]='" + id_student + "' and Date = '" +  + "' and Absent = 'oui'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            MessageBox.Show("Les données ont été bien Enregistrées");


        }
    }

}
