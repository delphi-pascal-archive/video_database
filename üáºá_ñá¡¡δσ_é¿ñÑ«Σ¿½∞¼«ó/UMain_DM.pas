unit UMain_DM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM_Main = class(TDataModule)
    Connection: TADOConnection;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  DM_Main: TDM_Main;

implementation

{$R *.dfm}

end.
