unit UListeFilms_Frm;
{
A la conception, le dataset de la grille est le datamodule DMUVueListeFilms
du module UListeFilms_DM. Ce datamodule sera le même pour chaque nouvelle
instance de fiche TFrmListeFilms. Une modif sur l'une impliquera la modif sur les autres instances
Elles "observent" la même instance du datamodule
Pour que avoir un nom de datamodule (DMListeFilms) à l'execution,
je l'ai ajouté dans la liste des fiches à lancer au chargement,
mais on pourrait tres bien le déclarer dans la fiche principale et l'instancier ensuite. 
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, UVueFilm_frm;

type
  TFrmListeFilms = class(TForm)
    dgFilms: TDBGrid;
    Button1: TButton;
    dsFilms: TDataSource;
    procedure dgFilmsDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FrmListeFilms: TFrmListeFilms;

implementation

{$R *.dfm}

procedure TFrmListeFilms.dgFilmsDblClick(Sender: TObject);
var
 numfilm: integer;
begin
 numfilm:=dgFilms.DataSource.DataSet.FieldByName('fnumfilm').AsInteger;
 // nouvelle instance anonyme de fiche film
 // et dont cette fiche liste sera la proprietaire (self)
 // mais le choix du propriétaire peut etre autre (l'application par exemple)
 TFrmVueFilm.CreateVueFilm(self,numfilm).Show;
end;

procedure TFrmListeFilms.Button1Click(Sender: TObject);
begin
 self.Free;
 // il y a un bug:
 // fiches "possedée" à détruire avant?
 // Destroy ou Release seraient mieux?
end;

end.
