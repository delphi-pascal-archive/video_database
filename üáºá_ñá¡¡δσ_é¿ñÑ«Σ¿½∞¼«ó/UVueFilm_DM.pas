unit UVueFilm_DM;

interface

uses
  SysUtils, Classes, DB, ADODB,UMain_DM;

type
  TDMVueFilm = class(TDataModule)
    qryFilm: TADOQuery;
    qryCassettes: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
    SqlStrFilm: string;
  	SqlStrCassettes: string;
  end;

var
  DMVueFilm: TDMVueFilm;

implementation

{$R *.dfm}

procedure TDMVueFilm.DataModuleCreate(Sender: TObject);
begin
 SqlStrFilm:='select * from tfilms where fnumfilm=';
 SqlStrCassettes:='select * from tcassettes where cnumfilm=';
end;

end.
