{*******************************************************************************
Title: T2Ti ERP                                                                 
Description:  VO  relacionado � tabela [ECF_DOCUMENTOS_EMITIDOS] 
                                                                                
The MIT License                                                                 
                                                                                
Copyright: Copyright (C) 2010 T2Ti.COM                                          
                                                                                
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
@version 1.0                                                                    
*******************************************************************************}
unit EcfDocumentosEmitidosVO;

interface

uses
  VO, Atributos, Classes, Constantes, Generics.Collections, SysUtils;

type
  [TEntity]
  [TTable('ECF_DOCUMENTOS_EMITIDOS')]
  TEcfDocumentosEmitidosVO = class(TVO)
  private
    FID: Integer;
    FID_ECF_MOVIMENTO: Integer;
    FDATA_EMISSAO: TDateTime;
    FHORA_EMISSAO: String;
    FTIPO: String;
    FCOO: Integer;

    FNOME_CAIXA: String;
    FID_GERADO_CAIXA: Integer;
    FDATA_SINCRONIZACAO: TDateTime;
    FHORA_SINCRONIZACAO: String;

  public 
    [TId('ID')]
    [TGeneratedValue(sAuto)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Id: Integer  read FID write FID;
    [TColumn('ID_ECF_MOVIMENTO', 'Id Ecf Movimento', 80, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdEcfMovimento: Integer  read FID_ECF_MOVIMENTO write FID_ECF_MOVIMENTO;
    [TColumn('DATA_EMISSAO', 'Data Emissao', 80, [ldGrid, ldLookup, ldCombobox], False)]
    property DataEmissao: TDateTime  read FDATA_EMISSAO write FDATA_EMISSAO;
    [TColumn('HORA_EMISSAO', 'Hora Emissao', 64, [ldGrid, ldLookup, ldCombobox], False)]
    property HoraEmissao: String  read FHORA_EMISSAO write FHORA_EMISSAO;
    [TColumn('TIPO', 'Tipo', 16, [ldGrid, ldLookup, ldCombobox], False)]
    property Tipo: String  read FTIPO write FTIPO;
    [TColumn('COO', 'Coo', 80, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Coo: Integer  read FCOO write FCOO;

    [TColumn('NOME_CAIXA', 'Nome Caixa', 64, [ldGrid, ldLookup, ldCombobox], False)]
    property NomeCaixa: String  read FNOME_CAIXA write FNOME_CAIXA;
    [TColumn('ID_GERADO_CAIXA', 'Id Gerado Caixa', 80, [ldGrid, ldLookup, ldCombobox], False)]
    property IdGeradoCaixa: Integer  read FID_GERADO_CAIXA write FID_GERADO_CAIXA;
    [TColumn('DATA_SINCRONIZACAO', 'Data Sinronizacao', 80, [ldGrid, ldLookup, ldCombobox], False)]
    property DataSincronizacao: TDateTime  read FDATA_SINCRONIZACAO write FDATA_SINCRONIZACAO;
    [TColumn('HORA_SINCRONIZACAO', 'Hora Sincronizacao', 64, [ldGrid, ldLookup, ldCombobox], False)]
    property HoraSincronizacao: String  read FHORA_SINCRONIZACAO write FHORA_SINCRONIZACAO;

  end;

implementation


initialization
  Classes.RegisterClass(TEcfDocumentosEmitidosVO);

finalization
  Classes.UnRegisterClass(TEcfDocumentosEmitidosVO);

end.
