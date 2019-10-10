unit ulogin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, DBCtrls;

type

  { TFlogin }

  TFlogin = class(TForm)
    B_ingresar: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Edt_usuario: TEdit;
    Edt_contra: TEdit;
    GB_login: TGroupBox;
    I_logo: TImage;
    L_usuario: TLabel;
    L_contra: TLabel;
    procedure B_ingresarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

procedure vista_administrador();
procedure vista_alumno();
procedure vista_profesor();

var
  Flogin: TFlogin;

implementation

uses
  um_datos, Unit1;

{$R *.lfm}

{ TFlogin }

procedure TFlogin.FormCreate(Sender: TObject);
begin
  Edt_contra.Text := '';
end;

procedure TFlogin.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  if Flogin.Tag = 0 then  //si login fue aceptado entonces no se cierra el programa
    if MessageDlg('¿Seguro que desea salir?', mtWarning, [mbYes, mbNo], 0) = 6 then
      application.terminate
    else
      CloseAction := caNone; //cancela la acción cerrar
end;

procedure TFlogin.B_ingresarClick(Sender: TObject);
var
  Cadena_SQL: string; //Cadena del comando SQL a ejecutar
begin
  Cadena_SQL := 'select * from usuarios where apodo = ' + #39 +
    lowercase(Edt_usuario.Text) + #39;
  Modulo_Datos.ZQuery1.SQL.Clear;
  Modulo_Datos.ZQuery1.SQL.Text := Cadena_SQL;
  Modulo_Datos.ZQuery1.ExecSQL;
  Modulo_Datos.ZQuery1.Open;
  if DBText2.Caption = '' then
    ShowMessage('No existe el usuario')
  else
  if Edt_contra.Text = DBText1.Caption then
  begin
    //showmessage('correcto');
    if DBText3.Caption = '0' then     //entra administrador
    begin
      vista_administrador;
    end
    else
    begin                          //entra otro usuario
      if DBText3.Caption = '1' then
        vista_alumno
      else
        vista_profesor;
    end;
    Flogin.Tag := 1;
    Flogin.Close;
  end
  else
    ShowMessage('Contraseña incorrecta');
end;

procedure vista_administrador();
begin
  form1.B_administrar.Visible := True;
  form1.GB_opciones.Height := 144;
  Form1.L_alumno.Caption := 'Administrador';
  form1.B_evaluacion.Visible := False;
  form1.F_contenidos1.B_contenidos_eva.Visible := False;
  form1.B_administrar.Tag := 0;
  form1.b_administrar.Caption := 'Administrar Usuarios';
  form1.f_administrar1.GB_adm_usuarios1.Visible := False;

  //agregado 10/12/2017
  form1.B_evaluar_profesor.Visible := False;

  form1.F_ejr1.B_ejr_2.Enabled := True;
  form1.F_ejr1.B_ejr_3.Enabled := True;
  form1.F_ejr1.B_ejr_4.Enabled := True;

  form1.F_ejr1.Img_ejr_1.Visible := False;
  form1.F_ejr1.Img_ejr_2.Visible := False;
  form1.F_ejr1.Img_ejr_3.Visible := False;
  form1.F_ejr1.Img_ejr_4.Visible := False;
  try
    form1.I_principal.Visible := True;
  form1.I_principal.Align := alclient;
  form1.I_principal.Picture.LoadFromFile(Application.Location +
    '/logos/LogoSample_ByTailorBrands (3)_splash.jpg');
  except
    showmessage('La imagen de fondo no pudo ser cargada');
  end;
end;

procedure vista_alumno();
begin
  form1.B_administrar.Visible := False;
  form1.GB_opciones.Height := 144 - 28;
  Form1.L_alumno.Caption := 'Alumno';
  form1.B_evaluacion.Visible := True;
  form1.F_contenidos1.B_contenidos_eva.Visible := True;

  //agregado 10/12/2017
  form1.B_evaluar_profesor.Visible := False;
  //Autorizaciones
  form1.F_ejr1.B_ejr_2.Enabled := False;
  form1.F_ejr1.B_ejr_3.Enabled := False;
  form1.F_ejr1.B_ejr_4.Enabled := False;
  form1.F_ejr1.Img_ejr_1.Visible := True;
  form1.F_ejr1.Img_ejr_2.Visible := False;
  form1.F_ejr1.Img_ejr_3.Visible := False;
  form1.F_ejr1.Img_ejr_4.Visible := False;

  if modulo_datos.ZQuery1.FieldByName('Au1').Value = 1 then
  begin
    //showmessage('ya aprobo la unidad 1');
    form1.F_ejr1.Img_ejr_1.Visible := False;
    form1.F_ejr1.B_ejr_2.Enabled := True;
    form1.F_ejr1.Img_ejr_2.Visible := True;
    form1.F_ejr1.Img_ejr_3.Visible := False;
    form1.F_ejr1.Img_ejr_4.Visible := False;
  end;
  if modulo_datos.ZQuery1.FieldByName('Au2').Value = 1 then
  begin
    //showmessage('ya aprobo la unidad 2');
    form1.F_ejr1.Img_ejr_1.Visible := False;
    form1.F_ejr1.Img_ejr_2.Visible := False;
    form1.F_ejr1.B_ejr_3.Enabled := True;
    form1.F_ejr1.Img_ejr_3.Visible := True;
    form1.F_ejr1.Img_ejr_4.Visible := False;
  end;
  if modulo_datos.ZQuery1.FieldByName('Au3').Value = 1 then
  begin
    //showmessage('ya aprobo la unidad 3');
    form1.F_ejr1.Img_ejr_1.Visible := False;
    form1.F_ejr1.Img_ejr_2.Visible := False;
    form1.F_ejr1.Img_ejr_3.Visible := False;
    form1.F_ejr1.B_ejr_4.Enabled := True;
    form1.F_ejr1.Img_ejr_4.Visible := True;
  end;

    try
     form1.I_principal.Visible := True;
  form1.I_principal.Align := alclient;
    form1.I_principal.Picture.LoadFromFile(Application.Location +
    '/logos/LogoSample_ByTailorBrands (3)_splash.jpg');
  except
    showmessage('La imagen de fondo no pudo ser cargada');
  end;
end;

procedure vista_profesor();
begin
  form1.B_administrar.Visible := True;
  form1.GB_opciones.Height := 144;
  Form1.L_alumno.Caption := 'Profesor';
  form1.B_evaluacion.Visible := False;
  form1.F_contenidos1.B_contenidos_eva.Visible := False;
  form1.B_administrar.Tag := 2;
  form1.b_administrar.Caption := 'Administrar Alumnos';
  form1.f_administrar1.GB_adm_usuarios1.Visible := True;
  //agregado 10/12/2017
  form1.B_evaluar_profesor.Visible := True;
  form1.F_ejr1.B_ejr_2.Enabled := True;
  form1.F_ejr1.B_ejr_3.Enabled := True;
  form1.F_ejr1.B_ejr_4.Enabled := True;

  form1.f_administrar1.GB_adm_usuarios1.Height := 305;
  form1.f_administrar1.GB_adm_usuarios1.Top := 2;

  form1.F_ejr1.Img_ejr_1.Visible := False;
  form1.F_ejr1.Img_ejr_2.Visible := False;
  form1.F_ejr1.Img_ejr_3.Visible := False;
  form1.F_ejr1.Img_ejr_4.Visible := False;

    try
      form1.I_principal.Visible := True;
  form1.I_principal.Align := alclient;
    form1.I_principal.Picture.LoadFromFile(Application.Location +
    '/logos/LogoSample_ByTailorBrands (3)_splash.jpg');
  except
    showmessage('La imagen de fondo no pudo ser cargada');
  end;
end;

end.
