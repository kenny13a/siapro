program SIAPro;

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  zcomponent,
  Unit1,
  um_datos,
  ulogin,
  u_contenidos,
  u_ejr,
  u_eva,
  u_c_contra,
  u_eva_prof,
  u_explicacion;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TModulo_Datos, Modulo_Datos);
  Application.CreateForm(TFlogin, Flogin);
  Flogin.showmodal;
  Application.Run;
end.
