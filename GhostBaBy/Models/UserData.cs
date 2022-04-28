using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GhostBaBy.Models
{
    public class UserData
    {
        public int userID { get; set; }
        public string userName { get; set; }
        public string userPassword { get; set; }
        public string Name { get; set; }
        public string Lastname { get; set; }
        public string Citizen_ID { get; set; }
        public Nullable<System.DateTime> Birth { get; set; }
        public string Sex { get; set; }
        public string Address { get; set; }
        public Nullable<int> PROVINCE_ID { get; set; }
        public Nullable<int> AMPHUR_ID { get; set; }
        public Nullable<int> DISTRICT_ID { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Picture { get; set; }
    }
}