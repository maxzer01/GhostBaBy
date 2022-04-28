using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using GhostBaBy.Database;
using GhostBaBy.Models;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using System.Web;

namespace GhostBaBy.Controllers
{
    [RoutePrefix("PageLogin")]
    public class LoginController : ApiController
    {
        // GET: api/Login
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }


        [HttpGet, Route("api/login/GetLogin")]
        public IHttpActionResult GetLogin(string userName, string userPassword)
        {
            BlogMasterDBEntities _db = new BlogMasterDBEntities();
            dynamic rss = new JObject();

            ResultApi resultApi = new ResultApi();

            if (userName != null && userPassword != null)
            {
                var cHeck = _db.tbUsers.Where(w => w.userName.Trim() == userName.Trim() && w.userPassword.Trim() == userPassword.Trim()).FirstOrDefault();

                if (cHeck != null)
                {
                    resultApi.resDesc = cHeck.userName;
                    resultApi.resCode = 200;
                    resultApi.resMessage = "Success";

                    return Ok(resultApi);
                }
            }

            return Ok(ResultApi.get(401));
        }



        // PUT: api/Login/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/Login/5
        public void Delete(int id)
        {
        }



        private static List<CustomListItem> _listItems { get; set; } = new List<CustomListItem>();

        public object Session { get; private set; }
    }
}
