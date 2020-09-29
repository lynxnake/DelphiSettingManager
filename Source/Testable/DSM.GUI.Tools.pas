unit DSM.GUI.Tools;

interface

uses
  VCL.StdCtrls;

type
  TListBoxHelper = class helper for TListBox
    type TUpdateProc = reference to procedure(S: string);

    procedure SetSelection(ANewSelection, ATopIndex: integer; AUpdateProc: TUpdateProc);
  end;

implementation

uses
  System.Classes;

{ TListBoxHelper }

procedure TListBoxHelper.SetSelection(ANewSelection, ATopIndex: integer; AUpdateProc: TUpdateProc);
var
  ClickEvent : TNotifyEvent;
  SelectedName : string;
begin
  //Disable the event handler, otherwise it might trapped into infinite loop.
  ClickEvent := OnClick;
  OnClick := nil;
  Assert(SelectedName = '');

  //Set the ItemIndex and get the name. The name can be an empty string. Empty
  //string means that the selected name does not exist in the NameProvider.
  if Items.Count > ANewSelection then begin
    ItemIndex := ANewSelection;
    SelectedName := Items [ANewSelection];
  end;

  //Synchronizes the TopIndex. This will synchonizes not only the selection
  //but also the item positions.
  if Items.Count > ATopIndex then
    TopIndex := ATopIndex;

  AUpdateProc(SelectedName);

  //Restore the event handler.
  OnClick := ClickEvent;
end;

end.
