unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, Mask, RzEdit, RzBtnEdt, RzShellDialogs;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    RzButtonEdit1: TRzButtonEdit;
    RzButtonEdit2: TRzButtonEdit;
    RzSelectFolderDialog1: TRzSelectFolderDialog;
    RzSelectFolderDialog2: TRzSelectFolderDialog;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    Label3: TLabel;
    Label4: TLabel;
    RzEdit4: TRzEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RzButtonEdit1ButtonClick(Sender: TObject);
    procedure RzButtonEdit2ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ret:boolean;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  if (RzButtonEdit1.Text='') or (RzButtonEdit2.Text='') or (RzEdit4.Text='') then
  begin
    showmessage('²»ÄÜÎª¿Õ');
  end else
  begin
    ret:=true;
    close;
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  ret:=false;
  close;
end;

procedure TForm2.RzButtonEdit1ButtonClick(Sender: TObject);
begin
  if RzSelectFolderDialog1.Execute then
  begin
    RzButtonEdit1.Text:=RzSelectFolderDialog1.SelectedFolder.PathName;
  end;
end;

procedure TForm2.RzButtonEdit2ButtonClick(Sender: TObject);
begin
  if RzSelectFolderDialog2.Execute then
  begin
    RzButtonEdit2.Text:=RzSelectFolderDialog2.SelectedFolder.PathName;
  end;
end;

end.
