VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Form1 
   BackColor       =   &H80000012&
   Caption         =   "Minecraft地狱-主世界坐标转换器"
   ClientHeight    =   3405
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5535
   LinkTopic       =   "Form1"
   ScaleHeight     =   3405
   ScaleWidth      =   5535
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command2 
      Caption         =   "退出转换"
      Height          =   495
      Left            =   4200
      TabIndex        =   9
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "开始转换"
      Height          =   495
      Left            =   2880
      TabIndex        =   8
      Top             =   1800
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Height          =   270
      Left            =   1200
      TabIndex        =   7
      Top             =   2760
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Height          =   270
      Left            =   1200
      TabIndex        =   6
      Top             =   2280
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   270
      Left            =   1200
      TabIndex        =   5
      Top             =   1800
      Width           =   975
   End
   Begin VB.ComboBox Combo1 
      Height          =   300
      Left            =   2400
      TabIndex        =   0
      Text            =   "转换类型"
      Top             =   1080
      Width           =   3015
   End
   Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
      Height          =   735
      Left            =   2880
      TabIndex        =   11
      Top             =   2400
      Width           =   2535
      URL             =   "C:\Users\Administrator\Desktop\编程软件\Works\VisualBasic 6.0\Minecraft坐标转换\源码\Minecraft.mp3"
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   50
      mute            =   0   'False
      uiMode          =   "full"
      stretchToFit    =   0   'False
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   -1  'True
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   4471
      _cy             =   1296
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   10.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   2880
      TabIndex        =   10
      Top             =   2520
      Width           =   2415
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Z坐标："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   480
      TabIndex        =   4
      Top             =   2760
      Width           =   975
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Y坐标："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   480
      TabIndex        =   3
      Top             =   2280
      Width           =   975
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "X坐标："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   480
      TabIndex        =   2
      Top             =   1800
      Width           =   975
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "请输入您想转换的类型："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   2415
   End
   Begin VB.Image Image1 
      Height          =   735
      Left            =   120
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   120
      Width           =   5295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Let x = Text1.Text
Let y = Text2.Text
Let z = Text3.Text
If Combo1.Text = ("地狱-主世界") Then
x = x * 8
y = y * 8
z = z * 8
Text1.Text = x
Text2.Text = y
Text3.Text = z
Label5.Caption = "LET'S GO HOME!"
ElseIf Combo1.Text = ("主世界-地狱") Then
x = x / 8
y = y / 8
z = z / 8
Text1.Text = x
Text2.Text = y
Text3.Text = z
Label5.Caption = "GO TO THE HELL!"
Else
Label5.Caption = "未知的转换方法，请重新输入"
End If
End Sub
Private Sub Form_Load()
Combo1.AddItem ("地狱-主世界")
Combo1.AddItem ("主世界-地狱")
WindowsMediaPlayer1.URL = App.Path + "\Minecraft.mp3"
WindowsMediaPlayer1.Enabled = True
WindowsMediaPlayer1.Visible = False
End Sub
Private Sub command2_click()
End
End Sub
Private Sub WindowsMediaPlayer1_PlayStateChange(ByVal NewState As Long)
If NewState = 1 Then
WindowsMediaPlayer1.Controls.play
End If
End Sub
