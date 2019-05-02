using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_INF354.Models;
using System.Net.Http;

namespace MVC_INF354.Controllers
{
    public class TreatmentTypeController : Controller
    {
        // GET: TreatmentType
        public ActionResult Index()
        {
            IEnumerable<TreatmentType> TreatmentTypeList;
            HttpResponseMessage response = GlobalVariables.WebApiClient.GetAsync("Treatment_Type").Result;
            TreatmentTypeList = response.Content.ReadAsAsync<IEnumerable<TreatmentType>>().Result;
            return View(TreatmentTypeList);
        }
    }
}