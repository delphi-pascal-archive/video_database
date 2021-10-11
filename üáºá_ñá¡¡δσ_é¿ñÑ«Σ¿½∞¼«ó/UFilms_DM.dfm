object DMFilms: TDMFilms
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 254
  Top = 140
  Height = 93
  Width = 203
  object Films: TADOQuery
    Active = True
    Connection = DM_Main.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tfilms')
    Left = 19
    Top = 8
  end
end
