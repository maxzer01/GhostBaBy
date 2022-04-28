using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GhostBaBy.Models
{
    public class ResultApi
    {
        public int resCode { get; set; }
        public string resMessage { get; set; }
        public string resDesc { get; set; }

        public static ResultApi get(int resCode)
        {
            switch (resCode)
            {
                case 200: return new ResultApi { resCode = resCode, resMessage = "Success" };
                case 400: return new ResultApi { resCode = resCode, resMessage = "Client Error" };
                case 401: return new ResultApi { resCode = resCode, resMessage = "Fail" };
                case 404: return new ResultApi { resCode = resCode, resMessage = "Not Found" };
                case 422: return new ResultApi { resCode = resCode, resMessage = "Unprocessable Entity" };
                case 500: return new ResultApi { resCode = resCode, resMessage = "Server Error" };
                default: return new ResultApi { resCode = resCode, resMessage = "Success" };
            }
        }
    }
}