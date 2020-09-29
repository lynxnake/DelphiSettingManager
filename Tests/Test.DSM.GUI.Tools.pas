unit Test.DSM.GUI.Tools;

interface

uses
  DSM.GUI.Tools,
  DUnitX.TestFramework;

type

  [TestFixture]
  TestListBoxHelper = class(TObject)
  public
    [Test]
    procedure TestSetSelection_DisablesEventHandler;
    [Test]
    procedure TestSetSelection_DoesntBreakOnWrongParams;
    [Test]
    procedure TestSetSelection_SyncsState;
    [Test]
    procedure TestSetSelection_CallsUpdateProc;
  end;

implementation

procedure TestListBoxHelper.TestSetSelection_CallsUpdateProc;
begin

end;

procedure TestListBoxHelper.TestSetSelection_DoesntBreakOnWrongParams;
begin

end;

procedure TestListBoxHelper.TestSetSelection_DisablesEventHandler;
begin
end;

procedure TestListBoxHelper.TestSetSelection_SyncsState;
begin

end;

initialization
  TDUnitX.RegisterTestFixture(TestListBoxHelper);
end.
