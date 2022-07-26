import { HttpClient } from '@angular/common/http';
import { APP_ID, Injectable } from '@angular/core';
import { Router } from '@angular/router';
//import { detailUrl } from './Apis';

@Injectable({
  providedIn: 'root'
})
export class AdddetailService {
  private _detailUrl = "https://localhost:44360/api/Order";
  constructor(private http: HttpClient,private _router:Router) { }

  
  getdetail() {
    return this.http.get<any>(this._detailUrl);
  }
}