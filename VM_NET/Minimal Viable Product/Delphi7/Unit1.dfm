object Form1: TForm1
  Left = 238
  Top = 120
  Width = 654
  Height = 499
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 24
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 78
    Height = 24
    Caption = 'VM_NET'
  end
  object Memo1: TMemo
    Left = 16
    Top = 128
    Width = 585
    Height = 313
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object edMessage: TEdit
    Left = 112
    Top = 64
    Width = 361
    Height = 32
    TabOrder = 1
    Text = 'edMessage'
  end
  object Button1: TButton
    Left = 488
    Top = 64
    Width = 129
    Height = 33
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object edClientHost: TEdit
    Left = 112
    Top = 8
    Width = 361
    Height = 32
    TabOrder = 3
    Text = '192.168.143.255'
  end
  object Button2: TButton
    Left = 488
    Top = 8
    Width = 129
    Height = 33
    Caption = 'Button2'
    TabOrder = 4
    OnClick = Button2Click
  end
  object IdUDPServer1: TIdUDPServer
    Active = True
    BroadcastEnabled = True
    Bindings = <>
    DefaultPort = 11245
    OnUDPRead = IdUDPServer1UDPRead
    Left = 72
    Top = 176
  end
  object IdUDPClient1: TIdUDPClient
    Active = True
    BroadcastEnabled = True
    Port = 11245
    Left = 32
    Top = 176
  end
end
