unit UMain_Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UMain_DM,UListeFilms_frm, StdCtrls;

type
  TFrmMain = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

{Afficher la liste des films
dans une nouvelle fenetre anonyme
permet d'ouvrir une nouvelle fenetre à chaque film
et pose le probleme de la similarité des données
affichées sur l'ensemble des fenetres "listes" }
procedure TFrmMain.Button1Click(Sender: TObject);
begin
 TFrmListeFilms.Create(Self).Show;
end;

end.
