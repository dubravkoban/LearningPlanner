using LearningPlanner.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace LearningPlanner.Controllers
{
    public class HomeController : ApiController
    {
        private DbModel _dbModel;

        public HomeController()
        {
            _dbModel = new DbModel();
        }

        public IHttpActionResult Get()
        {
            var resultDb = _dbModel.Material.Find(1);
            return Ok(resultDb);
        }
    }
}
