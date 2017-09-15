object Form1: TForm1
  Left = 557
  Top = 218
  Width = 1460
  Height = 920
  Caption = #39033#30446#22791#20221
  Color = 682710
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object RzTabbedListBox1: TRzGroupBox
    Left = -8
    Top = 112
    Width = 741
    Height = 773
    BorderOuter = fsFlat
    Caption = #39033#30446#21015#34920
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7879740
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    Visible = False
    object LstTimes: TRzTabbedListBox
      Left = 2
      Top = 34
      Width = 737
      Height = 737
      TabStops.Min = -2147483647
      TabStops.Max = 2147483647
      TabStops.Integers = (
        25
        47
        120
        170
        203)
      Align = alClient
      Color = 12902651
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      FrameSides = [sdLeft, sdRight, sdBottom]
      FrameVisible = True
      ItemHeight = 16
      Items.Strings = (
        '1'#9'2'#9'3'#9'4'#9'5'#9'6')
      ParentFont = False
      TabOrder = 0
      OnClick = LstTimesClick
    end
    object RzPanel1: TRzPanel
      Left = 2
      Top = 15
      Width = 737
      Height = 19
      Align = alTop
      BorderOuter = fsStatus
      BorderSides = [sdLeft, sdTop]
      TabOrder = 1
      object HdrTimes: THeader
        Left = 1
        Top = 1
        Width = 736
        Height = 18
        Align = alTop
        BorderStyle = bsNone
        Sections.Sections = (
          #0'200'#0#39033#30446#21517#31216
          #0'176'#0#31867#21035
          #0'597'#0#28304#25991#20214#22841
          #0'397'#0#22791#20221#25991#20214#22841
          #0'263'#0#28304#25991#20214#22841#26102#38388
          #0'56'#0#26159#21542#21516#27493)
        TabOrder = 0
      end
    end
    object ListBox1: TListBox
      Left = 32
      Top = 144
      Width = 433
      Height = 361
      ItemHeight = 13
      TabOrder = 2
      Visible = False
    end
    object ListBox2: TListBox
      Left = 584
      Top = 144
      Width = 433
      Height = 361
      ItemHeight = 13
      TabOrder = 3
      Visible = False
    end
    object ListBox3: TListBox
      Left = 1040
      Top = 144
      Width = 433
      Height = 361
      ItemHeight = 13
      TabOrder = 4
      Visible = False
    end
    object ListBox4: TListBox
      Left = 112
      Top = 584
      Width = 121
      Height = 97
      ItemHeight = 13
      TabOrder = 5
      Visible = False
    end
  end
  object RzSizePanel1: TRzSizePanel
    Left = 242
    Top = 88
    Width = 1202
    Height = 690
    Align = alRight
    HotSpotVisible = True
    SizeBarWidth = 7
    TabOrder = 1
    object Panel1: TPanel
      Left = 8
      Top = 0
      Width = 185
      Height = 690
      Align = alLeft
      Caption = 'Panel1'
      TabOrder = 0
      object RzButton1: TRzButton
        Left = 56
        Top = 920
        Caption = #25171#24320#30446#24405
        ParentColor = False
        TabOrder = 0
        OnClick = RzButton1Click
      end
      object RzMemo2: TRzMemo
        Left = 1
        Top = 417
        Width = 183
        Height = 272
        Align = alClient
        Color = 15919807
        Ctl3D = True
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnChange = RzMemo2Change
        FrameVisible = True
      end
      object RzListBox1: TRzListBox
        Left = 1
        Top = 1
        Width = 183
        Height = 416
        Align = alTop
        Color = clBtnFace
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        FrameVisible = True
        ItemHeight = 13
        ParentFont = False
        TabOrder = 2
        OnClick = RzListBox1Click
      end
    end
    object Panel2: TPanel
      Left = 193
      Top = 0
      Width = 1009
      Height = 690
      Align = alClient
      TabOrder = 1
      object RzShellList1: TRzShellList
        Left = 1
        Top = 1
        Width = 1007
        Height = 153
        Align = alTop
        Ctl3D = False
        FrameVisible = True
        IconOptions.AutoArrange = True
        ParentCtl3D = False
        TabOrder = 0
        ViewStyle = vsReport
        Visible = False
      end
      object RzShellList2: TRzShellList
        Left = 1
        Top = 154
        Width = 1007
        Height = 153
        Align = alTop
        Ctl3D = False
        FrameVisible = True
        IconOptions.AutoArrange = True
        ParentCtl3D = False
        TabOrder = 1
        ViewStyle = vsReport
        Visible = False
      end
      object RzShellList3: TRzShellList
        Left = 1
        Top = 307
        Width = 1007
        Height = 153
        Align = alTop
        Ctl3D = False
        FrameVisible = True
        IconOptions.AutoArrange = True
        ParentCtl3D = False
        TabOrder = 2
        ViewStyle = vsReport
        Visible = False
      end
      object RzShellList4: TRzShellList
        Left = 1
        Top = 460
        Width = 1007
        Height = 153
        Align = alTop
        Ctl3D = False
        FrameVisible = True
        IconOptions.AutoArrange = True
        ParentCtl3D = False
        TabOrder = 3
        ViewStyle = vsReport
        Visible = False
      end
      object RzShellList5: TRzShellList
        Left = 1
        Top = 613
        Width = 1007
        Height = 153
        Align = alTop
        Ctl3D = False
        FrameVisible = True
        IconOptions.AutoArrange = True
        ParentCtl3D = False
        TabOrder = 4
        ViewStyle = vsReport
        Visible = False
      end
      object RzShellList6: TRzShellList
        Left = 1
        Top = 766
        Width = 1007
        Height = 153
        Align = alTop
        IconOptions.AutoArrange = True
        TabOrder = 5
        ViewStyle = vsReport
        Visible = False
      end
    end
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 44
    Width = 1444
    Height = 44
    RowHeight = 40
    ButtonLayout = blGlyphTop
    ButtonWidth = 60
    ButtonHeight = 40
    ShowButtonCaptions = True
    TextOptions = ttoShowTextLabels
    WrapControls = False
    AutoSize = True
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 2
    ToolbarControls = (
      RzRapidFireButton11
      RzSpacer3
      RzRapidFireButton15
      RzSpacer6
      RzRapidFireButton6
      RzSpacer2
      RzRapidFireButton16
      RzSpacer5
      RzRapidFireButton8
      RzSpacer7
      RzRapidFireButton10
      RzCheckBox1
      RzCheckBox2
      Memo1)
    object RzSpacer3: TRzSpacer
      Left = 97
      Top = 10
    end
    object RzSpacer2: TRzSpacer
      Left = 318
      Top = 10
    end
    object RzSpacer5: TRzSpacer
      Left = 456
      Top = 10
    end
    object RzSpacer6: TRzSpacer
      Left = 222
      Top = 10
    end
    object RzSpacer7: TRzSpacer
      Left = 545
      Top = 10
    end
    object RzRapidFireButton11: TShadowButton
      Left = 4
      Top = 7
      Width = 93
      Height = 30
      Caption = #24378#21046#22791#20221'(1)'
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = btnShellClick
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton6: TShadowButton
      Left = 230
      Top = 7
      Width = 88
      Height = 30
      Caption = #23548#20986#25351#23450'(3)'
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = RzRapidFireButton6Click
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton15: TShadowButton
      Left = 105
      Top = 7
      Width = 117
      Height = 30
      Caption = #28165#38500#23548#20986#30446#24405'(2)'
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = RzRapidFireButton15Click
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton16: TShadowButton
      Left = 326
      Top = 7
      Width = 130
      Height = 30
      Caption = #19978#20256#21040'onedrive(4)'
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = RzRapidFireButton16Click
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton8: TShadowButton
      Left = 464
      Top = 7
      Width = 81
      Height = 30
      Caption = #25171#24320
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = RzRapidFireButton8Click
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton10: TShadowButton
      Left = 553
      Top = 7
      Width = 72
      Height = 30
      Caption = #20851#38381
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = RzRapidFireButton10Click
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzCheckBox1: TRzCheckBox
      Left = 625
      Top = 14
      Width = 89
      Height = 17
      Caption = #23548#20986#21387#32553
      Checked = True
      Enabled = False
      HotTrack = True
      State = cbChecked
      TabOrder = 0
    end
    object RzCheckBox2: TRzCheckBox
      Left = 714
      Top = 14
      Width = 89
      Height = 17
      Caption = #20840#37096#33756#21333
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      HotTrack = True
      ParentFont = False
      State = cbUnchecked
      TabOrder = 1
      OnClick = RzCheckBox2Click
    end
    object Memo1: TMemo
      Left = 803
      Top = 7
      Width = 494
      Height = 30
      Color = clBtnFace
      TabOrder = 2
      OnChange = Memo1Change
    end
  end
  object sbrMain: TRzStatusBar
    Left = 0
    Top = 843
    Width = 1444
    Height = 38
    AutoStyle = False
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    Color = clSilver
    TabOrder = 3
    object stsSection: TRzGlyphStatus
      Left = 0
      Top = 0
      Width = 68
      Height = 38
      FillColor = clSilver
      Align = alLeft
      AutoSize = True
      BlinkColor = clHotLight
      Caption = 'clSilver'
      ImageIndex = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 778
    Width = 1444
    Height = 65
    Align = alBottom
    Color = clSilver
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label1: TLabel
      Left = 32
      Top = 14
      Width = 56
      Height = 14
      Caption = #28304#25991#20214#22841
    end
    object Label2: TLabel
      Left = 32
      Top = 38
      Width = 70
      Height = 14
      Caption = #22791#20221#25991#20214#22841
    end
    object Label3: TLabel
      Left = 120
      Top = 16
      Width = 1377
      Height = 14
      AutoSize = False
    end
    object Label4: TLabel
      Left = 120
      Top = 40
      Width = 1377
      Height = 14
      AutoSize = False
    end
  end
  object RzGroupBar1: TRzGroupBar
    Left = 0
    Top = 88
    Width = 242
    Height = 690
    ColorAdjustment = 30
    GroupBorderSize = 8
    UseGradients = False
    Align = alClient
    Color = clBtnShadow
    ParentColor = False
    TabOrder = 5
  end
  object tbrMain: TRzToolbar
    Left = 0
    Top = 0
    Width = 1444
    Height = 44
    RowHeight = 40
    ButtonLayout = blGlyphTop
    ButtonWidth = 60
    ButtonHeight = 40
    ShowButtonCaptions = True
    TextOptions = ttoShowTextLabels
    WrapControls = False
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 6
    ToolbarControls = (
      RzRapidFireButton1
      RzSpacer1
      RzRapidFireButton2
      RzSpacer4
      RzRapidFireButton9
      RzSpacer9
      RzRapidFireButton4
      RzSpacer10
      RzRapidFireButton5
      RzSpacer11
      RzRapidFireButton12
      RzSpacer12
      RzRapidFireButton14
      RzSpacer13
      RzRapidFireButton7
      RzSpacer14
      RzRapidFireButton17
      RzSpacer15
      RzRapidFireButton3
      RzSpacer8
      RzVersionInfoStatus1
      RzVersionInfoStatus2)
    object RzSpacer1: TRzSpacer
      Left = 71
      Top = 10
    end
    object RzSpacer4: TRzSpacer
      Left = 146
      Top = 10
    end
    object RzVersionInfoStatus1: TRzVersionInfoStatus
      Left = 847
      Top = 3
      Width = 173
      Height = 38
      Field = vifCopyright
      FieldLabelColor = clRed
    end
    object RzVersionInfoStatus2: TRzVersionInfoStatus
      Left = 1020
      Top = 3
      Width = 1000
      Height = 38
      Align = alClient
      Field = vifCopyright
      FieldLabelColor = clRed
    end
    object RzSpacer8: TRzSpacer
      Left = 839
      Top = 10
    end
    object RzSpacer9: TRzSpacer
      Left = 221
      Top = 10
    end
    object RzSpacer10: TRzSpacer
      Left = 296
      Top = 10
    end
    object RzSpacer11: TRzSpacer
      Left = 382
      Top = 10
    end
    object RzSpacer12: TRzSpacer
      Left = 498
      Top = 10
    end
    object RzSpacer13: TRzSpacer
      Left = 614
      Top = 10
    end
    object RzSpacer14: TRzSpacer
      Left = 689
      Top = 10
    end
    object RzSpacer15: TRzSpacer
      Left = 764
      Top = 10
    end
    object RzRapidFireButton1: TShadowButton
      Left = 4
      Top = 7
      Width = 67
      Height = 30
      Caption = #22686#21152
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = btnWelcomeClick
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton2: TShadowButton
      Left = 79
      Top = 7
      Width = 67
      Height = 30
      Caption = #20462#25913
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = btnFramesClick
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton3: TShadowButton
      Left = 772
      Top = 7
      Width = 67
      Height = 30
      Caption = #21024#38500
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = btnTabsClick
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton4: TShadowButton
      Left = 229
      Top = 7
      Width = 67
      Height = 30
      Caption = #28304#25991#20214#22841
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = btnEditsClick
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton5: TShadowButton
      Left = 304
      Top = 7
      Width = 78
      Height = 30
      Caption = #22791#20221#25991#20214#22841
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = btnComboBoxesClick
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton7: TShadowButton
      Left = 622
      Top = 7
      Width = 67
      Height = 30
      Caption = #25991#20214#27604#36739
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = btnListBoxesClick
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton9: TShadowButton
      Left = 154
      Top = 7
      Width = 67
      Height = 30
      Caption = #26816#26597
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = btnDatabaseClick
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton12: TShadowButton
      Left = 390
      Top = 7
      Width = 108
      Height = 30
      Caption = #25171#24320#23548#20986#30446#24405
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = btnDisplayClick
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton14: TShadowButton
      Left = 506
      Top = 7
      Width = 108
      Height = 30
      Caption = #25171#24320#23548#20986#21015#34920
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = RzRapidFireButton14Click
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RzRapidFireButton17: TShadowButton
      Left = 697
      Top = 7
      Width = 67
      Height = 30
      Caption = #32553#23567'/'#25918#22823
      Color = clSilver
      Shadow = False
      Shape = stRoundRect
      Border = False
      BorderColor = clBlack
      Deepth = 1
      OnClick = RzRapidFireButton17Click
      Font.Charset = GB2312_CHARSET
      Font.Color = clBackground
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
  end
end
