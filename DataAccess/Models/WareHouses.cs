using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class WareHouses
    {
        public int WarehouseId { get; set; }
        public string WarehouseName { get; set; }
        public string Location { get; set; }
        public bool Active { get; set; } = true;
        public DateTime? InactiveDate { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateDate { get; set; }
        public string UpdateBy { get; set; }
        public DateTime UpdateDate { get; set; }
    }
}
