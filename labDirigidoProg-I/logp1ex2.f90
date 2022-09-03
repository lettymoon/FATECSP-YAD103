program logp1ex2

implicit none

!declaracao de variaveis:
logical :: a,b,c,S

!inicializacao das variaveis:

a = .true.
b = .true.
c = .false.

!calculo proposicionais:

S = .not.(a.and.(.not.b.or.c).and..not.(a.and.c)).and..not.b

!saida de dados para a tela:

write(*,*)'valor logico das proposicoes simples'
write(*,*)'a = ', a, 'b = ',b, 'c = ', c
write(*,*)'valor logico da proposicao composta'
write(*,*)'S= ~(a ^ (~b v c) ^ ~(a ^ c)) ^ ~b = ',S

!saida de dados para arquivos:

open(10,file='ex2.dat',status='replace')  !abertura de arquivo teste.dat
    write(10,*)'valor logico das proposicoes simples'
    write(10,*)'a = ', a,'b = ',b, 'c = ',c
    write(10,*)'valor logico da proposicao composta'
    write(10,*)'S= ~(a ^ (~b v c) ^ ~(a ^ c)) ^ ~b = ',S

close(10) !fechamento do arquivo de saida

!finalizacao do programa:
end program logp1ex2
