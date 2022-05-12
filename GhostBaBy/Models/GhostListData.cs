using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GhostBaBy.Models
{
    public class GhostListData
    {
        public int userID { get; set; }
        public string userName { get; set; }
        public string Name { get; set; }
        public string Lastname { get; set; }
        public int newsID { get; set; }
        public string newsTitle { get; set; }
        public string newsContent { get; set; }
        public string newsPicture { get; set; }
        public string newsStatus { get; set; }
        public bool newsDel { get; set; }
        public int CheckID { get; set; }
    }
}