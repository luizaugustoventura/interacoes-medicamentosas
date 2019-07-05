using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using InteracoesMedicamentosas.Models;

namespace InteracoesMedicamentosas.Controllers
{
    public class MedicamentosController : Controller
    {
        private InteracoesMedicamentosasEntities db = new InteracoesMedicamentosasEntities();

        // GET: Medicamentos
        public ActionResult Index()
        {
            ViewBag.medicamentoId = new SelectList(db.Medicamentos, "medicamentoId", "nome");
            return View();
        }

        // GET: Medicamentos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Medicamentos medicamentos = db.Medicamentos.Find(id);
            if (medicamentos == null)
            {
                return HttpNotFound();
            }
            return View(medicamentos);
        }

    }
}
