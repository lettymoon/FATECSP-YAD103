program logp1ex1

implicit none

!declaracao de variaveis:
logical :: a,b,S

!inicializacao das variaveis:
a = .true.
b = .true.

!calculos proposicionais:
S = .not.((a.and.b).and..not.(a.or.b))

!saida de dados para tela:
write(*,*)'Valor logico das proporsicoes simples'
write(*,*)'a = ', a, 'b = ', b
write(*,*)'Valor logico da proposicao composta'
write(*,*)'S = ~((a^b)^~(avb)) = ', S

!saida de dados para arquivo:
open(10, file='ex1.dat', status='replace')
    write(10,*)'Valor logico das proposicoes simples'
    write(10,*)'a = ', a, 'b = ', b
    write(10,*)'Valor logico da proposicao composta'
    write(10,*)'S = ~((a^b)^~(avb)) = ', S
close(10) !fechamento do arquivo de saida
pause

!finalizacao do programa:
end program logp1ex1
