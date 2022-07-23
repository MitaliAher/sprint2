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
    public class FoodController : ControllerBase
    {
        fooddbContext db;
        public FoodController(fooddbContext _db)
        {
            db = _db;
        }
        [HttpGet]
        public IEnumerable<FoodDetail> GetFoods()
        {
            return db.FoodDetails;
        }
        [HttpPost]
        public string Post([FromBody] FoodDetail food)
        {
            //if (food.IsActive == 1)
            //{
            //    db.SaveChanges();
            //}
            //else
            //    return "not available";
            db.FoodDetails.Add(food);
            db.SaveChanges();
            return "success";
        }

        //[HttpPost]
        //[Route("ApproveFood")]
        //public IActionResult ApproveProperty([FromBody] ApproveViewModel approveViewModel)
        //{
        //    var data = db.FoodDetailsAdmins.Where(x => x.Id == approveViewModel.Id).FirstOrDefault();
        //    data.IsApprove = 1;
        //    db.FoodDetailsAdmins.Update(data);
        //    db.SaveChanges();
        //    var tblfood = new FoodDetailsAdmin();
        //    tblfood.FoodDescription = data.FoodDescription;
        //    tblfood.FoodName = data.FoodName;
        //    db.FoodDetailsAdmins.Add(tblfood);
        //    db.SaveChanges();
        //    return Ok();
        //}
        [HttpPut]
        public string Put([FromBody] FoodDetail food)
        {
            var tblsampleObj = db.FoodDetails.Where(x => x.Id == food.Id);
            if (tblsampleObj != null)
            {
                db.FoodDetails.Update(food);
                db.SaveChanges();
                return "Success";
            }

            return "Fail";
        }
    }
}