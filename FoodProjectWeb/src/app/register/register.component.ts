import { Component, OnInit } from '@angular/core';
import { UserData } from '../models/UserData';
import { Router } from '@angular/router';
import { AuthService } from '../services/auth.service';


@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

  registerUserData: UserData = new UserData();
  constructor(private _auth: AuthService,private _router:Router) { }

  ngOnInit(): void {
  }

  registerUser() {
    this._auth.registerUser(this.registerUserData).subscribe(res => {
      localStorage.setItem('token',res.token);
      this._router.navigate(['/home'])
    },
      err => console.log(err));
  }

}
