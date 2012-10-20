(*
   fenixsql
   author Alessandro Batisti
   http://code.google.com/p/fenixsql
   http://fblib.altervista.org

   File:FsDescription.pas

  * This file is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 2 of the License, or
  * (at your option) any later version.
  *
  * This file is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
*)

unit fsdescription;

{$mode objfpc}{$H+}

interface

uses
  Forms, ExtCtrls, StdCtrls, Buttons;

type

  { TDescriptionForm }

  TDescriptionForm = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    Panel1: TPanel;
  private
    { private declarations }
    function GetText: string;
    procedure SetText(const Value: string);
  public
    { public declarations }
    property Text: string read GetText write SetText;
  end;




implementation

{$R *.lfm}

function TDescriptionForm.GetText: string;
begin
  Result := Memo1.Lines.Text;
end;

procedure TDescriptionForm.SetText(const Value: string);
begin
  Memo1.Lines.Text := Value;
end;



end.
