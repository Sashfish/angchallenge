import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from "@angular/common/http"

import { AppComponent } from './app.component';
import { VideogameListComponent } from "./videogame/videogame-list.component";
import { VideogameService } from "./videogame/videogame.service";

@NgModule({
  declarations: [
    AppComponent,
    VideogameListComponent,
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
  ],
  providers: [VideogameService],
  bootstrap: [AppComponent]
})
export class AppModule { }
