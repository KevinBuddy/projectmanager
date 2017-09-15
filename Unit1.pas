unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLstBox,strutils, ExtCtrls, RzPanel, RzButton,ShellAPI,
  ComCtrls, RzTreeVw, RzShellCtrls, Mask, RzEdit, RzStatus, Buttons,
  RzSpnEdt, RzRadChk, RzSplit, RzListVw, RzGroupBar, RzForms, RzCommon,
  RzLabel, RzTabs, ShadowButton;

type
  TForm1 = class(TForm)
    RzTabbedListBox1: TRzGroupBox;
    LstTimes: TRzTabbedListBox;
    RzPanel1: TRzPanel;
    HdrTimes: THeader;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    RzSizePanel1: TRzSizePanel;
    Panel1: TPanel;
    RzButton1: TRzButton;
    Panel2: TPanel;
    RzShellList1: TRzShellList;
    RzShellList2: TRzShellList;
    RzShellList3: TRzShellList;
    RzShellList4: TRzShellList;
    RzShellList5: TRzShellList;
    RzShellList6: TRzShellList;
    RzToolbar1: TRzToolbar;
    RzRapidFireButton11: TShadowButton;
    RzSpacer3: TRzSpacer;
    RzRapidFireButton6: TShadowButton;
    RzSpacer2: TRzSpacer;
    RzRapidFireButton15: TShadowButton;
    RzRapidFireButton16: TShadowButton;
    RzSpacer5: TRzSpacer;
    RzCheckBox1: TRzCheckBox;
    RzSpacer6: TRzSpacer;
    RzCheckBox2: TRzCheckBox;
    sbrMain: TRzStatusBar;
    stsSection: TRzGlyphStatus;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RzMemo2: TRzMemo;
    Memo1: TMemo;
    ListBox4: TListBox;
    RzGroupBar1: TRzGroupBar;
    tbrMain: TRzToolbar;
    RzRapidFireButton1: TShadowButton;
    RzRapidFireButton2: TShadowButton;
    RzRapidFireButton3: TShadowButton;
    RzRapidFireButton4: TShadowButton;
    RzRapidFireButton5: TShadowButton;
    RzRapidFireButton7: TShadowButton;
    RzRapidFireButton9: TShadowButton;
    RzRapidFireButton12: TShadowButton;
    RzRapidFireButton14: TShadowButton;
    RzSpacer1: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    RzRapidFireButton17: TShadowButton;
    RzVersionInfoStatus2: TRzVersionInfoStatus;
    RzRapidFireButton8: TShadowButton;
    RzSpacer7: TRzSpacer;
    RzRapidFireButton10: TShadowButton;
    RzListBox1: TRzListBox;
    RzSpacer8: TRzSpacer;
    RzSpacer9: TRzSpacer;
    RzSpacer10: TRzSpacer;
    RzSpacer11: TRzSpacer;
    RzSpacer12: TRzSpacer;
    RzSpacer13: TRzSpacer;
    RzSpacer14: TRzSpacer;
    RzSpacer15: TRzSpacer;
    procedure FormCreate(Sender: TObject);
    procedure btnWelcomeClick(Sender: TObject);
    procedure btnFramesClick(Sender: TObject);
    procedure btnTabsClick(Sender: TObject);
    procedure btnEditsClick(Sender: TObject);
    procedure btnComboBoxesClick(Sender: TObject);
    procedure btnListBoxesClick(Sender: TObject);
    procedure btnDisplayClick(Sender: TObject);
    procedure btnDatabaseClick(Sender: TObject);
    procedure btnShellClick(Sender: TObject);
    procedure RzRapidFireButton14Click(Sender: TObject);
    procedure listallsearchedfiles(path:string);
    procedure LoadReadme(pathname:string);
    procedure RzButton1Click(Sender: TObject);
    procedure RzListBox1Click(Sender: TObject);
    procedure listallitems(index:integer);
    procedure RzRapidFireButton6Click(Sender: TObject);
    procedure RzRapidFireButton15Click(Sender: TObject);
    procedure RzRapidFireButton16Click(Sender: TObject);
    procedure RzMemo2Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure RzRapidFireButton17Click(Sender: TObject);
    procedure LstTimesClick(Sender: TObject);
    procedure RzCheckBox2Click(Sender: TObject);
    procedure RzRapidFireButton8Click(Sender: TObject);
    procedure RzRapidFireButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function getselectedindex:integer;
    procedure itemclick(Sender: TObject);
    procedure modifyitem(id:integer);
    procedure dispbackitem(id:integer);
    procedure disporifolder(id:integer);
    procedure dispbackfolder(id:integer);
    procedure checkall;
    procedure imposeback(id:integer);
    procedure category();
    procedure closegroup;
    procedure opengroup;
  end;

var
  Form1: TForm1;
  loading:boolean;
  tabchar:char='	';
  ldate:tdatetime;
  pathstr:string;
  parPath:string='txt\';
  teml1,teml2:TRzShellLocator;
  temlsearch1,temlsearch2,temlsearch3,temlsearch4,temlsearch5,temlsearch6:TRzShellLocator;
  ddirStr,path1,path2:string;
  searchedFileList:Tstringlist;
  searchedProjectName,searchedPname,searchedDest:string;

function DoSearchFile(sDirName:String):Boolean;
function DeleteDirectory(const DirName: string; const UI: Boolean = False): Boolean;
function DoCopyDir(sDirName:String;sToDirName:String):Boolean;
function DoSearchDir(sDirName:String;sSearchDirName:String;temlist:tstrings):Boolean;
function checkup(filepath:string):SYSTEMTIME;
function getLastestDate(sDirName:String):tdatetime;
function DoSearchDir1(sDirName:String;sSearchDirName:String):Boolean;
procedure prusestrtolist(str:string;list:tstrings;sepaChar:char);
implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  try
    searchedFileList:=Tstringlist.Create;
    LstTimes.clear;
    LstTimes.Items.LoadFromFile(parPath+'project.txt');
    listbox1.Clear;
    listbox1.Items.LoadFromFile(parPath+'par.txt');
    try
      listbox2.Items.LoadFromFile(parPath+'export.txt');
    except
    end;
    try
      memo1.lines.LoadFromFile('syspar.txt');
    except
    end;
    teml1:=TRzShellLocator.Create;
    teml2:=TRzShellLocator.Create;
    temlsearch1:=TRzShellLocator.Create;
    temlsearch2:=TRzShellLocator.Create;
    temlsearch3:=TRzShellLocator.Create;
    temlsearch4:=TRzShellLocator.Create;
    temlsearch5:=TRzShellLocator.Create;
    temlsearch6:=TRzShellLocator.Create;
    RzShellList1.FileFilter:='*.exe;*.apk;*.hex;*.app;*.ipa';
    RzShellList2.FileFilter:='*.exe;*.apk;*.hex;*.app;*.ipa';
    RzShellList3.FileFilter:='*.exe;*.apk;*.hex;*.app;*.ipa';
    RzShellList4.FileFilter:='*.exe;*.apk;*.hex;*.app;*.ipa';
    RzShellList5.FileFilter:='*.exe;*.apk;*.hex;*.app;*.ipa';
    RzShellList6.FileFilter:='*.exe;*.apk;*.hex;*.app;*.ipa';
    teml1.PathName:=listbox1.Items[0];
    teml2.PathName:=listbox1.Items[1];
    stsSection.Caption:=inttostr(LstTimes.Count);
    category;
  except
  end;
end;

function getItemsFromLine(oristr:string;var pname,source,dest,datestr,issame,subname:string):boolean;
var
  i,pos1,pos2,pos3,pos4:integer;
begin
  try
    prusestrtolist(oristr,form1.ListBox4.items,char(9));
    if form1.listbox4.Count>0 then
      pname:=form1.listbox4.items[0];
    if form1.listbox4.Count>1 then
      subname:=form1.listbox4.items[1];
    if form1.listbox4.Count>2 then
      source:=form1.listbox4.items[2];
    if form1.listbox4.Count>3 then
      dest:=form1.listbox4.items[3];
    if form1.listbox4.Count>4 then
      datestr:=form1.listbox4.items[4];
    if form1.listbox4.Count>5 then
      issame:=form1.listbox4.items[5];
    if form1.listbox4.Count>0 then
      result:=true
    else
      result:=false;
  except
  end;
end;

function GetFileTimes(FileName : ShortString; var fDate : TDateTime) : Boolean;  
var  
  fHandle : Integer;  
  fTimeC,fTimeA,fTimeM : TFileTime;
  lTime : TFileTime;
  sTime : TSystemTime;
begin { GetFileTimes }
  fHandle := FileOpen(FileName, fmShareDenyNone);
  fDate := 0.0;
  result := (fHandle >= 0);
  if result then
  begin
    GetFileTime(fHandle, @fTimeC, @fTimeA, @fTimeM);
    FileClose(fHandle);
    FileTimeToLocalFileTime(fTimeM, lTime);
    if FileTimeToSystemTime(lTime, sTime) then
      fDate := EncodeDate(sTime.wYear, sTime.wMonth, sTime.wDay) + EncodeTime(sTime.wHour, sTime.wMinute, sTime.wSecond, sTime.wMilliSeconds);
  end;
end; { of GetFileTimes }

function checkup(filepath:string):SYSTEMTIME;
var
    data:   WIN32_FILE_ATTRIBUTE_DATA;
    systime:   SYSTEMTIME;
    local:   FILETIME;
begin
    if(not   GetFileAttributesEx( pchar(filepath),GetFileExInfoStandard,   @data))   then
        RaiseLastWin32Error();
    FileTimeToLocalFileTime(data.ftLastWriteTime,   local);   //
    FileTimeToSystemTime(local,   systime);
    result:=systime;
end;

function DeleteDirectory(const DirName: string; const UI: Boolean = False): Boolean;
var
  fo: TSHFileOpStruct;
begin
  FillChar(fo, SizeOf(fo), 0);
  with fo do
  begin
    Wnd := GetActiveWindow;
    wFunc := FO_DELETE;
    pFrom := PChar(DirName + #0);
    pTo := #0#0;
    fFlags := FOF_NOCONFIRMATION + FOF_SILENT;
  end;
  Result := (SHFileOperation(fo) = 0);
end;

function DoCopyDir(sDirName:String;sToDirName:String):Boolean;
var
	hFindFile:Cardinal;
	t,tfile:String;
	sCurDir:String[255];
	FindFileData:WIN32_FIND_DATA;
begin
//先保存当前目录
	sCurDir:=GetCurrentDir;
	ChDir(sDirName);
	hFindFile:=FindFirstFile(pchar(sDirName+'\*.*'),FindFileData);
	if hFindFile<>-1 then
	begin
		if not DirectoryExists(sToDirName) then
		  ForceDirectories(sToDirName);
		repeat
			tfile:=FindFileData.cFileName;
			if (tfile='.') or (tfile='..') then
			  Continue;
			if FindFileData.dwFileAttributes=FILE_ATTRIBUTE_DIRECTORY then
			begin
				t:=sToDirName+'\'+tfile;
				if not DirectoryExists(t) then
					ForceDirectories(t);
				if sDirName[Length(sDirName)]<>'\' then
					DoCopyDir(sDirName+'\'+tfile,t)
				else
					DoCopyDir(sDirName+tfile,sToDirName+tfile);
			end
			else
			begin
				t:=sToDirName+'\'+tFile;
        if FileExists(t) then
          deletefile(t);
				CopyFile(PChar(tfile),PChar(t),True);
			end;
		until FindNextFile(hFindFile,FindFileData)=false;
		windows.FindClose(hFindFile);
	end
	else
	begin
		ChDir(sCurDir);
		result:=false;
		exit;
	end;
	//回到原来的目录下
	ChDir(sCurDir);
	result:=true;
end;

function DoSearchDir(sDirName:String;sSearchDirName:String;temlist:tstrings):Boolean;
var
	hFindFile:Cardinal;
	t,tfile:String;
	sCurDir:String[255];
	FindFileData:WIN32_FIND_DATA;
begin
//先保存当前目录
	sCurDir:=GetCurrentDir;
  temlist.Clear;
	ChDir(sDirName);
	hFindFile:=FindFirstFile(pchar(sDirName+'\*.*'),FindFileData);
	if hFindFile<>-1 then
	begin
		repeat
			tfile:=FindFileData.cFileName;
			if (tfile='.') or (tfile='..') then
			  Continue;
			if FindFileData.dwFileAttributes=FILE_ATTRIBUTE_DIRECTORY then
			begin
        if DoSearchDir1(sDirName+'\'+tfile,sSearchDirName) then
          temlist.Add(tfile);
			end;
		until FindNextFile(hFindFile,FindFileData)=false;
		windows.FindClose(hFindFile);
	end
	else
	begin
		ChDir(sCurDir);
		result:=false;
		exit;
	end;
	//回到原来的目录下
	ChDir(sCurDir);
	result:=true;
end;

function DoSearchDir1(sDirName:String;sSearchDirName:String):Boolean;
var
	hFindFile:Cardinal;
	t,tfile:String;
	sCurDir:String[255];
	FindFileData:WIN32_FIND_DATA;
begin
//先保存当前目录
	sCurDir:=GetCurrentDir;
	ChDir(sDirName);
	hFindFile:=FindFirstFile(pchar(sDirName+'\*.*'),FindFileData);
  result:=false;
	if hFindFile<>-1 then
	begin
		repeat
			tfile:=FindFileData.cFileName;
			if (tfile='.') or (tfile='..') then
			  Continue;
			if FindFileData.dwFileAttributes=FILE_ATTRIBUTE_DIRECTORY then
			begin
        if tfile=sSearchDirName then
          result:=true;
			end;
		until FindNextFile(hFindFile,FindFileData)=false;
		windows.FindClose(hFindFile);
	end
	else
	begin
		ChDir(sCurDir);
		exit;
	end;
	//回到原来的目录下
	ChDir(sCurDir);
end;

function getLastestDate(sDirName:String):tdatetime;
var
	hFindFile:Cardinal;
  temdate:SYSTEMTIME;
	t,tfile:String;
	sCurDir:String[255];
	FindFileData:WIN32_FIND_DATA;
  temstr:string;
begin
//先保存当前目录
	sCurDir:=GetCurrentDir;
	ChDir(sDirName);
	hFindFile:=FindFirstFile(pchar(sDirName+'\*.*'),FindFileData);
	if hFindFile<>-1 then
	begin
		repeat
			tfile:=FindFileData.cFileName;
			if (tfile='.') or (tfile='..') then
			  Continue;
			if FindFileData.dwFileAttributes=FILE_ATTRIBUTE_DIRECTORY then
			begin
				if sDirName[Length(sDirName)]<>'\' then
					getLastestDate(sDirName+'\'+tfile)
				else
					getLastestDate(sDirName+tfile);
			end
			else
			begin
        temdate:=checkup(tfile);
        if SystemTimeToDateTime(temdate)>ldate then
        begin
          ldate:=SystemTimeToDateTime(temdate);
          pathstr:=tfile;
        end;
			end;
		until FindNextFile(hFindFile,FindFileData)=false;
		windows.FindClose(hFindFile);
	end
	else
	begin
		ChDir(sCurDir);
		result:=0;
		exit;
	end;
	//回到原来的目录下
	ChDir(sCurDir);
	result:=ldate;
end;

procedure TForm1.dispbackitem(id:integer);
var
  projectName,pname,source,dest,datestr_s,issame,fname,subname:string;
  pos1,pos2:integer;
begin
  if (id>=0) then
  begin
    if getItemsFromLine(LstTimes.Items[id],pname,source,dest,datestr_s,issame,subname) then
    begin
      pos1:=pos('\',source);
      pos2:=1;
      while pos1<>0 do
      begin
        pos2:=pos1+1;
        pos1:=posex('\',source,pos1+1);
      end;
      projectName:=copy(source,pos2,length(source)); //保存到的实际目录名称,在日期之后的名称
      path1:=source;
      path2:=dest+'\'+datestr_s+'\'+projectName;
    end;
    listallitems(id);
    rzlistbox1.ItemIndex:=rzlistbox1.count-1;
    searchedProjectName:=projectName;
    searchedPname:=pname;
    searchedDest:=dest;
    label3.Caption:=source;
    label4.Caption:=dest;
//    RzListBox1Click(nil);
    RzVersionInfoStatus2.FieldLabel:=projectName+' * '+source;
  end;
end;

procedure TForm1.btnWelcomeClick(Sender: TObject);
begin
  if form2.RzEdit1.text='' then
  begin
    form2.RzEdit1.text:=listbox1.Items[0];
    form2.RzEdit2.text:=listbox1.Items[1];
    form2.RzSelectFolderDialog1.BaseFolder:=teml1;
    form2.RzSelectFolderDialog2.BaseFolder:=teml2;
  end;
  form2.ret:=false;
  form2.ShowModal;
  if (form2.ret) then
  begin
    listbox1.Items[0]:=form2.RzEdit1.text;
    listbox1.Items[1]:=form2.RzEdit2.text;
    LstTimes.items.Add(form2.RzEdit3.Text+tabchar+form2.RzEdit4.text+tabchar+form2.RzButtonEdit1.Text+tabchar+form2.RzButtonEdit2.Text);
  end;
  LstTimes.Items.SaveToFile(parPath+'project.txt');
  listbox1.Items.SaveToFile(parPath+'par.txt');
  category;
end;

procedure TForm1.modifyitem(id:integer);
var
  pname,source,dest,datestr_s,issame,subname:string;
begin
  if id=-1 then
  begin
    showmessage('请选中一个项目');
  end else
  begin
    form2.ret:=false;
    if getItemsFromLine(LstTimes.Items[id],pname,source,dest,datestr_s,issame,subname) then
    begin
      form2.RzEdit3.text:=pname;
      form2.RzButtonEdit1.Text:=source;
      form2.RzButtonEdit2.Text:=dest;
      form2.RzEdit4.text:=subname;

      form2.ShowModal;
      if (form2.ret) then
      begin
        LstTimes.items[id]:=form2.RzEdit3.text+tabchar+form2.RzEdit4.text+tabchar+form2.RzButtonEdit1.Text+tabchar+form2.RzButtonEdit2.Text;
      end;
      LstTimes.Items.SaveToFile(parPath+'project.txt');
    end;
  end;
end;

procedure TForm1.btnFramesClick(Sender: TObject);
begin
  modifyitem(getselectedindex);
  category;
end;

procedure TForm1.btnTabsClick(Sender: TObject);
var
  index:integer;
begin
  index:=getselectedindex;
  if index=-1 then
  begin
    showmessage('请选中一个项目');
  end else
  begin
    LstTimes.items.Delete(index);
    LstTimes.Items.SaveToFile(parPath+'project.txt');
  end;
  category;
end;

procedure TForm1.disporifolder(id:integer);
var
  pname,source,dest,datestr_s,issame,subname:string;
begin
  if id=-1 then
  begin
    showmessage('请选中一个项目');
  end else
  begin
    if getItemsFromLine(LstTimes.Items[id],pname,source,dest,datestr_s,issame,subname) then
      ShellExecute(Handle,'open','Explorer.exe',pchar(source),nil,1);
  end;
end;

procedure TForm1.btnEditsClick(Sender: TObject);
begin
  disporifolder(getselectedindex);
end;

procedure TForm1.dispbackfolder(id:integer);
var
  pname,source,dest,datestr_s,issame,subname:string;
begin
  if id=-1 then
  begin
    showmessage('请选中一个项目');
  end else
  begin
    if getItemsFromLine(LstTimes.Items[id],pname,source,dest,datestr_s,issame,subname) then
      ShellExecute(Handle,'open','Explorer.exe',pchar(dest),nil,1);
  end;
end;

procedure TForm1.btnComboBoxesClick(Sender: TObject);
begin
  dispbackfolder(getselectedindex);
end;

procedure TForm1.btnListBoxesClick(Sender: TObject);
var
  i,j:integer;
begin
  j:=0;
  for i:=0 to rzlistbox1.Items.Count-1 do
  begin
    if rzlistbox1.Selected[i] then
    begin
      inc(j);
      if j=1 then
        path1:=searchedDest+'\'+RzListBox1.items[i]+'\'+searchedProjectName;
      if j=2 then
      begin
        path2:=searchedDest+'\'+RzListBox1.items[i]+'\'+searchedProjectName;
        break;
      end;
    end;
  end;
  if j=2 then
    ShellExecute(Handle,'open','D:\Program Files (x86)\Microsoft Visual Studio\Common\Tools\WINDIFF.EXE',pchar(path1),pchar(path2),1);
end;

procedure TForm1.listallitems(index:integer);
var
  projectname,pname,source,dest,datestr_s,issame,subname:string;
  pos1,pos2:integer;
begin
  if index=-1 then
  begin
    showmessage('请选中一个项目');
  end else
  begin
    if getItemsFromLine(LstTimes.Items[index],pname,source,dest,datestr_s,issame,subname) then
    begin
      pos1:=pos('\',source);
      pos2:=1;
      while pos1<>0 do
      begin
        pos2:=pos1+1;
        pos1:=posex('\',source,pos1+1);
      end;
      projectName:=copy(source,pos2,length(source));
      DoSearchDir(dest,projectName,RzListBox1.items);
      ddirStr:=dest;
    end;
  end;
end;

procedure TForm1.btnDisplayClick(Sender: TObject);
begin
  ShellExecute(Handle,'open','Explorer.exe',pchar('c:\allover'),nil,1);

end;
//检查
procedure TForm1.btnDatabaseClick(Sender: TObject);
begin
  checkall;
end;

procedure TForm1.checkall;
var
  i,pos1,pos2,pos3:integer;
  temstr,pname,projectname,source,dest,datestr_s,issame,subname:string;
begin
  try
    RzVersionInfoStatus1.FieldLabel:='...';
    application.ProcessMessages;
    for i:=0 to LstTimes.Count-1 do
    begin
      temstr:=LstTimes.items[i];
      if getItemsFromLine(temstr,pname,source,dest,datestr_s,issame,subname) then
      begin
        if pos('无',pname)>0 then continue;
        if not DirectoryExists(dest) then//如果备份目录不存在，建立
          ForceDirectories(dest);
        ldate:=0;
        datestr_s:=formatdatetime('yyyy.mm.dd',getLastestDate(source));
        pos1:=pos('\',source);
        pos2:=1;
        while pos1<>0 do
        begin
          pos2:=pos1+1;
          pos1:=posex('\',source,pos1+1);
        end;
        projectName:=copy(source,pos2,length(source));
        if (not DirectoryExists(dest+'\'+datestr_s)) then
          LstTimes.Items[i]:=pname+tabchar+subname+tabchar+source+tabchar+dest+tabchar+datestr_s+tabchar+'备份日期不存在'
        else
        if (not DirectoryExists(dest+'\'+datestr_s+'\'+projectName)) then
          LstTimes.Items[i]:=pname+tabchar+subname+tabchar+source+tabchar+dest+tabchar+datestr_s+tabchar+'备份项目不存在'
        else
          LstTimes.Items[i]:=pname+tabchar+subname+tabchar+source+tabchar+dest+tabchar+datestr_s+tabchar+'yes';
      end else
      begin
        showmessage('格式错误,缺少分隔符');
        exit;
      end;
    end;
    RzVersionInfoStatus1.FieldLabel:='完成';
    LstTimes.Sorted:=true;
    LstTimes.Items.SaveToFile(parPath+'project.txt');
    stsSection.Caption:=inttostr(LstTimes.Count);
  except
    showmessage(pname+'error');
  end;
end;

procedure TForm1.imposeback(id:integer);
var
  pos1,pos2:integer;
  temstr,pname,projectname,source,dest,datestr_s,issame,subname:string;
  datestr:string;
begin
  try
    RzRapidFireButton15.Font.Color:=clBlack;
    RzRapidFireButton6.Font.Color:=clBlack;
    RzRapidFireButton16.Font.Color:=clBlack;
    RzRapidFireButton11.Font.Color:=clBlack;
    if id=-1 then
    begin
      showmessage('请选择项目');
      exit;
    end;
    RzVersionInfoStatus1.FieldLabel:='...';
    application.ProcessMessages;
    temstr:=LstTimes.items[id];
    if getItemsFromLine(temstr,pname,source,dest,datestr_s,issame,subname) then
    begin
      if pos('无',pname)>0 then exit;
      if not DirectoryExists(dest) then//如果备份目录不存在，建立
        ForceDirectories(dest);
      ldate:=0;
      datestr_s:=formatdatetime('yyyy.mm.dd',getLastestDate(source));
      pos1:=pos('\',source);
      pos2:=1;
      while pos1<>0 do
      begin
        pos2:=pos1+1;
        pos1:=posex('\',source,pos1+1);
      end;
      projectName:=copy(source,pos2,length(source));
      datestr:=datestr_s;
      if not DirectoryExists(dest+'\'+datestr) then//如果带日期的备份目录不存在，建立
        ForceDirectories(dest+'\'+datestr);
      if DirectoryExists(dest+'\'+datestr+'\'+projectName) then //如果备份目录下已经存在项目目录，删除
        DeleteDirectory(dest+'\'+datestr+'\'+projectName,false);
      deletefile(source+'\'+'readme.txt');
      DoCopyDir(source,dest+'\'+datestr+'\'+projectName);
    end else
    begin
      showmessage('格式错误,缺少分隔符');
      exit;
    end;
    btnDatabaseClick(nil);
    RzVersionInfoStatus1.FieldLabel:='强制备份完成';
    RzRapidFireButton15.Font.Color:=clBlack;
    RzRapidFireButton6.Font.Color:=clBlack;
    RzRapidFireButton16.Font.Color:=clBlack;
    RzRapidFireButton11.Font.Color:=clRed;
    dispbackitem(id);
  except
    on e:exception do
      showmessage(e.message);
  end;
end;

procedure TForm1.btnShellClick(Sender: TObject);
begin
  imposeback(getselectedindex);
end;

procedure TForm1.RzRapidFireButton14Click(Sender: TObject);
var
	sCurDir:String[255];
begin
	sCurDir:=GetCurrentDir;
  ShellExecute(Handle,'open','notepad.exe',pchar(parPath+'\export.txt'),nil,1);
end;

procedure TForm1.RzButton1Click(Sender: TObject);
begin
  if RzListBox1.itemindex=-1 then
  begin
    showmessage('请选中一个日期');
  end else
  begin
    ShellExecute(Handle,'open','Explorer.exe',pchar(ddirStr+'\'+RzListBox1.items[RzListBox1.itemindex]),nil,1);
  end;
end;

procedure TForm1.listallsearchedfiles(path:string);
var
  i:integer;
begin
  searchedFileList.Clear;
  DoSearchFile(path);
  RzShellList1.Visible:=false;
  RzShellList2.Visible:=false;
  RzShellList3.Visible:=false;
  RzShellList4.Visible:=false;
  RzShellList5.Visible:=false;
  RzShellList6.Visible:=false;
  if searchedFileList.count>0 then
  begin
    temlsearch1.PathName:=searchedFileList.Names[0];
    RzShellList1.Folder:=temlsearch1;
    RzShellList1.Visible:=true;
    RzShellList1.Columns[0].Width:=250;
  end;
  if searchedFileList.count>1 then
  begin
    temlsearch2.PathName:=searchedFileList.Names[1];
    RzShellList2.Folder:=temlsearch2;
    RzShellList2.Visible:=true;
    RzShellList2.Columns[0].Width:=250;
  end;
  if searchedFileList.count>2 then
  begin
    temlsearch3.PathName:=searchedFileList.Names[2];
    RzShellList3.Folder:=temlsearch3;
    RzShellList3.Visible:=true;
    RzShellList3.Columns[0].Width:=250;
  end;
  if searchedFileList.count>3 then
  begin
    temlsearch4.PathName:=searchedFileList.Names[3];
    RzShellList4.Folder:=temlsearch4;
    RzShellList4.Visible:=true;
    RzShellList4.Columns[0].Width:=250;
  end;
  if searchedFileList.count>4 then
  begin
    temlsearch5.PathName:=searchedFileList.Names[4];
    RzShellList5.Folder:=temlsearch5;
    RzShellList5.Visible:=true;
    RzShellList5.Columns[0].Width:=250;
  end;
  if searchedFileList.count>5 then
  begin
    temlsearch6.PathName:=searchedFileList.Names[5];
    RzShellList6.Folder:=temlsearch6;
    RzShellList6.Visible:=true;
    RzShellList6.Columns[0].Width:=250;
  end;
end;

procedure TForm1.LoadReadme(pathname:string);
begin
  try
    loading:=true;
    RzMemo2.Lines.LoadFromFile(ddirStr+'\'+pathname+'\'+searchedProjectName+'\readme.txt');
  except
    on e:exception do
    begin
      //showmessage(e.message);
      RzMemo2.Lines.Clear;
      RzMemo2.Lines.Add(pathname);
    end;
  end;
  loading:=false;
end;

procedure TForm1.RzListBox1Click(Sender: TObject);
var
  name:string;
begin
  if rzlistbox1.itemindex<>-1 then
  begin
    name:=rzlistbox1.items[rzlistbox1.itemindex];
    LoadReadme(name);
    listallsearchedfiles(ddirStr+'\'+name+'\'+searchedProjectName);
  end;
end;

function DoSearchFile(sDirName:String):Boolean;
var
	hFindFile:Cardinal;
	temstr,tfile:String;
	sCurDir:String[255];
	FindFileData:WIN32_FIND_DATA;
begin
//先保存当前目录
	sCurDir:=GetCurrentDir;
	ChDir(sDirName);
	hFindFile:=FindFirstFile(pchar(sDirName+'\*.*'),FindFileData);
	if hFindFile<>-1 then
	begin
		repeat
			tfile:=FindFileData.cFileName;
			if (tfile='.') or (tfile='..') then
			  Continue;
			if FindFileData.dwFileAttributes=FILE_ATTRIBUTE_DIRECTORY then
			begin
				if sDirName[Length(sDirName)]<>'\' then
					DoSearchFile(sDirName+'\'+tfile)
				else
					DoSearchFile(sDirName+tfile);
			end
			else
			begin//添加到列表
        if searchedFileList.IndexOfName(sDirName)=-1 then
        begin
          temstr:=ExtractFileExt(tfile);
          if (temstr='.exe') then
            searchedFileList.Add(sDirName+'=exe');
          if (temstr='.hex') then
            searchedFileList.Add(sDirName+'=hex');
          if (temstr='.apk') then
            searchedFileList.Add(sDirName+'=apk');
          if (temstr='.app') then
            searchedFileList.Add(sDirName+'=app');
          if (temstr='.ipa') then
            searchedFileList.Add(sDirName+'=ipa');
        end;
			end;
		until FindNextFile(hFindFile,FindFileData)=false;
		windows.FindClose(hFindFile);
	end
	else
	begin
		ChDir(sCurDir);
		result:=false;
		exit;
	end;
	//回到原来的目录下
	ChDir(sCurDir);
	result:=true;
end;

procedure TForm1.RzRapidFireButton6Click(Sender: TObject);
var
  ldatestr,temstr,copyoverpath,projectname,pname,source,dest,datestr_s,issame:string;
  i,j,pos1,pos2,enum:integer;
  temdate,ldate:tdatetime;
  temdatestr:string;
  rarsource:string;
begin
  if (RzListBox1.itemindex=-1) then
  begin
    showmessage('请选择');
    exit;
  end;
  RzVersionInfoStatus1.FieldLabel:='...';
  application.ProcessMessages;
  copyoverpath:='c:\allover';
  enum:=0;
  begin
    begin
      begin
        begin
          ldatestr:=rzlistbox1.items[rzlistbox1.itemindex];
          if not DirectoryExists(copyoverpath+'\'+searchedPname) then
            ForceDirectories(copyoverpath+'\'+searchedPname);
          if not DirectoryExists(copyoverpath+'\'+searchedPname+'\'+ldatestr) then
            ForceDirectories(copyoverpath+'\'+searchedPname+'\'+ldatestr);
          if not DirectoryExists(copyoverpath+'\'+searchedPname+'\'+ldatestr+'\'+searchedProjectName) then
            ForceDirectories(copyoverpath+'\'+searchedPname+'\'+ldatestr+'\'+searchedProjectName);
          DoCopyDir(searchedDest+'\'+ldatestr+'\'+searchedProjectName,copyoverpath+'\'+searchedPname+'\'+ldatestr+'\'+searchedProjectName);
          rarsource:=copyoverpath+'\'+searchedPname+'\'+ldatestr+'\'+searchedProjectName;
          if RzCheckBox1.Checked then
            ShellExecute(Handle,'open','winrar.exe',pchar('a -as -r -ep1 -df '+rarsource+' '+rarsource),nil,1);
          inc(enum);
          if listbox2.Items.IndexOf(searchedDest+'\'+ldatestr+'\'+searchedProjectName)=-1 then
            listbox2.items.Add(searchedDest+'\'+ldatestr+'\'+searchedProjectName);
        end;
        application.ProcessMessages;
      end;
    end;
  end;
  listbox2.Items.SaveToFile(parPath+'export.txt');
  RzVersionInfoStatus1.FieldLabel:='导出指定完成'+inttostr(enum);
  RzRapidFireButton15.Font.Color:=clBlack;
  RzRapidFireButton6.Font.Color:=clRed;
end;

procedure TForm1.RzRapidFireButton15Click(Sender: TObject);
var
  copyoverpath:string;
begin
  RzVersionInfoStatus1.FieldLabel:='...';
  copyoverpath:='c:\allover';
  DeleteDirectory(copyoverpath,false);
  ForceDirectories(copyoverpath);
  RzVersionInfoStatus1.FieldLabel:='清楚导出目录完成';
  RzRapidFireButton11.Font.Color:=clBlack;
  RzRapidFireButton15.Font.Color:=clRed;
end;

procedure TForm1.RzRapidFireButton16Click(Sender: TObject);
var
  copyoverpath:string;
begin
  if (memo1.Text<>'') then
  begin
    RzVersionInfoStatus1.FieldLabel:='...';
    application.ProcessMessages;
    copyoverpath:='c:\allover';
    DoCopyDir(copyoverpath,memo1.Text);
    RzVersionInfoStatus1.FieldLabel:='上传到ondrive完成';
    RzRapidFireButton6.Font.Color:=clBlack;
    RzRapidFireButton16.Font.Color:=clRed;
  end;
end;

procedure TForm1.RzMemo2Change(Sender: TObject);
var
  name:string;
begin
  if not loading then
  begin
    if rzlistbox1.itemindex<>-1 then
    begin
      name:=rzlistbox1.items[rzlistbox1.itemindex];
      RzMemo2.Lines.SaveToFile(ddirStr+'\'+name+'\'+searchedProjectName+'\readme.txt');
    end;
  end;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  memo1.Lines.SaveToFile('syspar.txt');
end;

procedure TForm1.RzRapidFireButton17Click(Sender: TObject);
begin
  if height>80 then
    height:=80
  else
    height:=1000;
end;

procedure prusestrtolist(str:string;list:tstrings;sepaChar:char);
var
  pos1,pos2:integer;
  item:string;
begin
  list.Clear;
  pos1:=1;
  pos2:=pos(sepaChar,str);
  while pos2>0 do
  begin
    item:=copy(str,pos1,pos2-pos1);
    if (item<>sepaChar) and (item<>'') then
      list.Add(item);
    pos1:=pos2+1;
    if sepaChar<>'#' then
      str[pos2]:='#'
    else
      str[pos2]:=',';
    pos2:=pos(sepaChar,str);
  end;
  item:=copy(str,pos1,length(str));
  if (item<>';') and (item<>',') and (item<>'') then
    list.Add(item);
end;

procedure TForm1.LstTimesClick(Sender: TObject);
begin
  dispbackitem(LstTimes.itemindex);
end;

procedure TForm1.RzCheckBox2Click(Sender: TObject);
begin
  RzCheckBox1.Enabled:=RzCheckBox2.checked;
  RzRapidFireButton3.Enabled:=RzCheckBox2.checked;
end;

procedure TForm1.category;
var
  i:integer;
  projectName,pname,source,dest,datestr_s,issame,fname,subname:string;
  temgroup:trzgroup;
  temitem:trzgroupitem;
  procedure additems(gname:string;iname:string;id:integer);
  var
    j,index:integer;
    found:boolean;
  begin
    found:=false;
    for j:=0 to RzGroupBar1.GroupCount-1 do
    begin
      if RzGroupBar1.Groups[j].Caption=gname then
      begin
        RzGroupBar1.Groups[j].items.Add;
        index:=RzGroupBar1.Groups[j].items.Count-1;
        RzGroupBar1.Groups[j].items[index].Caption:=subname;
        RzGroupBar1.Groups[j].items[index].tag:=id;
        RzGroupBar1.Groups[j].items[index].OnClick:=itemclick;
        found:=true;
        break;
      end;
    end;
    if not found then
    begin
      temgroup:=trzgroup.Create(nil);
      temgroup.ShowItemSelection:=true;
      temgroup.Parent:=RzGroupBar1;
      temgroup.Caption:=gname;
      RzGroupBar1.AddGroup(temgroup);
      temgroup.CaptionColor:=clHotLight;
      temgroup.DividerColor:=clHighlight;
      temgroup.SelectionColor:=clHotLight;
      temgroup.Font.Color:=clblack;
      temgroup.CaptionFont.Color:=clwhite;
      index:=RzGroupBar1.GroupCount-1;
      temitem:=temgroup.items.add;
      temitem.Caption:=subname;
      temitem.Tag:=id;
      temitem.OnClick:=itemclick;
    end;
  end;
begin
  while RzGroupBar1.GroupCount<>0 do
    RzGroupBar1.RemoveGroup(RzGroupBar1.Groups[0]);
  for i:=0 to LstTimes.count-1 do
  begin
    if getItemsFromLine(LstTimes.Items[i],pname,source,dest,datestr_s,issame,subname) then
      additems(pname,subname,i);
  end;
  opengroup;
end;

procedure TForm1.closegroup;
var
  i:integer;
begin
  for i:=0 to RzGroupBar1.GroupCount-1 do
    RzGroupBar1.Groups[i].Close;
end;

procedure TForm1.opengroup;
var
  i:integer;
begin
  for i:=0 to RzGroupBar1.GroupCount-1 do
    RzGroupBar1.Groups[i].open;
end;

procedure TForm1.RzRapidFireButton8Click(Sender: TObject);
begin
  opengroup;
end;

procedure TForm1.RzRapidFireButton10Click(Sender: TObject);
begin
  closegroup;
end;

function TForm1.getselectedindex:integer;
var
  i,j:integer;
begin
  result:=-1;
  for i:=0 to RzGroupBar1.GroupCount-1 do
  begin
    for j:=0 to RzGroupBar1.groups[i].Items.count-1 do
    begin
      if RzGroupBar1.groups[i].Items[j].Selected then
      begin
        result:=RzGroupBar1.Groups[i].SelectedItem.tag;
        break;
      end;
    end;
  end;
end;

procedure TForm1.itemclick(Sender: TObject);
var
  i,j:integer;
begin
  for i:=0 to RzGroupBar1.GroupCount-1 do
  begin
    if TRzGroupitem(sender).Group<>RzGroupBar1.Groups[i] then
      if RzGroupBar1.Groups[i].SelectedItem<>nil then
        RzGroupBar1.Groups[i].SelectedItem.Selected:=false;
  end;
  if TRzGroupitem(sender)<>nil then
    dispbackitem(TRzGroupitem(sender).Tag);
end;

end.

