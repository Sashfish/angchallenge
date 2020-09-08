import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from "@angular/common/http";
//import { FormsControl } from '@angular/forms';

import { AppComponent } from './app.component';
import { VideogameService } from "./videogame.service";

@NgModule({
  declarations: [
    AppComponent,
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
  //  FormsControl,
  ],
  providers: [VideogameService],
  bootstrap: [AppComponent]
})
export class AppModule { }
