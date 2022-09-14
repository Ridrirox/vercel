import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Produto } from './produtos.model';

@Injectable({
  providedIn: 'root'
})
export class ProdutosService {
        //C:/xampp/htdocs/pizzaria-angular-master/src/pizza.json
    //href="./xampp/htdocs/pizzaria-angular-master/src/pizza.json
   //base dados json - api google
   
 //--private readonly API = 'https//parallelum.com.br/fipe/api/v1/carros/marcas';
          //minha api
          private readonly API = 'https://script.google.com/macros/s/AKfycbyyJ6II6Mmn3ctOwa2pqj4TPt0YOoJh3f8TduI8ftc5B3as-BMz/exec';
  /////---private readonly API = 'https://script.google.com/macros/s/AKfycbz4bzrd6iGG8G9J1hTsvsjDk850Rpe97iQk9ciMk2-mTdRoENJO/exec';

  constructor(private http: HttpClient) { }

  public getProdutos(): Observable<Produto>{
    return this.http.get<Produto>(this.API);
  }
    
}
