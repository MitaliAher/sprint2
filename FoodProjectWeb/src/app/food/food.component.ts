import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { foodadmin } from '../models/foodadmin';
import { CartService } from '../services/cart.service';
import { ProductService } from '../services/product.service';

@Component({
  selector: 'app-food',
  templateUrl: './food.component.html',
  styleUrls: ['./food.component.css']
})
export class FoodComponent implements OnInit {

  
  searchKey:string ="";
  constructor(private _productservice: ProductService,private _router:Router,private _cartservice:CartService) { }
 
  products: Array<foodadmin> = new Array<foodadmin>();
  ngOnInit(): void {

    this._productservice.getProducts().subscribe(res => {this.products = res;
      this.products.forEach((a :any) =>{
        Object.assign(a,{quantity:1});
      });
    })
    this._cartservice.search.subscribe((val:any)=>{
      this.searchKey = val;
    })
  }
  
    buy(item: any){
      this._cartservice.addtoCart(item);
      //this._router.navigate(['/login']);
  }
  
  
}