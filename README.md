# 产品信息 #
```
名称：Minecraft坐标转换器
编译工具：VisualBasic6.0
程序员：Morgan
邮箱：1037502595@qq.com
     MorganFish0508@163.com
GitHub：https://github.com/MorganNotFound
CSDN：https://blog.csdn.net/MorganFish
由于作者csdn属于测试阶段，并无多少作品上传，但依旧希望大家多多支持，作者将会继续努力哒~
```
# 创作背景 #
不知道吧，本人其实是位资深的MC老玩家hhh…   
课余时间多么无聊啊，总得找点乐子不是？[Minecraft](https://www.minecraft.net "Minecraft官网")是个好选择。作为非职业专业玩家的我强烈推荐Minecraft，玩的同时其实还可以同时学习编程、建筑（当然啦，一定要玩国际服正版，自主操作性高，某易实在不行，小学生太多，没/缺钱的可以下载一个[hmcl](https://hmcl.huangyuhui.net/ "hmcl启动器")……）   
扯得有点偏了抱歉，所以说为什么我要做这个小程序呢？不知道大家有没有遇到以下问题：
```
   （一）两个地狱门传送到同一地点；
   （二）地狱矿车没有从指定地点出来；
   （三）知道一个传送门的坐标，却不知道另一个的坐标还没有足够黑曜石导致迷路；
   （四）需要知道某个出口的坐标以便于确认地形&生物群系；
```
这些解决起来非常简单，其实这一切问题的产生都是由于地狱与主世界的方块成1：8的关系，也就是说，地狱里走一格方块，相对在主世界移动了八格，这也就是为什么许多人选择地狱矿车来赶路，但为什么需要这个程序呢？很简单嘛，懒得算呗……   
好啦，接下来就上代码吧！
# 代码 #
非常简单，认识了vb全部控件之后以小学生的智商就可以制作了，可更改性也很高，如果愿意也可以随意加以改进，作品嘛，本就不该有局限性
```
Private Sub Command1_Click()
Let x = Text1.Text
Let y = Text2.Text
Let z = Text3.Text
If Combo1.Text = ("地狱-主世界") Then
x = x / 8
y = y / 8
z = z / 8
Text1.Text = x
Text2.Text = y
Text3.Text = z
Label5.Caption = "LET'S GO HOME!"
ElseIf Combo1.Text = ("主世界-地狱") Then
x = x * 8
y = y * 8
z = z * 8
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
End Sub
Private Sub command2_click()
End
End Sub
```
不长，代码雀食不长，接下来就让我“手把手”教你制作吧！
# 手把手教你制作 #
主要运用到的控件：
```
label1~5             '用来显示文本
Command1~2           '控制开始与结束
Text1~3              '用来输入x,y,z坐标
Combo1               '增加转换类型的选项
```
辅助控件：
```
Image1               '增加logo图标
WindowsMediaPlayer1  '添加软件背景音乐
```
如图，对一些字体、颜色之类的属性可以进行随意更改：   
![](http://m.qpic.cn/psc?/cfc1fd56-f474-498f-adcb-b6fd8951402d/45NBuzDIW489QBoVep5mcfUZ58ybxtZ21ifPGHKVMy1Wze6TWw4oDni6kBRQOQ6AhHqTTU4nieUBRcwu0*tkOqaugo.U1xkr0z.5rfxriXI!/b&bo=gQEJAQAAAAADF7o!&rf=viewer_4)   
我将form1的BackColor改为黑色，控件forecolor改为白色，然后将所有控件的BackStyle都改为了透明，故呈现出来的效果对比度高，也可以不做更改，不影响程序运行   
主要流程：
```
   （一）按顺序插入控件
   （二）插入代码
   （三）运行
```
尝试运行一下：   
![](http://m.qpic.cn/psc?/cfc1fd56-f474-498f-adcb-b6fd8951402d/45NBuzDIW489QBoVep5mcd1yIjbE2JssxYuKhSPKOz7s7kcrixolSKn**YXFTR7A74bRvg8RN1aZ891vaeN6alrUVmRAQG62sfA59trxLII!/b&bo=gQEJAQAAAAADF7o!&rf=viewer_4)   
![](http://m.qpic.cn/psc?/cfc1fd56-f474-498f-adcb-b6fd8951402d/45NBuzDIW489QBoVep5mcd1yIjbE2JssxYuKhSPKOz5SWtyQwOS1ZFCjlCGuiWvmoK80vO7JhQCowX3dF9b*R0ct6QgWmNg*jfH0npw8MTg!/b&bo=gQEJAQAAAAADF7o!&rf=viewer_4)   
![](http://m.qpic.cn/psc?/cfc1fd56-f474-498f-adcb-b6fd8951402d/45NBuzDIW489QBoVep5mcd1yIjbE2JssxYuKhSPKOz6OFN5XBVbahYPxyieqZ*n9qOWM4mmArj5V1NiW3isKz0dMJrRnWA3dCYrN7Su9.a4!/b&bo=gQEJAQAAAAADF7o!&rf=viewer_4)   
![](http://m.qpic.cn/psc?/cfc1fd56-f474-498f-adcb-b6fd8951402d/45NBuzDIW489QBoVep5mcd1yIjbE2JssxYuKhSPKOz6BTFsSCI4PnL8RayYFt72CBmIRChE3JzeWgEjIsh9GcsuWW41Ya67WZMcWDAW.Ffw!/b&bo=gQEJAQAAAAADF7o!&rf=viewer_4)   
![](http://m.qpic.cn/psc?/cfc1fd56-f474-498f-adcb-b6fd8951402d/45NBuzDIW489QBoVep5mcZcRcqn7oJBh7P1Nc3OXelYEINhx9yHYHCOIbuNdxIm4C6zrwBxp*9GUs1nevcD8jz0QZcqz214yJ4Ggt601utY!/b&bo=gQEJAQAAAAADF7o!&rf=viewer_4)   
我呢，不仅添加了一个Image，还添加了一个背景音乐，使用的是WindowsMediaPlayer控件（添加方法可以自己查询），使用方法很简单：   
首先在form1_load里面添加如下代码：
```
WindowsMediaPlayer1.URL = App.Path + "\Minecraft.mp3"
WindowsMediaPlayer1.Enabled = True
WindowsMediaPlayer1.Visible = False
```
使用时要将Minecraft.mp3与编写好的exe放在一起，很多人会觉得在工程里预览的时候音乐没有加载出来是程序或者音乐的问题，其实不然，仔细回看一下程序代码：App.Path表示程序位置，如果没有将mp3与工程放在一个文件夹里就不能加载出来，也就是说，用什么运行就要把音乐和什么放在一起。   
如果要背景音乐循环播放，也很简单，只需添加上一下代码：
```
Private Sub WindowsMediaPlayer1_PlayStateChange(ByVal NewState As Long)
If NewState = 1 Then
WindowsMediaPlayer1.Controls.play
End If
End Sub
```
好啦，程序基本上就做完啦！   
如果不想动手，直接使用我做的exe就好啦！   
再想想有没有什么遗漏的……   
哦忘了忘了，谢谢您的支持~   
如果喜欢，点赞+星标+关注哦~