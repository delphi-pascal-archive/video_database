unit UListeFilms_DM;

interface

uses
  SysUtils, Classes, DB, ADODB,UMain_DM;

type
  TDMListeFilms = class(TDataModule)
    qryListeFilms: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DMListeFilms: TDMListeFilms;

implementation

{$R *.dfm}

procedure TDMListeFilms.DataModuleCreate(Sender: TObject);
begin
 qryListeFilms.Active:=true;
end;

end.
