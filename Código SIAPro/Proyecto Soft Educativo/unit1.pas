unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Menus, DBCtrls, DBGrids, u_explicacion, u_contenidos, u_ejr, u_eva,
  u_c_contra, u_administrar, u_eva_prof, ComCtrls, DB, variants, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    B_evaluar_profesor: TButton;
    B_cambiar_usuario: TButton;
    B_cambiar_contra: TButton;
    B_administrar: TButton;
    B_ejercitacion: TButton;
    B_evaluacion: TButton;
    B_explicacion: TButton;
    B_salir: TButton;
    B_siguiente: TButton;
    B_terminar: TButton;
    B_unidad1: TButton;
    B_unidad2: TButton;
    B_unidad3: TButton;
    B_unidad4: TButton;
    B_Ok: TButton;
    B_anterior: TButton;
    DBT_nombre: TDBText;
    f_administrar1: Tf_administrar;
    F_contenidos1: TF_contenidos;
    F_c_contra1: TF_c_contra;
    F_ejr1: TF_ejr;
    F_eva1: TF_eva;
    f_eva_prof1: Tf_eva_prof;
    F_exp: TFrame1;
    GB_opciones: TGroupBox;
    Image1: TImage;
    I_principal: TImage;
    L_alumno: TLabel;
    p_explicacion: TPanel;
    P_lateral: TPanel;
    P_principal: TPanel;
    P_superior: TPanel;
    procedure B_administrarClick(Sender: TObject);
    procedure B_adm_ver_1Click(Sender: TObject);
    procedure B_adm_ver_2Click(Sender: TObject);
    procedure B_adm_ver_todosClick(Sender: TObject);
    procedure B_cambiar_contraClick(Sender: TObject);
    procedure B_contenidos_cerrarClick(Sender: TObject);
    procedure B_contenidos_ejrClick(Sender: TObject);
    procedure B_contenidos_evaClick(Sender: TObject);
    procedure B_contenidos_expClick(Sender: TObject);
    procedure B_c_contra_cambiarClick(Sender: TObject);
    procedure B_c_contra_cerrar1Click(Sender: TObject);
    procedure B_c_contra_cerrarClick(Sender: TObject);
    procedure B_ejr_1Click(Sender: TObject);
    procedure B_ejr_2Click(Sender: TObject);
    procedure B_ejr_3Click(Sender: TObject);
    procedure B_ejr_4Click(Sender: TObject);
    procedure B_ejr_cerrar1Click(Sender: TObject);
    procedure B_ejr_cerrar2Click(Sender: TObject);
    procedure B_ejr_cerrarClick(Sender: TObject);
    procedure B_ejr_corregirClick(Sender: TObject);
    procedure B_ejr_volver1Click(Sender: TObject);
    procedure B_ejr_volver2Click(Sender: TObject);
    procedure B_evaluar_profesorClick(Sender: TObject);
    procedure B_eva_cerrar1Click(Sender: TObject);
    procedure B_eva_cerrarClick(Sender: TObject);
    procedure B_explicacion_1Click(Sender: TObject);
    procedure B_explicacion_2Click(Sender: TObject);
    procedure B_explicacion_3Click(Sender: TObject);
    procedure B_explicacion_u4Click(Sender: TObject);
    procedure B_exp_10Click(Sender: TObject);
    procedure B_exp_11Click(Sender: TObject);
    procedure B_exp_5Click(Sender: TObject);
    procedure B_exp_6Click(Sender: TObject);
    procedure B_exp_7Click(Sender: TObject);
    procedure B_exp_8Click(Sender: TObject);
    procedure B_exp_9Click(Sender: TObject);
    procedure B_exp_cerrarClick(Sender: TObject);
    procedure B_salirClick(Sender: TObject);
    procedure B_verificarClick(Sender: TObject);
    procedure B_limpiarClick(Sender: TObject);
    procedure B_siguienteClick(Sender: TObject);
    procedure B_terminarClick(Sender: TObject);
    procedure B_cambiar_usuarioClick(Sender: TObject);
    procedure B_explicacionClick(Sender: TObject);
    procedure B_ejercitacionClick(Sender: TObject);
    procedure B_evaluacionClick(Sender: TObject);
    procedure B_unidad1Click(Sender: TObject);
    procedure B_unidad2Click(Sender: TObject);
    procedure B_unidad3Click(Sender: TObject);
    procedure B_unidad4Click(Sender: TObject);
    procedure B_OkClick(Sender: TObject);
    procedure B_anteriorClick(Sender: TObject);
    procedure CB_adm_apodoClick(Sender: TObject);
    procedure CB_adm_contraChange(Sender: TObject);
    procedure CB_adm_contraClick(Sender: TObject);
    procedure DBG_adm_grid1CellClick(Column: TColumn);
    procedure DBG_adm_grid1KeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBG_adm_grid2CellClick(Column: TColumn);
    procedure DBG_adm_grid2KeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBG_eva_prof_listadoCellClick(Column: TColumn);
    procedure DBG_eva_prof_listadoKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure I_principalClick(Sender: TObject);
    procedure Mp1_u1Change(Sender: TObject);
    procedure PC_admChange(Sender: TObject);
    procedure PC_eva_prof_1Change(Sender: TObject);
    procedure SB_adm_agregarClick(Sender: TObject);
    procedure SB_adm_buscarClick(Sender: TObject);
    procedure SB_adm_cerrarClick(Sender: TObject);
    procedure SB_adm_editarClick(Sender: TObject);
    procedure SB_adm_eliminarClick(Sender: TObject);
    procedure SB_adm_nuevo_aceptarClick(Sender: TObject);
    procedure SB_adm_nuevo_cancelarClick(Sender: TObject);
    procedure SB_eva_prof_1Click(Sender: TObject);
    procedure SB_eva_prof_2Click(Sender: TObject);
    procedure SB_eva_prof_3Click(Sender: TObject);
    procedure SB_eva_prof_4Click(Sender: TObject);
    procedure SB_Eva_prof_cerrarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TC_adm_usuariosChange(Sender: TObject);
    procedure TC_eva_prof_respuestas1Change(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure UpD_eva_prof_1Changing(Sender: TObject; var AllowChange: boolean);
    procedure UpD_eva_prof_1Click(Sender: TObject; Button: TUDBtnType);
  private
    { private declarations }
  public
    { public declarations }
  end;

procedure explU1();
procedure ejU1();
procedure limpia_principal();
procedure explica_abre(numero_u, cant_max_p: integer);
procedure explica_siguiente(numero_u, cant_max_p: integer);
procedure explica_anterior(numero_u, cant_max_p: integer);
procedure ejercita_abre(numero_u: integer);
procedure ejercita_correctas(numero_u: integer);
procedure guarda_resultados(numero_u, aciertos, errores, nocont: integer);
procedure Cambio_contra(nueva_contra: string);
procedure saber_perfil();
procedure adm_botones_superiores(activados: boolean);
procedure adm_ejecuta_insersion();
procedure adm_vuelve_al_menu();
procedure guarda_resultados2(numero_u, rp1, rp2, rp3, rp4, rp5, rp6: integer);
procedure respuestas_eva_prof(numero_u: integer);
procedure manito_profesor();
procedure manito_alumno();

const
  pags1 = 9;
  pags2 = 3;
  pags3 = 3;
  pags4 = 3;


var
  cuenta: integer;
  cont: integer;
  Form1: TForm1;
  Loguser: string;


implementation

uses
  ulogin, um_datos;

{$R *.lfm}

{ TForm1 }

procedure TForm1.B_explicacionClick(Sender: TObject);
begin
  limpia_principal;
  f_exp.Visible := True;
  f_exp.Align := alclient;
  f_exp.P_exp_1.Visible := False;

  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;

end;

procedure TForm1.B_ejercitacionClick(Sender: TObject);
begin
  limpia_principal;
  f_ejr1.Visible := True;
  f_ejr1.Align := alclient;
  f_ejr1.p_ejercitacion.Visible := False;

  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;

end;

procedure TForm1.B_evaluacionClick(Sender: TObject);
begin
  limpia_principal;
  f_eva1.Visible := True;
  f_eva1.Align := alclient;

  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;
end;

procedure TForm1.B_unidad1Click(Sender: TObject);
begin
  limpia_principal;
  B_unidad2.Enabled := False;
  B_unidad3.Enabled := False;
  B_unidad4.Enabled := False;

  f_contenidos1.Visible := True;
  f_contenidos1.Align := alclient;
  f_contenidos1.I_contenidos_1.Picture.LoadFromFile(Application.Location +
    '/Codigos/Unidad 1/unidad1.jpg');
  f_contenidos1.B_contenidos_exp.Tag := 1;
  f_contenidos1.B_contenidos_ejr.tag := 1;
  f_contenidos1.B_contenidos_eva.tag := 1;
  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;

  form1.F_contenidos1.B_contenidos_ejr.Enabled := True;
end;

procedure TForm1.B_unidad2Click(Sender: TObject);
begin
  limpia_principal;
  B_unidad1.Enabled := False;
  B_unidad3.Enabled := False;
  B_unidad4.Enabled := False;

  f_contenidos1.Visible := True;
  f_contenidos1.Align := alclient;
  f_contenidos1.I_contenidos_1.Picture.LoadFromFile(Application.Location +
    '/Codigos/Unidad 2/unidad2.jpg');
  f_contenidos1.B_contenidos_exp.Tag := 2;
  f_contenidos1.B_contenidos_ejr.tag := 2;
  f_contenidos1.B_contenidos_eva.tag := 2;
  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;

  if not (modulo_datos.ZQuery1.FieldByName('Au1').Value = 1) then
     form1.F_contenidos1.B_contenidos_ejr.Enabled := False;
end;

procedure TForm1.B_unidad3Click(Sender: TObject);
begin
  limpia_principal;
  B_unidad1.Enabled := False;
  B_unidad2.Enabled := False;
  B_unidad4.Enabled := False;

  f_contenidos1.Visible := True;
  f_contenidos1.Align := alclient;
  f_contenidos1.I_contenidos_1.Picture.LoadFromFile(Application.Location +
    '/Codigos/Unidad 3/unidad3.jpg');
  f_contenidos1.B_contenidos_exp.Tag := 3;
  f_contenidos1.B_contenidos_ejr.tag := 3;
  f_contenidos1.B_contenidos_eva.tag := 3;
  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;

  if not (modulo_datos.ZQuery1.FieldByName('Au2').Value = 1) then
     form1.F_contenidos1.B_contenidos_ejr.Enabled := False;
end;

procedure TForm1.B_unidad4Click(Sender: TObject);
begin
  limpia_principal;
  B_unidad1.Enabled := False;
  B_unidad2.Enabled := False;
  B_unidad3.Enabled := False;

  f_contenidos1.Visible := True;
  f_contenidos1.Align := alclient;
  f_contenidos1.I_contenidos_1.Picture.LoadFromFile(Application.Location +
    '/Codigos/Unidad 4/unidad4.jpg');
  f_contenidos1.B_contenidos_exp.Tag := 4;
  f_contenidos1.B_contenidos_ejr.tag := 4;
  f_contenidos1.B_contenidos_eva.tag := 4;
  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;

  if not (modulo_datos.ZQuery1.FieldByName('Au3').Value = 1) then
     form1.F_contenidos1.B_contenidos_ejr.Enabled := False;
end;

procedure TForm1.B_OkClick(Sender: TObject);
begin
  form1.I_principal.Visible := False;
  form1.B_ok.Visible := False;
  limpia_principal;
end;

procedure TForm1.B_anteriorClick(Sender: TObject);
begin
  form1.B_terminar.Visible := True;
  form1.B_siguiente.Enabled := True;
  cont := cont - 1;
  if cont = 1 then
  begin
    form1.B_anterior.Enabled := False;
    form1.B_siguiente.Enabled := True;
    cont := 1;
  end;
  case cont of
    1: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag1.jpg');
    2: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag2.jpg');
    3: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag3.jpg');
    4: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag4.jpg');
    5: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag5.jpg');
    6: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag6.jpg');
    7: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag7.jpg');
    8: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag8.jpg');
    else

      form1.B_anterior.Enabled := False;
      form1.B_terminar.Visible := True;
  end;
end;

procedure TForm1.CB_adm_apodoClick(Sender: TObject);
begin
  if form1.f_administrar1.CB_adm_apodo.Checked = True then
    form1.f_administrar1.LE_adm_apodo.Enabled := False
  else
    form1.f_administrar1.LE_adm_apodo.Enabled := True;

end;

procedure TForm1.CB_adm_contraChange(Sender: TObject);
begin
  if form1.f_administrar1.CB_adm_contra.Checked = True then
    form1.f_administrar1.LE_adm_contra.Enabled := False
  else
    form1.f_administrar1.LE_adm_contra.Enabled := True;
end;

procedure TForm1.CB_adm_contraClick(Sender: TObject);
begin
  if form1.f_administrar1.CB_adm_contra.Checked = True then
    form1.f_administrar1.LE_adm_contra.Enabled := False
  else
    form1.f_administrar1.LE_adm_contra.Enabled := True;
end;

procedure TForm1.DBG_adm_grid1CellClick(Column: TColumn);
begin
  saber_perfil;
end;

procedure TForm1.DBG_adm_grid1KeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  saber_perfil;
end;

procedure TForm1.DBG_adm_grid2CellClick(Column: TColumn);
begin
  saber_perfil;
end;

procedure TForm1.DBG_adm_grid2KeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  saber_perfil;
end;

procedure TForm1.DBG_eva_prof_listadoCellClick(Column: TColumn);
begin
  respuestas_eva_prof(form1.f_eva_prof1.TC_eva_prof_respuestas1.TabIndex + 1);
  manito_profesor;
end;

procedure TForm1.DBG_eva_prof_listadoKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  respuestas_eva_prof(form1.f_eva_prof1.TC_eva_prof_respuestas1.TabIndex + 1);
  manito_profesor;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  if MessageDlg('¿Seguro que desea salir?', mtWarning, [mbYes, mbNo], 0) = 6 then
    application.terminate
  else
    CloseAction := caNone; //cancela la acción cerrar
end;



procedure TForm1.FormShow(Sender: TObject);
begin
  limpia_principal;
  form1.P_lateral.Visible := True;
  form1.P_principal.Visible := True;
  form1.P_superior.Visible := True;
  form1.WindowState := wsMaximized;
  form1.I_principal.Visible := True;
  form1.I_principal.Align := alclient;
end;

procedure TForm1.I_principalClick(Sender: TObject);
begin

end;

procedure TForm1.Mp1_u1Change(Sender: TObject);
begin

end;

procedure TForm1.PC_admChange(Sender: TObject);
begin

end;

procedure TForm1.PC_eva_prof_1Change(Sender: TObject);
begin
  manito_profesor;
end;

procedure TForm1.B_siguienteClick(Sender: TObject);
begin
  cont := cont + 1;

  form1.B_anterior.Enabled := True;
  case cont of
    2: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag2.jpg');
    3: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag3.jpg');
    4: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag4.jpg');
    5: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag5.jpg');
    6: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag6.jpg');
    7: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag7.jpg');
    8: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag8.jpg');
    9: form1.I_principal.Picture.LoadFromFile(Application.Location +
        '/Codigos/Unidad 1/Explicaciones/unidad1pag9.jpg');
    else
      cont := cont - 1;
      form1.B_siguiente.Enabled := False;
      form1.B_terminar.Visible := True;
  end;
end;

procedure TForm1.B_verificarClick(Sender: TObject);
begin
  Form1.F_ejr1.B_limpiar.Visible := True;
  //verifica pregunta 1
  if Form1.F_ejr1.RGp1_u1.ItemIndex < 0 then
    //showmessage('no se seleccionó ninguno')
    Form1.F_ejr1.RGp1_u1.Color := clNone
  else
  begin
    if Form1.F_ejr1.RGp1_u1.ItemIndex = Form1.F_ejr1.RGp1_u1.Tag then
      //showmessage('correcto!!!!')
      Form1.F_ejr1.RGp1_u1.Color := $0080FF80
    else
      //showmessage('incorrecto :(');
      Form1.F_ejr1.RGp1_u1.Color := $008080FF;
  end;
  //verifica pregunta 2
  if Form1.F_ejr1.RGp2_u1.ItemIndex < 0 then
    Form1.F_ejr1.RGp2_u1.Color := clNone
  else
  begin
    if Form1.F_ejr1.RGp2_u1.ItemIndex = Form1.F_ejr1.RGp2_u1.Tag then
      Form1.F_ejr1.RGp2_u1.Color := $0080FF80
    else
      Form1.F_ejr1.RGp2_u1.Color := $008080FF;
  end;
  //verifica pregunta 3
  if Form1.F_ejr1.RGp3_u1.ItemIndex < 0 then
    Form1.F_ejr1.RGp3_u1.Color := clNone
  else
  begin
    if Form1.F_ejr1.RGp3_u1.ItemIndex = Form1.F_ejr1.RGp3_u1.Tag then
      Form1.F_ejr1.RGp3_u1.Color := $0080FF80
    else
      Form1.F_ejr1.RGp3_u1.Color := $008080FF;
  end;
  //verifica pregunta 4
  if Form1.F_ejr1.RGp4_u1.ItemIndex < 0 then
    Form1.F_ejr1.RGp4_u1.Color := clNone
  else
  begin
    if Form1.F_ejr1.RGp4_u1.ItemIndex = Form1.F_ejr1.RGp4_u1.Tag then
      Form1.F_ejr1.RGp4_u1.Color := $0080FF80
    else
      Form1.F_ejr1.RGp4_u1.Color := $008080FF;
  end;
  //verifica pregunta 5
  if Form1.F_ejr1.RGp5_u1.ItemIndex < 0 then
    Form1.F_ejr1.RGp5_u1.Color := clNone
  else
  begin
    if Form1.F_ejr1.RGp5_u1.ItemIndex = Form1.F_ejr1.RGp5_u1.Tag then
      Form1.F_ejr1.RGp5_u1.Color := $0080FF80
    else
      Form1.F_ejr1.RGp5_u1.Color := $008080FF;
  end;
  //verifica pregunta 6
  if Form1.F_ejr1.RGp6_u1.ItemIndex < 0 then
    Form1.F_ejr1.RGp6_u1.Color := clNone
  else
  begin
    if Form1.F_ejr1.RGp6_u1.ItemIndex = Form1.F_ejr1.RGp6_u1.Tag then
      Form1.F_ejr1.RGp6_u1.Color := $0080FF80
    else
      Form1.F_ejr1.RGp6_u1.Color := $008080FF;
  end;

end;

procedure TForm1.B_salirClick(Sender: TObject);
begin
  if MessageDlg('¿Seguro que desea salir?', mtWarning, [mbYes, mbNo], 0) = 6 then
    application.terminate;

end;

procedure TForm1.B_explicacion_1Click(Sender: TObject);
begin
  cuenta := 1;
  Explica_abre(1, pags1);
  f_exp.B_exp_6.Tag := 1;
  form1.F_exp.B_exp_7.Enabled := True;
end;

procedure TForm1.B_explicacion_2Click(Sender: TObject);
begin
  cuenta := 1;
  Explica_abre(2, pags2);
  f_exp.B_exp_6.Tag := 2;
  form1.F_exp.B_exp_7.Enabled := True;
end;

procedure TForm1.B_explicacion_3Click(Sender: TObject);
begin
  cuenta := 1;
  Explica_abre(3, pags3);
  f_exp.B_exp_6.Tag := 3;
  form1.F_exp.B_exp_7.Enabled := True;
end;

procedure TForm1.B_explicacion_u4Click(Sender: TObject);
begin
  cuenta := 1;
  Explica_abre(4, pags4);
  f_exp.B_exp_6.Tag := 4;
  form1.F_exp.B_exp_7.Enabled := True;
end;

procedure TForm1.B_exp_10Click(Sender: TObject);
begin
  cuenta := 1;
  form1.F_exp.P_exp_1.Visible := False;

  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;

  form1.F_exp.B_exp_7.Enabled := True;
end;

procedure TForm1.B_exp_11Click(Sender: TObject);
begin
  limpia_principal;
  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;

  form1.F_exp.B_exp_7.Enabled := True;
end;

procedure TForm1.B_contenidos_cerrarClick(Sender: TObject);
begin
  B_unidad1.Enabled := True;
  B_unidad2.Enabled := True;
  B_unidad3.Enabled := True;
  B_unidad4.Enabled := True;
  f_contenidos1.Visible := False;
end;

procedure TForm1.B_contenidos_ejrClick(Sender: TObject);
begin
  B_unidad1.Enabled := True;
  B_unidad2.Enabled := True;
  B_unidad3.Enabled := True;
  B_unidad4.Enabled := True;
  f_contenidos1.Visible := False;
  f_ejr1.Visible := True;
  f_ejr1.align := alClient;
  ejercita_abre(f_contenidos1.B_contenidos_ejr.Tag);
end;

procedure TForm1.B_contenidos_evaClick(Sender: TObject);
begin
  B_unidad1.Enabled := True;
  B_unidad2.Enabled := True;
  B_unidad3.Enabled := True;
  B_unidad4.Enabled := True;
  f_contenidos1.Visible := False;
  f_eva1.Visible := True;
  f_eva1.align := alClient;
end;

procedure TForm1.B_cambiar_contraClick(Sender: TObject);
begin
  limpia_principal;
  form1.F_c_contra1.Visible := True;
  form1.F_c_contra1.Align := alclient;
  form1.F_c_contra1.E_c_contra_contra1.Text := '';
  form1.F_c_contra1.E_c_contra_contra2.Text := '';
end;

procedure TForm1.B_administrarClick(Sender: TObject);
begin
  limpia_principal;
  form1.f_administrar1.Visible := True;
  form1.f_administrar1.Align := alclient;

  Modulo_datos.ZQuery2.SQL.Clear;
  if form1.B_administrar.Tag = 2 then
    Modulo_datos.ZQuery2.SQL.Add('SELECT * FROM USUARIOS where perfil = ' +
      QuotedStr('1'))
  else
    Modulo_datos.ZQuery2.SQL.Add('SELECT * FROM USUARIOS');
  Modulo_datos.ZQuery2.Open;

  Saber_perfil;

  form1.f_administrar1.P_adm_listado.Visible := True;
  form1.f_administrar1.P_adm_listado.Align := alclient;

end;


procedure TForm1.B_adm_ver_1Click(Sender: TObject);
begin
  Modulo_datos.ZQuery2.SQL.Clear;
  Modulo_datos.ZQuery2.SQL.Add('SELECT * FROM USUARIOS where perfil = ' +
    QuotedStr('1'));
  Modulo_datos.ZQuery2.Open;
end;

procedure TForm1.B_adm_ver_2Click(Sender: TObject);
begin
  Modulo_datos.ZQuery2.SQL.Clear;
  Modulo_datos.ZQuery2.SQL.Add('SELECT apodo, nombre FROM USUARIOS where perfil = ' +
    QuotedStr('2'));
  Modulo_datos.ZQuery2.Open;
end;

procedure TForm1.B_adm_ver_todosClick(Sender: TObject);
begin
  Modulo_datos.ZQuery2.SQL.Clear;
  Modulo_datos.ZQuery2.SQL.Add('SELECT apodo, nombre FROM USUARIOS');
  Modulo_datos.ZQuery2.Open;
end;

procedure TForm1.B_contenidos_expClick(Sender: TObject);
var
  numero_u, cant_max_p: integer;
begin
  numero_u := f_contenidos1.B_contenidos_exp.Tag;
  case numero_u of
    1: cant_max_p := pags1;
    2: cant_max_p := pags2;
    3: cant_max_p := pags3;
    4: cant_max_p := pags4;
  end;

  B_unidad1.Enabled := True;
  B_unidad2.Enabled := True;
  B_unidad3.Enabled := True;
  B_unidad4.Enabled := True;
  f_contenidos1.Visible := False;
  f_exp.Visible := True;
  f_exp.align := alClient;
  //explica_abre(numero_u, cant_max_p);
  B_explicacion.Tag := 1;

  cuenta:=1;
  explica_abre(numero_u, cant_max_p);
  f_exp.B_exp_6.Tag:=numero_u;
  form1.F_exp.B_exp_7.Enabled := True;
end;

procedure TForm1.B_c_contra_cambiarClick(Sender: TObject);
begin
  if (form1.F_c_contra1.E_c_contra_contra1.Text = '') and
    (form1.F_c_contra1.E_c_contra_contra2.Text = '') then
  begin
    ShowMessage('Los campos etan vacios');
  end
  else
  begin
    if form1.F_c_contra1.E_c_contra_contra1.Text =
      form1.F_c_contra1.E_c_contra_contra2.Text then
    begin
      if passwordbox('Contraseña anterior', 'Ingrese su contraseña anterior') =
        form1.F_c_contra1.DBT_c_contra_contra0.Caption then
      begin
        //TODO: ver si las contraseñas cumplen los requisitos
        Cambio_contra(form1.F_c_contra1.E_c_contra_contra1.Text);
        ShowMessage('Cambie la contraseña');
        limpia_principal;
        Flogin.Tag:=0;
        Flogin.showmodal;
      end
      else
      begin
        ShowMessage('No hice el cambio');
      end;
    end
    else
    begin
      ShowMessage('las contraseñas no me coinciden');
    end;

  end;
end;

procedure TForm1.B_c_contra_cerrar1Click(Sender: TObject);
begin
  limpia_principal;
end;

procedure TForm1.B_c_contra_cerrarClick(Sender: TObject);
begin
  limpia_principal;
end;

procedure TForm1.B_ejr_1Click(Sender: TObject);
begin
  ejercita_abre(1);
end;

procedure TForm1.B_ejr_2Click(Sender: TObject);
begin
  ejercita_abre(2);
end;

procedure TForm1.B_ejr_3Click(Sender: TObject);
begin
  ejercita_abre(3);
end;

procedure TForm1.B_ejr_4Click(Sender: TObject);
begin
  ejercita_abre(4);
end;

procedure TForm1.B_ejr_cerrar1Click(Sender: TObject);
begin
  limpia_principal;
  B_unidad1.Enabled := True;
  B_unidad2.Enabled := True;
  B_unidad3.Enabled := True;
  B_unidad4.Enabled := True;
  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;
end;

procedure TForm1.B_ejr_cerrar2Click(Sender: TObject);
begin
  limpia_principal;
  B_unidad1.Enabled := True;
  B_unidad2.Enabled := True;
  B_unidad3.Enabled := True;
  B_unidad4.Enabled := True;
  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;
end;

procedure TForm1.B_ejr_cerrarClick(Sender: TObject);
begin
  limpia_principal;
  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;
end;

procedure TForm1.B_ejr_corregirClick(Sender: TObject);
var
  aciertos, errores, nocont: integer;
  rp1, rp2, rp3, rp4, rp5, rp6: integer;
begin
  aciertos := 0;
  errores := 0;
  nocont := 0;
  //verifica pregunta 1
  rp1 := Form1.F_ejr1.RGp1_u1.ItemIndex;
  if Form1.F_ejr1.RGp1_u1.ItemIndex < 0 then
    //showmessage('no se seleccionó ninguno')
    nocont := nocont + 1
  else
  begin
    if Form1.F_ejr1.RGp1_u1.ItemIndex = Form1.F_ejr1.RGp1_u1.Tag then
      //showmessage('correcto!!!!')
      aciertos := aciertos + 1
    else
      //showmessage('incorrecto :(');
      errores := errores + 1;
  end;
  //verifica pregunta 2
  rp2 := Form1.F_ejr1.RGp2_u1.ItemIndex;
  if Form1.F_ejr1.RGp2_u1.ItemIndex < 0 then
    nocont := nocont + 1
  else
  begin
    if Form1.F_ejr1.RGp2_u1.ItemIndex = Form1.F_ejr1.RGp2_u1.Tag then
      aciertos := aciertos + 1
    else
      errores := errores + 1;
  end;
  //verifica pregunta 3
  rp3 := Form1.F_ejr1.RGp3_u1.ItemIndex;
  if Form1.F_ejr1.RGp3_u1.ItemIndex < 0 then
    nocont := nocont + 1
  else
  begin
    if Form1.F_ejr1.RGp3_u1.ItemIndex = Form1.F_ejr1.RGp3_u1.Tag then
      aciertos := aciertos + 1
    else
      errores := errores + 1;
  end;
  //verifica pregunta 4
  rp4 := Form1.F_ejr1.RGp4_u1.ItemIndex;
  if Form1.F_ejr1.RGp4_u1.ItemIndex < 0 then
    nocont := nocont + 1
  else
  begin
    if Form1.F_ejr1.RGp4_u1.ItemIndex = Form1.F_ejr1.RGp4_u1.Tag then
      aciertos := aciertos + 1
    else
      errores := errores + 1;
  end;
  //verifica pregunta 5
  rp5 := Form1.F_ejr1.RGp5_u1.ItemIndex;
  if Form1.F_ejr1.RGp5_u1.ItemIndex < 0 then
    nocont := nocont + 1
  else
  begin
    if Form1.F_ejr1.RGp5_u1.ItemIndex = Form1.F_ejr1.RGp5_u1.Tag then
      aciertos := aciertos + 1
    else
      errores := errores + 1;
  end;
  //verifica pregunta 6
  rp6 := Form1.F_ejr1.RGp6_u1.ItemIndex;
  if Form1.F_ejr1.RGp6_u1.ItemIndex < 0 then
    nocont := nocont + 1
  else
  begin
    if Form1.F_ejr1.RGp6_u1.ItemIndex = Form1.F_ejr1.RGp6_u1.Tag then
      aciertos := aciertos + 1
    else
      errores := errores + 1;
  end;

  form1.F_ejr1.L_ejr_resultado.Caption :=
    IntToStr(aciertos) + '/' + IntToStr(errores) + '/' + IntToStr(nocont);
  guarda_resultados(StrToInt(form1.F_ejr1.Label1.Caption[Length(
    form1.F_ejr1.Label1.Caption)]),
    aciertos, errores, nocont);
  guarda_resultados2(StrToInt(form1.F_ejr1.Label1.Caption[Length(
    form1.F_ejr1.Label1.Caption)]),
    rp1, rp2, rp3, rp4, rp5, rp6);
end;

procedure TForm1.B_ejr_volver1Click(Sender: TObject);
begin
  form1.F_ejr1.p_ejercitacion.Visible := False;
  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;
end;

procedure TForm1.B_ejr_volver2Click(Sender: TObject);
begin
  form1.F_ejr1.p_ejercitacion.Visible := False;
  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;
end;

procedure TForm1.B_evaluar_profesorClick(Sender: TObject);
begin
  limpia_principal;
  f_eva_prof1.Visible := True;
  f_eva_prof1.Align := alclient;

  Modulo_datos.ZQuery2.SQL.Clear;
  Modulo_datos.ZQuery2.SQL.Add('SELECT * FROM USUARIOS where perfil = ' +
    QuotedStr('1'));
  Modulo_datos.ZQuery2.Open;
  //agregado
  respuestas_eva_prof(form1.f_eva_prof1.TC_eva_prof_respuestas1.TabIndex + 1);

  manito_profesor();
end;

procedure TForm1.B_eva_cerrar1Click(Sender: TObject);
begin
  limpia_principal;
end;

procedure TForm1.B_eva_cerrarClick(Sender: TObject);
begin
  limpia_principal;
end;

procedure TForm1.B_exp_5Click(Sender: TObject);
begin

end;

procedure TForm1.B_exp_6Click(Sender: TObject);
var
  pags_max: integer;
begin
  case f_exp.B_exp_6.Tag of
    1: pags_max := pags1;
    2: pags_max := pags2;
    3: pags_max := pags3;
    4: pags_max := pags4;

  end;
  explica_anterior(f_exp.B_exp_6.Tag, pags_max);
end;

procedure TForm1.B_exp_7Click(Sender: TObject);
var
  pags_max: integer;
begin
  case f_exp.B_exp_6.Tag of
    1: pags_max := pags1;
    2: pags_max := pags2;
    3: pags_max := pags3;
    4: pags_max := pags4;

  end;
  explica_siguiente(f_exp.B_exp_6.Tag, pags_max);
end;

procedure TForm1.B_exp_8Click(Sender: TObject);
begin

end;

procedure TForm1.B_exp_9Click(Sender: TObject);
begin
  limpia_principal;
  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;
end;

procedure TForm1.B_exp_cerrarClick(Sender: TObject);
begin
  limpia_principal;
  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;
end;

procedure TForm1.B_limpiarClick(Sender: TObject);
begin
  Form1.F_ejr1.RGp1_u1.Color := clNone;
  Form1.F_ejr1.RGp2_u1.Color := clNone;
  Form1.F_ejr1.RGp3_u1.Color := clNone;
  Form1.F_ejr1.RGp4_u1.Color := clNone;
  Form1.F_ejr1.RGp5_u1.Color := clNone;
  Form1.F_ejr1.RGp6_u1.Color := clNone;
  Form1.F_ejr1.B_limpiar.Visible := False;

end;

procedure TForm1.B_terminarClick(Sender: TObject);
begin
  form1.I_principal.Visible := False;
  form1.B_terminar.Visible := False;
  form1.B_siguiente.Visible := False;
  form1.B_anterior.Visible := False;
  cont := 0;
  limpia_principal;
end;

procedure TForm1.B_cambiar_usuarioClick(Sender: TObject);
begin
  limpia_principal;
  Flogin.showmodal;

end;

procedure TForm1.SB_adm_agregarClick(Sender: TObject);
begin
  form1.f_administrar1.P_adm_listado.Visible := False;
  form1.f_administrar1.P_adm_nuevo.Visible := True;
  form1.f_administrar1.P_adm_nuevo.Align := alclient;
  adm_botones_superiores(False);
  form1.f_administrar1.LE_adm_apellido.Text := '';
  form1.f_administrar1.LE_adm_nombre.Text := '';
  form1.f_administrar1.LE_adm_contra.Text := '';
  form1.f_administrar1.LE_adm_apodo.Text := '';
  form1.f_administrar1.SB_adm_nuevo_aceptar.Tag := 0;

  if form1.B_administrar.Tag = 2 then
  begin
    form1.f_administrar1.CBox_adm_perfil.ItemIndex := 1;
    form1.f_administrar1.CBox_adm_perfil.Enabled := False;
  end
  else
    form1.f_administrar1.CBox_adm_perfil.Enabled := True;
end;

procedure TForm1.SB_adm_buscarClick(Sender: TObject);
var
  abuscar: string;
  respuesta: boolean;
begin
  if InputQuery('Buscar', 'Ingrese el nombre a buscar:', abuscar) then
    if modulo_datos.ZQuery2.Locate('nombre', abuscar,
      [loCaseInsensitive, loPartialKey]) then
      ShowMessage('ok')
    else
      ShowMessage('no lo encontré');


  //nota: locate busca un registro y mueve el cursor ahí
  //otra funcion que se puede utilizar es lookup pero esta no hace nada con el cursor.
end;

procedure TForm1.SB_adm_cerrarClick(Sender: TObject);
begin
  limpia_principal;
end;

procedure TForm1.SB_adm_editarClick(Sender: TObject);
begin
  if not (modulo_datos.ZQuery2.FieldByName('apodo').AsString = 'admin') then
     begin
  form1.f_administrar1.P_adm_listado.Visible := False;
  form1.f_administrar1.P_adm_nuevo.Visible := True;
  form1.f_administrar1.P_adm_nuevo.Align := alclient;
  adm_botones_superiores(False);
  form1.f_administrar1.CBox_adm_perfil.ItemIndex :=
    modulo_datos.ZQuery2.FieldByName('perfil').Value;
  form1.f_administrar1.LE_adm_apellido.Text :=
    modulo_datos.ZQuery2.FieldByName('sapellido').Text;
  form1.f_administrar1.LE_adm_nombre.Text :=
    modulo_datos.ZQuery2.FieldByName('snombre').Text;
  form1.f_administrar1.LE_adm_contra.Text := '';
  form1.f_administrar1.LE_adm_apodo.Text := form1.f_administrar1.DBT_adm_2_2.Caption;

  form1.f_administrar1.SB_adm_nuevo_aceptar.Tag := 1;

  if form1.B_administrar.Tag = 2 then
    form1.f_administrar1.CBox_adm_perfil.Enabled := False
  else
    form1.f_administrar1.CBox_adm_perfil.Enabled := True;

     end;
end;

procedure TForm1.SB_adm_eliminarClick(Sender: TObject);
begin
  if not (modulo_datos.ZQuery2.FieldByName('apodo').AsString = 'admin') then
     if MessageDlg('¿Seguro que desea eliminar a ' +
                   modulo_datos.ZQuery2.FieldByName('nombre').AsString + '?',
                   mtConfirmation, [mbYes, mbNo], 0) = 6 then
        modulo_datos.ZQuery2.Delete;
  //todo: volver a preguntar si esta seguro avisando que se borrara todo y no se podrá recuperar

end;

procedure TForm1.SB_adm_nuevo_aceptarClick(Sender: TObject);
begin
  modulo_datos.ZTable1.Open;

  //comprobar que nombre y apellido no esten vacioes antes de continuar con todo esto.
  if (form1.f_administrar1.LE_adm_nombre.Text = '') or
    (form1.f_administrar1.LE_adm_apellido.Text = '') then
    ShowMessage('Nombre y apellido vacios')
  else
  begin

    // genera apodo
    if form1.f_administrar1.CB_adm_apodo.Checked = True then
    begin
      form1.f_administrar1.LE_adm_apodo.Text :=
        lowercase(form1.f_administrar1.LE_adm_nombre.Text[1] +
        form1.f_administrar1.LE_adm_apellido.Text);
    end;
    // genera contraseña
    if form1.f_administrar1.CB_adm_contra.Checked = True then
    begin
      form1.f_administrar1.LE_adm_contra.Text :=
        lowercase(form1.f_administrar1.LE_adm_nombre.Text[1] +
        form1.f_administrar1.LE_adm_apellido.Text);
    end;
    // si es un nuevo usuario
    if form1.f_administrar1.SB_adm_nuevo_aceptar.Tag = 0 then
    begin
      if form1.f_administrar1.LE_adm_apodo.Text = '' then
        form1.f_administrar1.LE_adm_apodo.Text :=
          lowercase(form1.f_administrar1.LE_adm_nombre.Text[1] +
          form1.f_administrar1.LE_adm_apellido.Text);
      if form1.f_administrar1.LE_adm_contra.Text = '' then
        form1.f_administrar1.LE_adm_contra.Text :=
          lowercase(form1.f_administrar1.LE_adm_nombre.Text[1] +
          form1.f_administrar1.LE_adm_apellido.Text);
      // fijarse si el usuario ya existe
      if VarIsNull(modulo_datos.ZTable1.Lookup('apodo',
        form1.f_administrar1.LE_adm_apodo.Text, '')) then
      begin
        modulo_datos.ZQuery2.Insert;   //abre en modo insersion
        adm_ejecuta_insersion;
        adm_vuelve_al_menu;
      end
      else
      begin
        ShowMessage('El usuario ya está en uso.');

      end;
    end
    // si es una edicion de usuario
    else
    begin
      modulo_datos.zquery2.edit;
      if form1.f_administrar1.LE_adm_contra.Text = '' then
        form1.f_administrar1.LE_adm_contra.Text :=
          modulo_datos.ZQuery2.FieldByName('contra').Text;
      if form1.f_administrar1.LE_adm_apodo.Text = '' then
        form1.f_administrar1.LE_adm_apodo.Text :=
          modulo_datos.zquery2.FieldByName('apodo').Text;
      adm_ejecuta_insersion;
      adm_vuelve_al_menu;
    end;

  end;
end;

procedure TForm1.SB_adm_nuevo_cancelarClick(Sender: TObject);
begin
  form1.f_administrar1.P_adm_nuevo.Visible := False;
  form1.f_administrar1.P_adm_listado.Visible := True;
  adm_botones_superiores(True);
end;

procedure TForm1.SB_eva_prof_1Click(Sender: TObject);
begin
  modulo_datos.ZQuery2.Edit;
  modulo_datos.zquery2.FieldByName('Au1').Value := 1;
  modulo_datos.zquery2.post;
  manito_profesor;
  Modulo_datos.ZQuery2.ApplyUpdates;
end;

procedure TForm1.SB_eva_prof_2Click(Sender: TObject);
begin
  modulo_datos.ZQuery2.Edit;
  modulo_datos.zquery2.FieldByName('Au2').Value := 1;
  modulo_datos.zquery2.post;
  manito_profesor;
  Modulo_datos.ZQuery2.ApplyUpdates;
end;

procedure TForm1.SB_eva_prof_3Click(Sender: TObject);
begin
  modulo_datos.ZQuery2.Edit;
  modulo_datos.zquery2.FieldByName('Au3').Value := 1;
  modulo_datos.zquery2.post;
  manito_profesor;
  Modulo_datos.ZQuery2.ApplyUpdates;
end;

procedure TForm1.SB_eva_prof_4Click(Sender: TObject);
begin
  modulo_datos.ZQuery2.Edit;
  modulo_datos.zquery2.FieldByName('Au4').Value := 1;
  modulo_datos.zquery2.post;
  manito_profesor;
  Modulo_datos.ZQuery2.ApplyUpdates;
end;

procedure TForm1.SB_Eva_prof_cerrarClick(Sender: TObject);
begin
  limpia_principal;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin

end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin

end;

procedure TForm1.TC_adm_usuariosChange(Sender: TObject);
var
  solapa: integer;
begin
  solapa := form1.f_administrar1.TC_adm_usuarios.TabIndex;
  case solapa of
    0:
    begin
      Modulo_datos.ZQuery2.SQL.Clear;
      Modulo_datos.ZQuery2.SQL.Add('SELECT * FROM USUARIOS');
      Modulo_datos.ZQuery2.Open;
    end;
    1:
    begin
      Modulo_datos.ZQuery2.SQL.Clear;
      Modulo_datos.ZQuery2.SQL.Add('SELECT * FROM USUARIOS where perfil = ' +
        QuotedStr('1'));
      Modulo_datos.ZQuery2.Open;
    end;
    2:
    begin
      Modulo_datos.ZQuery2.SQL.Clear;
      Modulo_datos.ZQuery2.SQL.Add('SELECT * FROM USUARIOS where perfil = ' +
        QuotedStr('2'));
      Modulo_datos.ZQuery2.Open;
    end;
    3:
    begin
      Modulo_datos.ZQuery2.SQL.Clear;
      Modulo_datos.ZQuery2.SQL.Add('SELECT * FROM USUARIOS where perfil = ' +
        QuotedStr('0'));
      Modulo_datos.ZQuery2.Open;
    end;
  end;
  saber_perfil;
  //todo: tabindex está dando problemas

end;

procedure TForm1.TC_eva_prof_respuestas1Change(Sender: TObject);
var
  solapa: integer;
begin
  solapa := form1.f_eva_prof1.TC_eva_prof_respuestas1.TabIndex;
  //showmessage(inttostr(form1.f_eva_prof1.TC_eva_prof_respuestas1.TabIndex));
  case solapa of
    0:
    begin
      //funcion unidad 1
      // form1.f_eva_prof1.DBT_eva_prof_respuestas_1.DataField:='u1p1';
      respuestas_eva_prof(1);
    end;
    1:
    begin
      //funcion unidad 2
      respuestas_eva_prof(2);
    end;
    2:
    begin
      //funcion unidad 3
      respuestas_eva_prof(3);
    end;
    3:
    begin
      //funcion unidad 4
      respuestas_eva_prof(4);
    end;
  end;
  //respuestas_eva_prof(1);
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  if button = btnext then
    Modulo_datos.ZQuery2.Next
  else
    modulo_datos.zquery2.prior;
  Saber_perfil;
end;

procedure TForm1.UpD_eva_prof_1Changing(Sender: TObject; var AllowChange: boolean);
begin

end;

procedure TForm1.UpD_eva_prof_1Click(Sender: TObject; Button: TUDBtnType);
begin
  if button = btnext then
    Modulo_datos.ZQuery2.Next
  else
    modulo_datos.zquery2.prior;
  respuestas_eva_prof(form1.f_eva_prof1.TC_eva_prof_respuestas1.TabIndex + 1);
  manito_profesor;
end;

procedure explU1;
begin
  limpia_principal;
  form1.p_explicacion.Visible := True;
  form1.p_explicacion.Align := alclient;
  cont := 0;

  form1.B_ok.Visible := False;
  form1.I_principal.Visible := True;
  form1.I_principal.Picture.LoadFromFile(Application.Location +
    '/Codigos/Unidad 1/Explicaciones/unidad1pag1.jpg');

  form1.B_terminar.Visible := True;
  form1.B_siguiente.Visible := True;
  form1.B_anterior.Visible := True;
  cont := 1;
end;

procedure ejU1;
begin
  limpia_principal;
  cont := 0;
end;

procedure limpia_principal;
begin
  cont := 0;
  form1.p_explicacion.Visible := False;
  form1.F_exp.Visible := False;
  form1.F_contenidos1.Visible := False;
  form1.F_ejr1.Visible := False;
  form1.F_eva1.Visible := False;
  form1.F_c_contra1.Visible := False;
  form1.I_principal.Visible := False;
  form1.f_administrar1.Visible := False;
  form1.f_eva_prof1.Visible := False;

end;

procedure explica_abre(numero_u, cant_max_p: integer);
begin
  form1.F_exp.P_exp_1.Visible := True;
  form1.F_exp.P_exp_1.Align := alclient;
  form1.B_ejercitacion.Enabled := False;
  form1.B_evaluacion.Enabled := False;
  cuenta := 1;
  form1.F_exp.EB_exp_1.Text := IntToStr(cuenta);
  form1.F_exp.I_exp_1.Picture.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/Explicaciones/' +
    IntToStr(cuenta) + '.jpg');
  form1.F_exp.B_exp_6.Enabled := False;
  form1.F_exp.L_exp_3.Caption := IntToStr(cant_max_p);
  form1.B_explicacion.Tag := 1;
end;

procedure explica_siguiente(numero_u, cant_max_p: integer);
begin
  cuenta := cuenta + 1;
  form1.F_exp.B_exp_6.Enabled := True;

  if cuenta > (cant_max_p - 1) then
  begin
    form1.F_exp.B_exp_6.Enabled := True;
    form1.F_exp.B_exp_7.Enabled := False;
    cuenta := cant_max_p;
    form1.F_exp.I_exp_1.Picture.LoadFromFile(Application.Location +
      '/Codigos/Unidad ' + IntToStr(numero_u) + '/Explicaciones/' +
      IntToStr(cuenta) + '.jpg');
  end
  else
  begin
    form1.F_exp.I_exp_1.Picture.LoadFromFile(Application.Location +
      '/Codigos/Unidad ' + IntToStr(numero_u) + '/Explicaciones/' +
      IntToStr(cuenta) + '.jpg');
  end;
  form1.F_exp.EB_exp_1.Text := IntToStr(cuenta);
end;

procedure explica_anterior(numero_u, cant_max_p: integer);
begin
  cuenta := cuenta - 1;
  form1.F_exp.B_exp_7.Enabled := True;
  if cuenta < 2 then
  begin
    form1.F_exp.B_exp_6.Enabled := False;
    form1.F_exp.B_exp_7.Enabled := True;
    cuenta := 1;
    form1.F_exp.I_exp_1.Picture.LoadFromFile(Application.Location +
      '/Codigos/Unidad ' + IntToStr(numero_u) + '/Explicaciones/' +
      IntToStr(cuenta) + '.jpg');
  end
  else
  begin
    form1.F_exp.I_exp_1.Picture.LoadFromFile(Application.Location +
      '/Codigos/Unidad ' + IntToStr(numero_u) + '/Explicaciones/' +
      IntToStr(cuenta) + '.jpg');
  end;
  form1.F_exp.EB_exp_1.Text := IntToStr(cuenta);
end;

procedure ejercita_abre(numero_u: integer);
var
  np: integer;
begin
  Form1.F_ejr1.Label1.Caption:= 'Ejercitación Unidad ';
  Form1.F_ejr1.p_ejercitacion.Visible := True;
  form1.f_ejr1.p_ejercitacion.Align := alclient;
  form1.F_ejr1.Label1.Caption := form1.F_ejr1.Label1.Caption + IntToStr(numero_u);

  Form1.F_ejr1.RGp1_u1.Color := clNone;
  Form1.F_ejr1.RGp2_u1.Color := clNone;
  Form1.F_ejr1.RGp3_u1.Color := clNone;
  Form1.F_ejr1.RGp4_u1.Color := clNone;
  Form1.F_ejr1.RGp5_u1.Color := clNone;
  Form1.F_ejr1.RGp6_u1.Color := clNone;
  Form1.F_ejr1.B_limpiar.Visible := False;

  Form1.F_ejr1.Mp1_u1.Lines.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/ejercitacion/Pregunta1A.txt');
  Form1.F_ejr1.Mp2_u1.Lines.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/ejercitacion/Pregunta2A.txt');
  Form1.F_ejr1.Mp3_u1.Lines.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/ejercitacion/Pregunta3A.txt');
  Form1.F_ejr1.Mp4_u1.Lines.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/ejercitacion/Pregunta4A.txt');
  Form1.F_ejr1.Mp5_u1.Lines.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/ejercitacion/Pregunta5A.txt');
  Form1.F_ejr1.Mp6_u1.Lines.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/ejercitacion/Pregunta6A.txt');
  Form1.F_ejr1.RGp1_u1.items.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/ejercitacion/Pregunta1B.txt');
  Form1.F_ejr1.RGp2_u1.items.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/ejercitacion/Pregunta2B.txt');
  Form1.F_ejr1.RGp3_u1.items.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/ejercitacion/Pregunta3B.txt');
  Form1.F_ejr1.RGp4_u1.items.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/ejercitacion/Pregunta4B.txt');
  Form1.F_ejr1.RGp5_u1.items.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/ejercitacion/Pregunta5B.txt');
  Form1.F_ejr1.RGp6_u1.items.LoadFromFile(Application.Location +
    '/Codigos/Unidad ' + IntToStr(numero_u) + '/ejercitacion/Pregunta6B.txt');

  ejercita_correctas(numero_u);

  form1.B_explicacion.Enabled := False;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := False;
end;

procedure ejercita_correctas(numero_u: integer);   //respuestas correctas
begin
  case numero_u of
    1:
    begin
      Form1.F_ejr1.RGp1_u1.Tag := 1;
      Form1.F_ejr1.RGp2_u1.Tag := 1;
      Form1.F_ejr1.RGp3_u1.Tag := 2;
      Form1.F_ejr1.RGp4_u1.Tag := 1;
      Form1.F_ejr1.RGp5_u1.Tag := 2;
      Form1.F_ejr1.RGp6_u1.Tag := 3;
    end;
    2:
    begin
      Form1.F_ejr1.RGp1_u1.Tag := 0;
      Form1.F_ejr1.RGp2_u1.Tag := 1;
      Form1.F_ejr1.RGp3_u1.Tag := 0;
      Form1.F_ejr1.RGp4_u1.Tag := 1;
      Form1.F_ejr1.RGp5_u1.Tag := 0;
      Form1.F_ejr1.RGp6_u1.Tag := 1;
    end;
    3:
    begin
      Form1.F_ejr1.RGp1_u1.Tag := 0;
      Form1.F_ejr1.RGp2_u1.Tag := 1;
      Form1.F_ejr1.RGp3_u1.Tag := 0;
      Form1.F_ejr1.RGp4_u1.Tag := 1;
      Form1.F_ejr1.RGp5_u1.Tag := 0;
      Form1.F_ejr1.RGp6_u1.Tag := 1;
    end;
    4:
    begin
      Form1.F_ejr1.RGp1_u1.Tag := 0;
      Form1.F_ejr1.RGp2_u1.Tag := 1;
      Form1.F_ejr1.RGp3_u1.Tag := 0;
      Form1.F_ejr1.RGp4_u1.Tag := 1;
      Form1.F_ejr1.RGp5_u1.Tag := 0;
      Form1.F_ejr1.RGp6_u1.Tag := 1;
    end;

  end;
end;

procedure guarda_resultados(numero_u, aciertos, errores, nocont: integer);
begin
  case numero_u of
    1:
    begin
      Modulo_datos.ZQuery1.Edit;
      Modulo_Datos.ZQuery1.FieldByName('u1A').Value := aciertos;
      Modulo_Datos.ZQuery1.FieldByName('u1E').Value := errores;
      Modulo_Datos.ZQuery1.FieldByName('u1N').Value := nocont;
      Modulo_Datos.ZQuery1.Post;

    end;
    2:
    begin
      Modulo_datos.ZQuery1.Edit;
      Modulo_Datos.ZQuery1.FieldByName('u2A').Value := aciertos;
      Modulo_Datos.ZQuery1.FieldByName('u2E').Value := errores;
      Modulo_Datos.ZQuery1.FieldByName('u2N').Value := nocont;
      Modulo_Datos.ZQuery1.Post;

    end;
    3:
    begin
      Modulo_datos.ZQuery1.Edit;
      Modulo_Datos.ZQuery1.FieldByName('u3A').Value := aciertos;
      Modulo_Datos.ZQuery1.FieldByName('u3E').Value := errores;
      Modulo_Datos.ZQuery1.FieldByName('u3N').Value := nocont;
      Modulo_Datos.ZQuery1.Post;

    end;
    4:
    begin
      Modulo_datos.ZQuery1.Edit;
      Modulo_Datos.ZQuery1.FieldByName('u4A').Value := aciertos;
      Modulo_Datos.ZQuery1.FieldByName('u4E').Value := errores;
      Modulo_Datos.ZQuery1.FieldByName('u4N').Value := nocont;
      Modulo_Datos.ZQuery1.Post;

    end;
  end;

end;

procedure Cambio_contra(nueva_contra: string);
begin
  Modulo_datos.ZQuery1.Edit;
  Modulo_Datos.ZQuery1.FieldByName('contra').Text := nueva_contra;
  Modulo_Datos.ZQuery1.Post;
end;

procedure saber_perfil;
begin
  try
    case form1.f_administrar1.DBT_adm_3.Caption of
      '0': form1.f_administrar1.l_adm_perfiles.Caption := 'administrador';
      '1': form1.f_administrar1.l_adm_perfiles.Caption := 'alumno';
      '2': form1.f_administrar1.l_adm_perfiles.Caption := 'profesor';
      else
        form1.f_administrar1.l_adm_perfiles.Caption := '';
    end;

  except
    form1.f_administrar1.l_adm_perfiles.Caption := '';
    //si no encuentra el campo, no existe
  end;
end;

procedure adm_botones_superiores(activados: boolean);
begin
  if activados then
  begin
    //botones superiores activados
    form1.f_administrar1.SB_adm_agregar.Enabled := True;
    form1.f_administrar1.SB_adm_eliminar.Enabled := True;
    form1.f_administrar1.SB_adm_editar.Enabled := True;
    form1.f_administrar1.SB_adm_buscar.Enabled := True;

  end
  else
  begin
    //botones superiores desactivados
    form1.f_administrar1.SB_adm_agregar.Enabled := False;
    form1.f_administrar1.SB_adm_eliminar.Enabled := False;
    form1.f_administrar1.SB_adm_editar.Enabled := False;
    form1.f_administrar1.SB_adm_buscar.Enabled := False;

  end;

end;

procedure adm_vuelve_al_menu;
begin
  form1.f_administrar1.P_adm_nuevo.Visible := False;
  form1.f_administrar1.P_adm_listado.Visible := True;
  adm_botones_superiores(True);
end;

procedure adm_ejecuta_insersion;
begin
  modulo_datos.ZQuery2.FieldByName('contra').Text :=
    form1.f_administrar1.LE_adm_contra.Text;
  modulo_datos.ZQuery2.FieldByName('apodo').Text :=
    form1.f_administrar1.LE_adm_apodo.Text;
  modulo_datos.ZQuery2.FieldByName('perfil').Value :=
    form1.f_administrar1.CBox_adm_perfil.ItemIndex;
  Modulo_datos.Zquery2.FieldByName('nombre').Text :=
    uppercase(form1.f_administrar1.LE_adm_apellido.Text) + ', ' +
    form1.f_administrar1.LE_adm_nombre.Text;
  modulo_datos.zquery2.FieldByName('sapellido').Text :=
    form1.f_administrar1.LE_adm_apellido.Text;
  modulo_datos.zquery2.FieldByName('snombre').Text :=
    form1.f_administrar1.LE_adm_nombre.Text;
  modulo_datos.ZQuery2.Post;
  ShowMessage('Usuario: ' + form1.f_administrar1.LE_adm_apodo.Text +
    #13 + 'Contraseña: ' + form1.f_administrar1.LE_adm_contra.Text);

end;

procedure guarda_resultados2(numero_u, rp1, rp2, rp3, rp4, rp5, rp6: integer);
begin
  case numero_u of
    1:
    begin
      Modulo_datos.ZQuery1.Edit;
      Modulo_Datos.ZQuery1.FieldByName('u1p1').Value := rp1;
      Modulo_Datos.ZQuery1.FieldByName('u1p2').Value := rp2;
      Modulo_Datos.ZQuery1.FieldByName('u1p3').Value := rp3;
      Modulo_Datos.ZQuery1.FieldByName('u1p4').Value := rp1;
      Modulo_Datos.ZQuery1.FieldByName('u1p5').Value := rp2;
      Modulo_Datos.ZQuery1.FieldByName('u1p6').Value := rp3;
      Modulo_Datos.ZQuery1.Post;
    end;
    2:
    begin
      Modulo_datos.ZQuery1.Edit;
      Modulo_Datos.ZQuery1.FieldByName('u2p1').Value := rp1;
      Modulo_Datos.ZQuery1.FieldByName('u2p2').Value := rp2;
      Modulo_Datos.ZQuery1.FieldByName('u2p3').Value := rp3;
      Modulo_Datos.ZQuery1.FieldByName('u2p4').Value := rp1;
      Modulo_Datos.ZQuery1.FieldByName('u2p5').Value := rp2;
      Modulo_Datos.ZQuery1.FieldByName('u2p6').Value := rp3;
      Modulo_Datos.ZQuery1.Post;
    end;
    3:
    begin
      Modulo_datos.ZQuery1.Edit;
      Modulo_Datos.ZQuery1.FieldByName('u3p1').Value := rp1;
      Modulo_Datos.ZQuery1.FieldByName('u3p2').Value := rp2;
      Modulo_Datos.ZQuery1.FieldByName('u3p3').Value := rp3;
      Modulo_Datos.ZQuery1.FieldByName('u3p4').Value := rp1;
      Modulo_Datos.ZQuery1.FieldByName('u3p5').Value := rp2;
      Modulo_Datos.ZQuery1.FieldByName('u3p6').Value := rp3;
      Modulo_Datos.ZQuery1.Post;
    end;
    4:
    begin
      Modulo_datos.ZQuery1.Edit;
      Modulo_Datos.ZQuery1.FieldByName('u4p1').Value := rp1;
      Modulo_Datos.ZQuery1.FieldByName('u4p2').Value := rp2;
      Modulo_Datos.ZQuery1.FieldByName('u4p3').Value := rp3;
      Modulo_Datos.ZQuery1.FieldByName('u4p4').Value := rp1;
      Modulo_Datos.ZQuery1.FieldByName('u4p5').Value := rp2;
      Modulo_Datos.ZQuery1.FieldByName('u4p6').Value := rp3;
      Modulo_Datos.ZQuery1.Post;
    end;
  end;

end;

procedure respuestas_eva_prof(numero_u: integer);
var
  irp1: integer;
  srp1: string;
begin
  //carga las preguntas
  form1.f_eva_prof1.M_eva_prof_respuestas_1.Lines.LoadFromFile(
    Application.Location + '/Codigos/Unidad ' + IntToStr(numero_u) +
    '/ejercitacion/Pregunta1A.txt');
  form1.f_eva_prof1.M_eva_prof_respuestas_2.Lines.LoadFromFile(
    Application.Location + '/Codigos/Unidad ' + IntToStr(numero_u) +
    '/ejercitacion/Pregunta2A.txt');
  form1.f_eva_prof1.M_eva_prof_respuestas_3.Lines.LoadFromFile(
    Application.Location + '/Codigos/Unidad ' + IntToStr(numero_u) +
    '/ejercitacion/Pregunta3A.txt');
  form1.f_eva_prof1.M_eva_prof_respuestas_4.Lines.LoadFromFile(
    Application.Location + '/Codigos/Unidad ' + IntToStr(numero_u) +
    '/ejercitacion/Pregunta4A.txt');
  form1.f_eva_prof1.M_eva_prof_respuestas_5.Lines.LoadFromFile(
    Application.Location + '/Codigos/Unidad ' + IntToStr(numero_u) +
    '/ejercitacion/Pregunta5A.txt');
  form1.f_eva_prof1.M_eva_prof_respuestas_6.Lines.LoadFromFile(
    Application.Location + '/Codigos/Unidad ' + IntToStr(numero_u) +
    '/ejercitacion/Pregunta6A.txt');
  //carga los numeros de pregunta
  form1.f_eva_prof1.DBT_eva_prof_respuestas_1.datafield :=
    'u' + IntToStr(numero_u) + 'p1';
  form1.f_eva_prof1.DBT_eva_prof_respuestas_2.datafield :=
    'u' + IntToStr(numero_u) + 'p2';
  form1.f_eva_prof1.DBT_eva_prof_respuestas_3.datafield :=
    'u' + IntToStr(numero_u) + 'p3';
  form1.f_eva_prof1.DBT_eva_prof_respuestas_4.datafield :=
    'u' + IntToStr(numero_u) + 'p4';
  form1.f_eva_prof1.DBT_eva_prof_respuestas_5.datafield :=
    'u' + IntToStr(numero_u) + 'p5';
  form1.f_eva_prof1.DBT_eva_prof_respuestas_6.datafield :=
    'u' + IntToStr(numero_u) + 'p6';
  if not (form1.f_eva_prof1.DBT_eva_prof_respuestas_1.Caption = '') then
  begin
    //irp1 := strtoint(form1.f_eva_prof1.DBT_eva_prof_respuestas_1.Caption);
    form1.f_eva_prof1.M2_eva_prof_respuestas_1.Lines.LoadFromFile(
      Application.Location + '/Codigos/Unidad ' + IntToStr(numero_u) +
      '/ejercitacion/Pregunta1B.txt');
    form1.f_eva_prof1.M2_eva_prof_respuestas_1.Lines.Text :=
      form1.f_eva_prof1.M2_eva_prof_respuestas_1.Lines.strings[
      StrToInt(form1.f_eva_prof1.DBT_eva_prof_respuestas_1.Caption)];
  end
  else
    form1.f_eva_prof1.M2_eva_prof_respuestas_1.Lines.Text := '';
  if not (form1.f_eva_prof1.DBT_eva_prof_respuestas_2.Caption = '') then
  begin
    form1.f_eva_prof1.M2_eva_prof_respuestas_2.Lines.LoadFromFile(
      Application.Location + '/Codigos/Unidad ' + IntToStr(numero_u) +
      '/ejercitacion/Pregunta2B.txt');
    form1.f_eva_prof1.M2_eva_prof_respuestas_2.Lines.Text :=
      form1.f_eva_prof1.M2_eva_prof_respuestas_2.Lines.strings[
      StrToInt(form1.f_eva_prof1.DBT_eva_prof_respuestas_2.Caption)];
  end
  else
    form1.f_eva_prof1.M2_eva_prof_respuestas_2.Lines.Text := '';
  if not (form1.f_eva_prof1.DBT_eva_prof_respuestas_3.Caption = '') then
  begin
    form1.f_eva_prof1.M2_eva_prof_respuestas_3.Lines.LoadFromFile(
      Application.Location + '/Codigos/Unidad ' + IntToStr(numero_u) +
      '/ejercitacion/Pregunta3B.txt');
    form1.f_eva_prof1.M2_eva_prof_respuestas_3.Lines.Text :=
      form1.f_eva_prof1.M2_eva_prof_respuestas_3.Lines.strings[
      StrToInt(form1.f_eva_prof1.DBT_eva_prof_respuestas_3.Caption)];
  end
  else
    form1.f_eva_prof1.M2_eva_prof_respuestas_3.Lines.Text := '';
  if not (form1.f_eva_prof1.DBT_eva_prof_respuestas_4.Caption = '') then
  begin
    form1.f_eva_prof1.M2_eva_prof_respuestas_4.Lines.LoadFromFile(
      Application.Location + '/Codigos/Unidad ' + IntToStr(numero_u) +
      '/ejercitacion/Pregunta4B.txt');
    form1.f_eva_prof1.M2_eva_prof_respuestas_4.Lines.Text :=
      form1.f_eva_prof1.M2_eva_prof_respuestas_4.Lines.strings[
      StrToInt(form1.f_eva_prof1.DBT_eva_prof_respuestas_4.Caption)];
  end
  else
    form1.f_eva_prof1.M2_eva_prof_respuestas_4.Lines.Text := '';
  if not (form1.f_eva_prof1.DBT_eva_prof_respuestas_5.Caption = '') then
  begin
    form1.f_eva_prof1.M2_eva_prof_respuestas_5.Lines.LoadFromFile(
      Application.Location + '/Codigos/Unidad ' + IntToStr(numero_u) +
      '/ejercitacion/Pregunta5B.txt');
    form1.f_eva_prof1.M2_eva_prof_respuestas_5.Lines.Text :=
      form1.f_eva_prof1.M2_eva_prof_respuestas_5.Lines.strings[
      StrToInt(form1.f_eva_prof1.DBT_eva_prof_respuestas_5.Caption)];
  end
  else
    form1.f_eva_prof1.M2_eva_prof_respuestas_5.Lines.Text := '';
  if not (form1.f_eva_prof1.DBT_eva_prof_respuestas_6.Caption = '') then
  begin
    form1.f_eva_prof1.M2_eva_prof_respuestas_6.Lines.LoadFromFile(
      Application.Location + '/Codigos/Unidad ' + IntToStr(numero_u) +
      '/ejercitacion/Pregunta6B.txt');
    form1.f_eva_prof1.M2_eva_prof_respuestas_6.Lines.Text :=
      form1.f_eva_prof1.M2_eva_prof_respuestas_6.Lines.strings[
      StrToInt(form1.f_eva_prof1.DBT_eva_prof_respuestas_6.Caption)];
  end
  else
    form1.f_eva_prof1.M2_eva_prof_respuestas_6.Lines.Text := '';

end;

procedure manito_profesor();
begin
  form1.f_eva_prof1.Img_eva_prof_notas_1.Visible := False;
  form1.f_eva_prof1.SB_eva_prof_1.Visible := False;
  form1.f_eva_prof1.DBE_eva_prof_nota1.Enabled := False;
  form1.f_eva_prof1.Img_eva_prof_notas_2.Visible := False;
  form1.f_eva_prof1.SB_eva_prof_2.Visible := False;
  form1.f_eva_prof1.DBE_eva_prof_nota2.Enabled := False;
  form1.f_eva_prof1.Img_eva_prof_notas_3.Visible := False;
  form1.f_eva_prof1.SB_eva_prof_3.Visible := False;
  form1.f_eva_prof1.DBE_eva_prof_nota3.Enabled := False;
  form1.f_eva_prof1.Img_eva_prof_notas_4.Visible := False;
  form1.f_eva_prof1.SB_eva_prof_4.Visible := False;
  form1.f_eva_prof1.DBE_eva_prof_nota4.Enabled := False;

  if form1.f_eva_prof1.DBT_eva_prof_notas_a1.Caption = '0' then
  begin
    form1.f_eva_prof1.Img_eva_prof_notas_1.Visible := True;
    form1.f_eva_prof1.SB_eva_prof_1.Visible := True;
    form1.f_eva_prof1.DBE_eva_prof_nota1.Enabled := True;
  end
  else
  begin
    if form1.f_eva_prof1.DBT_eva_prof_notas_a2.Caption = '0' then
    begin
      form1.f_eva_prof1.Img_eva_prof_notas_2.Visible := True;
      form1.f_eva_prof1.SB_eva_prof_2.Visible := True;
      form1.f_eva_prof1.DBE_eva_prof_nota2.Enabled := True;
    end
    else
    begin
      if form1.f_eva_prof1.DBT_eva_prof_notas_a3.Caption = '0' then
      begin
        form1.f_eva_prof1.Img_eva_prof_notas_3.Visible := True;
        form1.f_eva_prof1.SB_eva_prof_3.Visible := True;
        form1.f_eva_prof1.DBE_eva_prof_nota3.Enabled := True;
      end
      else
      begin
        if form1.f_eva_prof1.DBT_eva_prof_notas_a4.Caption = '0' then
        begin
          form1.f_eva_prof1.Img_eva_prof_notas_4.Visible := True;
          form1.f_eva_prof1.SB_eva_prof_4.Visible := True;
          form1.f_eva_prof1.DBE_eva_prof_nota4.Enabled := True;
        end;

      end;

    end;

  end;
end;

procedure manito_alumno();
begin
  //Img_ejr_1
  //if modulo_datos.ZQuery1.FieldByName('Au1').Value = 1 then
  //begin
  //form1.F_ejr1.Img_ejr_2.Visible:=false;
  // form1.F_ejr1.Img_ejr_2.Visible:=true;
  //end;
end;

end.  //FIN DEL MUNDO
