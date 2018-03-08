object FormVers: TFormVers
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1042#1099#1096#1083#1086' '#1076#1086#1083#1075#1086#1078#1076#1072#1085#1085#1086#1077' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1077'!!!'
  ClientHeight = 334
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 418
    Height = 334
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnl1'
    Color = clHighlightText
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 36
      Top = 16
      Width = 349
      Height = 16
      Caption = #1056#1072#1076#1099' '#1089#1086#1086#1073#1097#1080#1090#1100', '#1095#1090#1086' '#1074#1099#1096#1083#1086' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1072#1096#1077#1081' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 38
      Width = 353
      Height = 26
      Alignment = taCenter
      Caption = 
        #1042' '#1085#1086#1074#1086#1081' '#1074#1077#1088#1089#1080#1080' '#1076#1086#1073#1072#1074#1083#1077#1085#1086' '#1084#1085#1086#1075#1086' '#1087#1083#1102#1096#1077#1082' '#1080' '#1080#1089#1087#1088#1072#1074#1083#1077#1085#1086' '#1084#1085#1086#1075#1086' '#1073#1072#1075#1086#1074', ' +
        #1087#1086#1101#1090#1086#1084#1091' '#1085#1072#1089#1090#1086#1103#1090#1077#1083#1100#1085#1086' '#1088#1077#1082#1086#1084#1077#1085#1076#1091#1077#1084' '#1074#1072#1084' '#1086#1073#1085#1086#1074#1080#1090#1100#1089#1103
      WordWrap = True
    end
    object Label3: TLabel
      Left = 32
      Top = 88
      Width = 87
      Height = 13
      Caption = #1058#1077#1082#1091#1097#1072#1103' '#1074#1077#1088#1089#1080#1103':'
    end
    object Label4: TLabel
      Left = 32
      Top = 107
      Width = 98
      Height = 13
      Caption = #1042#1077#1088#1089#1080#1103' '#1085#1072' '#1089#1077#1088#1074#1077#1088#1077':'
    end
    object lbCurrVersion: TLabel
      Left = 125
      Top = 88
      Width = 3
      Height = 13
    end
    object lbNewVersion: TLabel
      Left = 136
      Top = 107
      Width = 3
      Height = 13
    end
    object btnDL: TButton
      Left = 104
      Top = 126
      Width = 225
      Height = 51
      Caption = #1057#1050#1040#1063#1040#1058#1068
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnDLClick
    end
    object mmoChangelog: TMemo
      Left = 32
      Top = 192
      Width = 353
      Height = 137
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 248
    Top = 184
  end
end
