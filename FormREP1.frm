VERSION 5.00
Object = "{8767A745-088E-4CA6-8594-073D6D2DE57A}#9.2#0"; "crviewer9.dll"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6732
   ClientLeft      =   48
   ClientTop       =   396
   ClientWidth     =   10440
   LinkTopic       =   "Form1"
   ScaleHeight     =   6732
   ScaleWidth      =   10440
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   312
      Left            =   1680
      Top             =   5160
      Width           =   1332
      _ExtentX        =   2350
      _ExtentY        =   550
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   7.8
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   372
      Left            =   8640
      TabIndex        =   1
      Top             =   5040
      Width           =   1212
   End
   Begin CRVIEWER9LibCtl.CRViewer9 CRViewer91 
      Height          =   4332
      Left            =   600
      TabIndex        =   0
      Top             =   360
      Width           =   9252
      lastProp        =   500
      _cx             =   16319
      _cy             =   7641
      DisplayGroupTree=   -1  'True
      DisplayToolbar  =   -1  'True
      EnableGroupTree =   -1  'True
      EnableNavigationControls=   -1  'True
      EnableStopButton=   -1  'True
      EnablePrintButton=   -1  'True
      EnableZoomControl=   -1  'True
      EnableCloseButton=   -1  'True
      EnableProgressControl=   -1  'True
      EnableSearchControl=   -1  'True
      EnableRefreshButton=   -1  'True
      EnableDrillDown =   -1  'True
      EnableAnimationControl=   -1  'True
      EnableSelectExpertButton=   0   'False
      EnableToolbar   =   -1  'True
      DisplayBorder   =   -1  'True
      DisplayTabs     =   -1  'True
      DisplayBackgroundEdge=   -1  'True
      SelectionFormula=   ""
      EnablePopupMenu =   -1  'True
      EnableExportButton=   0   'False
      EnableSearchExpertButton=   0   'False
      EnableHelpButton=   0   'False
      LaunchHTTPHyperlinksInNewBrowser=   -1  'True
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()


Dim Connection As New ADODB.Connection


Dim RS As New ADODB.Recordset


'Create a connection to the Xtreme database.
'Connection.ConnectionString = _


'"Provider=Microsoft.Jet.OLEDB.4.0;" _


'+ "Persist Security Info=False;Data Source=" _


'+ "C:\Program Files\Crystal Decisions\Crystal Reports 9" _


'+ "\Samples\En\Databases\xtreme.mdb;Mode=Read"


Connection.Open "DSN=magazi;uid=sa;pwd=12345678"


'Obtain a Recordset object from the Customers table of the Xtreme database.
RS.Open "select * from PEL WHERE ID=11680 ", _
Connection, adOpenDynamic, adLockPessimistic, adCmdText








Dim CRXApplication As New CRAXDRT.Application


Dim CRXReport As CRAXDRT.Report


'Obtain a Report object by opening the report file you created earlier. This example uses the file Customer.RPT.
Set CRXReport = CRXApplication.OpenReport("c:\MERCVB\reports\CUSTOMERS.rpt", 1)






Dim CRXDatabase As CRAXDRT.Database
Set CRXDatabase = CRXReport.Database

'Once you have a Database object for the Report object, you can pass the Active data source to the Report object using the SetDataSource method. This method requires three parameters. The first is the data source itself. The second parameter is a value indicating that the data source you are passing to the report is an ActiveX data source. This value must be 3. The third parameter is the table you are passing the data source to. Since you should only have one table defining the structure of the recordset, this should always be 1. For example:

CRXDatabase.SetDataSource RS, 3, 1



CRXReport.SQLQueryString = "select * from PEL WHERE ID=11680   "




CRViewer91.ReportSource = CRXReport
CRViewer91.ViewReport

'ok typonei

CRXReport.PrintOut






End Sub
