import { Component, OnInit } from '@angular/core';
import { PedidoService } from '../pedido.service';

@Component({
  selector: 'app-pedido-form',
  templateUrl: './pedido-form.component.html',
  styleUrls: ['./pedido-form.component.css']
})
export class PedidoFormComponent implements OnInit {

  nome: string = '';
  numero: string = '';
  rua: string = '';
  bairro: string = '';
  complemento: string = '';
  troco: string = '';

  constructor(private pedidoService: PedidoService) { }

  ngOnInit(): void {
  }

  concluirPedido(): void {
    let texto = `*Nome:* ${this.nome};\n*Bairro:* ${this.bairro};\n*Rua:* ${this.rua};\n*Número:* ${this.numero};\n*Complemento:* ${this.complemento};\n*Observacao:* ${this.troco}\n\n`;
    let textoURI = encodeURIComponent(texto);
    
    //isabele celular- 554199910-1536
    //Cleonir celular- 554199652-1663
    //Rodrigo celular- 554199714-4463

    window.open(`https://api.whatsapp.com/send?phone=554199714-4462&text=${textoURI}${this.pedidoService.pedidoURI}`);
    
  }
}
