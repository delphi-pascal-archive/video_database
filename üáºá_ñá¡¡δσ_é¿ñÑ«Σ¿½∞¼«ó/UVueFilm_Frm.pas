unit UVueFilm_Frm;
{
l'idee est d'associer par composition un data module propre � chaque fiche.
Ainsi, chaque vue de film sera distincte, m�me sur le m�me film (charg� � deux moments diff�rents)
il s'agit de cr�er dynamiquement un datamodule que g�rera la fiche du film
se m�canisme permettra dans le cas de fiche complexes de comparer deux saisies
avant de valider ou non (moi je n'ai rien impl�ment�, mais on peut 'jouer' � partir de la liste en �dition)
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UvueFilm_DM, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TFrmVueFilm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DGCassettes: TDBGrid;
    dsCassettes: TDataSource;
    dsFilm: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { D�clarations priv�es }
    // Voici le composant datamodule que pourra manipuler la fiche
    // (la port�e est � voir selon l'usage)
    DMFilm: TDMVueFilm;
  public
    { D�clarations publiques }
    constructor CreateVueFilm(Owner: TComponent; numFilm: integer); overload;
  end;

var
  FrmVueFilm: TFrmVueFilm;

implementation

{$R *.dfm}

// constructeur suppl�mentaire (overload) permettant d'instancier le bon film
constructor TFrmVueFilm.CreateVueFilm(Owner: TComponent; numFilm: integer);
begin
 inherited create(Owner);
 DMFilm:=TDMVueFilm.Create(self); // Creation d'un instance et nommage en DMFilm
 DMFilm.SqlStrFilm:=DMFilm.SqlStrFilm+IntToStr(numfilm);
 DMFilm.SqlStrCassettes:=DMFilm.SqlStrCassettes+IntToStr(numFilm);
end;

// au FormCreate, les composants n'existent pas encore
// au formaActivate, tout se refait � chaque aler-retour sur la fiche
// alors je choisis le formShow
procedure TFrmVueFilm.FormShow(Sender: TObject);
begin
 with DMFilm.qryFilm do
  begin
   close;
   sql.Clear;
   sql.Add(DMFilm.SqlStrFilm);
   open;
   active:=true;
  end;
 with DMFilm.qryCassettes do
  begin
   close;
   sql.clear;
   sql.add(DMFilm.SqlStrCassettes);
   open;
   active:=true;
  end;
 // Branchement des composants au datamodule "interne"
 DBEdit1.DataSource.DataSet:=DMFilm.qryFilm;
 DBEdit1.DataField:='ftitrefilm';
 DBedit2.DataField:='fnomacteur1';
 dgCassettes.DataSource.DataSet:=DMFilm.qryCassettes;
end;

end.
