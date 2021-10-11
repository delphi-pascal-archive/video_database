program VCLObserver;

uses
  Forms,
  UVueFilm_Frm in 'UVueFilm_Frm.pas' {FrmVueFilm},
  UVueFilm_DM in 'UVueFilm_DM.pas' {DMVueFilm: TDataModule},
  UMain_DM in 'UMain_DM.pas' {DM_Main: TDataModule},
  UMain_Frm in 'UMain_Frm.pas' {FrmMain},
  UListeFilms_Frm in 'UListeFilms_Frm.pas' {FrmListeFilms},
  UListeFilms_DM in 'UListeFilms_DM.pas' {DMListeFilms: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'VCLObserver';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDM_Main, DM_Main);
  Application.CreateForm(TDMListeFilms, DMListeFilms);
  Application.Run;
end.
