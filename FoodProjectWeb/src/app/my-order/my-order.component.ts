import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { JwtHelperService } from '@auth0/angular-jwt';
import { AuthService } from '../services/auth.service';
import { CheckoutComponent } from '../checkout/checkout.component';
import { ProductService } from '../services/product.service';

@Component({
  selector: 'app-my-order',
  templateUrl: './my-order.component.html',
  styleUrls: ['./my-order.component.css']
})
export class MyOrderComponent implements OnInit {

  constructor(private jwt:JwtHelperService,private _auth:AuthService,private http:HttpClient,private _productService:ProductService) { }
  myordersModels:any;
  username:string='';
  ngOnInit(): void {
    this.username=this.jwt.decodeToken(this._auth.getToken()?.toString())?.unique_name;

    this._productService.getMyOrders(this.username).subscribe(res=>{this.myordersModels=res;});
  }

}
