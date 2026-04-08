## 🌍 Reconhecendo o Terreno 

  ### 1º Exibindo a versão da ferramenta
  <img width="603" height="244" alt="image" src="https://github.com/user-attachments/assets/95e4e257-4867-4c6c-9b14-5a0251492019" />
  <p>Ele retorna a versão dos core, módulos e eventuais extensões</p>

  ---
  
  ### 2º Exibindo a versão da ferramenta
  <img width="1570" height="265" alt="image" src="https://github.com/user-attachments/assets/9fe5c4e3-f751-4657-957c-25f58561b2d5" />
  <p>Ele retorna a lista de assinaturas disponíveis</p>

  ---
  
  ### 3º Exibindo a assinatura corrente
  <img width="1024" height="119" alt="image" src="https://github.com/user-attachments/assets/f1e3812a-99b4-4377-a3fe-f4945940a23d" />
  <p>Ele retorna o id e o nome</p>

  ---
  
  ### 4º Listar regiões suportadas

  ```
  az account list-locations -o table  
  ```
  
  ```
    rm565049 [ ~/Devops-Linux/aula_03 ]$ az account list-locations -o table
DisplayName               Name                 RegionalDisplayName
------------------------  -------------------  -------------------------------------
East US                   eastus               (US) East US
West US 2                 westus2              (US) West US 2
Australia East            australiaeast        (Asia Pacific) Australia East
Southeast Asia            southeastasia        (Asia Pacific) Southeast Asia
North Europe              northeurope          (Europe) North Europe
Sweden Central            swedencentral        (Europe) Sweden Central
West Europe               westeurope           (Europe) West Europe
UK South                  uksouth              (UK) UK South
Central US                centralus            (US) Central US
South Africa North        southafricanorth     (Africa) South Africa North
Central India             centralindia         (Asia Pacific) Central India
East Asia                 eastasia             (Asia Pacific) East Asia
Indonesia Central         indonesiacentral     (Asia Pacific) Indonesia Central
Japan East                japaneast            (Asia Pacific) Japan East
Japan West                japanwest            (Asia Pacific) Japan West
Korea Central             koreacentral         (Asia Pacific) Korea Central
Malaysia West             malaysiawest         (Asia Pacific) Malaysia West
New Zealand North         newzealandnorth      (Asia Pacific) New Zealand North
Canada Central            canadacentral        (Canada) Canada Central
Austria East              austriaeast          (Europe) Austria East
Belgium Central           belgiumcentral       (Europe) Belgium Central
Denmark East              denmarkeast          (Europe) Denmark East
France Central            francecentral        (Europe) France Central
Germany West Central      germanywestcentral   (Europe) Germany West Central
Italy North               italynorth           (Europe) Italy North
Norway East               norwayeast           (Europe) Norway East
Poland Central            polandcentral        (Europe) Poland Central
Spain Central             spaincentral         (Europe) Spain Central
Switzerland North         switzerlandnorth     (Europe) Switzerland North
Mexico Central            mexicocentral        (Mexico) Mexico Central
UAE North                 uaenorth             (Middle East) UAE North
Brazil South              brazilsouth          (South America) Brazil South
Chile Central             chilecentral         (South America) Chile Central
East US 2 EUAP            eastus2euap          (US) East US 2 EUAP
Israel Central            israelcentral        (Middle East) Israel Central
Qatar Central             qatarcentral         (Middle East) Qatar Central
Central US (Stage)        centralusstage       (US) Central US (Stage)
East US (Stage)           eastusstage          (US) East US (Stage)
East US 2 (Stage)         eastus2stage         (US) East US 2 (Stage)
North Central US (Stage)  northcentralusstage  (US) North Central US (Stage)
South Central US (Stage)  southcentralusstage  (US) South Central US (Stage)
West US (Stage)           westusstage          (US) West US (Stage)
West US 2 (Stage)         westus2stage         (US) West US 2 (Stage)
Asia                      asia                 Asia
Asia Pacific              asiapacific          Asia Pacific
Australia                 australia            Australia
Brazil                    brazil               Brazil
Canada                    canada               Canada
Europe                    europe               Europe
France                    france               France
Germany                   germany              Germany
Global                    global               Global
India                     india                India
Indonesia                 indonesia            Indonesia
Israel                    israel               Israel
Italy                     italy                Italy
Japan                     japan                Japan
Korea                     korea                Korea
Malaysia                  malaysia             Malaysia
Mexico                    mexico               Mexico
New Zealand               newzealand           New Zealand
Norway                    norway               Norway
Poland                    poland               Poland
Qatar                     qatar                Qatar
Singapore                 singapore            Singapore
South Africa              southafrica          South Africa
Spain                     spain                Spain
Sweden                    sweden               Sweden
Switzerland               switzerland          Switzerland
Taiwan                    taiwan               Taiwan
United Arab Emirates      uae                  United Arab Emirates
United Kingdom            uk                   United Kingdom
United States             unitedstates         United States
United States EUAP        unitedstateseuap     United States EUAP
East Asia (Stage)         eastasiastage        (Asia Pacific) East Asia (Stage)
Southeast Asia (Stage)    southeastasiastage   (Asia Pacific) Southeast Asia (Stage)
East US 2                 eastus2              (US) East US 2
East US STG               eastusstg            (US) East US STG
South Central US          southcentralus       (US) South Central US
West US 3                 westus3              (US) West US 3
North Central US          northcentralus       (US) North Central US
West US                   westus               (US) West US
Jio India West            jioindiawest         (Asia Pacific) Jio India West
Central US EUAP           centraluseuap        (US) Central US EUAP
South Central US STG      southcentralusstg    (US) South Central US STG
West Central US           westcentralus        (US) West Central US
South Africa West         southafricawest      (Africa) South Africa West
Australia Central         australiacentral     (Asia Pacific) Australia Central
Australia Central 2       australiacentral2    (Asia Pacific) Australia Central 2
Australia Southeast       australiasoutheast   (Asia Pacific) Australia Southeast
Jio India Central         jioindiacentral      (Asia Pacific) Jio India Central
Korea South               koreasouth           (Asia Pacific) Korea South
South India               southindia           (Asia Pacific) South India
West India                westindia            (Asia Pacific) West India
Canada East               canadaeast           (Canada) Canada East
France South              francesouth          (Europe) France South
Germany North             germanynorth         (Europe) Germany North
Norway West               norwaywest           (Europe) Norway West
Switzerland West          switzerlandwest      (Europe) Switzerland West
UAE Central               uaecentral           (Middle East) UAE Central
Brazil Southeast          brazilsoutheast      (South America) Brazil Southeast
UK West                   ukwest               (UK) UK West
  ```
  <p>Ele retorna as regiões suportadas</p>

---

### 5º Filtrar campos

```
  az account list-locations --query "[].name" -o tsv | sort
```
```
  rm565049 [ ~/Devops-Linux/aula_03 ]$ az account list-locations --query "[].name" -o tsv | sort
asia
asiapacific
australia
australiacentral
australiacentral2
australiaeast
australiasoutheast
austriaeast
belgiumcentral
brazil
brazilsouth
brazilsoutheast
canada
canadacentral
canadaeast
centralindia
centralus
centraluseuap
centralusstage
chilecentral
denmarkeast
eastasia
eastasiastage
eastus
eastus2
eastus2euap
eastus2stage
eastusstage
eastusstg
europe
france
francecentral
francesouth
germany
germanynorth
germanywestcentral
global
india
indonesia
indonesiacentral
israel
israelcentral
italy
italynorth
japan
japaneast
japanwest
jioindiacentral
jioindiawest
korea
koreacentral
koreasouth
malaysia
malaysiawest
mexico
mexicocentral
newzealand
newzealandnorth
northcentralus
northcentralusstage
northeurope
norway
norwayeast
norwaywest
poland
polandcentral
qatar
qatarcentral
singapore
southafrica
southafricanorth
southafricawest
southcentralus
southcentralusstage
southcentralusstg
southeastasia
southeastasiastage
southindia
spain
spaincentral
sweden
swedencentral
switzerland
switzerlandnorth
switzerlandwest
taiwan
uae
uaecentral
uaenorth
uk
uksouth
ukwest
unitedstates
unitedstateseuap
westcentralus
westeurope
westindia
westus
westus2stage
westus3
westusstage
```
<p>Filtart somente o campo nome e ordenada </p>


---

## ⬛ Preparar Grupo de Recursos

  ### 1º Criando domínio 
  <img width="1018" height="292" alt="image" src="https://github.com/user-attachments/assets/94e718b2-8c1e-4555-a209-1dcb19013a38" />

  ---

  ### 2º Exibindo grupo de recursos 
  <img width="1302" height="138" alt="image" src="https://github.com/user-attachments/assets/f766e03f-301a-4188-a910-6f15082db1f5" />

  ---

  ### 3º Eliminando grupo de recursos 
  <img width="995" height="29" alt="image" src="https://github.com/user-attachments/assets/b7805e2b-f367-4106-b233-6cfd79ec9fbb" />
