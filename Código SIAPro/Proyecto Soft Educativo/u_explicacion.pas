unit u_explicacion;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, StdCtrls, ExtCtrls;

type

  { TFrame1 }

  TFrame1 = class(TFrame)
    B_exp_10: TButton;
    B_exp_11: TButton;
    B_exp_9: TButton;
    B_exp_cerrar: TButton;
    B_exp_7: TButton;
    B_exp_6: TButton;
    B_exp_5: TButton;
    B_explicacion_1: TButton;
    B_explicacion_2: TButton;
    B_explicacion_3: TButton;
    B_explicacion_u4: TButton;
    B_exp_8: TButton;
    EB_exp_1: TEdit;
    GB_exp_1: TGroupBox;
    I_exp_1: TImage;
    L_exp_3: TLabel;
    L_explicacion_2: TLabel;
    L_explicacion_1: TLabel;
    P_exp_superior: TPanel;
    P_exp_1: TPanel;
    P_exp_1_1: TPanel;

  private
    { private declarations }
  public
    { public declarations }
  end;

implementation

uses unit1;

{$R *.lfm}
var
  cuenta: integer;

{ TFrame1 }

{procedure TFrame1.B_explicacion_2Click(Sender: TObject);
begin
  P_exp_1.Visible := True;
  P_exp_1.Align := alclient;
  form1.B_ejercitacion.Enabled := False;
  form1.B_evaluacion.Enabled := False;
  cuenta := 1;
  EB_exp_1.Text := IntToStr(cuenta);
  I_exp_1.Picture.LoadFromFile(Application.Location +
    '/Codigos/Unidad 1/Explicaciones/unidad1pag1.jpg');
  B_exp_6.Enabled := False;
  L_exp_3.Caption := '9';

end; }

{procedure TFrame1.B_exp_6Click(Sender: TObject);
begin
  cuenta := cuenta - 1;
  B_exp_7.Enabled := True;
  if cuenta < 2 then
  begin
    B_exp_6.Enabled := False;
    B_exp_7.Enabled := True;
    cuenta := 1;
    I_exp_1.Picture.LoadFromFile(Application.Location +
      '/Codigos/Unidad 1/Explicaciones/unidad1pag1.jpg');
  end
  else
  begin
    case cuenta of
      1: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag1.jpg');
      2: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag2.jpg');
      3: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag3.jpg');
      4: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag4.jpg');
      5: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag5.jpg');
      6: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag6.jpg');
      7: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag7.jpg');
      8: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag8.jpg');
      else
        B_exp_6.Enabled := False;
        B_exp_7.Enabled := True;
        cuenta := 1;
    end;
  end;
  EB_exp_1.Text := IntToStr(cuenta);
end;

procedure TFrame1.B_exp_7Click(Sender: TObject);
begin
  cuenta := cuenta + 1;
  B_exp_6.Enabled := True;

  if cuenta > 8 then
  begin
    B_exp_6.Enabled := True;
    B_exp_7.Enabled := False;
    cuenta := 9;
    I_exp_1.Picture.LoadFromFile(Application.Location +
      '/Codigos/Unidad 1/Explicaciones/unidad1pag9.jpg');
  end
  else
  begin
    case cuenta of
      2: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag2.jpg');
      3: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag3.jpg');
      4: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag4.jpg');
      5: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag5.jpg');
      6: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag6.jpg');
      7: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag7.jpg');
      8: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag8.jpg');
      9: I_exp_1.Picture.LoadFromFile(Application.Location +
          '/Codigos/Unidad 1/Explicaciones/unidad1pag9.jpg');
      else
        B_exp_6.Enabled := True;
        B_exp_7.Enabled := False;
        cuenta := 9;
    end;
  end;
  EB_exp_1.Text := IntToStr(cuenta);
end;

procedure TFrame1.B_exp_8Click(Sender: TObject);
begin
  cuenta := 1;
  P_exp_1.Visible := False;

  form1.B_explicacion.Enabled := True;
  form1.B_ejercitacion.Enabled := True;
  form1.B_evaluacion.Enabled := True;

end;   }

end.
