unit um_datos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, FileUtil, ZConnection, ZDataset, Forms, Dialogs;

type

  { TModulo_Datos }

  TModulo_Datos = class(TDataModule)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    ZTable1: TZTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Modulo_Datos: TModulo_Datos;

implementation

{$R *.lfm}

{ TModulo_Datos }

procedure TModulo_Datos.DataModuleCreate(Sender: TObject);
begin
  try
  ZConnection1.Connected := False;
  ZConnection1.Database := application.location + 'SIAPro_DB.db3';
  ZConnection1.Connect;
  except
     showmessage('No pude abrir la base de datos');
  end;
end;

end.
