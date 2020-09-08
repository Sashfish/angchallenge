import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { Observable } from "rxjs";
import { map } from 'rxjs/operators';
import { Videogame } from "./videogame";

@Injectable()
export class VideogameService {
  private videogameUrl = "http://localhost:3000/api/v1/videogames.json";

  constructor(private http: HttpClient) {}

  getVideogames(): Observable<any>{
    return this.http.get(this.videogameUrl);//.pipe(map(data => {})).subscribe(result => {});
  }

  createVideogame(): Observable<Videogame>{
    let headers = new Headers({'Content-Type':'application/json'});
    let options = new RequestOptions({headers: headers});
    return this.http.post(this.videogameUrl, JSON.stingify(videogame), options).map((res: Response) => res.json());
  }
}
