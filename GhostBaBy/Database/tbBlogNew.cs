//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GhostBaBy.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbBlogNew
    {
        public int newsID { get; set; }
        public string newsTitle { get; set; }
        public string newsContent { get; set; }
        public string newsContentJson { get; set; }
        public Nullable<System.DateTime> newsCreateDate { get; set; }
        public Nullable<System.DateTime> newsUpdateDate { get; set; }
        public string newsPicture { get; set; }
        public string newsStatus { get; set; }
        public bool newsDel { get; set; }
        public int userID { get; set; }
    
        public virtual tbUser tbUser { get; set; }
    }
}
