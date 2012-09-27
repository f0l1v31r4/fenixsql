(*
   FbLIb - Firebird Library
   Open Source Library No Data Aware for direct access to Firebird
   Relational Database from Borland Delphi / Kylix and Freepascal

   File:FBLReg.pas
   Copyright (c) 2002-2004 Alessandro Batisti
   http://fblib.altervista.org
   http://code.google.com/p/fenixsql
   
   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
*)


unit FBLReg;
{$IFNDEF FPC}
   {$R fblpalette.res}
{$ENDIF}

interface

uses
  Classes,
  FBLDatabase,
  FBLTransaction,
  FBLDsql,
  FBLMetadata,
  FBLScript,
  FBLService,
  FBLEvents,
  FBLParamDSql
  {$IFNDEF DELPHI_PE}
   ,FBLDataset
  {$ENDIF}
  {$IFDEF FPC}
     ,LResources, LazarusPackageIntf
  {$ENDIF};

const
  PALETTE_NAME = 'FBLib';

procedure Register;

implementation

{$IFDEF FPC}

procedure RegisterUnitDatabase;
begin
  RegisterComponents(PALETTE_NAME, [TFBLDatabase]);
end;

procedure RegisterUnitTransaction;
begin
  RegisterComponents(PALETTE_NAME, [TFBLTransaction]);
end;

procedure RegisterUnitDsql;
begin
  RegisterComponents(PALETTE_NAME, [TFBLDSql]);
end;

procedure RegisterUnitMetadata;
begin
  RegisterComponents(PALETTE_NAME, [TFBLMetadata]);
end;

procedure RegisterUnitScript;
begin
  RegisterComponents(PALETTE_NAME, [TFBLScript]);
end;

procedure RegisterUnitService;
begin
  RegisterComponents(PALETTE_NAME, [TFBLService]);
end;

procedure RegisterUnitEvent;
begin
  RegisterComponents(PALETTE_NAME, [TFBLEvent]);
end;

procedure RegisterUnitParamDsql;
begin
  RegisterComponents(PALETTE_NAME, [TFBLParamDsql]);
end;

procedure RegisterUnitDataset;
begin
  RegisterComponents(PALETTE_NAME, [TFBLDataset]);
end;
{$ENDIF}


procedure Register;
begin
  {$IFDEF FPC}
  RegisterUnit('FBLDatabase', @RegisterUnitDatabase);
  RegisterUnit('FBLTransaction', @RegisterUnitTransaction);
  RegisterUnit('FBLDSql', @RegisterUnitDSql);
  RegisterUnit('FBLMetadata', @RegisterUnitMetadata);
  RegisterUnit('FBLScript', @RegisterUnitScript);
  RegisterUnit('FBLService', @RegisterUnitService);
  RegisterUnit('FBLEvents', @RegisterUnitEvent);
  RegisterUnit('FBLParamDsql', @RegisterUnitParamDsql);
  RegisterUnit('FBLDataset', @RegisterUnitDataset);
  {$ELSE}
  RegisterComponents(PALETTE_NAME, [TFBLDatabase, TFBLTransaction,
    TFBLDsql, TFBLMetadata, TFBLSCript, TFBLService, TFBLEvent,TFBLParamDsql
    {$IFNDEF DELPHI_PE},TFBLDataset{$ENDIF}]);
  {$ENDIF}
end;




{$IFDEF FPC}
initialization
  {$I fblibpalette.lrs}
  {$ENDIF}
end.
