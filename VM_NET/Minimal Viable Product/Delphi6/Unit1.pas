unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdUDPClient, IdBaseComponent, IdComponent, IdUDPBase,
  IdUDPServer, IdSocketHandle ;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    edMessage: TEdit;
    Button1: TButton;
    IdUDPServer1: TIdUDPServer;
    IdUDPClient1: TIdUDPClient;
    edClientHost: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure IdUDPServer1UDPRead(Sender: TObject; AData: TStream;
      ABinding: TIdSocketHandle);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  IdUDPClient1.Send( edMessage.Text );
  
end;

procedure TForm1.IdUDPServer1UDPRead(Sender: TObject; AData: TStream;
  ABinding: TIdSocketHandle);
  var
  StringFormattedStream : TStringStream;
  s : string;
begin
    StringFormattedStream := TStringStream.Create('');
    StringFormattedStream.CopyFrom( AData, AData.Size );
    Memo1.Lines.Add(  ABinding.PeerIP + ' ' + StringFormattedStream.DataString );
    ABinding.SendTo( ABinding.PeerIP, ABinding.PeerPort, s[1], length(s)  );
    StringFormattedStream.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  self.IdUDPClient1.Host:=edClientHost.Text;
end;

end.
