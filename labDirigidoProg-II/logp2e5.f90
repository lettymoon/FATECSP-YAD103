!Matemática Discreta
!Lista 02 Laboratório de Fortran
!Objetivo: Construção de tabela verdade com 2 variaveis
!Data: 08/09/22
!Aluno: Letícia Helena Cândido
!Turma: ADS, Vespertino

!nome do programa fonte
program logp2e5

!desabilitar a configuração de variáveis começando com i,j,k,l,m,n
implicit none

!bloco de declaração de variáveis
logical :: a, b, S
integer :: i

!bloco de saída do cabeçalho da tabela verdade na tela DOS
write(*,*)'-------------------------------'
write(*,*)'|  S = (~a ^ b) v (~a ^ ~ b)  |'
write(*,*)'-------------------------------'
write(*,*)'|    a    |    b    |    S    |'
write(*,*)'-------------------------------'

!abertura de arquivos
open (10, file='e5.dat', status='replace')

!bloco de saída do cabeçalho da tabela verdade para o arquivo
write(10,*)'-------------------------------'
write(10,*)'|  S = (~a ^ b) v (~a ^ ~ b)  |'
write(10,*)'-------------------------------'
write(10,*)'|    a    |    b    |    S    |'
write(10,*)'-------------------------------'

!início do laço de repetição para tabela verdade com 2 variáveis lógica e 4 linhas de cálculos
do i=1,4

!bloco de decisão para inicialização das variáveis para a primeira linha
    if (i==1)then 
        a = .true.
        b = .true.
    endif

!bloco de decisão para inicialização das variáveis para a segunda linha
    if (i==2)then 
        a = .true.
        b = .false.
    endif

!bloco de decisão para inicialização das variáveis para a terceira linha
    if (i==3)then 
        a = .false.
        b = .true.
    endif

!bloco de decisão para inicialização das variáveis para a quarta linha
    if (i==4)then 
        a = .false.
        b = .false.
    endif

!calculo proposicional
    S = (.not.a.and.b).or.(.not.a.and..not.b)

!bloco de saída de dados para a tela DOS
    write(*,*)'|   ',a,'   |   ',b,'   |   ',s,'   |'
    write(*,*)'-------------------------------'

!bloco de saída de dados para o arquivo
    write(10,*)'|   ',a,'   |   ',b,'   |   ',s,'   |'
    write(10,*)'-------------------------------'

enddo !fim do bloco de repetição

!fechamento de arquivo
close(10)

!finalização do programa
end program logp2e5
