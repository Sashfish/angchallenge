import { Component, OnInit } from "@angular/core";
import { Observable } from "rxjs";
import { timer } from "rxjs";
import { Videogame } from "./videogame.ts";
import { VideogameService } from "./videogame.service";

import templateString from './app.component.html'

@Component({
  selector: 'hello-angular',
  template: templateString,
})
export class AppComponent implements OnInit{
  name = 'Sashfish';

  videogames: Videogame[];

  constructor(private videogameService: VideogameService){}

  getVideogames() {
    this.videogameService.getVideogames();
  }

  ngOnInit() {
    let timerr = timer(0, 5000);
    timerr.subscribe(() => this.getVideogames());
  }
}
