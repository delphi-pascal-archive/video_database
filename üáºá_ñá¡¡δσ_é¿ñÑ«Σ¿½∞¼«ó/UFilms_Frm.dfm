object FrmFilms: TFrmFilms
  Left = 254
  Top = 140
  Width = 504
  Height = 403
  Caption = 'Liste des films (une seule liste)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dgFilms: TDBGrid
    Left = 8
    Top = 14
    Width = 480
    Height = 319
    DataSource = dsFilms
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dgFilmsDblClick
  end
  object Button1: TButton
    Left = 419
    Top = 341
    Width = 63
    Height = 21
    Caption = 'Fermer'
    TabOrder = 1
    OnClick = Button1Click
  end
  object dsFilms: TDataSource
    DataSet = DMFilms.Films
    Left = 308
    Top = 129
  end
end
