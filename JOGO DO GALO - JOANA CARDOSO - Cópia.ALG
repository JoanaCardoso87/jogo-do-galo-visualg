Algoritmo "Jogo do galo"
// Disciplina  : Programa��o de computadores estruturada
// Professor   : Sara Formoso
// Descri��o   : Jogo do galo simples
// Autor(a)    : Joana Pires Cardoso
// Data atual: : 06/03/2024

var
   m: vetor[1..3, 1..3] de caractere
   casa, l, c, a, b: inteiro
   R, jogador: caractere
   vencedor, empate: logico
   // R - resposta

   // desenhar o tabuleiro, de maneira a que os jogadores saibam o n�mero das
   // casas onde podem jogar, para facilitar a escolha.
procedimento interface()
inicio
   escreval()
   escreval("       -------------- JOGO DO GALO -------------- ")
   escreval()
   para l de 1 ate 3 faca
      para c de 1 ate 3 faca
         escreva ( m[l,c]:3)
         se c<3 entao
            escreva (" | ")
         fimse
      fimpara
      escreval ()
      se l<3 entao
         escreval("----|-----|----")
      fimse
   fimpara
fimprocedimento


// In�cio do programa principal
inicio

   casa <- 1

   para l de 1 ate 3 faca
      para c de 1 ate 3 faca
         m[l, c] <- NumpCarac((l - 1) * 3 + c)
      fimpara
   fimpara

   interface()

   // Aqui os jogadores come�am a escolher a casa onde pretendem jogar
   escreval ()
   escreval ("Come�a o jogador 1. Escolha uma casa:")
   // Loop
   repita
      escreval()
      escreval(Se(casa = 1, "X", "O")
      leia(R)
      a <- 1
      b <- 1

      // Verifica se a casa est� entre 1 e 9 e se j� n�o foi preenchida
      enquanto (m[a, b] <> R) faca
         b <- b + 1
         se (b > 3) entao
            a <- a + 1
            b <- 1
         fimse
         se (a > 3) entao
            a <- 1
            limpatela()
            interface()
            escreval()
            escreva("Inv�lido. Escolha outra casa: ")
            leia(R)
         fimse
      fimenquanto

      // Conforme v�o escolhendo o n�mero da casa muda para "X" ou "O"
      escolha casa
      caso 1
         m[a, b] <- "X"
      caso 2
         m[a, b] <- "O"
      fimescolha

      limpatela()
      interface()

      // Troca de jogador
      casa <- casa mod 2 + 1



      Vencedor <- falso
      // Verificar se o jogador 1 venceu nas linhas horizontais
      se (m[1,1]="X") e (m[1,2]="X") e (m[1,3]="X") entao
         escreval ()
         escreval ("O jogador 1 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse
      se (m[2,1]="X") e (m[2,2]="X") e (m[2,3]="X") entao
         escreval ()
         escreval ("O jogador 1 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse
      se (m[3,1]="X") e (m[3,2]="X") e (m[3,3]="X") entao
         escreval ()
         escreval ("O jogador 1 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse

      // Verificar se o jogador 1 venceu nas linhas verticais
      se (m[1,1]="X") e (m[2,1]="X") e (m[3,1]="X") entao
         escreval ()
         escreval ("O jogador 1 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse
      se (m[1,2]="X") e (m[2,2]="X") e (m[3,2]="X") entao
         escreval ()
         escreval ("O jogador 1 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse
      se (m[1,3]="X") e (m[2,3]="X") e (m[3,3]="X") entao
         escreval ()
         escreval ("O jogador 1 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse

      // Verificar se o jogador 1 venceu nas diagonais
      se (m[1,1]="X") e (m[2,2]="X") e (m[3,3]="X") entao
         escreval ()
         escreval ("O jogador 1 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse
      se (m[1,3]="X") e (m[2,2]="X") e (m[3,1]="X") entao
         escreval ()
         escreval ("O jogador 1 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse

      // Verificar se o jogador 2 venceu nas linhas horizontais
      se (m[1,1]="O") e (m[1,2]="O") e (m[1,3]="O") entao
         escreval ()
         escreval ("O jogador 2 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse
      se (m[2,1]="O") e (m[2,2]="O") e (m[2,3]="O") entao
         escreval ()
         escreval ("O jogador 2 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse
      se (m[3,1]="O") e (m[3,2]="O") e (m[3,3]="O") entao
         escreval ()
         escreval ("O jogador 2 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse

      // Verificar se o jogador 2 venceu nas linhas verticais
      se (m[1,1]="O") e (m[2,1]="O") e (m[3,1]="O") entao
         escreval ()
         escreval ("O jogador 2 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse
      se (m[1,2]="O") e (m[2,2]="O") e (m[3,2]="O") entao
         escreval ()
         escreval ("O jogador 2 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse
      se (m[1,3]="O") e (m[2,3]="O") e (m[3,3]="O") entao
         escreval ()
         escreval ("O jogador 2 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse

      // Verificar se o jogador 2 venceu nas diagonais
      se (m[1,1]="O") e (m[2,2]="O") e (m[3,3]="O") entao
         escreval ()
         escreval ("O jogador 2 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse
      se (m[1,3]="O") e (m[2,2]="O") e (m[3,1]="O") entao
         escreval ()
         escreval ("O jogador 2 venceu! Parab�ns!")
         Vencedor <- verdadeiro
      fimse

      // Verifica se todas as casas foram preenchidas
      se (n�o Vencedor) entao
         empate <- verdadeiro
         para l de 1 ate 3 faca
            para c de 1 ate 3 faca
               se (m[l, c] <> "X") e (m[l, c] <> "O") entao
                  // Se uma casa n�o estiver preenchida, n�o � empate
                  empate <- falso
               fimse
            fimpara
         fimpara

         // Se todas as casas estiverem preenchidas e n�o houver vencedor, � empate
         se (empate) entao
            escreval ()
            escreval ("Empate! O jogo terminou sem vencedores.")
         fimse
      fimse

   ate (Vencedor = verdadeiro)

fimalgoritmo