什么是计算机软件系统？
---
软件系统是指由计算机软件，支撑软件和应用软件组成的计算机软件系统，他是计算机系统中的软件部分
---
IP地址是什么？域名是什么？域名和ip的联系？上网的参数有什么？
---
互联网协议地址，是IPaddress的缩写。IP地址是IP协议提供的一种统一的地址格式，他为互联网上每一个网络和每一台主机分配一个逻辑地址，以此来屏蔽物理地址的差异。
域名，是由一串用点分隔的名字组成的计算机的名称，用于在数据传输时标识计算机的电子方位。
域名和IP地址之间相互转换即域名解析
上网参数有IP地址，网关，DNS，子网掩码等
---
IPV4和IPV6的区别？
---
1. IPV4规定IP地址长度32为，有2^32-1个地址；而IPV6中ip地址长度有128个，既有2^128-1个地址
2. IPV4采用点分十进制表示，IPV6采用冒号十六进制表示
3. IPV6即插即用，更方便；且引入了认证和加密装置，更安全
4. IPV6支持无状态自动地址配置，简化了地址配置过程
---
MAC地址与IP地址的区别？
---
MAC地址，媒体访问地址，也称物理地址，用来定义网络设备的位置
IP地址：互联网协议地址，IP地址是IP协议提供的一种统一的地址格式。它为互联网上每一个网络和每一台主机分配一个逻辑地址，以此来屏蔽物理网络地址的差异
区别：
1. 对于网络上的某一台设备，如一台计算机或者路由器，IP地址可变，而MAC地址不可变
2. 长度不同，IP地址长度32位，MAC长度48位
3. 分配依据不同。IP地址分配是根据网络拓扑，MAC地址分配基于制造商
4. 寻址协议层不同。IP地址位于OSI第三层，即网络层。MAC地址应用在OSI第二层，即数据链路层。
---
编程的步骤有哪些？
---
1. 上机输入和编辑源程序
2. 对源程序进行编译
3. 进行链接处理
4. 运行可执行程序，得到执行结果
---
LCD是什么？
---
Liquid Crystal Display，液晶显示器
---
办公自动化？
---
应用计算机或者数据处理系统代替人工来自动处理日常的办公一些事务性的措施，称为办公室自动化
---
计算机的外存1TB，内存16GB，则CPU直接访问的最大量为多少比特？
---
存储器分为内存和外存。CPU只能访问内存里面的东西，因此最大访问量是16*2^30*8bit
---
内存与外存的联系和区别？
---
内存：CPU能够直接访问的存储器，用来存放欲执行的程序和数据。内存有RAM和ROM两种
外存：独立于计算机之外的存储介质。存放长期的程序和数据
区别
1. 内存中数据可与CPU直接交换，而外存不行
2. 内存中的数据不可长久保存
3. 内存容量有限，外存容量海量
联系：内存和外存共同构成了计算机的存储器
---
OSI参考模型？
---
国际标准化组织制定的开放式系统互联模型。他描述了任何时刻计算机系统只要遵循标准就可以互相通信。
将数据从一个站点到达另一个站点的工作按层分成七个不同的任务
1. 应用层：处理网络应用
2. 表示层：数据如何表示
3. 会话层：主机间的通信
4. 传输层：端到端的连接
5. 网络层：路由寻址
6. 数据链路层：介质访问接入
7. 物理层：比特流的传输
---什么是计算机病毒及其特点？
---具有破坏作用的计算机程序或者一组计算机指令。具有破坏性、传染性、隐蔽性、可触发性
---简述一条程序的执行过程？
---1. 从内存中取指令
按照程序计数器的地址，从内存储器取指令，并送往指令寄存器
2. 分析指令
对指令寄存器中存放的指令进行分析，由指令译码器对操作码进行译码，将指令操作码换成相应的控制电位信号，由地址码确认操作数地址
3. 执行指令
由操作控制电路发出完成该操作一系列控制信息，去完成该指令所要求的操作
---什么是绝对路径和相对路径？
---绝对路径：起始于磁盘的根文件夹
相对路径：起始于磁盘当前文件夹
---操作系统的作用和优点？
---操作系统是最基本的系统软件，是管理和控制计算机软硬件资源的一组程序
1. 将裸机改造成虚拟机，提高了用户使用效率
2. 合理使用系统内的软硬资源，提高了系统的效率
---操作系统的定义，从资源管理角度说明其功能；以及常见手机系统举例？
---操作系统是最基本的系统软件，是管理和控制计算机软硬件资源的一组程序
os的主要功能：
1. 处理器管理
又称进程管理，主要任务是对处理器的时间进行合理分配，对处理器的运行实施有效的管理
2. 存储器管理
由于多道程序共享内存资源，因此存储器管理的主要任务是对存储器进行分配、保护和扩充
3. 设备管理
根据操作系统中的设备分配原则，对系统进行分配，是设备与主机能够并行工作。为用户提供良好的设备使用界面
4. 信息管理
包括常见的文件管理和用户接口管理
常见的手机操作系统：Java非智能系统，谷歌Android系统，苹果IOS系统，三星bada系统
---Excel功能？
---Excel基本功能:数据记录与整理，数据计算，数据分析，图表制作，信息传递和共享，自动化定制Excel
---3C?
---Communication, Computer, Control,即通信技术，计算机技术，控制技术
---人工智能？
---Artificail Intelligence, 用于研究、开发、模拟人的智能的理论方法、技术及应用系统的一门新的技术科学
是计算机科学的一个分支，企图了解智能的实质，并生产出一种新的能以人类智能相似的方法做出反应的智能机器。该领域的研究包括机器人，语言识别，自然语言处理等
---SATA
---具有简单结构，可靠性强，传输速率高，支持热拔线的硬件接口
---总线？
---各部件或者设备之间，传输数据的公用通道
---网络协议？
---在计算机网络中，双方为了实现通信而设计的规则，由语法，语义，时序三部分构成
---简述冯诺依曼的思想？
---
1. 计算机由五个基本部分组成：运算器，控制器，存储器，输入设备，输出设备
2. 程序和数据按同等地位存在存储器中，并按地址寻访
3. 程序和数据以二进制表示
---简述计算机的组成部分及作用？
---1. 运算器
算术运算和逻辑运算。完成除了加减乘除等基本的算术运算之外，还包括能进行逻辑判断的逻辑处理能力，即与或非，以及数据的比较，移位等操作
2. 存储器
存放计算机处理的程序和数据。并在计算机运行过程高速自动完成程序和数据的存取
3. 控制器
控制运算器、存储器等计算机各部件协同工作。是整个计算机系统的控制中心，指挥计算机各部分协调工作，保证计算机按照事先规定的目标和步骤有条不紊的进行操作和处理
4. 输入设备
把各种形式的信息，如数字、文字、图片对转换为数字形式的编码
5. 输出设备
把计算机加工处理的结果（数字形式的编码）变化为人或其他设备所能接受和识别的信息形式
---进程，线程，程序的区别？Windows为什么要引入线程？
---进程是运行起来的程序，是系统进行资源分配和调度的一个基本单位
线程是进程的一个实体，是CPU调度分配的一个基本单位，他是对进程的进一步划分
程序是一个静态的概念，是存放在存储器上的文件
区别：
1. 进程是一个动态的概念，是运行起来的程序
2. 程序可以长期脱机保存，不执行也存在。而进程只要在执行时才存在
3. 一个程序可以有多个不同的进程
Windows引入线程的好处：充分共享资源，减少内存开销，提高并发性，加快切换速度
---Windows文件的命名规则？
---1. 文件名称不超过255个字符
2. 文件名开头不能用空格
3. 文件名不能用 / | 、\ ？* " < >等字符
4. 文件名不区分大小写，但显示时区分
5. 文件名可以包含多个间隔符
---局域网的配置？
---局域网由网络硬件和网络软件组成
1. 局域网硬件主要包括计算机设备，网络接口设备，网络传输媒体，网络互联设备
2. 局域网软件主要包括网络协议软件，网络操作系统，网络应用软件
---从小到大排序 -99 37 65 -81
---略
---简述word的功能，并简述一篇论文的操作过程
---1. 创建和编辑文档
 - 创建和保存文档
 - 文档的输入
 - 文档的编辑
 - 文档的快速批量编辑
2. 格式化和排版文档
 - 格式刷、样式和模板
 - 字符排版
 - 段落排版
 - 页面排版
3. 表格和图文混排
 - 表格
 - 图片和图形
 - 文字图形效果的视线
 - 图文混排
4. 长文档目录的生成
 1. 文档设置不同级的标题样式，文档分解设置不同的页码格式
 2. 生成目录
 选择引用选项卡的目录下拉列表中插入目录选项，打开目录对话框，单击选项按钮可选择目录标题级别，在其对话框中选择显示级别后单击确认按钮就可以生成目录
---
Microsoft Word提供非常丰富的功能，在利用word编写长文档的排版问题尤为关键，请简述文档排版方法？
---
1. 字体、字号、标题设置
2. 段落间距、行距设置
3. 页面布局设置：纸型、边距
4. 页码设置
5. 目录设置
---计算机硬件？
---Computer Hardware.
是指计算机系统中电子，机械和光电元件组成的各种物理装置的总称。功能是输入并存储程序和数据，以及执行程序把数据加工成可以利用的形式。
---物联网是什么？物联网的应用有哪些？
---“物物相连的互联网”。
1. 物联网的核心仍然是互联网，是在互联网上的延申和扩展的网络。
2. 用户延伸和扩展到了任何物品与物品之间，进行信息交换和通信，也就是物物相息。
应用：智慧物流，智能医疗，智能交通
---c/s结构？
---cs结构以客户机和服务器为结构的系统体系结构，通过它可以充分利用两端硬件环境的优势，将任务合理分配到客户和服务器端实现，降低了系统的通讯开销
---什么是高速缓存(cache)，为什么要导入？
---高速缓冲存储器，位于CPU和内存之间的高速存储器，运行频率极高，一般是和CPU同频
目的：高速缓存的出现主要是为了解决CPU运行速度和内存读写速度不匹配的矛盾，因为CPU运行速度比内存读写速度快很多，这样会使CPU花费很长时间等待数据到来或把数据写入内存。cache位于内存与CPU之间，起缓冲作用，提高系统整体性能
---硬件数据以及丢失怎么办？
---可以进行数据恢复。可以使用数据恢复软件自己进行恢复，恢复的时候根据实际的数据丢失情况选择相应的功能进行扫描恢复即可
---
C/S B/S的差异？
---
1. 组成不同：cs通常采用高性能pc机，采用大型数据库如oracle。客户端需要安装专用的客户端软件
bs客户机只需要装浏览器，服务器安装Oracle等数据库，浏览器通过web服务器同数据进行数据交互
2. 建立基础不同
c/s是建立在局域网。bs是建立在广域网
3. 硬件环境不同
cs建立在专用的网络上，小范围的网络环境；bs建立在广域网上，不必是专门的网络硬件环境
4. 对安全的要求
cs一般面向相对固定的用户群，对信息安全控制力强
bc建立在广域网上，对安全的控制能力弱，面向的是不可知用户群
---信息的定义？
---信息是客观事物在人脑中的反应，既是对各种事物的变化和特征的反映，又是事物之间的相互作用和联系的表征
---计算机信息安全
---信息安全是指确保信息的保密性，完整性和可用性，防止信息被故意或偶然的泄露，更改破坏，或是信息被非法系统辨识和控制
---什么是处理器？什么是多核处理器？多个CPU和多核CPU的区别？
---CPU是一块超大规模的集成电路。是一台计算机的运算核心和控制核心。他的主要功能是解释计算机指令以及处理计算机软件中的数据。
多核处理器：一个处理器芯片上有多个处理器核心，他们之间通过CPU内部总线通信
多处理器：是指多个独立CPU工作在一个系统上，其间通过主板上的系统总线通信
区别
1. 多核CPU性能最好，但成本高，多个CPU成本低，但性能差
2.
多个CPU每一个都需要较为独立的电路支持，有自己的cache，而他们之间通过版上的总线通信。多核CPU，只需要一套芯片组，一套存储，多核之间通过芯片内部总线进行通信，共享内存
---计算机的系统组成？
---计算机系统由计算机硬件和软件两部分组成。
硬件包括中央处理器，存储器和外部设备。软件是计算机运行程序和相应的文档
---ASCII与汉字编码的区别？从编码的角度，分析ASCII和汉字编码的共同点？
---
ASCII，美国标准局制定的西文字符在计算机中的表示代码。使用是用7位二进制编码，可表示2^7=128个字符
汉字编码：即汉字输入码，常见的有音码类和形码类，每个汉字编码占两个字节
共同点：
1. 都是操作者向计算机输入字符的手段，而在计算机内部都以相应的字符机器码表示
2. 都是计算机内部实现字符输入输出的二进制编码
3. 共同构成了计算机的显示字符，实现了计算机的编码基础
---简述为什么操作系统是硬件和其他软件的接口？是用户和计算机的接口？
---1. 计算机的应用程序通过对操作系统的控制实现对硬件的调用从而达到功能。因此操作系统可被视为计算机硬件和其他软件的接口
2. 从计算机操作的角度来看，用户一般是通过操作系统的使用界面来达到指挥计算机工作的目的，因此操作系统可看作是用户和计算机的接口
---什么是计算机网络？Internet采用的网络协议？
---计算机网络是一群具有独立功能的计算机，通过信息设备及传输媒体互连起来，在通信软件的支持下，实现资源共享、信息交换或协同工作的系统
Internet上采用的网络协议集是TCP/IP协议集
TCP：传输控制协议，用于保证被传送信息的完整性
IP：网际互连协议，负责将消息从一个地方传输到另一个地方
---
简述MAC,IP,SSID,DNS，网关？
---
* MAC(Media Access Control)：物理地址，硬件地址，用来定义网络设备的位置
* IP地址指互联网协议地址，IP地址是IP协议提供的一种统一的地址格式，为互联网每一个网络和每一台主机分配一个逻辑地址，以此来屏蔽物理网络地址的差异
* 子网掩码：32位模式，用来识别子网和判别主机属于哪一个网络
* SSID(Service Set Identifier)：服务及表示。SSID技术将一个无线局域网分为几个需要不同身份验证的自网络，
每一个子网络都需要独立的身份认证，只要通过身份认证，才可以进入相应的子网络，防止未被授权的用户进入本网络
* DNS(Domain Name Server)域名服务器，是进行域名和与之对应的IP地址之间转换的服务器。DNS保存了一张域名和与之相对的IP地址表，以解析消息的域名。
作用：把域名转换成网络可以识别的IP地址
* 网关：连接使用不同结构或者不同协议的网络设备。主要用于网络中信息的传输以及信息格式的转化，是OSI模型中传输层上的连接设备，他是最复杂的网络设备
---
简述子网掩码的内涵，说明其有什么作用？
---
子网掩码是一个32位地址，是与IP地址结合使用的一种技术。他的主要作用有两个:
1. 用来屏蔽IP地址的一部分以区别网络标识和主机标识，并说明该IP地址是在局域网上，还是远程网上
2. 用于将一个大的IP网络划分成若干小的子网络
---
默认网关是什么？有什么作用？不设置默认网关会怎样？
---
默认网关是子网与外网连接的设备，通常是一个路由器
作用：在IP路由表中创建一个默认路径。在TCP网络中扮演重要角色，在TCP网络上可以转发数据包到其他网络，可以为网络上的TCP主机提供同远程网络上其他主机通信时所使用的默认路由。同时，网关也可以提供过滤和安全功能。
在不默认网关的情况下，两个网络之间是不能进行TCP/IP通信的，即使是两个网络连接在同一台交换机(或集线器)上，TCP/IP协议也会根据子网掩码判定两个网络中的主机处在不同的网络里，电脑将会把数据包发给不是网关的电脑，从而无法与其他网络的电脑通信。
---
DNS服务器是什么？如果不配置DNS会导致什么？
---
DNS服务器(Domain Name Server)是进行域名和与之相应IP地址转换的服务器。如果不配置DNS，则网址解析失败，则不能通过网址来访问网站，但仍然可以通过网站的IP地址来访问网站
---
主机无法上网，用什么指令检测？
---
用ping命令。
1. 检查网络是否连通
2. 检测与目的主机之间的链接速度
---
使用笔记本时，在接入Internet时，采用自动获取IP或固定IP的原因？
---
Internet网络中每一台计算机都需要一个IP地址，在目前IP地址资源非常紧缺的情况下，想从Internet接入商获取足够的IP地址是不可能的，静态分配IP地址即固定IP地址，也就是给每台计算机分配一个固定的公网IP地址；动态分配IP地址即自动获取IP，如果网络中有多台计算机且并不是同时使用，那么不妨采用动态分配IP地址的方式
---
简述自动获取和配置IP地址、DNS的原理是什么？
---
1. 用户主机上运行着DNS客户端
2. 浏览器将接收到的URL中抽取出域名字段，就是访问的主机名，比如说
http://www.baidu.com/，并将这个主机名传送给DNS应用的客户端
3. DNS客户端向DNS服务端发送一份查询报文，报文中包含着要访问的主机名字段
4. DNS客户机最终会收到一份回答报文，其中包含有该主机名对应的IP地址
5. 浏览器收到来自DNS的IP地址，便可以向该IP地址定位的HTTP服务器发起TCP连接
---
我们经常对网络进行优化和维护，从软件方面看，我们维护和优化的软件有哪些，内容是什么？
---
1. 操作系统的维护
系统使用时间过长会有很多辣鸡文件处理，是系统变慢甚至出现莫名其妙的系统冲突，因此我们需要定期进行磁盘碎片整理和垃圾文件清理，以提高计算机效率
2. 注册表的维护
做好注册表的清理，防止出现因注册表冗余键值太多而造成系统性能下降，定期备份注册表
3. 病毒的防范作用
病毒是计算机系统的天敌，他的大肆破坏性和广泛的传播性对计算机具有极大的威胁。防范的措施首先是对于外来磁盘往计算机拷贝必须做好对磁盘的杀毒检查工作，其次是定期升级杀毒软件，以防止最新病毒的袭击，发现有感染病毒的计算机，应做好及时隔离和维护
---Excel绝对引用和相对引用？
---引用上差别：在实施公式的复制时，相对引用将随所复制的位置相应的改变被引用单元格的地址，而绝对引用则保持不变
方法上的差别：绝对引用须在行、列名称前面添加$符号
---技术人员应当有怎样的信息素养？
---信息素养的本质是信息全球化需要人们具备的一种能力，主要包括信息知识，信息能力，信息意识，信息道德
1. 信息意识：人的信息敏感程度，人们对自然界和社会的各种现象、行为、理论观点等，从信息角度理解、感受和评价
2. 信息能力：信息的获取、分析和加工
3. 信息知识：信息科学技术的理论基础，又是学习信息技术的基本要求
4. 信息道德：有正确的信息伦理道德修养
---邮件合并的过程及应用举例？
---1. 建立主文档。即准备好固定不变的主体内容
2. 准备好数据源。即准备好含有标题行的数据记录表，其中包含相关字段和记录内容
3. 把数据源合并到主文档
例如：批量处理邮件文档
---进入研究生，写论文必不可免，简述一篇论文的完成过程？
---
1. 确定论文题目
2. 拟定论文写作提纲
3. 收集相关资料和文献
4. 对资料进行整理与分析
5. 论文的撰写
6. 修改
7. 参考文献
8. 提交论文指导老师
---图灵的贡献有哪些？
---1. 建立图灵机模型，奠定了计算机理论基础
2. 提出了图灵测试，奠定了机器智能的概念
---计算思维的含义？
---计算思维是运用科学的基础概念进行问题求解、系统设计以及人类行为理解的,
涵盖计算机之广度的一系列思维活动。
---数据、信息、知识、智慧的含义？
---数据：用来承载或记录信息，按照一定的规则排列组合的符号，可以是字母，数字，图形，图像等内容
信息：加工后的数据，信息是数据所承载的含义，信息通过数据来表达对接收者的价值
知识：在实践中认识客观世界的成果
智慧：对事物迅速、灵活、正确的理解和解决的能力
---1000份邀请函，其中内容与格式相同，抬头名字不同，已知用户信息都存在数据表中，用word最快把1000份邀请函完成？
---邮件合并步骤
1. 准备数据源
2. 准备模板文件
3. 邮件合并；主要包括设置数据源，插入数据域，查看合并数据
4. 完成合并
具体如下：
1.
新建word和excel文档，通过数据库在excel文档中将邀请函所需的邀请者的姓名信息收集好，word中将邀请函的模板格式制作好
2. 
点击word文档，选择邮件>开始邮件合并>信函，并把选择收件人>使用现有列表
3. 使用刚才的excel文档，光标放到对应的位置，然后点击上方插入合并域，选择合适的标题插入到对应的位置
4. 插入完成后，将插入部分选中统一修改他们的格式
5. 点击预览结果，查看效果。之后点击完成合并>编辑单个文档，完成
---冯诺依曼体系是传统计算机系统的基础，同时也限制了计算机的发展，问现在采取了哪些体系结构来突破限制？
---冯诺依曼被称为计算机之父，冯诺依曼体系结构是现代计算机的基础，从计算机诞生那天起，冯诺依曼的体系就起着主导作用。但其结构，
也严重束缚了现代计算机的发展。而改进计算机的体系结构是提高计算机速度的重要途经，当前也出现了数据流结构、并行逻辑结构，归约结构等新的非冯诺依曼
体系结构，一定程度上促进了计算机体系结构的发展。目前，并行计算机，数据流计算机，量子计算机，DNA计算机等，他们部分或完全不同于冯诺依曼计算机，
很大程度提高了计算机性能，突破冯诺依曼体系限制
---
冯诺依曼体系结构的不足与局限性？现代冯诺依曼体系结构改进，并距离突破冯诺依曼结构的现代计算机有哪些？
---
* 不足与局限性:
1. 指令和数据存储在同一个存储器中，形成系统对存储器的过分依赖。如果存储器件的发展受阻，系统的发展也将受阻
2. 指令在存储器中按其执行顺序存放，因此，指令的执行是串行，影响了系统执行速度
3.
存储器是按地址访问的线性编制，按顺序排列的地址访问，利于存储和执行的机器语言指令，适用于做数值计算。而高级语言按名字调用变量，在语义上和机器语言存在很大间隔，称之为冯诺依曼语义间隔。消除语义间隔成了计算机发展面临的一大难题。
4.
冯诺依曼体系结构计算机是为算数和逻辑运算而诞生的，而非数值处理应用领域发展缓慢，需要在体系结构方面有重大的突破。
5.
传统的冯诺依曼体系结构属于控制驱动方式，他是执行指令代码对数值代码进行处理，一旦指令和数据有错误，机器不会主动修改指令并完善程序

* 现代计算机对冯诺依曼体系结构的改进主要体现在:
1.
对传统冯诺依曼机进行改良，如传统体系计算机只有一个处理部件是串行执行的，改成多处理部件形成流水处理，以靠时间上的重叠提高处理效率。
2. 由多个处理器构成系统，形成多指令流多数据流支持并行算法结构
3.
否定冯诺依曼的控制流驱动方式。设计数据流驱动工作方式的数据流计算机，只有数据已经准备好，有关的指令就可并行的执行。如神经计算机
4. 彻底跳出电子的范畴，以其他物质作为信息载体和执行不见，如光子、生物分子、量子等

* 突破冯诺依曼体系结构的现代计算机举例:
并行计算机、数据流计算机、量子计算机、DNA计算机

---
简述网络信息传递故障处理方法？
---
网络传递过程中可能出现的主要故障问题包括:
1. 路由器故障 2. 客户端PC机网卡问题 3. 应用服务程序问题 4. 病毒感染
故障定位:警告性分析、查看网络设备日志、分段故障排除法

计算机网络信息故障的处理方法:
1. 硬件维护：主要包括网线、集成器、路由器、交换机、网卡等部件的维护
2. 软件维护：主要包括网络协议、服务设置的检查以及交换机、路由器、集线器设备的配置维护
3. 设置防火墙

---
请问路由器和交换机有什么不同？
---
1. 链接区域不同
路由器是实现网络与网络之间的连接，交换机是实现同一局域网的各终端之间的连接
2. 工作层次不同
交换机是在OSI开放体系结构的数据链路层，而路由器是在网络层
3. 数据转发所依据的对象不同
交换机是利用物理地址即MAC地址确定转发数据的目的地址。而路由器则利用IP地址来确定数据转发的地址
4. 分割区域不同
交换机只能分割冲突域，不能分割广播域；路由器可以分割广播域
---
请问问题求解的基本思维有哪些？
---
1. 发现问题 2. 分析问题 3. 提出假设 4. 
---
请问调试程序的基本步骤？调试程序中常见的错误，如何排除这些错误？
---
调试的基本步骤
1. 错误定位 2. 修改设计代码，排除错误 3. 进行回归测试，防止出现新的错误
调试过程有那些错误？
1. 语法错误 2. 语义错误
排除错误的方法？
1. 强行排错法 2. 回溯法 3. 原因排错法
---
为什么C语言要提前定义变量类型？
---
在C语言中，定义变量相当于在内存中给定义的变量分配了相应存储空间，如果未定义变量，即在内存中不存在这个变量，便不能使用它。此外，不同类型的变量，其编码方式可能不同。不同类型的变量，其占有的空间大小不同。如果不事先说明，无法在内存中开辟空间。

---
什么是竞争冒险？如何消除竞争冒险现象？
---
竞争--冒险现象：由于竞争而在电路输出端可能产生尖峰脉冲的现象
消除方法：
1. 接入滤波电容
简单易行，但输出电压的波形随之变坏，只适用于对输出波形的前后沿无严格要求的场合
2. 引入选通脉冲
比较简单，而且不需要增加电路元件。但这种方法必须设法得到一个与输入信号同步的选通脉冲，
对这个脉冲的宽度和作用的时间均有严格要求
3. 修改逻辑设计，增加冗余项的方法
有时可以有令然满意的效果，但这种方法能解决的问题有限
---
相比于模拟电路技术，数字电路技术有哪些优势和特点？
---
1. 数字电路结构简单，易于制造，便于集成和系列生产、成本低廉、使用方便
2. 数字电路容易标准化，且能够满足对信号保真度的要求
3.
数字电路功耗低，集成度高，功率也更强大。数字电路处理信号具有稳定，精度高，不需要调试，设置、修改方便，容易实现自适应处理等优点
4.
集成度高，体积小，功能容易实现。同时具有算术运算和逻辑运算功能，因此极其适用于运算、比较、存储、传输、控制、决策等应用。
---
什么是计算思维，请简述其内涵？
---
计算思维是运用科学的基础概念进行问题求解、系统设计以及人类行为理解等涵盖计算机科学之广度的一系列思维活动。
计算思维的本质是抽象化和自动化。抽象强调的是问题的形式化定义以及建立逻辑模型，而自动化则是逻辑的物理实现，
即构建计算机应用系统
