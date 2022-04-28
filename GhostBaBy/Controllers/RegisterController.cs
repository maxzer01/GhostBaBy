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

namespace GhostBaBy.Controllers
{
    [RoutePrefix("PageLogin")]
    public class RegisterController : ApiController
    {
        // GET: api/Register
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // POST: api/Register/Register
        [HttpPost, Route("api/login/PostRegister")]
        public IHttpActionResult Register(List<UserData> userDatas)
        {
            BlogMasterDBEntities _db = new BlogMasterDBEntities();
            dynamic rss = new JObject();

            if (userDatas != null)
            {
                foreach (var data in userDatas)
                {
                    var cHeck = _db.tbUsers.Where(w => w.userName.Trim() == data.userName.Trim()).FirstOrDefault();

                    if (cHeck == null)
                    {
                        tbUser tbUser = new tbUser()
                        {
                            userName = data.userName,
                            userPassword = data.userPassword,
                            Name = data.Name,
                        };
                        _db.tbUsers.Add(tbUser);
                        _db.SaveChanges();
                        return Ok(ResultApi.get(200));
                    }
                    else if (cHeck != null)
                    {
                        return Ok(ResultApi.get(422));
                    }
                }
            }


            return Ok(ResultApi.get(401));
        }


        // PUT: api/Register/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/Register/5
        public void Delete(int id)
        {
        }
    }
}
