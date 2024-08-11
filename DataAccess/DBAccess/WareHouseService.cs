using DataAccess.Models;
using DataAccess.SqlDBAccess;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.DBAccess
{
    public class WareHouseService : IWareHouseService
    {
        private readonly string _connectionString;
        private ISqlDbContext _dbContext;
        public WareHouseService(ISqlDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<IEnumerable<WareHouses>> GetAllWareHousesAsync()
        {
            _dbContext.SetConnectionString("DefaultConnection");
            var storedProcedureName = "GetAllWareHouses";
            using (var connection = _dbContext.CreateConnection())
            {
                var results = await connection.QueryAsync<WareHouses>(storedProcedureName, new { }
                , commandType: CommandType.StoredProcedure);
                return results;
            }
        }
        public async Task<int> InsertWareHouseAsync(WareHouses warehouse)
        {
            _dbContext.SetConnectionString("DefaultConnection");
            var storedProcedureName = "InsertWareHouse";
            using (var connection = _dbContext.CreateConnection())
            {
                var results = await connection.ExecuteAsync(storedProcedureName, new
                {
                    warehouse.WarehouseName,
                    warehouse.Location,
                    warehouse.CreateBy
                }
                , commandType: CommandType.StoredProcedure);
                return results;
            }
        }
        public async Task<int> UpdateWarehouseAsync(WareHouses warehouse)
        {
            _dbContext.SetConnectionString("DefaultConnection");
            var storedProcedureName = "UpdateWarehouse";
            using (var connection = _dbContext.CreateConnection())
            {
                var results = await connection.ExecuteAsync(storedProcedureName, new
                {
                    warehouse.WarehouseId,
                    warehouse.WarehouseName,
                    warehouse.Location,
                    warehouse.Active,
                    warehouse.UpdateBy
                },
                commandType: CommandType.StoredProcedure);
                return results;
            }
        }
    }
}
