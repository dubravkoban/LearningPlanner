using LearningPlanner.Database;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace LearningPlanner.Controllers
{
    public class HomeController : ApiController
    {
        private WoodenHuskyJazzEntities _dbModel;

        public HomeController()
        {
            _dbModel = DbModelCreator.Create();
        }

        public IHttpActionResult Get()
        {
            var resultDb = _dbModel.Status.Find(1);
            return Ok(resultDb.Description);
        }
    }
}
