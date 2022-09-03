!Matematica Discreta 
!Data: 05/09/22
!Lista 01 Laboratorio de fortran 
!Calculos proposicionais
!Aluno: Leticia Helena Candido
!Turma: ADS, vespertino

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
write(*,*)'S = ~((a ^ b) ^ ~(a v b)) = ', S

!saida de dados para arquivo:
open(10, file='ex1.dat', status='replace') !abertura de arquivo teste.dat
    write(10,*)'Valor logico das proposicoes simples'
    write(10,*)'a = ', a, 'b = ', b
    write(10,*)'Valor logico da proposicao composta'
    write(10,*)'S = ~((a ^ b) ^ ~(a v b)) = ', S
close(10) !fechamento do arquivo de saida

!finalizacao do programa:
end program logp1ex1