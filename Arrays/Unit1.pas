unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    btnArrayDinamico: TButton;
    btnArrayFixo: TButton;
    Button3: TButton;
    mmoLista: TMemo;
    procedure btnArrayFixoClick(Sender: TObject);
    procedure btnArrayDinamicoClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnArrayDinamicoClick(Sender: TObject);
var
  meuArrayDinamico: array of string;
  i: Integer;
begin

  SetLength(meuArrayDinamico, 10);

  for i := 0 to Length(meuArrayDinamico) - 1 do
  begin
    meuArrayDinamico[i] := 'Item número :' + i.ToString;
  end;

  for i := 0 to Length(meuArrayDinamico) - 1 do
  begin
    mmoLista.Lines.Add(meuArrayDinamico[i]);
  end;

end;

procedure TForm1.btnArrayFixoClick(Sender: TObject);
var
  meuArrayFixo: array [0 .. 5] of string;
  i: Integer; // Array de 6 posições
begin

  // Atribuindo valores ao Array de 6 posições
  meuArrayFixo[0] := 'Maçã';
  meuArrayFixo[1] := 'Banana';
  meuArrayFixo[2] := 'Limão';
  meuArrayFixo[3] := 'Morango';
  meuArrayFixo[4] := 'Laranja';
  meuArrayFixo[5] := 'Abacaxi';

  // preenchendo o TMemory
  for i := 0 to 5 do
  begin
    mmoLista.Lines.Add(meuArrayFixo[i]);

  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  mmoLista.Clear;
end;

end.
