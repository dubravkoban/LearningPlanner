using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.Entity;
using System.Data.Entity.Core.EntityClient;
using System.Linq;
using System.Web;

namespace LearningPlanner.Database
{
    public static class DbModelCreator
    {
        public static WoodenHuskyJazzEntities Create()
        {
            var origConnectionString = ConfigurationManager.ConnectionStrings["WoodenHuskyJazzEntities"].ConnectionString;
            var entityBuilder = new EntityConnectionStringBuilder(origConnectionString);
            var factory = DbProviderFactories.GetFactory(entityBuilder.Provider);
            var providerBuilder = factory.CreateConnectionStringBuilder();

            providerBuilder.ConnectionString = entityBuilder.ProviderConnectionString;
            providerBuilder.Add("Password", "dS^Ms^/\"\\Y7\\");
            entityBuilder.ProviderConnectionString = providerBuilder.ToString();

            return new WoodenHuskyJazzEntities(entityBuilder.ToString());
        }
    }
}