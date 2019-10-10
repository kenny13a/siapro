unit u_c_contra;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, DBCtrls, StdCtrls, ExtCtrls;

type

  { TF_c_contra }

  TF_c_contra = class(TFrame)
    B_c_contra_cerrar: TButton;
    B_c_contra_cambiar: TButton;
    B_c_contra_cerrar1: TButton;
    DBT_c_contra_contra0: TDBText;
    DBT_c_contra_usuario: TDBText;
    E_c_contra_contra2: TEdit;
    E_c_contra_contra1: TEdit;
    L_c_contra_1: TLabel;
    L_c_contra_2: TLabel;
    L_c_contra_3: TLabel;
    P_c_contra_superior: TPanel;
  private
    { private declarations }
  public
    { public declarations }
  end;

implementation

{$R *.lfm}

end.
