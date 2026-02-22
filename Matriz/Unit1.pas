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
  MatrizDinamico: array of array of string;
  i: Integer;
begin

  SetLength(MatrizDinamico, 10, 2);

  for i := 0 to Length(MatrizDinamico) - 1 do
  begin
    MatrizDinamico[i, 0] := 'Item :' + (i + 1).ToString;
    MatrizDinamico[i, 1] := 'Preço R$' + Random(100).ToString;
  end;

  for i := 0 to Length(MatrizDinamico) - 1 do
  begin

    mmoLista.Lines.Add( MatrizDinamico[i, 0] + ' | ' +
                        MatrizDinamico[i, 1] + ' | ');

  end;

end;

procedure TForm1.btnArrayFixoClick(Sender: TObject);
var
  matrizFixa: array [0 .. 2, 0 .. 2] of string;
  a, b, i: Integer;

begin

  matrizFixa[0, 0] := 'Maçã';
  matrizFixa[0, 1] := 'Qtde: 2';
  matrizFixa[0, 2] := 'Preço: R$10,00';

  matrizFixa[1, 0] := 'Banana';
  matrizFixa[1, 1] := 'Qtde: 5';
  matrizFixa[1, 2] := 'Preço: R$8,99';

  matrizFixa[2, 0] := 'Limão';
  matrizFixa[2, 1] := 'Qtde: 3';
  matrizFixa[2, 2] := 'Preço: R$5,50';

  for a := 0 to 2 do
  begin
    for b := 0 to 2 do
    begin
      mmoLista.Lines.Add(matrizFixa[a, b]);
    end;
  end;

  for i := 0 to 2 do
  begin
    mmoLista.Lines.Add(matrizFixa[i, 0] + ' | ' + matrizFixa[i, 1] + ' | ' +
      matrizFixa[i, 2] + ' | ');
  end
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  mmoLista.Clear;
end;

end.
