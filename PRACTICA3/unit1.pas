unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Borrar: TButton;
    Cerrar: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure BorrarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CerrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);

  var

    nombre:String;
    extension:String;
    Archivo:String;
    Aux:String;
    Ubicacion:String;
    Ub:String;
    Punto:String;

    F:TextFile;

  begin

    If not DirectoryExists( ExtractFilePath(Application.Exename) + '\ARVO') then
          CreateDir(ExtractFilePath(Application.Exename) + '\ARVO') ;

    nombre:=Edit1.Text;
    extension:=Edit2.Text;
    Punto:='.';
    Ub:= ExtractFilePath(Application.Exename) + 'ARVO\';
    Aux:=Concat(Punto,extension);
    Ubicacion:=Concat(nombre,Aux);
    Archivo:=Concat(Ub,Ubicacion);
    AssignFile(F,Archivo);

    if FileExists(Archivo)then
       begin
              MessageDlg('El archivo ya existe, favor de utilizar otro nombre ', mtInformation, [mbOK], 0);
              edit1.clear;
              edit2.clear;
              edit1.setfocus;
       end
    else
       begin
              {$I-}
              rewrite( F );
              {$I+}
              MessageDlg('El archivo fue guardado exitosamente ', mtInformation, [mbOK], 0);
              edit1.clear;
              edit2.clear;
              edit1.setfocus;

       end;




  end;

procedure TForm1.CerrarClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
                      edit1.setfocus;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
                 //  edit1.setfocus;
end;

procedure TForm1.BorrarClick(Sender: TObject);
begin
   edit1.clear;
   edit2.clear;
   edit1.setfocus;

end;





end.

