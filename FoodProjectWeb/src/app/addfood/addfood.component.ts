import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Food } from '../models/Food';
import { ProductService } from '../services/product.service';
import { Injectable } from '@angular/core';

@Component({
  selector: 'app-addfood',
  templateUrl: './addfood.component.html',
  styleUrls: ['./addfood.component.css']
})
export class AddfoodComponent implements OnInit {
  isEdit: any;

  constructor(public httpc: HttpClient, private _foodservice: ProductService, private _router: Router) { }
  files = [];
  ngOnInit(): void {
  }

  addfood: Food = new Food();
  addfoods: Array<Food> = new Array<Food>();
  img: any;

  AddFood() {
    console.log(this.addfood)

    var addo = {

      foodName: this.addfood.foodName,
      place: this.addfood.place,
      restaurantName: this.addfood.restaurantName,
      foodDescription: this.addfood.foodDescription,
      foodFinal: Number(this.addfood.foodFinal),
      foodMrp: Number(this.addfood.foodMrp),
      foodDiscount: Number(this.addfood.foodDiscount),
      foodImage: this.addfood.foodImage,
      IsActive: Number(this.addfood.IsActive)
    }

    this.httpc.post("https://localhost:44360/api/Food", addo).subscribe(res => this.PostSuccess(res), res => this.PostError(res));
    this.addfood = new Food();

    //if (this.isEdit) {
     // this.httpc.put("https://localhost:44343/api/Tweet", addo).subscribe(res => this.PostSuccess(res), res => this.PostError(res));
    //}
    //else 
    {
    let filetoUpload=<File>this.files[0];
    const formData=new FormData();
    formData.append('file',filetoUpload,filetoUpload.name)
    this.httpc.post("https://localhost:44360/api/Upload",formData).subscribe(res=>{console.log(res); this.img=res;addo.foodImage=this.img.imageUrl;this.AddFood();},res=>console.log(res));
   
    }

  }

  onFileChanged(event: any) {
    this.files = event.target.files;
  }

  PostSuccess(res: any) {
    console.log(res);

  }
  PostError(res: any) {
    console.log(res);
  }

  Show() {
    console.log("Hi");
    this.httpc.get("https://localhost:44360/api/Food").subscribe(res => this.GetSuccess(res), res => this.GetError(res));
  }
  GetSuccess(input: any) {
    this.addfoods = input;
  }
  GetError(input: any) {
    console.log(input);
  }

  /*uploadFile = (files: any) => {
    console.log("Hi");

    if (files.length == 0) {
      return;
    }
    
    let filetoUpload = <File>files[0];
    const formData = new FormData();
    formData.append('file', filetoUpload, filetoUpload.name)
    this.httpc.post("https://localhost:44360/api/upload", formData).subscribe(res=>{console.log(res); this.img=res;addo.foodImage=this.img.imageUrl;this.AddFood(addo);},res=>console.log(res));
  }
  onFileChanged(event: any) {
    this.files = event.target.files;
  }*/

}
