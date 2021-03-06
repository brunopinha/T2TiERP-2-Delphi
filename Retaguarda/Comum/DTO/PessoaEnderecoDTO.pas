unit PessoaEnderecoDTO;

interface

uses
  Atributos, Constantes, Classes,

  SynCommons,
  mORMot;

type
  TPessoa_Endereco = class(TSQLRecord)
  private
    FID_PESSOA: TID;
    FLOGRADOURO: RawUTF8;
    FNUMERO: RawUTF8;
    FCOMPLEMENTO: RawUTF8;
    FBAIRRO: RawUTF8;
    FCIDADE: RawUTF8;
    FCEP: RawUTF8;
    FMUNICIPIO_IBGE: Integer;
    FUF: RawUTF8;
    FPRINCIPAL: RawUTF8;
    FENTREGA: RawUTF8;
    FCOBRANCA: RawUTF8;
    FCORRESPONDENCIA: RawUTF8;
    FFONE: RawUTF8;

    //Usado no lado cliente para controlar quais registros ser�o persistidos
    FPersiste: String;

  public
    [TColumn('PERSISTE', 'Persiste', 60, [], True)]
    property Persiste: String  read FPersiste write FPersiste;

  published
    [TColumn('ID_PESSOA', 'Id Pessoa', 80, [], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Id_Pessoa: TID  read FID_PESSOA write FID_PESSOA;
    [TColumn('LOGRADOURO', 'Logradouro', 450, [ldGrid, ldLookup, ldCombobox], False)]
    property Logradouro: RawUTF8  read FLOGRADOURO write FLOGRADOURO;
    [TColumn('NUMERO', 'Numero', 80, [ldGrid, ldLookup, ldCombobox], False)]
    property Numero: RawUTF8  read FNUMERO write FNUMERO;
    [TColumn('COMPLEMENTO', 'Complemento', 450, [ldGrid, ldLookup, ldCombobox], False)]
    property Complemento: RawUTF8  read FCOMPLEMENTO write FCOMPLEMENTO;
    [TColumn('BAIRRO', 'Bairro', 450, [ldGrid, ldLookup, ldCombobox], False)]
    property Bairro: RawUTF8  read FBAIRRO write FBAIRRO;
    [TColumn('CIDADE', 'Cidade', 450, [ldGrid, ldLookup, ldCombobox], False)]
    property Cidade: RawUTF8  read FCIDADE write FCIDADE;
    [TColumn('CEP', 'Cep', 64, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftCep, taLeftJustify)]
    property Cep: RawUTF8  read FCEP write FCEP;
    [TColumn('FONE', 'Fone', 112, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftTelefone, taLeftJustify)]
    property Fone: RawUTF8  read FFONE write FFONE;
    [TColumn('MUNICIPIO_IBGE', 'Municipio Ibge', 80, [ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Municipio_Ibge: Integer  read FMUNICIPIO_IBGE write FMUNICIPIO_IBGE;
    [TColumn('UF', 'Uf', 16, [ldGrid, ldLookup, ldCombobox], False)]
    property Uf: RawUTF8  read FUF write FUF;
    [TColumn('PRINCIPAL', 'Principal', 60, [ldGrid, ldLookup, ldCombobox], False)]
    property Principal: RawUTF8  read FPRINCIPAL write FPRINCIPAL;
    [TColumn('ENTREGA', 'Entrega', 60, [ldGrid, ldLookup, ldCombobox], False)]
    property Entrega: RawUTF8  read FENTREGA write FENTREGA;
    [TColumn('COBRANCA', 'Cobranca', 60, [ldGrid, ldLookup, ldCombobox], False)]
    property Cobranca: RawUTF8  read FCOBRANCA write FCOBRANCA;
    [TColumn('CORRESPONDENCIA', 'Correspondencia', 60, [ldGrid, ldLookup, ldCombobox], False)]
    property Correspondencia: RawUTF8  read FCORRESPONDENCIA write FCORRESPONDENCIA;

  end;

implementation

end.
