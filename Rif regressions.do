*********************************************  APLICANDO PARA OS GRUPOS OCUPACIONAIS 
* forcaarmada
* dirigentes
* pcas
* tecnicomedio
* agricolas
* producao
* servicosadm 
* servicoscom





** OMITIDOS: exp_menos1mes; informal; publico; setoragricola; rural; regiaonaometropo; nordeste; mulher; naobranco; outraposicoes; heterossexual; hetero_mulher; hetero_homem




********************************************************************************************** CORREÇÃO DO VIÉS DE SELEÇÃO MANUAL - PERÍODO 1 = 2013 A 2015


probit pea escolaridade experiencia experiencia2 branco filho0_17 tamanhofam urbana regiaometropo norte sudeste sul centrooeste df if idade>=18 & periodo1==1 & mulher==1 [pw=v1032], vce(robust) iterate(10)

predict xb1 if e(sample), xb
gen mills1=normalden(-xb1)/(1-normal(-xb1))


probit pea escolaridade experiencia experiencia2 branco filho0_17 tamanhofam urbana regiaometropo norte sudeste sul centrooeste df mills1 if idade>=18 & periodo1==1 & mulher==1 [pw=v1032], vce(robust) iterate(10)








********************************************************************************************** MULHERES - PERÍODO 1 = 2013 A 2015



**** FORÇA ARMADA GERAL - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & forcaarmada==1 [aw=v1032], rif(q(10)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & forcaarmada==1 [aw=v1032], rif(q(30)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & forcaarmada==1 [aw=v1032], rif(q(50)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & forcaarmada==1 [aw=v1032], rif(q(70)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & forcaarmada==1 [aw=v1032], rif(q(90)) robust








**** DIRIGENTES - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & dirigentes==1 [aw=v1032], rif(q(10)) robust


**** DIRIGENTES - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & dirigentes==1 [aw=v1032], rif(q(30)) robust


**** DIRIGENTES - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & dirigentes==1 [aw=v1032], rif(q(50)) robust


**** DIRIGENTES - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & dirigentes==1 [aw=v1032], rif(q(70)) robust


**** DIRIGENTES - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & dirigentes==1 [aw=v1032], rif(q(90)) robust








**** PCAS - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & pcas==1 [aw=v1032], rif(q(10)) robust


**** PCAS - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & pcas==1 [aw=v1032], rif(q(30)) robust


**** PCAS - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & pcas==1 [aw=v1032], rif(q(50)) robust


**** PCAS - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & pcas==1 [aw=v1032], rif(q(70)) robust


**** PCAS - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & pcas==1 [aw=v1032], rif(q(90)) robust








**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & tecnicomedio==1 [aw=v1032], rif(q(10)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & tecnicomedio==1 [aw=v1032], rif(q(30)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & tecnicomedio==1 [aw=v1032], rif(q(50)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & tecnicomedio==1 [aw=v1032], rif(q(70)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & tecnicomedio==1 [aw=v1032], rif(q(90)) robust








**** AGRÍCOLAS - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & agricolas==1 [aw=v1032], rif(q(10)) robust


**** AGRÍCOLAS - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & agricolas==1 [aw=v1032], rif(q(30)) robust


**** AGRÍCOLAS - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & agricolas==1 [aw=v1032], rif(q(50)) robust


**** AGRÍCOLAS - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & agricolas==1 [aw=v1032], rif(q(70)) robust


**** AGRÍCOLAS - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & agricolas==1 [aw=v1032], rif(q(90)) robust








**** PRODUÇÃO - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & producao==1 [aw=v1032], rif(q(10)) robust


**** PRODUÇÃO - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & producao==1 [aw=v1032], rif(q(30)) robust


**** PRODUÇÃO - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & producao==1 [aw=v1032], rif(q(50)) robust


**** PRODUÇÃO - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & producao==1 [aw=v1032], rif(q(70)) robust


**** PRODUÇÃO - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & producao==1 [aw=v1032], rif(q(90)) robust








**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & servicosadm==1 [aw=v1032], rif(q(10)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & servicosadm==1 [aw=v1032], rif(q(30)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & servicosadm==1 [aw=v1032], rif(q(50)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & servicosadm==1 [aw=v1032], rif(q(70)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & servicosadm==1 [aw=v1032], rif(q(90)) robust









**** SERVIÇOS E COMÉRCIO - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & servicoscom==1 [aw=v1032], rif(q(10)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & servicoscom==1 [aw=v1032], rif(q(30)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & servicoscom==1 [aw=v1032], rif(q(50)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & servicoscom==1 [aw=v1032], rif(q(70)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills1 if ocupado==1 & idade>=18 & periodo1==1 & mulher==1 & servicoscom==1 [aw=v1032], rif(q(90)) robust









********************************************************************************************** CORREÇÃO DO VIÉS DE SELEÇÃO MANUAL - PERÍODO 2 

* family(binomial) dá o mesmo resultado que o comando direto


* probit pea escolaridade experiencia experiencia2 branco filho0_17 tamanhofam urbana regiaometropo norte sudeste sul centrooeste df if idade>=18 & periodo2==1 & mulher==1 [pw=v1032], vce(robust)
* glm pea escolaridade experiencia experiencia2 branco filho0_17 tamanhofam urbana regiaometropo norte sudeste sul centrooeste df if idade>=18 & periodo2==1 & mulher==1 [pw=v1032], family(binomial) link(probit) vce(robust)
* pea escolaridade experiencia experiencia2 branco filho0_17 tamanhofam urbana regiaometropo norte sudeste sul centrooeste df if idade>=18 & periodo2==1 & mulher==1 [pw=v1032], vce(robust) iterate(10)
* usa o interate (10) para determinar o número de interações e assim rodar o modelo


probit pea escolaridade experiencia experiencia2 branco filho0_17 tamanhofam urbana regiaometropo norte sudeste sul centrooeste df if idade>=18 & periodo2==1 & mulher==1 [pw=v1032], vce(robust) iterate(10)

predict xb2 if e(sample), xb
gen mills2=normalden(-xb2)/(1-normal(-xb2))


probit pea escolaridade experiencia experiencia2 branco filho0_17 tamanhofam urbana regiaometropo norte sudeste sul centrooeste df mills2 if idade>=18 & periodo2==1 & mulher==1 [pw=v1032], vce(robust) iterate(10)








********************************************************************************************** MULHERES - PERÍODO 2 = 2016 A 2019




**** FORÇA ARMADA GERAL - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & forcaarmada==1 [aw=v1032], rif(q(10)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & forcaarmada==1 [aw=v1032], rif(q(30)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & forcaarmada==1 [aw=v1032], rif(q(50)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & forcaarmada==1 [aw=v1032], rif(q(70)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & forcaarmada==1 [aw=v1032], rif(q(90)) robust








**** DIRIGENTES - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & dirigentes==1 [aw=v1032], rif(q(10)) robust


**** DIRIGENTES - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & dirigentes==1 [aw=v1032], rif(q(30)) robust


**** DIRIGENTES - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & dirigentes==1 [aw=v1032], rif(q(50)) robust


**** DIRIGENTES - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & dirigentes==1 [aw=v1032], rif(q(70)) robust


**** DIRIGENTES - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & dirigentes==1 [aw=v1032], rif(q(90)) robust








**** PCAS - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & pcas==1 [aw=v1032], rif(q(10)) robust


**** PCAS - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & pcas==1 [aw=v1032], rif(q(30)) robust


**** PCAS - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & pcas==1 [aw=v1032], rif(q(50)) robust


**** PCAS - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & pcas==1 [aw=v1032], rif(q(70)) robust


**** PCAS - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & pcas==1 [aw=v1032], rif(q(90)) robust








**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & tecnicomedio==1 [aw=v1032], rif(q(10)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & tecnicomedio==1 [aw=v1032], rif(q(30)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & tecnicomedio==1 [aw=v1032], rif(q(50)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & tecnicomedio==1 [aw=v1032], rif(q(70)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & tecnicomedio==1 [aw=v1032], rif(q(90)) robust








**** AGRÍCOLAS - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & agricolas==1 [aw=v1032], rif(q(10)) robust


**** AGRÍCOLAS - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & agricolas==1 [aw=v1032], rif(q(30)) robust


**** AGRÍCOLAS - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & agricolas==1 [aw=v1032], rif(q(50)) robust


**** AGRÍCOLAS - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & agricolas==1 [aw=v1032], rif(q(70)) robust


**** AGRÍCOLAS - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & agricolas==1 [aw=v1032], rif(q(90)) robust








**** PRODUÇÃO - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & producao==1 [aw=v1032], rif(q(10)) robust


**** PRODUÇÃO - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & producao==1 [aw=v1032], rif(q(30)) robust


**** PRODUÇÃO - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & producao==1 [aw=v1032], rif(q(50)) robust


**** PRODUÇÃO - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & producao==1 [aw=v1032], rif(q(70)) robust


**** PRODUÇÃO - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & producao==1 [aw=v1032], rif(q(90)) robust








**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & servicosadm==1 [aw=v1032], rif(q(10)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & servicosadm==1 [aw=v1032], rif(q(30)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & servicosadm==1 [aw=v1032], rif(q(50)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & servicosadm==1 [aw=v1032], rif(q(70)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & servicosadm==1 [aw=v1032], rif(q(90)) robust









**** SERVIÇOS E COMÉRCIO - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & servicoscom==1 [aw=v1032], rif(q(10)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & servicoscom==1 [aw=v1032], rif(q(30)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & servicoscom==1 [aw=v1032], rif(q(50)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & servicoscom==1 [aw=v1032], rif(q(70)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_mulher mills2 if ocupado==1 & idade>=18 & periodo2==1 & mulher==1 & servicoscom==1 [aw=v1032], rif(q(90)) robust










********************************************************************************************** HOMENS - PERÍODO 1 = 2013 A 2015



**** FORÇA ARMADA GERAL - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & forcaarmada==1 [aw=v1032], rif(q(10)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & forcaarmada==1 [aw=v1032], rif(q(30)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & forcaarmada==1 [aw=v1032], rif(q(50)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & forcaarmada==1 [aw=v1032], rif(q(70)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & forcaarmada==1 [aw=v1032], rif(q(90)) robust








**** DIRIGENTES - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & dirigentes==1 [aw=v1032], rif(q(10)) robust


**** DIRIGENTES - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & dirigentes==1 [aw=v1032], rif(q(30)) robust


**** DIRIGENTES - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & dirigentes==1 [aw=v1032], rif(q(50)) robust


**** DIRIGENTES - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & dirigentes==1 [aw=v1032], rif(q(70)) robust


**** DIRIGENTES - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & dirigentes==1 [aw=v1032], rif(q(90)) robust








**** PCAS - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & pcas==1 [aw=v1032], rif(q(10)) robust


**** PCAS - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & pcas==1 [aw=v1032], rif(q(30)) robust


**** PCAS - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & pcas==1 [aw=v1032], rif(q(50)) robust


**** PCAS - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & pcas==1 [aw=v1032], rif(q(70)) robust


**** PCAS - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & pcas==1 [aw=v1032], rif(q(90)) robust








**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & tecnicomedio==1 [aw=v1032], rif(q(10)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & tecnicomedio==1 [aw=v1032], rif(q(30)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & tecnicomedio==1 [aw=v1032], rif(q(50)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & tecnicomedio==1 [aw=v1032], rif(q(70)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & tecnicomedio==1 [aw=v1032], rif(q(90)) robust








**** AGRÍCOLAS - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & agricolas==1 [aw=v1032], rif(q(10)) robust


**** AGRÍCOLAS - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & agricolas==1 [aw=v1032], rif(q(30)) robust


**** AGRÍCOLAS - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & agricolas==1 [aw=v1032], rif(q(50)) robust


**** AGRÍCOLAS - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & agricolas==1 [aw=v1032], rif(q(70)) robust


**** AGRÍCOLAS - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & agricolas==1 [aw=v1032], rif(q(90)) robust








**** PRODUÇÃO - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & producao==1 [aw=v1032], rif(q(10)) robust


**** PRODUÇÃO - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & producao==1 [aw=v1032], rif(q(30)) robust


**** PRODUÇÃO - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & producao==1 [aw=v1032], rif(q(50)) robust


**** PRODUÇÃO - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & producao==1 [aw=v1032], rif(q(70)) robust


**** PRODUÇÃO - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & producao==1 [aw=v1032], rif(q(90)) robust








**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & servicosadm==1 [aw=v1032], rif(q(10)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & servicosadm==1 [aw=v1032], rif(q(30)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & servicosadm==1 [aw=v1032], rif(q(50)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & servicosadm==1 [aw=v1032], rif(q(70)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & servicosadm==1 [aw=v1032], rif(q(90)) robust









**** SERVIÇOS E COMÉRCIO - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & servicoscom==1 [aw=v1032], rif(q(10)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & servicoscom==1 [aw=v1032], rif(q(30)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & servicoscom==1 [aw=v1032], rif(q(50)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & servicoscom==1 [aw=v1032], rif(q(70)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills3 if ocupado==1 & idade>=18 & periodo1==1 & homem==1 & servicoscom==1 [aw=v1032], rif(q(90)) robust









********************************************************************************************** CORREÇÃO DO VIÉS DE SELEÇÃO MANUAL - PERÍODO 2 

* family(binomial) dá o mesmo resultado que o comando direto


* probit pea escolaridade experiencia experiencia2 branco filho0_17 tamanhofam urbana regiaometropo norte sudeste sul centrooeste df if idade>=18 & periodo2==1 & homem==1 [pw=v1032], vce(robust)
* glm pea escolaridade experiencia experiencia2 branco filho0_17 tamanhofam urbana regiaometropo norte sudeste sul centrooeste df if idade>=18 & periodo2==1 & homem==1 [pw=v1032], family(binomial) link(probit) vce(robust)
* pea escolaridade experiencia experiencia2 branco filho0_17 tamanhofam urbana regiaometropo norte sudeste sul centrooeste df if idade>=18 & periodo2==1 & homem==1 [pw=v1032], vce(robust) iterate(10)
* usa o interate (10) para determinar o número de interações e assim rodar o modelo


probit pea escolaridade experiencia experiencia2 branco filho0_17 tamanhofam urbana regiaometropo norte sudeste sul centrooeste df if idade>=18 & periodo2==1 & homem==1 [pw=v1032], vce(robust) iterate(10)

predict xb4 if e(sample), xb
gen mills4=normalden(-xb4)/(1-normal(-xb4))


probit pea escolaridade experiencia experiencia2 branco filho0_17 tamanhofam urbana regiaometropo norte sudeste sul centrooeste df mills4 if idade>=18 & periodo2==1 & homem==1 [pw=v1032], vce(robust) iterate(10)








********************************************************************************************** HOMENS - PERÍODO 2 = 2016 A 2019




**** FORÇA ARMADA GERAL - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & forcaarmada==1 [aw=v1032], rif(q(10)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & forcaarmada==1 [aw=v1032], rif(q(30)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & forcaarmada==1 [aw=v1032], rif(q(50)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & forcaarmada==1 [aw=v1032], rif(q(70)) robust


**** FORÇA ARMADA GERAL - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & forcaarmada==1 [aw=v1032], rif(q(90)) robust








**** DIRIGENTES - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & dirigentes==1 [aw=v1032], rif(q(10)) robust


**** DIRIGENTES - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & dirigentes==1 [aw=v1032], rif(q(30)) robust


**** DIRIGENTES - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & dirigentes==1 [aw=v1032], rif(q(50)) robust


**** DIRIGENTES - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & dirigentes==1 [aw=v1032], rif(q(70)) robust


**** DIRIGENTES - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & dirigentes==1 [aw=v1032], rif(q(90)) robust








**** PCAS - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & pcas==1 [aw=v1032], rif(q(10)) robust


**** PCAS - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & pcas==1 [aw=v1032], rif(q(30)) robust


**** PCAS - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & pcas==1 [aw=v1032], rif(q(50)) robust


**** PCAS - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & pcas==1 [aw=v1032], rif(q(70)) robust


**** PCAS - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & pcas==1 [aw=v1032], rif(q(90)) robust








**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & tecnicomedio==1 [aw=v1032], rif(q(10)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & tecnicomedio==1 [aw=v1032], rif(q(30)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & tecnicomedio==1 [aw=v1032], rif(q(50)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & tecnicomedio==1 [aw=v1032], rif(q(70)) robust


**** TÉCNICO DE NÍVEL MÉDIO - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & tecnicomedio==1 [aw=v1032], rif(q(90)) robust








**** AGRÍCOLAS - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & agricolas==1 [aw=v1032], rif(q(10)) robust


**** AGRÍCOLAS - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & agricolas==1 [aw=v1032], rif(q(30)) robust


**** AGRÍCOLAS - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & agricolas==1 [aw=v1032], rif(q(50)) robust


**** AGRÍCOLAS - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & agricolas==1 [aw=v1032], rif(q(70)) robust


**** AGRÍCOLAS - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & agricolas==1 [aw=v1032], rif(q(90)) robust








**** PRODUÇÃO - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & producao==1 [aw=v1032], rif(q(10)) robust


**** PRODUÇÃO - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & producao==1 [aw=v1032], rif(q(30)) robust


**** PRODUÇÃO - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & producao==1 [aw=v1032], rif(q(50)) robust


**** PRODUÇÃO - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & producao==1 [aw=v1032], rif(q(70)) robust


**** PRODUÇÃO - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & producao==1 [aw=v1032], rif(q(90)) robust








**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & servicosadm==1 [aw=v1032], rif(q(10)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & servicosadm==1 [aw=v1032], rif(q(30)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & servicosadm==1 [aw=v1032], rif(q(50)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & servicosadm==1 [aw=v1032], rif(q(70)) robust


**** SERVIÇOS ADMINISTRATIVOS - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & servicosadm==1 [aw=v1032], rif(q(90)) robust









**** SERVIÇOS E COMÉRCIO - NO QUANTIL 10

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & servicoscom==1 [aw=v1032], rif(q(10)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 30

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & servicoscom==1 [aw=v1032], rif(q(30)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 50

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & servicoscom==1 [aw=v1032], rif(q(50)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 70

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & servicoscom==1 [aw=v1032], rif(q(70)) robust


**** SERVIÇOS E COMÉRCIO - NO QUANTIL 90

rifhdreg lnrendimentohorainf escolaridade experiencia experiencia2 exp_1ano1mes exp_1ano2anos exp_2anosmais formal privado setorcomercio setorservicos setorindust setorconstru urbana regiaometropo norte sudeste sul centrooeste df tamanhofam filho0_17 branco empregador empregadototal contapropria homo_homem mills4 if ocupado==1 & idade>=18 & periodo2==1 & homem==1 & servicoscom==1 [aw=v1032], rif(q(90)) robust

