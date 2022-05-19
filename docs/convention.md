# Convenções definidas para o projeto

### Pipeline
* `Landing` (raw data): recomendado manter o dado em seu formato (quase) original.
* `Staged` (light transform): dados levemente transformados (_e.g._ remoção de colunas de dados, conversão de tipos) e otimizados para consumo (_e.g._ CSV para netCDF).
* `Curated` (heavy transform): dados pré-processados (_e.g._ imputação, agregação, normalização) e prontos para consumo (_e.g._ input data para modelos).

### Convenção de nomes
* `Path`: \<bucket> \<variável> \<fonte> \<ano>
* `File`: \<YYYYMMDD>.nc

Exemplo

* staged.lightning.goes16.2018.20180408.nc

Nem todas as fontes de dados poderão ser estruturadas de acordo com a convenção acima. Nesses casos, adaptar para a estrutura mais próxima possível.

### Recursos adicionais
Para maiores informações consulte a [proposta de estrutura do projeto](https://drive.google.com/drive/folders/1x_emJi9NPaj4ONdoBMoUZtqXSQSO-UAL)