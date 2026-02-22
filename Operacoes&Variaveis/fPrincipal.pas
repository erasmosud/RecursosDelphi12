{

 1. Estrutura de Unidades e Interface (VCL)
Declaração de Componentes: Como o Delphi organiza os componentes visuais (TButton, TEdit, TPanel, TLabel) dentro da classe TForm1.

Eventos de Clique: Criação e uso de procedimentos OnClick para disparar ações quando o usuário interage com os botões.

Importação de Units: O uso da unit System.Math para acessar funções matemáticas que não estão no "core" básico da linguagem.

2. Manipulação de Variáveis e Tipos de Dados
Tipagem Forte: Declaração de diferentes tipos de dados: Integer (inteiros), string (texto), Char (único caractere), Boolean (verdadeiro/falso) e Double/Real (números decimais).

Atribuição: Uso do operador := para atribuir valores às variáveis.

Constantes: Uso de const para valores que não mudam, como o raio da Terra.

3. Conversão de Tipos (Casting)
Entrada de Dados: Conversão de texto dos campos de edição para números usando StrToFloat e a função mais segura StrToFloatDef (que define um valor padrão caso a conversão falhe).

Saída de Dados: Conversão de números para texto para exibição usando FloatToStr e a função Format, que permite controlar as casas decimais (ex: %.2f).

4. Operações Matemáticas e Lógica
Operadores Aritméticos: Realização de soma, subtração, multiplicação e divisão.

Matemática Avançada:

Uso de Power(base, expoente) para potenciação.

Trabalho com trigonometria: Sin, Cos e ArcTan2.

Conversão de Unidades: Uso de DegToRad para converter graus em radianos (essencial para cálculos geográficos).

Geolocalização: Implementação da Fórmula de Haversine para calcular a distância de grandes círculos entre dois pontos no globo terrestre.

5. Interação com o Usuário e Formatação
Caixas de Diálogo: Uso de MessageDlg para exibir alertas informativos com ícones (mtInformation) e botões (mbOK).

Concatenar Strings: Unir textos e variáveis usando o operador +.

Quebra de Linha: Uso da constante sLineBreak para organizar informações em múltiplas linhas dentro de uma mensagem.

Documentação XML: Uso de tags como <summary>, <param> e <returns> para documentar o que cada função faz diretamente no código.

}

unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Math;
// <--- IMPORTANTE: unit para matemática avançada;

type
  TForm1 = class(TForm)
    btnCalcular: TButton;
    pnlOrigem: TPanel;
    edtLatOrigem: TEdit;
    edtLonOrigem: TEdit;
    pnlDestino: TPanel;
    edtLonDestino: TEdit;
    edtLatDestino: TEdit;
    lblDestino: TLabel;
    lblLatitude: TLabel;
    lblLongitude: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnOperacaoSimples: TButton;
    btnConcatenar: TButton;
    edtPrimeiroValor: TEdit;
    edtSegundoValor: TEdit;
    Label4: TLabel;
    lblResultado: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnOperacaoSimplesClick(Sender: TObject);
    procedure btnConcatenarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{
  <summary>
   Calcula a distãncia entre um raio médio em KM
 </summary>
 <param name="AValue">Exibe a distância entre coordenadas do Raio da Terra.</param>
 <returns>Biblioteca matemática avançada.</returns>
 }
procedure TForm1.btnCalcularClick(Sender: TObject);
// Declaração de Variáveis e Constantes;
const
  RaioTerra = 6371.0; // Raio médio da Terra em KM
var
  Lat1, Lon1, Lat2, Lon2: Double;
  DeltaLat, DeltaLon: Double;
  A, C, Distancia: Double;

begin
  // 1. Entrada de Dados (Convertendo Texto para Double)
  // Dica: Use TryStrToFloat para validação em um cenário real
  Lat1 := StrToFloatDef(edtLatOrigem.Text, 0);
  Lon1 := StrToFloatDef(edtLonOrigem.Text, 0);
  Lat2 := StrToFloatDef(edtLatDestino.Text, 0);
  Lon2 := StrToFloatDef(edtLonDestino.Text, 0);

  // 2. Conversão: O computador calcula em Radianos, nós pensamos em Graus
  // A função DegToRad vem da unit System.Math
  Lat1 := DegToRad(Lat1);
  Lon1 := DegToRad(Lon1);
  Lat2 := DegToRad(Lat2);
  Lon2 := DegToRad(Lon2);

  // 3. Aplicação da Fórmula de Haversine
  DeltaLat := Lat2 - Lat1;
  DeltaLon := Lon2 - Lon1;

  // Parte "A" da fórmula (Quadrado da metade da corda)
  // Power(base, expoente) é usado para elevar ao quadrado
  A := Power(Sin(DeltaLat / 2), 2) + Cos(Lat1) * Cos(Lat2) *
    Power(Sin(DeltaLon / 2), 2);

  // Parte "C" (Distância angular em radianos)
  // ArcTan2 é mais preciso que ArcTan simples para coordenadas
  C := 2 * ArcTan2(Sqrt(A), Sqrt(1 - A));

  // 4. Resultado Final
  Distancia := RaioTerra * C;

  // 5. Exibição
  lblResultado.Caption := Format('Distância: %.2f km', [Distancia]);

end;

/// <summary>
///   Faz operações aritiméticas simples, Quebra de Linha, Conversão para Float, Variável do tipo Real.
/// </summary>
/// <param name="AValue">Exibe mensagem usando MessageDlg com os valores ao invés do ShowMessage.</param>
/// <returns>Exibe Soma, Subtração, Divisão, Multiplicação.</returns>
procedure TForm1.btnOperacaoSimplesClick(Sender: TObject);
var
  val1, val2, soma, divisao, subtracao, multiplicacao: Real;

begin

  val1 := StrToFloat(edtPrimeiroValor.Text);
  val2 := StrToFloat(edtSegundoValor.Text);

  MessageDlg( 'Soma          : ' + FloatToStr(val1 + val2) + sLineBreak +
              'Subtração     : ' + FloatToStr(val1 - val2) + sLineBreak +
              'Multiplicação : ' + FloatToStr(val1 * val2) + sLineBreak +
              'Divisão       : ' + FloatToStr(val1 / val2), mtInformation,
               [mbOK], 0);
end;

procedure TForm1.btnConcatenarClick(Sender: TObject);
// Declarações de variáveis
var
  idade: Integer;
  nome: string;
  sobrenome: string;
  letra: Char;
  verdade: Boolean;
  preco: Real;
  preco2: Real;
  resultado: Real;
begin
  // atribuição de variáveis;
  idade := 39;
  nome := 'Erasmo';
  sobrenome := 'Carvalho';
  letra := 'V';
  verdade := true;
  preco := 99.99;
  preco2 := 100.00;
  // Mensagem na tela #Concatenada #Concatenação #Concatenar
  MessageDlg(nome + ' ' + sobrenome, mtInformation, [mbOK], 0);

end;

end.
