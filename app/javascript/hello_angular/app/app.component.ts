import { Component, OnInit } from "@angular/core";
import { Observable } from "rxjs";
import { timer } from "rxjs";
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

  private videogames: any;

  constructor(private videogameService: VideogameService){}

  getVideogames() {
    this.videogameService.getVideogames().subscribe(data => {
      this.videogames = data;
    });
  }

  ngOnInit() {
    this.getVideogames();
  }
}
