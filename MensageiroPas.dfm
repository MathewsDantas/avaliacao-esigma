object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 438
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCanResize = FormCanResize
  TextHeight = 15
  object pnlCentral: TPanel
    Left = 112
    Top = 24
    Width = 400
    Height = 400
    BevelOuter = bvNone
    TabOrder = 0
    object lblMensagem: TLabel
      Left = 95
      Top = 86
      Width = 102
      Height = 15
      Caption = 'Digite a mensagem'
    end
    object btnEnviar: TButton
      Left = 192
      Top = 202
      Width = 75
      Height = 25
      Caption = 'Enviar'
      TabOrder = 0
      OnClick = btnEnviarClick
    end
    object edtMensagem: TMemo
      Left = 95
      Top = 107
      Width = 185
      Height = 89
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
end
