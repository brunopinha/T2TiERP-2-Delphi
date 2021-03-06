{*******************************************************************************
Title: T2Ti ERP
Description: Janela Cadastro de Bancos

The MIT License

Copyright: Copyright (C) 2015 T2Ti.COM

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

       The author may be contacted at:
           t2ti.com@gmail.com</p>

@author Albert Eije
@version 2.0
*******************************************************************************}

unit UPais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTelaCadastro, Menus, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, ComCtrls, PaisVO, PaisController,
  Atributos, Constantes, LabeledCtrls, Controller;

type
  [TFormDescription(TConstantes.MODULO_CADASTROS,'Pa�s')]
  TFPais = class(TFTelaCadastro)
    EditCodigo: TLabeledEdit;
    EditNome: TLabeledEdit;
    BevelEdits: TBevel;
    EditNomeEN: TLabeledEdit;
    EditSigla02: TLabeledEdit;
    EditSigla03: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GridParaEdits; override;
    procedure ControlaBotoes; override;
  end;

var
  FPais: TFPais;

implementation

{$R *.dfm}

{$REGION 'Infra'}
procedure TFPais.FormCreate(Sender: TObject);
begin
  ClasseObjetoGridVO := TPaisVO;
  ObjetoController := TPaisController.Create;

  inherited;
end;

procedure TFPais.ControlaBotoes;
begin
  inherited;

  BotaoInserir.Visible := False;
  BotaoAlterar.Visible := False;
  BotaoExcluir.Visible := False;
  BotaoSalvar.Visible := False;
end;
{$ENDREGION}

{$REGION 'Controle de Grid'}
procedure TFPais.GridParaEdits;
begin
  inherited;

  if not CDSGrid.IsEmpty then
  begin
    ObjetoVO := TPaisVO(TController.BuscarObjeto('PaisController.TPaisController', 'ConsultaObjeto', ['ID=' + IdRegistroSelecionado.ToString], 'GET'));
  end;

  if Assigned(ObjetoVO) then
  begin
    EditCodigo.Text := IntToStr(TPaisVO(ObjetoVO).Codigo);
    EditNome.Text := TPaisVO(ObjetoVO).NomePtbr;
    EditNomeEN.Text := TPaisVO(ObjetoVO).NomeEn;
    EditSigla02.Text := TPaisVO(ObjetoVO).Sigla2;
    EditSigla03.Text := TPaisVO(ObjetoVO).Sigla3;
  end;
end;
{$ENDREGION}

end.
