inherited FEtiquetaLayout: TFEtiquetaLayout
  Tag = 1
  Left = 368
  Top = 180
  Caption = 'Layout'
  ClientHeight = 506
  ClientWidth = 863
  ExplicitWidth = 879
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 863
    Height = 475
    ActivePage = PaginaEdits
    ExplicitWidth = 863
    ExplicitHeight = 475
    inherited PaginaGrid: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 855
      ExplicitHeight = 447
      inherited PanelGrid: TPanel
        Width = 855
        Height = 447
        ExplicitWidth = 855
        ExplicitHeight = 447
        inherited Grid: TJvDBUltimGrid
          Width = 855
          Height = 395
        end
        inherited PanelFiltroRapido: TPanel
          Top = 395
          Width = 855
          ExplicitTop = 395
          ExplicitWidth = 855
          inherited BotaoConsultar: TSpeedButton
            Left = 723
            ExplicitLeft = 879
          end
          inherited EditCriterioRapido: TLabeledMaskEdit
            Width = 554
            ExplicitWidth = 554
          end
        end
      end
    end
    inherited PaginaEdits: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 855
      ExplicitHeight = 447
      inherited PanelEdits: TPanel
        Width = 855
        Height = 447
        ExplicitLeft = -2
        ExplicitTop = 3
        ExplicitWidth = 855
        ExplicitHeight = 447
        object EditIdFormatoPapel: TLabeledCalcEdit
          Left = 20
          Top = 32
          Width = 61
          Height = 21
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
          OnKeyUp = EditIdFormatoPapelKeyUp
          CalcEditLabel.Width = 96
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Formato Papel [F1]:'
        end
        object EditFormatoPapel: TLabeledEdit
          Left = 82
          Top = 32
          Width = 752
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clInfoBk
          EditLabel.Width = 6
          EditLabel.Height = 13
          EditLabel.Caption = '  '
          ReadOnly = True
          TabOrder = 1
        end
        object EditCodigoFabricante: TLabeledEdit
          Left = 19
          Top = 80
          Width = 815
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 91
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo Fabricante:'
          TabOrder = 2
        end
        object EditQuantidade: TLabeledCalcEdit
          Left = 19
          Top = 124
          Width = 150
          Height = 21
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 60
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Quantidade:'
        end
        object EditQuantidadeHorizontal: TLabeledCalcEdit
          Left = 175
          Top = 124
          Width = 150
          Height = 21
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 111
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Quantidade Horizontal:'
        end
        object EditMargemSuperior: TLabeledCalcEdit
          Left = 487
          Top = 124
          Width = 150
          Height = 21
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 85
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Margem Superior:'
        end
        object EditQuantidadeVertical: TLabeledCalcEdit
          Left = 331
          Top = 124
          Width = 150
          Height = 21
          ShowButton = False
          TabOrder = 6
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 98
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Quantidade Vertical:'
        end
        object EditMargemInferior: TLabeledCalcEdit
          Left = 643
          Top = 124
          Width = 150
          Height = 21
          ShowButton = False
          TabOrder = 7
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 81
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Margem Inferior:'
        end
        object EditMargemEsquerda: TLabeledCalcEdit
          Left = 19
          Top = 172
          Width = 150
          Height = 21
          ShowButton = False
          TabOrder = 8
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 90
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Margem Esquerda:'
        end
        object EditMargemDireita: TLabeledCalcEdit
          Left = 175
          Top = 172
          Width = 150
          Height = 21
          ShowButton = False
          TabOrder = 9
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 76
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Margem Direita:'
        end
        object EditEspacamentoHorizontal: TLabeledCalcEdit
          Left = 331
          Top = 172
          Width = 150
          Height = 21
          ShowButton = False
          TabOrder = 10
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 119
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Espa'#231'amento Horizontal:'
        end
        object EditEspacamentoVertical: TLabeledCalcEdit
          Left = 487
          Top = 172
          Width = 150
          Height = 21
          ShowButton = False
          TabOrder = 11
          DecimalPlacesAlwaysShown = False
          CalcEditLabel.Width = 106
          CalcEditLabel.Height = 13
          CalcEditLabel.Caption = 'Espa'#231'amento Vertical:'
        end
      end
    end
  end
  inherited PanelToolBar: TPanel
    Width = 863
    ExplicitWidth = 863
    inherited BotaoSair: TSpeedButton
      Left = 759
      ExplicitLeft = 759
    end
    inherited BotaoExportar: TSpeedButton
      Left = 659
      ExplicitLeft = 815
    end
    inherited BotaoImprimir: TSpeedButton
      Left = 559
      ExplicitLeft = 715
    end
    inherited BotaoSeparador1: TSpeedButton
      Left = 449
      ExplicitLeft = 605
    end
    inherited BotaoFiltrar: TSpeedButton
      Left = 459
      ExplicitLeft = 615
    end
  end
end
