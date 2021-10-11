object DMVueFilm: TDMVueFilm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 611
  Top = 372
  Height = 112
  Width = 199
  object qryFilm: TADOQuery
    Connection = DM_Main.Connection
    Parameters = <>
    Left = 19
    Top = 10
  end
  object qryCassettes: TADOQuery
    Connection = DM_Main.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tcassettes')
    Left = 83
    Top = 11
  end
end
