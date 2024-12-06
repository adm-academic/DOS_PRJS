unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, IdUDPClient,
  IdUDPServer, IdSocketHandle, IdGlobal;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    edMessage: TEdit;
    IdUDPClient1: TIdUDPClient;
    IdUDPServer1: TIdUDPServer;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure IdUDPServer1UDPRead(AThread: TIdUDPListenerThread;
      const AData: TIdBytes; ABinding: TIdSocketHandle);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  IdUDPClient1.Send( edMessage.Text );
end;

procedure TForm1.IdUDPServer1UDPRead(AThread: TIdUDPListenerThread;
  const AData: TIdBytes; ABinding: TIdSocketHandle);
var
   StringFormattedStream : TStringStream;
   s : string;
begin
     StringFormattedStream := TStringStream.Create('');
     StringFormattedStream.Write(AData[0], length(AData) );
     memo1.lines.add('.............');

     StringFormattedStream.Free;
end;

end.

