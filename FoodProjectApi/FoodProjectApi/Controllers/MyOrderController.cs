using FoodProjectApi.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FoodProjectApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MyOrderController : ControllerBase
    {
        fooddbContext db;
        public MyOrderController(fooddbContext _db)
        {
            db = _db;
        }
        [HttpGet]
        public IEnumerable<OrderTbl> GetMyOrders(string username)
        {
            return db.OrderTbls.Where(x => x.UserName == username).ToList();
        }
        [HttpPost]
        public String post([FromBody] Myorder tp)
        {
            db.Myorders.Add(tp);
            db.SaveChanges();
            return "success";
        }
    }
}

