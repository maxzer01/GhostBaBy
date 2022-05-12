using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using GhostBaBy.Database;
using GhostBaBy.Models;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace GhostBaBy.Controllers
{
    [RoutePrefix("PageIndex")]
    public class GhostMemberController : ApiController
    {
        // GET: api/GhostMember
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        [HttpGet, Route("api/GetGhostMember")]
        public string GetGhostMember(string userName, string ID)
        {
            BlogMasterDBEntities _db = new BlogMasterDBEntities();

            //var userID = Convert.ToInt32(ID);
            //int userID = (ID == null ? userID = 0 : userID = Convert.ToInt32(ID));

            int userID;
            bool isNumber = int.TryParse(ID, out userID);

            var GhostList2 = (from a in _db.tbUsers
                              join b in _db.tbBlogNews on a.userID equals b.userID
                              orderby a.userID
                              select new
                              {
                                  a.userID,
                                  a.userName,
                                  a.Name,
                                  a.Lastname,
                                  b.newsID,
                                  b.newsTitle,
                                  b.newsContent,
                                  b.newsPicture
                              }).ToList();


            List<GhostListData> GhostListData = new List<GhostListData>();
            GhostListData item;


            foreach (var data in GhostList2)
            {
                item = new GhostListData();

                item.userID = data.userID;
                item.userName = data.userName;
                item.Name = data.Name;
                item.Lastname = data.Lastname;
                item.newsID = data.newsID;
                item.newsTitle = data.newsTitle;
                item.newsContent = data.newsContent;
                item.newsPicture = data.newsPicture;
                item.CheckID = (data.userName == userName.Trim() ? item.CheckID = 1 : item.CheckID = 0);

                //check isNumber first true or not // check userID equal no not
                //item.CheckID = (isNumber == true ? (userID == data.userID ? item.CheckID = 1 : item.CheckID = 0) : item.CheckID = 0);

                GhostListData.Add(item);
            }

            var json = JsonConvert.SerializeObject(GhostListData);


            return json;
        }

        // POST: api/GhostMember
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/GhostMember/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/GhostMember/5
        public void Delete(int id)
        {
        }
    }
}
