using DataAccess.Models;

namespace DataAccess.DBAccess
{
    public interface IWareHouseService
    {
        Task<IEnumerable<WareHouses>> GetAllWareHousesAsync();
        Task<int> InsertWareHouseAsync(WareHouses warehouse);
        Task<int> UpdateWarehouseAsync(WareHouses warehouse);
    }
}