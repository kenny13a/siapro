unit u_eva_prof;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, StdCtrls, ExtCtrls, Buttons,
  DBGrids, DBCtrls, ComCtrls;

type

  { Tf_eva_prof }

  Tf_eva_prof = class(TFrame)
    B_eva_prof_notas: TButton;
    DBE_eva_prof_nota1: TDBEdit;
    DBE_eva_prof_nota2: TDBEdit;
    DBE_eva_prof_nota3: TDBEdit;
    DBE_eva_prof_nota4: TDBEdit;
    DBG_eva_prof_listado: TDBGrid;
    DBT_eva_prof_notas_a1: TDBText;
    DBT_eva_prof_notas_a2: TDBText;
    DBT_eva_prof_notas_a3: TDBText;
    DBT_eva_prof_notas_a4: TDBText;
    DBT_eva_prof_respuestas_1: TDBText;
    DBT_eva_prof_rendimiento1: TDBText;
    DBT_eva_prof_nombre: TDBText;
    DBT_eva_prof_rendimiento10: TDBText;
    DBT_eva_prof_rendimiento11: TDBText;
    DBT_eva_prof_rendimiento12: TDBText;
    DBT_eva_prof_rendimiento2: TDBText;
    DBT_eva_prof_rendimiento3: TDBText;
    DBT_eva_prof_rendimiento4: TDBText;
    DBT_eva_prof_rendimiento5: TDBText;
    DBT_eva_prof_rendimiento6: TDBText;
    DBT_eva_prof_rendimiento7: TDBText;
    DBT_eva_prof_rendimiento8: TDBText;
    DBT_eva_prof_rendimiento9: TDBText;
    DBT_eva_prof_respuestas_2: TDBText;
    DBT_eva_prof_respuestas_3: TDBText;
    DBT_eva_prof_respuestas_4: TDBText;
    DBT_eva_prof_respuestas_5: TDBText;
    DBT_eva_prof_respuestas_6: TDBText;
    GB2_eva_prof_respuestas_2: TGroupBox;
    GB2_eva_prof_respuestas_3: TGroupBox;
    GB2_eva_prof_respuestas_4: TGroupBox;
    GB2_eva_prof_respuestas_5: TGroupBox;
    GB2_eva_prof_respuestas_6: TGroupBox;
    GB_eva_prof_rendimiento1: TGroupBox;
    GB_eva_prof_rendimiento2: TGroupBox;
    GB_eva_prof_rendimiento3: TGroupBox;
    GB_eva_prof_rendimiento4: TGroupBox;
    GB_eva_prof_respuestas_1: TGroupBox;
    GB2_eva_prof_respuestas_1: TGroupBox;
    GB_eva_prof_respuestas_2: TGroupBox;
    GB_eva_prof_respuestas_3: TGroupBox;
    GB_eva_prof_respuestas_4: TGroupBox;
    GB_eva_prof_respuestas_5: TGroupBox;
    GB_eva_prof_respuestas_6: TGroupBox;
    Img_eva_prof_notas_1: TImage;
    Img_eva_prof_notas_2: TImage;
    Img_eva_prof_notas_3: TImage;
    Img_eva_prof_notas_4: TImage;
    L_eva_prof_notas_1: TLabel;
    L_eva_prof_notas_2: TLabel;
    L_eva_prof_rendimiento1: TLabel;
    L_eva_prof_notas1: TLabel;
    L_eva_prof_nombre: TLabel;
    L_eva_prof_notas2: TLabel;
    L_eva_prof_notas3: TLabel;
    L_eva_prof_notas4: TLabel;
    L_eva_prof_rendimiento10: TLabel;
    L_eva_prof_rendimiento11: TLabel;
    L_eva_prof_rendimiento12: TLabel;
    L_eva_prof_rendimiento2: TLabel;
    L_eva_prof_rendimiento3: TLabel;
    L_eva_prof_rendimiento4: TLabel;
    L_eva_prof_rendimiento5: TLabel;
    L_eva_prof_rendimiento6: TLabel;
    L_eva_prof_rendimiento7: TLabel;
    L_eva_prof_rendimiento8: TLabel;
    L_eva_prof_rendimiento9: TLabel;
    M2_eva_prof_respuestas_2: TMemo;
    M2_eva_prof_respuestas_3: TMemo;
    M2_eva_prof_respuestas_4: TMemo;
    M2_eva_prof_respuestas_5: TMemo;
    M2_eva_prof_respuestas_6: TMemo;
    M_eva_prof_respuestas_1: TMemo;
    M2_eva_prof_respuestas_1: TMemo;
    M_eva_prof_respuestas_2: TMemo;
    M_eva_prof_respuestas_3: TMemo;
    M_eva_prof_respuestas_4: TMemo;
    M_eva_prof_respuestas_5: TMemo;
    M_eva_prof_respuestas_6: TMemo;
    PC_eva_prof_1: TPageControl;
    P_eva_prof_principal: TPanel;
    P_eva_prof_listado: TPanel;
    P_eva_prof_Contenedor: TPanel;
    P_eva_prof_superior2: TPanel;
    P_eva_prof_superior: TPanel;
    SB_eva_prof_2: TSpeedButton;
    SB_eva_prof_3: TSpeedButton;
    SB_eva_prof_4: TSpeedButton;
    SB_Eva_prof_cerrar: TSpeedButton;
    SB_eva_prof_1: TSpeedButton;
    Splitter_eva_prof: TSplitter;
    TC_eva_prof_respuestas1: TTabControl;
    TS_eva_prof_notas: TTabSheet;
    TS_eva_prof_rendimiento: TTabSheet;
    TS_eva_prof_respuestas: TTabSheet;
    UpD_eva_prof_1: TUpDown;
  private
    { private declarations }
  public
    { public declarations }
  end;

implementation

{$R *.lfm}

{ Tf_eva_prof }

end.
