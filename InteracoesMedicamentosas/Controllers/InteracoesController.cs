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
    public class InteracoesController : Controller
    {
        private InteracoesMedicamentosasEntities db = new InteracoesMedicamentosasEntities();

        public ActionResult Verifica(int med1, int med2)
        {
            if (med1 == med2)
            {
                TempData["Message"] = "Por favor, selecione medicamentos diferentes!";
                return RedirectToAction("Index", "Medicamentos");
            }
            else
            { 
                Interacoes interacao = new Interacoes();
                try
                {
                    interacao = db.Interacoes.Where(i => (i.medicamento1Id == med1 && i.medicamento2Id == med2) || (i.medicamento1Id == med2 && i.medicamento2Id == med1)).First();
                }
                catch
                {
                    interacao.reacao = "Não foi encontrada nenhuma reação";

                }
                ViewBag.Med1 = db.Medicamentos.Where(m => m.medicamentoId == med1).Select(m => m.nome).First();
                ViewBag.Med2 = db.Medicamentos.Where(m => m.medicamentoId == med2).Select(m => m.nome).First();
                return View(interacao);
            }
        }
    }
}
