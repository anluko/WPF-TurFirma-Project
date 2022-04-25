using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;

namespace Tur_Firma
{
    /// <summary>
    /// Логика взаимодействия для Hotels.xaml
    /// </summary>
    public partial class Hotels : Window
    {
        public Hotels()
        {
            InitializeComponent();
            DGridHotels.ItemsSource = TurFirmaEntities.GetContext().Hotel.ToList();
            this.MinHeight = 479.6;
            this.MinWidth = 800;
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            AddEditPage addEditPage = new AddEditPage((sender as Button).DataContext as Hotel);
            addEditPage.Show();
            this.Close();
        }
        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            AddEditPage addEditPage = new AddEditPage(null);
            addEditPage.Show();
            this.Close();
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            var hotelsForRemoving = DGridHotels.SelectedItems.Cast<Hotel>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следущие {hotelsForRemoving.Count()} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    TurFirmaEntities.GetContext().Hotel.RemoveRange(hotelsForRemoving);
                    TurFirmaEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");
                    DGridHotels.ItemsSource = null;
                    DGridHotels.ItemsSource = TurFirmaEntities.GetContext().Hotel.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void BtnTours_Click(object sender, RoutedEventArgs e)
        {
            Tours tours = new Tours();
            tours.Show();
            this.Close();
        }
    }
}
