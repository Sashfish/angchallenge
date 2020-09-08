import { Component, OnInit } from "@angular/core";
import { Observable } from "rxjs";
import { Videogame } from "./videogame.ts";
import { VideogameService } from "./videogame.service";

import templateString from './app.component.html';

@Component({
  selector: 'hello-angular',
  template: templateString,
  styles: ['table, th, td {border: 1px solid black;}']
})
export class AppComponent implements OnInit{
  name = 'Sashfish';
  //videogame = new Videogame;
  //submitted: boolean = false;

  private videogames: any;

  constructor(private videogameService: VideogameService){}

  getVideogames() {
    this.videogameService.getVideogames().subscribe(data => {
      this.videogames = data;
    });
  }

//  createVideogame(videogame: Videogame) {
//    this.submitted = true;
//    this.videogameService.createVideogame(videogame).subscribe(data => {return true}, error => {
//      console.log("Error creating videogame");
//      return Observable.throw(error);
//    });
//  }

  ngOnInit() {
    this.getVideogames();
  }
}
