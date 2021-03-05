README.md
======

###### Usar com o software cdlabelgen

Edital
------
2.1.1. Cada arquivo da obra deve ser nomeado 
com o código da coleção gerado pelo SIMEC acrescido de `_LE`, 
quando Livro do Estudante, `_MDE`, quando Material Digital do Estudante, 
`_MP`, quando Manual do Professor e `_MDP`, quando Material Digital do 
Professor, além disso, acrescido de `_PDF`, quanto Livros do Estudante 
ou Manual do Professor Impresso e `_MP4` quando videotutorial, 
e em caso de videotutoriais, acrescer o sequencial relativo a 
ordem no padrão `_XX`. Exemplo: código da coleção `0001P00001`, 
código do Livro do Estudante `0001P00001_LE_PDF`, 
código Manual do Professor `0001P00001_MP_PDF`, 
código do segundo vídeo tutorial do Material Digital do 
Professor `0001P00001_MDP_MP4_02`.

6.4.10. Cada DVD deve trazer rótulo contendo:

			título da obra, 
			editora,
			autores, 
			categoria cadastrados no SIMEC, 
			especificar se refere-se ao material do estudante ou do professor 
			`arquivo` caracterizados” ou `arquivo` descaracterizados”.

6.4.10.2. No caso das obras literárias, em observação ao item 6.4.6.1, 
cada DVD deve trazer rótulo contendo

			título da obra, 
			editora, 
			autores e indicar que se tratam de `arquivo` caracterizados”.

Como usar o código
------------------

```sh
cdlabelgen --create-cdlabel -c "Mar de barro (Jorge Sallum)" -s "Editora Hedra (Num. interno PNLD0001" > label.ps
```