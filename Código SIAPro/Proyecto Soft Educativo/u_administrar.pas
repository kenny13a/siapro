unit u_administrar;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, DBGrids, DBCtrls, ExtCtrls,
  StdCtrls, Buttons, ComCtrls;

type

  { Tf_administrar }

  Tf_administrar = class(TFrame)
    CB_adm_apodo: TCheckBox;
    CB_adm_contra: TCheckBox;
    CBox_adm_perfil: TComboBox;
    DBG_adm_grid1: TDBGrid;
    DBG_adm_grid2: TDBGrid;
    DBT_u1A: TDBText;
    DBT_Nu1: TDBText;
    DBT_adm_sapellido: TDBText;
    DBT_adm_1: TDBText;
    DBT_adm_2: TDBText;
    DBT_adm_2_2: TDBText;
    DBT_adm_3: TDBText;
    DBT_adm_4: TDBText;
    DBT_adm_snombre: TDBText;
    DBT_Nu2: TDBText;
    DBT_Nu3: TDBText;
    DBT_Nu4: TDBText;
    DBT_u2A: TDBText;
    DBT_u3A: TDBText;
    DBT_u4A: TDBText;
    DBT_u1E: TDBText;
    DBT_u2E: TDBText;
    DBT_u3E: TDBText;
    DBT_u4E: TDBText;
    DBT_u1N: TDBText;
    DBT_u2N: TDBText;
    DBT_u3N: TDBText;
    DBT_u4N: TDBText;
    GB_adm_datosusuario: TGroupBox;
    GB_adm_usuarios: TGroupBox;
    GB_adm_usuarios1: TGroupBox;
    GroupBox1: TGroupBox;
    GB_adm_nuevo_persona: TGroupBox;
    GB_adm_nuevo_usuario: TGroupBox;
    L_adm_rendimiento_1: TLabel;
    L_adm_n1: TLabel;
    L_adm_n2: TLabel;
    L_adm_n3: TLabel;
    L_adm_n4: TLabel;
    L_adm_rendimiento_2: TLabel;
    L_adm_rendimiento_3: TLabel;
    L_adm_rendimiento_4: TLabel;
    L_adm_rendimiento_5: TLabel;
    L_adm_rendimiento_6: TLabel;
    L_adm_rendimiento_7: TLabel;
    L_adm_sapellido: TLabel;
    L_adm_nuevo_perfil: TLabel;
    LE_adm_apellido: TLabeledEdit;
    LE_adm_nombre: TLabeledEdit;
    LE_adm_apodo: TLabeledEdit;
    LE_adm_contra: TLabeledEdit;
    L_adm_1: TLabel;
    L_adm_2: TLabel;
    L_adm_3: TLabel;
    L_adm_5: TLabel;
    L_adm_perfiles: TLabel;
    L_adm_snombre: TLabel;
    P_adm_listado: TPanel;
    PC_adm: TPageControl;
    P_adm_nuevo: TPanel;
    P_adm_superior: TPanel;
    SB_adm_cerrar: TSpeedButton;
    SB_adm_agregar: TSpeedButton;
    SB_adm_buscar: TSpeedButton;
    SB_adm_eliminar: TSpeedButton;
    SB_adm_editar: TSpeedButton;
    SB_adm_nuevo_aceptar: TSpeedButton;
    SB_adm_nuevo_cancelar: TSpeedButton;
    TC_adm_usuarios: TTabControl;
    TS_adm_notas: TTabSheet;
    TS_adm_rendimiento: TTabSheet;
    UpDown1: TUpDown;

  private
    { private declarations }
  public
    { public declarations }
  end;

implementation

{$R *.lfm}

{ Tf_administrar }


end.
