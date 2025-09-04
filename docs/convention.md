# Convenções definidas para o projeto

### Buckets
* `Landing` (raw data): recomendado manter o dado em seu formato (quase) original.
* `Staged` (light transform): dados levemente transformados (_e.g._ remoção de colunas de dados irrelevantes, conversão de tipos) e otimizados para consumo (_e.g._ CSV para Parquet).
* `Curated` (heavy transform): dados padronizados (_e.g._ timezone, labels, unidades de medida), curados (_e.g._ remoção de duplicatas, remoção de dados espúrios) e indexados por tempo e espaço (timestamp, latitude, longitude, altitude).

### Convenção de estrutura e nomes
* `Path`: \<BUCKET> \<INSTRUMENT> \<INSTITUTION> [PRODUCT or INSTRUMENT_ID] \<YEAR> \[MONTH] \[DAY]
* `File`: \<YYYYMMDD>.\<EXTENSION> ou \<HASH>.\<EXTENSION>

Nem todas as fontes de dados poderão ser estruturadas de acordo com a convenção acima. Nesses casos, adaptar para a estrutura mais próxima possível.

Exemplos

1. Dados do satélite GOES-16 da NOAA (National Oceanic and Atmospheric Administration) referente ao produto GLM-L2-GLMF (Geostationary Lightning Mapper):

* `landing/satellite/noaa/glm/2018/20180213.nc`

2. Dados do radar meteorológico do INEA (Instituto Estadual do Ambiente) para a estação de Guaratiba:
* `landing/radar/inea/guaratiba/2016-09-19/9921GUA-PPIVol-20160919-000015-0000.hdf`
* `staged/radar/inea/guaratiba/year=2016/month=09/day=19/872d126be75b435c8e04713d45967061-0.parquet`
* `curated/radar/inea/guaratiba/year=2016/month=09/day=19/c21805196bf74007a49b2e3377321a2b-0.parquet`

3. Dados de pluviômetros do sistema Alerta Rio da Prefeitura do Rio de Janeiro:
* `landing/rain_gauge/alertario/DadosPluviometricos2024.zip`
* `staged/rain_gauge/alertario/year=2024/month=06/e80176515e014f96bd513964be3f54f2-0.parquet`
* `curated/rain_gauge/alertario/year=2024/month=06/1f3c8e2f6f3b4e0f9e2e5c3a4d5b6c7d-0.parquet`


### Recursos adicionais
Para maiores informações consulte a [proposta de estrutura do projeto](https://drive.google.com/drive/folders/1x_emJi9NPaj4ONdoBMoUZtqXSQSO-UAL)
