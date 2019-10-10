unit u_contenidos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, ExtCtrls, StdCtrls;

type

  { TF_contenidos }

  TF_contenidos = class(TFrame)
    B_contenidos_cerrar: TButton;
    B_contenidos_eva: TButton;
    B_contenidos_ejr: TButton;
    B_contenidos_exp: TButton;
    I_contenidos_1: TImage;
    P_contenidos_1: TPanel;
  private
    { private declarations }
  public
    { public declarations }
  end;

implementation

{$R *.lfm}

end.
