unit UMain_DM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM_Main = class(TDataModule)
    Connection: TADOConnection;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DM_Main: TDM_Main;

implementation

{$R *.dfm}

end.
