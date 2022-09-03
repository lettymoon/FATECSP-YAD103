!Matematica Discreta 
!Data: 05/09/22
!Lista 01 Laboratorio de fortran 
!Calculos proposicionais
!Aluno: Leticia Helena Candido
!Turma: ADS, vespertino

program logp1ex3

implicit none

!declaracao de variaveis:
logical :: a,b,c,S

!inicializacao das variaveis:
a = .true.
b = .true.
c = .false.

!calculos proposicionais:
S = .not.a.or.(.not.b.and..not.c)

!saida de dados para tela:
write(*,*)'Valor logico das proporsicoes simples'
write(*,*)'a = ',a, 'b = ',b, 'c = ',c
write(*,*)'Valor logico da proposicao composta'
write(*,*)'S= ~a v (~b ^ ~c) = ', S

!saida de dados para arquivo:
open(10, file='ex3.dat', status='replace') !abertura de arquivo teste.dat
    write(10,*)'Valor logico das proposicoes simples'
    write(10,*)'a = ',a, 'b = ',b, 'c = ',c
    write(10,*)'Valor logico da proposicao composta'
    write(10,*)'S= ~a v (~b ^ ~c) = ', S
close(10) !fechamento do arquivo de saida

!finalizacao do programa:
end program logp1ex3
