# Resumo: Lógica, Matemática e Geolocalização

Este repositório contém o aprendizado prático focado em manipulação de tipos de dados, operações aritméticas e o cálculo de distância entre coordenadas geográficas utilizando a **Fórmula de Haversine**.

## 🚀 O que foi aprendido

### 1. Interface e Componentes VCL
* Organização de uma Unit no Delphi (`interface`, `implementation`).
* Uso de componentes visuais: `TButton`, `TEdit`, `TLabel` e `TPanel`.
* Associação de eventos `OnClick` aos componentes para execução de lógica.

### 2. Manipulação de Variáveis e Tipos
* Declaração de variáveis locais e globais.
* Tipos de dados fundamentais: `Integer`, `String`, `Boolean`, `Char` e `Real/Double`.
* Uso de constantes (`const`) para valores imutáveis (Ex: Raio médio da Terra).

### 3. Conversão de Dados (Casting)
* `StrToFloat` e `StrToFloatDef`: Conversão de texto para números decimais com tratamento de valores padrão.
* `FloatToStr` e `Format`: Conversão de números para texto com controle de formatação (casas decimais).

### 4. Matemática com a Unit `System.Math`
* **Operações Básicas:** Implementação de soma, subtração, multiplicação e divisão.
* **Funções Avançadas:**
    * `Power(base, expoente)`: Cálculo de potências.
    * `DegToRad`: Conversão essencial de Graus para Radianos para cálculos trigonométricos.
    * `Sin`, `Cos`, `Sqrt` e `ArcTan2`: Aplicação de funções trigonométricas para cálculos espaciais.

### 5. Cálculo de Geolocalização (Haversine)
* Implementação da **Fórmula de Haversine** para determinar a distância entre dois pontos geográficos.
* Entendimento do conceito de "Distância do Grande Círculo" em uma esfera.

### 6. Interação e Saída de Dados
* Exibição de informações via `MessageDlg` com diferentes tipos de ícones.
* Uso de `sLineBreak` para organização visual de mensagens em múltiplas linhas.
* Técnicas de concatenação de strings para exibição de resultados dinâmicos.

---
> **Nota:** Código desenvolvido e testado no Delphi 12.