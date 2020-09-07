import { Component, OnInit } from "@angular/core";
import { Observable } from "rxjs";
import { timer } from "rxjs";
import { Videogame } from "./videogame";
import { VideogameService } from "./videogame.service";

@Component({
  selector: "videogame-list",
  templateUrl: "./videogame-list.component.html",
  styleUrls: ["./videogame.component.css"]
})

export class VideogameListComponent implements OnInit {
  videogames: Videogame[];

  constructor(private videogameService: VideogameService){}

  getVideogames() {
    this.videogameService.getVideogames()
    .subscribe(videogames => this.videogames = videogames);
  }

  ngOnInit() {
    let timerr = timer(0, 5000);
    timerr.subscribe(() => this.getVideogames());
  }

}
