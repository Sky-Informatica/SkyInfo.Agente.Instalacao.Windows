@CHCP 65001

set versaoAInstalar=1.0.2.3

sc create SkyInfo.Servico.Agente.%versaoAInstalar% binPath="%cd%\%versaoAInstalar%\SkyInfo.Agente.Servico.Agente.exe" start=delayed-auto
sc description SkyInfo.Servico.Agente.%versaoAInstalar% "Agente de sincroniza��o dos sistemas legado com novo projeto Sky Sistemas."
sc failure SkyInfo.Servico.Agente.%versaoAInstalar% reset=86400 actions=restart/180000/restart/180000/restart/180000
sc start SkyInfo.Servico.Agente.%versaoAInstalar%