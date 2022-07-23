using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FoodProjectApi.Models;
using FoodProjectApi.ViewModels;

namespace FoodProjectApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrderadminController : ControllerBase
    {
        fooddbContext db;
        public OrderadminController(fooddbContext _db)
        {
            db = _db;
        }
        [HttpGet]
        public IEnumerable<FoodDetailsAdmin> GetFoods()
        {
            return db.FoodDetailsAdmins;
        }
        [HttpPost]
        public string Post([FromBody] FoodDetailsAdmin food)
        {

            db.FoodDetailsAdmins.Add(food);
            db.SaveChanges();
            return "success";
        }
        [HttpPost]
        [Route("ApproveFood")]
        public IActionResult ApproveProperty([FromBody] ApproveViewModel approveViewModel)
        {
            var data = db.FoodDetailsAdmins.Where(x => x.Id == approveViewModel.Id).FirstOrDefault();
            data.IsApprove = 1;
            db.FoodDetailsAdmins.Update(data);
            db.SaveChanges();
            var tblfood = new FoodDetailsAdmin();
            tblfood.FoodDescription = data.FoodDescription;
            tblfood.FoodName = data.FoodName;
            db.FoodDetailsAdmins.Add(tblfood);
            db.SaveChanges();
            return Ok();
        }
        [HttpPut]
        public string Put([FromBody] FoodDetail food)
        {
            var tblsampleObj = db.FoodDetailsAdmins.Where(x => x.Id == food.Id);
            if (tblsampleObj != null)
            {
                db.FoodDetails.Update(food);
                db.SaveChanges();
                return "Success";
            }

            return "Fail";
        }
        [HttpDelete]
        public string Delete([FromBody] int Id)
        {
            var tblsampleObj = db.FoodDetailsAdmins.Where(x => x.Id == Id).FirstOrDefault();
            if (tblsampleObj != null)
            {
                db.FoodDetailsAdmins.Remove(tblsampleObj);
                db.SaveChanges();
                return "Success";
            }

            return "Fail";
        }
    }
}