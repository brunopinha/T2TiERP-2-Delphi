{*******************************************************************************
Title: T2Ti ERP                                                                 
Description:  VO  relacionado � tabela [PRE_VENDA_DETALHE] 
                                                                                
The MIT License                                                                 
                                                                                
Copyright: Copyright (C) 2014 T2Ti.COM                                          
                                                                                
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
           t2ti.com@gmail.com                                                   
                                                                                
@author Albert Eije (t2ti.com@gmail.com)                    
@version 2.0                                                                    
*******************************************************************************}
unit PreVendaDetalheVO;

interface

uses
  VO, Atributos, Classes, Constantes, Generics.Collections, SysUtils;

type
  [TEntity]
  [TTable('PRE_VENDA_DETALHE')]
  TPreVendaDetalheVO = class(TVO)
  private
    FID: Integer;
    FID_PRODUTO: Integer;
    FID_PRE_VENDA_CABECALHO: Integer;
    FITEM: Integer;
    FQUANTIDADE: Extended;
    FVALOR_UNITARIO: Extended;
    FVALOR_TOTAL: Extended;
    FCANCELADO: String;
    FGTIN_PRODUTO: String;
    FNOME_PRODUTO: String;
    FUNIDADE_PRODUTO: String;
    FECF_ICMS_ST: String;

    //Usado no lado cliente para controlar quais registros ser�o persistidos
    FPersiste: String;

  public 
    [TId('ID')]
    [TGeneratedValue(sAuto)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Id: Integer  read FID write FID;
    [TColumn('ID_PRODUTO', 'Id Produto', 80, [], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdProduto: Integer  read FID_PRODUTO write FID_PRODUTO;
    [TColumn('ID_PRE_VENDA_CABECALHO', 'Id Pre Venda Cabecalho', 80, [], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdPreVendaCabecalho: Integer  read FID_PRE_VENDA_CABECALHO write FID_PRE_VENDA_CABECALHO;
    [TColumn('ITEM', 'Item', 80, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Item: Integer  read FITEM write FITEM;
    [TColumn('QUANTIDADE', 'Quantidade', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property Quantidade: Extended  read FQUANTIDADE write FQUANTIDADE;
    [TColumn('VALOR_UNITARIO', 'Valor Unitario', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorUnitario: Extended  read FVALOR_UNITARIO write FVALOR_UNITARIO;
    [TColumn('VALOR_TOTAL', 'Valor Total', 168, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorTotal: Extended  read FVALOR_TOTAL write FVALOR_TOTAL;
    [TColumn('CANCELADO', 'Cancelado', 8, [ldGrid, ldLookup, ldCombobox], False)]
    property Cancelado: String  read FCANCELADO write FCANCELADO;
    [TColumn('GTIN_PRODUTO', 'Gtin Produto', 112, [ldGrid, ldLookup, ldCombobox], False)]
    property GtinProduto: String  read FGTIN_PRODUTO write FGTIN_PRODUTO;
    [TColumn('NOME_PRODUTO', 'Nome Produto', 450, [ldGrid, ldLookup, ldCombobox], False)]
    property NomeProduto: String  read FNOME_PRODUTO write FNOME_PRODUTO;
    [TColumn('UNIDADE_PRODUTO', 'Unidade Produto', 80, [ldGrid, ldLookup, ldCombobox], False)]
    property UnidadeProduto: String  read FUNIDADE_PRODUTO write FUNIDADE_PRODUTO;
    [TColumn('ECF_ICMS_ST', 'Ecf Icms St', 32, [], False)]
    property EcfIcmsSt: String  read FECF_ICMS_ST write FECF_ICMS_ST;

    [TColumn('PERSISTE', 'Persiste', 60, [], True)]
    property Persiste: String  read FPersiste write FPersiste;

  end;

implementation


initialization
  Classes.RegisterClass(TPreVendaDetalheVO);

finalization
  Classes.UnRegisterClass(TPreVendaDetalheVO);

end.