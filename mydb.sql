prompt PL/SQL Developer import file
prompt Created on 2017年6月29日 by TJH
set feedback off
set define off
prompt Creating ALLCLASS...
create table ALLCLASS
(
  classname VARCHAR2(50),
  classid   NUMBER(10) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
alter table ALLCLASS
  add constraint MY11 primary key (CLASSID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating USERINFO...
create table USERINFO
(
  userid    NUMBER(10) not null,
  uame      VARCHAR2(50) not null,
  upsw      VARCHAR2(20) not null,
  urealname VARCHAR2(50) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
alter table USERINFO
  add primary key (USERID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating ERRORSUBJECT...
create table ERRORSUBJECT
(
  errorid     NUMBER(10) not null,
  userid      NUMBER(10) not null,
  subjectid   NUMBER(10) not null,
  errordate   DATE,
  errordegree NUMBER(10)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
alter table ERRORSUBJECT
  add primary key (ERRORID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table ERRORSUBJECT
  add foreign key (USERID)
  references USERINFO (USERID);

prompt Creating SUBJECT...
create table SUBJECT
(
  resulter    VARCHAR2(255),
  subjecttext VARCHAR2(4000),
  subjecta    VARCHAR2(4000),
  subjectb    VARCHAR2(4000),
  subjectc    VARCHAR2(4000),
  subjectd    VARCHAR2(4000),
  subjectid   NUMBER(10) not null,
  classid     NUMBER(10)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
alter table SUBJECT
  add primary key (SUBJECTID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SUBJECT
  add foreign key (CLASSID)
  references ALLCLASS (CLASSID);

prompt Loading ALLCLASS...
insert into ALLCLASS (classname, classid)
values ('JavaBase', 101);
insert into ALLCLASS (classname, classid)
values ('HTML', 102);
insert into ALLCLASS (classname, classid)
values ('C#DB', 103);
insert into ALLCLASS (classname, classid)
values ('SQLBase', 104);
insert into ALLCLASS (classname, classid)
values ('SQLA', 201);
insert into ALLCLASS (classname, classid)
values ('JavaOOP', 202);
insert into ALLCLASS (classname, classid)
values ('C#OOP', 203);
insert into ALLCLASS (classname, classid)
values ('JSP', 204);
insert into ALLCLASS (classname, classid)
values ('Test', 205);
insert into ALLCLASS (classname, classid)
values ('JavaScript', 206);
insert into ALLCLASS (classname, classid)
values ('PatternDesign', 207);
insert into ALLCLASS (classname, classid)
values ('XML', 301);
insert into ALLCLASS (classname, classid)
values ('Oracle', 302);
insert into ALLCLASS (classname, classid)
values ('OOAD', 303);
insert into ALLCLASS (classname, classid)
values ('Struts', 314);
insert into ALLCLASS (classname, classid)
values ('Hibernate', 315);
insert into ALLCLASS (classname, classid)
values ('Spring', 316);
insert into ALLCLASS (classname, classid)
values ('J2ME', 317);
insert into ALLCLASS (classname, classid)
values ('JNTC', 318);
insert into ALLCLASS (classname, classid)
values ('Linux', 319);
insert into ALLCLASS (classname, classid)
values ('ASP.NET', 324);
insert into ALLCLASS (classname, classid)
values ('ASP.NETA', 325);
insert into ALLCLASS (classname, classid)
values ('AJAX', 326);
insert into ALLCLASS (classname, classid)
values ('Moblie', 327);
insert into ALLCLASS (classname, classid)
values ('NNTC', 328);
insert into ALLCLASS (classname, classid)
values ('Android', 401);
insert into ALLCLASS (classname, classid)
values ('ArcEngine', 402);
insert into ALLCLASS (classname, classid)
values ('GIS', 403);
insert into ALLCLASS (classname, classid)
values ('Jquery', 404);
insert into ALLCLASS (classname, classid)
values ('PHP', 405);
insert into ALLCLASS (classname, classid)
values ('SEO', 406);
insert into ALLCLASS (classname, classid)
values ('Struts2', 407);
insert into ALLCLASS (classname, classid)
values ('百度推广', 408);
insert into ALLCLASS (classname, classid)
values ('供应链', 409);
insert into ALLCLASS (classname, classid)
values ('财务', 410);
insert into ALLCLASS (classname, classid)
values ('生产制造', 411);
insert into ALLCLASS (classname, classid)
values ('网络营销', 412);
insert into ALLCLASS (classname, classid)
values ('物联网', 413);
insert into ALLCLASS (classname, classid)
values ('葵花宝典-Net', 414);
insert into ALLCLASS (classname, classid)
values ('葵花宝典-Java', 415);
insert into ALLCLASS (classname, classid)
values ('葵花宝典-Android', 416);
insert into ALLCLASS (classname, classid)
values ('葵花宝典-HP笔试题', 417);
insert into ALLCLASS (classname, classid)
values ('葵花宝典-物联网', 418);
commit;
prompt 43 records loaded
prompt Loading USERINFO...
insert into USERINFO (userid, uame, upsw, urealname)
values (15502, 'cv', 'cv', '成本');
insert into USERINFO (userid, uame, upsw, urealname)
values (100, 'zsf', 'zsf', '张三丰');
insert into USERINFO (userid, uame, upsw, urealname)
values (101, 'lsf', 'lsf', '李四丰');
insert into USERINFO (userid, uame, upsw, urealname)
values (102, 'wwf', 'wwf', '王五丰');
insert into USERINFO (userid, uame, upsw, urealname)
values (15488, 'ss', 'ss', '？？？è？？');
insert into USERINFO (userid, uame, upsw, urealname)
values (15490, 'zz', 'zz', '？？？è′¨');
insert into USERINFO (userid, uame, upsw, urealname)
values (15522, 'mm', 'mm', '？？￠？？￠');
commit;
prompt 7 records loaded
prompt Loading ERRORSUBJECT...
insert into ERRORSUBJECT (errorid, userid, subjectid, errordate, errordegree)
values (15711, 100, 276, to_date('29-06-2017 16:39:49', 'dd-mm-yyyy hh24:mi:ss'), 2);
insert into ERRORSUBJECT (errorid, userid, subjectid, errordate, errordegree)
values (15712, 100, 513, to_date('29-06-2017 15:03:09', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into ERRORSUBJECT (errorid, userid, subjectid, errordate, errordegree)
values (15713, 100, 19, to_date('29-06-2017 16:03:57', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 3 records loaded
prompt Loading SUBJECT...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '分析如下Java代码片段，输出结果为（选一项）' || chr(10) || 'int price = 10, number = 0, monney = 0;' || chr(10) || 'for (int i = 0;i<2;i++){' || chr(10) || '    number++;' || chr(10) || '    --price;' || chr(10) || '    monney += number * price;' || chr(10) || '}' || chr(10) || 'System.out.println(monney);', '25', '28', '31', '20', 1, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '分析如下Java语言代码段，x、y均为int数据类型，下列说法正确的是（选一项）' || chr(10) || 'if(x>y){' || chr(10) || '    x+=y;' || chr(10) || '    ++y;' || chr(10) || '}' || chr(10) || 'else{' || chr(10) || '    y+=x;' || chr(10) || '    x++;' || chr(10) || '}' || chr(10) || 'System.out.println( x + "," + y);', '若x=2, y=0，则输出为1，1', '若x=0, y=1，则输出为1，0', '若x=1, y=1，则输出为2，2', '若x=2, y=3，则输出为3，4', 2, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '分析如下JAVA语言代码片断' || chr(10) || 'int i=6,j=4;' || chr(10) || 'System.out.println(i%j);' || chr(10) || '输出结果为（选一项）', '0', '2', '1.5', '1', 3, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '分析下面的JAVA程序：' || chr(10) || 'public static void main(String args[]) {' || chr(10) || '    int num =0;' || chr(10) || '    while(num<=2){' || chr(10) || '        num++;' || chr(10) || '        System.out.println(num);' || chr(10) || '    }' || chr(10) || '}输出结果是（选一项）', '123', '012', '23', '12', 4, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '分析下面的Java程序：' || chr(10) || 'public static void main(String args[]) {' || chr(10) || '    int num = 0;' || chr(10) || '    while(num <= 2){' || chr(10) || '        num++;' || chr(10) || '        System.out.print(num);' || chr(10) || '    }' || chr(10) || '}输出结果是（选一项）', '13', '12', '023', '123', 5, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '分析下面的程序：' || chr(10) || 'void fun(int a ,int b,int c) {' || chr(10) || '    a=456; b=567; c=678;' || chr(10) || '}' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int x=10,y=20,z=30;' || chr(10) || '    fun(x,y,z);' || chr(10) || '    System.out.println(z,y,x);' || chr(10) || '}' || chr(10) || '输出结果是（选一项）', '30，20，10', '10，20，30', '456，567，678', '678，567，456', 6, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '给定Java代码，如下：' || chr(10) || 'public byte count(byte b1,byte b2){' || chr(10) || '    return______;' || chr(10) || '}' || chr(10) || '要使这段代码能够编译成功，横线处可以填入（选一项）', '(byte)(b1-b2)', '(byte)b1-b2', 'b1-b2', '(byte)b1/b2', 7, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '给定java代码如下：要使用这段代码能够编译成功，横线处可以填入（选两项）' || chr(10) || 'public int count(char c,int i,double d){' || chr(10) || '       return______;' || chr(10) || '}', 'c*i', 'c*(int)d', '(int)c*d', 'i*d', 8, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '给定某Java程序的main方法，如下：' || chr(10) || 'public static void main(String[] args) {' || chr(10) || '    System.out.print("Hello" + args[1]);' || chr(10) || '}' || chr(10) || '从命令行传参：people world nation，该程序的运行结果是（选一项）', 'Hello people', 'Hello world', 'hello people world nation', '运行时出现异常', 9, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '给定如下Java代码, 编译运行时, 以下(  ) 描述是正确的（选一项）' || chr(10) || 'public class Person{' || chr(10) || '    static int arr[] = new int [10];' || chr(10) || '    public static void main(String a[]){' || chr(10) || '        System.out.println(arr[1]);' || chr(10) || '    }' || chr(10) || '}', '编译时将发生错误', '编译时正确但是运行时出错', '输出为0', '输出为 null', 10, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '给定如下Java代码，编译运行时，结果是（选一项）' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    for(int i = 0; i < 3; i++){' || chr(10) || '        System.out.print(i);' || chr(10) || '    }' || chr(10) || '    System.out.print(i);' || chr(10) || '}', '编译时报错', '正确运行，输出012', '正确运行，输出123', '正确运行，输出0123', 11, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '给定如下Java代码，编译运行之后，将会输出（选一项）' || chr(10) || 'public class Test ' || chr(10) || '{' || chr(10) || 'public static void main(String args[]) {' || chr(10) || '    int Output = 10;' || chr(10) || '    boolean b1 = false;' || chr(10) || '    if((b1 == true) && ((Output += 10) == 20)) {' || chr(10) || '        System.out.println("Equal" + Output);' || chr(10) || '    }' || chr(10) || '    else {' || chr(10) || '        System.out.println("Not equal" + Output);' || chr(10) || '    }' || chr(10) || '}}', 'Equal 10', 'Equal 20', 'Not equal 10', 'Not equal 20', 12, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '给定如下Java代码，编译运行之后，将会输出（选一项）' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int a = 5;' || chr(10) || '    System.out.println((a % 2 == 1) ? (a + 1)/2 : a/2);' || chr(10) || '}', '1', '2', '2.5', '3', 13, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '给定一个 Java 源程序 Test.Java, 在命令行中应该使用下面（  ）语句可以编译、运行该程序。（选一项）' || chr(10) || '', 'Javac Test.Java' || chr(13) || '      Java Test' || chr(13) || '', 'Javac Test.Java      ' || chr(13) || 'Java Test.clsss' || chr(13) || '', 'Javac Test.Java' || chr(13) || '      Java Ttest' || chr(13) || '', 'Javac Test.Java' || chr(13) || '      Java Test.class' || chr(13) || '', 14, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '给定一个java程序的代码片段，如下：把这段代码转换为if语句，以下正确的是（选一项）' || chr(10) || 'switch(grade){' || chr(10) || '    case''A'':score=100;break;' || chr(10) || '    case''B'':score=90;break;' || chr(10) || '    case''C'':' || chr(10) || '    case''D'':score=60;break;' || chr(10) || '    default:score=0;break;' || chr(10) || '}', 'if(grade=''A'') score=100;else if(grade=''B'') score=90;else if(grade=''C''||grade=''D'') score=60;elsescore=0;', 'if(grade=''A'') score=100; if(grade==''B'')score=90; if(grade==''C''||grade==''D'') score=60; else score=0;', 'if(grade==''A'')score=100;else if(grade==''B'')score=90;else if(grade==''C'')score=60;else if(grade==''D'')score=60;else score=0;', 'if(grade==''A'')score=100;else if(grade==''B'') score=90;else if(grade==''C''||grade==''D'') score=60;else score=0;', 15, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于Java下列描述中正确的一项是（选一项）', '标识符首字符的后面可以跟数字；', '标识符不区分大小写；', '复合数据类型变量包括布尔型、字符型、浮点型；', '数组属于基本数据类型；', 16, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于Java语法说法正确的是（选一项）', 'switch –case 语句中的default语句是必须的', 'else可以单独使用', 'case 子句后可以跟字符串', 'else总是和最近的if匹配', 17, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '结构化程序设计所规定的三种基本控制结构是（选一项）', '输入，处理，输出', '树行，网状，环行', '顺序，分支，循环', '主程序，子程序，函数', 18, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '考虑以下的JAVA程序：' || chr(10) || 'public static void main(String args[]) {' || chr(10) || 'int i,j,num=0;' || chr(10) || 'for(i=0;i<4;i++)' || chr(10) || '    for(j=i;j<2;j++)' || chr(10) || '        num=num+j;' || chr(10) || 'System.out.println("the value of num is "+ num);' || chr(10) || '}' || chr(10) || '程序执行后，num的值应该是（选一项）', '2', '4', '0', '3', 19, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(10*(2-8)+10)/(5-5*2)在JAVA语言中，上面的表达式计算结果为（选一项）', '-10', '10', '30', '-32', 20, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '阅读下面的Java代码' || chr(10) || 'int[] arr;' || chr(10) || 'int n = 5;' || chr(10) || 'n = n * 2 +1;' || chr(10) || 'arr = new int[n];' || chr(10) || 'System.out.println(arr.length);' || chr(10) || '程序输出的结果是（选一项）', '5', '8', '10', '11', 21, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在 Java 语言中 , 下面 (  ) 转义序列表示换行。（选一项）', '\a', '\n', '\r', '\f', 22, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在 JAVA编程中，Java编译器会将Java源代码程序转换为（选一项）', '字节码', '可执行代码', '机器代码', '以上所有选项都不正确', 23, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在 Java语言中，下列代码片段的输出结果是（选一项）' || chr(10) || 'float a = 50;' || chr(10) || 'int b = 4;' || chr(10) || 'float c = a/b;' || chr(10) || 'System.out.println(c);', '0', '12', '12.0', '12.5', 24, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Java 语言中，下列代码的输出结果是（选一项）' || chr(10) || 'public static void main(String[] args) {' || chr(10) || 'int i=5, j=10;' || chr(10) || 'do {' || chr(10) || '    if(i>j) {' || chr(10) || '        break;' || chr(10) || '    }' || chr(10) || '    j--;' || chr(10) || '    i++;' || chr(10) || '}while(j!=i);' || chr(10) || 'System.out.println( i + "," + j);' || chr(10) || '}', '8,7', '9,6', '7,6', '7,8', 25, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java 语言中定义了如下变量：double x=10.0; y=3.0;int z=2;下面强制转换符都发生了作用，除了（选一项）', '(int)(x+y/z);', '(double)(x/y);', '(int)x;', '(int)(y+z);', 26, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JAVA编程中，源代码文件的扩展名为（选一项）', '.class', '.java', '.com', '以上所有选项都不正确', 27, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在JAVA语言中' || chr(10) || '描述A：‘8’与8是相同的' || chr(10) || '描述B：‘￥’的数据类型是char' || chr(10) || '下面的选项(  )是正确的（选一项）', '两个描述都是正确的', '只有描述A是正确的', '两个描述都是错误的', '只有描述B是正确的', 28, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JAVA语言中，(  )语句可以结束本次循环而不会结束整个循环。（选一项）', 'next', 'continue', 'switch', 'break', 29, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JAVA语言中，3/5的值是（选一项）', '1', '0', '2', '0.6', 30, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Java语言中，5/3的值是（选一项）', '1', '–1', '2', '1.67', 31, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Java语言中，假设以下所有变量均为整型，则下列代码执行后c的值是（选一项）' || chr(10) || 'a=2;b=5;b++;c=a+b;', '5', '6', '7', '8', 32, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java语言中，经过如下运算后，num的值为（选一项）' || chr(10) || 'int num = 0;' || chr(10) || 'num = 2>3?0:1;', '0', '1', '2', '3', 33, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JAVA语言中，静态变量用（   ）修饰的。（选一项）' || chr(10) || '', 'static' || chr(13) || '', 'final' || chr(13) || '', 'abstract' || chr(13) || '', 'interface' || chr(13) || '', 34, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '在Java语言中，下列（   ）是合法的标示符（选两项）', '$95', '_wii', '3psp', 'break;', 35, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '在JAVA语言中，下列(  )是合法的标示符（选两项）', 'Main', 'p234', '4x', 'short', 36, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JAVA语言中,下列JAVA语言代码的循环体执行的次数是（选一项）' || chr(10) || 'int n=2;' || chr(10) || 'while(n == 0){' || chr(10) || '    System.out.println(n);' || chr(10) || '    n--;' || chr(10) || '}', '0', '1', '2', '3', 37, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Java语言中，下列表达式的运算的结果是（选一项）' || chr(10) || '10/2 +5%10；', '5', '7', '10', '12', 38, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Java语言中，下列代码的输出结果是（选一项）' || chr(10) || 'public static void main(String[] args) {' || chr(10) || '    int[] num={10,20,51,40,50};' || chr(10) || '    System.out.println(num[2]);' || chr(10) || '}', '40', '50', '51', '60', 39, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JAVA语言中,下列代码的输出结果是（选一项）' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int i,j=0;' || chr(10) || '    for(i=1;i<10;i++){' || chr(10) || '        if(i%4==0)' || chr(10) || '            continue;' || chr(10) || '        j =i; ' || chr(10) || '    }' || chr(10) || '    System.out.println(i + "," + j);' || chr(10) || '}', '10,9', '3,6', '10,8', '4,10', 40, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Java语言中，下列代码的运行结果是（选一项）' || chr(10) || 'int a = 1, sum = 0;' || chr(10) || 'while (a< 3){' || chr(10) || '   sum = sum + a;' || chr(10) || '   a++;' || chr(10) || '}' || chr(10) || 'System.out.println(sum);', '2', '3', '4', '以上都不对', 41, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JAVA语言中，下列代码运行的结果是（选一项）' || chr(10) || 'int a=1,b=3,c=5;' || chr(10) || 'if(a>b)' || chr(10) || 'if(b>c)' || chr(10) || '   c=a+b;' || chr(10) || 'else ' || chr(10) || '   c=a*b;' || chr(10) || 'System.out.println( a + "\t" + b + "\t" + c);', '1   3   5', '1   3   4', '1   3   6', '1   3   3', 42, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java语言中，下列对于字符数组的定义并赋值正确的是（选一项）', 'char[ ] name = new char[4];', 'char[ ] name = {''S'',''V'',''S'',''E''};', 'char[4] name = "SVSE";', 'char[4] name = {''S'',''V'',''S'',''E''};', 43, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Java语言中，下列关于方法的优点，说法错误的是（选一项）', '通过使用方法，可以提供程序开发的效率', '通过使用方法，可以提高代码的重用性', '通过使用方法，使得程序的维护变得复杂', '通过使用方法，使得程序的变得简短和清晰', 44, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '(5 > 10) && (3 < 8)的结果为（选一项）', '非0', 'true', '0', 'false', 45, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'double x,y;' || chr(10) || 'x = 2;' || chr(10) || 'y = x + 3 / 2;' || chr(10) || 'System.out.println(y);' || chr(10) || '输出结果应该为（选一项）', '3.5', '3.0', '2.0', '3', 46, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'if(条件){语名}和if(条件)语句的区别是（选一项）', '没有区别', '一个可以执行多条语句，另一个可以执行一条语句', '可以执行多条语句', '不可以执行多条语句', 47, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'int a, b;' || chr(10) || 'int count=0;' || chr(10) || 'for(a=2,b=5;a<b;a+=2,b++)' || chr(10) || '    count++ ;' || chr(10) || '以上JAVA程序运行后count的值为（选一项）', '0', '3', '2', '4', 48, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'int a[] = {3,9,5,6,4};' || chr(10) || 'System.out.println(a[4]) ;' || chr(10) || '以上JAVA程序段的输出结果为（选一项）', '3', '5', '4', '6', 49, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'int a=0 ;' || chr(10) || 'if(a>5&&a<5){' || chr(10) || '    System.out.println("ok");' || chr(10) || '}输出结果是（选一项）', 'ok', 'false', '没有输出', 'true', 50, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'int i = 0, x = 0;' || chr(10) || 'do {' || chr(10) || '    if (i % 5 == 0)' || chr(10) || '        x++;' || chr(10) || '} ' || chr(10) || 'while (i < 20);' || chr(10) || 'System.out.println(x);' || chr(10) || '输出结果是（选一项）', '4', '10', '0', '以上都不是', 51, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Java 语言中某程序员编写了如下 while 循环代码 , 请问该循环执行 (  )遍。（选一项）  ' || chr(10) || 'int a=5,b=15;' || chr(10) || 'while(a<b) {' || chr(10) || '    System.out.println(b-a);' || chr(10) || '    a++;' || chr(10) || '    b--;' || chr(10) || '}', '1', '5', '10', '无数遍', 52, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', 'Java 语言中有如下代码,下列x的定义中,可以使上段代码输出 100 的有（选两项）' || chr(10) || 'switch(x){' || chr(10) || 'case 100:System.out.println("100");break; ' || chr(10) || 'case 110:System.out.println("110");break;' || chr(10) || '}', 'byte x=100;', 'float x=100;', 'char x=''d'';', 'long x=100;', 53, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Java 中，byte数据类型的取值范围是（选一项）', '-256 至 255', '-255 至 255', '-128 至 127', '-127 至 128', 54, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Java 中，byte数据类型的取值范围是（选一项）', '-256 至 255', '-255 至 255', '-128 至 127', '-127 至 128', 55, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Java程序中，main方法的格式正确的是（选一项）', 'static void main(String[] args)', 'public void main(String[] args)', 'public static void main(String[] s)', 'public static void main(String args)', 56, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Java的字面常量不包括（选一项）', '0', 'true', 'false', 'null', 57, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'JAVA语言中，若有说明int a[10];则对a数组元素的正确的引用是（选一项）', 'a[10]', 'a[3+1]', 'a(5)', 'a(0)', 58, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', 'Java语言中命名一个变量的规则包括（选两项）', '变量的第一个字母必须是字母或下划线或$', '变量名必须以字母或下划线或数字开头', '变量名不区分大小写', '第一个字符后可以是字母，数字和下划线组成的序列', 59, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'public static void main(String args[]) {' || chr(10) || '    double x,y;' || chr(10) || '    x = 2;' || chr(10) || '    y = x + 3/2;' || chr(10) || '    System.out.println(y);' || chr(10) || '}' || chr(10) || '编译运行以上Java语言中，输出结果应该为（选一项）', '3.5', '3', '2.0', '3.0', 60, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '表示关系X<=Y<=Z的JAVA语言表达式为（选一项）', '(X<=Y)&&(Y<=Z)', '(X<=Y)AND(Y<=Z)', '(X<=Y<=Z)', '(X<=Y)＆(Y<=Z)', 61, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '定如下java代码, 编译运行之后, 将会输出（选一项）' || chr(10) || 'public class Test {' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int a = 5;' || chr(10) || '    System.out.println((a % 2 ==1)?(a+1)/2:a/2);' || chr(10) || '}}', '1', '2', '2.5', '3', 62, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '定义了一个方法如下' || chr(10) || 'public static void main( String[] args ){' || chr(10) || '    int[] arr = {5，1，3，6，4，5，6，7，8，9};' || chr(10) || '    changeValue( arr );' || chr(10) || '    System.out.println( arr[2] );' || chr(10) || '}' || chr(10) || 'public static void changeValue(int[] arr){' || chr(10) || '    arr[2] = 5;' || chr(10) || '}' || chr(10) || '程序运行后输出结果为（选一项）', '5', '1', '2', '3', 63, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面的程序段输出的结果是（选一项）' || chr(10) || 'int i=1，b，c；' || chr(10) || 'int[] a=new int[3]；' || chr(10) || 'b=a[i];' || chr(10) || 'c=b+i;' || chr(10) || 'System.out.println(c)；', '1', '2', '0', '3', 64, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面的方法用来求两个数中较大的值' || chr(10) || 'public static int max(int x， int y){ return ________;}' || chr(10) || '在横线出应填入（选一项）', 'x', 'y', 'x>y?x:y', 'x<y?x:y', 65, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面定义数组语句，正确的是（选一项）', 'int arr = new arr[10][2];', 'int ary = {1,2,3,4,5};', 'int[] ary = new arr[10];', 'int[] arr = {-1,"2",3,4,5};', 66, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面对于方法的描述，正确的是（选一项）', '方法可以返回多个值', '方法必须返回一个值', '方法可以有多个参数', '再方法内可以定义其它方法', 67, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面哪些是Java语言中的关键字？？（选一项）' || chr(10) || '', 'sizeof？ ' || chr(13) || '', 'Abstract？ ' || chr(13) || '', 'null？ ' || chr(13) || '', 'Native？' || chr(13) || '', 68, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面选项(  )是JAVA语言中定义的循环语句类型（选一项）。' || chr(10) || '', 'if else' || chr(13) || '', 'loop', 'switch...case' || chr(13) || '', 'for' || chr(13) || '', 69, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '研究下面的JAVA程序段' || chr(10) || 'int i,j;' || chr(10) || 'for(i=5;i<10;i++)' || chr(10) || 'for(j=0;j<4;j++){...}' || chr(10) || '循环体的总执行次数是（选一项）', '20', '25', '24', '30', 70, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '已知：int x=7，y=5； x/y的值为（选一项）', '1', '7', '0', '2', 71, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下(    )不是Java的原始数据类型。（选一项）', 'short', 'boolean', 'unit', 'float', 72, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下不是Java基本数据类型的是（选一项）', 'int', 'float', 'String', 'boolean', 73, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下程序的输出结果是（选一项）' || chr(10) || 'int i;' || chr(10) || 'for (i = 1; i <= 5; i++) ' || chr(10) || '{ ' || chr(10) || 'if (i % 2 == 0)' || chr(10) || '    System.out.print("*");' || chr(10) || 'else ' || chr(10) || '    continue;' || chr(10) || 'System.out.print("#"); ' || chr(10) || '}' || chr(10) || 'System.out.print("$");', '*#*#*#$', '#*#*#*$', '*#*#$', '#*#*$', 74, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下程序的输出结果是（选一项）' || chr(10) || 'public static void main(String args[]) { ' || chr(10) || '    int a=11;' || chr(10) || '    System.out.println (++a);' || chr(10) || '}', '12', '11', '10', '9', 75, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下代码段' || chr(10) || 'int i = 5;' || chr(10) || 'if(i < 3){' || chr(10) || '    if(i > 0 ){' || chr(10) || '        System.out.println ("ok!");' || chr(10) || '    }' || chr(10) || '    else{' || chr(10) || '        System.out.println ("yes!");' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'else{' || chr(10) || '    System.out.println ("no!");' || chr(10) || '}' || chr(10) || '输出的应该是（选一项）', 'ok!', 'yes!', 'no!', 'ok!', 76, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下会产生编译错误的Java语句是（选一项）', 'if (2 == 3) System.out.println("Hi");', 'if (2 = 3) System.out.println("Hi");', 'if (true) System.out.println("Hi");', 'if (2 != 3) System.out.println("Hi");', 77, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '如果要使一幅图像在网页中居中显示，应使用以下语句（选一项）', '<DIV align="center"><IMG src=image.gif></DIV>', '<IMG src=image.gif align="center">', '<IMG src=image.gif align="middle">', '<IMG src=image.gif valign="middle">', 78, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果要为网页链接一个外部样式表文件，应使用以下（   ）标记符。（选一项）', 'A', 'LINK', 'STYLE', 'CSS', 79, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '若干个单选按钮radio一次只能选择一个，则需要设置成相同值的属性是（选一项）', 'type', 'name', 'value', 'checked', 80, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '设置文字滚动方向，需要设置<marquee>标签的哪个属性（选一项）', 'dir', 'direction', 'scrollamount', 'scrolldelay', 81, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '添加密码输入框，需要设置<input>标签的type属性为（选一项）', 'button', 'password', 'text', 'radio', 82, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '外部样式表的文件扩展名是（选一项）', '.OSS', '.DSS', '.CSS', '.asa', 83, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '万维网(WWW)使用的协议是（选一项）', 'web', '浏览器', 'HTML', '超文本传输协议', 84, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '网页标题通常显示在浏览器的（选一项）', '状态栏', '地址栏', '标题栏', '菜单栏', 85, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '为了给页面所有<H1>标题创建样式规则,指定将所有的<H1>标题显示为蓝色,字体显示为Arial. 下列操作正确的是（选两项）', '<STYLE TYPE="text/css">H1{color:blue}H1{font-family:Arial}>/STYLE>', 'B<STYLE TYPE="text/css">H1{color:blue;fontface:Arial}>/STYLE>', '<STYLE TYPE="text/css">H1{color:blue;font-family:Arial}>/STYLE>', '<STYLE TYPE="text/css">H1{color:blue}H1{fontface:Arial}>/STYLE>', 86, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列（  ）项不属于表格属性的对齐方式（选一项）', '左对齐', '右对齐', '居中', '基线', 87, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '下列哪些标记符属性为布尔属性（即只需要指定属性的存在，而不用指定其值的标记符属性）（选两项）', 'noshade', 'width', 'selected', 'size', 88, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列（）扩展名的资源不能用IMG标记符直接插入的网页中。（选一项）', 'PNG', 'JPG', 'SWF', 'GIF', 89, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列关于各表单域的描述不正确的一项是（选一项）', '单选按钮一般以两个或者两个以上的形式出现', '复选框在表单中一般都不是单独出现的，都是多个复选框同时使用', '图片域可以用来代替提交按钮的作用', '我们不可以在表单域中插入图片。', 90, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列能够正确的在一个html页面中导入在同一目录下的"StyleSheet1.css"样式表的是（选一项）', '<style>@import StyleSheet1.css</style>', '<link rel="stylesheet" type="text/css" href="StyleSheet1.css">', '<link rel="stylesheet1.css" type="text/css">', '<link rel="stylesheet" type="text/javascript" href="../htm/StyleSheet1.css">', 91, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下叙述正确的是（选一项）', 'JAVA语言程序总是从第一个定义的方法开始执行', '在JAVA语言程序中，要调用的方法必须在main()方法中定义', 'JAVA语言程序总是从main()方法开始执行', 'JAVA语言程序中的main()方法必须放在程序的开始部分', 92, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下字符常量中不合法的是（选一项）', '''|''', '''\''''', '"\n"', '''我''', 93, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '有如下JAVA语言程序，则程序运行后的结果为（选一项）' || chr(10) || 'public static  void main(String args[]) {' || chr(10) || '    int a = 2;' || chr(10) || '    int b = 3;' || chr(10) || '    int c = a>b?a:b;' || chr(10) || '    System.out.println(c);' || chr(10) || '}', '2', '3', '1', '0', 94, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '有如下的JAVA语言程序，运行后m的值为（选一项）' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int a=4;' || chr(10) || '    int m=0;' || chr(10) || '    int i,j;' || chr(10) || '    for(i=0;i<a;i++)' || chr(10) || '        for(j=0;j<=i;j++)' || chr(10) || '            m++;' || chr(10) || '}', '9', '10', '12', '16', 95, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有以下程序 ' || chr(10) || 'public static void main(String args[]) {' || chr(10) || '    int x=3, y=2; ' || chr(10) || '    System.out.println(x/y); ' || chr(10) || '} ' || chr(10) || '程序运行后的输出结果是（选一项）', '3', '2', '1', '0', 96, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '阅读下面的JAVA 语言代码，输出结果是（选一项）' || chr(10) || 'int x,y=1,z=0;' || chr(10) || 'if(z<10)' || chr(10) || '    x=3;' || chr(10) || 'else if(y==0)' || chr(10) || '    x=5;' || chr(10) || 'else' || chr(10) || '    x=7;' || chr(10) || 'System.out.println(x-y);', '7', '3', '4', '2', 97, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JAVA语言中，下列正确的字符型常量是（选一项）', '“”', '''9''', '#', '365', 98, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JAVA语言中，下面()是逻辑运算符中优先级最高的（选一项）', '!', '&&', '||', '|', 99, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '在Java语言中，下面变量命名合法的有（选两项）', 'variable123', '123varable', 'private', 'variable_123', 100, 101);
commit;
prompt 100 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Java语言中，下面程序的输出结果是（选一项）' || chr(10) || 'public static void fun(int a,int b,int c) {' || chr(10) || '    c = a * b;' || chr(10) || '}' || chr(10) || 'public static void main(String[] args) {' || chr(10) || '    int c = 0;' || chr(10) || '    fun(2,3,c);' || chr(10) || '    System.out.println(c);' || chr(10) || '}', '0', '1', '6', '无法确定', 101, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java语言中，已知 a 为int 型，b 为 double型，c 为 float 型，d 为 char 型，则表达式 a+b*c-d/a 的 结果类型为（选一项）', 'int', 'double', 'float', 'char', 102, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在JAVA语言中，以上正确的函数定义形式是（选一项）', 'double run(x,y);', 'double run(int x;int y);', 'double run(int x,int y);', 'double run(int x,y);', 103, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在java语言中，有如下定义' || chr(10) || 'public static void f (int x,int y) {' || chr(10) || '    int t ;' || chr(10) || '    if(x>y){' || chr(10) || '        t=x;' || chr(10) || '        x=y;' || chr(10) || '        y=t;' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int a=4,b=3,c=5;' || chr(10) || '    f(a,b);' || chr(10) || '    System.out.println(a,b,c);' || chr(10) || '}输出结果是（选一项）', '3,4,5', '5,3,4', '4,5,3', '4,3,5', 104, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JAVA语言中，运行下面的程序段后将输出（选一项）' || chr(10) || 'char a[],b[] = {''c'',''h'',''i'',''n'',''a''};' || chr(10) || 'a=b;' || chr(10) || 'System.out.println(a);', 'china', 'ch', 'chi', '编译出错', 105, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在JAVA语言中，执行下面的循环后，x的值为（选一项）' || chr(10) || 'public static void main(String args[]) {' || chr(10) || '    int y=1,x=1;' || chr(10) || '    for(;y<=50;y++) {' || chr(10) || '        if(x==10)' || chr(10) || '            break;' || chr(10) || '        if(x%2==1) {' || chr(10) || '            x =3;' || chr(10) || '            continue;' || chr(10) || '        }' || chr(10) || '        x =3;' || chr(10) || '    }' || chr(10) || '}', '1', '2', '3', '4', 106, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在JAVA语言中，执行语句：char ch = ''A'' + 3;后ch的值为（选一项）', '不能确定', '67', '''C''', '''D''', 107, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java语言中定义了如下变量：char ch;下列赋值语句正确的是（选一项）', 'ch = "strtest"', 'ch = ''2''', 'ch = ''2345''', 'ch = strtest', 108, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '在Java语言中如下定义：int[] a= new int[10];则对a数组元素的正确引用是（选两项）', 'a[10]', 'a[3+1]', 'a(5)', 'a[0]', 109, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在JAVA语言中若有以下定义，则表达式a*b+d-c的值的类型为（选一项）' || chr(10) || 'char a;' || chr(10) || 'int b;' || chr(10) || 'float c;' || chr(10) || 'double d;', 'float', 'int', 'char', 'double', 110, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '在JAVA语言中下列哪组不是合法的用户标识符（选两项）', 'integer 和  1ch', 'Int 和  scan', 'case  和  public', '_ch 和 integer', 111, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JAVA中, 无论测试条件是什么, 下列(    )循环将至少执行一次。（选一项）', 'for', 'do…while', 'while', 'while…do', 112, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在JAVA中，（   ）关键字用来终止循环。（选一项）', 'return', 'continue', 'break', 'exit', 113, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Java中，下列(   )语句不能通过编译。（选一项）', 'String s = "john" + "was" + "here";', 'String s = "john" + 3;', 'int a = 3 + 5;', 'float f = 5 + 5.5;', 114, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Java中下面哪一行代码不出现编译警告或错误？（选一项）' || chr(10) || '', 'float f = 1.3;' || chr(13) || '', 'char c = "a";' || chr(13) || '', 'byte b = 257;' || chr(13) || '', 'int i = 10;' || chr(13) || '', 115, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java中以下错误的描述是（选一项）', 'break语句不能用于循环语句和switch语句外的任何其他语句', '在switch 语句中使用break语句或continue语句的作用相同', '在循环语句中使用continue语句是为了结束本次循环，而不是终止整个循环', '在循环语句中使用break语句是为了使流程跳出循环体，提前结束循环', 116, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '执行下列 Java 语言代码段后 ,k 的值是（选一项）' || chr(10) || 'int k =45,a =18,b =23,c =9;' || chr(10) || 'k=a<b?b:a;' || chr(10) || 'k=k>c?c:k;', '23', '18', '45', '9', 117, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '<A href="#">所表示的意义是（选一项）', '表示从当前页面跳转到名为' || chr(13) || '#的页面', '表示从当前页面跳转到当前页面中名为' || chr(13) || '#的锚点', '表示把当前位置命名为“#”', '表示空链接，不做任何跳转', 118, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<form>标签中用来指定表单需要提交的地址，需要设置属性（选一项）', 'name', 'method', 'action', 'onsubmit', 119, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '<img>标签要显示图片必须要设置的属性是（选一项）', 'href', 'background', 'rel', 'src', 120, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<marquee>标签中设置滚动的次数用到的属性是（选一项）', 'behavior', 'scrollamount', 'loop', 'direction', 121, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'html文档是一种文本文件，具有（  ）扩展名（选一项）', 'html 或者 .htm', '.js', '.doc', '.gif', 122, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'html文档由哪几部分组成？（选一项）', 'html部分，头部分,正文部分。', 'html部分，头部分,title部分', 'html部分，head部分', 'title 部分，html部分，p部分', 123, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Iframe框架的属性src表示（选一项）', '源文件', '框架要加载的页面地址', '框架是否允许被滚动', '框架的边框', 124, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'WWW上的所有信息都是以（）的形式提供的。（选一项）', 'DOC', 'TXT', 'HTML', 'EXE', 125, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '标记用于以预定义的格式显示文本，即文本在浏览器中显示时遵循在HTML源文档中定义的格式（选一项）', '<ADDRESS>', '<BLOCKQUOTE>', '<PRE>', '<SPAN>', 126, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '表格边框厚度设为（  ），在浏览器中显示时就没有边框了。（选一项）', '0', '1', '2', 'null', 127, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '表格最基本的单元是（选一项）', '行', '列', '单元格', '行和列', 128, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '对于Internet Explorer 浏览器，可以使用（  ）标记将声音添加到网页上。（选两项）', '<BGSOUND>', '<EMBED>', '<SOUND>', '<EMBEDSOUND>', 129, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '对于下拉列表选项，下列说法错误的是（选一项）', '可以设置成单选', '可以设置成多选', '下拉框中size的值默认为0时，则说明一次只能看见一个选项值', '在<select  multiple="multiple"  id="aa"></select>中，multiple表明这个下拉列表为多选', 130, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '分析下面HTML语句：' || chr(10) || '<EMBED SRC ="firework.avi"  WIDTH = "250"  HEIGHT = "150" ' || chr(10) || 'AUTOSTATR = "TRUE">' || chr(10) || '下面说法正确的是（选一项）', '该语句实现在网页上添加声音文件firework.avi', '该文件不会自动播放', '可以通过添加LOOP属性指定播放的次数', 'WIDTH 和 HEIGHT 属性指定页面的尺寸', 131, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '给页面添加背景色，需要设置属性的标签是（选一项）', '<html>', '<head>', '<tilte>', '<body>', 132, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '根据以下的HTML代码片段：' || chr(10) || '...' || chr(10) || '<h1 style ="font-style:italic;color:limegreen;font-size=30">' || chr(10) || '    hello!Nice to meet you !' || chr(10) || '</h1>' || chr(10) || '<h1>' || chr(10) || 'this is the default display of an h1 element' || chr(10) || '</h1>' || chr(10) || '...' || chr(10) || '以下描述不正确是（选一项）', '第一个h1设置了特定的样式', '第二个h1用了系统默认的样式', '"hello!Nice to meet you !"的字体颜色是浅绿色(limegreen)', '"this is the default displayof an h1 element"的字体大小为30', 133, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于超链接，下列说法正确的是（选一项）', '超链接的标记符号是<A>,如果要引入锚点，则是使用它的name属性来完成。', '超链接需要使用src属性指明链接目标的URL。', '超链接目标不可以是本站点内网页的某一部分。', '超链接的目标页面不可以是另一个网页。', 134, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于文本对齐，源代码设置不正确的一项是（选一项）', '居中对齐：<div align="middle">…</div>', '居右对齐：<div align="right">…</div>', '居左对齐：<div align="left">…</div>', '两端对齐：<div align="justify">…</div>', 135, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于样式表，下列说法错误的是（选一项）', '大括号将选择器和整个属性序列都包括在内，定义CSS样式。', '冒号将属性名称与它的值分开。', '分号表示一个属性定义的结束。', '类选择器使用HTML元素的class属性。', 136, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '合并单元格3列为1列，下面设置正确的是（选一项）', '<td colspan=3></td>', '<td rowspan=3></td>', '<td cols=3></td>', '<td rows=3></td>', 137, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '己知services.html与text.html在同一服务器上，但不在同一文件夹中。假如文档services.html在文件夹information 中，proposals段落在文档services.html中。现要求在text.html文档中编写一个超链接，链接到文档services.html的proposals段落。下面语句正确的是（选一项）', '<A HREF = "services.html#proposals">Link</A>', '<A HREF = "information/services.html#proposals">Link</A>', '<A HREF = "#proposals">Link</A>', '<A HREF = "information#proposals">Link</A>', 138, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '假如要在网页中显示下列内容：' || chr(10) || '我们是SVSE的学员' || chr(10) || '并要求将"SVSE" 四个字用25号字体显示' || chr(10) || '下面语句正确的是（选一项）', '<p>我们是<DIV STYLE="font-size:25">svse</DIV>的学员', '<P>我们是< DIV FONT ="font-size:25">svse</SPAN>的学员', '<P>我们是<SPAN FONT="font-size:25">svse</SPAN>的学员', '<P>我们是<SPAN STYLE="font-size:25">svse</SPAN>的学员', 139, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '可以浮动于页面之上任意位置的标签是（选一项）', '<div>', '<span>', '<talbe>', '<frameset>', 140, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '框架网页中的每个框架窗口，显示的是（选一项）', '单独的网页', '网页的一部分', '一个图片', '一段文字', 141, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '李明在使用OutLook Express发送邮件时，发送不能成功，你认为他的收件人应该改为（选一项）', 'xiaoming$sohu.com', 'xiaoming@sohu.com', 'xiaoming#sohu.com', 'xiaoming.sohu.com', 142, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '浏览器与Web服务器之间进行相互通信的协议是（选一项）', 'FTP', 'IPX/SPX', 'TCP/IP', 'HTTP', 143, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '锚链接的创建和链接需要用到的属性分别是（选一项）', 'src  ' || chr(9) || '  name', 'name  href', 'href   src', 'href   name', 144, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '默认情况下，在HTML文档中使用（）标记绘制水平线。（选一项）', '<LEN>', '<LINE>', '<HR>', '<P>', 145, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '能够提交表单的按钮，type属性的值应该为（选一项）', 'button', 'reset', 'submit', 'hidden', 146, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '请选出不属于<font>标记属性的一项（选一项）', 'size', 'align', 'color', 'face', 147, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果每一个框架中嵌入一个文件，则一个有3个框架的网页保存后有（  ）个文件。（选一项）', '3', '4', '5', '6', 148, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '李明买了几本Java的书籍，价格(单位元)分别是32，40，28，30，18。为了按价' || chr(9) || '格对这些书进行升序排序得到结果18，28，30，32，40，李明编写了如下Java代码，请问在横线处应该填写的代码是（选一项）' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int price[5] = {30,40,20,32,18};' || chr(10) || '    int i,j,temp;' || chr(10) || '    for(i=0;i<5;i++){' || chr(10) || '        for(j=0;j<5-i-1;j++){' || chr(10) || '            if(_________){' || chr(10) || '                temp=price[j];' || chr(10) || '                price[j]=price[j+1];' || chr(10) || '                price[j+1]=temp;' || chr(10) || '            }' || chr(10) || '        }' || chr(10) || '    }' || chr(10) || '}', 'price[j]>price[j+1]', 'price[j]<price[j+1]', 'j>i', 'i<j', 149, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '能将用JAVA语言编写的源代码转换成字节码的命令是（选一项）', 'java', 'javac', 'javadoc', 'javab', 150, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '能正确表示a≥10或a≤0的关系表达式是（选一项）', 'a>=10 or a<=0', 'a>=10│a<=0', 'a>=10||a<=0', 'a>=10&&a<=0', 151, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '如果数组a有10个成员，则对a数组元素的不正确引用是（选两项）', 'a[10]', 'a[3-4]', 'a[5]', 'a[0]', 152, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '若k为整形，则while循环执行(  )次（选一项）' || chr(10) || 'int k=2; ' || chr(10) || 'while(k==0) {' || chr(10) || '    System.out.println(k);' || chr(10) || '    k--;  ' || chr(10) || '}', '10', '9', '0', '1', 153, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '若有说明语句:char c＝''72'';则变量c（选一项）', '包含1个字符', '2个字符', '包含3个字符', '代码错误', 154, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '设int 型变量 a、b，float 型变量 x、y，char 型变量 ch 均已正确定义并赋值，正确的switch语句是（选两项）', 'switch (x + y) { …… }', 'switch ( ch + 1 ) { …… }', 'switch ch { …… }', 'switch ( a + b ){ …… }', 155, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '声明一个数组 int[][] arr = new[3][5]; 该数组中共有(  )个元素。（选一项）', '9', '10', '15', '12', 156, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列Java代码运行后a, b,c 的值分别为（选一项）' || chr(10) || 'int a = 1,b = 5,c;' || chr(10) || '++a;' || chr(10) || 'b++;' || chr(10) || 'c = a + b;', '2   6   8', '1  5  9', '1  5  8', '以上都不正确', 157, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列Java方法定义中，正确的是（选一项）', 'int x( int a,b )', 'boolean x( int a,int b) { return (a-b); }', 'void x( a,b )', 'int x( int a,int b) { return a-b; }', 158, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列Java语句中，不正确的一项是（选一项）', 'int？$e,a,b？=10;', 'char？c,d？=？''a'';', 'float？e？=？0.0d;', 'double？e？=？0.0f;', 159, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列JAVA语言程序段不是死循环的是（选一项）', 'int i=100;while(1==1){i = i%100;if(i>100) break;}', 'for(; ;){}', 'int k=0; do {   } while(k<=0);', 'boolean b = false; while(b){};', 160, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列JAVA语言代码的输出结果是（选一项）' || chr(10) || 'public static void main(String args[]){' || chr(10) || 'int i;' || chr(10) || 'for(i=0;i<3;i++) {' || chr(10) || '    switch(i) {' || chr(10) || '    case 1:System.out.print(i);' || chr(10) || '    case 2:System.out.print(i);' || chr(10) || '    default :System.out.print(i);' || chr(10) || '    }' || chr(10) || '}}', '011122', '012', '012020', '120', 161, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列代码' || chr(10) || 'public static void main(String []args){' || chr(10) || '    int i = 5;' || chr(10) || '    do {' || chr(10) || '        System.out.println(i);' || chr(10) || '        ++i;' || chr(10) || '    }while (i>5); ' || chr(10) || '}输出为（选一项）', '死循环', '5', '程序报错', '无法编译', 162, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列代码中，将引起编译错误的行是（选一项）' || chr(10) || 'public？class？Exercise{ ' || chr(10) || 'public？static？void？main(String？args[]){ ' || chr(10) || '    float？f = 0.0; ' || chr(10) || '    f += 1.0; ' || chr(10) || '}}', '第2行？？', '第3行？？', '第4行？？', '第6行', 163, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列的哪个赋值语句是正确的？（选一项）' || chr(10) || '', 'char a = 12.0;' || chr(13) || '', 'int a = 12.0;' || chr(13) || '', 'int a = 12.0f;' || chr(13) || '', 'int a = (int)12.0;' || chr(13) || '', 164, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列方法定义中，方法头不正确的是（选一项）', 'public static x(double a)', 'public static int x(double y)', 'void x(double d)', 'public int x()', 165, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列关于char类型的数据说法中，正确的一项是：（选一项）', '’\r’表示换行符；', '’\n’表示回车符；', 'byte的范围是-128~128', '凡是在Unicode的字符都可以用单引号括起来作为char类型常量；', 166, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列关于变量组成部分描述正确的一项是：（选一项）', '变量名不是标识符；', '变量名是标识符；', '浮点型属于复合类型；', '变量分为：基本类型和复合类型；', 167, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列哪个不是正确标识符：（选一项）', '$million;', '$_million;', '1？$_million;', '$1_million;', 168, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列哪一个是正确的Java标识符命名（选一项）', '12@34', '_student', '-class', '1234', 169, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列哪一项不属于Java语言的特点（选一项）', '健壮性', '安全性', '面向对象', '不能跨平台', 170, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列语句序列执行后，x 的值是（选一项）' || chr(10) || 'int a = 3, b = 4, x = 5; ' || chr(10) || 'a++;' || chr(10) || 'if( a == b )' || chr(10) || '    x = a * x;', '35', '25', '20', '5', 171, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面(  )是JAVA语言中的有效注释（选一项）', '/* this is a comment*/', '--this is a comment', '*this is a comment*', '/--this is a comment', 172, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面JAVA程序的输出结果是（选一项）' || chr(10) || 'int i,x[][]={{1,2,3},{4,5,6},{7,8,9}};' || chr(10) || 'for(i=0;i<3;i++)' || chr(10) || '    System.out.print(x[i][2-i]);', '1 5 9', '1 4 7', '3 5 7', '3 6 9', 173, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面程序输出结果是（选一项）' || chr(10) || 'System.out.println(''2''+ ''2'');', '22', '4', '0', '100', 174, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面的Java程序段：' || chr(10) || 'int i,j;' || chr(10) || 'for(i = 3;i > 0;i--)' || chr(10) || '    for(j = 0;j < 5;j++)' || chr(10) || '    {...}' || chr(10) || '循环体的总执行次数是（选一项）', '8', '15', '20', '16', 175, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面的JAVA语言代码段的输出结果是（选一项）' || chr(10) || 'int j;' || chr(10) || 'for(j=1;j<10;j+=2)' || chr(10) || '    System.out.print(j);', '1 2 3 4 5 6 7 8 9', '2 4 6 8', '1 3 5 7 9', '1 2 4 6 8', 176, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在.NET的WinForms程序中，可以使用()对象来连接和访问数据库。（选一项）', 'MDI', 'JIT', 'ADO.NET', 'System.ADO', 177, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在．NET的控件中，Panel、GroupBox、TabControl等分组控件，有时候也被称之为（选一项）', '容器控件', '组合控件', '排列控件', '基类控件', 178, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在.NET中，程序员在代码中漏写了一个左大括号，这属于（选一项）', '逻辑错误', '运行时错误', '语法错误', '自定义错误', 179, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在．Net中，定时器(Timer)控件的（   ）事件用编写定时触发的程序代码。（选一项）', 'Timer', 'Start', 'Trigger', 'Tick', 180, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在.NET中，文本框控件的(  )属性用来设置其是否是只读的。（选一项）', 'ReadOnly', 'Locked', 'Lock', 'Style', 181, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在.NET中，以下关于命名空间的描述，正确的是（选一项）', '命名空间不可以进行嵌套', '任一个.cs文件中，只能存在一个命名空间', '便用private修饰的命名空间，其内部的类也不允许访问', '命名空间使得代码更加有条理、结构更清晰', 182, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在.NET中，在窗体中显示一个消息框，并在点Yes按钮时关闭窗口，代码如下:' || chr(10) || '     MessageBoxButtons buttons = MessageBoxButtons.YesNo;' || chr(10) || '     DialogResult result;' || chr(10) || '     // (1)此处填写正确的代码' || chr(10) || '     if(result == DialogResult.Yes) ' || chr(10) || '     {' || chr(10) || '        this.Close();' || chr(10) || '     }' || chr(10) || '则您认为在(1)处最合适的代码应该是（选一项）', 'result = MessageBox.Show(this, "Cancel this operation?", "No Server Name Specified", buttons);', 'result = MessageBox(this,"Cancel this operation?","No Server Name Specified",bottons);', 'result = MessageBox.Show("Cancel this operation?","No Server Name Specified");', 'result = MessageBox("Cancel this operation?","No Server Name Specified");', 183, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ADO.NET,以下是创建一个数据集的代码，下列能够正确输出“李四”的代码是（选一项）' || chr(10) || 'DataSet ds = new DataSet();' || chr(10) || 'DataTable dt = new DataTable();' || chr(10) || 'dt.Columns.Add("name",typeof(System.String));' || chr(10) || 'DataRow dr = dt.NewRow();' || chr(10) || 'dr[0] = "李四";' || chr(10) || 'dt.Rows.Add(dr);' || chr(10) || 'ds.Tables.Add(dt);', 'Console.WriteLines(ds.Tables["name"].Rows[0][0]);', 'Console.WriteLines(ds.Tables[0].Rows[0]["name"]);', 'Console.WriteLines(ds.Rows[0][0]);', 'Console.WriteLines(ds.Rows["name"][0]);', 184, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ADO.NET应用程序中,通常要处理多条数据库记录,如果每次应用程序需要处理下一条记录时都返回数据库是不实际的,所以一个解决方案是使用（  ）来完成数据的处理。（选一项）' || chr(10) || '', 'DataSet', 'ResultSet', 'DataReader', 'DataAdpter', 185, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ADO.NET中，SqlConnection 类所在的命名空间是（选一项）', 'System', 'System.Data', 'System.Data.OleDb', 'System.Data.SqlClient', 186, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ADO.NET中,SqlConnection类所在的命名的空间是（选一项）', 'System', 'System.Data', 'System.Data.OleDb', 'System.Data.SqlClient', 187, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面标记中，（  ）在标记的位置添加一个换行符。（选一项）', '<H1>', '<ENTER>', '<BR>', '<HR>', 188, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面标签中，没有type属性的是（选一项）', '<ul>', '<ol>', '<font>', '<input>', 189, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面标签中的文字，哪个字体最大（选一项）', 'h1', 'h2', 'h3', 'h4', 190, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面的标签中不能起到换行作用的是（选一项）', '<p>', '<br>', '<h1>', '<b>', 191, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面解释不正确的是（选一项）', 'HTML 超文本标记语言', 'WWW 万维网', 'HTTP  文件传输协议', 'URL   统一资源定位器', 192, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪个属性不是<select>标签的属性（选一项）', 'Name', 'Size', 'Multiple', 'Selected', 193, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面哪一项选择不是URL的组成部分（选一项）', '浏览器名称', 'IP地址或者域名', 'HTTP通信协议', '文件夹及文件名称', 194, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面语句中，(  )将HTML页面的标题设置为“HTML练习”。（选一项）', '<HEAD>HTML练习</HEAD>', '<TITLE>HTML练习</TITLE>', '<H>HTML练习</H>', '<T>HTML练习</T>', 195, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面属性中不属于<td>标签的有（选一项）', 'colspan', 'rowspan', 'align', 'border', 196, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '行与单元格的关系是（选一项）', '包含', '相同', '被包含', '无关', 197, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '要创建一个1行2列的表格，下面语句正确的是（选一项）', '<TABLE>' || chr(13) || '<TD>' || chr(13) || '<TR>单元格1</TR>' || chr(13) || '<TR>单元格2</TR>' || chr(13) || '</TD>' || chr(13) || '</TABLE>', '<TABLE>' || chr(13) || '<TR>' || chr(13) || '<TD>单元格1</TD>' || chr(13) || '<TD>单元格2</TD>' || chr(13) || '</TR>' || chr(13) || '</TABLE>', '<TABLE>' || chr(13) || '<TR>' || chr(13) || '<TD>单元格1</TD>' || chr(13) || '</TR>' || chr(13) || '<TR>' || chr(13) || '<TD>单元格2</TD>' || chr(13) || '</TR>' || chr(13) || '</TABLE>', '<TABLE>' || chr(13) || '<TD>' || chr(13) || '<T1>单元格1</T1>' || chr(13) || '<T2>单元格2</T2>' || chr(13) || '</TD>' || chr(13) || '</TABLE>', 198, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '要将页面的背景色设置为红色，下面语句正确的是（选两项）', '<BODY BGCOLOR=RED></BODY>', '<BODY BGCOLOR=FFOOOO></BODY>', '<BODY BGCOLOR=#FFOOOO></BODY>', '<BODY BGCOLOR="FFOOOO"></BODY>', 199, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '要实现以下功能: 在网页中插入一个图片 joke11.gif, 使用者通过单击该图片 , 连接 到joke11.htm上去。下面的HTML代码正确的是（选一项）', '<A HREF="joke11.htm " IMG:SRC= "images/joke11.gif"></A>', '<A HREF="joke11.htm" SRC="images/joke11.gif"></A>', '<A HREF= "jokell.htm"><IMG SRC="images/joke11.gif"></A>', '<A HREF="images/joke11.gir"></A>', 200, 102);
commit;
prompt 200 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '要在表单中创建一个多行输入文本框，初始值：这是一个多行文本框，下面语句正确的是（选一项）', '<TEXTAREA  NAME="texr1" VALUE="这是一个多行文本框"></TEXTAREA>', '<INPUT TYPE =text VALUE="这是一个多行文本框" NAME="text1">', '<INPUT TYPE =textarea NAME="text1"  VALUE="这是一个多行文本框" >', '<TEXTAREA  NAME="text1" COLS=20 ROWS=5> 这是一个多行文本框</TEXTAREA>', 201, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '要在网页中显示下面的列表：' || chr(10) || '.苹果' || chr(10) || '.芒果' || chr(10) || '.橘子' || chr(10) || '下列语句正确的是（选一项）', '<UL>   <LI>苹果  <LI>芒果  <LI> 橘子  </UL>', '<OL>   <LI>苹果  <LI>芒果  <LI>橘子  </OL>', '<UL>   <UI>苹果  <UI>芒果  <UI>橘子   </UL>', '<OL TYPE=A>  <LI>苹果  <LI>芒果  <LI>橘子   </OL>', 202, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面哪些不是水平线具有的属性（选一项）', 'align', 'size', 'valign', 'noshade', 203, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '已定义好一个外部样式表文件c.css,要在网页中链接此外部样式表，正确的作法是（选一项）', '<html><head><style><link rel=c.css /></style></head></html>', '<html><head><style><link href=c.css /></style></head></html>', '<html><head><link rel=c.css /></head></html>', '<html><head><link href=c.css /></head></html>', 204, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下标记中，（  ）是上标标记符号。（选一项）', 'u标记' || chr(13) || '', 'sub标记 ' || chr(13) || '', 'th标记' || chr(13) || '', 'sup标记' || chr(13) || '', 205, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下是书签超链接（锚点）的是（选一项）', '<a href="1.htm#a1">第一届</a>', '<a href="1.htm">第一届</a>', '<a href="mailto: 2000@163.com ">评价</a>', '<a href="1.htm*a">第一届</a>', 206, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下说法中，错误的是（选一项）', '获取WWW服务时，需要使用浏览器作为客户端程序', 'WWW服务和电子邮件服务是Internet提供的最常用的两种服务', '网站就是一系列逻辑上可以视为一个整体的页面的集合', '所有网页的扩展名都是 .htm', 207, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '用来限制文本框中输入的字符数，需要设置<input>的属性（选一项）', 'value', 'type', 'size', 'maxlength', 208, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有下面HTML语句，下列说法错误的是（选一项）' || chr(10) || '<textarea name="S1" rows="2" cols="20"> </textarea>', 'name表示文本区的名称。', 'rows 表示文本区的行数。', '当要改变该文本区的行和列时，主要是调用了name属性的值。', '该文本域在输入文本时，能自动换行', 209, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '与test.htm页面同一目录下有一个pic文件夹，pic文件夹中有一张图片bg.jpg，现在要把bg.jpg图片设置为test.htm页面的背景图片，下面写法正确的是（选一项）', 'Background="bg.jpg"', 'Bgcolor="bg.jpg"', 'Background="pic/bg.jpg"', 'Background="../pic/bg.jpg"', 210, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在BODY标记属性中，用于设置网页背景颜色的属性是（选一项）', 'bgcolor', 'background', 'text', 'align', 211, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在HTML文档中, 下列标记用于为网页上的内容提供标题（选一项）', '<body>', '<head>', '<h1>', '<pre>', 212, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在HTML文档中，使用（  ）标记定义的文本在浏览器中显示时，将遵循在HTML源文档中定义的格式。（选一项）', '<P>', '<BR>', '<PRE>', '<A>', 213, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在HTML页面中，()标记用于为表格中的一列指定一个标题（选一项）', '<TR>', '<TD>', '<TH>', '<TT>', 214, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在HTML语言中，定义级联样式表CSS的类选择器是以（  ）符号开头。（选一项）', '#(井号)', '.（点号）', '!（叹号）', '%（百分号）', 215, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在HTML语言中，向网页插入图片的标记是（选一项）', 'P标记', 'A标记', 'H标记', 'IMG标记', 216, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在HTML语言中，有序列表的标记是（选一项）', 'ul', 'li', 'ol', 'dl', 217, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在HTML中，（  ）可以在网页上通过链接直接打开客户端的发送邮件的工具发送电子邮件。（选一项）', '<A HREF="telnet:zhangming@svse.com">发送反馈信息</A>', '<A HREF="mail:zhangming@svse.com">发送反馈信息</A>', '<A HREF="ftp:zhangming@svse.com">发送反馈信息</A>', '<A HREF="mailto:zhangming@svse.com">发送反馈信息</A>', 218, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在HTML中，INPUT元素的TYPE属性用于指定表单元素的类型，下列不可用的类型有（选一项）', 'IMAGE', 'TEXTAREA', 'SELECT', 'HIDDEN', 219, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在HTML中，表单中的INPUT元素的（）属性用于指定表单元素的名称。（选一项）', 'VALUE', 'NAME', 'TYPE', 'CAPTION', 220, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在HTML中，可以使用（  ）标记向网页中插入GIF动画文件。（选一项）', '<SOUND>', '<GIF>', '<TABLE>', '<IMG>', 221, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在HTML中，下列代码（）可以实现每隔60秒自动刷新页面的功能。（选一项）', '<meta http-equiv="refresh" content="1">', '<meta http-equiv="refresh" content="60">', '<meta http-equiv="expires" content="1">', '<meta http-equiv="expires" content="60">', 222, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在HTML中，下列几条关于样式表优点的说法错误的是（选一项）', '样式表可以改变浏览器的默认显示风格', '样式表可以使页面内容和显示样式分离', '样式表可以重用，并且样式表更改后，使用该样式表的文档会做相应的修改', '一个样式表对应一个HTML文档', 223, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在HTML中，下面（   ）标记用于定义表的单元格。（选一项）' || chr(10) || '', '<TABLE>' || chr(13) || '', '<TH>' || chr(13) || '', '<TD>' || chr(13) || '', '<TR>' || chr(13) || '', 224, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在HTML中，下面（  ）标记可将所修饰的文本显示为下标。（选一项）', '<SUB>', '<B>', '<FONT>', '<BR>', 225, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在HTML中，下面（）语句可以将标题的颜色设置成绿色。（选一项）', '<H1 color:green>', '<H1 FONT = green>', '<H1 STYLE = "color:green;">', '<H1 STYLE : green>', 226, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在HTML文档中，（   ）元素在头部可以为搜索引擎定义文档的关键字。（选一项）', '<META>', '<P>', '<BODY>', '<H1>', 227, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在网页上，表单中的input元素的TYPE属性为（）时，用于创建重置按钮（选一项）', 'RESET', 'SET', 'BUTTON', 'IMAGE', 228, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在文档对象模型（DOM）中，所有的对象都继承自（选一项）', 'window对象', 'math对象', 'history对象', 'frame对象', 229, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在样式表中，用于设置网页背景颜色的属性是（选一项）', 'bgcolor', 'background', 'background-color', 'becolor', 230, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '（   ）方法执行指定为Command对象的命令文本的SQL语句，并返回受SQL语句影响或检索的行数。（选一项）', 'ExecuteNonQuery', 'ExecuteReader', 'ExecuteQuery', 'ExecuteScalar', 231, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '（  ）控件可以将其他控件分组。（选两项）', 'GroupBox', 'ComboBox', 'Panel', 'TextBox', 232, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '.NET构架中被用来访问数据库数据的组件集合称为（选一项）', 'ADO', 'ADO.NET', 'COM', 'Data Service.NET', 233, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '.NET中，程序中的错误可以划分为以下三类，除了（选一项）', '逻辑错误', '运行时错误', '语法错误', '自定义错误', 234, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ADO.NET的（  ）对象用来建立应用程序与数据库的连接。（选一项）', 'DataSet', 'DataReader', 'Connection', 'Command', 235, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ADO.NET中，要向DataTable对象中添加一列，以下C#代码正确的是（选一项）', 'myTable = new DataTable("Months");' || chr(13) || '' || chr(10) || 'myTable.Columns.Add("Month", string);', 'myTable = new DataTable("Months");' || chr(13) || '' || chr(10) || 'myTable.Columns.Add("Month", typeof(string));', 'myTable = new DataTable("Months");' || chr(13) || '' || chr(10) || 'myTable.Columns.Add("string",Month));', 'myTable = new DataTable("Months");' || chr(13) || '' || chr(10) || 'myTable.Columns.Add(string ,"Month"));', 236, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, 'C#语言使用（  ）来引入名称空间。（选一项）', 'import', 'using', 'include', 'lib', 237, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'C#中,变量var1是一个引用类型变量,则它（选一项）', '可以存放真正的数据', '只存放指向真正数据的内存地址的引用', '可以存放真正的数据,也存放指向真正数据的内存地址的引用', '改变一个引用类型变量的值,可能会影响到其他值类型变量的值', 238, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Connection 、Command 、（  ）和DataAdapter对象是.NET Framework数据提供程序模型的核心要素。（选一项）', 'DataReader', 'DataSet', 'DataTable', 'Transaction', 239, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'public class Console{' || chr(10) || 'public static void Main()' || chr(10) || '{' || chr(10) || '    __________________;' || chr(10) || '}' || chr(10) || '}在横线处填入语句,输出为:C# is simple。（选一项）', 'Console.PrintLine("C# is simple")', 'Console.WriteLine("C# is simple")', 'WriteLine("C# is simple")', 'Console.Output.WriteLine("C# is simple")', 240, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'public static void Main(string[] args)' || chr(10) || '{ ' || chr(10) || '    int i = 2000; ' || chr(10) || '    object o = i; i = 2001; ' || chr(10) || '    int j = (int)o; ' || chr(10) || '    Console.WriteLine("i={0},o={1},j={2}", i, o, j); ' || chr(10) || '}' || chr(10) || '最后输出结果是（选一项）', 'i=2001,o=2000,j=2000', 'i=2001,o=2001,j=2001', 'i=2000,o=2001,j=2000', 'i=2001,o=2000,j=2001', 241, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'WinForms程序的入口点为（选一项）', '静态方法Main', '静态方法Start', '启动窗体的Form_Load事件', 'Appliaction_OnStart事件', 242, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'WinForms程序中，如果复选框控件的 Checked属性值设置为 True，表示（选一项）', '该复选框被选中', '该复选框不被选中', '不显示该复选框的文本信息', '显示该复选框的文本信息', 243, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'WinForms窗体A中有退出按钮B，如果在按ESC键的时候，相当于点按钮B退出和关闭窗体A，需要设置（' || chr(9) || '）属性。（选一项）', '窗体A的AcceptButton属性', '窗体A的CancelButton属性', '按钮B的AcceptButton属性', '按钮B的CancelButton属性', 244, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'WinForms窗体的（   ）属性用来设置其是否为多文档窗体。（选一项）', 'MDI', 'MDIParant', 'IsMdiContainer', 'IsMDI', 245, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'WinForms中的状态栏不能由(    )组成。（选一项）', 'StatusLabel', 'ProgressBar', 'DropDownButton', 'TextBox', 246, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '程序运行过程中发生的错误，叫作（选一项）', '版本', '断点', '异常', '属性', 247, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '看代码回答问题（选两项）' || chr(10) || '建表如下:   ' || chr(10) || 'create  table stuInfo' || chr(10) || '(' || chr(10) || 'stuId   int  not null,' || chr(10) || 'stuName varchar(30) not null,' || chr(10) || 'stuAddress varchar(30),' || chr(10) || ')' || chr(10) || '看下面C#代码填空，要读取表中的第一列数据(已知sqlCmd为SqlCommand对象，sqlReader为SqlDataReader对象)：' || chr(10) || 'while(sqlReader.________ ) {' || chr(10) || '    Console.WriteLine(sqlReader._________);' || chr(10) || '}', 'Read()    GetInt(0)', 'Next()     GetValue(0)', 'Read()     GetValue(1)', 'Read()     GetValue(0)', 248, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果要将窗体设置为透明的,则（选一项）', '要将FormBoderStyle属性设置为None;', '要将Opacity属性设置为小于100%得值;', '要将locked属性设置为true;', '要将Enabled属性设置为True;', 249, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '使用ADO.NET的参数化（Parameters）为SQL命令添加参数时，需要（选一项）', '参数名称', '参数类型', '参数长度', '参数', 250, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '通过(    )可以设置消息框中显示的按纽。（选一项）', 'Button', 'DialogButton', 'MessageBoxButtons', 'MessageBoxIcon', 251, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '为使用OleDb .NET Data Proviver连接到SQL Server 2005数据库,应将Connection对象的ConnectionString属性中的Provider子属性的值设置为（选一项）', 'Provider=SQLOLEDB', 'Provider=SQLSERVER', 'Provider=Microsoft.Jet.OLEDB.4.0', 'Provider=MSDAORA', 252, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列 (  )是ADO.NET的两个主要组件（选一项）', 'Command和DataAdapter', 'DataSet和DataTable', '.NET数据提供程序和DataSet', '.NET数据提供和DataAdapter', 253, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列（  ）是ADO．NET的两个主要组件。（选一项）', 'Command 和 DataAdapter', 'DataSet 和 DataAdapter', 'NET Framework数据提供程序和DataSet', 'NET Framework数据提供程序和DataAdapter', 254, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列关于ADO.NET的特点错误的是（选一项）', '在ADO.NET中,数据是以XML格式存储的,具有较好的互操作性', 'ADO.NET采用断开式数据结构,这增加了应用程序的开销', '在ADO.NET中,可以采用C# VB.NET等语言编写程序', 'ADO.NET的性能比基于COM的ADO好', 255, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列关于C#的异常处理的说法，错误的是（选一项）', 'try块必须跟catch块组合使用', '一个try块可以跟随多个catch块', '使用throw语句既可引发系统异常，也可以引发由开发人员创建的自定义异常', '在try … catch …..finally块中，即便开发人员编写强制逻辑代码，也不能跳出finally块的执行', 256, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面关于using语句使用正确的是（选一项）', 'using(SqlConnection conn = new SqlConnection(connString)){}', 'using(){SqlConnection conn = new SqlConnection(connString)}', 'SqlConnection conn = new SqlConnection(connString)using(){}', 'using(){}SqlConnection conn = new SqlConnection(connString)', 257, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '已知Winforms中有一个名为"dsOrder"的数据集中有一个名为"order"的表，在"order"表中有一行一列，下列（   ）段代码能够正确得到该表记录的第一行第一列的值。（选一项）', 'dsOrder["order"].Rows[0][0]', 'dsOrder.Tables[0].Rows[0][0]', 'dsOrder.Tables[0].Columns[0][0]', 'dsOrder["order"].Columns[0][0]', 258, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下的C#代码,用来判断两个整数是否相等:' || chr(10) || 'class C{     ' || chr(10) || '    static void Main(string[] args)     ' || chr(10) || '    {        ' || chr(10) || '        int A;        ' || chr(10) || '        int B;        ' || chr(10) || '        if A=B         ' || chr(10) || '            Console.Write("A=B");    ' || chr(10) || '    }' || chr(10) || '}代码中存在的错误包括以下的几项,除了（选一项）', '变量A和B是使用前,必须进行赋值', '判断A和B是否相等,应使用"=="符号', 'A和B是否相等的判断,应该使用括号括起来;', 'if下面的执行代码,应该使用花括号括起来', 259, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下的C#代码:' || chr(10) || 'static void Main(string[]args)' || chr(10) || '{' || chr(10) || '    int i=3;' || chr(10) || '    Console.WriteLine(A(i));' || chr(10) || '}' || chr(10) || 'static int A(int t)' || chr(10) || '{' || chr(10) || '    return A(t) * t;' || chr(10) || '}' || chr(10) || '运行时将输出（选一项）', '9', '27', '编译时报告错误，提示方法调用必须有对象引用', '程序进入将报告溢出错误', 260, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '阅读以下C#代码片段，在程序编译过程中，下面说法正确的（选一项）' || chr(10) || 'int val=100;' || chr(10) || 'object obj=val;' || chr(10) || 'int num=(int)obj;' || chr(10) || 'Console.WriteLine("num:{0}",num);', '第1行执行装箱操作', '第2行执行装箱操作', '禁止线程运行的秒数', '禁止线程运行的CPU时间数', 261, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '阅读以下的C#代码：' || chr(10) || 'public class TEApp' || chr(10) || '{' || chr(10) || '    public static void ThrowException()' || chr(10) || '    {' || chr(10) || '        throw new Exception();' || chr(10) || '    }' || chr(10) || '    public static void Main()' || chr(10) || '    {' || chr(10) || '        try' || chr(10) || '        {' || chr(10) || '            Console.WriteLine("try");' || chr(10) || '            ThrowException();' || chr(10) || '        }' || chr(10) || '        catch (Exception e)' || chr(10) || '        {' || chr(10) || '            Console.WriteLine("catch");' || chr(10) || '        }' || chr(10) || '        finally' || chr(10) || '        {' || chr(10) || '            Console.WriteLine("finally");' || chr(10) || '        }' || chr(10) || '    }' || chr(10) || '}请问代码运行结果是（选一项）', 'try     catch      finally', 'try', 'try     catch', 'try     finally', 262, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '运行如下的C#代码段将输出（选一项）' || chr(10) || 'int a=10;string b="10";' || chr(10) || 'Console.Writeline(a + b);', '20', '1010', '10 10', '编译错误，提示数据类型不匹配', 263, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在WinForms窗体中有一名为txtUser的TextBox控件，其MaxLength属性为5，该控件的当前文本为“网络编程”，若再执行代码：txtUser.AppendText("高手");则控件的文本为（选一项）', '网络编程', '网络编程高', '网络编程高手', '出现运行是错误', 264, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在C#中,下列代码运行后,变量c的值是（选一项）' || chr(10) || 'int a=15,b=10;float c=(float)a/b;', '0', '1', '1.5', '5', 265, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在C#中，下列代码运行后，变量Max的值是（选一项）' || chr(10) || 'int a=5,b=10,c=15,Max=0;' || chr(10) || 'Max = a>b?a:b;' || chr(10) || 'Max = c<Max?c:Max;', '0', '5', '10', '15', 266, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中，下列关于构造函数的特点的说法，正确的是（选一项）', '一个类中，只能有一个构造函数', '构造函数的名称与类名称一样，并且没有返回类型', '构造函数在对象销毁时自动执行', '一个类中至少要有一个构造函数', 267, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中定义一个数组，正确的代码为（选一项）', 'int arraya = new int[5];', 'int[] arraya = new int[5];', 'int arraya = new int[];', 'int[5] arraya = new int;', 268, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在C#中下列关于构造函数的描述正确的是（选一项）', '构造函数可以声明返回类型', '构造函数不可以用private修饰', '构造函数必须与类同名', '构造函数不能带参数', 269, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在WinForms 中，下列代码的运行结果是（选一项）' || chr(10) || 'DataSet ds = new  Dataset("Books");' || chr(10) || 'DataTable dt = new DataTable("Student");' || chr(10) || 'Console.Writeline(ds.DataSetName);', 'Books', 'Student', 'Ds', 'ds.DataSetName', 270, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在WinForms窗体中，如果不使用分组控件来分组单选按钮，而是直接拖拽两个单选按钮放置在窗体中，则以下说法正确是的（选一项）', '两个单选按钮可以同时被选中，即被看作是两个单独的组', '如果窗体中还存在有共他的已经分组的单选取按钮，则这两个单选按钮自动被加入该组', '两个单选钮按钮被自动默认为一组', '运行报错，提示必须使用分组控件对单选取按钮进行分组', 271, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '在WinForms窗体中，有关ListView空件，运行下面代码之后，下列说法错误的是（选二项）' || chr(10) || 'This.listView1.SelectedItems[1].Text = "ABC"', '将选择的所有列表的文本值修改为“ABC”', '将选择的第一项的文本值修改为“ABC ”', '当没有选择任何项的时候，程序出错', '当选择的只有一项的时候，程序出错', 272, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在WinForms中，为了防止用户无意关闭窗体，需要在（   ）事件中编写代码，提示用户是否关闭窗体。（选一项）', 'Closing', 'Closed', 'Load', 'VisibleChanged', 273, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在WinForms中，已知有一个名为Form1的窗体，请问下列代码执行过程中，最先触发的事件是（选一项）', 'Load', 'Activated', 'Closing', 'Closed', 274, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在WinForm窗体中，放置了一个PictureBox 控件PictureBox1，在设置PictureBox1控件的Image 属性后，当图片与控件的大小不一致时，可以通过如下代码(  )使PictureBox1控件的大小与图片大小保持一致。（选一项）', 'this.PictureBox1.SizeMode = PictureBoxSizeMode.AutoSize;', 'this.PictureBox1.SizeMode = PictureBoxSizeMode.Normal;', 'this.PictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;', 'this.PictureBox1.SizeMode = PictureBoxSizeMode.CenterImage;', 275, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '若要删除book表中所有数据，以下语句正确的是（选一项）', 'truncate table book', 'delete * from book', 'drop table book', 'delete  table  book', 276, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '删除表中所有数据行的命令是（选一项）', 'DELETE TABLE 表名', 'TRUNCATE TABLE 表名', 'DROP TABLE 表名', 'ALTER TABLE 表名', 277, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '设ABC表中有三列A、B、C，并且都是整数类型，则以下(  )查询语句能按B列进行分组，并在每一组中取C的平均值。（选一项）', 'SELECT  AVG(C) FROM ABC', 'SELECT AVG(C) FROM  ABC  ORDER  BY   B', 'SELECT AVG(C) FROM ABC GROUP  BY  B', 'SELECT  AVG(C) FROM ABC  GROUP  BY  C,B', 278, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '使用SQL创建多表查询要求查询中所涉及的表必须有（选一项）', '主键', '公共字段', '组合键', '以上都是', 279, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '我们通常使用（   ）输入存储和管理数据。（选一项）', '数据库管理系统(DBMS)', '数据库', '管理信息系统(MS)', '数据词典', 280, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '系统存储过程主要存储在(   )数据库中。（选一项）', 'tempdb', 'master', 'model', 'msdb', 281, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列从大到小的排列下确的是（选一项）', '数据库管理系统   数据库系统   数据库', '数据库   数据库系统   数据库管理系统', '数据库系统   数据库   数据库管理系统', '数据库系统   数据库管理系统   数据库', 282, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列能用于日期/时间类型的聚合函数是（选一项）', 'MAX', 'SUM', 'MONTH', 'AVG', 283, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面关于引用完整性约束的说法不正确的是（   ）。（选一项）', '违反引用完整性约束时，不能对引用表进行插入操作' || chr(13) || '', '当建立引用表时被引用的表必须已经存在' || chr(13) || '', '当建立引用表时被引用的列必须已经存在' || chr(13) || '', '被引用的列不必是主键或者唯一约束' || chr(13) || '', 284, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '现有表book，主键bookid设为标识列。若执行语句：select * into book2 from book 以下说法正确的是（选两项）', '若数据库中已存在表book2, 则会提示错误。', '若数据库中已存在表book2, 则语句执行成功，并且表book2中的bookid自动设为标识。', '若数据库中不存在表book2, 则语句执行成功，并且表book2中的bookid自动设为主键。', '若数据库中不存在表book2, 则语句执行成功，并且表book2中的bookid自动设为标识。', 285, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '现有表book，字段：id (int)，title (varchar), price (float); 其中id字段设为标识， 使用insert语句向book表中插入数据，以下语句错误的是（选一项）', 'insert into book (id,title,price) values(1,''java'',100)', 'insert into book (title,price) values(''java'',100)', 'insert into book values (''java'',100)', 'insert book values(''java'',100)', 286, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '现有表book，字段：id (int)，title (varchar), price (float); 其中id字段设为自增长的标识， 使用insert语句向book表中插入数据，以下语句错误的是（选一项）', 'insert into book (id,title,price) values(1,''java'',100)', 'insert into book (title,price) values(''java'',100)', 'insert into book values (''java'',100)', 'insert book values(''java'',100)', 287, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在WinForm应用程序中，可以通过以下(  )方法使一个窗体成为MDI窗体。（选一项）', '改变窗体的标题信息', '在工程的选项中设置启动窗体', '设置窗体的IsMdiContainer属性', '设置窗体的ImeMode属性', 288, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在WinForm中，为了禁用一个名为btnOpen的Button控件控件，下列做法正确的是（选一项）', 'btnOpen.Enable = true;', 'btnOpen.Enable = false;', 'btnOpen.Visible = true;', 'btnOpen.Visible = false;', 289, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Winform中,下列代码的运行结果是（选一项）' || chr(10) || 'DataSet ds = new DataSet();' || chr(10) || 'DataTable dt = new DataTable();' || chr(10) || 'dt.Columns.Add("name", typeof(System.String));' || chr(10) || 'DataRow dr = dt.NewRow();' || chr(10) || 'dr[0] = "李四";' || chr(10) || 'dt.Rows.Add(dr);' || chr(10) || 'ds.Tables.Add(dt);' || chr(10) || 'Console.WriteLine(ds.HasChanges());', '李四', 'True', 'False', '没有输出', 290, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在使用ADO.NET 设计数据库应用程序时,可通过设置Connection 对象的（   ）属性来指定连接到数据库时的用户和密码信息。（选一项）', 'ConnectionString', 'DataSource', 'UserInformation', 'Provider', 291, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在使用ADO.NET编写连接到SQL Server 2005数据库的应用程序时,从提高性能的角度考虑,应创建（  ）类的对象, 并调用其Open方法连接到数据库。（选一项）', 'OleDbConnection', 'SqlConnection', 'OdbcConnection', 'Connection', 292, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(   )可以同一个表的不同字段进行联接。（选一项）', '内联接', '自联接', '外联接', '左联接', 293, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '( )完整性是指必须能够标识数据中的每个实体（选一项）', '实体', '域', '引用', '用户自定义', 294, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '（）描述了一个用来存储数据的容器，以及该容器存储和检索数据的过程（选一项）', '数据库', '数据库管理系统', '数据模型', '关系型数据库管理系统', 295, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'IBM 公司圣何赛研究实验室的一位研究人员Codd，在1970年6月发表的一篇论文中提出了一个模型，它允许设计者把他们的数据库分解成几个独立但是相关的表，这对提高数据库的性能很有意义，同时也向最终用户保留原来数据库的外观。从此，Codd就被公认为（）数据库之父（选一项）', '网状模型', '层次模型', '关系模型', '平面模型', 296, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'Microsoft SQL Server 2005在安装的时候就创建的数据库包括（选两项）', 'Pubs', 'Master', 'Northwind', 'Msdb', 297, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', 'Microsoft SQL Server 中，创建一个数据库，可以包含以下（  ）文件。（选三项）', '主要数据文件', '次要数据文件', '日志文件', '记录集', 298, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ORDER BY 的作用是（选一项）', '查询输出分组', '设置查询条件', '对记录排序', '限制查询返回的数据行', 299, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SQL Server 2005 是基于（）的（选一项）', '关系型', '文件系统', '层次型', '网络型', 300, 104);
commit;
prompt 300 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SQL server提供了一些字符串函数，以下说法错误的是（选一项）', 'select right(''hello'',3) 返回值为：hel', 'select ltrim(rtrim(''  hello  '')) 返回值为：hello(前后都无空格)', 'select replace(''hello'',''e'',''o'') 返回值为：hollo', 'select len(''hello'') 返回值为：5', 301, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Sql server提供了一些字符串函数，以下说法错误的是（选一项）', 'select right(''hello'',3) 返回值为：hel', 'select ltrim(rtrim(''  hello  '')) 返回值为：hello（前后都无空格）', 'select replace(''hello'',''e'',''o'') 返回值为：hollo', 'select len(''hello'') 返回值为：5', 302, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SQLServer2005中, 有一个book(图书)表,包含字段:bookID(图书编号),title(书名), pDate(出版日期), author (作者) 等字段, 其中( )字段作为该表的主键是最恰当的（选一项）', 'bookID', 'title', 'pDate', 'author', 303, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SQL语句：select * from students where SNO like ''010[^0]%[A,B,C]%'',可能会查询出的SNO是（选一项）', '01053090A', '01003090A01', '01053090D09', '0101A01', 304, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'T-SQL批处理语句块的结束标志为（选一项）', 'GO', 'SUBMIT', 'END', 'RETURN', 305, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '包含元数据的表由关系型数据库管理系统创建和维护，其中，表的创建涉及的内容包括以下的方面，除了（选一项）', '指定数据库类型', '指定可以输入到字段中的数据的大小', '实施任何必要的约束以确保输入的数据有效', '实施限制权限', 306, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '表book中包含三个字段：title(varchar), author(varchar), price(float)。' || chr(10) || 'Author的默认值是’UNKNOW’，执行SQL语句：insert book (title,price) values (jsp'', 50)。以下结果正确的是（选一项）', '插入失败，SQL语句有错', '插入成功，author列的数据是UNKNOW', '插入成功，author列的数据是NULL', '插入成功，author列的数据是50', 307, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '查询student表中的所有非空email信息, 以下语句正确的是（选一项）', 'Select email from student where email !=null', 'Select email from student where email not is null', 'Select email from student where email <> null', 'Select email from student where email is not null', 308, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '查找 student表中所有电话号码(列名：telephone)的第一位为8或6，第三位为0的电话号码（选一项）', 'SELECT telephone FROM student WHERE telephone LIKE ''[86]%0*''', 'SELECT telephone FROM student WHERE telephone LIKE ''(8,6)*0%''', 'SELECT telephone FROM student WHERE telephone LIKE ''[8,6]_0*''', 'SELECT telephone FROM student WHERE telephone LIKE ''[86]_0%''', 309, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '查找 student表中所有电话号码(列名：telephone)的第一位为8或6，第三位为0的电话号码（选一项）', 'SELECT telephone FROM student WHERE telephone LIKE ''[86]%0*''', 'SELECT telephone FROM student WHERE telephone LIKE ''(8,6)*0%''', 'SELECT telephone FROM student WHERE telephone LIKE ''[8,6]_0*''', 'SELECT telephone FROM student WHERE telephone LIKE ''[86]_0%''', 310, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '成绩表grade中字段score代表分数，以下(  )语句返回成绩表中的最低分。（选两项）', 'select max(score) from grade', 'select top 1 score from grade order by score asc', 'Select min(score) from grade', 'select top 1 score from grade order by score desc', 311, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '创建一个名为‘Customers’的新表，同时要求新表中包含表‘clients’的所有记录，sql语句是（选一项）', 'Select * into customers from clients', 'Select  into customers from clients', 'Insert into customers select * from clients', 'Insert customers select * from clients', 312, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '当你执行下面的SQL语句时，会发生（选一项）' || chr(10) || 'SELECT au_id, title_id,sum(royaltyper) FROM titleauthor GROUP BY title_id, au_id ORDER BY title_id, au_id', '该语句会失败', '在结果集中，对每一个不同的au_id的值和title_id的值的组合都会有一行', '在结果集中，每一行中au_id的值都不会相同', '在结果集中，每一行中title_id的值都不会相同', 313, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '定义列中可以接受的数据值或格式，称为（选一项）', '唯一性约束', '检查约束', '主键约束', '默认约束', 314, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '定义列中可以接受的数据值或格式，称为（选一项）', '唯一性约束', '检查约束', '主键约束', '默认约束', 315, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '对于主键的说法错误的是（选一项）', '主键字段输入的数据不允许重复', '主键字段的数据，为自动增长数据类型，不允许输入', '若主键由多个键组合而成，则某个主键字段可以存在重复值', '主键字段可以是字符数据类型', 316, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '分析以下SQL语句:' || chr(10) || 'SELECT DISTINCT 产品.产品名称，产品.单价 FROM 产品 ' || chr(10) || 'WHERE（（（产品.单价）>(SELECT AVG([单价]) FROM 产品)））' || chr(10) || 'ORDER BY产品.单价DESC' || chr(10) || '下面说法错误的是（选一项）', '“SELECT AVG（[单价]）FROM产品”是子查询', '“ORDER BY产品.单价 DESC”是指按单价从低到高顺序排列', '查询结果显示的是单价大于平均价格的记录', '此查询显示的字段只有“产品名称”和“单价”', 317, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关系型数据库中，要防止小于100的数保存到int类型的UnitsInStock列可以（选一项）', '使用主键约束', '使用缺省约束', '使用外键约束', '使用检查约束', 318, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于IDENTITY属性，下列说法错误的是（选一项）', '一个表只能有一个列具有IDENTITY属性', '你不能以定义了IDENTITY属性的列加上default约束', '附加了IDENTITY属性的列可以是任意数据类型', '你不能更新一个定义了IDENTITY属性的列', 319, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于SQL server常用的数据类型，以下（   ）说法是错误的。（选一项）', 'Image数据类型可以用来存储图像。' || chr(13) || '', '使用字符数据类型时，可以改变长度信息。' || chr(13) || '', '使用整数数据类型时，可以改变长度信息。' || chr(13) || '', 'Bit数据类型为1位长度，可以存储表示是/否的数据。' || chr(13) || '', 320, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于sql server常用的数据类型，以下说法是错误的（选一项）', 'Image数据类型可以用来存储图像。', '使用字符数据类型时，可以改变长度信息。', '使用整数数据类型时，可以改变长度信息。', 'Bit数据类型为1位长度，可以存储表示是/否的数据。', 321, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于Truncate table, 以下(  )描述是正确的。（选一项）', 'Truncate table 可跟Where从句，根据条件进行删除。', 'Truncate table 用来删除表中所有数据。', 'Truncate 可以删除表', 'Truncate 比 table delete速度快。', 322, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于标识列，以下说法正确的是（选一项）', '使用SQL语句插入数据时，可以为标识列指定要插入的值。', '表在生成时，其标识列一定存在确定的标识种子和标识递增量。', '若设定标识时，未指定标识递增量，那么使用SQL语句插入数据时，可以为标识列指定递增值。', '只能把主键设定为标识列。', 323, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于多表联接查询，以下描述错误的是（选一项）', '外联接查询返回的结果集行数可能大于所有符合联接条件的结果集行数。', '多表联接查询必须使用到JOIN关键字', '内联接查询返回的结果是：所有符合联接条件的数据。', '在where子句中指定联接条件可以实现内联接查询。', 324, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '关于分组查询，以下（   ）描述是错误的。（选两项）', '使用group by 进行分组查询' || chr(13) || '', '对分组后的结果进行条件查询必须使用Having子句' || chr(13) || '', 'Having子句不能与where子句同时出现在一个select语句中' || chr(13) || '', '在使用分组查询时，在select列表中只能出现被分组的字段。' || chr(13) || '', 325, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于聚合函数，以下说法错误的是（选一项）', 'Sum返回表达式中所有数的总合，因此只能用于数字类型的列。', 'Avg返回表达式中所有数的平均值，可以用于数字型和日期型的列。', 'Max和Min可以用于字符型的列。', 'Count可以用于字符型的列。', 326, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于主键，以下(  )说法是正确的。（选一项）', '主键可以用来确保表中不存在重复的数据行。', '一个表必须有一个主键。', '主键列可以为null。', '只能对整数型列设置主键。', 327, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '假设“产品”表中有“产品ID”，“产品名称”，“价格”此三个字段，要在此表里添加一条新记录，下列SQL语句能实现添加功能的是（选一项）', 'UPDATE INSERT 产品 VALUES(''01008'',''花生'',''20'')', 'INSERT 产品 VALUES(01008,花生,20)', 'INSERT  INTO 产品 VALUES(''01008'',''花生'',''20'')', 'INSERT  *  FROM 产品 VALUES(''01008'',''花生'',''20'')', 328, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '假设表orderitem有列orderid(int类型)和列thenumber(int类型)，则下列语句可以正确执行的是（选一项）', 'Select * from orderitem where orderid<=2 order by orderid' || chr(13) || '' || chr(10) || 'Compute sum(thenumber) by orderid', 'Select * from orderitem where orderid<=2' || chr(13) || '' || chr(10) || 'Compute sum(thenumber) by orderid', 'Select * from orderitem where orderid<=2 order by thenumber' || chr(13) || '' || chr(10) || 'Compute sum(thenumber) by orderid', 'Select * from orderitem where orderid<=2 order by orderid' || chr(13) || '' || chr(10) || 'Compute sum(orderid) by thenumber', 329, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '假设两张表建立了“主键—外键”的引用关系，则主表(主键)中对应(外键)的数据（选一项）', '必须在子表中有对应', '可以比主表的数据多', '主表的数据行可以比子表的数据行少', '必须为数字数据类型', 330, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '假设一系统原来使用Access数据库，现要使用SQL server数据库，采用（   ）方法可以完成两个数据库之间的数据转换工作。（选一项）', 'SQL server的附加数据库功能' || chr(13) || '', 'SQL server的还原数据库功能' || chr(13) || '', '在SQL server中可直接打开Access数据库，另存即可。' || chr(13) || '', 'SQL server的导入导出功能' || chr(13) || '', 331, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '若数据库中只有一张student表，其中包含主键sudentid ，则执行语句：update student set studentid=100 where studentid=101, 结果可能是（选两项）', '错误提示：主键列不能更新。', '更新了一条数据。', '错误提示：违反主键约束。', '既不提示错误，也不更新数据。', 332, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '若要删除book表中所有数据，以下语句正确的是（选一项）', 'truncate table book', 'delete * from book', 'drop table book', 'delete  table  book', 333, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ADO.NET中,为了确保DataAdapter对象能够正确地将数据从数据源填充到DataSet中,则必须事先设置好DataAdapter对象的下列哪个Command属性（选一项）', 'DeleteCommand', 'UpdateCommand', 'InsertCommand', 'SelectCommand', 334, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ADO.NET中，下列（   ）不属于SqlDataAdapter对象的属性。（选一项）', 'SqlCommand', 'SelectCommand', 'DeleteCommand', 'InsertCommand', 335, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ADO.NET中，下列（   ）组件用来获得只读只进数据。（选一项）', 'DataSet', 'Command', 'DataReader', 'DataAdapter', 336, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ADO.NET中，下列（  ）组件不属于.NET数据提供程序（选一项）', 'Command', 'DataReader', 'DataSet', 'DataAdapter', 337, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ADO.NET中，下列代码的输出结果是（选一项）' || chr(10) || 'SqlConnection conn = new SqlConnection("data source = pub;uid = bill;pwd = 12345;Initial catalog = Northwind");' || chr(10) || 'Console.WriteLine(conn.ConnectionString);', 'pub', 'bill', 'data source = pub;uid = bill;pwd = 12345;initial catalog = Northwind', 'Northwind', 338, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ADO.NET中，下列代码运行后的输出结果是（选一项）' || chr(10) || 'DataTable dt = new DataTable();' || chr(10) || 'dt.Columns.Add("编号", typeof(System.Int16));' || chr(10) || 'dt.Columns.Add("成绩", typeof(System.Single));' || chr(10) || 'dt.Columns[1].DefaultValue = 60;' || chr(10) || 'DataRow dr = dt.NewRow();' || chr(10) || 'dr[0] = 10;' || chr(10) || 'dt.Rows.Add(dr);' || chr(10) || 'Console.WriteLine(dt.Rows[0][1]);', '0', '1', '10', '60', 339, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ADO.NET中，下列代码运行后的输出结果是（选择一项）' || chr(10) || 'DataTable dt = new DataTable();' || chr(10) || 'dt.Columns.Add(''编号",typeof(System.Int16));' || chr(10) || 'for(int i=1;i<5;i++)' || chr(10) || '{' || chr(10) || '   DataRow dr =dt.NewRow();' || chr(10) || '   dr[0]=i;' || chr(10) || '   dt.Row.Add(dr);' || chr(10) || '}' || chr(10) || 'Console.WriteLine(dt.Rows[2][0]);', '0', '1', '2', '3', 340, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '在ADO.NET中，下列关于DataSet类说法有误的是（选两项）', '可以向DataSet的表集合中添加新表', 'DataSet中的数据发生改变之后，它会自动更新数据库中对应的数据', 'DataSet 就好象是内存中的一个“临时数据库”', 'DataSet  中的数据是只读的并且是只进的', 341, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ADO.NET中，已知某程序员编写的数据库连接字符串如下，则他使用的是（   ）.NET数据提供程序。（选一项）' || chr(10) || '"provider=MSDAORA;Date Source=pubs;UserID=sa;Password=##"', 'SQL', 'OIE DB', 'ODBC', 'Oracle', 342, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ADO.NET中,已知有一名为dsBook的数据集,数据集中有一名为book的数据表,下列能够正确将一个名为dgBook的DataGridView控件与数据进行绑定的是（选一项）', 'dsBook.SetDataBingding(dgBook,"book");', 'dgBook.SetDataBingding(dsBook);', 'dgBook.DataSource = dsBook.Tables["book"];', 'dsBook.SetDataBingding(dgBook);', 343, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ADO.NET中,拥护通过代码"DataTable dt = new DataTable();"创建了一个数据表,下列关于该表的说法正确的是（选一项）', '通过代码DataRow dr = dt.NewRow();可以为数据表添加新的一行', '通过代码DataColumn dc = dt.Columns.Add("columnName");可以为数据表添加新的一行', '通过添加代码DataRow dr = dt.NewRow();dt.Rows.add(dr);可以为数据表添加新的一行', '通过代码DataColumn dc = dt.Newcolumn("columnName");dt.Columns.Add(dc);可以为数据表添加新的一行', 344, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ADO.NET中，有以下四条代码。你认为它们最可能的编写顺序是（选一项）' || chr(10) || 'SqlConnection sqlCon=new SqlConnection();                      //(1)' || chr(10) || 'sqlCon.Close();                                                //(2)' || chr(10) || 'sqlCon.ConnectionString="Server=;DataBase=pubs;uid=sa;pwd=pwd";   //(3)' || chr(10) || 'sqlCon.Open();                                                //(4)', '1,2,3,4', '1,3,2,4', '1,3,4,2', '4,3,2,1', 345, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ADO.NET中。下列代码运行后的输出结果是（选一项）' || chr(10) || 'DataTable dt = new DataTable();' || chr(10) || 'dt.Columns.Add("编号",typeof(System.Int16));' || chr(10) || 'dt.Columns.Add("成绩",typeof(System.Int16));' || chr(10) || 'for(int i=1;i<=3;i++){' || chr(10) || '    DataRow dr = dt.NewRow();' || chr(10) || '    dr[0] = i;' || chr(10) || '    dt.Rows.Add(dr)' || chr(10) || '}' || chr(10) || 'Console WriteLine(dt.Columns.Count);', '1', '2', '3', '4', 346, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在C#程序中，使用try...catch...（）结构来处理异常。（选一项）', 'error', 'process', 'finally', 'do', 347, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在C#程序中，下列用来处理异常的结构，错误的是（选一项）', 'catch{}finally{}', 'try{}finally{}', 'try{}catch{}finally{}', 'try{}catch{}', 348, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在C#中，（）正确定义了一个数组（选一项）', 'int iArray=new int[10];', 'int[] iArray=new int;', 'int[] iArray=new int[10];', 'int[] iArray=new int(10);', 349, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中，程序使用（  ）语句抛出系统异常或自定义异常。（选一项）', 'run', 'throw', 'catch', 'finally', 350, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在C#中，下列变量定义与赋值正确的是（选一项）', 'int age =12.5;', 'string name =ACCP;', 'double money =100.0;', 'char leel=A;', 351, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '在C#中，下列表达式计算正确的是（选两项）', '10%3=3', '10/3=3', '10%3=1', '10/3=1', 352, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在c#中，下列代码的运行结果是（选一项）' || chr(10) || 'float f=123.56f;' || chr(10) || 'object o=f;' || chr(10) || 'f=789.123f;' || chr(10) || 'Console.WriteLine("f={0}",f);' || chr(10) || 'Console.WriteLine("o={0}",o);', 'f=789.123  o=123.56', 'f=123.56  o=789.123', 'f=789.123  o=789.123', 'f=123.56  o=123.56', 353, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中，下列代码的运行结果是（选一项）' || chr(10) || 'int a=30,b=20;' || chr(10) || 'b=a;' || chr(10) || 'a=10;' || chr(10) || 'Console.WriteLine(a+" "+b);', '10 10', '10 30', '10 20', '10 20', 354, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'SQLServer2005中，已知执行语句：select count(score),sum(score)from score返回的结果是10和750，那么执行语句：select avg(score) from score,返回的结果是（选一项）', '10', '75', '750', '7500', 355, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'SQLServer的系统存储过程中的安全过程可以用于管理安全性，下面语句' || chr(10) || 'EXEC sp_addlogin ''adms'',''sales'',其中的sales是（选一项）', '用户名', '密码', '表明', '默认数据库', 356, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'SQLSever 2005中数据库中，关键字（）标志着批处理的结束。（选一项）', 'END', 'GO', 'FINISH', 'PRINT', 357, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Sybase公司的PowerDesigner不涉及的模型有（选一项）', '业务模型', '面向对象模型', '数据库模型', '概念数据模型', 358, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'UNIQUE约束和主键约束也是哪种完整性的体现（选一项）', '域完整性', '引用完整性', '实体完整性', '其他', 359, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '表结构如下，# 号打头字段代表主键或组合主键，一份订单可以订购多种产品。' || chr(10) || '产品：# 产品编号，产品名称，产品价格' || chr(10) || '订单：# 订单编号，# 产品编号，订购日期，订购数量；' || chr(10) || '该表最高符合第(  )范式。（选一项）', '一', '二', '三', '未规范化的', 360, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '常用的系统存储过程不包括（选一项）', 'sp_tables', 'sp_columns', 'sp_stored_procedures', 'sp_renametable', 361, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '创建表sql语句如下：' || chr(10) || 'create table userInfo' || chr(10) || '(' || chr(10) || 'userId int identity(-1,1),         第一行' || chr(10) || 'username nvarchar(20) not null,  第二行' || chr(10) || 'cardNO char not null,           第三行' || chr(10) || 'age smallint(2),                 第四行' || chr(10) || 'address ntext(300)              第五行' || chr(10) || ')' || chr(10) || '执行时，会在（）出现错误。（选两项）', '第一行', '第三行', '第四行', '第五行', 362, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '创建存储过程的片断如下：' || chr(10) || 'Create procedure proc_score' || chr(10) || '@passed int=60,' || chr(10) || '@excellent int=90' || chr(10) || 'AS' || chr(10) || '以下(  )调用方式是正确的。（选两项）', 'Exec proc_score', 'Exec proc_score 60,90', 'Exec proc_score @passed=65,@excellent=95', 'Exec proc_score  @passed=65', 363, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '当你执行下面的SQL语句时，会发生（选一项）' || chr(10) || 'SELECT au_id, title_id,sum(royaltyper)' || chr(10) || 'FROM titleauthor GROUP BY  title_id, au_id ORDER BY  title_id, au_id', '该语句会失败', '在结果集中，对每一个不同的au_id的值和title_id的值的组合都会有一行', '在结果集中，每一行中au_id的值都不会相同', '在结果集中，每一行中title_id的值都不会相同', 364, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '对事务描述错误的是（选一项）', '一个事务中的所有命令作为一个整体提交或回滚。', '如果两个并发事务要同时修改同一个表，有可能产生死锁。', 'Sql server默认将每条单独的T-SQL语句视为一个事务。', '事务必须使用begin transaction来明确指定事务的开始。', 365, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '公司中有多个部门和多名职员，每个职员只能属于一个部门，一个部门可以有多名职员，从部门到职员的联系类型是（选一项）', '多对多', '一对一', '多对一', '一对多', 366, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '现有订单表orders，包含用户信息userid, 产品信息 productid, 以下(  )语句能够返回至少被订购过两回的productid（选一项）', 'select productid from orders where count(productid)>1', 'select productid from orders where max(productid)>1', 'select productid from orders where having count(productid)>1 group by productid', 'select productid from orders group by productid having count(productid)>1', 367, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '现有客户表customers(主键：客户编号cid)，包含10行数据，订单表orders(外键：客户编号cid )，包含6条数据。执行SQL语句：select * from customers right outer join orders on customers.cid=orders.cid。最多返回(  )条记录。（选一项）', '10', '6', '4', '0', 368, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '现有书目表book，包含字段：price (float); 现在查询一条书价最高的书目的详细信息，以下语句正确的是（选一项）', 'select top 1 * from book order by price asc', 'select top 1 * from book order by price desc', 'select top 1 * from book where price', 'select top 1 * from book where price= max(price)', 369, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '现有书目表book，包含字段：价格price (float)，类别type(char); 现在查询各个类别的平均价格、类别名称，以下语句正确的是（选一项）', 'select avg(price),type from book group by type', 'select count(price),type from book group by price', 'select avg(price),type from book group by price', 'select count (price),type from book group by type', 370, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '现有学生信息表Student_info,其中包括姓名(stu_name),学号(stu_id),成绩(stu_grade),为int数据类型。我们需要查询成绩为80分的学生姓名，要求结果按照学号降序排列。下面查询语句正确的是（选一项）', 'SELECT stu_neme FROM student_info WHERE stu_grade=80 ORDER BY stu_id ASC', 'SELECT stu_neme FROM student_info WHERE stu_grade=80 ORDER BY stu_id DESC', 'SELECT stu_id,tu_neme FROM student_info WHERE stu_grade=80 ORDER BY stu_id ASC', 'SELECT stu_neme FROM stu_info WHERE stu_grade LIKE 80 RSER BY stu_id DESC', 371, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '学生成绩表grade中有字段score（float）,现在要把所有在55分至60(包含两个边界值)之间的分数提高5分，以下sql语句正确的是（选一项）', 'Update grade set score=score+5', 'Update grade set score=score+5 where score>=55 or score <=60', 'Update grade set score=score+5 where score between 55 and 60', 'Update grade set score=score+5 where score <=55 and score >=60', 372, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '一名学生可以选修多个科目，一个科目可以被多名学生选修，这种关系是（选一项）', '一对一', '一对多', '多对一', '多对多', 373, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下(  )不属于聚合函数（选一项）', 'MAX', 'COUNT', 'NOT', 'MIN', 374, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下(  )说明了代码：not (付款方式=’信用卡’) or (信用卡<>’阳光卡’) 的含义。（选一项）', '付款方式不能是信用卡。', '付款方式不能是信用卡，或者信用卡是阳光卡。', '如果付款方式是信用卡，那么信用卡不能是阳光卡。', '付款方式是信用卡，并且信用卡不能是阳光卡。', 375, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下（）语句从表student中提取前5条记录。（选一项）', 'select * from student where rowcount=5', 'select TOP of 5 * from student', 'select TOP 5 * from student', 'select * from student where rowcount<=5', 376, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下的T-SQL:SELECT city,state,COUNT(*) FROM authors GROUP BY city,state ORDERBY COUNTT(*) DESC,state 在查询分析器中运行后将（选一项）', '提示错误信息，不能COUNT(*)DESC进行排序', '提示错误信息，不能按照多个列进行排序', '运行失败，GROUPBY 和ORDERBY的顺序字段应保持一致', '运行成功，将首先按照统计数进行排序', 377, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下可以用于字符串模糊匹配的关键字（选一项）', 'OR', 'Not between', 'Not IN', 'Like', 378, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '引用完整性约束是用来维护（）个表之间的行的一致性的（选一项）', '二', '三', '多个', '至少三', 379, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有关数据冗余说法错误的是（选一项）', '数据库中，数据存在副本的现象，就是数据冗余', '通过分类存储，可以有效减少数据冗余，但是会增加数据查找的复杂性', '在数据库设计阶段，一定要尽最大可能避免数据冗余，最好做到无数据冗余。', '数据冗余通常是由于数据库设计引起的。', 380, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '有一个"出版物"表，包含图书编码(BOOK-CODE),书名(BOOK-NAME)，出版日期(ISSUE-DT),备注(MEM-CD)等字段，字段（）作为该表的主键可能是最恰当的（选一项）', 'book-code', 'book-name', 'issue-dt', 'mem-cd', 381, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有一个商品信息表（表名：ProInfo)，表的字段为：ProID(商品编号），ProCatg(商品类别)，ProName(商品名称)， ProPrice（商品价格），下列选项（  ）可以查询每一类商品的平均价格（选一项）', 'Select ProCatg , AVH(ProPrice) From ProInfo', 'Select ProCatg,AVG(ProPrice) From ProInfo Group By ProCatg', 'Select AVG (ProPrice) From ProInfo Group By ProCatg', 'Select AVG(ProPrice) From ProInfo', 382, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在 SQL Server 2005 中 , 有 students ( 学生 ) 表 , 包含字段 :SID( 学号 ),SName( 姓 名) ,Grade ( 成绩)。现要将所有学员的成绩加 10 分。下列 SQL 语句正确的是 （选一项）', 'update students set Grade = Grade + lO', 'update * set Grade = Grade +lO', 'update * from students set Grade =Grade +l O', 'update students set Grade 二 Grade +lO', 383, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server 2005 中，使用update语句更新数据库表中的数据，以下说法正确的是（选一项）', '每次只能更新一行数据', '表中的数据行可以全部被更新', '如果没有数据项被更新，将提示错误信息', '更新数据时，不能带有WHERE条件子句', 384, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在SQL Server 2005中, 当执行下面的SQL 语句时, 会发生( ) ' || chr(10) || 'Select au_id, little_id, sum(royaltyper)from titleauthor group by title_id, au_id order by title_id, au_id （选一项）', '在结果集中,对每一个不同的au_id的值和title_id的值的组合都会有一行', '在结果集中,每一行中au_id的值都不会相同', '该语句会运行失败,因为查询输出的次序和分组的次序不一样', '该语句会运行失败,因为royaltyper列也应进行分组', 385, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在SQL Server 2005中, 有students (学生)表, 包含字段: STD(学号),SName (姓名), Grade (成绩). 现查找所有学员中成绩最高的前5名学员. 下列SQL语句正确的是（选一项）', 'SELECTTOP 5 FROM students ORDER BY Grade DESC', 'SELECTTOP 5 FROM students ORDER BY Grade', 'SELECTTOP 5 * FROM students ORDER BY Grade ASC', 'SELECTTOP 5 * FROM students ORDER BY Grade DESC', 386, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server 2005中，附加数据库操作是指（选一项）', '把SQLServer数据库文件保存为其他数据库文件', '根据数据库物理文件中的信息，把数据库在SQLServer2005中恢复', '把所有该数据库表的数据清空', '把数据库删掉', 387, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SQL server 2005中，关于数据库说法错误的是（选一项）', '数据库在磁盘上默认的存储位置是：SQL Server安装路径\Microsoft SQL Server\MSSQL\Data', '一个数据库至少应包含一个数据库文件(*.mdf)和一个事务日志文件(*.ldf)', '只有当数据库中不存在数据的情况下，才可以进行数据库的收缩操作。', '可以通过从A机器拷贝数据库文件和事务日志文件至B机器，然后通过在B机器上执行相应的附加数据库操作，实现数据库从A机器到B机器的复制。', 388, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server 2005中，假定grade (成绩)表中包含字段：sID(学号)，cID (班级编号)、lang(语文课成绩)、math(数学课成绩),那么计算所有学生人数和各科最高成绩的SQL语句是（选一项）', 'SELECT COUNT(*),MAX(lang),MAX(math)FROM grade', 'SELECT COUNT(*),MAX(lang),MAX(math)FROM grade GROUP BY sID', 'SELECT SUM(*),MAX(lang),MAX(math)FROM grade GROUP BY sID', 'SELECT SUM(*),MAX(lang),MAX(math)FROM grade', 389, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SQL Server 2005中，假定grade(成绩)表中包含字段：sID(学号)，lang(语文课成绩)。那么列出语文成绩在80分到90分的学生的SQL语句是（选一项）', 'SELECT * FROM grade WHERE lang IN (80,90)', 'SELECT * FROM grade HAVING lang IN (80,90)', 'SELECT * FROM grade WHERE lang BETWEEN 80 AND 90', 'SELECT * FROM grade HAVING lang BETWEEN 80 AND 90', 390, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '在SQL Server 2005中，假定一个学生选修课管理系统中有两个表，包括：student(学生)表，其结构为：sID (学号),sName (姓名); studentCourse (学生选课)表，其结构为：sID (学号),cID (课程编号),score (成绩 )。那么列出所有已选课学生的学号、姓名、课程编号和成绩的SQL语句是（选两项）', 'SELECT sID,sName,cId,score FROM student,studentCourse', 'SELECT,sID,sName,cID,score FROM student INNER JOIN studentCourse ON' || chr(13) || 'student.sID = studentCourse.sID', 'SELECT,sID,sName,cID,score FROM student OUTER JOIN studentCourse ON' || chr(13) || 'student.sID = studentCourse.sID', 'SELECT,sID,sName,cID,score FROM student, studentCourse WHERE student.sID = studentCourse.sID', 391, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '在SQL Server 2005中，假设表ABC中有A、B、C三列，均设为字符数据类型，其中' || chr(10) || 'A列的默认值为”VA”。如果能够正确执行语句：INSERT ABC(A,C)VALUES(‘V’,’NULL’)，下列的说法正确的是（选两项）', '插入A列的值为V', '插入A列的值为VA', '插入B列的值为空值', '插入C列的值为空值', 392, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server 2005中，删除一个表结构的命令是（选一项）', 'DELETE TABLE', 'DROP TABLE', 'TRUNCATE TABLE', 'ALTER TABLE', 393, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在SQL Server 2005中，外键用于将一个表中的列与另一个表中的列关联起来，为了确保引用的完整性，要求（选一项）', '外键列的列值必须已经存在于主键表的对应列的列值中', '外键列的列值必须与主键表的对应列的列值一一对应', '外键列不能有重复的值', '外键表的数据行行数必须大于主键表的数据行行数', 394, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在SQL Server 2005中，下列查询条件（   ）可以查询出员工表中的列hometown不是''北京''的记录。（选一项）', 'Where hometown =! ''北京'';', 'Where hometown not ''北京''', 'Where hometown is not ''北京''', 'Where hometown <> ''北京''', 395, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '在SQL Server 2005中,下面关于数据完整性的描述正确的是（选两项）', '如果数据库中没有重复的数据,即没有数据冗余的时候,数据就是完整的', '维护数据完整性就是保证数据库中数据的准确性', '数据库中数据越详细则越符合数据完整性', '维护数据完整性可以保证数据的一致性,避免出现没有意义的数据', 396, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在SQL Server 2005中,学生表student中包含字段: 学生编号sid(主键),学生姓名sName, 现在查询所有姓名重复的记录,以下语句正确的是（选一项）', 'select * from student where count(sid)>1', 'select a. * from student a,student b where a.sname=b.sname', 'select * from student where count(sid)>1 group by sName', 'select * from student group by sName having count(sid)>1', 397, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在SQL Server 2005中，要防止大于100 的数被保存到int 类型的列，可以使用（选一项）', '主键约束', '限制约束', '外键约束', '检查约束', 398, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server 2005中，以下关于主键的说法正确的是(  )。（选一项）', '表创建后，一旦设定了主键，主键就不能再更改', '表中可以没有主键', '主键列的值可以重复', '主键列允许插入空值', 399, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在SQL Server 2005中，有系统数据库和用户数据库，下列不属于系统数据库的是（选一项）', 'master', 'model', 'msdb', 'pubs', 400, 104);
commit;
prompt 400 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server 2005中，有一个course(课程)表，包含字段：cName(课程名称)，grade(学分)。要从此表中查询所有学分不在２～４之间的课程名称，以下spl语句正确的是（选一项）', 'SELECT cName FROM course WHERE grade IN (2, 4)', 'SELECT cName FROM course WHERE grade NOT BETWEEN 2 AND 4', 'SELECT cName FROM course WHERE ! (grade > 2 AND grade < 4)', 'SELECT cName FROM course WHERE ! (grade < 2 OR grade <= 4)', 401, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server 2005中，主键用来实施（选一项）', '引用完整性约束', '实体完整性约束', '域完整性约束', '自定义完整性约束', 402, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '在SQL Server2005 建数据库必须要哪两类文件（选两项）', '主要数据文件', '次要数据文件', '备份文件', '日志文件', 403, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server数据库中，(  )可以看成为虚拟的表。（选一项）', '游标', '视图', '索引', '存储过程', 404, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在SQL Server数据库中，UNIQUE约束与PRIMARY KEY约束之间最主要的区别是（选一项）', 'UNIQUE约束要求数据库中至少存在一行数据，因此必须在创建数据库表之后才能创建，而PRIMARY KEY约束无此限制', 'UNIQUE约束允许有空值，而PRIMARY KEY约束不允许有空值', '创建UNIQUE约束后，该数据行允许被更改，而PRIMARY KEY约束的数据行不允许更改', 'UNIQUE约束列不能创建外键，而PRIMARY KEY约束可以创建外键引用', 405, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SQL Server中，以下都属于二进制数据类型，除了（选一项）', 'Binary', 'Image', 'Bit', 'VarBinary', 406, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在SQL Server中创建一个名为Customers 的新表，同时要求该表与clients表的表结构相同，但不包含clients表的记录，SQL语句是（选一项）', 'select * into customers from clients where 1<>1', 'select * into customers from clients where false', 'insert into customers select* from clients where 1<>1', 'insert customers select9 from clients where false', 407, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQLServer2005中，创建表之后（选一项）', '不允许再改更主键', '可以没有主键', '只能在企业管理器中更改主键，不能通过T－SQL更改主键', '主键允许为空', 408, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在T-sql中，以下（）是通配符（选一项）', '>=', '%', 'or', 'where', 409, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在表student中，包含主键列StuID,则执行"Update student set StuID=80",执行' || chr(10) || '的结果可能是（选一项）', '更新了多行数据', '没有数据更新', '删除了一行不符合要求的数据', 'T_SQL语法错误，不能执行', 410, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在查询分析器中执行以下的语句' || chr(10) || 'Select top 40  percent  sName,sAddress,from  students' || chr(10) || '结果返回10行数据，则（选一项）', '表students中只有10行数据。', '表students中只有25行数据。', '表students中只有10行数据。', '表students中只有40行数据。', 411, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在关系模型中，表由行和列组成，行和列分别称为（选一项）', '元组，属性', '属性，元组', '关系，属性', '元组，关系', 412, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在关系型数据库中，基于公共字段将两个或多个表联系起来称为联接，联接包括以下不同的类型，除了（选一项）', '内部联接', '外键联接', '外部联接', '自联接', 413, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在关系型数据库中，数据冗余指的是（选一项）', '数据不准确', '存在重复数据', '数据之间不存在关系', '数据量太大', 414, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在客户表中查询出不是以"公司"结尾的客户的纪录，正确的SQL语句是（选一项）', 'SELECT * FROM 客户 WHERE 公司名称 NOT LIKE ''公司%''', 'SELECT * FROM 客户 WHERE 公司名称 LIKE ''_公司''', 'SELECT * FROM 客户 WHERE 公司名称 NOT IN ''%公司''', 'SELECT * FROM 客户 WHERE 公司名称 NOT LIKE ''%公司''', 415, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在实体关系图中，每个实体可能对应（   ）。（选一项）', '应用程序的一个功能模块', '应用程序的一个界面', '应用程序的一个函数', '应用程序数据库中的一个表', 416, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在一个表中，通常使用(   )约束来保证列中的值都是唯一的，用来唯一的表示每行。（选一项）', '主键', '检查', '非空', '外键', 417, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '执行SQL语句：select *, score*0.5+20 as 加权成绩 from grade where (score*0.5+20)<60 order by score*0.5+20，以下描述是正确的（选一项）', '错误提示：order by 子句中不能出现表达式。', '正确执行，显示grade表中各列值，按照score由低到高排序。', '正确执行，显示grade表中各列值，以及加权成绩列，按照score由低到高排序。', '错误提示：where 子句中不能出现表达式。', 418, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '(  )不属于任何文件组。（选一项）', '次数据文件', '主数据文件', '日志文件', '其他', 419, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'create table student' || chr(10) || '(' || chr(10) || 'id int identity(1,1),' || chr(10) || 'name varchar(20)' || chr(10) || ')' || chr(10) || 'alter table student add constraint uq_name unique(name)' || chr(10) || 'insert into student values(null)' || chr(10) || 'insert into student values(null)' || chr(10) || 'insert into student values(''jack'')' || chr(10) || 'insert into student values(''jack'')' || chr(10) || '依次执行以上SQL语句后，student表中存在(  )行记录。（选一项）', '1', '2', '3', '4', 420, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'E-R图中，关系集用下面(  )来表示。（选一项）', '矩形', '椭圆形', '菱形', '圆形', 421, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'SQL Server数据库有2种登录认证方式。其中在(  )方式下，需要客户端应用程序连接时提供登录时需要的用户标识和密码。（选一项）', 'Windows身份验证。', '以超级用户身份登录时。', 'SQL Server 身份验证。', '以系统身份登录时。', 422, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'SQL Server数据库中，下列不属于T-SQL事务管理语句的是（选一项）', 'BEGIN TRANSACTION；', 'END TRANSACTION；', 'COMMIT TRANSACTION；', 'ROLLBACK TRANSACTION；', 423, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '模式查找like ''_a%'',下面哪个结果是可能的（选一项）', 'aili', 'bai', 'bba', 'cca', 424, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '某表stuinfo只有2行记录，并且stuname是主键列，则下列语句Select @name = stuname from stuinfo执行结果说法正确的是（选一项）', '出现错误', '没有错误，但@name中没有存储任何值', '@name存储的是第一行的stuname', '@name存储的是第二行的stuname', 425, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '某数据库表里的studentID列被定义为studentID int identity(50,2),首先你添加了3条记录，然后你把第二条记录删除掉，此时，若增加另外一条记录，studentID的值将是（选一项）', '8', '54', '56', '58', 426, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果要确保一个表中的非主键列不输入重复值，应在该列上定义（选一项）', 'PRIMARY KEY', 'UNIQUE KEY', 'CHECK', 'FOREIGN KEY', 427, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '若需要在表中搜索指定的单词、短语或近义词等，可以使用CONTAINS谓词，但必须在操作的表上事先建立（选一项）', '主键', '约束', '全文索引', '复合索引', 428, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '设计用户表时，身份证号为固定18位长，对该字段最好采用(  )数据类型。（选一项）' || chr(10) || '', 'int' || chr(13) || '', 'char' || chr(13) || '', 'varchar' || chr(13) || '', 'text' || chr(13) || '', 429, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '使用T-SQL定义两个局部变量AA和BB，正确语句是（选一项）', 'DECLARE @AA,@BB', 'PRIVATE @AA,@BB', 'PUBLIC @AA,BB', 'DECLARE @AA,BB', 430, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '授予用户teacher对Score表的插入和修改的权限，正确的授权语句是（选一项）', 'GRANT INSERT,UPDATE TO TABLE Score ON teacher', 'GRANT INSERT AND UPDATE TO TABLE Score ON teacher', 'GRANT INSERT,UPDATE ON Score TO teacher', 'GRANT INSERT AND UPDATE ON Score TO teacher', 431, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '数据字典中的数据，通常用来描述数据库及相关对象，因此它是“描述数据的数据”，这样的数据也被称为（选一项）', '规范分数据', '设计数据', '元数据', '基础数据', 432, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '为表userinfo添加约束，语法如下：alter table userinfo add constraint uq_userid unique ( userid )执行成功后，为userinfo表的(  )字段添加了(  )约束。（选一项）', 'Userid ； 主键', 'Userid ； 唯一', 'Uq_userid ；外键', 'Uq_userid ；检查', 433, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '为了加快对某表的访问速度，应对此表建立（选一项）', '约束', '存储过程', '规则', '索引', 434, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '为数据库中一个或多个表中的数据提供另一种查看方式的逻辑表被称为（选一项）', '存储过程', '触发器', '视图', '表', 435, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列包含group by的语句正确的是（选一项）', 'Select  stuid , stuname  from  stuinfo  group by  stuid', 'Select stuid  from  stuinfo  where  stuid<1000 group by stuid', 'Select count(stuid) , stuname  from  stuinfo  group by  stuid', 'Select stuid , count(stuname)  from  stuinfo  group by stuname', 436, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列标识符可以作为局部变量使用（选一项）', 'yvar', 'My var', '@Myvar', '@My var', 437, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列哪个不是数据库对象（选一项）', '数据模型', '视图', '表', '用户', 438, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server查询分析器中，下面语句是用ROUND函数对数据四舍五入和截短处理：SELECT round(918.2736,3),round(918.2736,-2)运行之后得到的结果是（选一项）', '918.2730 和 900.0000', '918.2740 和 900.0000', '918.2734 和 900', '918.2736 和 918.2700', 439, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server数据库中，（）可以看成为虚拟的表。（选一项）', '游标', '视图', '全文索引', '存储过程', 440, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SQL Server数据库中，你想得到在products表中最贵的产品名称和价格应该使用的正确查询是（选一项）', 'SELECT TOP 1 Productname, Price FROM Products ORDER BY Price', 'SELECT Productname, MAX（Price）FROM Products', 'SELECT TOP 1 Productname, Price FROM Products ORDER BY Price DESC', 'SELECT Productname, MAX（Price）FROM Products GROUP BY Productname', 441, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在SQL Server中，以下都是触发器的特性，除了（选一项）', '强化约束', '可级联运行', '跟踪变化', '查询优化', 442, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SQL Sever 2005中，以下关于视图数据的操作，正确的描述是（选一项）', '视图数据只能用来查询和浏览，不能进行修改、插入和删除', '可以修改和删除视图的数据，但是这些数据不更新到数据库表中', '可以在查询分析器中使用INSERT/UPDATE/DELETE 等SQL语句对视图进行操作', '由于视图是数据库基表数据的复制，因此删除视图中的数据行，不会影响到基表的数据', 443, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL　Sever中，执行存储过程MY_PROC的正确的T_SQL为（选一项）', 'RUN   MY_PROC', 'EXECUTE   MY_PROC', 'START   MY_PROC', 'SHELL   MY_PROC', 444, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQLServer 20050 中，声明一个最多可以存储5个字符的变量A，正确的代码为        （选一项）', 'DECLARE  A  VARCHAR(5)', 'DECLARE @A VARCHAR(5)', 'Private A  VARCHAR(5)', 'Private @A  VARCHAR(5)', 445, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在SqlServier2005中，如果a>any(5,2,3),则表示（选一项）', 'a>5', 'a>2', 'a>3', '2>a>5', 446, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL视图里有：SELECT DISTINCT 产品.产品名称，产品.单价 FROM 产品' || chr(10) || 'WHERE（（（产品.单价）>(SELECT AVG([单价]) FROM 产品)））ORDER BY 产品.单价DESC；' || chr(10) || '下面说法错误的是（选一项）', '“SELECT AVG（[单价]）FROM产品”是子查询', '“ORDER BY产品.单价 DESC”是指按单价从低到高顺序排列', '查询结果显示的是单价大于平均价格的记录', '此查询显示的字段只有“产品名称”和“单价”', 447, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在SQL语言中，建立存储过程的命令是。（选一项）', 'CREATE PROCEDURE', 'CREATE RULE', 'CREATE DURE', 'CREATE FILE', 448, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在某个触发器中，存在如下代码片断：' || chr(10) || 'Declare @p1 int, @p2 int' || chr(10) || 'Select @p1=price from deleted' || chr(10) || 'Select @p2=price from inserted' || chr(10) || 'print convert(varchar, @p2-@p1)' || chr(10) || '该触发器是(  )触发器。（选一项）', 'select', 'update', 'insert', 'delete', 449, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在哪种索引中，表中各行的物理顺序与键值的逻辑（索引）顺序相同（选一项）', '聚集索引', '非聚集索引', '两者都是', '两者都不是', 450, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列哪种操作能够得到学生表的最详细信息（选一项）', 'exec sp_help student', 'exec sp_helptext student', 'exec sp_helptable student', 'exec sp_tables student', 451, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面（）不是数据库规范化要达到的效果。（选一项）', '改善数据库的设计', '实现最小的数据冗余', '可以用一个表来存储所有数据，使设计及存贮更加简化', '防止更新、插入及删除的时候，产生数据丢失', 452, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '下面（）是数据库模型。（选二项）', '导航模型', '网络模型', '关系模型', '星状模型', 453, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面T-SQL代码运行完的结果是（选一项）' || chr(10) || 'declare @counter int' || chr(10) || 'set @counter=1' || chr(10) || 'while @counter<3' || chr(10) || 'begin' || chr(10) || '    set @counter=@counter+1' || chr(10) || '    print @counter' || chr(10) || '    break' || chr(10) || '    print ''loop''' || chr(10) || 'end', '2' || chr(13) || 'loop', '2', '2' || chr(13) || 'loop' || chr(13) || '3' || chr(13) || 'loop', '2' || chr(13) || '3', 454, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '下面关于引用完整性约束的说法正确的是（选二项）', '违反引用完整性约束时，不能对引用表进行插入操作', '当建立引用表时被引用的表必须已经存在', '当建立引用表时被引用的列不用已经存在', '被引用的列不必是主键或者唯一约束', 455, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '现有一个学生信息表student，包含主键studentID (学生编号)。又有分数表scores，包含studentID(学生编号)、以及 score(考试分数)。已知student表中共有50个学生，有45人参加了考试(分数存在scores表中)，其中10人不及格。执行以下sql语句： select * from student where exists (select studentid from score where score<60)可返回(  )条记录。（选一项）', '50', '45', '10', '0', 456, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '现有游标myCursor，要删除此游标使用以下哪条命令（选一项）', 'DEALLOCATE  myCursor', 'DELETE  myCursor', 'REMOVE  myCursor', 'CLOSEmyCursor', 457, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '向用户授予操作权限的SQL语句是（选一项）', 'CTEATE', 'REVOKE', 'SELECT', 'GRANT', 458, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '项目开发需要经过几个阶段，绘制数据库的E-R图应该在(  )阶段进行（选一项）', '需求分析', '概要设计', '详细设计', '代码编写', 459, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '行有多个相等的名称，行又称为（选两项）', '实体', '元组', '属性', '关系', 460, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '要查询XSH数据库CP表中产品名含有“冰箱”的产品情况，可用（选一项）', 'SELECT * FROM CP WHERE 产品名称 LIKE ‘冰箱’', 'SELECT * FROM XSH WHERE 产品名称 LIKE ‘冰箱’', 'SELECT * FROM CP WHERE 产品名称 LIKE ‘%冰箱%’', 'SELECT * FROM CP WHERE 产品名称 =‘%冰箱%’', 461, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '要建立一个教师表，包含姓名、职称、级别等字段。若插入数据时，级别字段如果不输入，缺省值为‘讲师’，最合适的实现方法是（选一项）', '为 “ 级别 ” 字段建立default约束。', '为 “ 级别 ” 字段建立check 约束。', '在教师表上建立一个触发器 (trigger)。', '为教师表数据输入编写一个存储过程进行控制。', 462, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '要建立一个约束，保证用户表(user)中年龄(age)必须在16岁以上，下面语句正确的是（选一项）', 'Alter table user add constraint ck_age CHECK(age>16)', 'Alter table user add constraint df_age DEFAULT(16) for age。', 'Alter table user add constraint uq_age UNIQUE(age>16)。', 'Alter table user add constraint df_age DEFAULT(age>16)。', 463, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '一般情况下，关系数据模型与对象模型之间有哪些匹配关系（选三项）', '表对应类', '记录对应对象', '表的字段对应类的属性', '表之间的参考关系对应类之间的依赖关系', 464, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '一个表中最多有（）个非聚集索引（选一项）', '32', '64', '127', '249', 465, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '一个学生只能就读于一个班级，而一个班级可以同时容纳多个学生，学生与班级之间是(  )关系。（选一项）', '一对一', '一对多', '多对一', '多对多', 466, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '已知employee表中具有默认约束df_email, 删除该约束的语句为（选一项）', 'Alter table employee drop constraint df_email', 'Alter table employee remove constraint df_email', 'Alter table employee delete constraint df_email', 'Remove constraint df_email from table employee', 467, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '已知表A的列amount是int类型，表A的数据如下：' || chr(10) || 'Amount' || chr(10) || '1' || chr(10) || '2' || chr(10) || '3' || chr(10) || '现有如下语句，' || chr(10) || 'Declare @one int' || chr(10) || 'Select @one = amount from A' || chr(10) || '则变量@one的结果是（选一项）', '1', '2', '3', '错误', 468, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '已知有student表，studentid为主键，现在表中共有10行记录，studentid列值从1' || chr(10) || '到10。' || chr(10) || '创建试图：' || chr(10) || 'CREATE VIEW dbo.VIEW_student' || chr(10) || 'AS' || chr(10) || 'SELECT * FROM dbo.student' || chr(10) || 'GO' || chr(10) || '接着执行如下命令：' || chr(10) || 'DELETE FROM VIEW_student WHERE (studentid = 8)；' || chr(10) || '然后执行查询命令：' || chr(10) || 'SELECT * FROM student；' || chr(10) || 'SELECT * FROM VIEW_student；' || chr(10) || '假定上述命令全部执行成功，将各自返回(  )(  )行记录。（选一项）', '10,10', '10,9', '9,10', '9,9', 469, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下代码能输出＂ＯＫ＂的代码是（选一项）', 'declare @num nvarchar(10)' || chr(13) || '' || chr(10) || '@num = ‘ＯＫ’' || chr(13) || '' || chr(10) || 'Print @num', 'declare @num nvarchar(10)' || chr(13) || '' || chr(10) || '@num = ‘ＯＫ’' || chr(13) || '' || chr(10) || 'Select @num', 'If( true )' || chr(13) || '' || chr(10) || 'Print ‘OK’', 'If( 1=1 )' || chr(13) || '' || chr(10) || 'Select ‘OK’', 470, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '以下关于规范设计的描述正确的是（选两项）', '规范设计的主要目的是消除数据冗余。', '规范设计往往会增加数据库的性能。', '设计数据库时，规范化程度越高越好。', '在规范化数据库中，易于维护数据完整性。', 471, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下是SQL Server 2005支持的三种游标类型，除了（选一项）', '幻像游标', 'Transact-SQL游标', 'API服务器游标', '客户端游标', 472, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '银行系统中有帐户表和交易表，帐户表中存储了各存款人的帐户余额，交易表中存储了各存款人每次的存取款金额。为保证存款人每进行一次存、取款交易，都正确的更新了该存款人的帐户余额，以下选项中正确的做法是（选一项）', '在帐户表上创建insert触发器。', '在交易表上创建insert触发器。', '在帐户表上创建检查约束。', '在交易表上创建检查约束。', 473, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '用sp_recompile系统存储过程可以强制存储过程在下一次启动时进行重新编译，其语法为：sp_recompile [@objectname]=''object''，其中的object可以是以下的某个对象名称，除了（选一项）', '存储过程名称', '触发器名称', '约束对象名称', '视图名称', 474, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '用户通常是通过网络来访问数据库的数据，因此请求的字段和记录越多，网络流量就越大，若要避免这种情况，最好的方法是（选一项）', '删除表中不需要查询的字段和记录', '查询中包含必须的字段和记录', '只查询一小部分数据', '采用更高性能的客户计算机', 475, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '有关T-SQL中变量的使用，以下说法错误的是（选一项）', '变量的使用必须先声明，后使用。', '变量的赋值只能使用set语句。', '可以使用print语句和select语句输出结果。', '局部变量的命名必须以@打头。', 476, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '有一张销售表(orders),包含销售员编号(salepersonID)、地区编号（regionID）、销售额（orderamount）三列，其中销售员编号为主键，现希望统计各地区销售总额以及所有销售之和，下面（）语句可以实现这一愿望。（选一项）', 'SELECT regionID,SUM(orderamount) From orders', 'SELECT regionID,SUM(orderamount) From orders GROUP BY regionID', 'SELECT regionID,orderamount From orders', 'SELECT * FROM orders', 477, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '运行以下语句，输出结果是（选一项）' || chr(10) || 'CREATE PROC proc_lookup' || chr(10) || '@mystuNo varchar(8)=NULL' || chr(10) || 'AS' || chr(10) || '    IF @mystuNo IS NULL' || chr(10) || '    BEGIN' || chr(10) || '        Print ''您忘记了传递学号参数''' || chr(10) || '        RETURN' || chr(10) || '    END' || chr(10) || 'SELECT * FROM stuInfo WHERE stuNO = @mystuNo' || chr(10) || 'GO' || chr(10) || 'Exec Proc_lookup', '编译错误', '调用存储过程Proc_lookup出错', '显示：您忘记了传递学号参数', '显示空的学员信息记录集', 478, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '在(  )的列上更适合创建索引。（选两项）', '需要对数据进行排序', '具有默认值', '频繁更改', '频繁搜索', 479, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在(  )子查询中，内层查询要处理多次，内层查询的条件依赖于外层查询中的某些值（选一项）', 'IN子查询', 'EXIST子查询', 'JOIN子查询', 'NOT IN子查询', 480, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在employee表的firstname字段上建立的非聚集索引的物理效果是（选一项）', '所有的行按照firstname字段值升序排列并物理地存储在数据页中', '在行存储上是没有影响的', '所有的行按照firstname字段值降序排列并物理地存储在数据页中', '所有的行被物理地存储在数据页上,并且根据firstname字段值按照索引建立时指定的顺序排列', 481, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在MS SQL Server中，用来显示数据库信息的系统存储过程是（选一项）', 'sp_dbhelp', 'sp_db', 'sp_help', 'sp_helpdb', 482, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在score表上创建一个触发器：' || chr(10) || 'create trigger tri_score ' || chr(10) || 'on score for update,delete' || chr(10) || 'as' || chr(10) || 'if (select count(*) from inserted)>0' || chr(10) || 'print(''success'')' || chr(10) || 'go' || chr(10) || '在查询分析器上执行以下(  )语句，可能会输出“success”。（选一项）', 'Update score set score=20', 'Delete from score where score<60', 'Insert into score values ( 此处省略)', 'Select * from score', 483, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server 2005 的查询分析器中运行以下的T-SQL：' || chr(10) || 'USE PUBS' || chr(10) || 'GO' || chr(10) || 'SELECT   DISTNCT QTY   FROM  SALES' || chr(10) || 'WHERE QTY>=ALL(SELECT MAX(QTY) FROM SALES),结果（选一项）', '正确查询，并返回Sales表中的所有的数据行', '正确查询，并返回一行数据', '提示子查询中因缺少GROUP或者GROUP BY子句而产生语法错误', '提示错误，因为在子查询中使用父查询中的同一张数据库表时，要求使用', 484, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SQL Server 2005的查询分析器中，执行以下的T-SQL：' || chr(10) || 'EXEC sp_droplogin ''DBLocalHost''' || chr(10) || '对该语句正确的描述为（选一项）', '若存在数据库DBLocalHost，将删除该数据库及其所有相关的对象', '若存在角色DBLocalHost，将删除该角色并从所有的相关的用户回收该角色所具有的权限', '若存在登录名DBLocalHost，将删除该登录，并阻止使用该登录名访问SQL Server', '若存在数据库用户DBLocalHost，将删除该用户', 485, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server 2005的查询分析器中运行以下查询语句，结果是（选一项）' || chr(10) || ' SELECT DISTINCT T1。Type FROM Titles T1 WHERE T1.Type' || chr(10) || '  IN (SELECT Type FROM Titles WHERE T1.Pub_id<>Pub_id)', '查询成功，但是将查询不到任何数据行', '查询成功，可能能够查询到一行或者多行数据', '查询失败，因为在同一张表中进行查询和子查询必须使用表的别名', '查询失败，因为不能同时在一张表中执行多次查询', 486, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在SQL SERVER 2005数据库中，Public角色是一类特殊的角色，具有以下的特性，除了（选一项）', '它不能被删除', '每个数据库用户都属于Public角色，包括Sa帐户', '它包含在每个数据库中', '能向Public角色中添加或从中删除用户', 487, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server 2005中，给定如下的T-SQL代码，以下说法正确的是（选一项）' || chr(10) || 'Create procedure price_proc(@count int output,   @avg_price money output,@type Char(12)=’business’)as' || chr(10) || ' Select @Count=count(*),@avg_price=Avg(price) from titles  where type=@type', '建立了存储过程price_price,所有参数都是输出参数', '建立了存储过程price_price,返回的是用户指定图书种类的数量及平均价格', '@Count=count(*)也可以使用@Count=count()代替', '创建存储过程失败，因为Select语句中使用了聚合函数，因此必须使用Group By进行分组', 488, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL Server2005的安全类模型中，提供了“服务器”和（）两种类型的角色。（选一项）', '客户端', '数据库', '操作系统', '数据对象', 489, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SQL Server2005的查询分析器中运行以下T-SQL：' || chr(10) || 'USE PUBS' || chr(10) || 'GO' || chr(10) || 'CREATE TABLE My_Table' || chr(10) || '(a int NULL, b int NULL)' || chr(10) || 'GO' || chr(10) || 'CREATE TRIGGER my_trig ON My_Table FOR INSERT' || chr(10) || 'AS' || chr(10) || 'IF UPDATE(b)' || chr(10) || '  BEGIN' || chr(10) || '    CREATE DATABASE AAA' || chr(10) || '    PRINT ''OK…''' || chr(10) || '  END' || chr(10) || 'GO' || chr(10) || 'INSERT My_Table VALUES(3,4)' || chr(10) || 'GO' || chr(10) || 'UPDATE My_Table SET a=5 WHERE b=4' || chr(10) || 'GO（选一项）', '正确创建数据库AAA，并且打印OK…', '第一次正确创建数据库AAA，打印OK…,在第二次触发的时候报告错误信息', '报告错误信息，提示不能在触发器中使用CREATE DATABASE语句', '该触发器不会被触发。代码运行完毕后，不创建数据库，也不会得到任何输出信息', 490, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SQLServer2005中，为数据库表建立索引能够（选一项）', '防止非法的删除操作', '防止非法的插入操作', '提高查询性能', '节约数据库的磁盘空间', 491, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '关于触发器，(  )说法是错误的。（选两项）', '触发器是一种特殊类型的存储过程。', '可以使用触发器来响应对数据的select，insert，update，delete操作。', '一个表上的触发器不可以包含对另外一个表的数据操作，以免造成死循环。', '触发器和触发它的语句构成一个事务。', 492, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于存储过程，以下说法正确的是（选一项）', '不能在存储过程中使用CREATE VIEW命令。', 'T-SQL批代码的执行速度要快于存储过程。', '存储过程必须带有参数。', '存储过程不能返回结果集。', 493, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '关于聚集索引，以下(  )说法是错误的。（选两项）', '一个表最多只能创建一个聚集索引。', '聚焦索引比非聚集索引有更快的访问速度。', '主键一定是聚集索引。', '创建了聚集索引的列不允许有重复值。', 494, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于全文索引下面正确的是（选一项）', '全文索引被储存在文件系统中', '表允许有多个全文本索引', '用Transact-SQL语句来创建、管理和丢弃全文索引', '上面的都不正确', 495, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于视图，下列说法正确的是（选一项）', '视图是用来简化复杂查询语句的良好手段，但不能嵌套', '视图和索引都不是真实存在的数据，因为不是对象，所以关于他的定义不是保存在sysobjects表，而是sysviews表', '要想让别人不知道建立视图的命令，就在建立时添加with encryption', '视图无法用drop命令删除，应使用delete命令', 496, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于视图，以下(  )说法是错误的。（选一项）', '使用视图，可以简化数据的使用。', '使用视图，可以保护敏感数据。', '视图是一种虚拟表，视图中的数据只能来源于物理数据表，不能来源于其它视图。', '视图中只存储了查询语句，并不包含任何数据。', 497, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于视图以下说法正确的是（选一项）', '视图可以具有参数', '视图不可以加密', '定义视图时可以指定列名', '视图和表一样存储有数据', 498, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于数据库三大范式，以下说法错误的是（选一项）', '数据库设计满足的范式级别越高，数据库性能越好', '数据库的设计范式有助于规范数据库的设计', '数据库的设计范式有助于减少数据冗余', '一个好的数据库设计可以不满足某条范式', 499, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于数据库事务日志文件叙述错误的是（选一项）', '一个数据库至少有一个事务日志文件', '创建数据库时，如果未指定事务日志文件，SQL Server则会自动创建一个', '事务日志文件的默认大小为1MB', '如果未指定事务日志文件的增长量，则文件大小保持不变', 500, 201);
commit;
prompt 500 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于索引下面哪个是不正确的（选一项）', '必须先创建一个聚集索引，然后才可创建一个或多个非聚集索引', '在一个表或视图中可以有多个同名的素引', '组合素引的所有字段必须取自于同一表', '如果对已存在数据的表创建聚合素引，必须保证索引项对应的值无重复值', 501, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '关于子查询，以下说法正确的是（选两项）', '一般来说，表连接都可以用子查询替换。', '一般来说，子查询都可以用表连接替换。', '相对于表连接，子查询适合于作为查询的筛选条件。', '相对于表连接，子查询适合于查看多表的数据。', 502, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于子查询下列说法中正确的是（选一项）', '子查询中的条件可以有变量', '子查询可以放在父查询的where后，但无法放在select和from中间', '如果子查询放在父查询中对父查询的语法结构不产生影响，那么子查询可以省略外面的小括号', '子查询可以嵌套，但最多不能超过3层', 503, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '假定一位教师可讲授多门课程，一门课程可由多位教师讲授，教师与课程之间是（选一项）', '一对一的关系', '一对多的关系', '多对一的关系', '多对多的关系', 504, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '假设order表中存在orderid等于1的记录，执行下面T-SQL： ' || chr(10) || 'BEGIN TRANSACTION' || chr(10) || 'Delete from Order where orderid=1' || chr(10) || 'IF (@@Error <> 0)' || chr(10) || 'ROLLBACK TRANSACTION' || chr(10) || 'ROLLBACK TRANSACTION' || chr(10) || '以下说法正确的是（选一项）', '执行成功，Orderid为1的记录被永久删除。', '执行成功，Order表没有任何变化。', '执行时出现错误。', '执行成功，但事务处理并没有结束。', 505, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '假设需要设计一个表，记录各个作者著作的所有图书信息，表结构设计如下：作者(作者名称、图书1、版本1、书价1、图书2、版本2、书价2、……)，该表最高符合第(  )范式。（选一项）', '一', '二', '三', '未规范化的', 506, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '假设一系统原来使用Access数据库，现要使用sql server数据库，采用(  )方法可以完成两个数据库之间的数据转换工作。（选一项）' || chr(10) || '', 'Sql server的附加数据库功能' || chr(13) || '', 'Sql server的还原数据库功能' || chr(13) || '', '在Sql server中可直接打开Access数据库，另存即可。' || chr(13) || '', 'Sql server的导入\导出功能' || chr(13) || '', 507, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '假设有表student的设计如下：ID(学号),Name(姓名),Address(家庭住址),Department(所在系),DepartmentHead(系主任). 该表最高满足第(  )范式。（选一项）', '一', '二', '三', '不满足任何范式；', 508, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '建立如下数据库表：' || chr(10) || 'CREATE TABLE department(' || chr(10) || 'DeptID      int NOT NULL  primary key,' || chr(10) || 'DeptName    varchar (20) NOT NULL' || chr(10) || ')' || chr(10) || 'CREATE TABLE Employee (' || chr(10) || 'EmployeeID    int NOT NULL,' || chr(10) || 'DeptID        int NOT NULL,' || chr(10) || 'Name          varchar (20) NOT NULL' || chr(10) || ')' || chr(10) || '要想保证Employee表中每一个雇员(Employee)是唯一的，且只能属于在Department表中已经存在的部门，最优的做法是（选一项）', '把EmployeeID 和DeptID 设为组合主键。', '把EmployeeID设为主键，同时在DeptID列上创建一个外健约束。', '把EmployeeID设为主键，同时在DeptID列上创建一个检查约束。', '在DepartmentID列上创建一个唯一约束，同时在DeptID列上创建一个外健约束。', 509, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '将E-R图转换为表的过程中，如果实体之间存在多对多的关系，通常的做法是（选一项）', '在两个实体间建立主外键关系。', '在两个实体间建立关联表，把一个多对多的关系分解成两个一对多的关系。', '在两个实体间建立关联表，把一个多对多的关系分解成两个一对一的关系。', '在两个实体间不建立任何关系。', 510, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '考虑下列实例,读者论坛一个数据库存储系里的课程负载情况,在PROFESSORS表中存储每一个教授的信息，在COURSES表中存储所有的课程的信息。每门课程被分配给一个指定的教授，而每一个教授可以教授几门课程，要求只有在PROFESSORS表中注册过的教授才能够教授课程，而这个教授也只能教授那些在COURSES表中登记过的课程。' || chr(10) || '下列选项中，（）有助于满足以上的需求。（选择一项）', '在PROFESSORS表中建立一个主键，引用COURSES表', '在COURSES表中创建一个外键，引用PROFESSORS表', '在PROFESSORS表中创建一个外键，引用COURSES表', '在COURSES表中建立一个主键，引用PROFESSORS表', 511, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Java中，执行下面的语句后，c的值为（选一项）' || chr(10) || 'String s = "Jessica ";' || chr(10) || 'char c = s.charAt(6);', 'null', ''' ''', '''c ''', '''a''', 512, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Java中已获得默认类型的 Resultset 对象 rs, 要获取结果集中的数据 , 必须执行的语句是（选一项）', 'rs.next()', 'rs.previous()', 'rs.getNext()', 'rs.getPrevious()', 513, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在jave中，类Worker是类Person的子类，Worker的构造方法中有一句”super()”, 该语句 （选一项）', '调用类Worker 中定义的super()方法', '调用类Person中定义的super()方法', '调用类Person的构造函数', '句法错误', 514, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在JDK1.5及以上版本中，如果你试图编译和运行下面代码会发生什么？（选一项）' || chr(10) || 'Integer ten=new Integer(10);' || chr(10) || 'Long nine=new Long (9);' || chr(10) || 'System.out.println(ten + nine);' || chr(10) || 'int i=1;' || chr(10) || 'System.out.println(i + ten);', '19 然后是20', '19 然后是11', '编译错误', '10然后是1', 515, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在类的说明符中，被指定为私有的数据可以被以下（）访问。（选一项）', '程序中的任何函数', '其他类的成员函数', '类中的成员函数', '派生类中的成员函数', 516, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '"^(abc)|(def)"不能匹配的是（选一项）', '"abcdef"', '"abcd"', '"abc"', '"cdef"', 517, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '(   )关键字用于在C#中从派生类中访问基类的成员。（选一项）', 'new', 'super', 'this', 'base', 518, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'C#程序可以依据（ ）来进行方法重载。（选一项）', '不同的参数个数', '不同的参数名称', '不同的返回值', '不同的方法名称', 519, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'C#程序中的类 myClass 中的成员变量var1如下' || chr(10) || 'public class MyClass{...private int var1;...}' || chr(10) || '则可以访问var1的有（选一项）', 'MyClass中包含的类', 'MyClass的继承类', 'MyClass的父类', '和MyClass在同一命名空间下的类', 520, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'C#类Regex的（    ）方法可以测试字符串是否匹配某个正则表达式模式。（选一项）', 'IsMatch( )', 'IsMatchs( )', 'Split( )', 'Test()', 521, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'C#中，下列关于索引器的说法，正确的是（选一项）', '索引器没有返回类型', '索引器一般用来访问类中的数组元素或集合元素', '索引器的参数类型必须是int的类型', '索引器的声明可以使用类名或this关键字', 522, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'C#中的方法重写使用关键字（选一项）', 'override', 'overload', 'static', 'inherit', 523, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'C#中的事件处理有3个步骤：1、订阅事件2、定义事件3、发生事件时通知订阅者，正确的顺序是（选一项）', '123', '321', '132', '213', 524, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'C#中关于委托，下面说法正确的是（选一项）' || chr(10) || '', '委托是一种类的成员' || chr(13) || '', '委托必须定义在类中' || chr(9) || '' || chr(13) || '', '定义委托需要使用delegate关键字' || chr(13) || '', '委托是一种数据类型' || chr(13) || '', 525, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'class Class1{' || chr(10) || '    public static int Count = 0;' || chr(10) || '    static Class1()' || chr(10) || '    {    Count++;    }' || chr(10) || '    public Class1()' || chr(10) || '    {    Count++;    }' || chr(10) || '}' || chr(10) || 'Class1 c1 = new Class1();' || chr(10) || 'Class1 c2 = new Class1();' || chr(10) || '请问,Class1.Count的值是多少（选一项）', '1', '2', '3', '4', 526, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在哪种索引中，表中各行的物理顺序与键值的逻辑(索引)顺序相同（选一项）', '聚簇索引', '非聚簇索引', '两者都是', '两者都不是', 527, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在数据表中，创建索引可以得到以下的好处，除了（选一项）', '提高数据检索的速度', '加快排序的速度', '使数据更新、数据删除操作变快', '通过浏览索引文件来定位纪录比通过浏览实际表的纪录显得更简单、更快捷', 528, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在一个SQL Server数据库中ORDERS 表包括列：orderID，customerID，orderDate和employeeID（已经按照orderID排序）' || chr(10) || 'ORDERDETAILS表存储了每张订单的单价和数量信息。' || chr(10) || '要求达到：' || chr(10) || '如果客户取消这张订单，ORDERS和ORDERDETAILS表中与此订单相关的所有信息都应该被删除。下列方式中，（）可以最小化执行步骤就能满足要求。（选一项）', '建立一个存储过程', '在ORDERDETAILS表上建立一个规则', '在ORDERS表上建立一个触发器', '在ORDERDETAILS表上建立一个外键，引用ORDERS表', 529, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在应用开发工具和操作系统、数据库之间一般用（）来进行交互，以完成数据交流。（选一项）', '数据库系统', '数据库管理系统', '应用系统', '自动化控制系统', 530, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '执行SELECT COL_LENGTH(''AA'',''BB'')的结果是（选一项）', '返回AA数据库BB表的列的个数', '返回AA表BB列的非空行的数量', '返回AA表BB列的长度', '返回AA列的BB属性值', 531, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '主键可以由表中的()个字段组成（选一项）', '一', '二', '三', '任意多个', 532, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '.给定两个java程序,如下:Text.java的编译运行结果是（选一项）' || chr(10) || 'pubilc interface Face{' || chr(10) || '   int count = 40;' || chr(10) || '}' || chr(10) || 'pubilc class Text implements Face{' || chr(10) || '   private static int counter;' || chr(10) || '   pubilc static void main(String[]args){' || chr(10) || '       System.out.println( counter );' || chr(10) || '}' || chr(10) || '}', '40', '41', '0', '1', 533, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Java程序中读入用户输入的一个值，要求创建一个自定义的异常，如果输入值大于10，使用throw语句显式地引发异常，异常输出信息为“something’s wrong！”，语句为（选一项）', 'if (I>10)  throw Exception("something’s wrong！");', 'if (I>10)  throw Exception e ("something’s wrong！");', 'if (I>10)  throw new Exception("something’s wrong！");', 'if (I>10) throw new Exception e ("something’s wrong！");', 534, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'java程序中有如下代码：' || chr(10) || 'DataInputStream din = new DataInputStream （' || chr(10) || '    new BufferedInputStream(new FileInputStream("employee.dat") ));' || chr(10) || '假设在employee.dat文件中只有如下一段字符：abcdefg。则：System.out.println(din.read())在屏幕上打印（选一项）', 'A', 'B', '97', '98', 535, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'java语言中，下列处理输出操作的所有类的基础的是（选一项）', 'DataOutput', 'OutputStream', 'BufferedOutputStream', 'IOStream', 536, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Java中，使用（）修饰符时，一个类能被同一包或不同包中的其他类访问。（选一项）', 'private', 'protected', 'public', 'friendly', 537, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'public class Test {' || chr(10) || '    public static void main(String args[]){' || chr(10) || '        EqTest e = new EqTest();' || chr(10) || '        e.show();' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'class  EqTest{' || chr(10) || '    String s = "Java";' || chr(10) || '    String s2 = "java";' || chr(10) || '    public void show(){' || chr(10) || '        //在这儿放置测试代码' || chr(10) || '        {System.out.println("相等");}' || chr(10) || '        else' || chr(10) || '        {System.out.println("不相等");}' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '在上面的Java代码的注释行位置，放置（）测试代码能输出“相等”结果。（选一项）', 'if(s==s2)', 'if(s.equals(s2))', 'if(s.equalsIgnoreCase(s2))', 'if(s.noCaseMatch(s2))', 538, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '包pack1的类class1中有成员方法：' || chr(10) || 'protected void method_1(){…}，' || chr(10) || 'private void method_2(){…},' || chr(10) || 'public void method_3(){…}和void method_4(){…},在包pack2中的类class2是class1的子类，你在class2中可以调用方法（选两项）', 'method_1', 'method_2', 'method_3', 'method_4', 539, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '编译并运行下面的Java程序: ' || chr(10) || 'class A{' || chr(10) || '    int var1=1;' || chr(10) || '    int var2;' || chr(10) || '    public static void main(String[] args){' || chr(10) || '        int var3=3;' || chr(10) || '        A a = new A(); ' || chr(10) || '        System.out.println(a.var1+a.var2+var3);' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '将产生(  )结果。（选一项）', '0', '4', '3', '代码无法编译，因为var2根本没有被初始化', 540, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '编译并运行下面的Java代码段' || chr(10) || 'char c = ''a'';' || chr(10) || 'switch (c) {' || chr(10) || '     case ''a'': System.out.println("a");' || chr(10) || '     default: System.out.println("default");' || chr(10) || '  }' || chr(10) || '输出结果是（选一项）', '代码无法编译，因为switch语句没有一个合法的表达式', 'a  default', 'a', 'default', 541, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '给定 Java 代码如下 , 要打印出list中存储的内容,以下语句正确的是（选两项）' || chr(10) || 'ArrayList list= new ArrayList();' || chr(10) || 'list.add("a");' || chr(10) || 'list.add("b");', 'System.out.print(list);', 'System.out.print(list.toArray());', 'System.out.print(list.toString());', 'System-out-print(list.get(0));', 542, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '给定Java代码，如下：' || chr(10) || 'abstract class Shape{' || chr(10) || '    abstract void draw();' || chr(10) || '}' || chr(10) || '要创建Shape类的子类Circle，以下代码正确的是（选两项）', 'class Circle extends Shape{' || chr(13) || 'int draw(){}' || chr(13) || '}', 'abstract class Circle extends Shape{  }', 'class Circle extends Shape{' || chr(13) || 'void draw();' || chr(13) || '}', 'class Circle extends Shape{' || chr(13) || 'void draw(){};' || chr(13) || '}', 543, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '给定java代码，如下：编译运行，结果是（选一项）' || chr(10) || 'public static void main(String[] args) {' || chr(10) || '    String s;' || chr(10) || '    System.out.println( "s=" + s);' || chr(10) || '}', '编译错误', '编译通过，但出现运行时错误', '正常运行，输出s=null', '正常运行，输出s=', 544, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '给定java代码，如下：运行时，会产生（）类型的异常。（选一项）' || chr(10) || 'String s = null;' || chr(10) || 's.concat("abc");', 'AritthmeticException', 'NullpointerException', 'IOException', 'EOFException', 545, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '给定java代码片段，如下：' || chr(10) || 'Integer a = new Integer(3);' || chr(10) || 'Integer b = new Integer(3);' || chr(10) || 'System.out.println(a==b);' || chr(10) || '运行后，这段代码将输出（选一项）', '1', '0', 'true', 'false', 546, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '给定java代码如下,d的取值范围是（选一项）' || chr(10) || 'double d = Math.random();', 'd>=1.0', 'd>=0.0,并且d<1.0', 'd>=0.0,并且d<Double.MAX_VALUE', 'd>=1.0,并且d<Double.MAX_VALUE', 547, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '给定Java代码如下，运行时，会产生(  )类型的异常。（选一项）' || chr(10) || 'String s = null;' || chr(10) || 's.concat("abc");', 'ArithmeticException', 'NullPointerException', 'IOException', 'EOFException', 548, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '给定某Java程序的main方法如下，该程序编译运行的结果是（选一项）' || chr(10) || 'public static void main(String[]args){' || chr(10) || '    String str = null;' || chr(10) || '    str.concat("abc");' || chr(10) || '    str.concat("def");' || chr(10) || '    System.out.println(str);' || chr(10) || '}', 'null', 'abcdef', '编译错误', '运行时出现异常', 549, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '给定如下JAVA 程序片断:' || chr(10) || 'class A{' || chr(10) || '    public A(){' || chr(10) || '        system.out.println("A");' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'class B extends A{' || chr(10) || '    public B(){ System.out.println("B"); }' || chr(10) || '    public static void main(String[] args){' || chr(10) || '        B b = new B();' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '上述程序将（选一项）', '不能通过编译', '通过编译,输出为: A B', '通过编译,输出为: B', '通过编译,输出为: A', 550, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '给定如下Java代码，编译运行时，以下(  )语句的值是true。（选两项）' || chr(10) || 'String s = "hello";' || chr(10) || 'String t = "hello";' || chr(10) || 'String e = new String("hello");' || chr(10) || 'char[] c = {''h'',''e'',''l'',''l'',''o''};', 's.equals( t )', 't.equals( c )', 't.equals( e )', 't==c', 551, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '给定一个Java程序代码，如下：运行编译后，输出结果是（选一项）' || chr(10) || 'pubilc class Test{' || chr(10) || '    int count = 9;' || chr(10) || '    pubilc void count1(){' || chr(10) || '        int count = 10;' || chr(10) || '        System.out.println("count1" + count);' || chr(10) || '    }' || chr(10) || '    pubilc void count2(){' || chr(10) || '        System.out.println("count2" + count);' || chr(10) || '    }' || chr(10) || '    pubilc static void main(String args[]){' || chr(10) || '        Test t = new Twst();' || chr(10) || '        t.count1();' || chr(10) || '        t.count2();' || chr(10) || '    }' || chr(10) || '}', 'count1=9 count2=9', 'count1=10 count2=9', 'count1=10 count2=10', 'count1=9 count2=10', 552, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '给定一个java程序的方法结构，如下：' || chr(10) || 'public Integer change(String s){' || chr(10) || '}' || chr(10) || '以下方法体实现语句正确的是（选两项）', 'return new Integer(s);', 'return s;', 'Integer t = Integer.valueOf(s);return t;', 'return s.getInteger();', 553, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '类 Java.util.HashMap 实现了(  )接口。（选一项）', 'collection', 'Set', 'Map', 'List', 554, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如下Java代码段，体现了（）概念。（选一项）' || chr(10) || 'public void aMethod(String s){....}' || chr(10) || 'public void aMethod(int i){.........}' || chr(10) || 'public void aMethod(int i,float f){.....}', '多继承', '重载', '重写　', '多态', 555, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '为了判断两个字符串s1和s2是否相等，应当使用（选一项）', 'if (s1==s2)', 'if (s1=s2)', 'if (strcpy(s1，s2))', 'if (s1.equals(s2))', 556, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列关于类中的描述错误的是（选一项）', '类是拥有相同特征、共同的行为和共同的关系的一组对象', '类是对象在现实世界的具体表现形式', '类似的对象归为一个类，每个类描述一组独立的对象', '对象是类的实例，类结构是对象抽象的实用形式', 557, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面程序的输出是（选一项）' || chr(10) || 'class A2 extends A1 {' || chr(10) || '    A2(){' || chr(10) || '        System.out.println("A2");' || chr(10) || '    }' || chr(10) || '    public static void main(String args[]){' || chr(10) || '        new A2();' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'class  A1{' || chr(10) || '    A1(){' || chr(10) || '        System.out.println("A1");' || chr(10) || '    }' || chr(10) || '}', 'A1', 'A2', 'A1A2', 'A2A1', 558, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面是Java程序中的一些声明，选项中能够通过编译的一项是（选一项）' || chr(10) || 'String s1 = new String("Hello");' || chr(10) || 'String s2 = new String("there");' || chr(10) || 'String s3 = new String();', 's3 = s1 + s2', 's3 = s1 ＆ s2', 's3 = s1 || s2', 's3 = s1 - s2', 559, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '要使用Java创建一个新目录，你可用如下（）类的实例。（选一项）', 'File', 'FileoutputStream', 'Printwriter', 'BufferedReader', 560, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '要使用流类和整个输入输出流，则必须导入（）包。（选一项）', 'java.lang', 'java.stream', 'java.net', 'java.io', 561, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下Java语句中，(  )可以构造一个DataOutputStream对象。（选一项）', 'new DataOutputStream(new FileOutputStream("abc.txt"));', 'new DataOutputStream(new OutputStream("abc.txt"));', 'new DataOutputStream(new FileWriter("abc.txt"));', 'new DataOutputStream(new FileInputStream("abc.txt"));', 562, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在J2EE中，下面的代码中出现编译错误的是（选一项）', 'File f = new File("/","autoexec.bat");', 'DataInputStream din = new DataInputStream(new FileInputStream("autoexec.bat"));', 'InputStreamReader in = new InputStreamReader(System.in);', 'OutputStreamWriter out = new OutputStreamWriter(System.in);', 563, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在J2SE中，下列元素经过排序的集合类是（选一项）', 'LinkedList', 'Stack', 'Hashtable', 'TreeSet', 564, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Java.lang包的Math类中，求最大值的方法为（选一项）', 'Max()', 'Min()', 'Abs()', 'Ceil()', 565, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在java的异常处理中，能单独与finally语句一起使用的块是（选一项）', 'try', 'catch', 'throw', 'throws', 566, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '在Java语言中，当一个类的某个变量声明为protected时下列说法正确的是（选两项）', '只有同一类中的成员才能访问它', '不同包中的任何其他类都能够访问它', '同包中的任何其他类能够访问它', '不同包中的子类可以访问该变量', 567, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java语言中，如果你有下面的类定义：' || chr(10) || 'abstract class Shape{' || chr(10) || '    abstract void draw();' || chr(10) || '}' || chr(10) || 'Class Square extends Shape{}' || chr(10) || '如果你试图编译上面的代码会发生（选一项）', '一切成功编译', 'Shape可以编译,Square不能编译', 'Square可以编译，Shape不能编译', 'Shape，Square都不能编译', 568, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Java语言中，小明在他的包mypackage中定义了类My_Class，在mypackage的子包mysubpackage中也有个类My_Class。小明用.import mypackage：引入包，执行其中的语句：My_Class NewClass=New My_Class();时，将发生（选一项）', '创建一个类mypackage.My_Class对象', '创建一个类mypackage. Mysubpackage.My_Class的对象', '该语句是错误的', '创建一个类mypackage.My_Class的对象和一个类mypackage. Mysubpackage.My_Class的对象', 569, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Java语言中，小明在他的类SquareRoot中定义了方法method_A，其中包含语句：' || chr(10) || 'double my_result=Math.sqrt(1000)；他需要导入（选一项）', 'Java.awt.*', 'Java.Math.*', 'Java.util.Math.*', '以上皆非', 570, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Java中，(  )对象可以使用键/值的形式保存数据。（选一项）', 'ArrayList', 'HashSet', 'HashMap', 'LinkedList', 571, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java中,()接口位于集合框架的顶层。（选一项）', 'Map', 'Collection', 'Set', 'List', 572, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JAVA中，com包中某类的方法使用下列（）访问修饰符修饰后，可以被com.db包中的子类访问，但不能被com.db中其他类访问。（选一项）', 'private', 'protected', 'public', 'friendly', 573, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java中，调用Math.random() 方法可能返回的结果是（）。（选一项）', '132.34', '0.342', '29.34E10', '1.0009', 574, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java中，调用Math.random() 方法可能返回的结果是（选一项）', '132.34', '0.342', '29.34E10', '1.0009', 575, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在java中，定义接口的关键字是（选一项）', 'class', 'interface', 'extends', 'implements', 576, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Java中，关于CLASSPATH环境变量的说法不正确的是（选一项）', 'CLASSPATH一旦设置之后不可修改，但可以将目录添加到该环境变量中', '编译器用它来搜索各自的类文件', 'CLASSPATH是一个目录列表', '解释器用它来搜索各自的类文件', 577, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '在Java中，关于final关键字的说法正确的是（选两项）', '如果修饰变量，则一旦赋了值，就等同一个常量', '如果修饰类，则该类只能被一个子类继承', '如果修饰方法，则该方法不能在子类中被覆盖', '如果修饰方法，则该方法所在的类不能被继承', 578, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Java中，如果父类中的某些方法不包含任何逻辑，并且需要由子类重写，应该使用(  )关键字来声明父类的这些方法。（选一项）', 'final', 'static', 'abstract', 'void', 579, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在JAVA中，如果要在字符串类型对象S＝"java"，中找出字母''v''出现的位置（即位置2），可使用（选一项）', 'mid（2，s）', 'charAt（2）', 's.indexOf（''v''）', 'indexOf（s,''v''）', 580, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '在java中，下列赋值语句正确的是（选两项）', 'char c=''a'';', 'char c="a";', 'char c=97;', 'char c=new Character(''a'');', 581, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java中，下列关于抽象类的描述正确的是(  )。（选一项）', '抽象类可以被实例化', '如果一个类中有一个方法被声明为抽象的，那么这个类必须是抽象类', '抽象类中的方法必须都是抽象的', '抽象类不能含有构造方法', 582, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Java中,下列选项表示字符''a''值的是（选一项）', '''a''', '"a"', 'new Character(a)', '\000a', 583, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '在Java中，下面关于包的陈述中正确的是（选两项）', '包的声明必须是源文件的第一句代码', '包的声明必须紧跟在import语句的后面', '只有公共类才能放在包中', '可以将多个源文件中的类放在同一个包中', 584, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Java中，下面关于包的陈述中正确的是（选一项）', '包的声明必须是源文件的第一句代码', '包的声明必须紧跟在import语句的后面', '只有公共类才能放在包中', '多个源文件中的类不可以放在同一个包中', 585, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Java中，下面关于构造函数的描述正确的是（选一项）', '类必须有显式构造函数', '它的返回类型是void', '它和类有相同的名称，但它不能带任何参数', '以上皆非', 586, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Java中，下面描述正确的是（）。（选一项）', 'try块中可以有嵌套try块', 'try块后最多可以跟随3个catch块', 'try块可以单独存在', 'finally块可以单独存在', 587, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Java中，要想使只有定义该类所在的包内的类可以访问该类，应该用(  )关键字。（选一项）', '不需要任何关键字', 'private', 'final', 'protected', 588, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在java中，以下代码（）正确地创建了一个InputStreamReader类型的对象（选一项）', 'new InputStreamReader(new FileInputStream("1.dat"));', 'new InputStreamReader(new FileReader("1.dat"));', 'new InputStreamReader(new BufferedReader("1.dat"));', 'new InputStreamReader("1.dat");', 589, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在java中，运行时发生的错误称为（  ）。（选一项）', '异常', '暂停', '消息', '服务', 590, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java中，在单一文件中import、class 和package的正确出现顺序是（选一项）', 'class,import, package', 'package, import, class', 'import, package, class', 'package, class, import', 591, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在java中，在方法前使用（）关键字，可以表示此方法为类方法，无需创建对象即可访问。（选一项）', 'void', 'final', 'public', 'static', 592, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Java中，在使用JDBC时，对于多次调用同一条SQL语句的情况，使用(  )通常会提高效率。（选一项）', 'Statement', 'CallableStatement', 'PrepareStatement', 'ParameterStatement', 593, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在.Net中，ArrayList对象位于（）命名空间内。（选一项）', 'System.Array', 'System.IO', 'System.Collections', 'System.RunTime', 594, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在.NET中，Hashtable类所在的命名空间是（选一项）', 'System.Threadint', 'System.IO', 'System.Collections', 'System', 595, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在.NET中,IL是指（选一项）', '接口限制', '中间语言', '核心代码', '借口类库', 596, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在.Net中，关于CLR和IL，以处描述正确的是（选一项）', '应用程序在CLR环境被编译成IL,IL将能够被任何计算机指令集成', '应用程序被编译两次，第一次生成IL,IL在运行时候被CLR快速编译', '应用程序被编译两次,但是第二次CLR编辑比第一次慢', '借取CLR,IL被编译成机器代码并且能够在不同的计算机指令集下被执行', 597, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在.NET中，下列关于事件处理程序说法错误的是（选一项）', '事件处理的顺序是定义事件、订阅事件、引发事件', '定义事件使用evnet关键字', 'C#中的事件借助于委托来实现', '定义事件使用delegate关键字', 598, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在.NET中，一些数据类型为引用类型，当引用类型的值为(  )时，表明没有引用任何对象。（选一项）' || chr(10) || '', 'Empty' || chr(13) || '', 'null' || chr(13) || '', 'Nothing' || chr(13) || '', '0' || chr(13) || '', 599, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在C#语法中，在派生类中对基类的虚函数进行重写，要求在声明中使用关键字（选一项）', 'override', 'new', 'static', 'virtual', 600, 203);
commit;
prompt 600 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在C#中，(  )访问修饰符修饰的变量只能由当前程序集访问。（选一项）', 'public', 'protected', 'internal', 'private', 601, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中，关于继承和接口，以下说法正确的是（选一项）', 'C#允许多接口实现，也允许多重继承', 'C#允许多接口实现，但不允许多重继承', 'C#不允许多接口实现，但允许多重继承', 'C#不允许多接口实现，也不允许多重继承', 602, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中，关于以下C#代码的说法正确的是（选一项）' || chr(10) || 'namespace Microsoft' || chr(10) || '{' || chr(10) || '    class Student' || chr(10) || '    {' || chr(10) || '        string type=" 美国硅谷学员";  ' || chr(10) || '        internal string name="李明";   ' || chr(10) || '    }' || chr(10) || '    public class Test' || chr(10) || '    {   ' || chr(10) || '        static viod Main() ' || chr(10) || '        { ' || chr(10) || '            Student stu = new Student();         //1' || chr(10) || '            Console.WriteLine(stu.type);         //2' || chr(10) || '            Console.WriteLine(stu.name);         //3' || chr(10) || '        }' || chr(10) || '    }' || chr(10) || '}', '代码1错误', '代码2错误', '代码3错误', '代码都错误', 603, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在C#中，关于属性的说话错误的是（选一项）', '属性可以是只读的', '属性可以是只写的', '属性可以是可读可写的', '属性不能只是可写的', 604, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在C#中，接口与抽象基类的区别在于（选一项）', '抽象基类可以包含非抽象方法，而接口只能包含抽象方法', '抽象基类可以被实例化，而接口不能被实例化', '抽象基类不能被实例化，而接口可以被实例化', '抽象基类能够被继承，而接口不能被继承', 605, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在C#中,如果要将数组做为一个方法的参数,则传递的是（选一项）', '数组中的所有元素', '数组的第一个元素', '对象的引用', '以上皆非', 606, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '从HTTP请求中获得请求参数，应该调用（选一项）', 'request对象的getAttribute()方法', 'request对象的getParameter()方法', 'session对象的getAttribute()方法', 'session对象的getParameter()方法', 607, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '当浏览器第二次访问以下JSP网页时的输出结果是什么（选一项）' || chr(10) || '<!% int a=0;  %>' || chr(10) || '<%' || chr(10) || '     int b=0; ' || chr(10) || '     a  ;' || chr(10) || '     b  ; ' || chr(10) || '%>' || chr(10) || 'a:<%= a %> <br>' || chr(10) || 'b:<%= b %>', 'a=0  b=0', 'a=1  b=1', 'a=2  b=1', 'a=2  b=2', 608, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '给定test1.jsp代码片断，如下：' || chr(10) || '<html> ' || chr(10) || '<jsp:include page=”test2.jsp” flush=”false”> ' || chr(10) || '<jsp:param name=”color” value=”red”/> ' || chr(10) || '</jsp:include> ' || chr(10) || '</html> ' || chr(10) || '要在test2.jsp中输出参数color中的值，以下选项正确的是（选一项）', '<%=request.getParameter(“color”)%>', '<%=request.getAttribute(“color”)%>', '<jsp:getParam name=”color”/>', '<jsp:include param=”color”/>', 609, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '给定某Servlet程序的片段如下,用户在浏览器地址栏中键盘键入正确的请求URL并回车后,在控制台上显示的结果是（选一项）' || chr(10) || 'public void doGet(HttpServletRequest request,HttpServletResponse response)  throws ServletException ,IOException{' || chr(10) || '    System.out.println("get");' || chr(10) || '}' || chr(10) || 'public void doPost(HttpServletRequest request,HttpServletResponse response)  throws ServletException ,IOException{' || chr(10) || '    System.out.println("post");' || chr(10) || '}', 'get', 'post', 'get' || chr(13) || '' || chr(10) || 'post', 'post' || chr(13) || '' || chr(10) || 'get', 610, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '给定一个Model1体系结构，其中有一个JSP页面处理所有控制器函数，这个JSP控制器要把请求分派给另一个JSP页面（选一项）', '<jsp:forward page=”view.jsp”/>', '<jsp:forward file=”view.jsp”/>', '<jsp:dispatch page=”view.jsp”/>', '<jsp:dispatch file=”view.jsp”/>', 611, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '给定一个Servlet程序的代码片段，如下' || chr(10) || 'public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException {' || chr(10) || '     Request.getSession().getAttribute("A");  //第一行' || chr(10) || '}' || chr(10) || '假定第一行返回的对象引用不是null，那么这个对象存储在（）范围中（选一项）', 'page', 'session', 'request', 'application', 612, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '给定一个Servlet的代码片段如下' || chr(10) || 'public void doGet(HttpServletRequest request,HttpServletResponse response)' || chr(10) || 'throws ServletException,IOException{' || chr(9) || '' || chr(10) || '    ______' || chr(10) || '    out.println("hi kitty!");' || chr(10) || '    out.close();' || chr(10) || '}' || chr(10) || '运行次Servlet时输出如下：' || chr(10) || '' || chr(9) || 'hi kitty!' || chr(10) || '则应在此Servlet下划线处填充如下代码（选一项）', 'PrintWriter out = response.getWriter();', 'PrintWriter out = request.getWriter();', 'OutputStream out = response.getOutputStream();', 'OutputStream out = request.getWriter();', 613, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在C#中，如果要在文件file1.txt中写入字母d（其ASCII码为100）,则横线处可以填写的代码是（选一项）' || chr(10) || 'class Class1{' || chr(10) || '    static void Main(string[] args){' || chr(10) || '        string path = @"D:\file1.txt";' || chr(10) || '        FileStream fs=new FileStream(path,FileMode.Create,FileAccess.Write);' || chr(10) || '        ________在此处填之代码' || chr(10) || '        fs.Close();' || chr(10) || '    }' || chr(10) || '}', 'fs.WriteLine("d");', 'fs.Write(new byte[]{50,10,150},1,1);', 'fs.WriteByte(100);', 'fs.Write(''d'');', 614, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中，通过调用Thread 类的Sleep(int x)方法来实现禁止线程运行，其中x代表（选一项）', '禁止线程运行的微秒数', '禁止线程运行的毫秒数', '禁止线程运行的秒数', '禁止线程以内性的CPU时间数', 615, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在C#中，下列代码的运行结果是（选一项）' || chr(10) || 'Hashtable hsStu = new Hashtable();' || chr(10) || 'hsStu.Add(3,"A");' || chr(10) || 'hsStu.Add(2,"B");' || chr(10) || 'hsStu.Add(1,"C");' || chr(10) || 'hsStu.Remove(1);' || chr(10) || 'Console.WriteLine(hsStu[2])', '2', 'B', '1', 'C', 616, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中，下列代码的运行结果是（选一项）' || chr(10) || 'int []num = new int[]{3,4,5,3,8};' || chr(10) || 'int index = Array.IndexOf(num,3);' || chr(10) || 'Console.WriteLine(index);', '-1', '0', '1', '3', 617, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在C#中，下列代码的运行结果是（选一项）' || chr(10) || 'int[] age = new int[]{16,18,14,22};' || chr(10) || 'foreach(int i in age){' || chr(10) || '    if(i>18)' || chr(10) || '        continue;' || chr(10) || '    Console.Write(i.ToString()+" ");' || chr(10) || '}', '16 18 20 14 22', '16 18 14 22', '16 18 14', '16 18', 618, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中，下列代码的运行结果是（选一项）' || chr(10) || 'int[] num = new int[]{1,3,5};' || chr(10) || 'ArrayList arr = new ArrayList();' || chr(10) || 'for(int i=0;i<num.Length;i++) {' || chr(10) || '    arr.Add(num[i]);' || chr(10) || '}' || chr(10) || 'arr.Insert(1,4);' || chr(10) || 'console.Write(arr[2]);', '1' || chr(13) || '', '3' || chr(13) || '', '4' || chr(13) || '', '5' || chr(13) || '', 619, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在C#中，下列代码的运行结果是（选一项）' || chr(10) || 'int[] num = new int[5]{1,3,2,0,0};' || chr(10) || 'Array.Reverse(num);' || chr(10) || 'foreach(int i in num)' || chr(10) || '{' || chr(10) || '    Console.Write(i);' || chr(10) || '}', '00123', '12300', '00132', '00231', 620, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在C#中，下列代码的运行结果是（选一项）' || chr(10) || 'static void main()' || chr(10) || '{' || chr(10) || '    int[] num1 = new int[]{1,2,3,4,5};' || chr(10) || '    int[] num2 = new int[5]{6,7,8,9,10};' || chr(10) || '    Array.Copy(num1,num2,1);' || chr(10) || '    foreach(int i in num2)' || chr(10) || '    {' || chr(10) || '        Console.Write(i);' || chr(10) || '    }' || chr(10) || '}', '62345', '678910', '12346', '178910', 621, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中，下列代码运行结果是（选一项）' || chr(10) || 'Hashtable hsStu = new Hashtable();' || chr(10) || 'hsStu.Add(3,"甲");' || chr(10) || 'hsStu.Add(2,"乙");' || chr(10) || 'hsStu.Add(1,"丙");' || chr(10) || 'Console.WriteLine(hsStu[3]);', '3', '甲', '1', '丙', 622, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在C#中,下列结构或者类定义正确的是（选一项）', 'public struct Person{     string name;     int age;     public void ShowName(){          Console.WriteLine(name);     }}', 'public struct Person{     string name;     int age;     public Person(){          Conssole.WriteLine(name);     }}', 'public class Person{     string name;     int age;     public Person(){          Conssole.WriteLine(name);     }}', 'public class Person{     string name;     int age;     public Person(string name){          Conssole.WriteLine(name);     }}', 623, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中，一个类（选一项）', '可以继承多个类', '可以实现多个接口', '在一个程序中只能有一个子类', '只能实现一个接口', 624, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中现实线程同步的关键字是（选一项）', 'synchronize', 'lock', 'Monitor', 'delay', 625, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Net中,（）接口定义了释放非托管资源的方法，Dispose方法与垃圾回收器一起使用来释放非托管资源。（选一项）', 'IRelease', 'IDispose', 'IDisposable', 'IDispatch', 626, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在属性的set块的实现内，用于访问传递给该属性的内置参数的是（选一项）', 'this', 'value', 'args', 'property', 627, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '针对下面的C#代码：' || chr(10) || 'class Teststring' || chr(10) || '{' || chr(10) || '    public static void Main()' || chr(10) || '    {' || chr(10) || '        String strOriginal;' || chr(10) || '        strOriginal = Console.ReadLine();' || chr(10) || '        bool A = strOriginal.Equals("A");' || chr(10) || '        Console.WriteLine(A.ToString());' || chr(10) || '        int B = strOriginal.Length;' || chr(10) || '        Console.WriteLine(B.ToString());' || chr(10) || '        Console.ReadLine();' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '程序运行时．输入“   AAAAA”(五个A的前面有三个空格)则程序输出为（选一项）', '0 8', 'False 8', '－1 8', 'False 5', 628, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(   )接口用户存储与Servlet相关的信息。（选一项）', 'HttpSession', 'ServletContext', 'HttpServletRequest', 'HttpServletResponse', 629, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(  )动作用于得到Bean的属性值。（选一项）', '<jsp:param>', '<jsp:getProperty>', '<jsp:setProperty>', '<jsp:forward>', 630, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '(  )动作用于将永久的控制权从jsp页面传输至本地服务器的另一个位置。（选一项）', '<jsp:include>', '<jsp:userBean>', '<jsp:forword>', '<jsp:param>', 631, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '(  )多次计算它的标签体。（选一项）', '迭代标签', '标准操作标签', '常用标签', '条件标签', 632, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(  )页面在Model I体系结构中负责处理请求。（选一项）', 'XML', 'JSP', 'DHTML', 'HTML', 633, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '(  )用于调用过滤器链中的下一个过滤器。（选一项）', 'FilterConfig()', 'Filter()', 'FilterChain()', 'RequestDispatcher()', 634, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '<jsp:param>动作元素经常与(  )元素一起使用。（选一项）', '<jsp:include>', '<jsp:useBean>', '<jsp:setProperty>？', '<jsp:forward>', 635, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '<jsp:useBean>声明对象的默认有效范围为（选一项）', 'page', 'session', 'application', 'request', 636, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '<jsp:userBean>动作的()属性指定可以在整个页面中引用特定Bean的唯一值。（选一项）' || chr(10) || '', 'id' || chr(13) || '', 'class' || chr(13) || '', 'type   ' || chr(13) || '', 'scope' || chr(13) || '', 637, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Cookie方法中，那个能得到Cookie的存在的时间（选一项）', 'getName()', 'getValue()', 'getMaxAge()', 'setMaxAge()', 638, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'EL表达式，${10 mod 3}，执行结果为（选一项）', '10 mod 3', '1', '3', 'null', 639, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Form表单提交的信息中含有“name= svse”，阅读下面的JSP，a.jsp将输出（选一项）' || chr(10) || '接受该请求的JSP：' || chr(10) || '<%' || chr(10) || '' || chr(9) || 'response.sendRedirect(“a.jsp");' || chr(9) || '' || chr(10) || '%>' || chr(10) || 'a.jsp:' || chr(10) || '<%=request.getParameter(“name") %>', 'null', '什么都不输出', '异常信息', 'svse', 640, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'HttpServletRequest接口的(  )方法用于创建会话。（选一项）', 'getContext()', 'getSession()', 'setSession()', 'putSession()', 641, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Http是什么(  )协议。（选一项）' || chr(10) || '', '局域网' || chr(13) || '', '有状态' || chr(13) || '', '无状态' || chr(13) || '', '状态良好' || chr(13) || '', 642, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Http协议的状态码（）表示文件没有创建（选一项）', '200', '400', '500', '404', 643, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'J2EE 中，（）类的（）方法用于创建对话（选一项）', 'HttpServletRequest、getSession', 'HttpServletResponse、newSession', 'HtttpSession、newInstance', 'HttpSession、getSession', 644, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'J2EE中，HttpServletRequest类的( )方法用返回与当前请求相关联的会话，如果没有，则返回null（选一项）', 'getSession()', 'getSession(true)', 'getSession(false)', 'getSession(null)', 645, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'J2EE中，Servlet API 为使用Cookie,提供了（）类。（选一项）', 'javax.servlet.http.Cookie', 'javax.servlet.http.HttpCookie', 'javax.servlet. Cookie', 'javax.servlet.http. HttpCookie', 646, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'JSP EL表达式的语法为（选一项）', '!JSP expression', '${JSP expression}', '#{ JSP expression}', '@{ JSP expression{', 647, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'JSP缺省的脚本语言为（选一项）', 'HTML', 'JSP', 'ASPX', 'JAVA', 648, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', 'JSP中的三种脚本元素是（选三项）', '声明', 'Scriptlet', '表达式', '注释', 649, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Login.jsp为登录页面，表单代码如下：' || chr(10) || '<form action="index.jsp" method="post">' || chr(10) || '      <input type="text" name="name"/>' || chr(10) || '      <input type="submit" value="login"/>' || chr(10) || '</form>' || chr(10) || 'Index.jsp中直接显示用户名，以下哪种代码正确（选一项）', '${requestScope.name}', '<%=name%>', '${param.name}', '<%=param.name%>', 650, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Medel II 体系结构的(  )对象将客户端呈现在应用程序界面。（选一项）', '模型', '控制器', '视图', 'Servlet', 651, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'pageContext对象提供对(  )和request对象的访问权限。（选一项）', 'session', 'param', 'header', 'cookie', 652, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'page指令中的contentType 属性的缺省值（选一项）', 'text/xml', 'text/html', 'text/plain', 'image/gif', 653, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'page指令中的import属性可以在页面中出现(  )次。（选一项）', '1', '2', '多', '以上都不对', 654, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Servlet 可以在以下（）三个不同的作用域存储数据（选一项）', '请求、会话和上下文', '响应、会话和上下文', '请求、响应和会话', '请求、响应和上下文', 655, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ServletContext接口的(  )方法用于将对象保存到Servlet上下文中。（选一项）' || chr(10) || '', 'getServletContext()' || chr(13) || '', 'getContext()' || chr(13) || '', 'getAttribute()' || chr(13) || '', 'setAttribute()' || chr(13) || '', 656, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Servlet程序的入口点是（选一项）', 'init（）', 'main（）', 'service（）', 'doGet（）', 657, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Servlet的初始化参数只能在Servlet的(  )方法中获取。（选一项）', 'doPost()？？', 'doGet()', 'init()？？', 'destroy()', 658, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Servlet使用(  )接口的forword和include方法进行通讯。（选一项）', 'ServletContext', 'ServletConfig', 'RequestDispatcher', 'HttpSession', 659, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Servlet中，HttpServletResponse的（）方法用来把一个Http请求重定向到另外的URL（选一项）', 'sendURL()', 'redirectURL()', 'sendRedirect()', 'redirectResponse()', 660, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'session对象的(  )方法用于设置会话的超时时间。（选一项）' || chr(10) || '', 'session.setMaxInactiveInterval(30);' || chr(13) || '', 'session.setMaxTime(30) ;' || chr(13) || '', 'session.getMaxInactiveInterval() ;' || chr(13) || '', 'session.setAttribute(“time”,30) ;' || chr(13) || '', 661, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'sesson对象的(  )方法用于判断是否为开始新会话。（选一项）', 'begin()？', 'isNewSessionID()', 'invalidate()', 'isNew()', 662, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'test.jsp文件中有如下一行代码：' || chr(10) || '<jsp:useBean id="user" scope="__" type="com.UserBean">' || chr(10) || '要使user对象可以作用于整个应用程序，下划线中应添入（选一项）', 'page', 'request', 'session', 'application', 663, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Web应用程序结构中，web.xml文件必须入在以下那个目录下（选一项）', 'class', 'WebRoot', '项目下', 'WEB-INF', 664, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '编写一个Filter，需要（选一项）', '继承Filter 类', '实现Filter 接口', '继承HttpFilter 类', '实现HttpFilter接口', 665, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '编写自定义标签处理类后，需要编写一个（）去描述（选一项）', ' .tag文件', '.tld文件', 'dtd文件', '.xml文件', 666, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '不同的客户端需要共享的信息应存储到(  )中。（选一项）' || chr(10) || '', 'Servlet上下文' || chr(13) || '', '会话对象' || chr(13) || '', 'Http请求对象' || chr(13) || '', 'Http响应对象' || chr(13) || '', 667, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'CLR为.NET提供下方面的功能或者服务,除了（选一项）', '垃圾回收', '代码验证和类型安全', '代码访问安全', '自动消除程序中的语法错误', 668, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'System.String类的（    ）方法不能删除字符串中的空格。（选一项）', 'Replace()', 'Trim()', 'Remove()', 'EndsWith()', 669, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于IComparable接口，下面说法错误的是（选一项）', '实现了该接口的对象，意味着能进行比较', '一个类可以实现多个IComparable接口', 'IComparable接口包含一个没有实现的方法CompareTo()', '实现了该接口的类，在集合中该类的对象就可以进行排序了', 670, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于List<T>和Dictionary<K,V>说法正确的是（选一项）', 'List<T>和Dictionary<K,V>都能循环遍历所有元素对象', '获取元素时，List<T>需要进行类型转换，Dictionary<K,V>则不需要', 'List<T>通过索引访问元素，Dictionary<K,V>通过Key访问集合元素', '在List<T>和Dictionary<K,V>中，都可以存储不同类型的元素', 671, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于抽象类下面说法错误的是（选一项）', '抽象类可以包含非抽象方法', '含有抽象方法的类一定是抽象类', '抽象类不能被实例化', '抽象类可以是密封类', 672, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于接口的使用，说法错误的是（选一项）', '接口可以作为参数进行传递', '接口可以作为方法的返回值', '接口可以实例化', '同时实现多个接口是变相实现了多重继承', 673, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于序列化说法错误的是（选一项）', '序列化是将对象格式化为一种存储介质的过程', '序列化后的存储介质只能是二进制文件', '标识一个类可被序列化要使用[Serializable]关键字', '一个类可以序列化，它的子类和包含的其他类也必须可被序列化', 674, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '声明一个委托public delegate int myCallBack(int x);则用该委托产生的回调的原形应该是（选一项）', 'void myCallBack(int x)', 'int receive(int x)', 'string receive(int x)', '不确定的', 675, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列泛型集合声明正确的是（选一项）', 'List<int> f = new List<int>()', 'List<int> f = new List()', 'List f = new List()', 'List<int> f = new List<int>', 676, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列关于C#索引器理解正确的是（选一项）', '索引器的参数必须是两个或两个以上', '索引器的参数类型必须是整数型', '索引器没有名字', '以上皆是', 677, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '已知C#某接口中有一个Show( )方法，下面对该方法原型的定义正确的是（选一项）', 'public void Show( )', 'public virtual void Show( )', 'void Show( )', 'virtual void Show( )', 678, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '已知WinForm窗体中有一个Timer控件，Interval属性设置为4分钟，当控件计时1分钟后，调用了控件的Stop方法，再过1分钟后，重新调用控件的strat方法， 则自该次调用Strar方法后，第一次触发控件的Tick 事件的时间间隔是（   ）分钟。（选一项）', '1', '2', '3', '4', 679, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下的C#程序：' || chr(10) || 'public class A{}' || chr(10) || 'public class B:A{}' || chr(10) || 'public class Test' || chr(10) || '{' || chr(10) || '      public static void Main()' || chr(10) || '      {' || chr(10) || '           A  myA = new A ();' || chr(10) || '           B myB = new B ();' || chr(10) || '           A myC = myB;' || chr(10) || '           Console.WriteLine(myC.GetType());' || chr(10) || '      }' || chr(10) || '}运行时将输出（选一项）', 'A', 'B', 'object', '将报告错误信息，提示无效的类型转换', 680, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下的C#程序：' || chr(10) || 'public static void Main()' || chr(10) || '{' || chr(10) || '    int[] A = new int[5]{1,2,3,4,5};' || chr(10) || '    Object[] B = new Object[5] {6,7,8,9,10};' || chr(10) || '    Array.Copy(A,B,2);' || chr(10) || '}' || chr(10) || '运行后数组A中的数值为（选一项）', '1、2、3、4、5', '1、2、8、9、10', '1、2、3、9、10', '6、7、8、9、10', 681, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下的C#程序：' || chr(10) || 'using System;' || chr(10) || 'using System．Cillections;' || chr(10) || 'public class SamplesHashtable' || chr(10) || '{' || chr(10) || '      public static void Main()' || chr(10) || '      {' || chr(10) || '         Hashtable myHT = new Hashtable();' || chr(10) || '         myHT．Add("A","AA");' || chr(10) || '         myHT．Add("B","BB");' || chr(10) || '         myHT．Add("C","CC");' || chr(10) || '         Console．WriteLine(myHT．Count);' || chr(10) || '         myHT．Remove("BB");' || chr(10) || '         Console．WriteLine(myHT．Count);' || chr(10) || '      }' || chr(10) || '}运行输出为（选一项）', '3' || chr(13) || '' || chr(10) || '3', '3' || chr(13) || '' || chr(10) || '2', '2' || chr(13) || '' || chr(10) || '2', '运行时错误，提示无效的键值', 682, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下的C#代码段：' || chr(10) || 'public struct Person {' || chr(10) || '    string Name；' || chr(10) || '    int Age；' || chr(10) || '}' || chr(10) || 'public static void Main() {' || chr(10) || '    Hasbtable A；' || chr(10) || '    Person B；' || chr(10) || '}' || chr(10) || '以下说法正确的是（选一项）', 'A为引用类型的变量，B为值类型的变量', 'A为值类型的变量，B为引用类型的变量', 'A和B都是值类型的变量', 'A和 B都是引用类型的变量', 683, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下定义雇员类的代码：' || chr(10) || 'class Employee' || chr(10) || '{' || chr(10) || '     private string id;' || chr(10) || '     public string Id' || chr(10) || '     {' || chr(10) || '          _________//请填写正确的代码行' || chr(10) || '          {    return id;    }' || chr(10) || '          set' || chr(10) || '          {' || chr(10) || '              if(id．Length>2)' || chr(10) || '                  id = value;' || chr(10) || '          }' || chr(10) || '     }' || chr(10) || '}应填写的正确的代码为（选一项）', 'let', 'set', 'get', 'put', 684, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '以下关于C#中方法重载的说法正确的是（选两项）', '如两个方法名字不同，而参数的数量不同，那么它们可以构成方法重载', '如两个方法名字相同，而返回值的数据类型不同，那么它们可以构成方法重载', '如两个方法名字相同，而参数的数据类型不同，那么它们可以构成方法重载', '如两个方法名字相同，而参数的数量不同，那么它们可以构成方法重载', 685, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '阅读以下的C#代码：' || chr(10) || 'class A {' || chr(10) || '    public A( ) {' || chr(10) || '        Console.WriteLine("A");' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'class B:A {' || chr(10) || '    public B() {' || chr(10) || '        Console.WriteLine("B");' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'class Program {' || chr(10) || '    public static void Main() {' || chr(10) || '        B b = new B();' || chr(10) || '        Console.ReadLine();' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '上述代码运行后，将在控制台窗口输出（选一项）', 'A', 'B', 'A  B', 'B  A', 686, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在.NET 中,下列关于即时编译(JIT)的描述,正确的是（选一项）', '即时编译是解释式', '即时编译是将源程序编译成本机代码的过程', '在.NET框架中,各种语言的源程序先经过依次编译形成中间语言,再由中间语言编译成本机代码,我们把由中间语言编译成本机代码的过程称为即时编译的过程', '在.NET 框架中以运行库为目标的代码为托管代码,不以运行库为目标的代码为非托管代码,不管是托管代码还是非托管代码,要编译成本机代码都必须经过即时编译器的过程', 687, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在．NET框架类库中，所有与多线程机制应用相关的类都放在(  )命名空间中。（选一项）', 'System.SysThread', 'System.Thread', 'System.Threading', 'NetException', 688, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在软件测试和软件质量保证中，你最近使用了一个自动化的测试工具来测试你的  程序模块，该工具只能用于监视和检查代码的缺陷，而不能修改或者优化程序任何不合理的地方，这样的测试工具属于（）类型的。（选一项）', '自动集成', '非自动化', '非侵入化', '非破坏化', 689, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在软件测试技术中,在下列关于桩模块与驱动模块的说法正确是（选一项）', '驱动模块在单元测试中输出数据', '驱动模块在单元测试中接受数据,并把数据传送给被测模块', '桩模块在单元测试中接受数据', '桩模块调用被测模块,并把数据传送给被测模块', 690, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在下面所列举的逻辑覆盖中，测试覆盖最弱的是（选一项）', '条件覆盖', '条件组合覆盖', '语句覆盖', '条件及判定覆盖', 691, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '质量管理的三个核心过程是（选一项）', '质量分析，质量检验和质量预测', '质量计划，质量保证和质量控制。', '质量评估，质量检验和质量控制', '质量计划，质量分析和质量控制', 692, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '质量为（）中确定是现代质量管理中的一项基本原则。（选一项）', '检验', '计划', '开发', '运行', 693, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '（  ）对象表示浏览器窗口，并可用于检索关于该窗口状态的信息（选一项）', 'document', 'window', 'frames', 'navigator', 694, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '___对象表示给定浏览器窗口中的html文档，用于检索关于文档的信息（选一项）', 'document', 'window', 'screen', 'history', 695, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '___事件处理程序可用于在用户单击按钮时执行函数。（选一项）', 'onSubmit', 'onClick', 'onChange', 'onExit', 696, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '___语句用于为调用函数的语句返回一个值。（选一项）', 'return', 'send', 'invoke', 'return false', 697, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '__JavaScript方法将参数四舍五入到最接近的整数。（选一项）', 'round()', 'ceil()', 'sin()', 'min()', 698, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '__类型的数据在进行决策或比较数据时很有用。（选一项）', '字符串', '空型', '布尔型', '整数', 699, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '__属性用于将外部JavaScript文件链接到HTML文档。（选一项）', 'prompt', 'script', 'src', 'language', 700, 206);
commit;
prompt 700 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<input name="v1" type="text" value="5+3*4">' || chr(10) || '<input name="v2" type="text" value="3+4*5">' || chr(10) || 'v1.value+v2.value的值为（选一项）', '17+23', '40', '5+3*43+4*5', '5+3*4+3+4*5', 701, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Date对象将日期存储为自1970年1月1日00:00:00起所经过的___数。（选一项）', '天', '毫秒', '秒', '分钟', 702, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'eval(5+3*4)+eval(3+4*5)的值为（选一项）', '17＋23', '40', '5+3*43+4*5', '5+3*4＋3+4*5', 703, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'isNaN("abc")的返回值为（选一项）', 'underfined', 'null', 'true', 'false', 704, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'JavaScript语言的特点，下面描述哪些不正确（选一项）', '客户端脚本语言', '由客户端解释执行', '编译后可由IE来执行', '基于对象的语言', 705, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'JavaScript中__方法可将数组元素组合成一个字符串。（选一项）', 'join', 'sort', 'reverse', 'push', 706, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于<jsp:include>,下列说法不正确的是（选一项）', '它可以包含静态文件', '它可以包含动态文件', '当它的flush属性为true时,表示缓冲区满时,将会被清空', '它的flush属性的默认值为true', 707, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于session的使用,,下列说话正确的是（选一项）', '不同的用户窗口具有不同的session', '不同的用户窗口具有相同的session', 'session可能超过时间', 'Session永远不可能超时', 708, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '核心标签库中，用来实现循环功能的标签是（选一项）', '<c:if>', '<c:for>', '<c:while>', '<c:foreach>', 709, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '考虑下面JSP文件代码片断：' || chr(10) || '<HTML><BODY>' || chr(10) || '<jsp:include page=”test2.jsp”>' || chr(10) || '<jsp:param name=”username” value=”accp”/>' || chr(10) || '</jsp:include>' || chr(10) || '</BODY></HTML>' || chr(10) || '以下（ ）代码片断放置在test2.jsp中不会导致错误（选两项）', '<jsp:getParam name=”username”/>', '<jsp:include param =”username”/>', '<%=request.getParameter(“username”)%>', '<%=request.getAttribute(“username”)%>', 710, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '某JSP中有如下代码，显示结果为（选一项）' || chr(10) || '<%' || chr(10) || '' || chr(9) || 'int a = 5;' || chr(10) || '' || chr(9) || 'request.setAttribute(“a”,”123”);' || chr(10) || '' || chr(9) || 'session.setAttribute(“a”,”456”);' || chr(10) || '%>' || chr(10) || '<c:out value="${a}"/>', '5', '123', '456', 'null', 711, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '某JSP中有如下代码：' || chr(10) || '<%' || chr(10) || 'page .setAttribute(“a”,”page”);' || chr(10) || 'request.setAttribute(“a”,”request”);' || chr(10) || 'session.setAttribute(“a”,”session”);' || chr(10) || 'application.setAttribute(“a”,”application”);' || chr(10) || '%>' || chr(10) || '有：${a}' || chr(10) || '则显示结果为（选一项）', 'page', 'request', 'session', 'application', 712, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '那种方式可以启动Tomcat（选一项）', 'javac.exe', 'shutdown.bat', 'java.exe', 'startup.bat', 713, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '如果某一JSP页面的表单中，有几个复选框，name为"habit"，则该JSP提交后，通过下面(  )语句去获取用户选中复选框的值。（选一项）', 'request.getAttrubute("habit");', 'request.getParameter("habit");', 'request.getParameterValues("habit");', 'request.getHabit();', 714, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '如下代码，执行效果为（选一项）' || chr(10) || '<c:set var=“a” value=“123” />' || chr(10) || '<c:out value=“${a}”/>' || chr(10) || '<c:out value=“a”/>', '123  123', 'a    123', '123  a', 'A    a', 715, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列(  )不属于会话跟踪技术的内容。（选一项）', 'URL重写', 'Cookie', '隐藏表单域', '使用会话管理', 716, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列关于import属性说法错误的是（选一项）', 'import 属性能导入一个特定的类', 'import属性能导入某一个包中的所有类', 'import属性能通过单一属性导入多个包和类', 'import属性不能通过单一属性导入多个包或类', 717, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列那个类是抽象类（选一项）', 'ServletConfig', 'HttpServlet', 'Cookie', 'HttpServletRequest', 718, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '下列那些可以进行会话管理（选两项）', 'Session', 'Request', 'Cookie', 'Response', 719, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面不是JAVA开发平台的是（选一项）', 'J2SE', 'JAVA EE', 'J2ME', 'Eclipse', 720, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面不属于Cookie头部的内容是（选一项）', 'Name', 'Value', 'Domain', 'Expires', 721, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面关于JSP作用域对象的说法错误的是（选一项）', 'request对象可以得到请求中的参数', 'session对象可以保存用户信息', 'application对象可以被多个应用共享', '作用域范围从小到达是request、session、application', 722, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪些对象可以在同一应用程序的不同网页间共享数据（选一项）', 'page', 'response', 'request', 'session', 723, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面那个不在Servlet生命周期中（选一项）', 'init()', 'doOptions()', 'service()', 'destroy()', 724, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '现在session中没有任何属性，阅读下面2个JSP中的代码，将分别输出（选一项）' || chr(10) || '<% out.println(session.getAttribute("svse ")); %>' || chr(10) || '<% session.invalidate();' || chr(10) || '  out.println(session.getAttribute("svse "));' || chr(10) || '%>', 'null, 异常信息', 'null, null', '异常信息，异常信息', '异常信息，null', 725, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '页面在ModelI体系结构中负责处理请求。（选一项）', 'XML', 'DHTML', 'JSP', 'HTML', 726, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下（）可用于检索session属性userid的值（选一项）', 'session.getAttribute ("userid");', 'session.setAttribute ("userid");', 'request.getParameter ("userid");', 'request.getAttribute ("userid");', 727, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下代码能否编译通过，假如能编译通过，运行时得到什么输出结果（选一项）' || chr(10) || '<%' || chr(10) || 'request.setAttribute("count",new Integer(0));' || chr(10) || 'Integer count = request.getAttribute("count") ;' || chr(10) || '%>' || chr(10) || '<%=count %>', '编译不通过', '可以编译运行，输出0', '编译通过，但运行时抛出ClassCastException', '可以编译通过，但运行无输出', 728, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下代码执行效果为（选一项）' || chr(10) || '<c:forEach var  = "i" begin = "1" end = "5" step = "2">' || chr(10) || '' || chr(9) || '<c:out value=“${i}”/>' || chr(10) || '</c:forEach>', '1 2 3 4 5', '1 3 5', 'i i i', '15', 729, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下代码执行效果为（选一项）' || chr(10) || '<% session.setAttribute("a","svse"); %>' || chr(10) || '<c:if test="${2>1}">' || chr(10) || '<c:out value="${a}"/>' || chr(10) || '</c:if>', 'a', 'svse', '2>1', 'null', 730, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下哪个标签实现了switch功能（选一项）', '<c:if>', '<c:switch>', '<c:choose>', '<c:case>', 731, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下哪个参数不属于<c:forEach>标签（选一项）', 'var', 'begin', 'end', 'delims', 732, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下哪个方法不是TagSupport类的方法（选一项）', 'doPost()', 'doStartTag()', 'doEndTag()', 'doAfterBody()', 733, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下哪句代码可以正确导入核心标签库（选一项）', '<% page import = "c"%>', '<% page prefix = "c" uri = "/WEB-INF/c.tld"%>', '<% taglib prefix = "c" import = "/WEB-INF/c.tld" %>', '<% taglib prefix = "c" uri = "/WEB-INF/c.tld"%>', 734, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下哪些是Web服务器（选一项）', 'JCreator', 'Tomcat', 'JBuilder', 'Eclipse', 735, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '以下哪些是属于Java的开发平台（选三项）', 'J2SE', 'J2EE', 'J2ME', 'JDK', 736, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在 J2EE中，使用 Resultset对象的 next()方法移动光标时，如果超过界限，会抛出异常，该异常通常是（选一项）', 'InterruptedExceptlon', 'AlreadyBoundExceptlon', 'SQLException', 'NetExcePtlon', 737, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '在 J2EE中，使用 Servlet 过滤器，需要在 web.xml中配置（）元素（选两项）', '<filter>', '<filter-mapping>', '<servlet-filter>', '<filter-config>', 738, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在a.jsp中有代码片断如下：在b.jsp中加入下列（A）代码，可以输出在a.jsp页面上输入的loginName的值。（选一项） ' || chr(10) || '<form action =”b.jsp” method =”POST” name=”form1”> ' || chr(10) || 'loginName:<input type=”text” name=”loginName”/> ' || chr(10) || '<input type=”submit” name=”submit”/> ' || chr(10) || '</form>', '<%=request.getParameter(“loginName”)%>', '<%=request.gerAttribute(“loginName”)%>', '<%String name=request.getParameter(“loginname”); out.println(name); %>', '<% String name=request.getAttribute(“loginname”); out.println(name); %>', 739, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在http协议里，用于发送大量数据的方法是（选一项）', 'post', 'get', 'put', 'options', 740, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在J2EE中，标签库中文件（*.tld）存放在（）目录下（选一项）', 'WEB—INF', 'WEB—INF/tags', 'WEB—INF/classes', 'WEB—INF/lib', 741, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在J2EE中，给定某Servlet的代码如下，编译运行该文件，以下陈述正确的是（选一项）' || chr(10) || 'public class Servlet1 extends HttpServlet{' || chr(10) || '    public void init() throws ServletException{}' || chr(10) || '    public void service(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{' || chr(10) || '        PrintWriter out = response.getWriter();' || chr(10) || '        out.println("hello!");' || chr(10) || '    }' || chr(10) || '}', '编译该文件时会提示缺少doGet()或者dopost()方法，编译不能够成功通过', '编译后，把Servlet1.class放在正确位置，运行该Servlet，在浏览器中会看到输出文字：hello!', '编译后，把Servlet1.class放在正确位置，运行该Servlet，在浏览器中看不到任何输出的文字', '编译后，把Servlet1.class放在正确位置，运行该Servlet,在浏览器中会看到运行期错误信息', 742, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在J2EE中，假如HttpSession的getLastAccessTime（）方法返回值为x，getCreationTime（）方法返回值为y，则为x - y为（选一项）', '两个连续请求之间间隔的最长时间', '最近的两个连续请求之间的时间间隔', '最后使用session发送请求的时间和session创建时间的间隔', '最后使用session发送请求的时间', 743, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在J2EE中，以下对RequestDispatcher描述正确的是（选一项）', 'Jsp中有个隐含的对象diapatcher,它的类型是RequestDispatcher', 'ServletConfig有一个方法：getRequestDispatcher可以返回RequestDipatcher对象', 'RequestDipatcher 有一个方法：forward可以把请求继续传递给别的Servlet或者JSP界面', 'JSP中有个隐含的默认对象request，它的类型是RequestDipatcher', 744, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在J2EE中，在web.xml中，有如下代码:' || chr(10) || '<session - config>' || chr(10) || '' || chr(9) || '<session - timeout>30</session - timeout>' || chr(10) || '</session - config>' || chr(10) || '上述代码定义了默认的会话超时时长，时长为30（选一项）', '毫秒', '秒', '分钟', '小时', 745, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在J2EE中，重定向到另一个页面，以下（）语句是正确的（选一项）', 'request.sendRedirect("http://www.svse.org");', 'request.sendRedirect();', 'response.sendRedirect("http://www.svse.org");', 'response.sendRedirect();', 746, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在J2EE中在servletl中的doGet和doPost方法中只有如下代码：' || chr(10) || 'request.setAttribute("jb","aPtech");' || chr(10) || 'response.sendRedirect("http://localhost：8080/servlet/Servlet2");' || chr(10) || '那么在Servlet2 中使用（）可以把属性jb的值取出来（选一项）', 'String str = request.getAttribute("jb");', 'String sir =(String)request.getAttribute("jb");', 'Object str = request.getAttribute("jb");', '取不出来', 747, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在JSP页面中，保存数据的范围由小到大依次是（选一项）', 'pageContext,request,application,session', 'pageContext,application,session,request', 'pageContext,request,session,application', 'pageContext,session,request,application', 748, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JSP页面中，能够完成输出操作的内置对象是（选一项）', 'out', 'response', 'request', 'config', 749, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '在JSP页面中，如果从一个源页面中通过<jsp:forward page=urlname/>将本页面请求转发至指定URL组件，则在该URL组件（JSP页面）中可处理的共享数据范围是（选三项）', 'session', 'request', 'page', 'application', 750, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在JSP页面中，正确引入JavaBean的是（选一项）', '<%jsp:useBean id="myBean" scope="page" class="pkg.MyBean" %>', '<jsp:useBean name="myBean" scope="page" class="pkg.MyBean" >', '<jsp:useBean id="myBean" scope="page" class="pkg.MyBean" />', '<jsp:useBean name="myBean" scope="page" class="pkg.MyBean" />', 751, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JSP中，<%＝"1+4" %>将输出（选一项）', 'l+4', '5', '14', '不会输出，因为表达式是错误的', 752, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JSP中，page指令的（）属性用来引入需要的包或类（选一项）', 'extends', 'import', 'languge', 'contentType', 753, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在JSP中，test . jsp文件如下，试图运行时，将发生（选一项）' || chr(10) || '<html>' || chr(10) || '' || chr(9) || '    <% String str = null; %>' || chr(10) || '' || chr(9) || '    str is <%= str%>' || chr(10) || '</html>', '转译期有误', '编译Servlet源码时发生错误', '执行编译后的Servlet时发生错误', '运行后，浏览器上显示：str is null', 754, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JSP中，若要在JSP正确使用标签：<x:getKing/>，在jsp中声明的taglib指令为：<%@taglib uri = "/WEB-INF/myTags.tld" prefix = "_____">，下划线处应该是（选一项）', 'x', 'getKing', 'myTags', 'king', 755, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在JSP中，以下的page指令设置了使用的脚本语言是Java，且导入了java.rmi.*和java．util．*包．正确的是（选一项）', '<%@ page Language="Java",import="java.rmi.*;java.uitl.* "%>', '<%@ page language="Java" import="java.rmi.* ;java.uitl.* "%>', '<%@ page language="Java";import="java.rmi.*;java.uitl.* "%>', '<%@ page language="Java" import="java.rmi.* ,java.uitl.*" %>', 756, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JSP中，以下是有关<jsp:setProperty>和<jsp:getProperty>标记的描述，正确的是（选一项）', '<jsp:setProperty>和<jsp:getProperty>标记都必须在<jsp:useBean>的开始标记和结束标记之间', '这两个标记的name属性的值必须和<jsp:usebean>标记的id 属性的值相对应', '<jsp:setProperty>和<jsp:getProperty> 标记可以用于对bean中定义的所有属性进行选择和设置', '这两个标记的name属性的值可以和<jsp:userbean>标记的id属性的值不同', 757, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JSP中，只有一行代码：${1+2}，运行将输出（选一项）', '1 2', '3', 'null', '没有任何输出，因为表达式是错误的', 758, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在MVC模式中，核心内容为（选一项）', 'view？？', 'control？？？？？', 'model？', '不确证', 759, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Servlet过滤器的生命周期方法中，每当传递请求或响应时，web容器会调用（）方法（选一项）', 'init', 'service', 'doFilter', 'destroy', 760, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Servlet中，下列语句可以正确获取PrintWriter对象的是（选一项）', 'PrintWriter out= request.getWriter();', 'PrintWriter  out  =  request.getPrintWriter();', 'PrintWriter out= response.getWriter();', 'PrintWriter  out  =  response.getPrintWriter();', 761, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在WEB应用程序的目录结构中，在WEB-INF文件夹中的lib目录是放()文件的（选一项）', '.jsp文件', '.class文件', '.jar文件', 'web.xml文件', 762, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在使用过滤器之前调用(  )方法。（选一项）', 'doFilter()', 'destroy()', 'init()', 'getFilterName()', 763, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在一个Filter中，处理filter业务的是（）方法（选一项）', 'dealFilter (ServletRequest request,ServletResponse response,FilterChain chain)', 'dealFilter (ServletRequest request,ServletResponse response)', 'doFilter (ServletRequest request,ServletResponse response, FilterChain chain)', 'doFilter (ServletRequest request,ServletResponse response)', 764, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在自定义标签中，HelloTag继承自TagSupport类，其中有如下代码：' || chr(10) || 'out.println("HELLO");' || chr(10) || '该out对象声明方法为：（选一项）', 'PrintWriter out = response.getOut();', 'JspWriter out = pageContext.getOut();', 'JspWriter out = pageContext.getWriter();', 'PrintWriter out = response.getWriter();', 765, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '重向可以使用(  )方法。（选一项）', 'response.sendRedirect("login.jsp"):', 'request.sendRedirect("login.jsp");', '<jsp :forward page= "login.jsp"/>', '<forward page= "login.jsp"/>', 766, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '( )是对软件的模块或者单元的测试。（选一项）', '系统测试', '单元测试', '集成测试', '验收测试', 767, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '测试的类型包括（）、集成测试、系统测试和验收测试。（选一项）', '边界测试', '关键路径测试', '优先级测试', '单元测试', 768, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '单元测试最常用的方法是（选一项）', '安装/反安装测试', '压力测试', '白盒测试', '用户验收测试', 769, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于静态测试和动态测试，下列说法正确的是（选一项）', '二者都不运行程序', '二者都需要运行程序', '只有静态测试需要运行程序', '只有动态测试需要运行程序', 770, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于软件测试，以下（）说法是错误的。（选一项）', '测试能提高软件的质量，但是提高质量不能依赖测试', '测试只能证明缺陷存在，不能证明缺陷不存在', '开发人员测试自己的程序后，可作为该程序已经通过测试的依据', '80%的缺陷聚集在20%的模块中，经常出错的模块改错后还会经常出现', 771, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于软件测试，以下说法（）是错误的观点。（选一项）', '完全测试程序是不可能的', '软件测试是有风险行为', '测试可以显示潜伏的软件缺陷', '并非所有软件缺陷都能恢复', 772, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于使用自动测试工具，下列说法错误的是（选一项）', '提高测试效率，节省测试成本', '有些测试单靠手工很难完成', '不是所有的测试都可以使用自动测试工具来完成', '适当复杂逻辑的自动设计与证明', 773, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '基本路径测试是一种（）测试方法。（选一项）', '白盒', '黑盒', '压力', '负载', 774, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下C语言代码段：下列测试用例可以实现条件覆盖的是（选一项）' || chr(10) || 'int cal(int x,int y,int z){' || chr(10) || '    int k = 0;' || chr(10) || '    if(x > 3 || y > 4){' || chr(10) || '        k = x  y;' || chr(10) || '    }' || chr(10) || '    if ( z > 2 ){' || chr(10) || '        k  = z;' || chr(10) || '    }' || chr(10) || '    return k;' || chr(10) || '}', '{x = 4、y = 4 、z = 1}' || chr(13) || '' || chr(10) || '{x = 2 、y = 5 、z= 3}', '{x = 4 、y = 4 、z = 3}' || chr(13) || '' || chr(10) || '{x = 2 、y = 3 、z = 3}', '{x = 4 、y = 4 、z = 1}' || chr(13) || '' || chr(10) || '{x = 2 、y = 5 、z = 2}', '{x = 4 、y = 4 、z = 3}' || chr(13) || '' || chr(10) || '{x = 4 、y = 4 、z = 3}', 775, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列关于单元测试的说法中错误的是（选一项）', '桩模块由被测模块调用，在单元测试中接受测试数据，启动被测模块', '单元测试以白盒测试为主', '桩模块用以模拟被测模块工作过程中所调用的模块', '驱动模块用以模拟被模块的上级模块', 776, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '一个测试用例是为了测试软件的某一具体功能或性能面是设计，它通常由以下的不方面组成，除了（选一项）', '测试目的', '输入数据', '实际的输出结果', '预计的输出结果', 777, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在C语言中，有如下函数，为了进行判定-条件覆盖测试，下列满足要求的测试用例是（选一项）' || chr(10) || 'void Check(int x,int y){' || chr(10) || '    if(x>=2||y>2){' || chr(10) || '        print("ok");' || chr(10) || '    }' || chr(10) || '}', '{x=1、y=2}' || chr(13) || '' || chr(10) || '{x=0、y=0}', '{x=1、y=4}' || chr(13) || '' || chr(10) || '{x=3、y=1}', '{x=1、y=1}' || chr(13) || '' || chr(10) || '{x=3、y=4}', '{x=2、y=2}' || chr(13) || '' || chr(10) || '{x=3、y=3}', 778, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '能使网页中出现弹出确认和取消对话框的javascript代码是（选一项）', 'alert("您一共消费了："+100+''元'');', 'prompt("请输入：");', 'pop("error");', 'confirm("继续？");', 779, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '如果要在网页上显示”20060816”,空格处因该填写的JavaScript代码是（选一项）' || chr(10) || 'var year = 2006;' || chr(10) || 'var month = 8;' || chr(10) || 'var date = 16;' || chr(10) || 'document.write( ________ );此处填写代码', 'year+month+date', 'year+0+month+date', 'year+"0"+month+date', 'year+" "+month+" "+date', 780, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '通过修改<input>元素的type属性，命令按钮可作为”提交”按钮和”重置”按钮，单击“提交”按钮时触发的表单事件是（选一项）', 'onBlur', 'onChange', 'onSubmit', 'onMouseDown', 781, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '网页编程中，运行下面的JavaScript代码：' || chr(10) || '<script language="JavaScript">' || chr(10) || 'x=3;' || chr(9) || '' || chr(10) || 'y=2;' || chr(9) || '' || chr(9) || '' || chr(10) || 'z=(x + 2)/y;' || chr(9) || '' || chr(10) || 'alert(z);' || chr(10) || '</script>' || chr(10) || '则提示框中显示（选一项）', '2', '2.5', '32/2', '16', 782, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列JavaScript语句中，（）能实现单击一个按钮时弹出一个消息框。（选一项）', '<BUTTON VALUE ="鼠标响应" onClick=alert("确定")></BUTTON>', '<INPUT TYPE="BUTTON" VALUE ="鼠标响应" onClick=alert("确定")>', '<INPUT TYPE="BUTTON" VALUE ="鼠标响应" onChange=alert("确定")>', '<BUTTON VALUE ="鼠标响应" onChange=alert("确定")></BUTTON>', 783, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列哪个属性可以获得打开当前窗口的window对象（选一项）', 'opener', 'parent', 'self', 'top', 784, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面JavaScript自定义函数正确的是（选一项）', 'int function sum(int a,int b){' || chr(13) || 'return a+b;' || chr(13) || '}', 'function sum(var a,var b){' || chr(13) || 'return a+b;' || chr(13) || '}', 'var function sum(a,b){' || chr(13) || 'return a+b;' || chr(13) || '}', 'function sum(a,b){' || chr(13) || 'return a+b;' || chr(13) || '}', 785, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面对于JavaScript中的单选按钮（Radio）的说法正确的是（选一项）', '点击单选按钮后，checked属性将变为True', '在同一个页面中，在某个时刻，只能有一个Radio按钮被选中', '如果单选按钮被选中则checked属性为True', '如果单选按钮被选中则，value属性为True', 786, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '下面对于JavaScript中的单选按扭（Radio）的说法正确的是（选两项）', '单选按钮可以通过单击“选种”和“未选中”选项来进行切换', '单选按钮没有checked属性', '单选按钮支持onClick事件', '单选按钮组的length属性返回一个选项组中单选项的个数', 787, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面哪些语句不能够弹出提示框，或在页面输出内容（选一项）', 'alert(Hello World)', 'prompt("Hello World","")', 'document.write("Hello World")', 'document.writeln("Hello World")', 788, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '现在有这样一段代码，' || chr(10) || '<script language="javascript">' || chr(10) || 'var a = "18";' || chr(10) || 'var b = 10 ;' || chr(10) || 'document.write((a+b)+"&nbsp;&nbsp;&nbsp;&nbsp;");' || chr(10) || 'document.write(a-b);' || chr(10) || '</script>' || chr(10) || '请选择下面打印输出的结果：（选一项）' || chr(10) || '', '28  0     ' || chr(13) || '', '28  8' || chr(13) || '', '1810   8' || chr(13) || '', '1810    0   ' || chr(13) || '', 789, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '对于XML文档实例<decimals>-2.0 -3.0 8.6</decimals>,最恰当地描述它的结构的XML Schema片段是（选一项）', '<xs:element name="decimals">' || chr(13) || '' || chr(10) || '    <xs:simpleType>' || chr(13) || '' || chr(10) || '      <xs:restriction base="xs:decimal">' || chr(13) || '' || chr(10) || '         <xs:minInclusive value="-3.0"/>' || chr(13) || '' || chr(10) || '         <xs:maxInclusive value="8.6"/> ' || chr(13) || '' || chr(10) || '      </xs:restriction>' || chr(13) || '' || chr(10) || '    </xs:simpleType>' || chr(13) || '' || chr(10) || '    </xs:element>', '<xs:element name="decimals">' || chr(13) || '' || chr(10) || '    <xs:simpleType>' || chr(13) || '' || chr(10) || '      <xs:union itemType="xs:decimal">     ' || chr(13) || '' || chr(10) || '    </xs:simpleType>' || chr(13) || '' || chr(10) || '    </xs:element>', '<xs:element name="decimals">' || chr(13) || '' || chr(10) || '    <xs:simpleType>' || chr(13) || '' || chr(10) || '      <xs:list itemType="xs:decimal">    ' || chr(13) || '' || chr(10) || '    </xs:simpleType>' || chr(13) || '' || chr(10) || '    </xs:element>', '<xs:element name="decimals">' || chr(13) || '' || chr(10) || '    <xs:simpleType>' || chr(13) || '' || chr(10) || '      <xs:all itemType="xs:decimal">         ' || chr(13) || '' || chr(10) || '    </xs:simpleType>' || chr(13) || '' || chr(10) || '    </xs:element>', 790, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '分析以下的DTD文档，下面的XML实例（）能够通过该DTD的校验。（选一项）' || chr(10) || '<!ELEMENT doc(title?,chap*)>' || chr(10) || '<!ELEMENT title (#PCDATA)>' || chr(10) || '<!ELEMENT chap (sect )>' || chr(10) || '<!ELEMENT sect (para )>' || chr(10) || '<!ELEMENT para (#PCDATA)>', '<doc><chap><para>Text</para></chap></doc>', '<doc><chap><sect><para>Text</para></chap></doc>', '<doc><title>Text</title></doc>', '<doc><title>Text</title><sect><para>Text </para></sect></doc>', 791, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '基于 () 的数据传输标准, Web服务可以实现跨平台、跨语言的相互通信和数据共享（选一项）', 'HTML', 'CSS', 'XML', 'XSLT', 792, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '某新闻网站新闻量较大，并且新闻需要被即时发布。该网站可以通过各种浏览器和手持设备访问。网站后台是一个基于xml的应用系统，该系统把数据库中数据读取到xml文档中，并使用DOM进行解析。使用以下（）方法可以提高后台应用系统的性能，从而提高该网站的性能（选一项）', '把xml文档转化成html网页。', '使用SAX解析xml文档。', '不经解析，把xml文档直接发送给浏览器。', '使用样式表对xml文档进行转换。', 793, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '如果一个XML 文档存在以下(  )情况，我们称它为无效的xml文档。（选两项）', '没有遵守 XML 规范定义的语法规则。', '遵守 XML语法，但没有 定义DTD 或Schema。', '定义了DTD 或Schema，但没有遵守DTD 或Schema中定义的规则。', '定义的DTD 或Schema不符合语法规范。', 794, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '若用DOM处理下面一段XML文档，则下面的XML文档中有（）个对象（选一项）' || chr(10) || '<book>' || chr(10) || '    <author>tom</author>' || chr(10) || '    <bookcode>12</bookcode>' || chr(10) || '</book>', '0', '3', '4', '5', 795, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '声明相同的元素至多出现一次应使用哪个符号（选一项）', '+', '*', '？', '|', 796, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '要求用JavaScript实现下面的功能：在一个文本框中内容发生改变后，单击页面的其他部分将弹出一个消息框显示文本框中的内容，下面语句正确的是（选一项）', '<input type="text" onChange="alert(this.value)">', '<input type="text" onClick="alert(this.value)">', '<input type="text" onChange="alert(text.value)">', '<input type="text" onClick="alert(value)">', 797, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下为JavaScript声明变量的语句正确的是（选一项）', 'dim x；', 'int x；', 'var x；', 'x；', 798, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下都属于浏览器对象，除了（选一项）', 'window', 'document', 'location', 'session', 799, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '用户更改表单的select元素中的值时，就会调用__事件处理。（选一项）' || chr(10) || '', 'onClick' || chr(13) || '', 'onFoucs' || chr(13) || '', 'onMouseOver' || chr(13) || '', 'onChange  ' || chr(13) || '', 800, 206);
commit;
prompt 800 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在date对象的方法组中，关于getMonth()方法的使用时 整数__代表一年中的7月。（选一项）', '3', '6', '7', '8', 801, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在HTML页面中，下面关于Window对象的说法不正确的是（选一项）', 'Window对象表示浏览器的窗口，可用于检索有关窗口状态的信息', 'Window对象是浏览器所有内容的主容器', '浏览器打开HTML文档时，通常会创建一个Window对象', '如果文档定义了多个框架，浏览器只为原始文档创建一个Window对象，无须为每个框架创建Window对象', 802, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在HTML页面中，下面有关的Document对象的描述错误的是（选一项）' || chr(10) || '', 'Document对象用于检查和修改HTML元素和文档中的文本' || chr(13) || '', 'Document对象用于检索浏览器窗口中的HTML文挡的信息' || chr(13) || '', 'Document对象提供客户最近访问的URL的列表' || chr(13) || '', 'Document对象的location属性包含有关当前URL的信息' || chr(13) || '', 803, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在HTML页面中使用外部JavaScript文件的正确语法是（选一项）', '<language="JavaScript" src="scriptfile.js">', '<script language="JavaScript" src="scriptfile.js"></script>', '<script language="JavaScript" =scriptfile.js></script>', '< language  src="scriptfile.js">', 804, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在HTML中，Location对象的()属性用于设置或检索URL的端口号。（选一项）', 'hostname', 'host', 'port', 'href', 805, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在HTML中，为了在页面中输出当前页面的URL的地址，下面Javascript语句正确的是（选一项）', 'document.write(document.location);', 'document.write(document.title);', 'document.write(document.body);', 'document.write(document.links);', 806, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在HTML中，以下JavaScript语句弹出的对话框中显示的值是（选一项）' || chr(10) || '<script language="JavaScript">' || chr(10) || 'var a=10;' || chr(10) || 'var b=5;' || chr(10) || 'var c=10/5;' || chr(10) || 'if(c==0 || a>5)' || chr(10) || '    confirm(c+"很好");' || chr(10) || 'else if(c>0 && a<5)' || chr(10) || '    confirm(c+"一般");' || chr(10) || 'else ' || chr(10) || '    confirm(c+"很差");' || chr(10) || '< /script>', '2很好', '0很好', '2一般', '2很差', 807, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JavaScript 中，可以使用Date对象的（）方法返回该对象的日期。（选一项）' || chr(10) || '', 'getDate' || chr(13) || '', 'getYear' || chr(13) || '', 'getMonth' || chr(13) || '', 'gerTime' || chr(13) || '', 808, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在JavaScript中,("12.3" + 1.2)的计算结果是（选一项）', '12.3', '13.5', '13', '12.31.2', 809, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在JavaScript中，__属性可返回字符串中的字符数（选一项）', 'blink', 'PI', 'length', 'max()', 810, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JavaScript中,表单文本框(Text)不支持的事件包括（选一项）' || chr(10) || '', 'onBlur' || chr(13) || '', 'onLostFocused' || chr(13) || '', 'onFocus' || chr(13) || '', 'onChange' || chr(13) || '', 811, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在JavaScript中，电话号码010-88669696验证下列正确的是（选一项）', '//\d{3}-\d{8}', '/\d{3}-\d{8}/', '/^\d{3}-\d{8}$/', '/^0d{3}-d8{}$/', 812, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JavaScript中,命令按纽(Button)支持的事件包括（选一项）', 'onClick' || chr(13) || '', 'onChange' || chr(13) || '', 'onSelect' || chr(13) || '', 'onSubmit' || chr(13) || '', 813, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JavaScript中，下列定义数组的方法正确的是（选一项）', 'emp = new Array[3];', 'emp = new Array(3);', 'emp = new() Array;', 'emp = new Array[];', 814, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在JavaScript中定义变量，哪些不正确（选一项）', 'var count', 'var city = ''wuhan''', 'result = true', 'int i', 815, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JavaScript中排序的函数是（选一项）', 'Sort()', 'Reverse()', 'Join()', 'Age()', 816, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在当前页面的同一目录下有一名为show.js的文件, 下列(  )代码可以正确访问该件。（选一项）', '<script language= "show.js"></script>', '<script type="show.js"></script>', '<script language="JavaScript"  src="show.js"></script>', '<script runat="show.js"></script>', 817, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在页面中使用JavaScript有哪些方法，不正确的是（选一项）', '使用<script> 标签将JavaScript 代码嵌入到网页中', '放置在由<style> 标记的href 属性指定的外部文件中', '放置在HTML标签以on开头的属性即事件处理程序中', '放置在由<script> 标记的src 属性指定的外部文件中', 818, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'DataView对象的（  ）属性实现对数据的筛选（选一项）', 'Table', 'Sort', 'RowFilter', 'Count', 819, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ListView控件的列表项属于哪个类（选一项）', 'ListViewItem', 'ListItem', 'ViewItem', 'Li', 820, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'lvwList是WinForms窗体中的列表视图控件，下面是它的事件代码： ' || chr(10) || 'private void btnChangeText_Click(object sender, System.EventArgs e)' || chr(10) || '{' || chr(10) || '    lvwList.SelectedItems[1].Text = "A";  ' || chr(10) || '}' || chr(10) || '运行该代码时，下列说法正确的是（选一项）', '更改所有选择的列表项的文本为"A"', '更改选择的第一项的文本信息为"A"', '当只选择一项的时候，程序将报告错误信息', '当没有选择任何项的时候，该代码行不会被执行', 821, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '表示层的主要作用是（选一项）', '处理数据', '传递数据', '操作数据库', '提供输入和显示的界面', 822, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '程序需要根据条件组合一个SQL查询语句，该语句出现在（选一项）', '模型层', '数据访问层', '业务逻辑层', '表示层', 823, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '抽象工厂模式不涉及到下列的哪种类（选一项）', '统一接口类', '具体工厂类', '抽象产品类', '具体产品类', 824, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '抽象工厂模式的意图是（选一项）', '提供一个创建一系列相关对象的接口，而不需要指定具体类', '将一个类的接口转换成客户希望的另外一个接口', '将抽象部分与它的实现部分分离，使它们都可以独立地变化', '为子系统中的一组接口提供一个一致的界面', 825, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '关于三层架构层与层之间的引用关系，下列说法错误的是（选两项）', '界面层需要引用数据访问层', '界面层需要引用逻辑层', '逻辑层需要引用数据访问层', '逻辑层需要引用界面层', 826, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '列表视图ListView控件中的（）属性表示列表项集合（选一项）', 'Item', 'Items', 'SubItem', 'SubItems', 827, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '如果设TreeView treeView1 = new TreeView(),则treeView1．Nodes．Add("根节点")返回的是一个（   ）类型的值。（选一项）', 'TreeNode', 'int', 'string', 'TreeView', 828, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列哪个不是列表视图ListView的View属性的可选值（选一项）', 'LargeIcon', 'Caption', 'Details', 'List', 829, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ADO.NET 中,执行数据库的某个存储过程,则至少需要创建(   )并设置它们的属性,调用合适的方法（选一项）', '一个Connection 对象和一个Command 对象', '一个Connection 对象和DataSet 对象', '一个Command 对象和一个DataSet 对象', '一个Command 对象和一个DataAdapter 对象', 830, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ADO．NET中，为了执行一个存储过程，需要把Command对象的CommandType属性设置为（选一项）', 'CommandType.StoredProcedure', 'CommandType.TableDirect', 'CommandType.Text', 'CommandType.Sql', 831, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ADO.NET中，下列可以作为DataGridView控件的数据源的是（选一项）' || chr(10) || '1.DataSet' || chr(10) || '2.DataTable' || chr(10) || '3.DataView', '1和2', '1和3', '2和3', '1、2、3都可以', 832, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Winforms程序中，为了从配置文件读取连接字符串，下列哪个操作是错误的（选一项）' || chr(10) || '1、添加配置文件App.config' || chr(10) || '2、添加引用System.configuration' || chr(10) || '3、添加using System.Configuration;' || chr(10) || '4、使用Configuration类来读取连接字符串', '1', '2', '3', '4', 833, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '展开树视图控件时会触发的事件是（选两项）', 'AfterCollapse', 'AfterExpand', 'BeforeCollapse', 'BeforeExpand', 834, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(  )语法用于编写Schema。（选一项）' || chr(10) || '', 'HTML' || chr(13) || '', 'XML' || chr(13) || '', 'SGML' || chr(13) || '', 'DTD' || chr(13) || '', 835, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '“<”用DTD的内部实体( )表示（选一项）', '&gt;', '&lt;', '&amp;', '&apos;', 836, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '<?xml version="1.0"?>            ' || chr(10) || '<!DOCTYPE mydoc[' || chr(10) || '<!ENTITY location "jianwai street">]>' || chr(10) || '<customer>' || chr(10) || '<name>jack</name>' || chr(10) || '<address>&location;</address>' || chr(10) || '</customer>' || chr(10) || '关于上述Xml文档，以下描述正确的是（选两项）', '该Xml文档中使用了外部DTD。', '通过浏览器打开上述Xml文档时，字符串jianwai street代替了& location;', '该Xml文档不是有效的XML文档。', '该Xml文档中的location为参数实体。', 837, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<?xml version="1.0"?>' || chr(10) || '<!--例子 -->' || chr(10) || '<greeting>' || chr(10) || '  Hello, World!' || chr(10) || '</greeting>' || chr(10) || '上面的XML文档属于（）文档（选一项）', '无效的', '有效的', '格式良好的', '格式错误的', 838, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<customer_summary' || chr(10) || '  xmlns:addr="http://www.xyz.com/addresses/"' || chr(10) || '  xmlns:books="http://www.zyx.com/books/"' || chr(10) || '>' || chr(10) || '<addr:name><title>Mrs.</title></addr:name>  ' || chr(10) || '<books:title>Lord of the Rings</books:title>    ' || chr(10) || '上述是一段关于XML命名空间的实例片段，以下说法错误的是（选一项）', '本例中，命名空间的前缀分别是 addr、books', '第一个 <title> 元素属于 addr 名称空间，因为其父元素 <addr:Name> 属于该名称空间。', '名称空间中定义的字符串必须是可以访问的URL，比如：XML 解析器会到 http://www.zyx.com/books/ 去搜索 DTD 或schema', '名称空间的缩写需要在定义之后才能使用', 839, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '<roster>' || chr(10) || '   <student ID="s101">' || chr(10) || '       <name>李华</name>' || chr(10) || '       <sex>男</sex>' || chr(10) || '       <birthday>1978.9.12</birthday>' || chr(10) || '       <score>92</score>' || chr(10) || '    </student>' || chr(10) || '    <student ID="s102">' || chr(10) || '        < name>齐辉</name>' || chr(10) || '        <sex>女</sex>' || chr(10) || '        <birthday>1979.3.2</birthday>' || chr(10) || '        <score>90</score>' || chr(10) || '    </student>' || chr(10) || '</roster>' || chr(10) || '针对上述XML代码,输出ID为s102的学生的姓名的XSL片段正确的是（选一项）', '<xsl:template match="/roster">' || chr(13) || '' || chr(10) || '' || chr(9) || '<xsl:value-of select=".[@ID=''s102'']/name"/>' || chr(13) || '' || chr(10) || '</xsl:template>', '<xsl:template match="/roster">' || chr(13) || '' || chr(10) || '' || chr(9) || '<xsl:value-of select="student[@ID=''s102'']/name"/>' || chr(13) || '' || chr(10) || '</xsl:template>', '<xsl:template match="/roster">' || chr(13) || '' || chr(10) || '' || chr(9) || '<xsl:value-of select="[student@ID=''s102'']/name"/>' || chr(13) || '' || chr(10) || '</xsl:template>', '<xsl:template match="/">' || chr(13) || '' || chr(10) || '' || chr(9) || '<xsl:value-of select="student[@ID=''s102'']/name"/>' || chr(13) || '' || chr(10) || '</xsl:template>', 840, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '<stuList>' || chr(10) || '  <student id="a001">' || chr(10) || '<name>jack<name>' || chr(10) || '<age>22</age>' || chr(10) || '  </student>' || chr(10) || '  <student id="a002">' || chr(10) || '<name>make<name>' || chr(10) || '<age>23</age>' || chr(10) || '  </student>' || chr(10) || '</stuList>' || chr(10) || '查找id=''a002''的xpath表达式是（选一项）', '//name[.=''a002'']', '//name[@id]/age=''22''', '//name[@id=''a002'']', 'stuList/child::*[2]', 841, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'DOM的全称为（选一项）' || chr(10) || '', 'Document  Object  Mode' || chr(13) || 'l', 'Document  Object  Module' || chr(13) || '', 'Double  Object  Mode' || chr(13) || 'l', 'Double  Object  Module' || chr(13) || '', 842, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'DTD中Required属性的作用是（选一项）' || chr(10) || '', '设置属性是必需的' || chr(13) || '', '设置属性的默认值' || chr(13) || '', '使属性具有固定值' || chr(13) || '', '声明此属性可选' || chr(13) || '', 843, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'XML是哪个机构制定的标准（选一项）', 'IBM', 'Microsoft', '甲骨文', 'W3C', 844, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '定义样式表中的变量,使用的标签是（选一项）', '<xsl:value-of>', '<xsl:count>', '<xsl:sum>', '<xsl:variable>', 845, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'var  a = new Array(1,20,12,30);' || chr(10) || 'alert(a.reverse());' || chr(10) || '弹出的值为（选一项）', '1,20,12,30', '1,12,20,30', '30,20,12,1', '30,12,20,1', 846, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'var a=1.6;' || chr(10) || 'result=parseInt(a)+parseFloat(a);' || chr(10) || '下面描述正确的是（选一项）', 'result的值为3.2', 'result的值为3.6', 'result的值为2.6', '页面出错', 847, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'var d=new Date();获取当前月份的语句是（选一项）', 'd.getDate()', 'd.getMonth()', 'd.getMonth()+1', 'd.getMonth()-1', 848, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'var result1,result2;' || chr(10) || 'result1 = 5 + "8";' || chr(10) || 'result2 = 5/8;' || chr(10) || '下面描述正确的是（选两项）', 'result1的值为13', 'result1的值为58', 'result2的值为1', 'result2的值为0.625', 849, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'var str="hello world";' || chr(10) || 'document.write(str.indexOf("llo"));' || chr(10) || '输出结果为（选一项）', '1', '2', '3', '4', 850, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'var str="hello world";' || chr(10) || 'document.write(str.substr(3,5));' || chr(10) || 'document.write("<br>");' || chr(10) || 'document.write(str.substring(3,5));' || chr(10) || '输出结果为（选一项）', 'lo wo' || chr(13) || 'lo', 'lo' || chr(13) || 'lo wo', 'llo' || chr(13) || 'llo', 'lowo' || chr(13) || 'lo', 851, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '表单元素的onblur事件表示（选一项）', '获取焦点', '失去焦点', '提交表单', '按下鼠标左键', 852, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '创建一个数组，下面哪项不正确（选一项）', 'var a = new Array(3);', 'a = new Array(1, 2, 3, "hello");', 'var a = [true, 3.14159];', 'Array d = new Array(1,2,3);', 853, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '当表单各项填写完毕，鼠标单击提交按钮时可以触发表单元素的（  ）事件（选一项）', 'onEnter', 'onSubmit', 'onMouseDrag', 'onMouseOver', 854, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '分析如下的JavaScript代码段，则运行后在页面上输出（选一项）' || chr(10) || 'var c="10",d=10;' || chr(10) || 'document.write(c + d);', '10', '20', '1010', '页面报错', 855, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '分析如下的JavaScript代码段，运行后以下描述正确的是（选一项）' || chr(10) || 'eval("a=1;b=2;alert(a+b)");', '弹出窗口显示3', '弹出窗口显示undefined', 'a的值为undefined', 'b的值为null', 856, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '分析如下的JavaScript代码片段, b的值为（选一项）' || chr(10) || 'var a = 1.5,b; ' || chr(10) || 'b=parseInt(a);', '2', '0.5', '1', '1.5', 857, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '分析下面的JavaScript代码，输出结果是（选一项）' || chr(10) || 'var a=15.49;' || chr(10) || 'document.write(Math.round(a));', '15', '16', '15.5', '15.4', 858, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '分析下面的JavaScript代码：' || chr(10) || 'x = 11;' || chr(10) || 'y = "number";' || chr(10) || 'm = x +y ;' || chr(10) || 'm的值为（选一项）', '11number', 'number', '11', '程序报错', 859, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '分析下面的Javascript代码：x=11；y="number"；m=x+y；m的值为（选一项）', '11number', 'number', '11', '程序报错', 860, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '分析下面的JavaScript代码段' || chr(10) || 'a = new Array(2,3,4,5,6);' || chr(10) || 'sum = 0;' || chr(10) || 'for(i=1;i<a.length;i++)' || chr(10) || '   sum += a[i];' || chr(10) || 'document.write(sum);' || chr(10) || '输出结果是（选一项）', '20', '18', '14', '12', 861, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '分析下面的JavaScript代码段' || chr(10) || 'Emp = new Array(5);' || chr(10) || 'Emp[1] = 1;' || chr(10) || 'Emp[2] = 2;' || chr(10) || 'document.write(emp.length);' || chr(10) || '输出的结果是（选一项）', '2', '3', '4', '5', 862, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '分析下面的JavaScript代码段' || chr(10) || 'var x = "15";' || chr(10) || 'str = x + 5;' || chr(10) || 'a = parseFloat(str);' || chr(10) || 'document.write(a);' || chr(10) || '执行后的输出结果是（选一项）', '20', '155', 'NaN', '报错', 863, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '分析下面的JavaScript代码段，输出正确的是（选一项）' || chr(10) || 'a = eval("3 + 6 + 7");' || chr(10) || 'document.write(a);', '367', '16', '0', '以上都不是', 864, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '分析下面的JavaScript代码段：' || chr(10) || 'function employee(name,code)' || chr(10) || '{' || chr(10) || '  this.name="wangli";' || chr(10) || '  this.code="A001";' || chr(10) || '}' || chr(10) || 'newemp=new employee("zhangming",''A002'');' || chr(10) || 'document.write("雇员姓名:" + newemp.name + "<br>");' || chr(10) || 'document.write("雇员代号:" + newemp.code + "<br>");' || chr(10) || '输出的结果是（选一项）', '雇员姓名:wangli 雇员代码:A001', '雇员姓名：zhangming 雇员代码：A002', '雇员姓名：null, 雇员代码：null', '代码有错误，无输出结果', 865, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '分析下面的JavaScript代码段：输出结果是（选一项）' || chr(10) || 'var s1=15;' || chr(10) || 'var s2="string";' || chr(10) || 'if(isNaN(s1))' || chr(10) || '    document.writeln(s1);' || chr(10) || 'if(isNaN(s2))' || chr(10) || '    document.writeln(s2);', '15', 'string', '15string', '不打印任何信息', 866, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '分析下面的JavaScript语句：' || chr(10) || 'str = "This apple costs " + 50.5;' || chr(10) || '执行后str的结果是（选一项）', 'This apple costs 50.5', 'This apple costs 5.5', '"This apple costs" 50.5', '"This apple costs "5.5', 867, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '复选框失去焦点时触发的事件处理程序是（选一项）', 'onClick', 'onFocus', 'onSelect', 'onBlur', 868, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '某网页开发员想在MainForm.htm页面上的一个名为SystemTime的文本框中显示系统的当前时间,编写了如下JavaScript函数,为了使显示的时间每隔几分钟刷新一次,请问在空白出1因该补充的代码是（选一项）' || chr(10) || '<script language="javascript">' || chr(10) || 'function displaytime()' || chr(10) || '{' || chr(10) || '    var time = new Date();' || chr(10) || '    var hour = time.getHours();' || chr(10) || '    var minute = time.getMinutes();' || chr(10) || '    document.mainform.systemtime.value=hour+"点"+minute+"分";' || chr(10) || '    ____________________;' || chr(10) || '}' || chr(10) || '</script>', 'setTimeout("displaytime()",60000);', 'setTimeout("displaytime()",6000);', 'setTimeout("displaytime()",60);', 'setTimeout("displaytime()",1);', 869, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '哪种方法不是history对象的方法（选一项）', 'forword()', 'back()', 'go()', 'jump()', 870, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，第1个用户对数据库表Product实行了如下的命令：' || chr(10) || 'SELECT * FROM Product WHERE ProductID=''001'' FOR UPDATE;' || chr(10) || '此时第2个用户也对该表执行了如下命令:' || chr(10) || 'SELECT * FROM Product WHERE ProductID=''001'' FOR UPDATE WAIT 3;' || chr(10) || 'UPDATE Product SET ProductID=''002'' WHERE ProductID=''001'';' || chr(10) || 'COMMIT;' || chr(10) || '则针对第2个用户,说法正确的是（选一项）', '修改成功,将ProductID为001的记录改为ProductID为002', '等待3秒后修改成功,将ProductID为001的记录改为ProductID为002', '提示资源被占用,如果第一个用户在3秒期间释放了资源,则提示修改成功', '等待时间大雨3秒,第1个用户释放资源后,修改成功', 871, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，关于PL/SQL下列描述正确的是（选一项）', 'PL/SQL代表Power Language/SQL', 'PL/SQL不支持面向对象编程', 'PL/SQL块包括声明部分、可执行部分和异常处理部分', 'PL/SQL提供的四种内置数据类型是character,integer,float,boolea', 872, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Oracle中，关于程序包的描述不正确的是（选一项）', '程序包是一种数据库对象，它是对相关PL/SQL类型、子程序、游标、异常、变量和常量的封装', '程序包中私有对象是通过PRIVATE关键字来标识的', 'PL/SQL允许两个或多个打包的子程序具有同一名称，只要子程序接受的参数数据类型不同', '程序包具有模块化、信息隐藏、新增功能及性能更佳等优点', 873, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Oracle中，关于触发器的描述正确的是（选一项）', '触发器可以删除，但不能禁用', '触发器只能用于表', '触发器可以分为行级和语句级', '触发器是一个对关联表发出select、insert、update或delete语句时触发的存储过程', 874, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Oracle中，关于锁,下列描述不正确的是（选一项）', '锁用于在用户之间控制对数据的并发访问', '可以将锁归类为行级锁和表级锁', 'insert、update、delete语句自动获得行级锁', '同一时间只能有一个用户锁定一个特定的表', 875, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，关于子程序的描述不正确的是（选一项）', '子程序是已命名的PL/SQL块，可带参数并可在需要时随时调用', '子程序可以具有声明部分、可执行部分和异常处理部分', '子程序参数的模式只有IN和OUT两种模式', '子程序可分为过程和函数两种类型', 876, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ORACLE中，模式是（选一项）' || chr(10) || '', '创建表的模板' || chr(13) || '', '一个用户下所有对象的集合' || chr(13) || '', '一种设计数据库的方法' || chr(13) || '', '数据库别名' || chr(13) || '', 877, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Oracle中，你以SYSDBA登录，CUSTOMER表位于Mary用户方案中，下面哪条语句为数据库中的所有用户创建CUSTOMER表的同义词（）。（选一项）', 'CREATE PUBLIC SYNONYM cust ON mary.customer;', 'CREATE PUBLIC SYNONYM cust FOR mary.customer;', 'CREATE SYNONYM cust ON mary.customer FOR PUBLIC;', '不能创建CUSTOMER的公用同义词。', 878, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中,使用下列语句产生序列:' || chr(10) || 'CREATE SEQUENCE id;' || chr(10) || 'Oracle服务器会预开辟内存并维持的序列值有()个（选一项）', '0', '10', '20', '100', 879, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Oracle中,使用以下语句创建视图;' || chr(10) || 'create or replace view myView' || chr(10) || 'as select * from orders' || chr(10) || 'where status=''p'';' || chr(10) || '假定Orders表中包含10条status=''p''的记录,当用户试图执行以下语句;' || chr(10) || 'update myView set status=''o'' where status=''p'';' || chr(10) || '下列正确的是（选一项）', 'Oracle不执行更新操作,并返回错误信息', 'Oracle成功执行更新操作,再次查看视图时返回0行记录', 'Oracle成功执行更新操作,再次查看视图时返回10行记录', 'Oracle执行更新操作,但提示错误信息', 880, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列关于XML的描述中正确的有（选一项）', '如果已经指定了父元素的命名空间，子元素就不能使用自己的命名空间', '元素可以应用命名空间，属性不可以', '结构完整的XML文档一定是合法的XML文档', '合法的XML文档一定是结构完整的XML文档', 881, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列关于XML文档中根元素的说法不正确的有（选一项）', '每一个结构完整的XML文档有且只有一个根元素', '根元素完全包括了文档中其他所有元素', '根元素的起始标记要放在其他所有元素的起始标记之前，而根元素的结束标记要放在其他所有元素的结束标记之后', '根元素不能包含属性节点', 882, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '下面（）是XML提供的编程接口，用于开发人员解析XML文档。（选两项）', 'XPath', 'DOM', 'XSLT', 'SAX', 883, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面XML文档节点中，下列（）的内容是不会被XML解析器解析的（选一项）', 'PCDATA', '处理指令PI', 'CDATA', '实体', 884, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '要定义一个数据类型，既可能包含integer类型的值，也可能包含string类型的值，以下schema片段正确的是（选一项）', '<xsd:simpleType name="idNumber">' || chr(13) || '' || chr(10) || ' <xsd:union>' || chr(13) || '' || chr(10) || '   <xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:integer"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:string"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '   </xsd:union>' || chr(13) || '' || chr(10) || '</xsd:simpleType>', '<xsd:simpleType name="idNumber">' || chr(13) || '' || chr(10) || ' <xsd:list>' || chr(13) || '' || chr(10) || '   <xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:integer"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:string"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '   </xsd:list>' || chr(13) || '' || chr(10) || '</xsd:simpleType>', '<xsd:simpleType name="idNumber">' || chr(13) || '' || chr(10) || ' <xsd:all>' || chr(13) || '' || chr(10) || '   <xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:integer"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:string"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '   </xsd:all>' || chr(13) || '' || chr(10) || '</xsd:simpleType>', '<xsd:simpleType name="idNumber">' || chr(13) || '' || chr(10) || ' <xsd:choice>' || chr(13) || '' || chr(10) || '   <xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:integer"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:string"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '   </xsd:choice>' || chr(13) || '' || chr(10) || '</xsd:simpleType>', 885, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '已知xml文档包含如下内容（list为根元素）：' || chr(10) || '<list>' || chr(10) || '    <item id="0001">' || chr(10) || '        <price>18</price>' || chr(10) || '    </item>' || chr(10) || '    <item id="0002">' || chr(10) || '        <price>15</price>' || chr(10) || '    </item>' || chr(10) || '    <item/>' || chr(10) || '    <product>' || chr(10) || '        <item id="01"></item>' || chr(10) || '    </product>' || chr(10) || '</list>' || chr(10) || '使用xslt进行转换时，语句<xsl:template match="/list/item[@id]">能够匹配到（）个item元素（选一项）', '3', '2', '1', '0', 886, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '已知xslt片段：<xsl:if  test="roundOff(o.5)"></xsl:if>, test语句的返回值是（选一项）', 'true', 'false', '不存在roundOff函数。', '以上都不是。', 887, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '用来转换和表示XML文档的是（选一项）', 'CSS', 'XSL', 'SAX', 'DOM', 888, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在DOM中，对给定的 Node，返回给定名称的属性，应调用方法（选一项）', 'getLastChild', 'getDocumentElement', 'getAttribute', 'getFirstChild', 889, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Schema中，限定元素的值可从列表中选择的元素是（选一项）', 'Unique', 'Sequence', 'Pattern', 'List', 890, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在XML基础中，XSL的循环判断语句为（选一项）', '<xsl:template>', '<xsl:for-each>', '<xsl:sort>', '<xsl:sort>', 891, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在XML文档结构中，在（）中指明所用的XML的版本（选一项）', 'XML声明', '根元素', '注释', 'CDATA', 892, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在XML中，用迭代方式处理每个节点的XSLT的元素是（选一项）', '<xsl:template>', '<xsl:for-each>', '<xsl:sort>', '<xsl:choose>', 893, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '在XML中的Schema中，用于限制元素出现次数的element属性有（选两项）', 'maxExclusive', 'minExclusive', 'minOccurs', 'maxOccurs', 894, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在XML中使用字符‘<’应使用哪个预定义字符。（选一项）', '&gt;', '&amp;', '&lt;', '&apos;', 895, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在XSL中用循环的方式处理每个节点，使用的标签是（选一项）' || chr(10) || '', '<xsl:for-each>' || chr(13) || '', '<xsl:for >' || chr(13) || '', '<xsl:choose>' || chr(13) || '', '<xsl:while>' || chr(13) || '', 896, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在一个DTD元素中定义了一个元素“学员”为<!ELEMENT 学员 (#PCDATA)>，那么如下的XML实例片段中合法的是（选一项）', '<学员>张三</学员>', '<学员><姓名>张三</姓名></学员>', '<学员/>', '<学员>一班<姓名>张三</姓名>同学</学员>', 897, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '属性指定元素最多出现的次数。（选一项）', 'minOccurs', 'maxOccurs', 'minExclusive', 'maxExclusive', 898, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '(  )程序包用于读写操作系统文本文件。（选一项）', 'Dbms_output', 'Dbms_lob', 'Dbms_random', 'Utl_file', 899, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '(  )触发器允许触发操作的语句访问行的列值。（选一项）' || chr(10) || '', '行级' || chr(13) || '', '语句级' || chr(13) || '', '模式' || chr(13) || '', '数据库级' || chr(13) || '', 900, 302);
commit;
prompt 900 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '(  )是oracle在启动期间用来标识物理文件和数据文件的二进制文件。（选一项）', '控制文件', '参数文件', '数据文件', '可执行文件', 901, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'CREATE TABLE 语句用来创建（选一项）', '表', '视图', '用户', '函数', 902, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'imp命令的哪个参数用于确定是否要倒入整个导出文件。（选一项）', 'constranints', 'tables', 'full', 'file', 903, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ORACLE表达式NVL(phone，''0000-0000'')的含义是（选一项）', '当phone为字符串0000-0000时显示空值', '当phone为空值时显示0000-0000', '判断phone和字符串0000-0000是否相等', '将phone的全部内容替换为0000-0000', 904, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ORACLE交集运算符是（选一项）', 'intersect', 'union', 'set', 'minus', 905, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ORACLE使用哪个系统参数设置日期的格式（选一项）', 'nls_language', 'nls_date', 'nls_time_zone', 'nls_date_format', 906, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Oracle数据库中，通过（）访问能够以最快的方式访问表中的一行（选一项）', '主键', 'Rowid', '唯一索引', '整表扫描', 907, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Oracle数据库中，下面（）可以作为有效的列名。（选一项）', 'Column', '123_NUM', 'NUM_#123', '#NUM123', 908, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Oracle数据库中，以下（）命令可以删除整个表中的数据，并且无法回滚（选一项）', 'drop', 'delete', 'truncate', 'cascade', 909, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Oracle中, (  )函数将char或varchar数据类型转换为date数据类型。（选一项）', 'date', 'to_date', 'todate', 'ctodate', 910, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ORACLE中，执行语句：SELECT address1||'',''||address2||'',''||address2 "Address" FROM employ；将会返回（）列（选一项）', '0', '1', '2', '3', 911, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Oralce数据库中，以下（）函数可以针对任意数据类型进行操作。（选一项）', 'TO_CHAR', 'LOWER', 'MAX', 'CEIL', 912, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'partition by list(msn_id)子句的含义是（选一项）', '按msn_id列进行范围分区', '按msn_id列进行列表分区', '按msn_id列进行复合分区', '按msn_id列进行散列分区', 913, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '比较pagesize和linesize两个命令的特点，正确的是（选两项）', 'pagesize命令用于设置屏幕上每一页包含的行数', 'linesize命令用于设置屏幕上每一行的字符数', 'pagesize命令用于设置屏幕上每一行的字符数', 'linesize命令用于设置屏幕上每一页包含的行数', 914, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '查询语句SELECT LTRIM(''aaabaccaddefg'',''abc'') FROM DUAL的返回结果是（选一项）', 'addefg', 'dde', 'ddefg', 'aabaccaddefg', 915, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '调用ORACLE隐式游标的关键字是（选一项）', 'CURSOR', 'SQL', 'PLSQL', 'ORACLECURSOR', 916, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于ORACLE锁的级别，说法正确的是（选一项）', 'ROW SHARE是表级锁', '一个会话对表加了SHARE锁，别的会话不能对该表加SHARE锁', '一个会话对表加了SHARE锁，别的会话不能对该表进行修改', '使用UPDATE语句修改记录，系统一定会添加ROW SHARE锁', 917, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '可以使用下面的(  )个数据字典查看当前数据库的表空间情况。（选一项）', 'dba_users', 'dba_tab_privs', 'dba_tablespaces', 'user_tab_privs', 918, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '如果存储过程的参数类型为OUT，那么调用时传递的参数应该为（选一项）', '常量', '表达式', '变量', '都可以', 919, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果希望更新Oracle表authors中first_name列为非空，可以使用哪个语句（选一项）', 'alter  table  authors  add  first_name  not  null', 'alter  table  authors  modify  first_name  not  null', 'alter  table  authors  alter  first_name  not  null', 'alter  table  authors  drop  first_name  not  null', 920, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '使用desc命令不能显示表的(  )信息（选一项）', '列名称', '列长度', '列是否为空', '表中的记录数', 921, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '数据字典在SGA的哪一个组件中缓存（选一项）', '数据库高速缓冲区', '共享', 'PGA', '重做日志缓冲区', 922, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列不属于ORACLE分析函数的是（选一项）', 'ROW_NUMBER', 'ROWNUM', 'RANK', 'DENSE_RANK', 923, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列不属于ORACLE逻辑结构的是（选一项）', '区', '段', '数据文件', '数据块', 924, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列不属于ORACLE游标属性的是（选一项）' || chr(10) || '', 'ISOPEN' || chr(13) || '', 'EXISTS' || chr(13) || '', 'FOUND' || chr(13) || '', 'ROWCOUNT' || chr(13) || '', 925, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '下列关于ORACLE的to_date函数和 to_char函数，描述正确的是（选两项）', 'to_char 函数的作业是将字符串数据转换为日期数据', 'to_date 函数的作业是讲字符串转换为日期', 'to_char 函数是将日期数据转换为字符数据', 'to_date 函数是将日期数据转换为字符数据', 926, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列哪个ORACLE后台进程是数据写入进程（选一项）', 'DBWR', 'SERVICELOG', 'LGWR', 'SMON', 927, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列哪个进程主要职责是监控服务器进程和注册数据服务。（选一项）', 'SMON', 'PMON', 'DBWR', 'LGWR', 928, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '下列说法错误的是（选两项）', '在PL/SQL中使用<>表示不等于', '在PL/SQL中使用!=表示不等于', '在PL/SQL中使用相等判断使用　==', '在PL/SQL中赋值使用　=', 929, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列有关包的使用说法错误的是（选一项）', '在不同的包内模块可以重名', '包的私有过程不能被外部程序调用', '包体中的全局过程和函数必须在包头部分说明', '必须先创建包头，然后创建包体', 930, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列有关存储过程的特点说法错误的是（选一项）', '存储过程不能将值传回调用的主程序', '存储过程是一个命名的模块', '编译的存储过程存放在数据库中', '一个存储过程可以调用另一个存储过程', 931, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面哪个ORACLE函数把字符串x的所有单词的首字母变成大写（选一项）', 'initcap', 'concat', 'upper', 'lower', 932, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面哪个操作会导致用户连接到ORACLE数据库，但不能创建表（选一项）', '授予了CONNECT的角色，但没有授予RESOURCE的角色', '没有授予用户系统管理员的角色', '数据库实例没有启动', '数据库监听没有启动', 933, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面哪个用户不是ORACLE缺省安装后就存在的（选一项）', 'SYSMANAGER', 'SYSTEM', 'SYS', 'SCOTT', 934, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面那个部分是PL/SQL中必须存在的部分（选一项）' || chr(10) || '', '声明部分' || chr(13) || '', '执行部分' || chr(13) || '', '异常处理部分' || chr(13) || '', '跳转块' || chr(13) || '', 935, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面是有关系统权限和对象权限的描述，正确的是（选一项）', '系统权限是针对某个对象的权限，对象权限不与数据库中的某个对象关联', '系统权限和对象权限都是针对某个对象操作的权限', '系统权限和对象权限都不与具体的对象关联', '系统权限不与数据库中的对象关联，对象权限是针对某个对象操作的权限', 936, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '序列的两个属性是（选两项）', 'currval', 'nowval', 'nextval', 'preval', 937, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下需求中哪个需要用分组函数来实现（选一项）', '把ORDER表中的定单时间显示成 ''DD MON YYYY'' 格式', '把字符串 ''JANUARY 28, 2000'' 转换成日期格式', '显示PRODUCT 表中不同种类产品的COST的和', '把PRODUCT表中的DESCRIPTION列用小写形式显示', 938, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '有关ORACLE存储过程说法正确的是（选两项）', '可以在查询语句中调用储存过程', '存储过程是一次编译多次使用', '存储过程通过传出参数的形式对外提供数据传递', '存储过程中不能调用其他的存储过程', 939, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '有关ORACLE函数说法正确的是（选一项）' || chr(10) || '', 'ORACLE不能自定义函数' || chr(13) || '', '函数每次调用的时候都需要解释执行PL/SQL' || chr(13) || '', '函数只能在查询中使用' || chr(13) || '', '函数可以不带参数' || chr(13) || '', 940, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有关ORACLE视图说法正确的是（选一项）', '视图的数据和对应表的数据单独存储', '视图只能在存储过程中使用', '使用WITH CHECK OPTION可以保证通过视图修改数据不会改变表视图的记录数', '如果表不存在不能创建视图', 941, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '有关ORACLE数据类型下列说法正确的是（选一项）', '%TYPE是取的一个行结构类型', '%ROWTYPE是取的一个行结构类型', 'VARCHAR2在PL/SQL中和SQL中表示数据的长度一致', 'PL/SQL和SQL中都有逻辑类型', 942, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '有关ORACLE索引说法正确的是（选一项）', '索引的数据和表的数据分开存储，但索引组织表除外', '所有索引中的数据是顺序排序', '分区表的索引必须统一存储', '只能对分区表的索引进行分区', 943, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '有关ORACLE异常说法正确的是（选一项）', '可以利用非预定异常抛出有编号的异常', '用户可以定义预定义异常', '自定义异常反应的是ORACLE系统错误', '使用try…catch抓异常', 944, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '有关触发器的维护说法错误的是（选两项）', '触发器创建后由系统自动调用', '在触发器中不能执行事务操作', '可以人为的设定触发器是否有效', '不能对一个表的所有触发器同时修改为无效', 945, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '有关序列说法错误的是（选一项）', '序列的起始值必须在最大值和最小值之间', '序列开始使用后不能进行修改', '序列如果可以循环取值，下一个循环的开始值是minvalue指定的值', '第一次使用序列的NEXTVAL得到的是起始值', 946, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '阅读以下PL/SQL程序：' || chr(10) || 'begin' || chr(10) || 'for idx in 1..10 loop' || chr(10) || 'dbms_output.put_line(''Index=''||idx);' || chr(10) || 'end loop;' || chr(10) || 'end;' || chr(10) || '下说法正确的是（选一项）', '程序出错，因为第2行变量idx没有声明', '程序出错，因为第3行字符串连接应该用+号，而不是||', '程序出错，因为第3行变量idx必须用TO_CHAR函数进行类型转换', '该段代码可以正常运行', 947, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '在Oracal中，阅读以下PL/SQL代码：' || chr(10) || 'DELCARE' || chr(10) || 'vempno number;' || chr(10) || 'BEGIN' || chr(10) || 'SELECT empno INTO vempno FROM emp;' || chr(10) || '...' || chr(10) || 'END;' || chr(10) || '针对上述PL/SQL片段，可能发生的异常是（选两项）', 'TOO_MANY_ROWS', 'DUP_CAL_ON_INDEX', 'NO_DATA_FOUND', 'ZERO_DIVIDE', 948, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Oracle 中，使用了如下的语句创建用户TOM' || chr(10) || 'CREATE USER TOM IDENTIFIED BY TOMSYS' || chr(10) || '则对于该用户而言，以下说法错误的是（选一项）', '该用户的口令为TOMSYS', 'TOM默认为表空间为SYSSTEM', 'TOM 的临时表空间为TEMP', '使GRANT UPDATE 命令可以修改TOM的口令', 949, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在oracle程序中处理语句时发生的逻辑错误导致(  )故障。（选一项）', '实例', '介质', '语句', '用户进程', 950, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Oracle数据库中，使用以下语句创建一个触发器：' || chr(10) || 'Create or replace trigger ai_emp' || chr(10) || 'After insert on emp' || chr(10) || 'For each row' || chr(10) || 'Begin' || chr(10) || ':new.ename:=upper(:new.ename);' || chr(10) || 'End ai_emp;' || chr(10) || '以下说法正确的是（选一项）', '触发器创建成功，该触发器将每次插入的新记录的ename列变为大写' || chr(13) || '', '触发器创建成功，该触发器将每次insert语句插入的第一条记录的ename列变为大写' || chr(13) || '', '触发器创建失败，因为insert触发器不能更改:new对象的值' || chr(13) || '', '触发器创建失败，因为after触发器不能更改:new对象的值' || chr(13) || '', 951, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Oracle系统中，可以使用(  )提交完成的事务。（选一项）', 'commit', 'rollback', 'savepoint', 'transaction', 952, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在oracle中(  )是最小的存储空间。（选一项）', '区', '段', '块', '表空间', 953, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中, 关于HAVING 子句, 以下说法正确的是（选一项）', 'HAVING子句和WHERE子句相同', 'HAVING子句用于单行的条件查询', 'HAVING子句用于已分组的条件查询', 'HAVING子句必须紧跟在WHERE子句后面使用', 954, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中,(  )操作符返回两个查询所选定的所有不重复的行。（选一项）', 'INTERSECT', 'MINUS', 'UNION', 'OR', 955, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Oracle中，INSTEAD OF触发器主要用于（选一项）', '表', '表和视图', '基于单个表的视图', '基于多个表的视图', 956, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Oracle中，PL/SQL块中定义了一个带参数的游标：' || chr(10) || 'CURSOR emp_cursor(dnum NUMBER) IS' || chr(10) || 'SELECT sal,comm FORM emp WHERE deptno=dnum;' || chr(10) || '那么正确打开此游标的语句是（选一项）', 'OPEN emp_cursor(20);', 'OPEN emp_cursor FOR 20;', 'OPEN emp_cursor USING 20;', 'FOR rmp_rec IN emp_cursor(20) LOOP ... END LOOP;', 957, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ORACLE中，rank()函数和dense_rank()函数的差别是（选一项）', 'rank函数和dense_rank函数都没有跳跃', 'rank函数和dense_rank函数都有跳跃', 'rank函数有跳跃 dense_rank函数没有跳跃', 'rank函数没有跳跃 dense_rank函数有跳跃', 958, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，表分区方式（）建议分区数是2的幂（2、4、8等），以获得最平均的数据发布（选一项）', '范围分区', '列表分区', '散列分区', '复合分区', 959, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Oracle中，不属于游标属性的是（选一项）', '%NOTFOUND。', '%FOUND', '%ISCLOSE' || chr(13) || 'D', '%ROWTYPE', 960, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ORACLE中，当col为(  )时，col > any ( 5 , 10 , 28 ) 为假。（选一项）' || chr(10) || '', '22' || chr(13) || '', '2' || chr(13) || '', '12' || chr(13) || '', '32' || chr(13) || '', 961, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，当FETCH语句从游标获得数据时，下面叙述正确的是（选一项）', '游标打开', '游标关闭', '当前记录的数据加载到变量中', '创建变量保存当前记录的数据', 962, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，当从SQL表达式调用函数时，下列描述不正确的是（选一项）', '从SELECT语句调用的函数均不能修改数据库表', '函数可以带有IN、OUT等模式的参数', '函数的返回值必须是数据库类型，不得使用PL/SQL类型', '形式参数必须使用数据库类型，不得使用PL/SQL类型', 963, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，当需要使用显式游标更新或删除游标中的行时，声明游标时指定的SELECT语句必须带有（）子句。（选一项）', 'WHERE CURRENT OF', 'INTO', 'FOR UPDATE', 'ORDER BY', 964, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '类图中操作的可见性不包括(  )。' || chr(13) || '', 'Public' || chr(13) || '', 'Friend' || chr(13) || '', 'Private' || chr(13) || '', 'Package' || chr(13) || '', 965, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '类之间的(   )关系的部分整体依赖最强。' || chr(13) || '', '聚合' || chr(13) || '', '组合' || chr(13) || '', '依赖' || chr(13) || '', '泛化' || chr(13) || '', 966, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '类之间的关联关系不包含下列哪个元素(  )。' || chr(13) || '', '名称' || chr(13) || '', '权限' || chr(13) || '', '导航' || chr(13) || '', '多重性' || chr(13) || '', 967, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '面向对象的分析与设计中，UML的类的图标是一个包括三个部分的（ ）。', '椭圆', '三角形', '矩形', '五角形', 968, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '某一银行业务系统的设计中，有一个取款的用例，还有验证密码、划出现金、打印取款凭证等用例。请问取款用例和打印取款凭证用例之间的关系是（）。', '扩展', '包含', '泛化', '使用', 969, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如图是一个UML类图，请问图 中所示的类之间的关系是（ ）。', '关联', '依赖', '聚合', '泛化', 970, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '如图是一个UML类图，请问图中所示类的公有属性是（ ）。', 'Name', 'Salary', 'teach', 'GetSalaey', 971, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '时序图不包含下列哪个元素(  )。' || chr(13) || '', '生命线' || chr(13) || '', '消息' || chr(13) || '', '激活' || chr(13) || '', '链' || chr(13) || '', 972, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '时序图与(  )图包含的信息相同，可以相互转换。', '用例' || chr(13) || '', '状态' || chr(13) || '', '活动' || chr(13) || '', '协作' || chr(13) || '', 973, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '时序图中的纵坐标表示的是(  )。' || chr(13) || '', '链' || chr(13) || '', '消息' || chr(13) || '', '时间' || chr(13) || '', '事件' || chr(13) || '', 974, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列关于UML图的说法，错误的是（ ）。', 'UML图所使用的图形符号可展示和表达系统的概观', 'UML图可为规划中的系统精密且准确的建模', 'UML图与特定语言相关', 'UML图可以帮助完成从软件项目开始至交付过程中的所有文档', 975, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列哪一项不是UML中的动态图形(  )。' || chr(13) || '', '类图' || chr(13) || '', '活动图' || chr(13) || '', '时序图' || chr(13) || '', '状态图' || chr(13) || '', 976, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '下列那种关系属于类关系中的组合关系(   )。' || chr(13) || '', '汽车和司机' || chr(13) || '', '经理和员工' || chr(13) || '', '电视机和遥控器' || chr(13) || '', '书和纸' || chr(13) || '', 977, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '下面那种关系不是用例间的关系(  )。' || chr(13) || '', '关联关系' || chr(13) || '', '聚合关系' || chr(13) || '', '扩展关系' || chr(13) || '', '包含关系' || chr(13) || '', 978, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '验证DOM树，采用方法(  )。' || chr(13) || '', 'javax.xml.validation.Validator的validate方法' || chr(13) || '', 'javax.xml.parsers.DocumentBuilderFactory的setValidating的方法' || chr(13) || '', 'javax.xml.parsers.DocumentBuilderFactory的setNamespaceAware的方法' || chr(13) || '', 'java.xml.validation.Validator的validate方法' || chr(13) || '', 979, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下代码创建了两个类, 请问两个类之间的关系是 (   )。' || chr(13) || '' || chr(10) || 'Public class Teacher{' || chr(13) || '' || chr(10) || '    private Glasses glasses ; //眼镜' || chr(13) || '' || chr(10) || '}' || chr(13) || '' || chr(10) || 'public class Glasses{' || chr(13) || '' || chr(10) || '    public void Watch(){}' || chr(13) || '' || chr(10) || '}', '关联', '泛化', '依赖', '组合', 980, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下代码创建了两个类，分别为计算机类，鼠标类，请问两个类之间的关系是（ ）' || chr(13) || '' || chr(10) || 'Public class Computer' || chr(13) || '' || chr(10) || '{' || chr(13) || '' || chr(10) || 'Private Mouse gdMouse;' || chr(13) || '' || chr(10) || '}' || chr(13) || '' || chr(10) || 'Public class Mouse' || chr(13) || '' || chr(10) || '{' || chr(13) || '' || chr(10) || '}(选择一项)', '关联', '依赖', '聚合', '组合', 981, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '应该在(   )阶段制定系统测试计划。' || chr(13) || '', '需求分析' || chr(13) || '', '概要设计' || chr(13) || '', '详细设计' || chr(13) || '', '系统测试' || chr(13) || '', 982, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '如果要使用Validator框架，应采用ActionFrom类的两个子类：(  )和(  )。（选两项）', 'ActionForward', 'DynaValidatorForm', 'ValidatorForm', 'ActionValidatorForm', 983, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列（ ）是错误的描述。（选一项）', 'Struts是源代码保密的商用软件', 'Struts是开发Web应用的框架系统', 'Struts基于MVC设计模式', 'Struts是Apache的子工程', 984, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列不属于struts组件的是（选一项）', 'ActionForm', 'ActionServlet', 'Action', 'HttpServletRequest', 985, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列关于RequestProcessor类说法正确的是（选一项）', 'Struts应用中只能产生一个RequestProcessor的实例', 'RequestProcessor必须配置在web.xml中', 'RequestProcessor类是抽象类', '可以重写RequestProcessor类中的方法', 986, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列列举的常用模型层设计模式正确的是（选一项）', 'Validator', 'Data Access Object', 'ORM', 'oracle', 987, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '下列列举的方法中属于ActionForm的方法是（选一项）', 'doGet()', 'doPost()', 'validate()', 'reset()', 988, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '下列属于strtus控制器组件的是（选两项）', 'ActionForm', 'ActionServlet', 'HttpServletRequest', 'Action', 989, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面（）不是由Struts提供的。（选一项）', 'DispatchAction类', 'saveErrors方法的定义', 'DynaForm类', '<html:errors>标签', 990, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面____不是由Struts提供的（选一项）', 'DispatchAction类', 'saveErrors方法的定义', 'DynaForm类', '<html:errors>标签', 991, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面html标签的使用中正确的是（选一项）', '<html:text type="hidden" name="opr" value="toList"/>', '<html:submit class="btn">提交</html:submit>', '<html:select property="from"><html:option value="1">涞水</html:option></select>', '<html:optionsCollection property="userList" label="uname" value="uid"/>', 992, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面关于使用动态Form的描述中正确的是（选一项）', '使用动态Form首先要定义一个同名的Form Bean，不需要添加任何属性。', '在配置动态Form时type属性指定为自己定义的Form Bean的类名。', '通过myForm.getUserName()从动态Form中获得userName的值。', '动态Form中的属性名要同页面表单域的name属性一致才能在表单提交时自动填充', 993, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪些任务是RequestProcessor完成的（选一项）', '把Struts配置文件信息加载到内存中', '把资源文件信息读入到内存中', '如果需要的话，创建ActionForm实例，组装数据，并进行表单验证', '把请求转发到Action的execute()方法返回的ActionForward代表的组件', 994, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面那个是Struts视图组件（选一项）', 'ActionForm', 'Action', 'ActionServlet', 'RequestProcessor', 995, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '下面那些方法属于ActionForm（选一项）', 'doPost()', 'init()', 'validate()', 'reset()', 996, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有关UML的应用，以下说法错误的是（）。', 'UML 是一种建模语言，可以用来形象化的绘制软件蓝图', 'UML 可以应用在嵌入式系统中', '使用UML 构建的模型只能应用于面向对象语言', 'UML可以应用在针对操作系统的开发领域', 997, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在OOAD中, 下图所示的活动图中的元素表示的是 (   )。', '活动', '分叉', '判定', '终止', 998, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在OOD的状态力中，下图所示的符号表示的是对象的（ ）状态。', '初始', '终止', '活动', '转换', 999, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在活动图中，针对并发的控制流建模，需要采用(   )。' || chr(13) || '', '分支与合并' || chr(13) || '', '分支与汇合' || chr(13) || '', '分叉与合并' || chr(13) || '', '分叉与汇合' || chr(13) || '', 1000, 303);
commit;
prompt 1000 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在面向对象的分析和设计中，下列关于活动图的说法，正确的是（ ）。', '活动图可显示有条件的或平行的活动。', '活动图体现对象的协作方式', '活动图可以捕获动作的结果，而不能捕获动作', '活动图可以捕获动作，而不能捕获动作的结果', 1001, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在面向对象的分析与设计中，UML通过（ ）来捕获客户的需求。', '用例图', '类图', '状态图', '时序图', 1002, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，关于接口与实现说法错误的是(  )。' || chr(13) || '', '一个类只能实现一个接口' || chr(13) || '', '一个接口可以被多个类实现' || chr(13) || '', '类和接口之间的关系称为实现' || chr(13) || '', '接口是用于指定类或组件服务的操作的集合' || chr(13) || '', 1003, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，关于用Rational XDE绘制时序图的说法正确的是(  )。' || chr(13) || '', '事件事由水平线描述的' || chr(13) || '', '对象是由垂直线描述的' || chr(13) || '', '从下到上的事件发生顺序来描述事件' || chr(13) || '', '时间是从顶部开始沿垂直分析描述的' || chr(13) || '', 1004, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在面向对象的分析与设计中，使用用例图分析业务系统时，不包括的任务是（ ）。', '定义问题', '定义对象之间交互的时间序列', '定义问题边界', '理解与问题领域相关的词汇', 1005, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列(  )不属于标识候选类的方式。' || chr(13) || '', '排除冗余类' || chr(13) || '', '去除无关类' || chr(13) || '', '排除模糊类' || chr(13) || '', '排除抽象类' || chr(13) || '', 1006, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列(  )不属于类之间的关系。' || chr(13) || '', '关联' || chr(13) || '', '泛化' || chr(13) || '', '依赖' || chr(13) || '', '多态' || chr(13) || '', 1007, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在面向对象的分析与设计中，下列（ ）不属于UML图。', '类图', '时序图', '活动图', '视图', 1008, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在面向对象的分析与设计中，下列不属于动态模型的是（ ）。', '类图', '时序图', '协作图', '活动图', 1009, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列关于OOA与OOD说法错误的是(  )。' || chr(13) || '', 'OOA是指依照用户理解的真实世界中的对象和概念，发现和分析对象的内部构成和外部关系' || chr(13) || '', 'OOA着眼于OOD的技术细化' || chr(13) || '', 'OOD是指根据以建立的系统对象模型，运用面向对象技术，进行软件设计' || chr(13) || '', 'OOA、OOD有助于处理软件开发的复杂性' || chr(13) || '', 1010, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列关于UML图的优点说法不正确的是(  )。' || chr(13) || '', '图形符号可以展示和表达系统的概观' || chr(13) || '', '为规划中的系统精密且明确的建模' || chr(13) || '', '使用UML构建的模型与语言相关' || chr(13) || '', '帮助完成从软件项目开始至交付过程中的所有归档' || chr(13) || '', 1011, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列关于建模的必要性，说法错误的是(  )。' || chr(13) || '', '模型有助于指定系统的结构或行为' || chr(13) || '', '模型可以记录已经作出的决策' || chr(13) || '', '模型有助于实现系统更改，从而增强功能和得到认可' || chr(13) || '', '小型系统不需要建模' || chr(13) || '', 1012, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列关于建模的原则，说法正确的是(  )。' || chr(13) || '', '选择什么样的模型与要解决的问题没有关系' || chr(13) || '', '一般情况下，单个模型都能满足要求' || chr(13) || '', '最佳模型与显示情况是紧密相连的' || chr(13) || '', '每一种模型都有特定的精度级别' || chr(13) || '', 1013, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列关于类之间的聚合与组合关系，说法正确的是(  )。' || chr(13) || '', '聚合标明一种长期关系，限制条件事某个对象是另一个对象的组成部分' || chr(13) || '', '在组合关系中，没有整体，部分也没有存在地价值' || chr(13) || '', '在聚合关系中，没有整体，部分也没有存在地价值' || chr(13) || '', '组合是关联的一种特殊形式' || chr(13) || '', 1014, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在面向对象的分析与设计中,下列关于时序图,说法正确的是(   )。', '时序图是一种静态模型', '时序图重点说明对象间的交互顺序', '在时序图中，包括对象之间的交互顺序以及对象间的关系', '在时序图中，水平坐标轴表示时间' || chr(13) || '' || chr(10) || '', 1015, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在面向对象的分析与设计中，下列关于时序图的说法，不正确的是（ ）。', '它反映了随时间变化发生的对象间的交互', '对象由于水平线描述的', '事件由水平线描述', '时间从顶部开始从上而下垂直绘制', 1016, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('undefined', '在面向对象的分析与设计中，下列关于用例图的说法，正确的有（ ）。', '用例模型中的系统就是一个真正的软件系统', '用例图不能描述系统提供给用户的服务', '在用例中，矩形框用于表示系统的边界', '为系统定义的用例是整个开发过程的基础', 1017, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在面向对象的分析与设计中，下列有关UML的说法，不正确的是（ ）。', '它主要是图形符号，用面向对象的方法描述系统设计', '已经在小的模型中而不是复杂系统中证明成功', '它可在用户、分析者、设计者和软件开发者之间建立良好的沟通', '它用于可视化、具体化、结构化和文档化软件内在系统的不同方面', 1018, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在面向对象的分析与设计中，用例图中使用（ ）表示系统的边界。', '椭圆', '三角形', '矩形', '虚线框', 1019, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在使用面向对象的思想进行软件研发过程中，一般在（ ）阶段创建类图。', 'OOA', 'OOD', 'OOP', '测试', 1020, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在一个银行的项目设计中，有很多用例，其中取款用例使用了密码校验用例，则取款用例和密码校验用例之间的关系是（）。（选择一项）', '包含', '扩展', '泛化', '关联', 1021, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(  )是struts-config.xml文件配置数据源的标签。（选一项）', '</data-source>', '</data-sources>', '<set-property>', '<form-beans>', 1022, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '( )确定完成处理后，将结果发送到什么地方（选一项）', 'ActionMapping', 'ActionServlet', 'Validate()', 'Process()', 1023, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Action 类的execute()方法返回(  )的对象。（选一项）' || chr(10) || '', 'Action' || chr(13) || '', 'Null' || chr(13) || '', 'HttpServletResponse' || chr(13) || '', 'ActionForward' || chr(13) || '', 1024, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Action 中的execute()方法返回____的对象（选一项）', 'Action', 'null', 'HttpServletResponse', 'ActionForward', 1025, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', 'ActionForm Bean有两种存在范围（选两项）', 'Request', 'Session', 'Page', 'Application', 1026, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ActionForward的(  )属性指定ActionForward的URL。（选一项）', 'name', 'redirect', 'class', 'path', 1027, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Action类的execute方法中的参数ActionMapping的作用是（选一项）', '读取struts-config.xml中的信息', '读取<actionform>元素中的信息', '读取<action-mapping>元素中的信息', '读取<action>元素中的信息', 1028, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'StrutsBean的(  )标签将检索web应用程序资源的结果。（选一项）', 'define', 'include', 'message', 'page', 1029, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'StrutsBean的（  ）标签从已定义的资源包中检索带有键的值（选一项）', 'deinfe', 'message', 'parameter', 'write', 1030, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts的（）标签可以有条件地产生输出文本，在对象集合中循环从而重复地产生输出文本，以及应用程序流程控制。（选一项）', 'Nested', 'Bean', 'Logic', 'Html', 1031, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts的ActionServlet需要在那个配置文件中进行配置（选一项）' || chr(10) || '', 'struts-config.xml  ' || chr(13) || '', 'config.xml  ' || chr(13) || '', 'web.xml  ' || chr(13) || '', 'struts.xml' || chr(13) || '', 1032, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'struts的控制器与模型层之间的关系描述正确的是（选一项）', '没有关系', '相互依赖', '模型可以调用控制器', '控制器可以调用模型', 1033, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Struts国际化简称（选一项）', 'I18N', 'GBK', 'GB2312', 'Unicode', 1034, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts框架的控制器主要由（  ）负责。（选一项）', 'EJB', 'JSP页面', 'ActionServlet类', '标签库', 1035, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Struts框架中,(   )类用来与模型层交互。（选一项）', 'ActionServlet', 'Action', 'ActionForm', 'ActionMappin', 1036, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Struts框架中(  )允许为struts应用灵活地配置验证规则，无需编程。（选一项）', 'Struts插件', 'ActionForm Bean', 'javascript', 'Validator框架', 1037, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts框架中，使用以下（）标签可以显示数据验证错误信息。（选一项）', '<html:error/>', '<html:errors/>', '<logic:error/>', '<logic:errors/>', 1038, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Struts内部默认编码是（选一项）', 'GBK', 'UTF-8', 'ISO-8859-1', '没有默认编码', 1039, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts配置文件是（选一项）', 'Struts_cfg.xml', 'struts-hbm.xml', 'struts-config.xml', 'config.xml', 1040, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Struts使用（）捕获表单数据。（选一项）', 'ActionError', 'ActionForm', 'Action', 'ActionMessage', 1041, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Struts通过（）支持MVC模式的视图层开发。（选一项）', 'Struts标签库和Form Bean', 'EJB', 'Servlet', 'Applet', 1042, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Struts应用程序的默认配置文件为（选一项）', 'struts-config.xml', 'web.xml', 'ejb-jar.xml', 'sun-web.xml', 1043, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Struts中的中央控制器是（选一项）', 'ActionServlet', 'Action', 'Servlet', 'Request', 1044, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Struts中的中央控制器是（选一项）', 'ActionServlet', 'Action', 'request', 'response', 1045, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', 'Struts中模型的设计可以使用以下哪种技术进行设计和配置（）两项答案（选两项）', 'UML', 'PB', 'VB', 'XML', 1046, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '对于struts-config.xml文件，在其中添加(   )元素以指定自定义的RequestProcessor类。（选一项）', '<form-beans>', '<controller>', '<set-property>', '<plug-in>', 1047, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '对于struts-config.xml文件，在其中添加（）元素以扩展struts的功能（选一项）', '<form-beans>', '<controller>', '<set-property>', '<plug-in>', 1048, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '对于struts-config.xml文件，在其中添加____元素以指定自定义的RequestProcessor类（选一项）', '<form-beans>', '<controller>', '<set-property>', '<plug-in>', 1049, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '对于以下代码，HelloAction希望把请求转发给hello.jsp，在HelloAction的execute()方法中如何实现（选一项）' || chr(10) || '<action  path= "/HelloWorld" type="hello.HelloAction" name="HelloForm" ' || chr(9) || 'scope="request"  validate= "true"  input= "/hello.jsp">' || chr(10) || '        <forward name="SayHello" path="/hello.jsp" />' || chr(10) || '</action>', 'return (new ActionForward(mapping.getInput()));', 'return (mapping.findForward("SayHello"));', 'return (mapping.findForward("hello.jsp"));', 'return (mapping.findForward("/hello.jsp"));', 1050, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于<forward>标签配置说法正确的是（选一项）', '<forward>标签只能配置在<global-forwards>元素中', '<forward>标签只能配置在<action>元素中', 'struts-config.xml没有<forward>标签', '以上说法全部错误', 1051, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于配置Struts数据源说法正确的是（选一项）', 'Struts数据源只能在Tomcat中配置', 'Struts数据源只能在weblogic中配置', 'Struts数据源在任何服务器都能配置', '以上说法都不正确', 1052, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '模型层数据传输对象简称为（选一项）', 'DAO', 'BO', 'DTO', 'DDL', 1053, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Oracle中，事务中使用下列SQL语句不会引起锁定（选一项）', 'SELECT', 'INSERT', 'UPDATE', 'DELETE', 1054, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Oracle中，数据库中的触发器是一个对关联表发出insert、update或（）语句时触发的存储过程。（选一项）', 'delete', 'drop', 'create', 'truncate', 1055, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，通过命令（）可以释放锁。（选一项）', 'INSERT', 'DELETE', 'ROLLBACK', 'UNLOCK', 1056, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Oracle中，下列(  )语句不能用于控制游标。（选一项）', 'Open', 'Create', 'Fetch', 'Close', 1057, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，下列关于PL/SQL的说法不正确的是（选一项）', 'PL/SQL支持DML、DDL和DCL', 'PL/SQL支持游标操作和事务命令', '声明部分是必选的', '可执行部分是必选的', 1058, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Oracle中，下列哪种标量类型不能保存到数据库表中（选一项）', 'CHAR', 'BLOB', 'DATE', 'BOOLEAN', 1059, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '在Oracle中，下面关于函数描述正确的是（选两项）', 'SYSDATE函数返回Oracle服务器的日期和时间', 'ROUND数字函数按四舍五入原则返回指定十进制数最靠近的整数', 'ADD_MONTHS日期函数返回指定两个月份天数的和', 'SUBSTR函数从字符串指定的位置返回指定长度的子串', 1060, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Oracle中，下述(  )命令会使挂起的事务完成。（选一项）' || chr(10) || '', 'COMMIT' || chr(13) || '', 'DELETE' || chr(13) || '', 'UPDATE' || chr(13) || '', 'SELECT' || chr(13) || '', 1061, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Oracle中，以下不属于集合操作符的是（选一项）', 'UNION', 'SUM', 'MINUS', 'INTERSECT', 1062, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Oracle中，用户（）拥有所有内置的程序包。（选一项）', 'SYS', 'SYSTEM', 'PUBLIC', 'DEFAULT', 1063, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，用下列语句定义了一个过程：' || chr(10) || 'CREATE OR REPLACE PROCEDURE test(a IN VARCHAR2,' || chr(10) || 'b IN OUT NUMBER,' || chr(10) || 'c OUT VARCHAR2) IS' || chr(10) || 'BEGIN' || chr(10) || '  ……' || chr(10) || 'END;' || chr(10) || '假定使用的变量都已定义，下面对过程test的调用语法正确的是（选一项）', 'test(''String1'',50,v_str2)', 'test(v_str1,v_num1,''String2'')', 'test(''String1'',v_num1,v_str2)', 'test(v_str1,20,v_str2)', 1064, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Oracle中，用以下SQL命令创建了一个序列：' || chr(10) || 'CREATE SEQUENCE my_seq' || chr(10) || 'START WITH 394' || chr(10) || 'INCREMENT BY 12' || chr(10) || 'NOMINVALUE' || chr(10) || 'NOMAXVALUE' || chr(10) || 'NOCYCLE' || chr(10) || 'NOCACHE;' || chr(10) || '用户执行包含my_seq.NEXTVAL的SQL语句三次，然后执行包含' || chr(10) || 'my_seq.CURRVAL的SQL语句四次，请问序列my_seq的当前值是（选一项）', '406', '418', '430', '442', 1065, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '在Oracle中，有表“cd”它包含列“cdcode”，“category”和“cdname”，要查询category取值为“CLASSIC”或“ROCK”的行，应采用语句（选两项）', 'SELECT * FROM cd WHERE category IN (''CLASSIC'',''ROCK'');', 'SELECT * FROM cd WHERE category BETWEEN ''CLASSIC'' AND ''ROCK'';', 'SELECT * FROM cd WHERE category=''CLASSIC''AND category=''ROCK'';', 'SELECT * FROM cd WHERE category=''CLASSIC'' OR category=''ROCK'';', 1066, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，阅读下列PL/SQL块：' || chr(10) || 'DECLARE' || chr(10) || '  v_lower NUMBER:=2;' || chr(10) || '  v_upper NUMBER:=100;' || chr(10) || '  v_count NUMBER:=1;' || chr(10) || 'BEGIN' || chr(10) || '  FOR i IN v_lower..v_upper LOOP' || chr(10) || '  INSERT INTO test(results) VALUES (v_count);' || chr(10) || '  v_count := v_count + 1;' || chr(10) || 'END LOOP;' || chr(10) || 'END;' || chr(10) || '请问FOR LOOP循环体执行了（）次。（选一项）', '1', '2', '98', '100', 1067, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '在Oracle中，在SQL提示符下调用存储过程的方法是（选两项）', '使用CALL语句', '使用EXECUTE语句', '使用RUN语句', '直接使用过程名', 1068, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，在以下情形建立位图索引可以获得较好的性能（选一项）', '在列值唯一的列上建立', '在列值相差很小的列上建立', '在列值频繁重复的列上建立', '在用于保存位图的列上建立', 1069, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Oracle中，在执行SQL语句时，你不小心使用Update命令将所有的ID值设置成了11111，那么使用(  )命令可以取消这一操作。（选一项）', 'EXIT', 'OUIT', 'COMMIT', 'ROLLBACK', 1070, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Oracle中，执行下面的语句：' || chr(10) || 'SELECT ceil(-97.342),' || chr(10) || 'floor(-97.342),' || chr(10) || 'round(-97.342),' || chr(10) || 'trunc(-97.342)' || chr(10) || 'FROM dual;' || chr(10) || '哪个函数的返回值不等于-97（选一项）', 'ceil()', 'floor()', 'round()', 'trunc()', 1071, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Windows操作系统中，Oracle的（）服务器监听并接受来自客户端应用程序的连接请求。（选一项）', 'OracleHOME_NAMETNSListener', 'OracleServiceSID', 'OracleHOME_NAMEAgent', 'OracleHOME_NAMEHTTPServe', 1072, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在非归档方式下操作的数据库禁用了（选一项）' || chr(10) || '', '归档日志。' || chr(13) || '', '联机日志。' || chr(13) || '', '日志写入程序。' || chr(13) || '', '日志文件。' || chr(13) || '', 1073, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '子程序的(  )模式参数可以在调用子程序时指定一个常量。（选一项）', 'in', 'out', 'In out', 'inout', 1074, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在UML提供的图中，可以采用(   )对逻辑数据库模式建模。', '用例图', '活动图', '时序图', '类图', 1075, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '(  )用于系统的功能建模，并强调对象的控制流。' || chr(13) || '', '状态图' || chr(13) || '', '用例图' || chr(13) || '', '活动图' || chr(13) || '', '类图' || chr(13) || '', 1076, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'UML的（）重点说明对象之间交互的顺序。', '时序图', '类图', '状态图', '部署图', 1077, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '部署模型的主要元素为（）及其连接。', '类和对象', '模块', '节点', '组件', 1078, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '当一个类与它自己发生关联的时候，我们称其为（）。', '递归关联', '关联', '限定关联', '单向关联', 1079, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '关于类图下列说法错误的是(  )。' || chr(13) || '', '类图包含类名' || chr(13) || '', '类图中的属性需要赋值' || chr(13) || '', '类图中的属性不需要赋值' || chr(13) || '', '类图包含操作' || chr(13) || '', 1080, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '关于用例图中的参与者，以下说法错误的是(  )。' || chr(13) || '', '可以是系统用户' || chr(13) || '', '可以是其它的系统' || chr(13) || '', '可以是一些进程' || chr(13) || '', '以上都是错的' || chr(13) || '', 1081, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '绘制用例图的步骤不包含(   )。' || chr(13) || '', '定义系统边界' || chr(13) || '', '标识参与者' || chr(13) || '', '标识各个用例' || chr(13) || '', '标识参与者间的关系' || chr(13) || '', 1082, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '建模的目标，下面那种说法是错误的(   )。' || chr(13) || '', '便于开发人员展示系统' || chr(13) || '', '允许开发人员指定系统的结构和行为' || chr(13) || '', '建模就等于写文档' || chr(13) || '', '记录开发人员的决策' || chr(13) || '', 1083, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于spring框架的论述正确的是（选一项）', 'spring 是重量级的框架', 'spring 是j2se的集合框架', 'spring 是j2se轻量级的框架，具有 侵入性', '用了 struts 和hibernate框架的程序  spring 框架不是必须的', 1084, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于spring配置jdbc存储过程的参数，以下说明正确的是（选一项）', '存储过程不能没有参数', '存储过程的参数数目不能超过三个', '存储过程可以没有参数', '存储过程的参数必须和java中的类型对应', 1085, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '关于Spring，下列描述正确的是（选两项）', '它是一个轻量级容器，实现了反转控制模式', '在web层，它有自己的实现，但也可以和其它框架整合', '和EJB容器一样，是一个“全有全无”的解决方案', 'Spring不能和EJB一起使用', 1086, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于Spring的说法错误的是（选一项）', '通过setter方法实现依赖注入', '对Hibernate提供了支持，可简化Hibernate编码', '通过AOP可以轻松与Hibernate集成', '通过AOP实现了声明式事务管理', 1087, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于“返回后通知”和”后通知”说法正确的是（选一项）', '无论方法是如何结束的都会触发“返回后通知”', '无论方法是如何结束的都会触发“后通知”', '如果方法没有返回值“返回后通知”不会触发', '如果方法没有返回值“后通知”不会触发', 1088, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于声明式事务，下面说法正确的是（选一项）', '声明式事务没有编程式事务好', '声明式事务主要是用“依赖注入”的方式完成的', '声明式事务主要是用“面向方面”的方式完成的', 'Hibernate 自带声明式事务，可以不用 Spring 提供的内容', 1089, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于使用Spring组装程序组件，下面说法正确的是（选一项）', 'Spring 主要通过属性注入，所以需要在被注入的类中定义好 setter 方法', '类初始化的工作将由 Spring 完成，代码中需要对基依赖的对象用 new 创建', '<bean> 节点的 abstract 属性表示可以获得其实例', '如果配置文件采用Spring 2.0的，写事务的语法更复杂', 1090, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '假设某个bean要使用某种类型的资源，那么一般情况下应该把资源的释放放到bean的生命周期中的(  )阶段。（选一项）', '定义', '初如化', '使用', '销毁', 1091, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '假设在Spring中配置有A和B，如果B继承A应该配置（选一项）', '<bean id="B"　class=".."  parent="A">', '<bean id="A"　class=".."  parent="B">', '<bean id="B"　class=".."  extends="A">', '<bean id="A"　class=".."  parent="B">', 1092, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '假设在src下有spring的配置文件bean.xml,以下能正确加载配置文件的代码是（选一项）', 'ApplicationContext ctx=new XmlClassPathApplicationContext("bean.xml");', 'ApplicationContext ctx=new XmlClassPathApplicationContext("src/bean.xml");', 'ApplicationContext ctx=new XmlClassPathApplicationContext("src/application.xml");？？？？？？？？？？？？？？？？？？？？', 'ApplicationContext ctx=new XmlClassPathApplicationContext("application.xml");？', 1093, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '面在Spring中Context模块的功能是（选一项）', '提供类似JNDI的访问对象查询和国际化（I18N）的支持', '提供AOPA的接口和实现', '提供MVC框架的实现', '提供ORM', 1094, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '下面那些是Struts控制器组件（选三项）' || chr(10) || '', 'Action' || chr(13) || '', 'ActionForm' || chr(13) || '', 'ActionServlet' || chr(13) || '', 'RequestProessor' || chr(13) || '', 1095, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '下面语句中，正确的是（选两项）', 'public class AddAction implements Action {...', 'mapping.findForward("/ch01/result.jsp");', '<form method="get" action="add.do">', '<action name="addAction" path="/add" type="com.svse.web.action.AddAction">', 1096, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '现在项目主要使用的Struts版本比较稳定和成熟的是（选一项）', 'Struts1.0', 'Struts1.1', 'Struts1.2', 'Struts2.0', 1097, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '要使用动态StrutsForm必须用到以下那个类（选一项）', 'DynaActionForm', 'ActionForm', 'Action', 'ActionServlet', 1098, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下哪项说法是正确的（选一项）', '每个HTTP请求对应一个单独的ActionServlet实例', '对于每个请求访问HelloAction的HTTP请求，Struts框架会创建一个单独的HelloAction实例。', '每个子应用对应一个单独的RequestProcessor实例', '每个子应用对应一个单独的web.xml文件', 1099, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '用户未登录显示“请登录”，已登录显示用户名，下面代码正确的是（选两项）', '<logic:empty name="user" scope="session">${请登录}</logic:empty>', '<logic:empty name="user" scope="session">${user.uname}</logic:empty>', '<logic:notEmpty name="user" scope="session">请登录</logic:notEmpty>', '<logic:notEmpty name="user" scope="session">${user.uname}</logic:notEmpty>', 1100, 314);
commit;
prompt 1100 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Struts中execute()方法返回(   )对象。（选一项）', 'null', 'forward', 'ActionForward', 'response', 1101, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Struts框架中，控制器ActionServlet能够完成以下（）功能。（选一项）', '接受HTTP请求，进行视图和模型层之间表单数据的传递', '将HTTP请求分发至相应的Action处理', '调用模型层的JavaBean完成业务逻辑', '读取ActionForm Bean中的信息，重新设置HTML表单', 1102, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在struts配置文件中,(  )元素可用于配置struts的validator框架。（选一项）', '<plug-in>', '<embeded>', '<form-beans>', '<set-property>', 1103, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在使用struts框架构建应用系统时，会在配置文件中出现如下配置信息：' || chr(10) || '<form-beans>' || chr(10) || '    <form-bean name=" LoginForm" type="com.test.LoginForm"/>' || chr(10) || '</form-beans>' || chr(10) || '关于上述配置信息，以下描述中正确的是（选一项）', ' 类com.test.LoginForm是org.apache.struts.action.ActionForm的派生类', ' 缺省情况下，这段配置信息出现在struts-config.xml文件下，struts-config.xml文件与jsp、html等文件都位于web应用的根目录下', '如果把中间一行改为：' || chr(13) || '' || chr(10) || '<form-bean name=" LoginForm" type="com.test.LoginForm" scope= "session"/> ' || chr(13) || '' || chr(10) || '则该类在整个HTTP会话范围内有效 ' || chr(13) || '' || chr(10) || '', '该类中最为常用的是execute方法', 1104, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在应用程序启动时，会调用Plugin接口的（选一项）', 'Start()', 'Create()', 'Init()', 'Initialize()', 1105, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '<set>元素有一个cascade属性，如果希望Hibernate级联保存集合中的对象，casecade属性应该取什么值（选一项）', 'none', 'save', 'delete', 'save-update', 1106, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Customer类中有一个Set类型的orders属性，用来存放Order订单对象，在Customer.hbm.xml文件中，用哪个元素映射orders属性（选一项）', '<set>', '<one-to-many>', '<many-to-one>', '<property>', 1107, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', 'from Cat as cat,不仅仅返回(    )的实例，而且还返回(    )的实例（选两项）', 'Cat', 'Cat父类', 'Cat子类', 'Cat实现接口', 1108, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'hibernate.cfg.xml配置文件中，不包含下面的（选一项）', '“对象-关系映射”信息', '实体间关联的配置', 'show_sql等参数的配置', '数据库连接信息', 1109, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'HQL不支持聚合函数有（选一项）', 'count(*)', 'avg(…)', 'count(…)', 'count(?)', 1110, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ORM是（选一项）' || chr(10) || '', '对象实体映射' || chr(13) || '', '对象关系映射' || chr(13) || '', '数据传递对象' || chr(13) || '', '数据访问对象' || chr(13) || '', 1111, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ORM有什么好处（选一项）', '能进行关系对象的映射', '具有控制器能力', '能在服务器端保存客户端状态', '像DTO一样传递数据', 1112, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'POJO的作用是（选一项）' || chr(10) || '', '普通的JavaBean对象映射数据库的字段', '数据访问' || chr(13) || '', '对象的赋值' || chr(13) || '', '保存客户端对象' || chr(13) || '', 1113, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '常见的实体对象是（选一项）', '主体域对象(EJB)', 'JAVABEAN对象(也可以称为POJO)', '控制器对象', 'ActionForm对象', 1114, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '持久化状态前进行合法性检查，需要实现的接口是（选一项）', 'ActionListerner', 'Lifecycle', 'HttpServletReequest', '持久化状态合法检查不需要实现接口', 1115, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '对象（实体的实例）对一个特定的Session来说，要么是一个(    )对象，要么是(    )对象（选两项）', '瞬时', '持久化', '控制器', '数据传输对象', 1116, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '对于以下程序，Customer对象在第几行变为持久化状态（选一项）' || chr(10) || 'Customer customer=new Customer();  ' || chr(10) || 'customer.setName(\"Tom\");   ' || chr(10) || 'Session session1=sessionFactory.openSession();  ' || chr(10) || 'Transaction tx1 = session1.beginTransaction();  //line1' || chr(10) || 'session1.save(customer);  //line2' || chr(10) || 'tx1.commit();  //line3' || chr(10) || 'session1.close(); //line4', 'line1', 'line2', 'line3', 'line4', 1117, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '对于以下程序，Customer对象在第几行变为游离状态（选一项）' || chr(10) || 'Customer customer=new Customer();  ' || chr(10) || 'customer.setName(\"Tom\");   ' || chr(10) || 'Session session1=sessionFactory.openSession();  ' || chr(10) || 'Transaction tx1 = session1.beginTransaction();  //line1' || chr(10) || 'session1.save(customer);  //line2' || chr(10) || 'tx1.commit();  //line3' || chr(10) || 'session1.close(); //line4', 'line1', 'line2', 'line3', 'line4', 1118, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '过程域对象在Hibernate中代表（选一项）', '业务逻辑操作', '应用层操作', '数据库层操作', '组件对象操作', 1119, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '假设对Customer类的orders集合采用延迟检索策略，编译或运行以下程序，会出现什么情况（选一项）' || chr(10) || 'Session session=sessionFactory.openSession();' || chr(10) || 'tx = session.beginTransaction();' || chr(10) || 'Customer customer=(Customer)session.get(Customer.class,new Long(1));' || chr(10) || 'tx.commit();' || chr(10) || 'session.close(); ' || chr(10) || 'Iterator orderIterator=customer.getOrders().iterator();', '编译出错', '编译通过，正常运行，不显示任何信息', '编译通过，正常运行，并显示出结果', '编译通过，但运行时抛出异常', 1120, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '如果你不能确定你要寻找的对象的持久化标识符,那么您需要使用查询。可以使用下面的那种方法（选一项）', 'query()', 'queryAll()', 'createQuery()', 'load()', 1121, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '实现equals()和hashCode()最显而易见的作用是（选一项）', '比较两个对象标识符的值', '比较数据库的两条数据', '比较两个数组是否部署在同一个服务器上', '对象与字段的映射', 1122, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '使用Hibernate的QBC查询，要使用SQL中的类似select count(*) from tablename方法求出记录数，必须使用哪一个类。（选一项）', 'Restrictions', 'Projections', 'Criteria', 'Criteron', 1123, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '所有的Hibernate 对象，除了(  )，都支持空(null)语义。（选一项）', 'collection', 'Element', 'Entity', 'NodeList', 1124, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列不属于多对一关系的是（选一项）', '书和作者', '手机和生产厂家', '用户和发布的出租信息', '士兵和班长', 1125, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面不是Hibernate映射文件中包含的内容。（选一项）', '数据库连接信息', 'Hibernate属性参数', '主键生成策略', '属性数据类型', 1126, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面创建Criteria对象的语句中正确的是（选一项）', 'Criteria c = query.createCriteria();', 'Criteria c = query.addCriteria();', 'Criteria c = session.createCriteria();', 'Criteria c = session.createCriteria(User.class);', 1127, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面关于数据持久化概念的描述，错误的是（选一项）', '保存在内存中数据的状态是瞬时状态', '持久状态的数据在关机后数据依然存在', '数据可以由持久状态转换为瞬时状态', '将数据转换为持久状态的机制称为数据持久化', 1128, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '下面那几种是持久化对象的状态（选三项）', '瞬时状态', '离线状态', '持久化状态', '脱管状态', 1129, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '下面一对多关联的配置中，存在哪些错误（选两项）' || chr(10) || '<set name="orders" inverse="false" cascade="true">' || chr(10) || '    <one-to-many class="com.xdsvse.entity.Order" column="customer_id" />' || chr(10) || '</set>', 'inverse属性不可以设置为false', 'cascade属性不可设置为true', 'class="com.xdsvse.entity.Order"应为type="com.xdsvse.entity.Order"', 'column属性不可再<one-to-many>节点内设置', 1130, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面属于持久化的是（选一项）', '把对象转换称字符串的形式通过网络传输，在另一端接收到这个字符串后能把对象还原出来', '把程序数据从数据库中读出来', '从XML配置文件中读取程序的配置信息', '把程序数据保存为文件', 1131, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '一般情况下，关系数据模型与对象模型之间有哪些匹配关系（选三项）', '表对应类', '记录对应对象', '表的字段对应类的属性', '表之间的参考关系对应类之间的依赖关系', 1132, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '已知grid.getItem().size()的值是1。要想使执行session.update(wage)时自动执行session.update(grid.getItems().get(0))，必须配置（选一项）', '<set name="items" inverse="true" cascade="none">…</set>', '<set name="items" inverse="false" cascade="none">…</set>', '<set name="items" inverse="true" cascade="all">…</set>', '<set name="items" inverse="false" cascade="save-update">…</set>', 1133, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下程序代码对Customer的name属性修改了两次：' || chr(10) || 'tx = session.beginTransaction();' || chr(10) || 'Customer customer=(Customer)session.load(Customer.class,new Long(1));' || chr(10) || 'customer.setName(\"Jack\");' || chr(10) || 'customer.setName(\"Mike\");' || chr(10) || 'tx.commit();' || chr(10) || '执行以上程序，Hibernate需要向数据库提交几条update语句（选一项）', '0', '1', '2', '3', 1134, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '以下关于SessionFactory的说法哪些正确（选两项）', '对于每个数据库事务，应该创建一个SessionFactory对象', '一个SessionFactory对象对应一个数据库存储源。', 'SessionFactory是重量级的对象，不应该随意创建。如果系统中只有一个数据库存储源，只需要创建一个。', 'SessionFactory的load()方法用于加载持久化对象', 1135, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '以下哪些属于Session的方法（选三项）', 'load()', 'save()', 'update()', 'open()', 1136, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '以下哪一种检索策略利用了外连结查询（选两项）', '立即检索', '延迟检索', '迫切左外连结检索', '迫切右外连结检索', 1137, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '域模型包括以下哪些（选两项）' || chr(10) || '', '实体域对象  ' || chr(13) || '', '文件域对象' || chr(13) || '', '过程域对象  ' || chr(13) || '', '事件域对象' || chr(13) || '', 1138, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '元素把子对象的一些元素与父类对应的表的一些字段映射起来（选一项）', 'Component', 'Element', 'Attribute', 'ActionForm', 1139, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Hibernate关系映射配置中，inverse属性的含义是（选一项）', '定义在<one-to-many>节点上，声明要负责关联的维护', '声明在<set>节点上，声明要对方负责关联的维护', '定义在<one-to-many>节点上，声明对方要负责关联的维护', '声明在<set>节点上，声明要负责关联的维护', 1140, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Hibernate中，关于数据库的方言，下面哪个说法是正确的（选一项）', '可以不写数据库方言', '数据库方言没有作用，可以随便写', '有通用的数据库方言可以使用', '数据方言对应于每个数据库，主要用于产生SQL语句', 1141, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在三层结构中，数据访问层承担的责任是（选一项）', '定义实体类', '数据的增删改查操作', '业务逻辑的描述', '页面展示和控制转发', 1142, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '执行下面的hql查询，关于返回值的说法，正确的是（选一项）' || chr(10) || 'select u.username,u.userid ' || chr(10) || 'from com.x.entity.User u ' || chr(10) || 'where u is not null', '语法错误，不能执行', '返回一个类型为List的实例', '返回一个数组', '当返回结果只有一条时，返回一个数组', 1143, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '“依赖注入”使用最多的是面向对象中的哪种思想（选一项）', '封装', '多态', '继承', '面向接口编程', 1144, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'AOP的切入点的类型有（选一项）', '静态切入点，动态切入点', '静态切入点，动态切入点，自定义切入点', '动态切入点，自定义切入点', '静态切入点，自定义切入点', 1145, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'AOP中的通知（Advice）作用是（选一项）', '一个关注点的模块化', '在程序执行过程中某个特定的点', '匹配连接点（Joinpoint）的断言', '在切面的某个特定的连接点（Joinpoint）上执行的动作', 1146, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'AOP中的通知类型有（选一项）', '前置通知，返回后通知，抛出后通知，环绕通知', '前置通知，返回后通知，后通知，环绕通知', '前置通知，返回后通知，抛出后通知，后通知，环绕通知', '返回后通知，抛出后通知，后通知，环绕通知', 1147, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Spring和DWR的结合，下面说法正确的是（选一项）', 'Spring 和 DWR 结合没有什么用处', 'Spring 和 DWR 结合可以让简单问题复杂化', 'Spring 和 DWR 的结合可以控制事务', 'Spring 和 DWR 的结合不能控制事务', 1148, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Spring和Hibernate已经配置成功，下面说法正确的是（选一项）', '自己写的dao 必须继承Spring 的 HibernateDaoSupport', '可以不用写任何事务管理内容，spring 自己管理', '可以在 spring dao 中写 sql 语句', 'Spring dao 不能进行分页和用 hibernate 中的对象查询方式', 1149, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Spring和struts的结合，以下错误的是（选一项）', '它们的结合，可以用 spring “依赖注入”的方式管理 Action 类', '它们的结合是浪费时间，完成可以直接用 Action，不用spring 管理', '它们的结合需要增加一些配置信息', '它们的结合可以减少程序的偶合度', 1150, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', 'Spring 配置文件中有如下代码片段，则下面说法错误的是（选三项）' || chr(10) || '<bean id="testBean" class="com.my.PersonBean">' || chr(10) || '<property name="ss" value="10">' || chr(10) || '<property name="dd" value="abc">' || chr(10) || '</bean>', 'PersonBean 中一定有代码：private Integer ss;', 'PersonBean中一定有 public void setSs(Integer ss) 方法', 'PersonBean中一定有代码: private String ss;', 'PersonBean中一定有 public void setDd(String dd) 方法', 1151, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Spring中提供Hibernate开发模板的类是（选一项）', 'JdbcTemplate？？？？？？？？？？？？？', 'JdbcDaoSupport', 'HibernateTemplate？？？？？？？？？？？？？', 'HibernateDaoSupport', 1152, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Spring中依赖检查的四种模式是（选一项）', 'none, simple, object, null', 'none, simple, object, all', 'none, all, object, null', 'none, simple, null, all', 1153, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'SSH能够解决什么问题，下面的说法正确的是（选两项）', 'SSH什么都解决不了', 'SSH可以降低程序的偶合度，让维护变得简单', 'SSH可以把简单问题复杂化，让人感觉高深', 'SSH可以把复杂问题简单化，能够更好的实现程序的维护', 1154, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '代码<proterty name="msg">' || chr(10) || '<value>null<value>' || chr(10) || '<proterty name="msg">的作用是（选一项）', '设置Bean的属性为null？？？？？？？？？？？？？？？？？？？？？', '设置Bean的属性为空字符串', '设置Bean的属性为字符串，字符串的值是“null”？？？？？？？？？？？？？？？？？？？？', '设置Bean的属性为msg', 1155, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '当方法出现异常而结束时可以触发的通知是（选两项）。', '前置通知', '抛出后通知', '返回后通知', '后通知', 1156, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '当一个类继承HibernateDaoSupport之后，这个类会发生什么变化（选一项）', '这个类没有任何变化', '这个类变成了数据库连接类', '这个类会自己生成增删查改的代码，什么内容也不用写', '这个类会简化 Hibernate 操作数据库的步骤，并且提供对 session 的管理功能', 1157, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '对下面Spring声明式事务的配置含义的说明错误的是（选一项）' || chr(10) || '<bean id="txProxyTemplate" abstract="true"' || chr(10) || 'class="org.springframework.transaction.interceptor.TransactionProxyFactoryBean">' || chr(10) || '<property name="transactionManager" ref="myTransactionManager" />' || chr(10) || '<property name="transactionAttributes">' || chr(10) || '<props>' || chr(10) || '<prop key="get*">PROPAGATION_REQUIRED,readOnly</prop>        ' || chr(10) || '<prop key="*">PROPAGATION_REQUIRED</prop>' || chr(10) || '</props>' || chr(10) || '</property>' || chr(10) || '</bean>', '定义了声明式事务的配置模板', '对get方法采用只读事务', '缺少sessionFactory属性的注入', '配置需要事务管理的bean的代理时，通过parent引用这个配置模板，代码如下：<bean id="petBiz" parent="txProxyTemplate">' || chr(13) || '<property name="target" ref="petTarget"/>' || chr(13) || '</bean>', 1158, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '对于Spring和Struts的集成，下列说法错误的是（选两项）', 'Action Bean 的实例可以由 Spring 创建', '在 Struts 配置文件中，Action Bean 的配置可以如下所示：' || chr(13) || '<action name="userForm" path="/user" parameter="operate" scope="request" ' || chr(13) || 'type="org.springframework..web.struts.DelegatingActionProxy" >' || chr(13) || '</action>', '在 Spring 配置文件中，Action Bean 的配置可以如下所示：' || chr(13) || '<bean  id="/user" class="com.svse.web.action.UserAction">' || chr(13) || '<property name="userBiz" ref="userBiz" />' || chr(13) || '</bean>', '由于 Spring 本身也提供了 MVC 功能，所以不能与 Struts 集成', 1159, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于HibernateDaoSupport类，下面说法正确的是（选一项）', 'HibernateDaoSupport 类是 j2se 中的类', 'HibernateDaoSupport 类是 j2ee 中的类', 'HibernateDaoSupport 类是 hibernate 中的类', 'HibernateDaoSupport 类是 spring 中的类', 1160, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于spring配置jdbc存储过程返回值，以下说明正确的是（选一项）', '存储过程一定不能有返回值', '存储过程可以没有返回值', '存储过程一定要有返回值', '存储过程可以有返回值，也可以没有返回值', 1161, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于JdbcTemplate说话正确的是（选一项）', 'queryForInt方法使用于查询结果只返回只有一条记录的语句', 'JdbcTemplate只能是有SQL语句，不能调用存储过程', 'JdbcTemplate中的update方法只能用于修改数据，插入和删除数据要使用execute方法', '将产品表里的所有查询出来并以Product对象列表形式返回应该使用queryForList方法', 1162, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于Spring的AOP，下面说法错误的是（选一项）', '支持前置通知、后置通知、环绕通知', '采用代理的方式实现', '在Spring2.0以前的版本中，通过<aop:config>、<aop:pointcut>和<aop:advisor>配置', '与“依赖注入”实现紧密结合', 1163, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面关于“依赖注入”的说法，错误的是（选一项）', '将组件间的依赖关系采取配置文件的方式管理，而不是硬编码在代码中', '降低了组件间的耦合，使程序更容易维护和升级', '促进了“面向接口”编程，使构建大规模程序更轻松', '不需要定义接口，降低了编码复杂度', 1164, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '下面关于Spring和jdbc的配置，说法错误的是（选两项）', 'Spring 不能和 jdbc 配置，只支持 Hibernate', 'Spring 能和 jdbc 配置，但不能写 sql 语句', 'Spring 能和 jdbc 配置，也可以写 sql 语句', 'Spring 和 jdbc 配置之后，用 sql 操作数据库中的数据', 1165, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面关于Spring和Hibernate整合说法正确的是（选一项）', 'Hibernate的数据源只能配置在Hibernate自己的配置文件中。', 'Hibernate的数据源只能配置在Spring的配置文件中', 'Hibernate的数据源可以配置在Hibernate自己的配置文件中或Spring的配置文件中。', 'Hibernate的数据源不能在整合中配置', 1166, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面关于Spring说法正确的是（选一项）', 'Spring提供了“全由全无”的解决方案', 'Spring不是一种“全由全无”的解决方案', 'Spring只能用于Web编程', 'Spring只能用于非Web项目', 1167, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '下面关于依赖注入说法正确的是（选两项）', '依赖注入的目标是在代码之外管理程序组件间的依赖关系', '依赖注入即是“面向接口”编程', '依赖注入是面向对象技术的替代品', '依赖注入的使用会增大程序的规模', 1168, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面哪些是Spring代理机制（选一项）', '静态代理', '计数代理', '动态代理', '虚拟代理', 1169, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '现在需要使用三层结构搭建某个网上专卖店的网站上增加一个满1000送200的促销方案，如果你是设计人员，你将在三层结构的(  )中实现这一策略。（选一项）', '模型层', '表示层', '数据访问层', '业务逻辑层', 1170, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下属于轻量级容器的优点是（选一项）', '架构复杂，功能强大', '降低了复杂性，更容易配置', '增加代码量', '不适用AOPA', 1171, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下不是属于设置注入的优点的是（选一项）', '在对象方法调用前，对象一定处于组装完备的状态' || chr(13) || '', '简化开发JAVABEAN代码的工作量' || chr(13) || '', 'JAVABEAN属性可以被子类继承，不需添加额外代码' || chr(13) || '', 'JAVABEAN属性的getter或setter方法可以作为文档的一部分' || chr(13) || '', 1172, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下不属于Spring中Bean的生命周期的是（选一项）', '预编译', '定义', '初始化', '销毁', 1173, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下代码的作用是（选一项）' || chr(10) || '<entry>' || chr(10) || '    <key>' || chr(10) || '        <value>yup an entry</value>' || chr(10) || '    </key>' || chr(10) || '    <value>just some string</value>' || chr(10) || '</entry>', '在Bean的map属性中注入一个元素', '在Bean的list属性中注入一个元素', '在Bean的set属性中注入一个元素', '以上都不是', 1174, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下代码的作用是（选一项）' || chr(10) || '<list>' || chr(10) || '' || chr(9) || '<ref bean="myDataSource" />' || chr(10) || '</list>', '在Bean 的List属性中注入一个字符串“myDataSource”', '在Bean 的List属性中注入一个文件“myDataSource”', '在Bean 的List属性中注入一个对象，目标Bean名字是“myDataSource”', '在Bean 的List属性中注入一个字符数组“myDataSource”', 1175, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下关于AOP说法正确的是（选一项）', 'AOP提高系统复杂性；', 'AOP有助于提高系统可维护性', 'AOP时开发效率变低', 'AOP将要替代面向对象', 1176, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Session对象的默认有效期为多少分钟？（选一项）', '10', '15', '20', '30', 1177, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'txtInputName是一个文本框Web控件，以下的ASP.NET代码：' || chr(10) || 'private void Page_Load(object sender, System.EventArgs e)' || chr(10) || '{   txtInputName.Unload();  }' || chr(10) || '在执行时将（选一项）', '页面加载时，将txtInputName文本框卸载，不显示在页面上', '页面加载时，该代码行无效，txtInputName文本框仍然显示', '页面加载时，该行代码出现错误', '提示错误信息，编译不能通过', 1178, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ValidatorSummary验证控件的作用是（选一项）', '检查总和数', '集中显示各个验证的结果', '判断有无超出范围', '检查数值的大小', 1179, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Web 表单中，按钮的默认事件是（选一项）', 'Click 事件', 'Load 事件', 'Init 事件', 'Command 事件', 1180, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于ASP.NET 窗体应用程序，下列说法哪些是不正确的（选一项）' || chr(10) || '', 'Web 窗体是在浏览器中进行解释执行的' || chr(13) || '', 'Web 窗体程序中脚本和代码可以分开' || chr(13) || '', 'Web 窗体程序产生的HTML 页面只能运行于IE 浏览器' || chr(13) || '', 'Web 窗体程序的代码可以使用任何一种.NET 兼容的编程语言编写' || chr(13) || '', 1181, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于ASP.NET的验证控件，以下说法错误的是（选一项）', '因为属于服务端控件，所以验证是在服务端进行', 'RequiredFieldValidator用于验证一个控件输入值是否为空', 'CompareValidator（比较验证） 按设定比较两个输入', 'RangeValidator（范围验证） 输入是否在指定范围', 1182, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于ASP.NET中的代码隐藏文件的描述正确的是（选一项）', 'Web窗体页的程序的逻辑由代码组成，这些代码的创建用于与窗体交互。编程逻辑唯一与用户界面不同的文件中。该文件称作为“代码隐藏”文件，如果用C＃创建，该文件将具有“.ascx.cs”扩展名。' || chr(13) || '', '项目中所有Web窗体页的代码隐藏文件都被编译成.EXE文件。' || chr(13) || '', '项目中所有的Web窗体页的代码隐藏文件都被编译成项目动态链接库(.dll)文件。' || chr(13) || '', '以上都不正确。' || chr(13) || '', 1183, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '假如为C:\Inetpub\wwwroot\asp.net\chapter1添加了虚拟目录chapter1，那么如果访问其中的1-1.aspx，下面的(  )是错误的。（选一项）', 'http://localhost/asp.net/chapter1/1-1.aspx', 'http://localhost/chapter1/1-1.aspx', 'http://localhost/asp.net/1-1.aspx', 'http://127.0.0.1/chapter1/1-1.aspx', 1184, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '假设存放ASP.NET应用程序页面的目录为C:\InetPub\WWWRoot\WebSvrSample，则该程序中的代码：Request.ApplicationPath返回值应为（选一项）', 'C:\InetPub\WWWRoot', '/WebSvrSample', 'C:\InetPub\WWWRoot\WebSvrSample', '\InetPub\WWWRoot\WebSvrSample', 1185, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '将一个Button控件加入到DataList控件的模板中，其CommandName属性设置为“buy”，当它被单击时将引发DataList控件的(   )事件。（选一项）', 'DeleteCommand', 'ItemCommand', 'CancelCommand', 'EditCommand', 1186, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下关于Bean的ID说法错误的是（选一项）', 'ID是唯一的', '注册Bean时是可以不定义ID', 'ID的定义灵活，可以使用不符合XML ID限定的字符', 'ID在某些情况下可被name替代', 1187, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下关于依赖注入说法正确的是（选一项）', '在与Struts的整合中只能使用设值方法注入？？？？？？？？？？？？？？？？？？？？', '在与Struts的整合中只能使用构造方法注入', '设值方法注入必须有setter方法？？？？？？？？？？？？？？？？？？？？', '设值方法注入必须有getter方法', 1188, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下配置文件的功能是（选一项）' || chr(10) || '<bean id="exampleInitBean" class="examples.ExampleBean" destroy-method="cleanup"/>', 'exampleInitBean使用cleanup创建实例', 'exampleInitBean使用cleanup初始化参数', 'exampleInitBean在销毁时调用cleanup方法', '以上都错误', 1189, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下是dwr和sprig的配置信息' || chr(10) || '<context-param>' || chr(10) || '<param-name>contextConfigLocation</param-name>       //1.' || chr(10) || '<param-value>src:applicationContext.xml</param-value>    //2.' || chr(10) || '</context-param>' || chr(10) || '<listener>                                        //3.' || chr(10) || '<listener-class>' || chr(10) || 'org.springframework.web.context.ContextLoaderListener   //4.' || chr(10) || '</listener-class>' || chr(10) || '</listener>' || chr(10) || '错误的是（选一项）', '1处有错误', '2处有错误', '3处有错误', '4处有错误', 1190, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有关Spring中配置数据源，下列说法正确的是（选一项）', '配置数据源的bean名字只能是dataSource', 'DataSource接口位于java.sql包中', '在一个Spring配置文件中可以配置多个数据源', 'DataSource就是一个数据库连接', 1191, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '在Spring的配置文件中，包含如下所示的配置代码，则下面说法正确的是（选两项）' || chr(10) || '<bean id="testBean" class="test.TestBean">' || chr(10) || '<property name="db" value="10" />' || chr(10) || '<property name="sp" value="mm" />' || chr(10) || '</bean>', '可以通过下面的代码得到对象的实例：' || chr(13) || 'ApplicationContext  c = new ClassPathXmlApplicationContext("di.xml");' || chr(13) || 'TestBean  t  =  (TestBean) c.getBean("test.TestBean");', 'TestBean 中一定有如下的语句：' || chr(13) || 'Private String db = "";', 'TestBean 中一定有方法：public void setSp(String value)', '属性 db 的类型可能是 int 也可能是 String', 1192, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在 Spring 配置文件 di.xml 中包含下面的配置代码，可以推断（选一项）' || chr(10) || '<bean  id="a"  class="A">' || chr(10) || '<property name="m" value="1" />' || chr(10) || '</bean>', '下列语句运行时无异常' || chr(13) || 'ApplicationContext  c = new ClassPathXmlApplicationContext("di.xml");' || chr(13) || 'A  a =  (A)content.getBean("a");', 'A 是 抽象类', 'A 是接口', '类A中定义了 getM() 方法', 1193, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Spring中配置Hibernate事务管理器(HibernateTransactionManager) 时，需要注入的属性名称是（选一项）', 'dataSource', 'sessionFactory', 'baseHibernateDao', 'transactionProxyFactoryBean', 1194, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SpringAOP中，如果想计算某一个方法执行的时间，可以使用的SpringAOP中的(  )通知来实现改功能。（选一项）', 'Interception Around通知', 'Before通知', 'After Returning', 'Throws 通知', 1195, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SpringAOP中实现制动代理的类是（选一项）', 'RegexpMethodPointcutAdvisor', 'ProxyFactoryBean', 'DefaultAdvisorAutoProxyCreator', '以上都可以', 1196, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Spring中定义自动装配为byType的作用是（选一项）', 'Spring将目标Bean的属性名字和工厂中对应的Bean名字对应起来', 'Spring将目标Bean的属性类型和工厂中对应的Bean类型对应起来', 'Spring将目标Bean的构造函数参数和工厂中对应的Bean名字对应起来', '以上都不是', 1197, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '怎样使用“依赖注入”（选一项）', '用 new  来创建', '用继承来创建', '用实现接口来创建', '通过 setXX 方法 和 xml 配置文件来实现', 1198, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'CLDC是J2SE的子集关系对吗?', '错误', '正确', '无法确定关系', '没有任何关系', 1199, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'EclipseMe和Eclipse有什么关系?', 'Eclipse是开发平台', 'EclipseME是开发平台', 'EclipseME是开发J2ME的插件', '以上都不正确', 1200, 317);
commit;
prompt 1200 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Form组件的直接父类是?', 'Displayable', 'Screen', 'Item', 'String', 1201, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'J2ME的系统结构从下至上是哪几层?', '虚拟机、简表、配置', '虚拟机、配置、简表', '配置、虚拟机、简表', '简表、虚拟机、配置', 1202, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'List列表组件和ChoiceGroup组件的区别之一是List列表组件默认属于哪个Command?', 'EXIT_COMMAND', 'BACK_ COMMAND', 'SELECT_ COMMAND', 'OK_ COMMAND', 1203, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'MIDlet的生命周期启动之后的默认状态是?', 'stoped', 'destroy', 'pause', 'active', 1204, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'MIDP类库是J2ME里面的第几层?', '1', '2', '3', '4', 1205, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'RecordListener接口的作用是?', '定义了一个比较接口，用于比较两条记录是否匹配，或者符合一定得逻辑关系', '遍历RecordStore中的记录', '用于接受监听记录仓储中记录添加，更改或删除记录等事件的接口', '是用来过滤不满足条件的记录', 1206, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'RecordStore中的数据是以什么形式存在的?', 'String', 'int', 'byte[]', 'double', 1207, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'RGB的取值范围?', '1-999', '0-999', '0-255', '1-255', 1208, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Screen组件和Canvax组件的直接父类是?', 'Item', 'Form', 'Displayable', 'String', 1209, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '当回复原状时，就会调用原本的画面，系统会同时调用哪个方法?', 'showNotify()', 'notify()', 'wait()', 'hideNotify()', 1210, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '对于某些突发事件，比如说来电等，屏幕会被系统画面所覆盖的时候，会调用哪个方法?', 'showNotify()', 'notify()', 'wait()', 'hideNotify()', 1211, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '将我们写的程序进行混淆的目的是什么?', '加密', '运行速度块', '容量更小', '放表', 1212, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果需要画一个弧，应该使用什么方法?', 'drawLine', 'drawArc', 'drawString', 'drawChars', 1213, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Linux中DHCP服务器的配置过程，正确的步骤是（选一项）' || chr(10) || '1、rpm -qa | grep dhcp' || chr(10) || '2、启动DHCP服务器' || chr(10) || '3、复制DHCP服务器配置文件' || chr(10) || '4、修改服务器配置文件' || chr(10) || '5、设置服务器IP地址', '12345', '13452', '15342', '54321', 1214, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Linux中可以给用户svse加锁的命令是（选一项）', 'usermod -l svse', 'passwd -l svse', 'passwd -u svse', 'usermod -u svse', 1215, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Linux中配置Samba服务器的步骤，正确的是（选一项）' || chr(10) || '1、rpm -qa | grep samba' || chr(10) || '2、设置服务器IP地址' || chr(10) || '3、修改配置文件/etc/samba/smb.conf' || chr(10) || '4、新建共享文件夹' || chr(10) || '5、service smb start', '15234', '54321', '13425', '12345', 1216, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Linux中启动FTP服务器的命令是（选一项）', 'ftp start', 'vsftpd start', 'service vsftpd start', 'start ftp', 1217, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Linux中下列使用U盘的步骤正确的是（选一项）' || chr(10) || '1、mkdir  /mnt/usb' || chr(10) || '2、mount  /dev/sda1  /mnt/usb' || chr(10) || '3、cd  /mnt/usb' || chr(10) || '4、umount  /dev/sda1', '1234', '1324', '4321', '4231', 1218, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Linux中显示当前目录下的文件和子目录的命令是（选一项）', 'cd', 'ls', 'listfie', 'mkdir', 1219, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Linux中显示网卡信息的命令是（选一项）', 'ipconfig', 'config', 'ifconfig', 'netconfig', 1220, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Linux中新建用户的命令是（选一项）', 'useradd', 'userdel', 'userpassed', 'usermod', 1221, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Linux中压缩文件的命令是（选一项）', 'gzip', 'uzip', 'gunzip', 'zip', 1222, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于Linux的特点，下列说法错误的是（选一项）', '开放的源代码', '强大的网络功能', '可靠的系统安全', '支持Windows软件', 1223, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列哪个不是Liunx系统用户管理的配置文件（选一项）', '/etc/password', '/etc/shadow', '/etc/group', '/etc/users', 1224, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '(  )命名空间中的类和接口用于创建Web 应用程序的页面。（选一项）', 'System.Drawing', 'System.IO', 'System.Web.UI', 'System.Web.Service', 1225, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '.Net应用程序的部署方式越来越多，以下都是应用程序部署比较常用的方式，除了（选一项）', '使用XCOPY的方式在开发机-服务器之间进行目录拷贝部署', '使用Windows Installer 2.0专用打包工具进行客户程序的分发和管理', '提供客户程序的Internet下载', '把所有的源代码提供给用户，让用户进行调试、编译和配置最后的运行环境', 1226, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '<% Reponse.Write(DateTime.Now) %>等价于（选一项）', '<% = DateTime.Now %>', '<% DateTime.Now %>', '< Write( DateTime.Now )>', '<% Write = DateTime.Now %>', 1227, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'App_Code目录用来放置中间层的（选一项）', '专用数据库文件', '共享文件', '被保护的文件', '代码文件', 1228, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ASP.NET代码Response.Write(Server.htmlEncode("<H1>HtmlEncode 样例</H1>"))输出结果为（选一项）' || chr(10) || '', '在窗口打印“HtmlEncode样例”' || chr(13) || '', '在窗口打印“<H1>HtmlEncode样例</H1>”' || chr(13) || '', '在窗口打印“H1HtmlEncode样例H1”' || chr(13) || '', '出现错误信息，说明嵌入的串中包含非法字符' || chr(13) || '', 1229, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ASP.NET的Response内置对象，可以通过（）来获取客户是否仍然连接在服务器上。（选一项）', 'IsConnected属性', 'IsClientConnected属性', 'Refresh方法', 'CheckConnection方法', 1230, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ASP.NET的Web应用程序被安装和运行在服务器端，其作用是（选一项）', '输出页面到屏幕', '将保存在磁盘中的HTML文档发送到客户端', '提供数据给另一个应用程序', '动态产生页面的HTML并发送到客户端', 1231, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ASP.NET服务器控件的AutoPostBack属性用于设置其事件（选一项）', '是否立即回传', '是否需要回传', '是否需要响应', '是否立即响应', 1232, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ASP.NET框架中，服务器控件是为配合Web表单工作而专门设计的。服务器控件有两种类型，它们是（选一项）', 'HTML控件和Web控件', 'HTML控件和XML控件', 'XML控件和Web控件', 'HTML控件和IIS控件', 1233, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', 'ASP.NET支持的配置文件的类型有（选两项）', '服务器配置文件', 'IIS配置文件', '文件夹配置文件', '应用程序配置文件', 1234, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ASP.NET中，以下对DropDownList服务器控件描述错误的是（选一项）', 'DropDownList服务器控件不支持多重选择', '可以用SelectIndex属性或者SelectItem属性来判断哪一项被选取', '当用户更改选项时会引发SelectIndexChanged事件', '类似WinForms中的ComboBox控件,允许用户在运行时输入文本', 1235, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ASP.NET中的配置文件Web.Config是一个（选一项）', '文本文件', '二进制文件', 'XML', '只读文件', 1236, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'DataList控件的(   )属性控制显示的列数。（选一项）', 'RepeatLayout', 'RepeatDirection', 'RepeatColumns', 'DataSource', 1237, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Label服务器控件(  )属性用于指定Label控件显示的文字。（选一项）', 'width', 'alt', 'text', 'name', 1238, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'PageDataSource类的(   )属性设置或获取分页数据源每页的行数。（选一项）', 'AllowPaging', 'PageSize', 'PageCount', 'AlloewCustomPaging', 1239, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'RangeValidator控件用于验证数据的（选一项）', '类型', '格式', '范围', '正则表达式', 1240, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'RequiredFieldValidator控件的ControlToValidate的属性用来(  )。（选一项）', '设置是否需要验证', '设置到验证的控件', '设置验证方式', '设置验证的数据类型', 1241, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Response对象的(  )属性可以设定http的输入字符编码。（选一项）', 'charset', 'cookie', 'text', 'Binarywrite', 1242, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Server控件的“Server”是指（选一项）' || chr(10) || '', '控件在服务器端定义' || chr(13) || '', '控件是服务器' || chr(13) || '', '控件在服务器端存在并执行' || chr(13) || '', '控件可以提供服务' || chr(13) || '', 1243, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '请看以下代码' || chr(10) || 'public class FwxxDAOHibImpl extends HibernatedaoSupport  //1.' || chr(10) || 'implements FwxxDAO{     //2.' || chr(10) || '    public void add(FWXX fwxx) {   //3.' || chr(10) || '        super.getHibernateTemplate().insert(fwxx);  //4.' || chr(10) || '}' || chr(10) || '}错误的是（选一项）', '1处有错误', '2处有错误', '3处有错误', '4处有错误', 1244, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '请看以下代码' || chr(10) || 'public List findAll() {' || chr(10) || '    List list = null;' || chr(10) || '    try {' || chr(10) || '        String hql = "select * from TblUser";  //1.' || chr(10) || '        list = getHibernateTemplate().find(hql);   //2.' || chr(10) || '    } ' || chr(10) || '    catch (RuntimeException re) {                     ' || chr(10) || '        throw re;                              //3.' || chr(10) || '    }' || chr(10) || '    return list;   //4.' || chr(10) || '}错误的是（选一项）', '1处有错误', '2处有错误', '3处有错误', '4处有错误', 1245, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '请看以下代码' || chr(10) || '<action name="fwxxForm" path="/fwxx" parameter="operate"' || chr(10) || 'type="org.springframework.web.struts.DelegatingActionProxy">    //1.' || chr(10) || '</action> ' || chr(10) || '<plug-in' || chr(10) || 'className="org.springframework.web.struts.ContextLoaderPlugIn">   //2.' || chr(10) || '<set-property property="contextConfigLocation"     //3.' || chr(10) || 'value="WEB-INF/applicationContext.xml" />        //4.' || chr(10) || '</plug-in>' || chr(10) || '错误的是（选一项）', '1处有错误', '2处有错误', '3处有错误', '4处有错误', 1246, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '请看以下代码' || chr(10) || '<bean id="sessionFactory"      //1.' || chr(10) || 'class="org.springframework.orm.hibernate3.LocalSessionFactoryBean">    //2.' || chr(10) || '<!-- 找hiberante的数据库配置信息 -->' || chr(10) || '<property name="configLocation"    //3.' || chr(10) || 'value="src:hibernate.cfg.xml">   //4.' || chr(10) || '</property>' || chr(10) || '</bean>' || chr(10) || '错误的是（选一项）', '1处有错误', '2处有错误', '3处有错误', '4处有错误', 1247, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '如果Bean被定义为prototype类型意味着（选一项）', 'Bean被定义为单例模式，每次创建一个', 'Bean被定义为多例模式，每次创建至少两个', 'Bean被定义为单例模式，只会共享一个实例', 'Bean每次都会创建新的实例', 1248, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '如果使用以下代码注入<ref local="msg">表示（选两项）', '目标Bean的ID或Name是"msg"', '目标Bean必须在同一配置文件中', '目标Bean可以在不同配置文件中', '目标Bean必须在其它配置文件中', 1249, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果想指定Spring中Bean的初始化方法可以设置配置中(  )属性。（选一项）', 'Init-factory', 'Init-method', 'Start-factory', 'Start-method', 1250, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '使用Spring的DAO模块进行JDBC管理时我们不能做到的是（选一项）', '实现ORM映射？？？？？？？？？？？？？？？？？？？？？？', '管理数据源', '事物管理', '提供JDBC模板', 1251, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '使用构造方法注入时，Spring是通过(  )来描述组件之间的依赖关系。（选一项）', 'JavaBean的属性', 'setter方法', '组件的类型', '带参数的构造函数', 1252, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '为什么要使用“依赖注入”（选一项）', '软件过于简单', '不需要有编程思想', '使用“组件”，把代码的偶合度降低', '为了使程序看起来比较庞大', 1253, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列对于企业级应用描述错误的是（选一项）', '企业级应用中的系统可能分布在不同的地方', '企业级应用对安全性要求很高', '企业级应用系统彼此之间是相互独立的，不需要和现有的系统整合', '企业应用中数据的一致性要求很高，所以必须有严格的事务性', 1254, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列功能是容器应该提供的，除了（选一项）', '程序对象的生命周期', '声明式事物，安全等企业级服务', '与现有开发框架的整合', '程序中业务对象的依赖关系的管理', 1255, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '下列关于SpringAOP的说法正确的是（选三项）', '首先要编写方面代码，实现 MethodBeforeAdvice 接口', 'Spring AOP 采取拦截方法调用的方式实现，可以在调用方法前、调用后、抛出异常时拦截', 'Spring AOP 采取代理的方式实现，常用代理对象的类别为 org.springframework.aop.framework.ProxyFacoryBean', 'Spring AOP 可以在对目标(target) 不做任何修改的情况下增加程序功能', 1256, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列关于Spring依赖注入的说法错误的是（选一项）', '依赖注入一般包括两种，设值注入和构造方法注入', '设值注入方式使用得多一些', 'Spring只支持设值注入', '依赖注入一般情况下由容器完成，不是应用代码完成的', 1257, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '下列有关AOP术语的是（选三项）', 'JoinPoint', 'Advice', 'Advisor', 'Pointcut', 1258, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '下面Spring声明式事务的配置中，存在哪些错误（选两项）' || chr(10) || '<aop:config>' || chr(10) || '<aop:pointcut id="bizMethods" ' || chr(9) || 'expression="execution(*com.conghai.isale.biz.*(..))" />' || chr(10) || '<aop:advisor advice-ref="txAdvice" pointcut-ref="txAdvice" />' || chr(10) || '</aop:config>', '<aop:config>应为<tx:config>', 'execution(* com.conghai.isale.biz.*(..))应为execution(* com.conghai.isale.biz.*.*(..))', '<aop:advisor>应为<aop:advise>', 'pointcut-ref="txAdvice"应为pointcut-ref="bizMethods"', 1259, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面不属于Spring提供的服务是（选一项）' || chr(10) || '', '程序对象的生命周期管理' || chr(13) || '', '查找服务' || chr(13) || '', '代码调试' || chr(13) || '', '线程管理' || chr(13) || '', 1260, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面关于AOP的说法错误的是（选一项）', 'AOP 将散落在系统中的“方面”代码集中实现', 'AOP 有助于提高系统的可维护性', 'AOP 已经表现出了将要替代面向对象的趋势', 'AOP 是一种设计模式，Spring 提供了一种实现', 1261, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面关于Spring的说法中错误的是（选一项）', 'Spring 是一系列轻量级 JavaEE框架的集合', 'Spring 中包含一个“依赖注入”模式的实现', '使用Spring 可以实现声明式事务', 'Spring 提供了AOP 方式的日志系统', 1262, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面关于Spring和DWR的配置说法正确的是（选一项）', 'Spring 可以自动找到 DWR 的信息', 'Spring 需要在 spring配置 文件中配置dwr ，才能找到 DWR 的配置文件', '在 dwr.xml 中可以找到 spring 的配置文件', '在 web.xml 中进行spring配置和监听的配置，才能让 dwr 认得 spring', 1263, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中，关于用户控件和自定义控件的差别，下列描述错误的是（选一项）', '用户控件用 .ascx 文件表示', '用户控件不会出现在工具箱中，而自定义控件会出现在工具箱中', '用户控件和自定义控件都不支持缓存', '用户控件会对使用可视化设计工具的用户提供有限的支持，而自定义控件会提供全面的支持。', 1264, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET中，可以使用多种方法从一个页面跳转到另外一个页面，或者联接到其他的超级连接，以下都是可选择的方案，除了（选一项）', '使用Response对象的Redirect方法', '使用Server对象的Execute方法', '使用Server对象的Transfer方法', '使用Application对象的DirectTo方法', 1265, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中，默认情况下WebService类里（选一项）', '可以访问Session对象和Request对象', '不能访问Session对象但能访问Request对象', '能访问Session对象但不能访问Request对象', '既不能访问Session对象也不能访问Request对象', 1266, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中，设置Session对象的TimeOut属性，可以为当前会话保持一定的超时限制，TimeOut是以（）为时间单位的。（选一项）', '小时', '分钟', '秒', '毫秒', 1267, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中，使用代码隐藏技术来分离页面文件和代码文件，已经编译好的.dll文件，发布以后，一般都放（）下。（选一项）', '虚拟目录的根目录', '虚拟目录跟目录下的bin文件夹中', '站点所在的目录的bin文件夹中', '系统目录的system32目录下', 1268, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET中，为了不允许用户在一个文本框中输入"上帝"，可以使用下列控件，除了（选一项）', 'RangeValidator', 'CompareValidator', 'ReularExpressionvalidator', 'CustomValidator', 1269, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET中，为了在页面中使用一个名为UserControl1的用户控件，在下列空白处应该补充的代码是（）。（选一项）' || chr(10) || '<%@ Register src="________" tagname="WebUserControl" tagprefix="uc1" %>', 'UserControl1.ascx', 'UserControl1', 'UserControl1.dll', 'UserControl1.ascx.cs', 1270, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中，为了在页面中原样输出图中所示的字符串，下列代码正确的是（选一项）', 'Server.HtmlDecode("<script>confirm(''长风破浪会有时，直挂云帆济沧海'');<script>");', 'Server.HtmlEncode("<script>confirm(''长风破浪会有时，直挂云帆济沧海'');<script>");', 'Server.UrlDecode("<script>confirm(''长风破浪会有时，直挂云帆济沧海'');<script>");', 'Server.UrlEncode("<script>confirm(''长风破浪会有时，直挂云帆济沧海'');<script>");', 1271, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中,下列不能提高程序运行速度的做法是（选一项）', '使用数据缓存技术', '全部使用ASP.NET服务器控件', '把一些控件的EnableViewState属性设为false', '在设计包含大量数据的页面时采用分页技术', 1272, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET中，下列代码在页面中的输出结果是（选一项）' || chr(10) || 'XmlDocument xd = new XmlDocument();' || chr(10) || 'xd.LoadXml("<Person><name>诸葛亮</name></Person>");' || chr(10) || 'Response.Write(xd.InnerText);', '诸葛亮', '<name></name>', '<name>诸葛亮</name>', '<Person><name>诸葛亮</name></Person>', 1273, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '某ASP.NET应用程序的Web.Config文件部分代码如下,如此可知（选两项）<authentication mode ="Forms">' || chr(10) || '    <forms name =".yourAuthCookie" loginUrl="Login.aspx" protection="All" path="/">' || chr(10) || '        <credentials passwordFormat="Clear">' || chr(10) || '            <username="李桑" password="123"/>' || chr(10) || '        </credentials>' || chr(10) || '    </froms>' || chr(10) || '</authentication>' || chr(10) || '<authorization>   <deny users="?"/>   </authorization>', '只有名为李桑的用户能够访问应用程序', '所有用户都能够访问应用程序', '如果用户验证失败，将自动跳转到Login.aspx页面', '如果用户验证失败，将不会自动跳转到Login.aspx页面', 1274, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '某ASP.NET应用程序的Web.Config文件部分代码如下：' || chr(10) || '<customErrors defaultRedirect="erro.aspx" mode= "Off">' || chr(10) || '由此可知（选两项）', '如果应用程序出错，远程客户端不能看到详细的错误信息', '如果应用程序出错，程序将跳转到erro.aspx页面', '如果应用程序出错，本地用户将看到详细的错误信息', '如果应用程序出错，程序不会跳转到erro.aspx 页面', 1275, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '某程序员在一个ASP.NET应用程序中，将Session对象的TimeOut属性设置为了20，则（选一项）', '用户如果连续二十分钟没有与应用程序进行交互，该用户会话将被清除', '用户如果连续二十秒钟没有与应用程序进行交互，该用户会话将被清除', '用户如果连续二十分钟与应用程序进行交互后，该用户会话将被清除', '用户如果连续二十秒钟与应用程序进行交互后，该用户会话将被清除', 1276, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '某人利用ASP.NET编写一个包括多个页面的应用程序，每个页面中都有一部分功能相同的导航按钮，这时最好采用（）实现导航功能，以加快开发速度。（选一项）', '自定义控件', '用户控件', '复合控件', 'Web控件', 1277, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '你们正在使用ASP.NET开发一个论坛程序，为了在页面中实现文件上传的功能，最好选择下列（）来实现。（选一项）', '一个HtmlInputText控件和两个按钮', '一个HtmlInputFile控件和一个按钮', '一个HtmlInputText控件、一个HtmlImage控件和一个按钮控件', '一个HtmlSelect控件和两个按钮', 1278, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '你在编写一个ASP.NET应用程序，实现一个会员管理的申请页面，你要使用ASP的内部控件来实现性别的选择，此时，（）控件应该是首选。（选一项）', 'CheckBox', 'ListBox', 'DropDownList', 'TextBox', 1279, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '如果外地朋友通过Internet访问你的计算机上的ASP.NET文件，应该选择（选一项）', 'http://localhost/asp.net/chapter1/1-1.aspx', 'http://127.0.0.1/asp.net/chapter1/1-1.aspx', 'http://你的计算机名字/asp.net/chapter1/1-1.aspx', 'http://你的计算机IP地址/asp.net/chapter1/1-1.aspx', 1280, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '如果希望控件内容变化后立即向服务器提交请求，需要在控件中添加属性（选一项）', 'AutoPostBack="true"', 'AutoPostBack="false"', 'IsPostBack="true"', 'IsPostBack="false"', 1281, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '若Internet 资源要求验证客户端身份，WebRequest.GetResponse 方法将引发一个身份验证过程。此过程成功结束后，身份验证模块将向WebRequest 实例返回一个(' || chr(9) || ')类实例，该实例包含Internet 服务器的验证消息。（选一项）', 'Authorization', 'WebResponse', 'Cookie', 'NetworkCredential', 1282, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '使用“新建项目—〉Visual C# Projects 项目—〉ASP.NET Web 应用程序”成功创建URL为“http://localhost/MyWeb”的Web 表单应用程序后，项目文件将保存在（选一项）', '本地计算机Web 站点的MyWeb 虚拟目录下', '本地文件共享MyWeb 中', '另一台名为localhost 的计算机的Web 站点的MyWeb 虚拟目录下', '本地目录c:\My Documents\MyWeb 下', 1283, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '使用ADO.NET的DataReader对象读取XML数据的代码段如下：' || chr(10) || 'DataSet myds = new DataSet();  //1' || chr(10) || 'FileStream myfs = new FileStream(Server.MapPath("xmlgrid.xml"),FileMode.Open,FileAccess.Read);  //2' || chr(10) || 'StreamReader myreader = new StreamReader(myfs);  //3' || chr(10) || 'myreader.ReadXml(myds);  //4' || chr(10) || '在以上四行代码中，第（）行代码将出现运行时错误。（选一项）', '1', '2', '3', '4', 1284, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '使用CompareValiddator控件验证textbox控件中输入的内容是否为日期时，可以设置operator属性为（选一项）', 'equal', 'notequal', 'datatypecheck', 'lessthan', 1285, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '通常对远程网站上的文件进行维护采用的手段是（选一项）', 'SMTP', 'POP3', 'FTP', 'HTTP', 1286, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '文件上传控件.PostedFile.FileName表示的是（选一项）' || chr(10) || '', '服务器端文件物理路径' || chr(13) || '', '客户端文件物理路径' || chr(13) || '', '服务器端文件名称' || chr(13) || '', '客户端文件名称' || chr(13) || '', 1287, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列(  )内置对象经常用来制作网页计数器。（选一项）', 'Reponse', 'Application', 'Request', 'Session', 1288, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列不是服务器控件的是（选一项）', 'Textarea', 'LinkButton', 'HyperLink', 'DropDownList', 1289, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列对ASP.NET验证控件描述正确的是（选一项）', '如果不为RequiredFieldValidator验证控件设置ControlToValidate设置，在运行时会出现异常', '不能将多个验证控件应用到一个文本框上', 'RangeValidator验证控件只能对数字型的数据进行范围验证', '验证控件只是在客户端进行数据的验证', 1290, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列哪个不是ASP.NET的内置对象（选一项）', 'Application', 'Session', 'Request', 'SqlCommand', 1291, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面(  )文件主要定义应用初始化、结束，会话开始、结束，请求开始、结束等事件发生时应用程序要做的事情。（选一项）', 'Web.Config', 'Global.asax', 'Global.inc', 'Config.asax', 1292, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面都是ASP.NET编程模式的优点，除了（选一项）', '数据访问', '异构系统的数据交换', '事件驱动', '无需编码', 1293, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪个(  )属性不属于Page对象。（选一项）' || chr(10) || '', 'Lanuage' || chr(13) || '', 'AutoEventWireup' || chr(13) || '', 'Inherits' || chr(13) || '', 'Runat' || chr(13) || '', 1294, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪项不是Request对象的集合。（选一项）' || chr(10) || '', 'cookie' || chr(13) || '', 'querystring' || chr(13) || '', 'form' || chr(13) || '', 'session' || chr(13) || '', 1295, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '现有一课程成绩输入框，成绩范围为0－100，这里最好使用(  )验证控件。（选一项）' || chr(10) || '', 'RequiredFieldValidator' || chr(13) || '', 'CompareValidator' || chr(13) || '', 'RangeValidator' || chr(13) || '', 'RegularExpressionValidator' || chr(13) || '', 1296, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '向服务器发送请求有几种方式？（选两项）' || chr(10) || '', 'POST' || chr(13) || '', 'GET' || chr(13) || '', 'SESSION' || chr(13) || '', 'COOKIE' || chr(13) || '', 1297, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '要把一个TextBox设置成密码输入框，应该设置(  )属性。（选一项）', 'Columns', 'Rows', 'Text', 'TextMode', 1298, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '要将数据源绑定到控件，需要调用控件的(   )方法。（选一项）', 'Load', 'DataBind', 'Dispose', 'GetType', 1299, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '要取出DropDownList控件中用户选择的值，应读取（选一项）' || chr(10) || '', 'SelectedIndex' || chr(13) || '', 'SelectedValue' || chr(13) || '', 'Value' || chr(13) || '', 'Text' || chr(13) || '', 1300, 324);
commit;
prompt 1300 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '要使Button控件不可用，需要将控件的(  )属性设置为false。（选一项）', 'Enabled', 'EnableViewState', 'Visible', 'CausesValidation', 1301, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '要使RadioButton控件被选中，需要将其(  )属性设置为 true。（选一项）', 'Enabled', 'Visible', 'Checked', 'AutoPostBack', 1302, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '要验证文本框中输入的数据是否为合法的邮编，需要使用(  )验证控件。（选一项）', 'RequiredFieldValidator', 'RangeValidator', 'CompareValidator', 'RegularExpressionValidator', 1303, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '要指示ASP.NET是否启用会话状态，应该设置的配置项是（选一项）', '<httpRuntime>', '<pages>', '<appSetting>', '<sessionState>', 1304, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '页面的IsPostBack属性用来判别页面（选一项）', '是否需要回传', '是否是回传的', '是否启用回传', '是否响应回传', 1305, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下的ASP.NET代码，在执行时将（选一项）' || chr(10) || 'private void Page_Load(object sender, System.EventArgs e)' || chr(10) || '{  Response.Write(Server.UrlEncode("http://ABC.aspx"));}', '在页面中输出字符"http://ABC.aspx"', '在页面中输出字符"http%3a%2f%2fABC.aspx"', '跳转到http://ABC.aspx页面', '不会输出任何信息到请求方', 1306, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下的ASP.NET代码：' || chr(10) || 'private void Page_Load(object sender,System.EventArgs e){   ' || chr(10) || '    (1)//在此处填写代码' || chr(10) || '    {' || chr(10) || '        ArrayList values=new ArrayList();' || chr(10) || '        values.Add("O");' || chr(10) || '        values.Add("A");' || chr(10) || '        chkA.DataSource=values;' || chr(10) || '        chkA.DataBind();' || chr(10) || '    }' || chr(10) || '}为保证页面不重复进行数据项的加载，需要在（1）处填写的代码行应为（选一项）', 'if(!IsPostBack)', 'If(Page.PostBack=false)', 'If(this.PostBack=fales)', 'if (IsPostBack)', 1307, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '阅读下面.net配置文件：' || chr(10) || '<configuration>' || chr(10) || '<system.web>' || chr(10) || '    <sessionState mode="InProc" cookieless="true" timeout="20"/>' || chr(10) || '</system.web>' || chr(10) || '</configuration>' || chr(10) || '关于上述文件描述正确的是（选两项）', '该配置节点配置的是会话状态信息', '该配置文件指明将在远程计算机上存储会话状态', '该配置文件指明了请求超时时间为20分钟', '该配置文件指明了请求超时时间为20秒钟', 1308, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下的ASP.NET页面代码：' || chr(10) || '<html><head></head>' || chr(10) || '<body>' || chr(10) || '    <h3>HyperLink Sample </h3>   Click on the HyperLink:<br>' || chr(10) || '    <asp:HyperLink id="hyperlink1"  ImageUrl="images/pict.jpg" NavigateUrl="http://www.microsoft.com"  Text="Microsoft Official Site"/>' || chr(10) || '</body></html>' || chr(10) || '下列说法正确的是（选一项）', '显示一个HyperLink控件，并且点击跳转到http://www.microsoft.com页面', '显示一个HyperLink控件，但是不执行任何跳转', '不显示HyperLink控件', '页面运行时将出现错误提示信息', 1309, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下都是@Page指令的属性，除了（选一项）', 'Debug', 'AutoEventWireup', 'Inherits', 'EnableBuffer', 1310, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下是某个程序员在一个Web窗体中编写的部分C#代码，已知GetJobDs是一个返回一个数据集的方法，当某个用户第一次访问该页面的时候，下列说法正确的是（选一项）' || chr(10) || 'private void Page_Load(object sender,System.EventArgs e)' || chr(10) || '{ ' || chr(10) || '    if(!this.IsPostBack)' || chr(10) || '    {' || chr(10) || '        DataSet ds = this.GetJobDs();' || chr(10) || '        this.GridView1.DataSorce = ds.Tables[0];' || chr(10) || '    }' || chr(10) || '}', '用户不能在GridView控件中看到数据集的中的数据，因为没有设置GridView控件的DataMember属性', '用户不能在GridView控件中看到数据集的中的数据，因为没有进行数据绑定', '用户不能在GridView控件中看到数据集的中的数据，因为代码行2，3不能被执行', '用户可以在GridView控件中看到数据集中的数据', 1311, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '用C#编写的网页后台代码被保存在 (  )文件中。（选一项）' || chr(10) || '', '.aspx' || chr(13) || '', '.vb' || chr(13) || '', '.cs' || chr(13) || '', '.config' || chr(13) || '', 1312, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '阅读下面配置文件：' || chr(10) || '<appSettings>' || chr(10) || '<add key="DSN" value=" data source=YONGPING;Integrated Security=SSPI;Initial Catalog=northwind" />' || chr(10) || '<add key="SQL_Orders" value="SELECT AVG(Freight) FROM Orders" />    </appSettings>' || chr(10) || '在ASP.NET中，通过C#代码从配置文件中收集"DSN"的信息，正确的代码行是（选一项）。', 'string strDSN = ConfigurationManager.AppSettings["DSN"];', 'string strDSN = ConfigurationManager.AppSettings("DSN");', 'string strDSN = AppSettings["DSN"];', 'string strDSN = AppSettings("DSN");', 1313, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '阅读下面配置文件：' || chr(10) || '<configuration>' || chr(10) || '   <system.web>' || chr(10) || '      <pages buffer="true" enableSessionState="true" autoEventWireup="true" />' || chr(10) || '   </system.web>' || chr(10) || '</configuration> ' || chr(10) || '关于上述配置文件的描述错误的是（选一项）', '上述配置文件通过页面配置设置控制ASP.NET页面的一些默认行为', '配置文件中指定未启用响应缓冲', '配置文件中指定启用会话状态', '配置文件中指定自动启用页事件', 1314, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '阅读以下的C#代码：' || chr(10) || '<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>' || chr(10) || '<body>' || chr(10) || '    用户名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>' || chr(10) || '    <br />' || chr(10) || '    密码：<asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox></body>' || chr(10) || '以上代码是一个用户控件的代码，关于这段代码的描述正确的是（选一项）', '以上代码是不对的，因为不能有<body>元素', '以上代码是不对的，因为不能有任何Html标记元素在控件中', '以上代码中有一个提供格式的表格，两个文本框和一个提交按钮', '该代码的物理文件名称为UserControl1.ascx.cs', 1315, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET 中，如果要打开整个应用程序的跟踪，但是页面输出统计信息不要求发送到客户端，那么需要在Web.Config中做的配置项应该为（选一项）', '<trace enabled = "true"/>', '<trace enabled = "false" pageOutput = "false"/>', '<trace debug = "true"/>', '<trace debug="true" output="false"/>', 1316, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '在ASP.NET 中,有一个注册窗体要求用户输入年龄,为了确保用户输入的年龄不小于18、不大于30，并且为整数,需要采用RangeValidator 控件对输入年龄的TextBox控件进行验证,下列对于RangeValidator控件属性设置正确的是（选两项）', '将MinimumValue 设置为17, Type 属性为Integer', '将MinimumValue 设置为18, Type 属性为Integer', '将MaximumValue 设置为30, Type 属性为Integer', '将MaximumValue 设置为31, Type 属性为Integer', 1317, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET程序中，以下（）最有利于黑客在Web服务器上对站点文件进行破坏。（选一项）', '页面内的_ViewState控件', 'Application对象的Lock方法', 'Server对象的MapPath方法', '客户端的JavaScript脚本', 1318, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET的部署方案中，使用配置文件能够获得以下的好处，除了（选一项）', '配置文件可以进行手工编辑，因而灵活', '分层配置的方案可继承，因而简便', '减少硬编码，便于修改', '配置参数、配置节处理程序是固定的，因而简单', 1319, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET服务器验证控件中，能够验证自定义正则表达式的控件是（选一项）', 'RequiredFieldValidator', 'CompareValidator', 'Randebalidator', 'RegularExpressionValidator', 1320, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET工程中，Label1为标签控件、ListBox1为ListBox控件，代码"Label1.Text=ListBox1.Text"的执行结果为（选一项）', '在标签中，显示ListBox控件中选中的项的文本', '在标签中，显示ListBox控件中没有选中的项', '判断ListBox控件中选择的文本是否与标签控件的文本信息相等', '代码"Label1.Text=ListBox1.Text"有错误', 1321, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET页面中，要使文本框最多输入6个字符，需要将该控件的(   )属性值设置为6。（选一项）', 'MaxLength', 'Columns', 'Rows', 'TabIndex', 1322, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET应用中，假设当前站点所在文件夹是C：\Inetpub\，该站点的虚拟目录为Test，其对应的文件夹为E:\Study\，在该目录下有文件1.xml，则Server.MapPath("\\1.xml")的返回值是（选一项）', 'C:\Inetpub\Test\1.xml', 'E:\Study\1.xml', 'C:\Inetpub\1.xml', 'E:\Study\Test\1.xml', 1323, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中, Application是 () 类的实例（选一项）', 'HttpApplication', 'HttpApplicationUtility', 'HttpApplicationState', 'Page', 1324, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET中, 已知在页面的Page_Load事件中已为一个DataList控件设置了一个DataTable类型数据源, 为了在DataList控件项中显示DataTable中名为 "Interest"的列，下列绑定表达式正确的是（选一项）', '<%# Eval("Interest") %>', '<%#  Container.DataItem,"Interest"%>', '<%=  DataBinder.Eval("Interest")%>', '<%#  Interest%>', 1325, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET中, 有一个应用程序的Web.Config文件中有以下的配置:' || chr(10) || '<customErrors   defaultRedirect = "Http://LocalHost/ MyAPP/ErrorComm.aspx"  mode = "RemoteOnly">' || chr(10) || '    <error statuscode = "404" redirect = "Http://LocalHost/ MyAPP/FileNotFound.aspx"/>' || chr(10) || '</customErrors>   远程用户在访问的时候,如果应用程序出现除法为零的溢出错误,程序将（选一项）', '跳转到ErrorComm.aspx页面', '跳转到FileNotFound.aspx页面', '直接关闭用户的浏览器', '直接报告错误', 1326, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中，.ascx和.aspx文件中都可以拥有的元素包括（选一项）', '<HTML>', '<BODY>', '<SCRIPT>', '<FORM>', 1327, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中，_VIEWSTATE是（选一项）', 'Page的属性', '隐藏的控件', '自动执行的代码', '@Page指令的属性', 1328, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET中，DropDownList被选中项的索引号被置于(  )属性中。（选一项）', 'SelectedIndex', 'SelectedItem', 'SelectedValue', 'TabIndex', 1329, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '在ASP.NET中，http://localhost/onlineExamSystem/ExamQuestion.aspx?ExamLevel=1,为了在当前页面获得其他页面从地址栏中传递过来的参数ExamLevel的值，下列方法正确的是（选二项）', 'Request.QueryString["ExamLevel"]', 'Request.QueryString[0]', 'Request.QueryString[1]', 'Request.Params[1]', 1330, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中，当针对整个页面调用（）方法时，会计算页面上所有数据绑定表达式。（选一项）', 'Fill()', 'ReadXML()', 'DataBind()', 'DataBinder.Eval()', 1331, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET中，关于XmlDataDocument的描述，错误的是（选一项）', 'XmlDataDocument的基类是XmlDocument', 'XmlDataDocument所在的命名空间是System.Xml', 'XmlDataDocument可以用一个DataSet进行初始化', 'XmlDataDocument是XmlDocument的基类', 1332, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET中，关于下列代码的说法正确的是（选一项）' || chr(10) || 'HttpCookie user = new HttpCookie("name","王飞");  //1' || chr(10) || 'Response.Cookies.Add(user);    //2' || chr(10) || 'user.Expires = DateTime.Now.AddMinutes(4); //3', '代码行1错误', '代码行2错误', '代码行3错误', '所有代码行正确', 1333, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET中<%@  Register%>指令中，下列关于Src属性的描述正确的是（选一项）', 'Src属性是用户控件的路径', 'Src属性是用户控件的类名', 'Src为用户控件的名称', 'Src为用户控件的命名空间', 1334, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中为了保存用户的一个重要信息,最好使用以下()对象（选一项）', 'application', 'session', 'cookie', 'cache', 1335, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET中要掩盖TextBox控件中文本，需要将控件的TextMode属性设置为（选一项）', 'Password', 'MultiLine', 'SingleLine', 'Null', 1336, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET中执行如下代码，没有得到正确结果，原因是（选一项）' || chr(10) || 'public string Name{ get{ return"李小龙";}}' || chr(10) || '在Test.aspx页面中编写如下数据绑定表达式：<%#Name%>', '在Test.aspx中绑定方式不对，应该用<%= %>代替<%# %>', '属性定义错误', '应在Page_Load方法中加入Page.DataBind();', '以上答案都不对', 1337, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASPNET中，视图状态是通过以下(  )控件来实现的。（选一项）' || chr(10) || '', 'Input type = "text"', 'Input type=hidden"', 'Input type="image"' || chr(13) || '', 'Input type="file"', 1338, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在C#中,解析XML的类都存放在以下哪个命名空间中（选一项）', 'System.Xml', 'System.Xml.Schema', 'System.Xml.Xsl', 'System.Xml.XPath', 1339, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在DOM中，装载一个XML文档的方法（选一项）', 'Save方法', 'Load方法', 'LoadXML方法', 'Send方法', 1340, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在编写ASP.NET 页面时，若希望在每次页面载入时执行某个操作，则应将相应代码写入(  )事件处理程序中。（选一项）', '页面的Load', '页面的init', '页面的PreRender', '页面的Disposed 消息', 1341, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在一个ASP.NET应用程序的Global.Asax中，有以下的定义：' || chr(10) || 'protected void Application_Start(Object sender, EventArgs e)' || chr(10) || '{' || chr(10) || '    Application["count"] = 123;' || chr(10) || '}Application对象在页面也进行了引用，并且把count的小写改成了大写，代码如下：Response.Write(Application["COUNT"].ToString());  则程序运行到上面的代码行时，将（选一项）', '不出现错误，输出123', '不出现错误，但输出为0', '程序编译不能通过', '出现错误，表明为无对象实例，非法的NULL引用', 1342, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在一个ASP.NET中，要执行整个页面的有效性验证，使用以下的代码：' || chr(10) || 'void ValidateBtn_Click(Object Sender, EventArgs E) ' || chr(10) || '{  ' || chr(10) || '    //（1）此处填写正确的代码' || chr(10) || '    {      lblOutput.Text = "验证通过";  }  ' || chr(10) || '    else ' || chr(10) || '    {      lblOutput.Text = "验证未通过";  } ' || chr(10) || '}则（1）处的代码行应该为（选一项）', 'if (Page.Validate == true)', 'if (Page.IsValid == true)', 'if (Page.Validators == true)', 'if (Page.VerifyRenderingInServerForm == true)', 1343, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '使用jquery检查<input type="hidden" id="id" name="id" />元素在网页上是否存在。(选择一项）', 'if($("#id")) {   //do someing...    }', 'if($("#id").length > 0) {   //do someing...    }', 'if($("#id").length() > 0) {   //do someing...    }', ' if($("#id").size > 0) {   //do someing...    }', 1344, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<a href="xxx.jpg" title="温家宝出席学校...">新闻</a>,获取<a>元素title的属性值。（选择一项）', '$("a").attr("title").val();', '$("#a").attr("title");', '$("a").attr("title");', '$("a").attr("title").value;', 1345, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '执行下面语句' || chr(10) || ' $(document).ready(function(){' || chr(10) || '   $("#click").click(function(){' || chr(10) || '    alert("click one time");' || chr(10) || '   });' || chr(10) || '   $("#click").click(function(){' || chr(10) || '    alert("click two time");' || chr(10) || '   });' || chr(10) || '});' || chr(10) || '单击按钮<input type="button" id="click" value="点击我"/>，这个会有什么效果。' || chr(10) || '（选择一项）', '弹出一次对话框，显示click one time 。', '弹出一次对话框，显示click two time 。', '弹出两次对话框，依次显示click one time，click two time。', 'js编译错误。', 1346, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '页面中有一个select标签，代码如下：' || chr(10) || '<select id="sel">' || chr(10) || '    <option value="0">请选择</option>' || chr(10) || '    <option value="1">选项一</option>' || chr(10) || '    <option value="2">选项二</option>' || chr(10) || '    <option value="3">选项三</option>' || chr(10) || '    <option value="4">选项四</option>' || chr(10) || ' </select>，要使“选项四”选中的正确写法。' || chr(10) || '（选择一项）', '$("#sel").val("选项四"); ', '$("#sel").val("4");', '$("#sel > option:eq(4)").checked;', '$("#sel  option:eq(4)").attr("selected");', 1347, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在页面中有一个ul元素，代码如下：' || chr(10) || '<ul>' || chr(10) || '   <li title=''苹果''>苹果</li>' || chr(10) || '   <li title=''橘子''>橘子</li>' || chr(10) || '   <li title=''菠萝''>菠萝</li>' || chr(10) || '</ul>，下面对节点的操作哪一个说法不正确。' || chr(10) || '（选择一项）', 'var $li = $("<li title=''香蕉''>香蕉</ii>"); 是创建节点。', '$("ul").append($("<li title=''香蕉''>香蕉</ii>")); 是给ul追加节点。', '$("ul  li:eq(1)").remove();是删除ul下“橘子“那个节点。', '以上说法都不对', 1348, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '页面有一个<input type="text" id="name"  name="name" value=""/>元素，动态设置该元素的值。正确的选项是。（选择一项）', '$("#name").val("动态设值");', '$("#name").text("动态设值");', '$("#name").html("动态设值");', '$("#name").value("动态设值");', 1349, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面说法不正确的是（选择一项）', '$(":hidden")选取<input>的type类型是hidden的不可见元素。', '$("div >span")选取<div>元素下元素名是<span>的子元素。', '$("div :first")选取所有<div>元素中第一个<div>元素。', '$("input:gt(1)")选取索引值大于1的<input>元素。', 1350, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面说法不正确的是 （选择一项）', '$("input:checked")选取所有被选中的<input>元素', '$("#form:disabled")选取id为form的表单内的所有不可用元素', '$("#name").is(":visible")是判断id为name的元素的可见性', '$("div ").addClass("background","url(img/up.gif) ")是设置样式的', 1351, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在一个ASPNET开发的图书销售系统中，有一个Web窗体，窗体中有个名为DropDownListBookName的DropDownList控件以及一个名为btnGetBookName的Button控件，在btnGetBookName控件的Click事件中如下代码:' || chr(10) || 'private void GetBookName_Click(object sender,System.EventArgs e)' || chr(10) || '{' || chr(10) || 'string [] bookName = {"CSharp高级应用程序开发上","CSharp高级应用程序开发中","CSharp高级应用程序开发下"};' || chr(10) || 'ArrayList bookNameArr = new ArrayList();' || chr(10) || 'for(int i=0; i<bookName.Length; i++ )' || chr(10) || '{' || chr(10) || '    bookNameArr.Add(bookName[i].Replace("中","下"));' || chr(10) || '}' || chr(10) || 'this.DropDownListBookName.DataSource = bookNameArr;' || chr(10) || '}该Web窗体启动后，当用户点击btnGetBookName控件后，下列说法正确的是（选一项）', '在DropDownListBookName控件中Items集合中有两项，分别为"CSharp高级应用程序开发上"、"CSharp高级应用程序开发下"', '在DropDownListBookName控件中Items集合中有三项，分别为"CSharp高级应用程序开发上"、"CSharp高级应用程序开发中"、"CSharp高级应用程序开发下"', '在DropDownListBookName没有任何项，因为没有调用DropDownListBookName控件的DataBind方法', '如果在this.DropDownListBookName.DataBind();则在DropDownListBookName控件中Items集合中有两项，分别为"CSharp高级应用程序开发上"、"CSharp高级应用程序开发下"', 1352, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在一个ASPX页面的Page_Load事件中，编写了如下代码，则执行该页面后，将在页面中输出（选一项）' || chr(10) || 'private void Page_Load(object sender,System.EventArgs e)' || chr(10) || '{  ' || chr(10) || '    Response.Write("欢迎光临");' || chr(10) || '    Response.End();' || chr(10) || '    Response.Write("欢迎下次光临");' || chr(10) || '}', '欢迎光临', '欢迎下次光临', '欢迎光临        欢迎下次光临', '欢迎光临欢迎下次光临', 1353, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在一个ASPX页面中有一个HyperLink控件,该控件的Target属性为"_blank",NavigateUrl属性为"http://www.baidu.com", 当用户单击该控件后，下列说法正确的是（选择一项）', '当前窗体将变为空白页', '将打开一个新的空白页窗体', '在当前页面打开"http://www.baidu.com"网址对应的网页', '在一个新的窗体中打开"http://www.baidu.com"网址对应的网页', 1354, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在一购物车的ASP.NET应用程序中，若使用以下的代码来存储当前会话的口令信息：Session["pp"]=txtPwd.Text;则该代码在执行时将（选一项）', '报告错误信息，提示NULL引用', '报告错误信息，应该使用Session["Password"]来进行标识', '不报告错误信息，但是存储的口令信息永远为空', '正常运行', 1355, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '“Duration=3”代表页面缓存的时间是（选一项）', '3小时', '3分钟', '3秒钟', '3天', 1356, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '<credentials> 有一个属性passwordFormat，下列哪个不可能是该属性的值（选一项）', 'None', 'Clear', 'SHA1', 'MD5', 1357, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ASP.NET的缓存不包括（选一项）', '页面输出缓存', '相对缓存', '应用程序数据缓存', '页面部分缓存', 1358, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ASP.NET中，将方法前加上(  )属性来标记该方法支持Web访问。（选一项）', '[Serializable]', '[Formatable]', '[WebMethod]', '[STAThread]', 1359, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'SOAP的全称是（选一项）', 'Simple Object Address Protocol', 'Simple Object Access Protocol', 'Simple Object Address process', 'Simple Object Access process', 1360, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'WebService的基本通信协议是（选一项）', 'DCOM', 'SOAP', 'CORBA', 'UDP', 1361, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'WebService文件的扩展名是（选一项）', 'aspx', 'ascx', 'asmx', 'ashx', 1362, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'WebPartManager部件在一个ASPX页面中可以有多少个（选一个）', '1', '2', '3', '任意', 1363, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '角色管理类Roles不能完成的功能是（选一项）', '把用户加入角色', '把用户从角色删除', '查找某个角色的用户', '重置某角色所有用户的登录密码', 1364, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '你们使用SQLServer2005来存储新闻信息，不同时间段的信息在某段时间内经常被访问，因而，查询的结果集在一些时间内对Internet用户是完全相同的，为提高页面的访问速度，你想使用ASP.NET的缓存机制来缓存这些结果集，此时应该使用（）类型的缓存机制。（选一项）', '临时缓存', '页面缓存', '数据缓存', '数据库缓存', 1365, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '您创建了一个ASP.NET应用程序，这个应用程序调用一个Xml Web Service。这个Xml Web Service将返回一个包含了公司雇员列表的DataSet对象。请选择该如何在这个程序中使用这个Xml Web Service（选一项）', '在"引用"对话框的.Net标签中选择System.Web.Services.dll', '在"Web引用"对话框中输入这个XML Web service的地址', '在Global.asax.cs中添加一条using语句并指定这个XML Web service的地址', '在Global.asax.cs中写一个事件处理器导入这个Xml Web Service相应的.wsdl和.disco文件', 1366, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '判断是否为匿名用户要使用以下Profile的哪个属性（选一项）', 'IsDirty', 'IsOnline', 'IsSynchronized', 'IsAnonymous', 1367, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '启用ASP.NET个性化需要配置哪个配置节（选一项）', 'Authentication', 'SessionState', 'Profile', 'MemberShip', 1368, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '使用Cookie进行身份验证的类型称为（）身份验证（选一项）', 'windows', 'passport', 'forms', 'none', 1369, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列关于WebService的描述不正确的是（选一项）', 'XML是Web Service表示数据的基本格式。', 'XSD为Web Service的数据类型系统', 'SOAP规范定义了Web Service消息传递的机制', 'Web Service采用IDL语言来描述Web Service对外提供的接口', 1370, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列关于WSDL的描述错误的是（选一项）', 'WSDL是Web服务描述语言', 'WSDL是一种用于描述Web服务或者网络端点的基于XML的语言', 'WSDL是微软开发的Web服务描述语言，它只支持Windows平台', '在Visual Studio.NET开发环境中，将自动生成WSDL文件，无需手工操作', 1371, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列关于模块(HttpModule)和处理程序(HttpHandler)的说法中,正确的是（选一项）', 'HTTP请求的处理过程中，只能调用一个HttpHandler和一个HttpModule', '模块不执行任何操作,处理程序才是最终的执行', '处理程序和模块一一对应,每次请求都只有一个处理程序和模块最终参与处理', '请求到达处理之前,可能会被某模块抛弃', 1372, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列哪些不是WebPart部件支持的模式（选一项）', '编辑模式', '通讯模式', '设计模式', '目录模式', 1373, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列哪些不属于用户管理控件（选一项）', 'LoginOut', 'LoginName', 'LoginStatus', 'LoginView', 1374, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列哪一个内置对象用来实现应用程序数据缓存（选一项）', 'Session', 'Application', 'Page', 'Cache', 1375, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面为定义WebService的部分代码，阅读下面代码：' || chr(10) || 'public class SvrAdd : System.Web.Services.WebService  ' || chr(10) || '{    ' || chr(10) || '    public SvrAdd ()    ' || chr(10) || '    {     InitializeComponent();     }    ' || chr(10) || '    public int Add(int x,int y)    ' || chr(10) || '    {     return (x+y);     } ' || chr(10) || '}关于上述代码的说法正确的是（选一项）', '代码中定义的Web Service提供了一个"Add" Web服务，该服务用于对两个数相加', '因为该Web 服务SvrAdd提供了组件初始化的功能，因此必须在服务的其他请求之前进行调用', '代码中有两个public作用域的方法，该Web Service提供了两个Web服务', '代码中没有提供Web 服务', 1376, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下不能在应用程序缓存中成功添加缓存项的是（选一项）', 'Cache["cache1"]="Hello SVSE"', 'Cache.Insert("cache1", "SVSE")', 'Cache.Insert("cache1", "SVSE", null)', 'Cache.Add("cache1", "SVSE")', 1377, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下关于[WebMethod]的描述错误的是（选一项）', '它是一个特性', '它表示它下面的方法是Web服务方法', '它下面的方法，其参数和返回值类型都是固定的', '一个Web Service文件可以有多个[WebMethod]', 1378, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下关于Substitution控件的描述不正确的是（选一项）', '它用来缓存页面中需要缓存的部分。', '它用来替换页面中不需要缓存的部分。', '该控件MethodName属性调用的方法修饰符和返回类型是固定的。', '该控件MethodName属性调用的方法参数类型是固定的。', 1379, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下关于WebService的描述错误的是（选一项）', '使用Web Service可 进行穿越防火墙的通信', 'Web Service描述语言WSDL是XML格式的文件', '我们测试Web Service的返回结果为XML格式文件', '我们不可能调用其他网站，如新浪网上发布的Web Service', 1380, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下关于调用WebService的描述错误的是（选一项）', '需要添加Web引用', '需要实例化Web Service类', '可以实现跨项目调用，但是不能实现异地调用', '为了让异地程序调用我们的Web Service发布出去', 1381, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下关于整页缓存的@OutputCache指令声明，错误的是（选一项）', '<%@ OutputCache VarybyParam="id;name" VaryByControl="None"%>', '<%@ OutputCache Duration="5" VaryByParam="id;name" %>', '<%@ OutputCache Duration="5" VaryByControl="None" %>', '<%@ OutputCache Duration="5" VaryByParam="id;name" VaryByControl="None"%>', 1382, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下属于页面部分缓存的是（选一项）', '整页缓存', '缓存后替换', '应用程序数据缓存', '使用Substitution控件', 1383, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中，使用页面缓存，可以提高（选一项）', '页面显示的图形效果', '页面加载的速度', '应用程序的安全性', '节约操作系统得内存资源', 1384, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET中管理注册用户的类是（选一项）', 'MemberShip', 'MembershipUser', 'Roles', 'Member', 1385, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在实现Web服务的.asmx文件中将方法暴露给浏览器的语句是（选一项）', 'WebMethod', 'Function', 'Method', 'Main', 1386, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '（ ）控件允许用户直接点击页面中的电话号码就能自动拨号', 'PhoneCall', 'DeviceSpecific', 'Link', 'AdRotator', 1387, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('undefined', '.NET Compact Framework 包含哪2个组件（ ）', '公共语言运行库 CLR', '.NET Compact Framework 类库 FCL', 'IrDA', 'JIT', 1388, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Notification 除了能够显示纯文本之外，还可以在消息气球中创建（   ） 内容的用户通知。', 'XML', '文本', 'HTML', 'C#', 1389, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '复合控件继承的是以下哪个类(  )', 'UserControl', '已经存在的控件类型', 'Control', 'Page', 1390, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于RDA 多用户的访问，下列说法正确的是（ ）', 'RDA 不允许其他用户在前一个用户Push 之前，Pull 同一个表', 'SQL Server Mobile 正在更新一条已经被其他用户删除的记录，这时，RDA 会自动将新的数据添加到SQL Server 数据库服务器中', '执行Push 操作时，在SQL Server Mobile 数据库中插入的记录主键在SQL Server 数据表中已经存在，RDA 会出现错误', '以上说法都错误', 1391, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于Replication 和 RDA 的特点，下列说法错误的是（ ）', '相对于RDA 方法，Replication 提供了更加完善的数据同步机制', 'Replication 比RDA 更适合多个用户、多次同步数据的应用程序', '同步期间，Replication 内存使用量比RDA 要小', 'Replication 比RDA 有更加完善的冲突解决机制', 1392, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '使用RDA 对数据库进行操作，以下说法正确的是（ ）', '在移动设备上对数据进行修改，是直接修改的SQL Server 数据库服务器上的数据', '在移动设备上对数据进行修改，是修改的SQL Server Mobile 本地数据中的是护具，并没有直接修改数据库服务器上的数据', '使用RDA 对数据库进行操作，不能将修改后的数据返回给数据库服务器', '使用RDA 对数据库进行操作，可以同时对多个表进行操作', 1393, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列不被.NET Compact Framework 所支持的控件是（ ）', 'StatusBar', 'TabControl', 'TreeView', 'ReportViewer', 1394, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列选项中，不属于ActiveSync 的作用是（ ）', '向设备/模拟器中复制文件。', '从设备/模拟器中删除文件。', '与设备/模拟器同步数据。', '连接蓝牙', 1395, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '要实现自绘控件，必须重写（   ）方法来实现。', 'OnDraw', 'OnPaint', 'Paint', 'Draw', 1396, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '页面设计时，使用链接控件连接到多个Form 中的一个时，在链接地址前加上一个（ ）符号', '*', '＆', '#', '~', 1397, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '移动设备的安装程序文件的扩展名是（ ）', 'exe', 'xml', 'cab', 'bat', 1398, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下说法正确的是（ ）', '使用RDA 对数据库进行查询时，可以使用 * 号，表示所有字段', 'SQL Server Mobile 可以使用触发器。', '当用户对从数据库Pull 到本地的表增加了一个字段，在调用Push 方法时，可以正常执行', '当用户对从数据库Pull 到本地的表增加了一个索引，在调用Push 方法时，可以正常执行', 1399, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪一种不属于Jquery的选择器。(选择一项）', '基本选择器', '层次选择器', '表单选择器', '节点选择器', 1400, 326);
commit;
prompt 1400 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET中，下列关于Session对象的说法正确的是（选一项）', '用户每次打开一个Web页面，将会创建一个Session对象', '用户关闭客户端Web页面后，Session对象将立刻消失', '应用程序退出后，Session对象的值才能消失', '每个用户的Session对象不能被其他用户访问', 1401, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中，下列关于Session对象与Application对象的比较，说法正确的是（选一项）', '在一个页面中定义的Session变量不能在其他页面访问，在一个页面中定义Application变量能在其他页面访问', '在一个页面中定义的Application变量不能在其他页面访问，在一个页面中定义Session变量能在其他页面访问', '对应于每个用户分别创建一个Session对象，对应于每个应用程序创建一个Application对象', '对应于每个用户分别创建一个Application对象，对应于每个应用程序创建一个Session对象', 1402, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET中，下列关于列表控件的DataSource属性的描述错误的是（选一项）', 'DataSource属性与数据绑定相关', '列表控件的数据源类型可以是数据列表', '列表控件的数据源类型可以是数据视图也可以是哈希表', 'DataSource用于数据绑定时对数据行进行筛选', 1403, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET中，下列关于用户控件的描述正确的是（选一项）', '扩展名为.ascx或者.ocx', '用户控件可以包含<HTML>元素或者<BODY>元素', '用户控件与Html页面没有差别，是由HTML元素和代码组成的', '用户控件不可以包含<FORM>元素', 1404, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET中，下列能够正确声明一个Button   Web服务器控件的是（选一项）', '<asp:Button id=Button1 runat="server" Text="Button"></asp:Button>', '<asp:Button id=Button1 runat="c#" Text="Button"></asp:Button>', '<asp:Button id=Buttonl Text="Button"></asp:Button>', '<INPUT type=button value=Button>', 1405, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '在ASP.NET中，下列为加载XML文档的代码，正确的是（选两项）', 'XmlDocument MyXml = new XmlDocument();MyXml.Load (Server.MapPath ("Test.xml") );lblXmlData.Text = MyXml.InnerXml.ToString();', 'XmlDocument MyXml = new XmlDocument();MyXml.LoadXml (Server.Path ("Test.xml") );lblXmlData.Text = MyXml.InnerXml.ToString();', 'XmlDocument MyXml = new XmlDocument();string xmlStr =  "<PhoneBook>"+ "<Name>SVSE</Name>"+ "<Number>5555555</Number>"+ "</PhoneBook>";MyPhone.LoadXml( xmlString );lblXmlData.Text = MyXml.InnerXml.ToString();', 'XmlDocument MyXml = new XmlDocument();XmlTextReader reader = new XmlTextReader("Test.xml");reader.Read();MyXml.Load(reader);lblXmlData.Text = MyXml.InnerXml.ToString();', 1406, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中，下列在ASPX页面中使用错误的指令是（选一项）', '<%@Assembly Name = "System"%>', '<%@Assembly Src="C:\WINDOWS\Microsoft.NET\Framework\v1.1.4322\System.dll"%>', '<%@Implements Name = "System" %>', '<%@Implements interface = "System"%>', 1407, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中，下面（）方式可以读取一个XML 文件到内存中。（选一项）', 'XmlTextReader xmlTextReader = new XmlTextReader();    xmlTextReader.Read("c:\\test.xml");', 'XmlTextReader xmlTextReader = new XmlTextReader("c:\\test.xml");    xmlTextReader.Read();', 'XmlDocument xmlDocument = new XmlDocument();    xmlDocument.Load("c:\\test.xml")', 'XmlDocument xmlDocument = new XmlDocument("c:\\test.xml");', 1408, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET中，下面说法正确的是（选一项）', 'Machine.cofing用来保存ASP.NET的整个站点服务器配置信息', 'Web.Config用来保存一个站点信息的配置信息', '更改Web.Config，ASP.NET应用程序的Session会完全失效', '以上说法都正确', 1409, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET中，现有一个表dt1，它只有一个字段name，想用DataList进行数据绑定，则在html视图中应该用的绑定脚本为（选一项）', '<%@ Eval("dt1")%>', '<%# Eval("dt1")%>', '<%= Eval("name")%>', '<%# Eval("name")%>', 1410, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中，要获取访问者的IP地址（选一项）', '需要Response对象', '需要Request对象', '使用Request对象或Response对象都可以', 'Request对象和Response对象都不可以', 1411, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中，已知sqlCon是一个SqlConnection对象，sqlCom是一个SqlCommand对象，下列代码能够正确创建一个SqlTransaction对象的是（选一项）', 'SqlTransaction tran = new SqlTransaction();', 'SqlTransaction tran = sqlCon.BeginTransaction();', 'SqlTransaction tran = sqlcom.BeginTransaction();', 'SqlTransaction tran = sqlCon.CreateTransaction();', 1412, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中，已知xtw是一个已创建好的XmlTextWriter对象，则下列代码在文件中创建的节点是（选一项）' || chr(10) || 'xtw.WriteStartElement("Person");' || chr(10) || 'xtw.WriteStartElement("Coutry");' || chr(10) || 'xtw.WriteString("中国");' || chr(10) || 'xtw.WriteEndElement();', '<Person><Coutry></Coutry>中国</Person>', '<Person><Coutry>中国</Coutry></Person>', '<Person></Person><Coutry>中国</Coutry>', '<Person>中国</Person><Coutry></Coutry>', 1413, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '在ASP.NET中，已知一个RegularExpressionValidator控件的ValidationExpress属性为"^[a-z0-9]{3,5}$"，则在RegularExpressionValidator控件所验证的TextBox控件中输入不合法的是（选两项）', '12345', 'abcde', 'abc123', '123abc', 1414, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中，在加载页面时，使用（ ）属性检查是否为首次处理此页面。（选一项）', 'Page.Control', 'Page.IsValid', 'Page.IsPostBack', 'Page.Cache', 1415, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '在ASP.NET中，在一注册页面为了验证用户输入的用户名必须是六个英文字母，你认为最可能需要使用下列（）验证控件对其进行验证。（选两项）', 'RequiredFieldValidator', 'CompareValidator', 'RangeValidator', 'RegularExpressionValidator', 1416, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中，执行以下代码时，将在页面显示（）。（选一项）           Response.Write(Server.HtmlEnCode("<H>SVSE</H>"));', 'SVSE', '<H>SVSE</H>', '<H></H>', '不显示任何信息', 1417, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列的查询语句哪一项是错误的（选一项）', 'Select  *  from  stumarks where score>=60', 'Select * from (select * from stumarks where score>=60)', 'Select * from (select * from stumarks where score>=60) as temp', 'Select * from (select * from stumarks ) as temp where score>=60', 1418, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在关于DataSet和DataTable的以下描述中，选出正确的答案（选一项）', '同一个DataTable可以属于多个DataSet', '数据集中的数据表名称是区分大小写的，ds.Tables("Employees")和ds.Tables("employees")不是同一个表', '如果数据集中只有一个数据表，则该表的名称是大小写无关的', '即使数据集中只有一个数据表，该表的名称也要区分大小写', 1419, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '查找authors表中的所有电话号码的首位为4，第二位为0或1的电话号码（选一项）', 'SELECT phone FROM authors WHERE phone LIKE ''4[1,0]%''', 'SELECT phone FROM authors WHERE phone in ''4[^10]%''', 'SELECT phone FROM authors WHERE phone LIKE ''4_[1,0]%''', 'SELECT phone FROM authors WHERE phone between ''41%'' and ''40%''', 1420, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '从货物订单数据表（order）中查询出其中订单金额（order_price）在1000和5000之间的订单的详细信息，并按照订单金额（order_price）升序排列。正确的语句是（选一项）', 'select * from order where order_price between 1000 and 5000 order by order_price ASC', 'select * from order where order_price between 1000 and 5000 order by order_price DESC', 'select * from order where 1000<order_price<5000 order by order_price ASC', 'select * from order where 1000<order_price<5000 order by order_price DESC', 1421, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '家庭住址最好采用（）数据类型进行存储。（选一项）', 'Char/Nchar', 'text/Ntext', 'Varchar/Nvarchar', 'Char2/Nchar2', 1422, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '现有表user，字段：userid，username, salary, deptid，email; 表department，字段：deptid, deptname;下面(  )应采用检查约束来实现。（选一项）', '若department中不存在deptid为2的纪录，则不允许在user表中插入deptid为2的数据行。', '若user表中已经存在userid为10的记录，则不允许在user表中再次插入userid为10的数据行。', 'User表中的salary(薪水)值必须在1000元以上。', '若User表的email列允许为空，则向user表中插入数据时， 可以不输入email值。', 1423, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '在SQL Server 2005中,查找 student 表中所有身份证号码CardNo 的前三位为010或020的记录,以下语句正确的是（选两项）', 'select * from student where cardno like ''010%'' or cardno like ''020%''', 'select * from student where cardno like ''010%'' or ''020%''', 'select * from student where cardno like ''0[1,2]0%''', 'select * from student where cardno like ''0(1,2)0%''', 1424, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '学生成绩表grade中有字段score(float),现在要把所有在55分至60(包含两个边界值)之间的分数提高5分，以下SQL语句正确的是（选一项）', 'Update grade set score=score+5', 'Update grade set score=score+5 where score>=55 or score <=60', 'Update grade set score=score+5 where score between 55 and 60', 'Update grade set score=score+5 where score <=55 and score >=60', 1425, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Pub数据库中，按“type”分组titles表中的行，并且消除不是以字母P开头的那些“type”,下列正确的SQL语句是（选一项）', 'Select type from titles where type like ''%p'' group by type', 'Select type from titles group by type having type not like ''P%''', 'Select type from titles group by type having type like ‘p%’', 'Select type from titles where type like ‘p%’ group by type', 1426, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在SQL Server 2005中，假定grade(成绩)表中包含字段：eID(班级编号)、lang(语文课成绩)、math(数学课成绩)、eng(英语课成绩)，那么计算不同班级几门课程的平均成绩的SQL语句是（选一项）', 'SELECT eID, AVG(lang,math,eng) FROM grade GROUP BY lang,math,eng', 'SELECT Eid, AVG(lang),AVG(math),AVG(eng) FROM grade GROUP BY lang,math,eng', 'SELECT eID, AVG(lang,math,eng) FROM grade GROUP BY eID', 'SELECT eID,AVG(lang),AVG(math),AVG(eng) FROM grade GROUP BY eID', 1427, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下关于外键和相应的主键之间的关系，正确的是（选一项）', '外键并不一定要与相应的主键同名', '外键一定要与相应的主键同名', '外键一定要与相应的主键同名而且唯一', '外键一定要与相应的主键同名，但并不一定唯一', 1428, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '阅读下面T-SQL代码：' || chr(10) || 'USE master' || chr(10) || 'GO' || chr(10) || 'CREATE DATEBASE MyDB2' || chr(10) || 'ON' || chr(10) || '(' || chr(10) || '……;' || chr(10) || 'SIZE=2.' || chr(10) || 'MAXSIZE=5.' || chr(10) || 'FILEGROWTH=1' || chr(10) || ')' || chr(10) || 'GO' || chr(10) || '以下说法正确的是（选一项）', '创建成功，数据文件的初始大小为50KB，最大允许增加到1000KB', '创建成功，数据文件每次增长以1M作为单位', '创建失败，因为必须至少要指定数据文件所在的物理文件的位置', '创建失败，因为必须要指定数据库的日志文件名称', 1429, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于触发器和约束，以下说法错误的是（选一项）', '触发器可以支持约束的所有功能。', 'Check约束不能跟据另一个表中的列验证列值。', '最好在约束所支持的功能无法满足应用程序的需求时，再使用触发器。', '在维持数据完整性时，要使用标准的系统错误信息，必须使用触发器。', 1430, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SQL Server 2005中，有一个product(产品)表，包含字段：pname(产品名称)，要从此表中筛选出产品名称为“苹果”或者“香蕉”的记录，下列语句正确的是（选一项）', 'SELECT * FROM product ON pname= ''苹果'' OR pname=''香蕉''', 'SELECT * FROM product ON pname=  ''苹果'' AND pname=''香蕉''', 'SELECT * FROM product WHERE pname=  ''苹果'' OR pname=''香蕉''', 'SELECT * FROM product WHERE pname=  ''苹果'' AND pname=''香蕉''', 1431, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SQL Server系统中的所有服务器级系统信息存储于哪个数据库（选一项）', 'master' || chr(13) || '', 'model' || chr(13) || '', 'tempdb' || chr(13) || '', 'msdb' || chr(13) || '', 1432, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '命令SELECT 学号，AVG(成绩) AS ''平均成绩'' FROM XS_KC GROUP BY 学号 HAVING AVG(成绩)>=85，表示（选一项）', '查找XS_KC表中平均成绩在85分以上的学生的学号和平均成绩', '查找平均成绩在85分以上的学生', '查找XS_KC表中各科成绩在85分以上的学生', '查找XS_KC表中各科成绩在85分以上的学生的学号和平均成绩', 1433, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在SQL SERVER服务器上，存储过程是一组预先定义并(  )的Transact-SQL语句。（选一项）', '保存', '编译', '解释', '编写', 1434, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '现有订单表orders, 包含数据如下表。若查询既订购了产品P01，又订购了产品P02的顾客编号，可以执行以下(  )sql语句（选一项）' || chr(10) || 'cid (顾客编号)    Pid (产品编号)' || chr(10) || 'C01               P01' || chr(10) || 'C01               P02' || chr(10) || 'C02               P01' || chr(10) || 'C03               P02', 'select distinct(cid) from orders o1 where o1.pid in (''p01'',''p02'')', 'select distinct(cid) from orders o1 where o1.pid=''p01'' and o1.pid=''p02''', 'select distinct(cid) from orders o1 where pid=''p01'' and exists (select * from orders where pid =''p02'' and cid=o1.cid)', 'select distinct(cid) from orders o1,orders o2 where o1.pid=''p01'' and o2.pid=''p02''', 1435, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SQL Server2005中，与下列T – SQL语句等效的语句为（选一项）' || chr(10) || 'UPDATE A SET A1 = A1 * 2 WHERE A2 IN （SELECT A2 FROM B WHERE B1 = 2）', 'UPDATE A SET A1 = A1 * 2 INNER JOIN B' || chr(10) || ' ON B . B1 = 2', 'UPDATE A SET A1 = A1 * 2 FROM A INNER JOIN B' || chr(10) || ' ON B . B1 = 2', 'UPDATE A SET A1 = A1 * 2 WHERE A INNER JOIN B' || chr(10) || ' ON A . A2 = B . A2 AND B . B1 = 2', 'UPDATE A SET A1 = A1 * 2 FROM A INNER JOIN B' || chr(10) || '  ON A . A2 = B . A2 AND B . B1 = 2', 1436, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '关于3范式的理论下列说法错误的是（选两项）', '1NF的要求是：关系中的每个属性必须是不可再分的简单项', '任何表都满足1NF', '2NF的要求是：在满足1NF的基础上，除了主健以外的列都依赖于主健', '3NF的要求是：在满足2NF的基础上，除了主健以外的列都直接依赖于主健', 1437, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于游标，下列说法正确的是（选一项）', '定义只进游标的关键字是forward_only，它只能向前读记录，读完后就没用了，因为它不能回去，要想再次遍历只能重新定义一个新的', '游标的定义必须依托于某个查询，如果该查询的结果为0，则游标无法定义', 'fetch next可以提取下一行，且超过末行后会自动转到第一行', '在游标未到达末行前，fetch relative 1和fetch next的效果完全一样', 1438, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '假设有表scores的设计如下：ID(编号，主键),StudentID(学生编号),CourseID(课程编号),Score(分数).现在要查询参加过至少两门课程考试的学生的各门课程的平均成绩。以下sql语句正确的是（选一项）', 'Select studentID, avg(score) from scores group by studentID having count(studentID)>1', 'Select studentID, avg(score) from scores group by studentID where count(studentID)>1', 'Select studentID, avg(score) from scores where count(studentID)>1 group by studentID', 'Select studentID, avg(score) from scores having count(studentID)>1', 1439, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'public class MyClass1{' || chr(10) || '' || chr(9) || 'public static void main (String argv[]){}' || chr(10) || '' || chr(9) || '_____ class MyInner {}' || chr(10) || '}' || chr(10) || '在以上java代码中的横线上，不可放置（）修饰符。（选一项）', 'public', 'private', 'static', 'friend', 1440, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '接口的定义如下：' || chr(10) || 'interface A {' || chr(10) || '    int method1(int i);' || chr(10) || '    int method2(int j);' || chr(10) || '}' || chr(10) || '类B实现了接口A，以下(  )是正确的。（选一项）', 'class B implements A {' || chr(13) || 'int method1() { }' || chr(13) || 'int method2() { }' || chr(13) || '}', 'class B {' || chr(13) || 'int method1(int i) { }' || chr(13) || 'int method2(int j) { }' || chr(13) || '}', 'class B implements A {' || chr(13) || 'int method1(int i) { }' || chr(13) || 'int method2(int j) { }' || chr(13) || '}', 'class B extends A {' || chr(13) || 'int method1(int i) { }' || chr(13) || 'int method2(int j) { }' || chr(13) || '}', 1441, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Java中，根据你的理解，下列方法(  )不可能是类Orange的构造方法。（选一项）', 'Orange(){…}', 'Orange(…)｛…｝', 'public void Orange(){…}', 'public Orange(){…}', 1442, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Java中，已定义两个接口B和C，要定义一个实现这两个接口的类，以下语句正确的是（选一项）', 'interface A extends B,C', 'interface A implements B,C', 'class A implements B,C', 'class A implements B, implements C', 1443, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在C#中，关于Array和ArrayList的维数，以下说法正确的是（选一项）', 'Array可以有多维，而ArrayList只能是一维', 'Array只能是一维，而 ArrayList可以有多维', 'Array和 ArrayList 都只能是一维', 'Array和ArrayList都可以是多维', 1444, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'JSP EL 表达式：${user.loginName}执行效果等同于（选一项）', '<%=user.getLoginName()%>', '<%user.getLoginName();%>', '<%=user.loginName%>', '<% user.loginName;%>', 1445, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于Web应用程序在Web服务器中的部署，正确的说法是（选一项）', '每个部署到Tomcat服务器的Web 应用，都自动会被服务器压缩成WAR格式。', '每个部署到Tomcat服务器的Web 应用，都自动会被服务器编译成一个class文件。', 'Tomcat 的所有Web应用都必须部署在<Tomcat安装目录>\Server目录下', '所有web服务器的Web应用程序目录结构是类似的。', 1446, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'JSP中的(  )隐式对象表示Servlet类的实例。（选一项）', 'request', 'reponse', 'page', 'session', 1447, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '按照J2SE规范，在Web应用的内部目录结构中，位于(  )的文件是对客户可见的资源（选一项）', 'Web应用根目录', 'Web应用WEB-INF子目录。', 'Web应用WEB-CONFIG子目录', 'Web应用META-INF子目录', 1448, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在软件测试技术中，SQA指（选一项）', '软件测试', '软件质量保证', '数据库', '标准查询语言', 1449, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '关于在Web应用中与一个Servlet 关联的过滤器类数量，正确的说法是（选两项）', '可以为一个Servlet 部署多个过滤器。', '可以为多个Servlet部署同一个过滤器。', '每个Servlet必须至少有一个过滤器。', '每个过滤器类必须部署到至少一个Servlet', 1450, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪项是错误的设置Bean属性值的方法（选一项）', '<jsp:setProperty name="beanInstanceName" property= "*" />', '<jsp:setProperty name="beanInstanceName" property="propertyName"/>', '<jsp:setProperty name="beanInstanceName" property="propertyName" param="parameterName" />', '<jsp:setProperty name="beanInstanceName" property="*" value="{string | <%= expression %>}"/>', 1451, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在JSP中，对＜jsp:setProperty＞标记描述正确的是（选一项）', '<jsp:setProperty>和<jsp:getProPerty>必须在一个JSP文件中搭配出现', '就如同session.setAttribute()一样，来设计属性/值对', '和<jsp:useBean>动作一起使用，来设置bean的属性值', '就如同request.setAttribute()一样，来设置属性／值对', 1452, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '自定义标签中，如果要声明标签参数为必须的，则需要进行哪种配置（选一项）', '<required>true</required>', '<rtexprvalue>true</rtexprvalue>', '<required>false</required>', '<rtexprvalue>false</rtexprvalue>', 1453, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '分析如下的XML文档实例：' || chr(10) || '<!xml version="1.0" encoding="GB2312"?>' || chr(10) || '<学生名册>' || chr(10) || ' <学生 学号="1">' || chr(10) || '  <姓名>张三</姓名>' || chr(10) || '  <性别>男</性别>' || chr(10) || '</学生>' || chr(10) || '<学生 学号="2">' || chr(10) || '  <姓名>李四</姓名>' || chr(10) || '  <性别>女</性别>' || chr(10) || '</学生>' || chr(10) || '</学生名册>' || chr(10) || '下面的DTD文档中，能够最恰当的定义该XML文档是（选一项）', '<!ELEMENT 学生名册 （学生？）>' || chr(13) || '' || chr(10) || '<!ELEMENT 学生（姓名，性别）>' || chr(13) || '' || chr(10) || '<!ELEMENT 姓名 （#PCDATA）>' || chr(13) || '' || chr(10) || '<!ELEMENT 性别 （#PCDATA）>' || chr(13) || '' || chr(10) || '<!ATTLIST  学生 学号  (1|2|3)  #REQUIRED>', '<!ELEMENT 学生名册 （学生 ）>' || chr(13) || '' || chr(10) || '<!ELEMENT 学生（姓名，性别）>' || chr(13) || '' || chr(10) || '<!ELEMENT 姓名 （#PCDATA）>' || chr(13) || '' || chr(10) || '<!ELEMENT 性别 （#PCDATA）>' || chr(13) || '' || chr(10) || '<!ATTLIST  学生 学号 CDATA #REQUIRED>', '<!ELEMENT 学生名册 （学生 ）>' || chr(13) || '' || chr(10) || '<!ELEMENT 学生（姓名，性别）>' || chr(13) || '' || chr(10) || '<!ELEMENT 姓名 （#PCDATA）>' || chr(13) || '' || chr(10) || '<!ELEMENT 性别 （#PCDATA）>' || chr(13) || '' || chr(10) || '<!ATTLIST  学生 学号 ID #REQUIRED>', '<!ELEMENT 学生名册 （学生？）>' || chr(13) || '' || chr(10) || '<!ELEMENT 学生（姓名，性别）>' || chr(13) || '' || chr(10) || '<!ELEMENT 姓名 （#PCDATA）>' || chr(13) || '' || chr(10) || '<!ELEMENT 性别 （#PCDATA）>' || chr(13) || '' || chr(10) || '<!ATTLIST  学生 学号CDATA  #REQUIRED>', 1454, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Eclipse开发环境中,网页文件放在以下哪个目录中（选一项）', '工程下', 'WEB-INF', 'WebRoot', 'classes', 1455, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于系统测试，下列说法错误的是（选一项）', '主要测试系统是否符合“需求规格说明书”', '一般由独立测试小组采用黑盒方式来测试', '验收测试与系统测试很相似，主要区别是测试人员不同，验收测试由用户执行', '在规范化数据库中，易于维护数据完整性', 1456, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '用JavaScript设置页面背景色为蓝色，正确的代码是（选一项）', 'document.bgcolor=blue;', 'document.BgColor="blue";', 'document.bgColor="blue";', 'document.bgColor=blue;', 1457, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在某一页面下载时，要自动显示出另一页面，可通过在<body>中使用下边的哪一事件来完成（选一项）', 'onload', 'onunload', 'onclick', 'onchange', 1458, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下的xml文档片段中，属性符合XML语法规则的是（选一项）', '<car name="zhang’s car">', '<car name=''zhang”s car''>', '<car name=''jieda car ">', '<car name=jieda >', 1459, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列有关函数的特点说法错误的是（选一项）', '函数必须定义返回类型', '函数参数的类型可以是OUT', '在函数体内可以多次使用RETURN语句', '函数的调用应使用EXECUTE命令', 1460, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '有关ORACLE函数说法错误的是（选一项）', '函数中可以对表进行处理', '函数的主要作用是进行业务处理', '函数主要是对传入的参数进行数据处理', '函数可以递归调用', 1461, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列(  )不属于UML图。' || chr(13) || '', '用例图' || chr(13) || '', '类图' || chr(13) || '', '时序图' || chr(13) || '', '活动图' || chr(13) || '', 1462, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列关于类之间的泛化关系，说法正确的是(  )。' || chr(13) || '', '泛化是类之间的一种连接，泛化总是双向的' || chr(13) || '', '面向对象中的继承关系在UML中称为泛化' || chr(13) || '', '泛化是指从抽象类得到子类' || chr(13) || '', '被泛化的类称为子类，得到的类称为超类' || chr(13) || '', 1463, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '分析下面的JavaScript代码：<SCRIPT LANGUAGE="JavaScript">confirm("远看山' || chr(10) || '有色，近听水无声");</SCRIPT>输出结果为（选一项）', '在网页上显示文字信息：远看山有色，近听水无声', '弹出一个确认对话框（含有“确定”和“取消”按钮），显示消息：远看山有色，近听水无声', '打开另一个浏览器窗口，显示文字信息：远看山有色，近听水无声', '弹出一个对话框（只含有“确定”按钮），显示信息：远看山有色，近听水无声', 1464, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Oracle中，你需要创建索引提高薪水审查的性能，该审查要对员工薪水提高12个百分点后进行分析处理，下面哪个create index命令能解决此问题（选一项）', 'CREATE INDEX my_idx_1 ON employee(salary*1.12);', 'CREATE UNIQUE INDEX my_idx_1 ON employee(salary)', 'CREATE BITMAP INDEX my_idx_1 ON employee(salary);', 'CREATE INDEX my_idx_1 ON employee(salary) REVERSE;', 1465, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '带有（）字句的SELECT语句可以在表的一行或多行放置排他锁（选一项）', 'FOR INSERT', 'FOR UPDATE', 'FOR DELETE', 'FOR REFRESH', 1466, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有关ORACLE包的说法正确的是（选一项）', '包的声明和包体中的函数可以在参数个数上不一致', '包中不能定义变量', '包中定义的全局变量所有的子过程都可以使用', '包中的存储过程不能重载，但函数可以重载', 1467, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '如图所示是一个UML图，请问该图属于（）。', '用例图', '类图', '时序图', '协作图', 1468, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ActionForward的（ ）属性指定ActionForward的URI（选一项）', 'path', 'name', 'redirect', 'classname', 1469, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Oracle中，序列venseq使用下面的语句创建：' || chr(10) || 'CREATE SEQUENCE venseq INCREMENT BY 1 START WITH 10' || chr(10) || 'MAXVALUE 100 MINVALUE 10 CYCLE CACHE 5;' || chr(10) || '下面对序列venseq修改的语句，错误的是（选一项）', 'ALTER SEQUENCE venseq START WITH 1', 'ALTER SEQUENCE venseq MAXVALUE 90;', 'ALTER SEQUENCE venseq NOMINVALUE;', 'ALTER SEQUENCE venseq NOCACHE;', 1470, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Oracle中，有一个名为seq的序列对象，以下语句能返回序列值但不会引起序列值增加的是（选一项）', 'select seq.ROWNUM from dual', 'select seq.ROWID from dual;', 'select seq.CURRVAL from dual;', 'select seq.NEXTVAL from dual;', 1471, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于Spring和jdbc的配置步骤，以下说法正确的是（选一项）', '不用添加驱动，spring 有自己的驱动', '需要添加数据库驱动，因为每个数据库的驱动不一样', '不用写数据库连接， spring 自己会连接', '不用写数据库连接的用户名和密码，spring 会自己设置默认的用户名和密码', 1472, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'POJO的全称是（选一项）', 'Plain Old Java Object', 'Programming Object Java Object', 'Page Old Java Object', 'Plain Object Java Old', 1473, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '如果把一个Collection对象：students中的每个Student对象的姓名，年龄，家庭住址信息在页面中全面显示出来，使用<logic:iterate>给出代码。哪个是正确的（选一项）', '<logic:iterate name="students" var="stu" scope="session">' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="stuname"/>' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="age"/>' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="address"/>' || chr(13) || '' || chr(10) || '</logic:iterate>', '<logic:iterate name="students" id="stu" scope="session">' || chr(13) || '' || chr(10) || '<bean:write name="students" property="stuname"/>' || chr(13) || '' || chr(10) || '<bean:write name="students" property="age"/>' || chr(13) || '' || chr(10) || '<bean:write name="students" property="address"/>' || chr(13) || '' || chr(10) || '</logic:iterate>', '<logic:iterate  id="students"  name="stu" scope="session">' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="stuname"/>' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="age"/>' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="address"/>' || chr(13) || '' || chr(10) || '</logic:iterate>', '<logic:iterate name="students" id="stu" scope="session">' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="stuname"/>' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="age"/>' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="address"/>' || chr(13) || '' || chr(10) || '</logic:iterate>', 1474, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '关于声明式事务的说法，下面正确的是（选三项）', 'Spring 采取AOP 的方式实现声明式事务', '声明式事务是非侵入式的，可以不修改原来的代码就给系统增加事务支持', '配置声明式事务需要 tx 和 aop 两个命名空间的支持', '配置声明式事务时我们主要关注“在哪儿”和“采取什么样的事务策略”', 1475, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '对原生SQL查询执行的控制是通过(  )接口进行的。（选一项）' || chr(10) || '', 'Query' || chr(13) || '', 'Criteria' || chr(13) || '', 'SQLQuery' || chr(13) || '', 'List' || chr(13) || '', 1476, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面关于Hibernate的说法，错误的是（选一项）', 'Hibernate是一个“对象-关系映射”的实现', 'Hibernate是一种数据持久化技术', 'Hibernate是JDBC的替代技术', '使用Hibernate可以简化持久化层的编码', 1477, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '编写类继承JdbcDaoSupport后，必须要注入的是（选一项）', 'dataSource和sessionFactory', 'jdbcTemplate', 'sessionFactory', 'dataSource', 1478, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '关于Spring对Hibernate的支持，下面说法正确的是（选两项）', 'Spring 提供基类完成了繁琐的异常处理代码', 'Spring 提供基类完成了繁琐的事务处理代码', 'Spring 提供的基类对查询没有提供良好的支持', 'Spring 提供的基类需要注入 sessionFacotry 才能正常运行', 1479, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面关于SSH的说法正确的是（选一项）', 'SSH的结合，是世界上最完美的javaWeb框架', 'SSH的结合，是世界上最差的javaWeb框架', 'SSH的结合，可以降低程序的偶合度，让程序维护变得简单', 'SSH的结合，可以让简单的程序变得复杂，让程序看起来很酷', 1480, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下程序的打印结果是什么？' || chr(10) || 'tx = session.beginTransaction();' || chr(10) || 'Customer c1=(Customer)session.load(Customer.class,new Long(1)); ' || chr(10) || 'Customer c2=(Customer)session.load(Customer.class,new Long(1)); ' || chr(10) || 'System.out.println(c1==c2);' || chr(10) || 'tx.commit();' || chr(10) || 'session.close();（选一项）', '运行出错，抛出异常', '打印false', '打印true', '编译出错', 1481, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Spring的配置文件如何查找Hibernate的配置文件（选一项）', '自动查找，没有规则', '通过 spring 的配置去查找，配置文件放在哪里都可以', '通过 spring 的配置去查找，配置文件应该放在类路径下', 'Hibernate 会自动去查找 spring 的文件，spring 配置文件什么都不管', 1482, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '当Spring和Hibernate一起连用的时候，需要注意什么（选一项）', 'Spring 的配置文件 和 Hibernate 的配件文件一定要写同一个目录下面', '如果要用 Spring 中的 dao 一定要让自己写的 dao 继承 Spring 中HibernateDaoSupport 类', '如果要用 Spring 中的 dao 一定要让自己写的 dao 继承 Hibernate 中HibernateDaoSupport 类', '不用写自己的 dao 类，Spring 会生成的', 1483, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Spring中配置一个抽象类A（选一项）', '<bean id="A" abstract="false">', '<bean id="A"  abstract="true">', '<bean id="A"  parent="true">', '<bean id="A"  parent="false">', 1484, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Linux中配置Apache的过程不包括（选一项）', '检查是否安装了Apache服务器软件', '设置Apache服务器IP地址', '修改配置文件/etc/apache/set.conf', '启动Apache服务器', 1485, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中，关于ADO.NET的事务，错误的是（选一项）', '开始事务方法为BeginTransaction', '开始事务后会返回一个SqlTransaction对象', '事务执行完毕需要调用SqlConnection的Commit方法', '事务执行中有错误，需要调用SqlTransaction的RollBack方法', 1486, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '页面中有三个元素，如下：<div>div标签</div><span>span标签</span><p>p标签</p>，如果这三个标签要触发同一个事件，那么正确的写法是（选择一项）', '$("div,span,p").click(function(){   //…      });', '$("div || span || p").click(function(){   //…      });', '$("div + span + p").click(function(){   //…      });', '$("div ~ span ~ p").click(function(){   //…      });', 1487, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'SOAP是一种基于 XML 的、用于在Web上交换结构化和类型信息的简单的轻量协议，SOAP 协议规范包括四个部分，以下（）不属于这四个部分。（选一项）', '定义用于封装数据的必需的可扩展信封', '定义用来表示应用程序定义的数据类型和有向图形的可选数据编码规则', '定义 RPC 样式（请求/响应）的消息交换模式', '定义不同性质的服务器之间的数据交换规则和调用过程', 1488, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列说法正确的是（ ）。', '移动Web 网站部署在移动设备上', '在编写移动Web 网站页面中所使用的控件和普通的Web 页面中使用的控件是一样的', '移动Web 网站页面中可以有多个Form', '移动Web 网站页面中只能有一个Form', 1489, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '部分代码文件public class WebForm1 : System.Web.UI.Page' || chr(9) || '' || chr(10) || '{' || chr(10) || '    protected System.Web.UI.WebControls.Button Button1;' || chr(10) || '    protected UserControl1 uc1;' || chr(10) || '    private void Button1_Click(object sender, System.EventArgs e)    ' || chr(10) || '    {    uc1.Visible=false;  }' || chr(10) || '}根据以上代码可以看出，当单击服务器端按钮的时候页面将出现（）变化。（选一项）', '将临时性隐藏用户控件，直到连接再次建立', '将临时性隐藏用户控件，直到再次点击该按钮', '没有什么变化', '运行时报错', 1490, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'CLDC使用的是什么类型的虚拟机?', 'JVM', 'KVM', 'CVM', 'MVM', 1491, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Linux中启动DNS服务器的命令是（选一项）', 'service named start', 'named start', 'service dns start', 'dns start', 1492, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Repeater控件不能使用(   )种模板。（选一项）', 'ItemTemplate', 'HeaderTemplate', 'SelectedItemTemplate', 'AlternatingItemTemplate', 1493, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '某业务方法materielApply(Person p, List list) 需要对其进行事务控制，下面的声明方式能起到效果的是（选两项）', '将查询方法声明为只读事务，其他方法声明为REQUIRED', '声明 do 开头的方法为 REQUIRED,并修改方法名为 doMaterielApply', '<tx:method name="Apply"  propagation="REQUIRED" />', '事务的 propagation 属性声明为 SUPPORTS', 1494, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面关于Spring和Struts配置后，Action的描述正确的是（选一项）', 'Action 可以直接配置在 spring 中，struts 不用配置，它自己可以找到', 'Action 需要继承 Spring 中的类，才能用，否则会报错', 'Action 实例通过代理的方式被 Spring 得到', 'Action 实现可以自己找到 spring 的信息，不用配置任何内容', 1495, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '阅读以下的ASP.NET代码：' || chr(10) || 'private void Page_Load(object sender , Sysetm.EvetnArgs e)' || chr(10) || '{' || chr(10) || '    if(!IsPostBack)' || chr(10) || '    {' || chr(10) || '        ArrayList values = new ArrayList();' || chr(10) || '        values.Add("O");        values.Add("A");' || chr(10) || '        values.Add("A");        values.Add("B");' || chr(10) || '        values.Add("B");' || chr(10) || '        CheekBoxList1.DataSource = values;' || chr(10) || '        CheckBosList1.DataBind();' || chr(10) || '}' || chr(10) || '}请问当Web页面启动后，下列说法正确的是（选一项）', '页面上将出现1个CheckBox控件', '页面上只有3个CheckBox控件', '页面上将出现5个CheckBox控件', '代码执行出有错误，错误原因是没法绑定到数据源', 1496, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '启用ASP.NET匿名个性化，需要配置哪个配置节（选一项）', 'appSettings', 'authentication', 'compilation', 'anonymousIdentification', 1497, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET中，下列关于列表控件的DataBind方法的描述错误的是（选一项）', '要把列表控件的实际绑定到某一数据源，必须调用DataBind方法', '执行DataBind方法，将完成创建列表控件项的工作', '执行DataBind方法，将完成用数据源的数据填充列表控件每一项的工作', '在设计的时候，可以调用DataBind方法将把列举的数据源的数据填充到列表控件的每一项来观察数据的正确性', 1498, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '某推广商户撰写了创意如下，网民搜索词学 生假期托管班触发了商户所购买的关键词假期托管班，则推广信息在前台推广位置展示时应为：标题比｛托管｝更好的夏令营  描述1专业师资，英语学习，户外活动，寓教于乐，即刻登陆官网了解详情  描述2去｛假期托管｝不如参加学习夏令营，真实的英语学习环境，快乐学习，祝您一臂之力（单选）', '比托管更好的夏令营   专业师资，英语学习，户外活动，寓教于乐，即刻登陆官网了解详情 !去假期托管不如参加学习夏令营，真实的英语学习环境，快乐学习，祝您一臂之力', '比假期托管班更好的夏令营                         专业师资，英语学习，户外活动，寓教于乐，即刻登陆官网了解详情 !去学生假期托管班不如参加学习夏令营，真实的英语学习环境，快乐学习，祝您一臂之力', '比学生假期托管班更好的夏令营                  专业师资，英语学习，户外活动，寓教于乐，即刻登陆官网了解详情 !去学生假期托管班不如参加学习夏令营，真实的英语学习环境，快乐学习，祝您一臂之力', '比假期托管班更好的夏令营                        专业师资，英语学习，户外活动，寓教于乐，即刻登陆官网了解详情 !去假期托管班不如参加学习夏令营，真实的英语学习环境，快乐学习，祝您一臂之力', 1499, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于子类型的陈述错误的是哪项（单选）', '它们可以用来组织单个字段的属性值 ', ' 它们能够为所有的字段类型所定义', '它们可以帮助提高特征编辑的效率', '它们只能在一个要素类中定义和使用 ', 1500, 402);
commit;
prompt 1500 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在运行一个地理编码处理过程后，输出的点要素类的属性表将会增加一个“Status”字段，它包含三个可能的值：“tied”状态值的意思是？（单选）', '两个地址信息被划分到同一个点上', '两个地址信息完全相同', '两个地址具有相同分值 ', '两个地址具有相同的地址编号和前缀 ', 1501, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '选择ArcGIS中关于图层组的行为描述错误的是：（单选）', ' 一组图层可以包含不同类型的数据源（如shapefile、CAD、等等） ', '图层组的绘制顺序可以被改变，并且图层可以根据需要被增加或删除', '图层组可以作为一个geodatabase中的新数据源导出 ', ' 图层组中单个图层的属性显示可以更改 ', 1502, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '总账业务如何录入下设核算项目的科目的初始数据(选择一项)', '直接录入', '要点击核算项目栏的“√”进入特定界面输入', '无须录入由汇总数据自动生成', '上述方式都可以', 1503, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Struts2框架的核心类库是：（选择一项）', 'xwork-core-.jar', 'ognl-.jar', 'freemarker-.jar', 'struts2-core-.jar', 1504, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '应用GIS项目设计的步骤与方法是 ： （选择一项  ） ', '需求分析、系统设计、 开发计划、程序编码、GIS产品测试运行维护', '需求分析、开发计划、 系统设计、程序编码、GIS产品测试运行维护', '开发计划、需求分析、 系统设计、程序编码、GIS产品测试运行维护', '开发计划、需求分析、 程序编码、系统设计、GIS产品测试运行维护', 1505, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在.NET中，下列关于SOAP的描述错误的是（选一项）', 'SOAP提供了标准的RPC方法调用Web Service', 'SOAP规范定义了SOAP消息格式，以及怎样通过HTTP协议来使用SOAP', 'XML是基于SOAP的', 'SOAP的目标是允许使用标准化的方法在客户机运行在Internet上的应用程序之间交换原文的信息', 1506, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SQL Server Mobile 数据库是（ ）类型的数据库。', '文件', '关系', '面向对象', '以上都不正确', 1507, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中，下列关于TagName的描述错误的是（选一项）', 'TagName为用户控件的名称。', 'TagName名称与TagPrefix标志一起用来唯一标识控件的命名空间。', '代码“<uc1:UserControl1 id="UserControl11" runat="server"></uc1:UserControl1>”中uc1为TagName标志。', '要使用TagName确定的标记，必须先在文件中注册该标记。如代码“<%@ Register TagPrefix="uc1" TagName="UserControl1" Src="UserControl1.ascx" %>”注册了TagName标记。', 1508, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列受托代销业务说法不正确的是（选择一项）', '收到受托商品时，做一张收料通知单，此时的仓库是代管库', '销售受托商品时，从代管库转出销售数量的商品，先做外购入库单，入库单必须是关联收料通知单的方法录入，入实仓，同时生成采购发票（此发票是与受托方的结算发票），同时还要做一张实际的销售发票和销售出库单，发到目标客户', '受托商品要退回给受托方时，做一张退料通知单，从代管库发回给受托方', '受托商品要退回给受托方时，做一张红字入库单，发回给受托方', 1509, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在样式表中要设置文本的字体为"Arial",下列语句正确的是（选一项）', '<p style="font-style:arial">', '<p style="text-style;arial">', '<p style="font-family:arial">', '<p style="text-family:arial">', 1510, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '阅读下面T-SQL语句，对变量赋值时存在错误的是（选一项）', 'DECLARE @id INT,@price MONEY' || chr(10) || ' set @id=100' || chr(10) || ' set @price=$2.21', 'DECLARE @id INT,@price MONEY ' || chr(10) || 'select @id=100,@price=2.21', 'DECLARE @id INT,@price MONEY ' || chr(10) || 'set @id=100, @price=2.21', 'DECLARE @id INT,@price MONEY ' || chr(10) || 'select @id=100' || chr(10) || ' select @price=$2.21', 1511, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '查找某林区内的消防站属于（单选）', '线点查询', '点线查询 ', '线线查询', '点面查询', 1512, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '若关键词设置的访问URL是www.test.com，与之匹配的创意设置的访问URL是www.clickme.com，且关键词、创意的状态均有效，则以下说法正确的是（单选）', '两个URL冲突，所以实际推广中无法进行正常跳转', '实际推广www.clickme.com跳转', '实际推广中一半按照www.test.com跳转，一半按照www.clickme.com跳转', '实际推广按照www.test.comL跳转', 1513, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'struts2自定义拦截器中的“return invocation.invoke”代码表示（  ）（选择二项）', '不执行目标Action的方法，直接返回', '执行目标Action的方法，直接返回逻辑视图名称', '在自定义拦截器中，该代码是必需的', '在自定义拦截器中，该代码是可选的', 1514, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '向债权人借款30000元（6个月后归还）存入银行的会计分录的借方和贷方，下列说法正确的是（     ）(选择一项)', ' 借方为银行存款，贷方为短期借款', '借方为银行存款，贷方为长期借款', '贷方为银行存款，借方为短期借款', '贷方为银行存款，借方为长期借款', 1515, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'struts2自定义拦截器中的“return invocation.invoke”代码表示（  ）（选择二项）', '不执行目标Action的方法，直接返回', '执行目标Action的方法，直接返回逻辑视图名称', '在自定义拦截器中，该代码是必需的', '在自定义拦截器中，该代码是可选的', 1516, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '获取<div id="content">内容…</div>标签里的文本内容。（选择两项）', '$("#content").val();', '$("#content").html();', '$("#content").text();  ', '$("#content").innerHTML();', 1517, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '录入人工制费科目成本中输入的年月的限制有哪些？（单选）', '必须大于会计月份  ', '必须大于进销存参数设置的关账年月   ', '不可大于进销存参数设置的结账年月', '可以任意输入', 1518, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '交易结束后，一方做出了好评，如果有效评价期内另一方未做出好评，则( )(选择一项)', '系统默认为中评', '系统不做出任何评价', '系统将取消这次交易所有评价 ', '系统默认为好评', 1519, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列关于XML布局文件在Java代码中被引用的说明中，不正确的是(选择一项)', '在Activity中，可以使用findViewById( )方法，通过资源id，获得指定视图元素', '在Activity中，可以使用R.drawable-system.***方式引用Android系统所提供的图片资源', '在Activity中，可以使用setContentView( )方法，确定加载哪一个布局文件', '可以使用View类的findViewById( )方法，获得当前View对象中的某一个视图元素', 1520, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'C#中String和StringBuilder的区别，下列描述正确的是（ ）（选一项）', 'String 在进行运算时会产生一个新的实例，而 StringBuilder 则不会。', 'StringBuilder是引用类型而String是值类型', 'String类型可以隐式转换为StringBuilder类型', 'StringBuilder 在进行运算时会产生一个新的实例，而 String 则不会。', 1521, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'android 中下列属于Intent的作用的是？(选择一项)', '处理一个应用程序整体性的工作', '是一段长的生命周期，没有用户界面的程序，可以保持应用在后台运行，而不会因为切换页面而消失', '实现应用程序间的数据共享', '可以实现界面间的切换，可以包含动作和动作数据，连接四大组件的纽带', 1522, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'mysql_insert_id()函数的作用是(选择一项)', ' 查看下一次插入记录时的ID号', '查看刚刚插入过的自动增长ID值', '查看一共做过多少次insert操作', ' 查看一共有多少条记录', 1523, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于委托描述错误的是（ ）（选一项）', '委托是一种引用方法的类型', '委托即能够对静态方法进行调用也能够对实例方法进行调用', '委托定义了方法的类型', '定义委托必须使用public修饰符', 1524, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列哪一种叙述是正确的（）' || chr(10) || '' || chr(10) || '', 'abstract修饰符可修饰字段、方法和类', '抽象方法的body部分必须用一对大括号{}包住', '声明抽象方法，大括号可有可无', '声明抽象方法不可写出大括号 ', 1525, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '湖泊和河流周围保护区的定界可采用（单选）', ' 空间聚类', '统计分析', '叠置分析', '缓冲区分析', 1526, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于TinyOS操作系统，下列描述错误的是（ ）（选一项）', 'TinyOS 提供任务和事件的两级调度机制。', 'TinyOS 操作系统的组件分为：硬件抽象组件、合成硬件组件和配置组件。', 'TinyOS 操作系统任务之间互相平等，没有优先级之分', '在Tinyos中事件和任务被处理完成之后，CPU即 进入睡眠状态。', 1527, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于向ArcMap添加数据，下面陈述中哪项是正确的（单选）', 'drag and drop”方法仅对空间数据集有效', '添加数据对话框中，一次只能添加一个单独的要素类 ', '从一个coverage中不可能只添加一个要素类', '添加一个要素数据集就是添加该数据集所包含的所有要素类 ', 1528, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面关于基准面与椭球体的描述正确的是哪项（单选）', '极小比例尺地图受不同椭球体的影响比受不同基准面的影响更大 ', '在要素类的属性中，一旦要素类被创建并加入要素，你可以更改基准面但不能更改椭球体 ', '平面坐标系可以使用基准面来创建测量参考点 ', '椭球体是地理坐标系的一部分，而基准面仅是笛卡儿坐标系的一部分 ', 1529, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ArcMap TOC中，当图层名称旁边出现一个红色的感叹号时意味着：（单选）', '地图文档被病毒感染 ', '原数据已经被重命名、删除、或是从原参考路径移走 ', '原数据的空间参考属性已经被更改', '地图在图层能够被绘制的范围外 ', 1530, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在存货核算系统中凭证一般是根据（  ）模板来自动生成凭证（选择一项）', '系统自带的摸板', '默认摸板', '系统自动选择的摸板 ', '系统随机选择的摸板', 1531, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '假设已有EPCSDKHelp类封装了操作读写器的函数，下面代码中应该填入的参数是（ ）（选一项）' || chr(10) || 'IntPtr _handle = EPCSDKHelp.OpenComm(1);' || chr(10) || 'byte[] data = new byte[] {0xED,0x0A,0x04,0x30,0x19,0x20 };' || chr(10) || 'EPCSDKHelp.FastWriteTagID( ?,?,?,?);', '_handle,12,data,0', '_handle,6,data,0', '_handle,data,0,12,0,0', '_handle,data,0,6,0,0', 1532, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于geodatabase中注记要素类描述错误的是：（单选）', '通过选择注记要素并在编辑工具条中使用属性窗口，你可以更新源数据的属性值 ', '在源要素类中编辑属性值，将会更新要素关联的注记要素 ', '在源要素类中编辑属性值，将会更新标准的注记要素', '在ArcMap和ArcCatalog中，你可以将其它格式的注记转换到geodatabase注记中 ', 1533, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '外购入库单不可关联的单据有（选择一项）', '采购订单', '采购发票', '收料通知单', '采购申请单', 1534, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面关于ArcGIS空间配准过程的最佳描述是（单选）', '将坐标从已知的参考系统赋值到空间数据 ', '将地址位置信息和x、y坐标匹配 ', '将基准面和椭球体加入到ArcGIS中显示的数据上 ', '将地理坐标系从一个投影转移到另一个投影 ', 1535, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在C#中将字符串编码为字节序列的方法是（ ）（选一项）', 'Encoding.Default.GetBytes()', 'Encoding.Default.GetEncoder()', 'Encoding.Default.GetString()', 'Encoding.Default.GetByteCount()', 1536, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SQL Server中类型为image的字段，在C#中的实体类应该使用（ ）类型来表示（选一项）', 'Image', 'String', 'Byte[]', 'IntPtr', 1537, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'GIS的主要组成部分包括（单选）', '计算机软硬件系统、地理数据和用户', '计算机软硬件系统、地理数据和分析程序', '计算机软硬件系统、地理数据和绘图机', ' 计算机软硬件系统、网络和用户', 1538, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts中的ActionServlet属于MVC模式（  ）（选择一项）', '视图', ' 模型', '控制器', '业务层', 1539, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'if语句的控制条件（选一项）', '只能用关系表达式', '只能用关系表达式或逻辑表达式', '只能用逻辑表达式', '可以用任何表达式', 1540, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下关于Java虚拟机说法不正确的是（选一项）', 'Java虚拟机执行的是字节码', '字节码会被解释成本地机器语言', '不同平台下需要安装该平台下相应的Java虚拟机版本', '不同平台下Java虚拟机的规范不一样', 1541, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Java中，以下(    )标识符是不是合法的。（选一项）', 'IDoLikeTheLongNameClass', '$byte', '_ok', '4_case', 1542, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于样式表的说法，错误的是（选一项）', '外部样式表是样式表的一种表现形式。', '链接外部样式表文件，只能用Link标记导入。', '样式可以嵌入到<HEAD>和</HEAD>标记之间。', '可对具体的某个网页元素应用样式。', 1543, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '要在网页中显示“欢迎访问我的主页！”，要求字体为隶书、字体大小为6。下列语句正确的是（选一项）', '<P><FONT SIZE=6 TYPE="隶书">欢迎访问我的主页！</FONT>', '<P><FONT SIZE=+2 FACE="隶书">欢迎访问我的主页！</FONT>', '<P><FONT SIZE=6 FACE="隶书">欢迎访问我的主页！</FONT>', '<P><FONT SIZE=+3 STYLE="隶书">欢迎访问我的主页！</FONT>', 1544, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '有下面HTML语句，下列说法错误的是（选一项）' || chr(10) || '<input  type="radio" value="v1"  checked  name="R1" >男', '这条语句将产生一个单选框。', '该语句产生的选项处于已选中状态。', '该选项的value值可要不可要，因为它对设置单选按钮的界面没有影响。', '该标记的name属性值可要不可要，因为它对单选按钮的功能设计不产生任何影响。', 1545, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在HTML中，要创建一个表单（form1），要向服务器发送数据的方式为post, 提交表单服务器的地址为process.asp。下面创建表单正确的代码（选一项）', '<form name="form1" method="post" submit="process.asp"></form>', '<form name="form1" method="post" submitSrc="process.asp"></form>', '<form name="form1" method="post" action="process.asp"></form>', '<form name="form1" method="post" src="process.asp"></form>', 1546, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面代码是C/S架构中客户端获取服务器时间，并设置本地系统时间与服务器同步的代码，空白处应该填入（ ）（选一项）' || chr(10) || 'DateTime serverTime = (DateTime)DBHelper.ExcuteQuery("___________").Rows[0][0];' || chr(10) || 'SystemTime st = new SystemTime();' || chr(10) || 'st.wYear = (short)serverTime.Year;' || chr(10) || 'st.wMonth = (short)serverTime.Month;' || chr(10) || 'st.wDay = (s', 'Select getdate from sysobjects', 'Select * from getdate()', 'Select getdate()', 'Select @@ServerTime', 1547, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '下列说法错误的有（）(选择两项)', '在类方法中绝对不能调用实例方法', '在类方法中只能调用本类中的类方法', '在类方法中可用this来调用本类的类方法', '在类方法中调用本类的类方法时可直接调用', 1548, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '解决道路拓宽中拆迁指标的计算问题，可应用的空间分析方法是（单选）', '缓冲区分析', '包含分析 ', '网络分析', '最短路径分析', 1549, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java语言中，能正确表示a和b同时为正或同时为负的表达式是（选一项）', '(a >=0 || b >= 0) && (a < 0 || b < 0)', 'a * b > 0', '(a + b > 0) && (a + b <= 0)', '(a >= 0 && b >= 0) && (a < 0 && b < 0)', 1550, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '为了在网页上分别用粗体和斜体显示“清明时节雨纷纷，路上行人欲断魂”，“借问酒家何处有？牧童遥指杏花村。”，下列代码正确的是（选一项）', '<B>清明时节雨纷纷，路上行人欲断魂。</B><I>借问酒家何处有？牧童遥指杏花村</I>', '<i>清明时节雨纷纷，路上行人欲断魂。</i><b>借问酒家何处有？牧童遥指杏花村</b>', '<i>清明时节雨纷纷，路上行人欲断魂。</i><u>借问酒家何处有？牧童遥指杏花村</u>', '<b>清明时节雨纷纷，路上行人欲断魂。</b><u>借问酒家何处有？牧童遥指杏花村</u>', 1551, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '以下正确的叙述有（选两项）', '在Java程序中，每行中只能写一条语句。', '在Java程序中，Abc和abc是2个相同的变量', '若a和b的类型相同，在计算赋值表达式a = b后b的值将放入a，而a的值丢失', '若a是float型变量，a = 10是合法的，因为float型变量允许存放整型数', 1552, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JAVA语言中以下能为一维数组a正确初始化的语句是（选一项）', 'int a[10]=(0,0,0,0,0);', 'int a[]= {1,2};', 'int a[10]={0;1;2};', 'int a[10] = {10};', 1553, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列代码' || chr(10) || 'public static void main(String []args){' || chr(10) || 'int i = 0;' || chr(10) || 'for(i = 1;i < 10;i++){' || chr(10) || '    System.out.println ("i = " + i);' || chr(10) || '    if(i % 2 == 0){' || chr(10) || '        continue;' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '}输出的结果为（选一项）', '从1到9中的奇数', '从1到9中的偶数', '无输出', '从1到9', 1554, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '要在网页中显示下列的内容:' || chr(10) || '售票员说：“定价：￥68”；' || chr(10) || '下面的语句正确的是（选一项）', '<p>售票员说：  定价：&yuan; 68  &quot; </p>', '<p>售票员说： &quot;  定价：&yen; 68 </p>', '<p>售票员说： &quot;  定价：&yuan; 68  &quot; </p>', '<p>售票员说： &quot;  定价：&yen; 68  &quot; </p>', 1555, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '正规开发中，在使用struts2时定义Action使用哪种方式。（）(选择一项)', '直接定义Action类。', '从ActionSupport继承。', '从Action继承。', '实现Action接口。', 1556, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于ArcSDE的描述，不正确的是： （选择一项 ） ', 'ArcSDE本身是一个关系数据库', 'ArcSDE允许使用多种DBMS管理地理信息 ', 'ArcSDE支持多用户编辑，提供大型空间数据库支持', 'ArcSDE支持包括Windows、Unix在内的多种操作系统', 1557, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '按６度带划分，经度范围为 114 ---> 120，那么其中央经线为 ： （ 选择一项 ） ', '117', '116', '115', '117.5', 1558, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '获光明工厂的土地使用权，双方商定并经房产管理部门评估，该土地使用权的价值为150000元，作对我公司的投资。关于其帐务处理借方和贷方，下列说法正确的是（      ）(选择一项)', '借方为固定资产，贷方为实收资本', '贷方为固定资产，借方为实收资本', ' 借方为无形资产，贷方为实收资本', '借方为固定资产，贷方为银行存款', 1559, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2中，以下配置文件上传拦截器只允许上传bmp图片文件的代码，正确的是（ ）（选择一项）', '<param name=”allowedTypes”>image/bmp</param>', '<param name=”allowedTypes”>*.bmp</param>', '<param name=”allowedTypes”>bmp</param>', '<param name=”allowedTypes”>image/*.bmp</param>', 1560, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面说法不正确的是 （选择一项）', '$("input:checked")选取所有被选中的<input>元素', '$("#form:disabled")选取id为form的表单内的所有不可用元素', '$("#name").is(":visible")是判断id为name的元素的可见性', '$("div ").addClass("background","url(img/up.gif) ")是设置样式的', 1561, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '产品结构的子件信息中包含？（选择两项）', '仓库    ', '  损耗率', '单价', '选配代号 ', 1562, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '关于支付宝的说法正确的是( )(选择三项)', '支付宝可以保证资金的安全，并且不需要手续费   ', '买家使用支付宝时最好申请口令卡以保证账户资金安全', '买家使用支付宝进行购物不需要通过任何认证手续 ', '支付宝是第三方代收款平台，目前在淘宝购物时使用支付宝付款是免费的', 1563, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列关于Android布局文件常用的长度/大小单位的描述中，不正确的是(选择一项)', ' dp是设备独立像素，不依赖于设备，是最常用的长度单位', 'sp代表放大像素，主要用于字体大小的显示', ' px是像素单位，在不同的设备上显示效果相同，因此推荐在布局中使用该单位 ', '在设置空间长度等相对距离时，推荐使用dp单位，该单位随设备密度的变化而变化', 1564, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中，下列常量定义正确的是（选一项）', 'const double PI 3.1415926;', 'const double e=2.7', 'define double PI 3.1415926', 'define double e=2.7', 1565, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在SQL Server 2005中，有student(学生)表，其结构为: sID(学号,int 型,主键),sName(姓名,varchar 型), birthday(出生日期,varchar 型)，score(成绩，int型). 现要向学员表中插入一名学员的信息，下列SQL语句正确的是（选一项）', 'INSERT INTO students VALUES(1,''李刚'',''1999-01-01'',80)', 'INSERT INTO students (sID,sName,birthday) VALUES(1,''李刚'',''1999-01-01'',80)', 'INSERT INTO students VALUES(1,李刚,1999-01-01,80)', 'INSERT INTO students (sID,sName,brithday) VALUES (NULL,''李刚'',''1999-01-01'')', 1566, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Sql server中，(  )命令用来删除表对象。（选一项）', 'Drop', 'Remove', 'Truncate', 'Delete', 1567, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列行为中，（）定义了一个存储过程。（选一项）', '如果没有提供其他值，则使用此列中定义的值', '定义了一个有相关列的行的集合', '当用户修改数据时，一种特殊形式的存储过程被自动执行', 'SQL语句的预编译集合', 1568, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在SQL Server2005中，系统存储过程（选一项）', '存储在Master数据库中', '可以在查询分析器中修改', '一些名称以“sp_”开头，一些名称以“sys_”开头', '用来代替用户自定义的存储过程', 1569, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '分析下面的Java程序：' || chr(10) || 'public class ExceptionTest {' || chr(10) || 'public static void main(String[]  args) throws Exception {' || chr(10) || '    try {' || chr(10) || '        throw new Exception();' || chr(9) || '' || chr(10) || '    }' || chr(10) || '    catch(Exception e){' || chr(10) || '        System.out.println("Caught in main()");' || chr(10) || '    }    ' || chr(10) || '    System.out.println("nothing"); ' || chr(10) || '}' || chr(10) || '}' || chr(10) || '输出结果为（选一项）', 'Caught in main()' || chr(13) || 'nothing', 'Caught in main()', 'nothing', '没有任何输出', 1570, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '给定一个Java程序的代码片断如下，运行后，正确的输出结果是（选一项）' || chr(10) || 'String s="hello,world";' || chr(10) || 's.replace(","," ");' || chr(10) || 'System.out.println(s);', 'hello world;', 'hello, world', 'HELLO WORLD;', 'HELLO ,WORLD;', 1571, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Java中，下列(  )做法可以得到Connection对象和Statement对象。（选一项）', '使用Class的getConnection方法可以得到Connection对象，使用Connection对象的createStatement方法可以获得Statement对象', '使用Class的getConnection方法可以得到Connection对象，使用DriverManager对象的createStatement方法可以获得Statement对象', '使用DriverManager的getConnection方法可以得到Connection对象，使用Connection对象的createStatement方法可以获得Statement对象', '使用DriverManager的getConnection方法可以得到Connection对象，使用Statement对象的createStatement方法可以获得Statement对象', 1572, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '有下面一段HTML标记：' || chr(10) || '<table border="1" width="150">' || chr(10) || '<tr>' || chr(10) || '<td>　</td>' || chr(10) || '<td>　</td>' || chr(10) || '<td rowspan="2">　</td>' || chr(10) || '</tr>' || chr(10) || '<tr>' || chr(10) || '<td>　</td>' || chr(10) || '<td>　</td>' || chr(10) || '</tr>' || chr(10) || '<tr>' || chr(10) || '<td colspan="2">　</td>' || chr(10) || '<td>　</td>' || chr(10) || '</tr>' || chr(10) || '</table>' || chr(10) || '请问下列说法错误的是（选一项）', '这是一个3行3列的表格。', '这个表格的边框宽度为“1”。', '这个表格的第3行有两个单元格。', '这个表格的第3列有3个单元格。', 1573, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在以下的HTML代码片段中,以下()是正确的判断（选一项）' || chr(10) || '<table border=1>' || chr(10) || '<caption>文具</caption>' || chr(10) || '<tr>' || chr(10) || '<th>铅笔</th>' || chr(10) || '<th>圆珠笔</th>' || chr(10) || '<th>水笔</th>' || chr(10) || '</tr>' || chr(10) || '…….', '铅笔一定位于首行中的第一列', '圆珠笔一定位于首行中的第一列', '文具应位于首列首行', '水笔与圆珠笔在不同的行', 1574, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于主键，以下（）说法是正确的。（选一项）', '主键可以用来确保表中不存在重复的数据行。', '一个表必须有一个主键。', '主键列可以为null。', '只能对整数型列设置主键。', 1575, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在C#中，下列代码的运行结果是（选一项）' || chr(10) || 'static void Main(string[]args)' || chr(10) || '{   ' || chr(10) || '     Console.WrinteLine("运行结果是：{0}","运行结果");' || chr(10) || '}', '运行结果', '运行结果是：{0}', '运行结果是：运行结果', '运行结果是运行结果', 1576, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '对于下面的存储过程：' || chr(10) || 'CREATE PROCEDURE Myp1 @p Int As' || chr(10) || 'Select Studentname,Age from Students where Age=@p' || chr(10) || '假如你要在Students表中查找年龄是18岁的学生，（）可以正确的调用这个存储过。' || chr(10) || '（选一项）', 'EXEC Myp1 @p = ''18''', 'EXEC Myp1 @p = 18', 'EXEC Myp1 p = ''18''', 'EXEC Myp1 p = 18', 1577, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下（   ）语句从表student中提取前5条记录。（选一项）', 'select * from student where rowcount=5', 'select TOP of 5 * from student', 'select TOP 5 * from student', 'select * from student where rowcount<=5', 1578, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'SQL Server数据库中，包含两个表:Order订单表， Item订单子项目表。当一个新定单被加入时，数据要分别保存到Order和Item表中，要保证数据完整性，可以使用以下(  )语句。（选一项）', 'BEGIN TRANSACTION ' || chr(13) || 'INSERT INTO Order VALUES (此处省略)' || chr(13) || 'INSERT INTO Item VALUES (此处省略)' || chr(13) || 'END TRANSACTION', 'BEGIN TRANSACTION' || chr(13) || 'INSERT INTO Order VALUES (此处省略)' || chr(13) || 'INSERT INTO Item VALUES (此处省略)' || chr(13) || 'IF (@@Error = 0)' || chr(13) || 'COMMIT TRANSACTION' || chr(13) || 'ELSE' || chr(13) || 'ROLLBACK TRANSACTION', 'BEGIN TRANSACTION' || chr(13) || 'INSERT INTO Order VALUES (此处省略)' || chr(13) || 'IF (@@Error = 0)' || chr(13) || 'INSERT INTO Item VALUES (此处省略)' || chr(13) || 'IF (@@Error = 0)' || chr(13) || 'COMMIT TRANSACTION' || chr(13) || 'ELSE' || chr(13) || 'ROLLBACK TRANSACTION' || chr(13) || 'ELSE' || chr(13) || 'ROLLBACK TRANSACTION', 'BEGIN TRANSACTION' || chr(13) || 'INSERT INTO Order VALUES (此处省略)' || chr(13) || 'INSERT INTO Item VALUES (此处省略)' || chr(13) || 'IF (@@Error <> 0)' || chr(13) || 'ROLLBACK TRANSACTION', 1579, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于ContenValues类说法正确的是？(选择一项)', '他和Hashtable比较类似，也是负责存储一些名值对，但是他存储的名值对当中的名是String类型，而值都是基本类型', '他和Hashtable比较类似，也是负责存储一些名值对，但是他存储的名值对当中的名是任意类型，而值都是基本类型', ' 他和Hashtable比较类似，也是负责存储一些名值对，但是他存储的名值对当中的名，可以为空，而值都是String类型', '他和Hashtable比较类似，也是负责存储一些名值对，但是他存储的名值对当中的名是String类型，而值也是String类型', 1580, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在发微博中用来提醒好友的符号是(单选）', '使用“@”', '使用“$”', '使用“&” ', '使用“#”', 1581, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于线程说法不正确的是()(选择一项)', '在 android 中，我们可以在主线程中，创建一个新的线程', '在创建的新线程中，它可以操作 UI 组件', '新线程可以和 Handler 共同使用', '创建的 Handler 对象，它隶属于创建它的线程', 1582, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '全局视图是通过()标记来定义（选择一项）', '<result>', '<global-results>', '<action>', '<interceptor>', 1583, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', 'struts2中获取Servlet API的方法正确的是（选择两项）', '使用ActionContext对象以解耦合的方法访问Servlet API', '使用ServletActionContext对象以解耦合的方式访问Servlet API', '使用ActionContext对象以耦合的方式访问Servlet API', '使用ServletActionContext对象以耦合的方式访问Servlet API', 1584, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#语言中，下列关于属性的描述正确的是（选一项）', '属性系是以public关键字修饰的字段，以public关键字修饰的字段也可称为属性', '属性是访问字段值的一种灵活机制，属性更好地实现了数据的封装和隐藏', '要定义只读属性只需在属性名前加上readonly关键字', '在C#的类中不能自定义属性', 1585, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在J2EE中，对于Httpservlet类的描述，错误的是（选一项）', '我们自己编写的Servlet继承了HttpServlet类，一定需覆盖doPost或者doGet', 'Httpservlet类扩展了GenericServlet类，实现了GenericServlet类的抽象方法', 'Httpservlet类中处理客户请求和响应时所使用的两个接口是：HttpServletRequest和HttpServletResponse．', '我们自己编写的servlet继承了Httpservlet类，一般只需要覆盖doPost方法，不必覆盖servive（）方法，因为一个service（）方法会调用doPost或者doGet方法', 1586, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '对于软件测试，以下（ ）是不可能的。（选一项）', '进行单元测试', '对程序完全测试', '编写测试计划', '针对软件中的缺陷进行纠正', 1587, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '为了提取当前日期的小时数，并且判断如果当前的小时数小于12则在页面中显示“上午好!”,否则显示“下午好！”。下列JavaScript 代码正确的是（选一项）', 'var todays_date=new Date();' || chr(13) || 'var seconds=todays_date.getSeconds();' || chr(13) || 'var str=(seconds>12)?"上午好!":"下午好!";' || chr(13) || 'document.write(str);', 'var todays_date=new Date();' || chr(13) || 'var hours=todays_date.getHours();' || chr(13) || 'var str=(hours<12)?"上午好!":"下午好!";' || chr(13) || 'document.write(str);', 'var todays_date=new Date();' || chr(13) || 'var seconds=todays_date.getSeconds();' || chr(13) || 'var str=(seconds<12)?"上午好!":"下午好!";' || chr(13) || 'document.write(str);', 'var todays_date=new Date();' || chr(13) || 'var hours=todays_date.getHours();' || chr(13) || 'var str=(hours>12)?"上午好! ":"下午好! ";' || chr(13) || 'document.write(str);', 1588, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '分析下面的JavaScript代码段，下面正确的是（选两项）' || chr(10) || '<FORM>' || chr(10) || ' <INPUT TYPE="text" name="Text1" value="Text1">' || chr(10) || ' <INPUT TYPE="text" name="Text2" value="Text2" onFocus=alert("我是焦点") onBlur=alert("我不是焦点！")>' || chr(10) || '</FORM>', '当用鼠标选中Text2时，弹出”我是焦点”消息框，再用鼠标选中Text1文本框时，弹出”我不是焦点”消息框', '当用鼠标选中Text1时，弹出”我是焦点”消息框，再用鼠标选中Text2文本框时，弹出”我不是焦点”消息框', '假如现在输入光标在Text1上，用鼠标单击页面上除Text2以外的其他部分时，弹出”我不是焦点”消息框', '假如输入光标在Text2上，用鼠标单击页面上的其他部分时，弹出”我不是焦点”消息框', 1589, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在DTD中定义school元素的一个属性name，应该定义为（选一项）', '< !ATTLIST school name CDATA >', '<ELEMENT school name CDATA >', '< ATTLIST school name CDATA >', '< !ENTITY school name CDATA >', 1590, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面是有关Oracle主键约束的描述，正确的是（选一项）', '主键约束用于唯一的确定表中的每一行数据', '在一个表中，最多只能有2个主键约束', '主键约束只能由一个列组成', '主键约束不能由一个单列组成', 1591, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有关ORACLE触发器的说法正确的是（选一项）', '可以通过手工的方式激发触发器', '停用触发器的唯一方法是删除触发器', '行级触发器是在修改每条记录时都触发一次', '在行级触发器中可以使用deleted和inserted表', 1592, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在SQL Sever 2005中，使用的登录名本身不具有访问数据库的权限，登录名还必须与数据库的用户ID进行关联才能访问对应的数据库，如果正确登录的用户名没有与数据库中的任何用户ID相关联，将（选一项）', '自动使用sa登录名所关联的用户权限', '登录后无任何访问权限', '若存在guest用户，则它将自动被关联到guest的用户ID', '导致登录失败', 1593, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在.NET中，从属性的读写特性上来进行分类，可以划分为以下三种，除了（选一项）', '只读属性', '只写属性', '读写属性', '不可读不可写的属性', 1594, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '给定TheBean类，假设还没有创建TheBean类的实例，以下哪些JSP标准动作语句能创建这个bean的一个新实例，并把它存储在请求作用域（选一项）', '<jsp :useBean name="myBean"  type="com.example.TheBean"/>', '<jsp :takeBean name="myBean"  type="com.example.TheBean"/>', '<jsp :useBean id="myBean"  class="com.example.TheBean" scope="request"/>', '<jsp :takeBean id="myBean"  class="com.example.TheBean" scope="request"/>', 1595, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '(  )用于操作JSP中的范围变量。（选一项）', '条件标签' || chr(13) || '', '迭代标签' || chr(13) || '', '常用标签' || chr(13) || '', '自定义标签' || chr(13) || '', 1596, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于泛型集合List<T>说法错误的是（选一项）', 'List<T>在获取元素时需要进行类型转换', 'List<T>是通过索引访问集合中的元素', 'List<T>可以根据索引删除元素，还可以根据元素名称删除', '定义List<T>对象需要实例化', 1597, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '__方法要求窗口显示刚刚访问的前一个窗口。（选一项）', 'back()', 'go()', 'display()', 'view()', 1598, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '软件测试的目的是（选一项）', '评价软件的质量', '发现软件的错误', '找出软件中的所有错误', '证明软件是正确的', 1599, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在JavaScript的某些情况下（）语句可以代替多重if语句（选一项）', 'if…else', 'for', 'while', 'switch…..case', 1600, 206);
commit;
prompt 1600 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在XPath中,"//B[@id]"表示（选一项）', '节点"B"的所有子节点', '所有具有属性id的"B"节点', '"B"节点的前面的所有元素', '所有具有属性"B"的id节点', 1601, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '看下面代码，正确的是( 选一项 )', 'DECLARE ' || chr(13) || 'DBMS_OUTPUT.PUT_LINE(''定义部分''); ' || chr(13) || 'BEGIN ' || chr(13) || 'DBMS_OUTPUT.PUT_LINE(''语句部分''); ' || chr(13) || 'END;', 'BEGIN ' || chr(13) || 'NUM NUMBER:=100; ' || chr(13) || 'DBMS_OUTPUT.PUT_LINE(''NUM 的值为:''||NUM); ' || chr(13) || 'END;', 'DECLARE ' || chr(13) || 'NUM NUMBER:=100; ' || chr(13) || 'BEGIN ' || chr(13) || 'NUM:=NUM+NUM/2; ' || chr(13) || 'DBMS_OUTPUT.PUT_LINE(''NUM 的值为:''||NUM); ' || chr(13) || 'END;', 'BEGIN ' || chr(13) || 'NUM NUMBER:=100; ' || chr(13) || 'DECLARE ' || chr(13) || 'NUM:=NUM+NUM/2; ' || chr(13) || 'DBMS_OUTPUT.PUT_LINE(''NUM 的值为:''||NUM); ' || chr(13) || 'END;', 1602, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列ORACLE说法错误的是（选一项）', 'UNION集合运算中不会存在重复记录', 'UNION ALL集合运算不会存在重复记录', 'INTERSECT运算结果是两个结果集合中共同的部分', 'MINUS运算中不存在第二个集合的记录', 1603, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Oracle中，表EMP包含以下列：' || chr(10) || '  ……' || chr(10) || 'NAME VARCHAR2(20)' || chr(10) || 'ADDR VARCHAR2(60)' || chr(10) || '  ……' || chr(10) || '要以NAME''s address is ADDR格式返回数据，以下SQL语句正确的是（选一项）', 'SELECT NAME   ''''''s address is ''   ADDR FROM EMP;', 'SELECT NAME || ''''''s address is '' || ADDR FROM EMP;', 'SELECT NAME   ''\''s address is ''   ADDR FROM EMP;', 'SELECT NAME || ''\''s address is '' || ADDR FROM EMP;', 1604, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面关于DispatchAction的说法正确的是（选一项）', '.实现DispatchAction Bean需要实现org.apache.struts.actions.DispatchAction接口。', 'DispatchAction Bean中不需要定义execute方法。', '配置DispatchAction Bean与配置普通Action Bean没有区别。', '可通过http://localhost:8080/app/da.do直接访问DispatchAction。', 1605, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列关于各种UML图，说法正确的是(  )。' || chr(13) || '', '借助时序图、状态图、活动图可以描述系统的动态模型' || chr(13) || '', '时序图显示对象在生命周期内响应外部事件和消息时所经历的状态序列' || chr(13) || '', '状态图着重于多个事物的描述' || chr(13) || '', '活动图是按时间顺序模拟控制流程' || chr(13) || '', 1606, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列关于用例图的说法，错误的是(  )。' || chr(13) || '', '用例图有助于将重点放在系统可能的用户上' || chr(13) || '', '用例图有助于确定用户与系统交互时扮演的角色' || chr(13) || '', '在用例图中，用圆形表示系统边界' || chr(13) || '', '用例之间的关系包括扩展关系，包含关系' || chr(13) || '', 1607, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Action中有包括代码“request.setAttribute("data", list)”，则下面logic:iterate使用正确的是（选一项）', '<logic:iterate property="list" var="item">${item.title}</logic:iterate>', '<logic:iterate name="list" id="item">${item.title}</logic:iterate>', '<logic:iterate property="data" var="item">${item.title}</logic:iterate>', '<logic:iterate name="data" id="item">${item.title}</logic:iterate>', 1608, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Spring和Hibernate结合之后，下面的哪些情况会发生（选一项）', '不用写任何操作数据库的内容，它会自己操作数据库', '不用写任何事务操作的内容，它会自己管理事务', '会增加程序的复杂度，更难维护', '会简化 Hibernate 的数据库操作', 1609, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下代码的作用是（选一项）' || chr(10) || '<bean id="myTxManager" class="org.springframework.orm.hibernate3.HibernateTransactionManager">' || chr(10) || '<property name="sessionFactory" ref="mySessionFactory"/>' || chr(10) || '</bean>', '声明Hibernate的工厂Bean为myTxManager', '声明Hibernate的事务管理Bean为myTxManager', '声明SessionFactory为myTxManager', '以上都不是', 1610, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于ASP.NET配置文件的一些特点，描述错误的是（选一项）', 'ASP.NET 允许将配置设置与静态内容、动态页和业务对象一起存储在应用程序的目录层次结构中。', 'ASP.NET 不可以通过IIS对配置文件进行直接的浏览器访问', 'machine.config设置可应用于整个服务器的属性', 'Web.config只能存放在根目录中', 1611, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有关ORACLE的INSTEAD OF触发器说法正确的是（选一项）', '替代触发器的触发源可以是表', '替代触发器可以后置触发', '替代触发器就是用触发器执行部分替换DML语句的操作', '替代触发器仍然会执行DML语句', 1612, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列任务中，不属于软件工程需求分析阶段的是(  )。' || chr(13) || '', '分析软件系统的数据要求' || chr(13) || '', '确定软件系统的功能要求' || chr(13) || '', '确定软件系统的性能要求' || chr(13) || '', '确定软件系统的运行平台' || chr(13) || '', 1613, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面html标签的使用中正确的是（选一项）' || chr(10) || '', '<html:text type="hidden" name="opr" value="toList"/>' || chr(13) || '', '<html:submit class="btn">提交</html:submit>' || chr(13) || '', '<html:select property="from"><html:option value="1">武汉</html:option></select>' || chr(13) || '', '<html:optionsCollection label="uname" value="uid"/>' || chr(13) || '', 1614, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列(  )不属于UML的应用开发领域。' || chr(13) || '', '信息系统' || chr(13) || '', '技术系统' || chr(13) || '', '业务系统' || chr(13) || '', '导弹系统' || chr(13) || '', 1615, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于Spring和Struts的集成，下面说法错误的是（选一项）', 'Spring 提供了插件扩展机制，可以方便地与其他技术集成', 'Struts 提供了插件机制，可以方便地与其他技术集成', 'Spring 配置文件只要放在类路径中就可以被 Struts 找到', 'Spring 配置文件中 Action Bean 的 id 属性要与 Struts 配置文件中对应 Action 的 name 属性相同', 1616, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '使用Session的(  )会把对象的状态从数据库中移除。（选一项）' || chr(10) || '', 'delete()' || chr(13) || '', 'query()' || chr(13) || '', 'queryAll()' || chr(13) || '', 'query()' || chr(13) || '', 1617, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Spring连接jdbc的内容，以下说法错误的是（选一项）', 'spring 不是通过 jdbc 方式进行连接的', 'spring 和 jdbc 的配置中可以选择是用 sql 还是 hql', 'spring 配置 jdbc 不能用存储过程', 'spring 配置 jdbc 无法简化 jdbc 连接数据库的步骤', 1618, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于BeanFactory说法错误的是（选一项）', '它是一个接口', '最常用的是XmlBeanFactory', 'BeanFactory所管理的bean的定义只能来自于一个配置文件', 'ApplicationContext也是一个BeanFactory', 1619, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'session对象的(  )方法时会触发session_onend事件。（选一项）', 'count', 'abandon', 'add', 'remove', 1620, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ASP.NET的身份验证系统非常灵活，它支持4种模式的设置，以下不属于这4中模式的是（选一项）', 'Windows类型', 'Forms类型', 'IIS类型', 'None类型', 1621, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中,某程序员在一个页面的Load事件中编写了如下代码，已知该页面使用了输出缓存。现有两个用户分别在12：10、和12：12访问了该页面，下列说法正确的是（选一项）' || chr(10) || 'private void Page_Load(object sender,System.EventArgs e)' || chr(10) || '{    Response.Write(DateTime.Now.ToShortDateString());  }', '第一个用户一定输出12：10，第二个用户一定输出12：12', '第一用户一定输出12：10，第二个用户输出12：10或者12：12', '第一个用户、第二个用户一定都输出12：10', '第一个用户、第二个用户可能都输出12：12', 1622, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有以下代码' || chr(10) || 'package x.y;' || chr(10) || '  public class Foo {' || chr(10) || '      public Foo(Bar bar, Baz baz) {' || chr(10) || '        // ...' || chr(10) || '    }' || chr(10) || '}能够正确的使用构造函数创建Bean的配置是（选一项）', '<bean id="exampleBean" class="examples.ExampleBean">' || chr(13) || '<constructor-arg type="int" />' || chr(13) || '      <constructor-arg type="java.lang.String" />' || chr(13) || '</bean>', '<bean id="exampleBean" class="examples.ExampleBean">' || chr(13) || '<constructor-arg type="int" value="7500000"/>' || chr(13) || '      <constructor-arg type="string" value="42"/>' || chr(13) || '</bean>', '<bean id="exampleBean" class="examples.ExampleBean">' || chr(13) || '<constructor-arg type="int" value="7500000"/>' || chr(13) || '      <constructor-arg type="java.lang.String" value="42"/>' || chr(13) || '</bean>', '<bean id="exampleBean" class="examples.ExampleBean">' || chr(13) || '<constructor-arg value="7500000"/>' || chr(13) || '      <constructor-arg value="42"/>' || chr(13) || '</bean>', 1623, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Spring中DAO模块的功能是（选一项）', '提供和常用ORM框架的集成', '提供JDBC的抽象层，提高JDBC编程性和声明式事物管理', 'Web中的文件上传', '提供和常用ORM框架的集成', 1624, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'RequiredFieldValidator控件的ErrorMessage的属性用来（选一项）', '设置错误信息', '设置到验证的控件', '定位错误类型', '启动错误处理程序', 1625, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '通过ContextLoaderPlugin配置整合Struts的配置方法是（选一项）', '<plug-in className="org.springframework.web.struts.ContextLoaderPlugIn">' || chr(13) || '  ' || chr(9) || '' || chr(9) || '<set-property property="contextConfigLocation"/>' || chr(13) || '</plug-in>', '<plug-in className="org.springframework.web.struts.ContextLoaderPlugIn">' || chr(13) || '  ' || chr(9) || '' || chr(9) || '<set-property  value="/WEB-INF/applicationContext.xml"/>' || chr(13) || '</plug-in>', '<plug-in className="org.springframework.web.struts.ContextLoaderPlugIn">' || chr(13) || '  ' || chr(9) || '' || chr(9) || '<set-property property="contextConfigLocation"' || chr(13) || '     ' || chr(9) || '' || chr(9) || '' || chr(9) || 'value="/WEB-INF/applicationContext.xml"/>' || chr(13) || '</plug-in>', '<plug-in className="org.springframework.web.struts.ContextLoaderPlugIn">' || chr(13) || '  ' || chr(9) || '' || chr(9) || '<set-property property=" ContextLoaderPlugIn "' || chr(13) || '     ' || chr(9) || ' ' || chr(9) || '' || chr(9) || 'value="/WEB-INF/applicationContext.xml"/>' || chr(13) || '</plug-in>', 1626, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中，为了从当前页面跳转到一个相同目录下名为Main.htm的页面，下面的方法正确的是（选一项）', 'Server.Execute("Main.htm")', 'Server.Transfer("Main.htm")', 'Response.Redirect("Main.htm")', 'Response.Write("Main.htm")', 1627, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果需要确保用户输入大于30的值，应该使用(  )验证控件。（选一项）', 'RequiredFieldValidator', 'CompareValidator', 'RangeValidator', 'RegularExpressionValidator', 1628, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在考勤系统中用于考勤识别的读写器应当设置为（ ）模式（选一项）', '主从模式、单标签读取', '定时模式、单标签读取', '主从模式、多标签读取', '定时模式、多标签读取', 1629, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '某程序员开发一个ASP.NET应用程序,在应用程序的虚拟目录下有一个名为student.xml的文件,在虚拟目录下有一个Web页面,为了在该Web页面中将student.xml的数据读取到一个DataSet对象中,下列编码正确的是（选两项）', 'DataSet ds = new DataSet();    ds.ReadXml("student.xml",XmlReadMode.ReadSchema);', 'DataSet ds = new DataSet();    ds.ReadXml(Server.MapPath("student.xml"),XmlReadMode.ReadSchema);', 'DataSet ds = new DataSet("student");    StreamReader reader = new StreamReader(Server.MapPath("student.xml"));    ds.ReadXml(reader);', 'DataSet ds = new DataSet(student);    StreamReader reader = new StreamReader(Server.MapPath("student.xml"));    reader.read(ds);', 1630, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET中有Button控件myButton，要是单击控件时，导航到其他页面http://www.abc.com, 正确的代码为（选一项）', 'private void myButton_Click(object sender, System.EventArgs e){Redirect("http://www.abc.com/");}', 'private void myButton_Click(object sender, System.EventArgs e)' || chr(13) || '' || chr(10) || '{Request.Redirect("http://www.abc.com/");}', 'private void myButton_Click(object sender, System.EventArgs e)' || chr(13) || '' || chr(10) || '{Reponse.Redirect("http://www.abc.com/");}', 'private void myButton_Click(object sender, System.EventArgs e)' || chr(13) || '' || chr(10) || '{Request.Redirect("http://www.abc.com/");return true;}', 1631, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '关于HttpHandler程序的说法正确的是（选两项）', '它是请求处理的终点', '它实现了IhttpHandler接口', 'IsReusable属性设置为false时，表明程序只能使用一次', '文件后缀名是.ashx', 1632, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP．NET中，下列关于用户控件与自定义控件的比较，说法正确的是（选一项）', '自定义控件可以跨应用程序使用', '用户控件可以跨应用程序使用', '自定义控件是.ascx文件', '用户控件是dll文件', 1633, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面说法正确的是（ ）', '创建SQL Server Mobile 数据库时不能设置访问密码', '创建SQL Server Mobile 数据库时必须设置访问密码', '可以使用移动设备上的程序直接连接SQL Server 数据服务器', '不能使用移动设备上的程序直接连接SQL Server 数据服务器', 1634, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面不属于空间数据库特点的是 ： （ 选择一项）', '空间数据库不仅存放着地理要素的属性数据，还有大量的空间数据', '空间数据库所存储的数据量一般特别大', '空间数据库的数据应用广泛，例如地理研究、环境保护、土地利用与规划、资源开发、生态环境、市政管理、道路建设等', '空间数据库是专门存放空间数据的，商用关系数据库管理系统不能存放空间信息', 1635, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '资源文件的后缀名为（  ）（选择一项）', 'txt', ' doc', ' property', ' properties', 1636, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '不正确的指针概念是（ ）（选一项）', '一个指针变量智能指向同一类型的变量', '一个变量的地址称为该变量的指针', '只有同一类型变量的地址才能存放在指向该类型变量的指针变量之中', '指针变量可以赋任意整数，但不能赋浮点数', 1637, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET页面中，使用验证控件来限制用户输入的出生年份在1900到2010，以下（）代码行能够实现（选一项）', '<asp:rangevalidator controltovalidate="txtBorth" type="Integer" minimumvalue="1900" maximumvalue="2010" errormessage="非法！" display="dynamic" runat="server" > </asp:rangevalidator>', '<asp:CompareValidator controltovalidate="txtBorth" type="Integer" minimumvalue="1900" maximumvalue="2010" errormessage="非法！" display="dynamic" runat="server" > </asp:rangevalidator>', '<asp:CompareValidator controltovalidate="txtBorth" type="Integer" valuetocompare="1900" operator = "GreaterThan" valuetocompare="2010" operator = "LessThan" errormessage="非法！" display="dynamic" runat="server" > </asp:rangevalidator>', '<asp:RegularExpressionValidator controltovalidate="txtBorth" type="Integer" validationexpression = "1900-2010" errormessage="非法！" display="dynamic" runat="server" > </asp:rangevalidator>', 1638, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中下列关于Response ,Request对象的说法错误的是（选一项）', 'Request用于检索从浏览器向服务器发送请求的信息', 'Request用于将数据从服务器发送到浏览器', 'Response对象的Redirect方法用于将客户端重定向到指定的页面', 'Response对象的Write方法用于在客户端输出信息', 1639, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '某数据挖掘公司专门出售对其股票报价引擎的访问权，如这家公司使用下列（）技术，就可以把股票报价服务卖给数百家客户，而无需进行任何定制或修改。（选一项）', '编写多个股票接口以适应不同的客户机', 'Web服务', 'EJB', 'RMI', 1640, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列选项中，关于Struts2配置文件说法正确的是（   ）（选择一项）', '必须置于WEB-INF/classes目录下', '必须为Struts.xml', '配置Action时必须配置包信息', '使用<forward>元素配置转发', 1641, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'GIS所包含的数据均与（单选）', '地理事物的类别相联系 ', '非空间属性相联系', '地理事物的质量特征相联系', '地理空间位置相联系', 1642, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面关于ArcGIS的描述哪项是错误的（单选）', ' Geodatabase中的关系类能够在ArcCatalog的目录树中看到 ', ' ArcCatalog是编辑属性数据和创建地图的主要应用程序', 'ArcGIS的一个personal geodatabase通常可以使用微软的Access作为它的RDBMS，而企业级geodatabase可以使用诸如Oracle或SQL Server这样的RDBMS', 'Coverage格式的数据在ArcGIS中是不可编辑的', 1643, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '以下关于匹配模式说法正确的是？（多选）', '否定匹配的出现加大了广告的精准性，减少预算的浪费，百度系统每个计划能提交500个否定关键词', '使用广泛匹配减少了思考关键词的劳累过程，只要提交几个简单的关键词，那么系统便会帮助你匹配许多关键并在左侧推广位置予以展现', '时常下载搜索词报告，分析搜索词结果，将不相关关键词放入否定词，提高广告效果', '广泛匹配覆盖的范围最大', 1644, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '以下关于关键词推荐工具中高级查询功能的说法，正确的是：（多选）', '当勾选”显示搜索量最高月份”后，显示推荐关键词在过去12个月中搜索量最高的具体月份', '当在“不包含以下词汇的推荐结果”下方的输入框中添加某个或某些词语时，最多可输入40个词', '当勾选“显示地域拓展词”后，代表推荐结果出现带有地域的关键词', '当在 “不包含以下词汇的推荐结果”下方的输入框中添加某个或某些词语，此时推荐结果中将不会出现包含这些词语的关键词', 1645, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'nesC语言编写的程序文件的扩展名是（）（选一项）', '.h', '.nc', '.cs', '.c', 1646, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在一个ArcMap的MXD文件中，通过下列哪一个选项的属性对话框，可以更改图层所显示的投影信息（单选）', 'data frame', 'data layer', 'feature dataset', 'feature class', 1647, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于ArcMap中连接（joins）和关联（relates）的描述哪项是正确的（单选）', '连接和关系存储在一个地图文档中 ', ' ArcMap中只有所有的表都打开你才能创建一个联系 ', '通过属性编辑器，你可以在联系表中编辑属性值 ', '连接创建的虚拟表不能在ArcMap中导出 ', 1648, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '虚仓与实仓的区别有（选择一项）', '实仓进行数量和金额核算，虚仓只进行数量核算，不进行金额核算', '虚仓能进行仓位管理', '虚仓宜处理物料批次管理、保质期管理', '即时库存查询不能查看到虚仓数量结存情况', 1649, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下关于jQuery的描述错误的是（）。（选一项）', 'jQuery 是一个 JavaScript 函数库', 'jQuery 极大地简化了 JavaScript 编程', ' jQuery 的宗旨是 “write less，do more”', ' jQuery的核心功能不是根据选择器查找HTML元素，然后对这些元素执行相应的操作', 1650, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '按钮有什么功能（单选）', '在ArcMap目录表中的数据和源视图标签间切换 ', '允许用户在ArcMap中为布局选择不同的模板', ' 在布局视图中，停止在页面中绘制地图数据 ', '将XML元数据转换为一种新的可自定义的格式 ', 1651, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '有关固定资产卡片中的预计使用期间数和预计净残值率是在下列那选项中设置的（  ）(选择一项)', '变动方式类别', '使用状态类别', '卡片类别管理', '折旧方法定义', 1652, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '收到国家拨入A原材料一批，该材料评估价为300000，作为对我公司的投资。其帐务处理贷方为“贷：实收资本—国家资本     300000”，则借方为（     ）(选择一项)', '借：原材料——A材料      300000', '借：银行存款              300000', '借：应收帐款              300000', ' 借：应付帐款——A材料    300000', 1653, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '以下关于ValueStack说法正确的是（选择三项）', '每个Action对象实例拥有一个ValueStack对象', '每个Action对象实例拥有多个ValueStack对象', 'Action中封装了需要传入下一个页面的值，这些值封装在ValueStack对象中', 'ValueStack会在请求开始时被创建，请求结束时消亡', 1654, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面属于实用型地理信息系统的是 ： （ 选择一项） ', 'MapGIS农村二次调查管理系统', 'MapGIS基础平台', 'Mapinfo平台', 'ArcGIS9.x', 1655, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于ArcGIS的客户化下面的陈述中错误的是哪项（单选）', '你必须拥有至少一个ArcEditor的许可才能定制接口 ', '当定制对话框打开时，工具栏上的按钮可以通过拖动到工具栏或是从工具栏上移走，而被添加或是删除 ', ' Context菜单可以被修改 ', '可以为命令指定快捷键 ', 1656, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '以下关于关键词分组的说法错误的是（多选）', '推广单元是管理关键词创意的小单位，可以便于更有针对性地撰写创意', '推广单元主要目的是确保在创意中插入通配符获得飘红时，能保证语句通顺，达到更好的推广效果，所以只要将结构相同的关键词分到同一单元即可，不需要意义相近', '将意义相近、结构相同的关键词纳入同一推广单元中能够达到更好的推广效果 ', '将所有品牌词分到同一推广单元：即含有自有品牌的关键词，或一些专有品牌资产名称，包括其他竞争品牌', 1657, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ArcMap中什么地方定义数据框架的坐标系？（单选）', '在文件菜单的地图属性', '在地图属性的General标签页里', '在工具菜单里 ', '在数据框架的属性中 ', 1658, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面陈述中对ArcGIS空间索引描述最佳的是哪项？（单选）', '定义所选择要素四周的几何范围 ', '用来迅速定位匹配选择标准的要素 ', '方便要素和表属性字段之间的连接', '一组所选择要素的一列坐标值 ', 1659, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在销售订单单据序时簿中如果要查看本单据关联生成的销售报价单，需进行（   ）操作（选择一项）', '上查', '下查 ', '上推', '下推', 1660, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '使用ArcView 9 许可文件的Overlay工具箱中，哪个工具是可用的？（单选）', ' Erase ', 'Update', 'Split ', ' Intersect ', 1661, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于ArcMap符号样式的描述正确的是哪项（单选）', ' 一个ArcMap地图文档中只能访问一个.style文件', ' 存在的styles可以被编辑，但是新的styles不能被创建 ', ' Route hatch是符号样式的一种形式 ', ' 点符号可以直接从JPEG图像文件创建 ', 1662, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '可进行单据反审核操作的人员有（选择一项）', '有审核权限的所有人员', '单据的原审核人', '系统管理员', '以上所有人员都可以', 1663, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '获取<div id="content">内容…</div>标签里的文本内容。（选择两项）', '$("#content").val();', '$("#content").html();', '$("#content").text();  ', '$("#content").innerHTML();', 1664, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面关于ArcGIS XML导入/导出功能描述错误的是（单选）', '将XML工作空间的文档导出时，有一个选项可以选择导出哪些要素类 ', ' 当将一个XML工作空间文档导入到一个geodatabase中时，有一个选项可以选择导入哪些要素类 ', '如果将一个XML工作空间文档发送给一个非ArcGIS用户，该文档应该存储在“标准”的格式中 ', '依靠XML导出选项，你能够保存诸如几何网络和拓扑等geodatabase行为', 1665, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '金蝶K/3 10.3工资系统中，关于期末结账的描述不正确的是(选择一项)', '期末结账会把工资项目类别为固定项目的值还到下一期', '期末结账后，上一期的工资数据不允许修改', '期末结账后，工资项目类别为变动的将会删除', '期末结账提供了按次和按月的结账方法', 1666, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '资源文件的后缀名为___________。(选择一项)', 'txt', 'doc', 'property', 'Properties', 1667, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '淘宝网提供哪些方式来方便买家进行搜索( )(选择三项)', '搜索宝贝关键字 ', '搜索店铺名或店铺关键字', '搜索宝贝所在地  ', '搜索掌柜名', 1668, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面程序段执行完毕，页面上的显示内容是什么?( )' || chr(10) || '<?' || chr(10) || '   $a=10;' || chr(10) || '   echo “a++:”.$a++;' || chr(10) || '   echo”变量a的新值是：”.a .”<br>”; ' || chr(10) || '   echo “- -a:”.$a- -;' || chr(10) || '   echo”变量a的新值是：”.a .”<br>”;' || chr(10) || ' ?>' || chr(10) || '', 'a++:11 变量a的新值是: 11  - -a:9 变量a的新值是: 9    ', 'a++:10 变量a的新值是: 11  - -a:10变量a的新值是: 9', 'a++:10变量a的新值是:  11  - -a:9变量a的新值是: 9', '以上都不正确', 1669, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下代码执行结果(选择一项)' || chr(10) || '<?php' || chr(10) || 'mysql_connect("localhost","root","")' || chr(10) || '$result = mysql_query("select id,namefrom tb1");' || chr(10) || 'while($row =mysql_fetch_array($result,MYSQL_ASSOC))' || chr(10) || '{echo "ID:" . $row[0] ."Name:" . $row[];}' || chr(10) || ' ' || chr(10) || '?>' || chr(10) || '', ' 报错', '只打印第一条记录', '循环换行打印全部记录', ' 无任何结果 ', 1670, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'RFID设备根据频率来分类可分为四类，下面分类正确的是（ ）（选一项）', '低频、高频、超高频、微波', '低频、中频、高频、超高频', '低频、高频、超高频、射频', '低频、中频、高频、微波', 1671, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列说法正确的是？(选择一项)', '每个进程都运行于自己的 java 虚拟机(VM)中。', '默认情况下，每个应用程序中均运行于自己的进程中，而且此进程不会被消毁。', ' 每个应用程序会被赋予一个唯一的 linux 用户 ID，从而使得该应用程序下的文件， 其它用户也可以访问。', '一个应用程序数据，可以随意被其它应用程序所访问。', 1672, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'HTML标签<title>与之间</title>显示的是(单选）', '关键词', '描述', '网站的标题', '网站内容', 1673, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如需要使用多标签读取函数时，需要将读写器设置（ ）状态（选一项）', '触发模式+多标签识别', '定时模式+多标签识别', '主从模式+多标签识别', '以上均可', 1674, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '提取Java存取数据库能力的包是（）(选择一项)' || chr(10) || '' || chr(10) || '', ' java.sql ', ' java.awt', ' java.lang', ' java.swing', 1675, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于Struts、Spring、Hibernate的集成框架，下列说法正确的是（选一项）', '使用SSH 框架开发项目，由于增加了大量配置工作，从而会降低开发的效率', '三个框架可以用多种方式进行集成', '使用 SSH 框架开发不利于实现复杂的业务逻辑', '使用 SSH 框架开发不利于构造复杂的页面和交互流程', 1676, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '下列正确的有（）(选择三项)', 'call by reference不能改变实际参数的参考地址', 'call by reference能改变实际参数的参考地址', 'call by reference能改变实际参数的内容', 'call by value不会改变实际参数的数值', 1677, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '不同的线程在调用Action时创建几个Action实例。（）(选择一项)', '1个', '2个', '每个线程创建1个。', '可以自定义配置。', 1678, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '会计凭证分为哪两种（    ）(选择一项)', '收款凭证、付款凭证', '原始凭证、记账凭证', ' 收款凭证、通用凭证', ' 原始凭证、付款凭证', 1679, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于struts1和struts2对比的说法正确的是（选择一项）', 'struts1要求Action类继承struts1框架中的Action父类，struts2中则不一定需要继承，可以是POJO类', 'struts1中的Action不是线程安全的，而struts2中的Action是线程安全的', 'struts1和struts2中都使用ActionForm对象封装用户的请求数据', 'struts1使用OGNL表达式语言来支持页面效果，struts2通过ValueStack技术使标签库访问值', 1680, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于固定资产的“本月工作量”保存时，以下哪种情况可以进行保存？ （单选）', '“预计工作总量”≥“已用工作量”+“本月工作量”', '“预计工作总量” = “已用工作量”+“本月工作量”', '“预计工作总量”﹤“已用工作量”+“本月工作量”', 'D. 以上都错误', 1681, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', 'struts2在控制器类中一般需要添加相应属性的（  ）和（  ）（选择二项）', ' setter方法', ' as方法', 'getter方法', 'is方法', 1682, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在jquey中，如果想要从DOM中删除所有匹配的元素，下面哪一个是正确的 （选择一项）', 'delete()', 'empty()', 'remove() ', 'removeAll()', 1683, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面关于Android dvm的进程和Linux的进程,应用程序的进程说法正确的是？(选择一项)', 'DVM指dalivk的虚拟机.每一个Android应用程序都在它自己的进程中运行,不一定拥有一个独立的Dalvik虚拟机实例.而每一个DVM都是在Linux中的一个进程,所以说可以认为是同一个概念.', 'DVM指dalivk的虚拟机.每一个Android应用程序都在它自己的进程中运行,不一定拥有一个独立的Dalvik虚拟机实例.而每一个DVM不一定都是在Linux中的一个进程,所以说不是一个概念.', 'DVM指dalivk的虚拟机.每一个Android应用程序都在它自己的进程中运行,都拥有一个独立的Dalvik虚拟机实例.而每一个DVM 不一定都是在Linux 中的一个进程,所以说不是一个概念.', 'DVM指dalivk的虚拟机.每一个Android应用程序都在它自己的进程中运行,都拥有一个独立的 Dalvik虚拟机实例.而每一个DVM都是在Linux 中的一个进程,所以说可以认为是同一个概念.', 1684, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '淘宝网在发布商品时，提供了哪几种发布方式供卖家选择（  ）(选择二项)', '定时发布', '一口价发布', '随机发布', '拍卖发布', 1685, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列哪个不属于数据定义语言：(选择一项)', 'select', 'create', 'drop', 'alter', 1686, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列哪种店铺类型不是淘宝网的商城店铺？( )(选择一项)', '品牌旗舰店', '品牌专营店 ', '品牌直销店', '品牌专卖店', 1687, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在 Activity 中，如何获取 service 对象？(选择一项)', '可以通过直接实例化得到。', '可以通过绑定得到。', '通过 startService()', '通过 getService()获取', 1688, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '如果想取得mysql数据库系统的运行状态，应该用什么函数？(选择一项)', ' mysql_ping', 'mysql_status', ' mysql_stat', 'mysql_info', 1689, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '使用 MediaPlayer 播放保存在 sdcard 上的 mp3 文件时，（）？(选择一项)', '需要使用 MediaPlayer.create 方法创建 MediaPlayer', '直接 newMediaPlayer 即可', '需要调用 setDataSource 方法设置文件源', '直接调用 start 方法，无需设置文件源', 1690, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'GIS所包含的数据均与（单选）', '地理空间位置相联系', '非空间属性相联系', '地理事物的质量特征相联系', '地理事物的类别相联系', 1691, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在struts2配置中用（）元素来配置常量（选择一项）', '<const>', '<constants>', '<constant>', '<constant-mapping>', 1692, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '给定java代码如下，编译运行，结果是（选一项）' || chr(10) || 'public static void main(String[] args){' || chr(10) || '    int i;' || chr(10) || '    System.out.println("i=" + i);' || chr(10) || '}', '编译错误', '运行时出现例外', '正常运行，输出i=-1', '正常运行，输出i=0', 1693, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Java语言中，下列变量定义和赋值错误的是（选一项）', 'short i=5;' || chr(13) || 'int j=i;', 'char c = "c"; ' || chr(13) || 'int j=c;', 'float f = ''c''+1;', 'float i=5;' || chr(13) || 'double d=i;', 1694, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'JAVA语言中函数返回值的类型由(    )决定的（选一项）', 'return语句中的表达式类型', '调用该函数的主调函数的类型', '调用函数时临时决定', '定义函数时所指定的返回值类型', 1695, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '研究下面的Java代码，但x=2时,运行结果是（选一项）' || chr(10) || 'switch(x){' || chr(10) || '    case 1:' || chr(10) || '        System.out.println(1);' || chr(10) || '    case 2:' || chr(10) || '    case 3: ' || chr(10) || '        System.out.println(3);' || chr(10) || '        System.out.println(4);' || chr(10) || '}', '没有任何输出结果', '输出结果为3', '输出结果为3和4', '输出结果是1、3和4', 1696, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在WinForm程序中，以编译方式绑定到DsHer数据集中的T1表到DataGridView控件gridHer,正确的代码为（选一项）', 'gridHer.DataSource=DsHer.Tables["T1"];', 'gridHer.Bind(DsHer,"T1");', 'gridHer.SetDataBinding(DsHer,"T1");', 'gridHer.DataBindings =DsHer["T1"];', 1697, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '下面对于域完整性理解正确的是（选两项）', '域的完整性和实体完整性都强调了数据的唯一性', '可以指定列值的有效数据', '列的数据类型增强了域的完整性', '存储过程可用来定义域的完整性', 1698, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '关于数据完整性，以下说法正确的是（选两项）', '引用完整性通过主键和外键之间的引用关系实现。', '引用完整性通过限制数据类型、检查约束等实现。', '数据完整性是通过数据操纵者自身对数据的控制来实现的。', '如果两个表中存储的信息相互关联，那么只要修改了一个表，另外一个表也要做出相应的修改，则称该这两个表中的数据具备引用完整性。', 1699, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ADO.NET中,已知reader是一个DateReader对象,下列代码行1的输出结果是"True",则代码行2的输出结果是（选一项）' || chr(10) || 'Console.WriteLine(reader.Read());  //1' || chr(10) || 'Console.WriteLine(reader.IsClosed);//2', 'True', 'False', '不确定', '出现异常', 1700, 103);
commit;
prompt 1700 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'SEO工程师通常讲的Google webmasters指的是(单选）', '谷歌分析师', '谷歌趋势  ', '谷歌关键词 ', '谷歌管理员工具', 1701, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于隐式 Intent 正确的是？(选择一项)' || chr(10) || '' || chr(10) || '', 'android 中使用 IntentFilter 来寻找与隐式 Intent 相关的对象', '通过组件的名称寻找与 intent 相关联的对象', '隐式 Intent 更多用于在应用程序内部传递消息', '一个声明了 IntentFilter 的组件只能响应隐式 Intent 请求', 1702, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列不是手机操作系统的？(选择一项)', ' Android', ' iPhone', 'Ubuntu ', 'Windows Phone', 1703, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在EPCSDK.dll动态库中提供了多标签识别的函数IdentifyUploadedMultiTags，申明方式如下，它需要有5个参数，按先后顺序分别代表（ ）（选一项）' || chr(10) || '[DllImport("EPCSDK.dll")]' || chr(10) || 'public static extern bool IdentifyUploadedMultiTags(IntPtr hCom, out byte tagNum, byte[] tagIds, byte[] devNos, byte[] antennaNos);', '串口句柄、接收到的标签数、接收标签EPC的变量数组地址、设备号的数组地址、天线号的数组地址', '串口句柄、接收到的标签数组长度、接收标签EPC的变量数组地址、设备号的数组地址、天线号的数组地址', '串口句柄、接收到的字节长度、接收标签EPC的变量数组地址、天线号的数组地址、读头地址', '串口句柄、接收的标签数、标签区域地址、接收标签EPC的变量地址、读头地址', 1704, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '栅格结构的特点是（单选）', '定位明显，属性隐含', '定位明显，属性明显', '定位隐含，属性明显 ', '定位隐含，属性隐含', 1705, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在struts.xml文件中，使用（）元素定义拦截器（选择一项）', '<interceptor-ref>', '<interceptor> ', '<intercep>', '<default-interceptor-ref>', 1706, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '创建一个样式, 可以设置当前页面中ID为compact 元素的内容的字体为斜体. 下列能实现该功能的代码是（选一项）', '<STYLE TYPE="text/css">   compact{font-style:italic;}</STYLE>', '<STYLE TYPE="text/css">   @compact{font-style:italic;}</STYLE>', '<STYLE TYPE="text/css">   .compact{font-style:italic;}</STYLE>', '<STYLE TYPE="text/css">   #compact{font-style:italic;}</STYLE>', 1707, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '假使要将图片文件asrlogo.jpg插入页面，并为该图片设置替代文字"ASR Outfitters Logo".为下面语句正确的是（选一项）', '<IMG SRC =asrlogo.jpg> ASR Outfitters Logo</IMG>', '<IMG SRC=asrlogo.jpg ALT="ASR Outfitters Logo">', '<IMG SRC=asrlogo.jpg> ALT="ASR Outfitters Logo">', '<IMG SRC=asrlogo  ALT="ASR Outfitters Logo">', 1708, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在C#中,下列关于窗体的属性和方法,说法正确的是（选一项）', '如果在窗体的边框中显示了最大化框或者最小化框,则帮助按钮不会显示', '如果设置了窗体的AcceptBtton属性,则当用户按下Enter键时,将引发 AcceptButton属性指定的按钮的Click事件', '如果设置了窗体的CancelButton属性,则当用户按下Esc键盘时,窗体将会关闭', '如果窗体不可见,调用窗体的Activate方法后,窗体将显示激活', 1709, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts2以（B）为核心，采用（ ）的机制处理用户请求（选择一项）', 'Struts', ' WebWork', ' 拦截器', ' jar包', 1710, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2中，不属于Action接口中定义的字符串常量的是（   ）（选择一项）', 'SUCCESS', 'FAILURE', ' ERROR', ' INPUT', 1711, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', 'struts2在控制器类中一般需要添加相应属性的（  ）和（  ）（选择二项）', ' setter方法', ' as方法', 'getter方法', 'is方法', 1712, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2控制器需要在（  ）配置文件中进行配置（选择一项）', 'web.xml', 'struts.xml', 'application.porperties', 'webwork.xml', 1713, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '不属于struts2标签库的是（  ）（选择一项）', ' <s:textfield>', ' <s:textarea>', ' <s:submit>', '<select>', 1714, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在JSP页面中可以通过Struts2提供的（   ）标签来输出国际化信息（选择一项）', '<s:input>', ' <s:messages>', ' <s:submit>', '<s:text>', 1715, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2自定义类型转换器必须实现的接口是（  ）（选择一项）', 'Convert', 'TypeConverter', 'StrutsTypeConverter', 'StrutsConvert', 1716, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', 'struts2关于注册全局类型转换器的说法正确的是（  ）（选择二项）', '必须提供xwork-conversion.properties文件', '注册文件的格式为：复合类型=对应类型转换器', '注册文件的格式为：对应类型转换器=复合类型', '以上说法都不正确', 1717, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2中，以下配置文件上传拦截器只允许上传bmp图片文件的代码，正确的是（ ）（选择一项）', '<param name=”allowedTypes”>image/bmp</param>', '<param name=”allowedTypes”>*.bmp</param>', '<param name=”allowedTypes”>bmp</param>', '<param name=”allowedTypes”>image/*.bmp</param>', 1718, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '以下关于OGNL的说法正确的是（  ）（选择二项）', 'ActionContext是OGNL的上下文环境', 'StackContext是OGNL的上下文环境', 'ValueStack是OGNL的根', 'ActionContext是OGNL的根', 1719, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '假设在Session中存在名为uid属性，通过OGNL访问该属性，正确的代码是（  ）（选择一项）', '#uid', '#session.uid', 'uid', '${session.uid}', 1720, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '假设在某JSP页面中存在”<s:property>”代码，则以下说法正确的是（  ）（选择一项）', '编译JSP页面时会出现错误', '编译JSP页面时不会出现错误，但页面不会显示任何内容', '该代码用于输出位于ValueStack（值栈）栈顶的对象', '以上说法都不正确', 1721, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2默认的处理结果类型是（  ）（选择一项）', 'dispatcher', 'redirect', 'chain', '以上说法都不正确', 1722, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '下列选项中，关于Struts2的Action说法正确的是（  ）（选择二项）', 'struts2会为每一个请求创建一个对应的Action实例', 'struts2在请求处理过程中，只有一个Action实例', 'struts2通过属性来封装用户请求参数', '在struts2中定义的属性都用于封装用户请求参数', 1723, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在多线程中，新开设的工作线程如要更新界面上的控件需要将代码封装为一个方法或委托，然后通过（ ）方法调用（选一项）', 'delegate', 'Invoke', 'Append', 'CreateHandle', 1724, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在门禁管理系统中用于识别出入人员标签信息的读写器应该选用（ ）（选一项）', '高频读写器', '低频读写器', '超高频读写器', '以上均可', 1725, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在使用IdentifyUploadedMultiTags函数识别多标签时可以借（ ）方法将单个标签EPC码提取为一个byte[]（选一项）', 'Buffer. BlockCopy', 'Buffer. ByteLength', 'Buffer. GetByte', 'Buffer. SetByte', 1726, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在智能医管的婴儿防盗系统中不包含以下（ ）系统模块（选一项）', '系统基础信息管理', '系统权限管理', '新生儿出入监控管理', '医护人员考勤管理', 1727, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在智能医管系统中对于医护人员信息管理的标签发放应采用（ ）模式的读写器（选一项）', '主从模式、单标签读取', '定时模式、单标签读取', '主从模式、多标签读取', '定时模式、多标签读取', 1728, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '终止一个前台进程可能用到的命令和操作是（ ）（选一项）', 'kill', '<CTRL>;+C', 'shut down', 'halt', 1729, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', 'shell的类型主要有（ ）（选三项）', 'ash', 'ksh', 'csh', 'bash', 1730, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '改变文件所有者的命令是（ ）(选一项）', 'chmod改文件权限', 'touch', 'chown', 'Cat查看内容', 1731, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在使用mkdir命令创建新的目录时，在其父目录不存在时先创建父目录的选项是（ ）（选一项）', '-m', '-d', '-f', '-p', 1732, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '我们一般使用（ )工具来对硬盘建立分区', 'mknod', 'fdisk', 'format', 'mkfs', 1733, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'C语言规定：在一个源程序中，main函数的位置（ ）（选一项）', '必须在最开始', '必须在系统调用的库函数的后面', '可以任意', '必须在最后', 1734, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面的变量说明中（ ）是正确的（选一项）', 'char:a,b,c;', 'char a;b;c;', 'char a,b,c;', 'char a,b,c', 1735, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '计算机中-1的补码表现形式是（ ）（选一项）', '00000001', '10000001', '11111110', '11111111', 1736, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '此程序的输出结果是（ ）（选一项）' || chr(10) || 'main()' || chr(10) || '{' || chr(10) || '   int n;' || chr(10) || '   (n=6*4,n+6),n*2;' || chr(10) || '   printf("n=%d\n",n);' || chr(10) || '}', '30', '24', '60', '48', 1737, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '从循环体内某一层跳出，继续执行循环外的语句是（ ）（选一项）', 'break语句', 'return语句', 'continue语句', '空语句', 1738, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '两个指针变量的值相等时，表明两个指针变量是（ ）（选一项）', '占据同一内存单元', '指向同一内存单元地址或者都为空', '是两个空指针', '都没有指向', 1739, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '无线传感器网络的三要素是（ ）（选三项）', '传感器', '感知对象', '通信网络', '观察者', 1740, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面不属于无线传感器网络系统的是（ ）（选一项）', '射频节点', '传感器节点', '汇聚节点', '管理节点', 1741, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '一个ASP.NET应用程序的Global.Asax文件的Application事件定义如下：' || chr(10) || 'protected void Application_Start(Object sender, EventArgs e)  ' || chr(10) || '{' || chr(10) || '    Application["count"]=0;' || chr(10) || '    Response.Write(Application["count"].ToString());' || chr(10) || '}' || chr(10) || 'protected void Application_BeginRequest(Object sender, EventArgs e)        {' || chr(10) || '    Response.Write(Application["count"].ToString());' || chr(10) || '}' || chr(10) || 'protected void Application_EndRequest(Object sender, EventArgs e)' || chr(10) || '{' || chr(10) || '    Application["count"]=(Int32)Application["count"]+1;' || chr(10) || '    Response.Write(Application["count"].ToString());' || chr(10) || '}' || chr(10) || 'protected void Session_End(Object sender, EventArgs e)' || chr(10) || '{' || chr(10) || '    Application["count"]=(Int32)Application["count"]+1;' || chr(10) || '    Response.Write(Application["count"].ToString());' || chr(10) || '}' || chr(10) || '则程序运行时，以下说法正确的是（）。（选一项）', '第一次访问该网站时第一个在页面上显示的数字为0', '首次在页面上显示的数字为1、2、3三个数字', '若有多个不同的用户在刷新页面，则每个用户在刷新页面的时候，显示的数字也是连续的', '第一次访问该网站时将出现“响应在此上下文中不可用”的错误', 1742, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '阅读以下的ASP.NET代码' || chr(10) || '<asp:Button id="Button1" runat="server"></asp:Button>' || chr(10) || '<asp:TextBox id="TextBox1" runat="server" ></asp:TextBox><asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"  ErrorMessage="错误" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>从代码中可以看出，该Web页上有一个文本框和一个按钮，请问当单击按钮的时候将出现（）变化。（选一项）', '如果文本框为空，则显示"错误"', '如果文本框输入的不是时间，则显示"错误"', '如果文本框输入的不是数字，则显示"错误"', '如果文本框输入的不是字符，则显示"错误"', 1743, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ASP.NET技术中，在设置GridView 控件的模版列时（选一项）', '模版列中的控件只有默认属性可以绑定', '模版列中的控件的任意属性可以绑定，但只能有一个属性绑定', '模版列中的控件的任意属性可以绑定，同时可以有多个属性绑定', '模版列中只有TextBox控件可以绑定', 1744, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ASP.NET中，System.Xml 命名空间有一套完整的操作XML的类，通过使用读取器、编写器和DOM兼容的组件来读取、验证和操作 XML 数据。以下描述错误的是（选一项）', 'XmlTextReader 类提供对 XML 数据的快速、非高速缓存的只进读访问', 'XPathNavigator 类提供 W3C XPath 1.0 数据模型，而不是用于导航的光标样式模型的存储。', 'XslTransform 类是一个 W3C XSLT 1.0 规范兼容的 XSLT 处理器，用于转换 XML 文档', 'XmlTextReader 类提供一种生成 XML 的快速只进方法。', 1745, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '在一个ASP.NET应用程序的Global.asax的Application_Start事件中定义了以下变量，下列说法正确的是（选二项）   ' || chr(10) || 'protected void Application_Start(Object sender,EventArgs e)' || chr(10) || '{    Application["count"]=1;  }', '每个用户都单独拥有该变量的值', '该变量在应用程序退出前一直存在', '所有用户都能访问该变量的值', '只有第一个用户可以访问该变量的值', 1746, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '地理信息系统主要是由四个部分组成，即计算机硬件系统、计算机软件系统、地理空间数据和人员。其核心部分是（单选）', '计算机硬件系统', '计算机软件系统', '计算机软硬件系统', '地理空间数据和人员', 1747, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '地理信息系统，简称（单选）', 'EDI', 'GPS', 'EFT', 'GIS', 1748, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'GIS有别于其他信息系统的本质特征是（单选）', '空间查询与分析', '可视化表达与输出', '数据输入', '数据编辑', 1749, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'GIS能够解决在发生洪水、战争、核事故等重大自然或人为灾害时，如何安排最佳的人员撤离路线、并配备相应的运输和保障设施的问题。这是GIS在（　　　）领域的应用（单选）', '基础设施管理', '应急响应', '资源管理', '城市规划', 1750, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下属于国外著名GIS软件的是（单选）', 'GeoStar', 'MapInfo', 'CityStar', 'MapGIS', 1751, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '现代物流中的GIS主要应用在（　　　）等方面（单选）', '运输路线的选择', '仓库位置的选择', '仓库的库存量控制', '合理装卸策略', 1752, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '地理信息区别与其他信息的显著标志是（单选）', '属于属性信息 ', '属于共享信息', '属于社会经济信息', '属于空间信息', 1753, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下不属于GIS专业软件的是（单选）', 'MapInfo', 'GeoStar', 'MapGIS', 'PCI', 1754, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列有关数据的叙述正确的是（单选）', '信息是数据的表达，数据是信息的内涵', '数据是信息的表达，信息是数据的内涵', '数据不随载荷它的物理设备的形式而改变', '地图符号不是数据', 1755, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'GIS所包含的数据均与（单选）', '地理空间位置相联系 ', '非空间属性相联系', '地理事物的质量特征相联系', '地理事物的类别相联系', 1756, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '世界上第一个地理信息系统是（单选）', '美国地理信息系统', '加拿大地理信息系统', '日本地理信息系统', '奥地利地理信息系统', 1757, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在GIS数据中，把非空间数据称为（单选）', '几何数据', '关系数据', '属性数据', '统计数据', 1758, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '表达现实世界空间变化的三个基本要素是（单选）', '空间位置、专题特征、时间', '空间位置、专题特征、属性 ', '空间特点、变化趋势、属性', ' 空间特点、变化趋势、时间', 1759, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '地理数据一般具有的三个基本特征是（单选）', '空间特征、属性特征和时间特征', '空间特征、地理特征和时间特征', '地理特征、属性特征和时间特征', '空间特征、属性特征和拓扑特征', 1760, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '矢量结构的特点是（单选）', '定位明显、属性隐含', '定位明显、属性明显', '定位隐含、属性明显 ', '定位隐含、属性隐含', 1761, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'GIS区别于其它信息系统的一个显著标志是（单选）', '空间分析', '计量分析  ', '属性分析 ', '统计分析', 1762, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '解决道路拓宽中拆迁指标的计算问题，可应用的空间分析方法是（单选）', '缓冲区分析 ', '包含分析', '网络分析', '最短路径分析', 1763, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '湖泊和河流周围保护区的定界可采用（单选）', '空间聚类', '统计分析 ', '叠置分析', '缓冲区分析', 1764, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下属于国外著名GIS软件的是（单选）', 'GeoStar', 'MapInfo', 'CityStar', 'MapGIS', 1765, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2中动态方法调用的格式为（  ）（选择一项）', 'ActionName_methodName.do', 'ActionName!methodName.do', 'ActionName_methodName.action', 'ActionName!methodName.action', 1766, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '网民通过百度首页进行搜索时，搜索推广结果将在哪些区域展现：（多选）', '首页右侧及翻页后右侧页面，每页最多展现8条结果', '首页左侧有底色的“推广链接”最多3条和“推广”位置，最多展现10条结果，且同时出现', '首页左侧无底色的“推广”位置，最多展现10条结果 ', '首页左侧带有底色的“推广链接“位置，最多展现3条不同的推广结果，上下两处展现的结果一致', 1767, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在常规报告中，推广商户不可以查看哪项数据指标：（单选）', '平均排名', '消费', '点击量', '平均点击价格', 1768, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABCD', '推广商户在搜索结果里找不到自己的推广结果，原因可能是（多选）', '使用的IP地址在IP排除范围', '消费完毕下线', '关键词状态为不宜推广', '关键词状态为搜索无效', 1769, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于历史操作查询工具，以下说法错误的是：（单选）', '历史数据可下载到本地', '推广商户可查询自己当天所做的操作记录', '推广商户可查询自己的操作', '最高可查询半年的历史数据 ', 1770, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '小周不希望他的搜索推广在周六周日有推广，他需要在帐户哪一个层级进行设置？（单选）', '创意', '推广单元', '关键词', '推广计划', 1771, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '在推广单元级别，可以进行以下哪些操作：（多选）', '设置统一出价', '设置时段暂停', '设置否定关键词', '添加关键词', 1772, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '推广商户在账户层级已经设置了20个220.X.X.X否定IP地址段，该账户只有一个计划，在计划里又设置了另外20个221.X.X.X否定IP地址段，那么该客户这个计划最终有多少个IP地址段看不到该商户的推广结果呢？（单选）', '40个', '20个', '60个', '30个', 1773, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '推广单元A出价为2.5，其内的关键词1出价为2，关键词2出价为2.8，则以下说法正确的是：（多选）', '关键词2最终点击价格不会高于2.8', '关键词2最终点击价格不会高于2', '关键词2最终点击价格不会高于2.5', '关键词1最终点击价格不会高于2', 1774, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '推广计划A设置了短语否定匹配关键词为招聘，其内的推广单元1设置了精确否定匹配外语培训，则以下哪个搜索词将不会触发推广信息（单选）', '培训外语', '外语招聘', '外语培训广告', '外语培训教师', 1775, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下关于层级功能设置的相关说法，不正确的是：（单选）', '推广商户可以在推广单元层级进行“时段暂停”设置', '推广商户可以在推广单元层级进行“暂停推广”设置 ', '推广商户可以在推广计划层级进行“暂停推广”设置 ', '推广商户可以在推广计划层级进行“时段暂停”设置 ', 1776, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '若推广单元汽车-口碑没有设置暂停，其内的关键词十万元买什么车好暂停推广，不考虑匹配模式在其中的影响，则以下说法正确的是：（多选）', '搜索结果中将看到推广单元汽车-口碑中所有关键词的结果', '搜索结果中将看到关键词十万元买什么车好的结果', '搜索结果中将看不到关键词十万元买什么车好的结果', '搜索结果中将看到除关键词十万元买什么车好外的推广单元汽车-口碑中所有关键词的结果', 1777, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABCD', '以下有关推广结果排序的相关说法，正确的是：（多选）', '出价相同，质量度高的关键词排名靠前', '质量度优秀的关键词，可能在出价更低的情况下获取更好的排名', '因为同星级质量度也存在具体数值的波动，所以可能出现质量度星级相同的关键词，出价低的排名靠前', '通常情况下，相同的质量度，出价高的排名更靠前', 1778, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '目前无线传感器网络操作系统应用最广泛的是（ ）（选一项）', 'TinyOS操作系统', 'Contiki操作系统', 'MANTIS操作系统', 'SOS操作系统', 1779, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ATOS实验平台中搭载射频模块和传感器模块的连接性质的设备是（ ）（选一项）', '网关板', '节点板', '在线烧录器', '传感器', 1780, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ATOS实验平台中用于在Windows下运行Linux的程序是（ ）（选一项）', 'TinyOS', 'nesC', 'Cygwin', 'Ubuntu', 1781, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在nesC 程序中主要定义（ ）两种功能不同的组件（选一项）', '模块、配件', '任务、事件', '接口、事件', '接口、配件', 1782, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'nesC当中模块组件的具体执行都由4 个相关部分组成，它们分别是（ ）（选一项）', '命令函数、事件函数、任务函数和配置函数', '任务函数、事件函数、数据帧和执行线程', '接口、命令、事件函数和数据帧', '命令函数、事件函数、数据帧和执行线程', 1783, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', 'nesC当中的接口包含（ ）函数原型（选二项）', '任务', '命令', '事件', '方法', 1784, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '接口中的事件使用（ ）关键字触发（选一项）', 'signal', 'call', 'provides', 'async', 1785, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '接口中命令的调用方法是使用关键字（ ）（选一项）', 'signal', 'call', 'provides', 'async', 1786, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面关于参数化接口描述错误的是（ ）（选一项）', '参数化接口实际上是一个接口数组', '每个接口使用组件只能连接一个没有使用过的参数', '在使用参数化接口时，配置组件连接接口时必须要实例化它们', '参数化接口事件缺省是在接口的使用者组件中实现的', 1787, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '给定java代码片段，如下：' || chr(10) || 'int i=0,j=-1;' || chr(10) || 'switch(i){' || chr(10) || '    case 0,1:j=1;' || chr(10) || '    case 2:j=2;' || chr(10) || '}' || chr(10) || 'System.out.print("j="+j);' || chr(10) || '编译运行，正确的是（选一项）', '程序编译出错', 'j=1', 'j=2', 'j=0', 1788, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '给定某Java程序的main方法如下,该程序的运行结果是（选一项）' || chr(10) || 'public static void main(String[] args){' || chr(10) || '    boolean boo=true;' || chr(10) || '    if(boo==false){' || chr(10) || '        System.out.println("a");' || chr(10) || '    }' || chr(10) || '    else{' || chr(10) || '        Systim.out.println("b");' || chr(10) || '    }' || chr(10) || '}', 'a', 'b', 'c', 'd', 1789, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '给定一个Java程序的代码片断如下：' || chr(10) || 'if(grade == ''A''|| grade == ''B'')' || chr(10) || '    Score = 90;' || chr(10) || 'else if(grade == ''C''|| grade == ''D'')' || chr(10) || '    Score = 70;' || chr(10) || 'else' || chr(10) || '    Score = 60;' || chr(10) || '等同的switch是下列哪一个（选一项）', 'switch(grade){' || chr(13) || 'case ''A'':' || chr(13) || 'case ''B'':score = 90;' || chr(13) || 'case ''C'':' || chr(13) || 'case ''D'':scpre = 70;' || chr(13) || 'default:score=60;' || chr(13) || '}', 'switch(grade){' || chr(13) || 'case ''A'':break;' || chr(13) || 'case ''B'':score = 90;' || chr(13) || 'case ''C'':break;' || chr(13) || 'case ''D'':scpre = 70;' || chr(13) || 'default:score = 60;break;' || chr(13) || '}', 'switch(grade){' || chr(13) || 'case ''B'':score = 90;break;' || chr(13) || 'case ''D:scpre = 70;break;' || chr(13) || 'default:score = 60;break;' || chr(13) || '}', 'switch(grade){' || chr(13) || 'case ''A'':' || chr(13) || 'case ''B'':score = 90;break;' || chr(13) || 'case ''C'':' || chr(13) || 'case ''D'':scpre = 70;break;' || chr(13) || 'default:score = 60;break;' || chr(13) || '}', 1790, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '页面中有一个性别单选按钮，请设置”男”为选中状态。代码如下：' || chr(10) || '<input type="radio" name="sex"> 男' || chr(10) || '<input type="radio" name="sex"> 女    正确的是' || chr(10) || '（选择一项）', '$("sex[0]").attr("checked",true);', '$("#sex[0]").attr("checked",true);', '$("[name=sex]:radio").attr("checked",true);', '$(":radio[name=sex]:eq(0)").attr("checked",true);', 1791, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在一个ASPX页面中,有四个RadioButton控件,他们的HTML代码如下.当用户单击足球RadioButton控件后,下列说法正确的是（选一项）' || chr(10) || '<asp:RadioButton id="RadioButton1" groupName="bigBall" runat="server" Text="篮球"></asp:RadioButton><asp:RadioButton id="RadioButton2" groupName="bigBall" runat="server" Text="足球"></asp:RadioButton><asp:RadioButton id="RadioButton3" groupName="smallBall" runat="server" Text="乒乓球"></asp:RadioButton>', '篮球RadioButton控件的Checked属性变为False', '乒乓球RadioButton控件的Checked属性变为False', '羽毛球RadioButton控件的Checked属性变为True', '篮球RadioButton控件的Checked属性变为True', 1792, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列不属于使用WebService的途径的是（选一项）', 'HTTP—GET', 'HTTP—POST', 'SOAP', 'ADO.NET', 1793, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '在ASP.NET中，有一个高考录取分数线查询的网站，各个省份的录取分数线都存放在一个表中。因此各个省份的考生查询分数线时，通过选择自己的省份来查询录取分数线。程序员设计了两个页面，在第一个页面中用一个DropDownList空间来绑定各个省份，在第二个页面中添加一个DataGrid控件，用来根据第一个页面传递过来的Provice参数显示对应省份的录取分数线。考虑到同一个省份的考生特别多，因此同时查看录取分数线的考生比较多，为了减轻服务器的负担，程序员启用页面缓存，下列对两个页面OutputCathe指令声明合理的是（选两项）', '第一个页面OutputCache指令：<%@OutputCache duration=120 VaryByParam=none%>', '第二个页面OutputCache指令：<%@OutputCache duration=100 VaryByParam=none%>', '第一个页面OutputCache指令：<%@OutputCache duration=100 VaryByControl=ddlProvince %>', '第二个页面OutputCache指令：<%@OutputCache duration=100 VaryByParam= Province %>', 1794, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在E-R图中，实体、属性和关系分别用（）来表示（选一项）', '矩形、菱形、椭圆', '矩形、椭圆、菱形', '椭圆、菱形、矩形', '椭圆、矩形、菱形', 1795, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ASP.NET中，有一个ASPX页面的部分代码如下，当用户单击Button1按钮后，下列说发正确的是（选一项）' || chr(10) || 'public class CityBrower : System.Web.UI.Page{' || chr(10) || 'protected System.UI.WebControls.Button Button1;' || chr(10) || 'string name = "SVSE3.0";' || chr(10) || 'private void Page_Load(object sender,System.EventArgs e){' || chr(10) || '    if(!this.IsPostBack)' || chr(10) || '        name = "SVSE4.0";' || chr(10) || '    else' || chr(10) || '        name = "SVSE5.0";' || chr(10) || '}' || chr(10) || 'private void Button1_Click(object sender ,System.EventArgs e)' || chr(10) || '{        Response.Write(name);    }', '在页面中输出的文本 "SVSE5.0"', '在页面中输出的文本 "SVSE4.0"', '在页面中输出的文本 "SVSE3.0"', '在页面中不输出任何文本', 1796, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', ' ArcMap中，当一个要素被选中的时候，选中标记出现的目的是（单选）', '当该要素被旋转的时候，会围绕这个选择点来旋转', '它仅仅是一种符号指示，通过有颜色的边框标示要素被选中了', '它可以用来捕捉线和顶点，将选择的要素连接到其他的要素上', 'A和C', 1797, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '哪一种ArcGIS的许可文件，可以让你将GIS数据导成CAD的格式（单选）', 'ArcInfo', ' ArcEditor', 'ArcView ', 'A和B ', 1798, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在一个要素数据集中，所有的要素类必须有相同的（单选）', '数据源', ' 空间参考', '字段类型', ' 元数据', 1799, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ArcMap中，sketch可以被定义为（单选）', '一个临时的图形对话框，显示正在被编辑的要素的几何属性', '使用Draw工具栏中的工具创建的任意图形', '一个正在被编辑的要素 ', '在要素类之间复制、粘贴的要素', 1800, 402);
commit;
prompt 1800 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', ' 下面哪个不是Editor工具栏中的编辑任务选项（单选）', 'Rotate Feature', 'Mirror Feature', ' Create 2-Point Line Features', ' Reshape Feature ', 1801, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', ' 选择对要素类最佳的描述（单选）', '拥有相同空间参考的要素类型的组合', '拥有相同几何类型和属性字段的要素', '拥有相同属性字段的要素类型的组合', '拥有相同的几何类型和不同的属性字段的要素', 1802, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '已知水表所在的位置到两栋多边形建筑拐角的距离，请问添加一个水表使用哪一种Sketch Construction工具最好（单选）', ' Intersection tool  ', 'Midpoint tool', 'Distance-Distance tool   ', 'Direction-Distance tool ', 1803, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '地理数据的基本组成是（单选）', '属性、数据类型和几何特征 ', '属性、行为、和数据类型', '几何特征、属性、和行为 ', '几何特征、数据类型、和行为 ', 1804, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于ModelBuilder的描述哪项是错误的（单选）', 'ModelBuilder可以通过toolbox打开 ', ' ModelBuilder可以通过ArcObjects进行定制 ', '单个模型所包含的模型元素数量没有限制  ', '可以在一个模型中创建模型', 1805, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面对cardinality的最佳描述是（单选）', '在geodatabase中空间数据和属性数据之间的联合', ' 描述相互关联的两种类型的数量或对象之间的关系', '在一个连接中，主键字段和名称字段之间的联系', '在geodatabase中，用来描述不同主键值数量的表的属性', 1806, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ArcGIS中元数据以哪种格式存储（单选）', 'HTML', 'XSL ', 'XML ', 'FGDC ', 1807, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪种扩展被ArcGIS所支持（单选）', 'Spatial Analyst、Maplex和Geostatistical  Analyst', 'ArcScan、Survey Analyst、和Tracking  Analyst ', 'ArcGIS Schematics、Data Interoperability、和 PLTS', '上面所有选择 ', 1808, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在ArcGIS中哪两个属性定义空间参考信息（单选）', '坐标域和坐标系', '投影和坐标系', '投影和数据 ', '数据和椭球体 ', 1809, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪种数据格式可以通过ArcGIS核心功能（非扩展功能）转换为ESRI数据格式（单选）', 'MapInfo文件', 'Drawing Exchange格式的文件 ', ' Vector Product格式', '上面所有选择 ', 1810, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '推广商户可以从以下哪些方面对质量度进行优化：（多选）', '合理使用通配符，优化创意质量', '在账户内添加热门、检索量高的关键词', '提高创意与关键词的相关性', '设置合理的账户结构', 1811, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '某推广商户购买关键词商务酒店，网民在百度搜索上海商务酒店时看到了该商户投放的推广结果，则该商户有可能使用了以下哪些匹配模式？（多选）', '精确匹配', '广泛匹配', '否定匹配，否定词为上海商务酒店', '短语匹配', 1812, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关键词英语培训参加广泛匹配，当网民搜索以下哪些词时，不会触发推广商户的结果展现（单选）', '英语周末培训班', '经纪人资格证学习班', '疯狂英语口语', '英语六级强化班', 1813, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '小赵用后台生成了一个报告，得到的数据如下表，那么问号处（平均转化成本）是多少？展现量10,000  点击量1,000  CPC0.5  转化率1%  平均转化成本？（单选）', '50', '20', '200', '100', 1814, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '小孙有一个电子商务网站，数据如下，那么他的搜索推广的CPC理想控制在什么水平  预计转化率0.50%  平均交易额1000  毛利率20%（单选）', '1.2', '1.5', '1', '2', 1815, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '小李用后台生成了一个报告，提到的数据如下表，请问问号处（CPM）是多少？展现量10000   点击量1000  CPC0.5  CPM?（单选）', '50', '100', '20', '10', 1816, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '某推广商户2010年1月1日从百度推广带来数据如下，请计算问号处（CTR）为  展现量900  点击量100  消费102   订单数12  收益600（单选）', '20.67%', '17%', '1%', '11.11%', 1817, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '某推广信息具体的展现与排名情况如下则该推广信息的平均排名为多少   展现次数  5   7   9  点击次数  1   0  2  排名 4   2   3（单选）', '3.5', '2.9', '3.33', '3', 1818, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下关于每次点击价格的说法，正确的是：（单选）', '若关键词不是最后一名，关键词的点击价格一定等于关键词出价', '每次点击价格不会超过推广商户关键词的出价', '若关键词不是最后一名， 关键词的质量度越高，则每次点击价格越高', '每次点击价格不会超过推广商户关键词的最低展现价格', 1819, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABCD', '潜在用户通过搜索推广与推广企业建立联系，此过程包括下列哪些步骤？（多选）', '在网站上看到感兴趣的信息和联系方式', '点击推广信息上的链接，进入推广企业网站', '看到搜索结果页上的推广信息', '在搜索引擎搜索了相关信息', 1820, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABCD', '用统计软件监测到的访问少于系统统计的点击的原因可能的是（多选）', '点击发生时，点击者与你网站的网络连接通路不畅，数据丢包或长时间等待，连接中断', '网站访问速度过慢，用户还未等网页完全打开就已经将网页关闭', '统计系统本身的网络连接通路不畅，造成数据丢失', '监测代码在网站部署存在问题', 1821, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB ', '给定展现量一样的情况下，以下哪些因素会影响点击量的变化：（多选）', '关键词的排名', '创意的质量', '网站的打开速度', '关键词数量', 1822, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JAVA语言中, 下列代码的运行结果是（选一项）' || chr(10) || 'public static void showInfo(int a,int b){' || chr(10) || '    a++;' || chr(10) || '    b++;' || chr(10) || '}' || chr(10) || 'public static void main(String[] args) {' || chr(10) || '    int a = 5;' || chr(10) || '    int b = 10;' || chr(10) || '    System.out.println(a + "," + b);' || chr(10) || '    showInfo(a,b);' || chr(10) || '    System.out.println(a + "," + b);' || chr(10) || '}', '5,10  5,10', '5,10  6,11', '5,10  4,11', '5,10  5,11', 1823, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在JAVA语言中,下列代码的运行结果是（选一项）' || chr(10) || 'public static void main(String args[]) {' || chr(10) || '    int stuAge[] = {18,22,26};' || chr(10) || '    int i, avgAge = 0;' || chr(10) || '    for(i = 0; i < 3; i++){' || chr(10) || '        avgAge += stuAge[i] / 3;' || chr(10) || '    }' || chr(10) || '    System.out.println( avgAge );' || chr(10) || '}', '0', '9', '11', '21', 1824, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '编译并运行下面的Java代码段：' || chr(10) || 'char c = ''a'';' || chr(10) || 'switch (c) {' || chr(10) || 'case ''a'':' || chr(10) || '    System.out.println("a");' || chr(10) || 'default: ' || chr(10) || '    System.out.println("default");' || chr(10) || '}输出结果是（选一项）', '代码无法编译，因为switch语句没有一个合法的表达式', 'a' || chr(13) || 'default', 'a', 'default', 1825, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '方法pr声明为' || chr(10) || 'public static void pr ( float[] scores， int n ){ }' || chr(10) || '声明了三个变量 int[] ary = new[10]; int m=5; int n = 10; 那么下面正确调用pr方法的是（选一项）', 'pr (ary);', 'pr (ary,m);', 'n = pr (ary,m);', '都不正确', 1826, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下程序片断' || chr(10) || 'int i = 1; ' || chr(10) || 'while(i < 5);{' || chr(10) || 'i++;' || chr(10) || '}' || chr(10) || 'System.out.println (i);' || chr(10) || '运行结果是（选一项）', '输出1', '输出5', '程序无法运行', '死循环', 1827, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列HTML代码段某页面的样式设置' || chr(10) || '<STYLE TYPE ="text/css">' || chr(10) || '.bule{color:bule}' || chr(10) || '.red{color:red}' || chr(10) || '</STYLE>' || chr(10) || '现要求将页面中的"第一个标题"设置成红色,"第一个段落"设置为蓝色.下列代码正确的是（选一项）', '<H1 id=red> 第一个标题</H1> <P id=bule>第一个段落', '<H1 color=red>第一个标题</H1> <P color=blue>第一个段落', '<H1 class=red >第一个标题 </H1> <P class=bule>第一个段落', '<H2 class=red>第一个段落</H1> <P class=bule>第一个段落', 1828, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在JAVA语言中，下面选项(  )声明一个数组用于保存4个参赛者参加5个不同项目的比赛成绩（选一项）', 'int[][] s = new int[5][6];', 'int[][] s = new int[4][5];', 'int[][] s = new int[3][4];', 'int[][] s = new int[5][4];', 1829, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在Java语言中，有如下两条叙述：（选一项）' || chr(10) || '陈述A：5/2结果为2.5' || chr(10) || '陈述B：5.0/2.0结果为2.5', '两句都对', '两句都错', '只有a对', '只有b对', 1830, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Java中，以下定义数组的语句正确的是（选一项）', 'int t[10] = new int[];', 'char a[] = "hefg";', 'int t[] = new int[10];', 'double d = new double[10];', 1831, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于“#session.persions.{? #this.age>20}”OGNL代码所表示的意义说法正确的是（  ）（选择一项）', '从persons集合中取出第一个年龄＞20的Person对象', '从persons集合中取出所有年龄＞20的Person对象子集', '从persons集合中取出最后一个年龄＞20的Person对象', '该代码不符合OGNL的语法', 1832, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '若num、a、b、和c都是int型变量，则执行表达式num=(a=4,b=16,c=32);后num的值为（ )（选一项）', '4', '16', '32', '52', 1833, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '设有数组定义：char array[]=" China";则数组所占的存储空间为（ ）（选一项）', '4个字节', '5个字节', '6个字节', '7个字节', 1834, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '查找某林区内的消防站属于（单选）', '线点查询', '点线查询 ', '线线查询', '点面查询', 1835, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '小A在账户层级设置的地域投放为北京，天津；在推广计划层级设置的地域投放为天津，广东，则实际投放地域为：（单选）', '天津', '天津，广东', '北京，天津', '没有任何一个地域', 1836, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '小D在帐户层级设置的每日预算为250元，在推广计划层级设置的每日预算为150元，且此账户只有这一个计划处于有效状态，则实际每日花费可能为：（单选）', '165元', '250元', '150元', '275元', 1837, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '断句符出现在标题的前多少个字符，以下哪个数字是最为合理的？（单选）', '28', '38', '50', '30', 1838, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在K/3工业供应链中，不可以执行(           )核算形式（选择一项）', '总仓核算', '分仓核算', '分仓库组核算', '部分总仓,部分分仓核算', 1839, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下（ ）单据不可以被其他单据关联生成（选择一项）', '销售出库单 ', '销售合同', '发货通知单', '销售订单', 1840, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', ' 以下哪些业务不可以利用“待检仓”实现（选择一项）', '分期收款出库业务 ', '在途原料的入库业务', '需要检验后再入库的业务 ', '受托加工业务', 1841, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '用户详细的授权是通过___按钮来进行的。(选择一项)', '<授权>', '<全选>', '<高级>', '<数据授权>', 1842, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', ' 对不常用的会计科目可采取        使该科目不显示(选择一项)', '删除', '修改', '禁用', '报警', 1843, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在jQuery中，函数（）能够实现元素显示和隐藏的互换。（选一项）', 'hide()', 'show()', 'toggle()', 'fade()', 1844, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在mo二次开发中图层上绘制文字使用的方法是(选择一项)', 'DrawShape', 'DrawText', 'DrawFont', 'DrawShapeText', 1845, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列哪一项不属于负债（    ）(选择一项)', ' 短期借款', '应付工资', ' 应付账款', '预付账款', 1846, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '假设在session中存在名为username的属性，通过OGNL访问该属性，正确的代码是（选择一项）', '#username', '#session.username', 'username', '$username', 1847, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于ArcGIS中标注的描述哪项是错误的（单选）', '在你对一个图层应用了全局标注功能后，单个标注可以被更改', '标注是从存储在文档或图层文件的属性中生成的', '当缩放或移动地图的时候，标注会重新显示 ', '标注的参考比例尺可以被设置', 1848, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '哪些脚本语言使ArcMap可基于多个字段标注要素（单选）', 'C和VBScript', 'Jscript和VBScript', ' Java和VBScript ', ' JavaScript和C ', 1849, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在一个要素数据集中创建要素类的时候，该要素类会继承要素数据集的（单选）', '空间索引和分类 ', '空间区域和子区域 ', '空间参考', ' 空间envelope坐标 ', 1850, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '选择关于地址地理编码最佳的描述（单选）', '在地图上绘制XY坐标数据 ', '和地址相关的线性地理位置参考', '地址动态分段 ', '将位置的文字描述转换成地理特征 ', 1851, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '创建一个地理编码定位器将（单选）', '设置与之相匹配的数据空间参考', '匹配地址到要素类中的要素', '定义地址如何被匹配', '格式化地址表使得它是可匹配的 ', 1852, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '当在一个要素类中定义控制点时，下面所述的哪一项是应该接着做的（多选）', '控制点应该广泛分布在研究区 ', ' 控制点应该定位在容易识别的地物上', '当进行地理配准的时候，最少应该有四个控制点来获取精确的RMS误差', '上面所有的选项 ', 1853, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '要素通过何种方式可以被导入到空要素类中（单选）', '数字化要素 ', '使用Simple Data Loader ', '导入一个XML记录集文档', ' 上面所有的选项 ', 1854, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于ArcGIS中的拓扑，下面陈述中错误的是（单选）', '在地图拓扑中可以使用shapefiles ', ' 在地图拓扑中可以设置等级 ', ' 在地图或geodatabase拓扑中均可以设置容限值 ', '在地图拓扑中不能对子类型设置规则 ', 1855, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ArcGIS中哪项报表功能是没有的（单选）', '从连接表的属性中创建报表 ', '从ArcMap报表编辑器导出PDF文件', ' 将水晶报表添加到地图布局中', '从内置的ModelBuilder生成报表模型 ', 1856, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面哪项操作在ArcMap中创建图表时是不可用的（单选）', ' 导出为EPS格式 ', '当选择的要素变化时自动更新 ', '更改x或y轴显示的值 ', '绘制趋势曲线 ', 1857, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪项是geodatabase的“schema edit”？（单选）', '在属性表中更新属性数据  ', '将一个新的域和字段关联 ', '在属性表中增加或删除字段', 'B和C ', 1858, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ArcMap中关于流模式数字化的描述错误的是哪项？（单选）', '流容限值可以在任何时候改变，甚至在数字化的时候 ', '流的容限值以象素为单位来定义 ', '在指定的间隔上自动增加顶点 ', ' 你可以使用放大窗口对流进行数字化', 1859, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '对于ArcMap中的图层符号，分类可以应用于：（单选）', '渐变颜色的专题图  ', '成比例的符号专题图 ', '渐变的符号专题图 ', 'A和C ', 1860, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面关于个人geodatabase栅格数据描述错误的是哪项（单选）', '栅格目录可以被管制或不被管制 ', '栅格数据表面上存储在个人geodatabase中 ', '被管制的栅格数据格式可以是任意的', '被管制的栅格数据存储在和个人geodatabase相同的目录文件夹下 ', 1861, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在网民搜索时，如果推广商户的账户内符合网民搜索需求的关键词被触发，该关键词所对应的创意在搜索结果页获得的出现次数，称之为：（单选）', '展现量', '检索量', '点击量', '搜索量', 1862, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '当某推广商户账户内多个关键词都符合展现条件时，将优先展现：（单选）', '最低展现价格高的关键词触发的创意', '出价高的关键词触发的创意', '与网民搜索词字面完全一致的关键词触发的创意', '质量度高的关键词触发的创意', 1863, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABCD', '网盟推广中，哪些情况需要采取站点排除？（多选）', '不希望广告展示在已经进行资源互换的联盟站点上', '通过效果监测工具，发现来自某些IP段的访问不能为推广带来任何收益', '有些站点的目标用户与产品定位存在偏差', '网站已经是百度联盟站点，不希望自己的推广信息展示在自己的站点上', 1864, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '以下哪个会是关键词点击率低的直接原因？（多选）', '关键词与创意相关性差', '出价较低，排名靠后', '限制了投放地域', '关键词匹配模式都设成了广泛匹配', 1865, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', ' 以下有关创意展示概率的说法，错误的是：（单选）', '系统默认的创意展示概率是优选', '分为轮替和优选两种', '创意展示概率在推广计划层级设置', '系统默认的创意展示概率是轮替', 1866, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '假设推广结果都展现在首页，影响搜索推广展现量的因素包括：（多选）', '首页关键词排名', '分地域设置', '关键词检索量', '关键词数量', 1867, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D ', '以下哪种情况，百度搜索推广才会收取费用（单选）', '关键词提交级系统以后', '推广信息展现在搜索结果页面时', '关键词处于有效状态时', '网民点击推广信息时', 1868, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '1. 生成凭证错误的常见原因描述错误的有（选择一项）', '科目不是最明细;凭证借贷不平', '金额来源设置不正确或单据上数据为零', '取不到核算项目', '总账期间小于业务系统期间', 1869, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '受托加工业务处理是,委托方提供的材料一般入（选择一项）', '实仓', '待检仓', '代管仓', '赠品仓', 1870, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列单据中哪个单据不可以进行信用控制（选择一项）', '销售订单', '销售发票', '销售出库单', '发货通知单', 1871, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '某订单某物料的数量为100，该条目（1）被采购入库单直接关联了10个；（2）被收料通知单关联了40个；（3）该收料通知单又被另一张入库单关联了20个,则订单上“入库数量”为(    )个（选择一项）', '10', '20', '30', '40', 1872, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '启用业务系统时，初始化的单据必须（选择一项）', '审核', '核销', '钩稽', '关闭', 1873, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '如果库存更新选择“单据保存后立即更新”，库存类单据进行下列(     )操作时,该单据的库存数量会更新到即时库存中（选择一项）', '保存', '修改', '复制', '删除', 1874, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列哪种计价方法核算的物料在录入初始数据时，需点击“批次顺序号”录入（选择一项）', '加权平均法', '移动加权平均法', '计划成本法', '先进先出法', 1875, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', ' 以下哪个选项是错误的（选择一项）', '外购的物料不能制作BOM单', '只有采用“计划成本法”的物料，才可进行调价处理', '进行期末结帐后，如需修改上期业务数据，可进行“反结帐”工作', '在进行期初余额调整时，只能对物料的期初结存金额作调整，不能对其结存数量作调整', 1876, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下哪些单据不属于初始化时需要录入的启用期前单据？（选择一项）', '暂估入库单', '未核销委外加工出库单', '未核销的销售出库单', '采购发票', 1877, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '分析下面使用的META元素的语句：' || chr(10) || '<META name="DESCRIPTION" Content="the page of zhangming">' || chr(10) || '<META name="KEYWORDS" Content="zhang,ming">' || chr(10) || '下面选项说法正确的是（选两项）', '该页面的基本描述是"the page of zhangming"', '该页面的基本关键字为"zhang,ming"', '该页面的作者为"zhangming"', '该页面的主题为"the page of zhangming"', 1878, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下JAVA代码的输出结果是（选一项）' || chr(10) || 'int answer=100,result;' || chr(10) || 'result=answer-10;' || chr(10) || 'System.out.println("The result is " + result + 5 );', 'The result is 95', 'The result is 905', 'The result is 10', 'The result is 100', 1879, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列Java语言代码的运行结果是（选一项）' || chr(10) || 'public static void main(String[] args) {' || chr(10) || '    int a=2,b=-1,c=2;' || chr(10) || '    if(a>b) {' || chr(10) || '        if(b<0)' || chr(10) || '            c=0;' || chr(10) || '        else' || chr(10) || '            c++;' || chr(10) || '        System.out.println(c);' || chr(10) || '    }' || chr(10) || '}', '0', '1', '2', '3', 1880, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面的JAVA 程序的输出结果是（选一项）' || chr(10) || 'int a=3,b=2,c=1;' || chr(10) || 'int x=10,y=20;' || chr(10) || 'if(a<b)' || chr(10) || '    if(b!=0)' || chr(10) || '        if(!(x==0))' || chr(10) || '            y=1;' || chr(10) || '        else if(x==0)' || chr(10) || '            y=0;' || chr(10) || '        y=-1;' || chr(10) || 'System.out.println(y);', '20', '1', '0', '-1', 1881, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ADO.NET中，（   ）对象的结构类似于关系数据库的结构，并在与数据库开的情况下，在缓存中存储数据。（选一项）', 'DataAdapter', 'DataSet', 'DataTable', 'DataReader', 1882, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ADO.NET中，某程序为了保存学生的成绩，建立了一个成绩表，代码如下：' || chr(10) || 'DataTable dt = new DataTable("成绩表");' || chr(10) || 'dt.Columns.Add("姓名", typeof(System.String));' || chr(10) || 'dt.Columns.Add("成绩", typeof(System.Single));' || chr(10) || 'DataRow dr = dt.NewRow();' || chr(10) || 'dr[0] = "张三";' || chr(10) || 'dr[1] = "90.5";' || chr(10) || 'dr = dt.NewRow();' || chr(10) || 'dr[0] = "李四";' || chr(10) || 'dr[1] = "100";' || chr(10) || 'dt.Rows.Add(dr);' || chr(10) || '请问上述代码运行后，成绩表dt的数据行中的数据是（选一项）', '张三  90.5', '李四  100', '张三  90.5' || chr(13) || '' || chr(10) || '李四  100', '没有数据', 1883, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在HTML文档中，<TD>标记的（  ）属性可以创建跨越多个行的单元格。（选一项）', 'COLSPAN', 'ROW', 'ROWSPAN', 'SPAN', 1884, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在框架页面中，要让目标链接在框架中的某一部分出现，需要设置<a>的哪个属性（选一项）', 'href', 'src', 'target', 'direction', 1885, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'dataTable 是数据集myDataSet 中的数据表对象,有9条记录。调用下列代码后,dataTable 中还有几条记录（选一项）' || chr(10) || 'dataTable.Rows[8].Delete();', '9', '8', '1', '0', 1886, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '收到合伙者甲工厂与乙工厂按协议各投入的80000元，资金已经全部到位，存入我公司银行存款户，其帐务处理借方为“借：银行存款      160000”，则贷方为：（　　　）(选择一项)', ' 贷：实收资本     　　 80000', '贷：实收资本——甲工厂      80000' || chr(10) || '实收资本——乙工厂      80000' || chr(10) || '', '贷：资本公积　　　　　160000', '贷：应付账款          160000', 1887, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '页面中有一个select标签，代码如下：' || chr(10) || '<select id="sel">' || chr(10) || '    <option value="0">请选择</option>' || chr(10) || '    <option value="1">选项一</option>' || chr(10) || '    <option value="2">选项二</option>' || chr(10) || '    <option value="3">选项三</option>' || chr(10) || '    <option value="4">选项四</option>' || chr(10) || ' </select>，要使“选项四”选中的正确写法。' || chr(10) || '（选择一项）', '$("#sel").val("选项四"); ', '$("#sel").val("4");', '$("#sel > option:eq(4)").checked;', '$("#sel  option:eq(4)").attr("selected");', 1888, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '“人员信息”这只作业的“身份证号”栏位会对几位的身份证号码进行校验？（单选）', '15', '16', '17', '18', 1889, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '“商品信息”中提供的商品来源有哪些？（选择两项）', '采购件', '委外生产件', '虚设件', '厂内生产件', 1890, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2自定义类型转换器必须实现的接口是（  ）（选择一项）', 'Convert', 'TypeConverter', 'StrutsTypeConverter', 'StrutsConvert', 1891, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下（）选项不能够正确地得到这个标签：（选一项）' || chr(10) || '<input id="btnGo" type="button" value="单击我" class="btn"/>' || chr(10) || '', ' $("#btnGo")', '$(".btnGo")', '$(".btn")', '$("input[type=''button'']")', 1892, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '新的商业生态系统的支柱是( )(选择三项)', '网店', '网商 ', '网货', '网规', 1893, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果一件宝贝是以拍卖的形式发布的，则运费由谁承担？( )(选择一项)', '买家 ', '卖家', '快递公司', '淘宝网', 1894, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Html语言当中用于分段的标记是（）(选择一项)', '<p>和</p>', '<div>和</div>', '<i>和</i>', '<b>和</b>', 1895, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '职工信息表如下表所示：(选择一项)' || chr(10) || '            编号      姓名        年龄         性别' || chr(10) || '            0001      李明辉         35         男' || chr(10) || '            0002      张明华         45         男' || chr(10) || '            0003      李淑琴         34         女' || chr(10) || '    ....      ....        ....         ....' || chr(10) || '   如果表中的', 'SELECT 姓名，年龄 FROM 职工信息表 WHERE 年龄>40 AND 性别=’男’', 'SELECT 姓名，年龄 FROM 职工信息表 WHERE 年龄>40 AND 性别IS男', 'SELECT 姓名，年龄 FROM 职工信息表 WHERE 年龄>40 AND 性别=男', 'SELECT 姓名，年龄 FROM 职工信息表 WHERE 年龄>’40’ AND 性别=’男’', 1896, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '“满就送”服务是淘宝的哪一类工具？( )(选择一项)', '管理工具  ', '支付工具 ', '营销工具', '沟通工具', 1897, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在toolbox中下面哪种方法不能用来执行一个工具操作（单选）', '双击这个工具  ', '在模型中', ' 将工具拖动导显示的地图上 ', '命令行 ', 1898, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'GIS的基本组成部分是（单选）', '技术人员、分析人员、数据库管理员、过程 ', 'ArcMap、ArcCatalog、ArcIMS、ArcGIS ', ' 人、数据、过程、硬件、软件 ', '地图、空间数据库、过程 ', 1899, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '哪一个工具集包含缓冲工具？（单选）', 'Proximity ', 'Extract ', ' Statistics   ', ' Overlay ', 1900, 402);
commit;
prompt 1900 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在个人geodatabase中，下列哪种字段类型是有效的？（单选）', 'boolean、string、blob、single ', 'string、text、guid、longraw ', 'data、blob、raster、float ', 'double、boolean、binary、number ', 1901, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '选择定义地图投影功能的最佳选项：（单选）', '将类三维信息转换为' || chr(10) || '一个数字平面地图' || chr(10) || '', '给基准面、椭球体、以及坐标系到几何要素的属性赋值过程', '将三维模型转换为二维平面模型的数学转换过程', '将地球表面的要素位置转换到二维平面位置的数学转换过程', 1902, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在哪里可以对ArcMap测量工具的距离单位重新定义？（单选）', '通过数据框架中第一图层的投影元数据自动设置', '在数据框架属性内 ', '在数据层的属性内 ', '在工具菜单的选择项内', 1903, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ArcMap中连接两张表时，哪一个字段属性必须匹配？（单选）', '多对多的对应关系', '字段数据类型', '关键字名称 ', '几何特征 ', 1904, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面关于工具和Layout工具条中的视图导航工具之间不同点描述最恰当的是哪项？（单选）', '两个工具条上的放大缩小功能都将影响所浏览数据的比例尺 ', '两个工具条上的放大缩小功能都仅仅是放大或缩小特征的大小；它们不影响所浏览数据的比例尺 ', '工具上的工具条按钮可以增加或减小要素的大小，而不影响比例尺；应用Layout工具条上的按钮可以改变地图的比例尺 ', '在工具上的工具条可以控制数据框架的比例尺；Layout工具条上的按钮增加或减小地图页面显示的百分比视图 ', 1905, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于域的阐述错误的是哪项？（单选）', '域可以被应用到已定义子类型的字段', '在geodatabase中仅有两种域类型', '编码值域的默认值总是编码值列表的第一项', '域可以在geodatabases之间复制', 1906, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '选择下列对Dissolve功能描述最佳的选择？（单选）', '基于指定的属性或多个属性聚合要素', '基于一个属性值在要素类之间合并邻近的要素', '基于一个属性或多个属性在ArcMap图层之间合并要素', '删除一个要素类中的要素，基于选择的属性值创建新的要素 ', 1907, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '什么是ArcCatalog的缩略图？（单选）', '某个时间和范围的数据的快照 ', '嵌入在任意元数据存储格式中的影像文件 ', '象征数据类型和几何特征的小图标 ', '在任意给定时间显示数据文件所包含的图形 ', 1908, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '你已经在ArcMap中显示了一个面状要素类，并希望能够显示MapTips，但是在图层属性中选项是灰色的。已经是显示视图，并且主要的显示字段已被设置。那为什么不能显示MapTips呢？（单选）', '你必须切换到布局视图，然后打开该模式下的MapTips ', '该要素类的空间索引没有在ArcCatalog中创建或重建', '在MapTips变得可用之前，你必须使用主要显示字段标注这些要素', ' ArcMap不能显示面状要素的MapTips ', 1909, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '按钮的功能是？（单选）', '高亮显示要素的顶点以便编辑 ', '使得简单的附加图形展现在地图显示上 ', '启动编辑工具条  ', '增加顶点到草图上', 1910, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '企业以存货向联营厂投资，其物料发出时应录入（选择一项）', '销售出库单', '生产领料单', '其他出库单', '委外加工出库单', 1911, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下哪种单据可以进行拆单操作（选择一项）', '采购申请单', '采购订单', '外购入库单', '收料通知单', 1912, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下不属于采购系统主要单据的是（选择一项）', '采购申请单', '采购订单', '外购入库单', '采购发票', 1913, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于单据编号下列说法不正确的是（选择一项）', '制作单据时可以修改单据编号', '可以设置单据的前缀', '可以设置单据的后缀', '不可以设置单据的初始值', 1914, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下哪些是存货核算系统中入库核算（选择一项）', '红字入库核算 ', '其他入库核算', '盘亏核算 ', '不确定单价单据', 1915, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '如果发现财务帐上物料的数量与仓库帐相同，但金额不同，需做（  ）来处理（选择一项）', '盘盈单', '盘亏单', '金额调整单', '外购入库单', 1916, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在制作凭证模板的过程中，单据中与物料无关科目的科目来源应选择（选择一项）', '单据上物料的存货科目', '单据上物料的销售收入科目  ', '单据上物料的成本科目 ', '凭证摸板', 1917, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果希望从仓存模块中看到存货的金额要进行什么设置（选择一项）', '初始化时设置数量核算 ', '在系统设置中设置金额在仓存可见 ', '在用户管理中使用权限控制 ', '不需要设置系统默认', 1918, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', ' 以下哪个选项是错误的（选择一项）', '金额调整单只调整金额，不调整数量', '只有采用“计划成本法”的物料，才可进行调价处理', '进行期末结帐后，如需修改上期业务数据，可进行“反结帐”工作', '在进行期初余额调整时，只能对物料的期初结存金额做调整，不能对其结存数量做调整', 1919, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在供应链中，如核算方式为数量、金额核算时，则在（ ）系统做结帐处理（选择一项）', '采购系统', '销售系统', '仓存系统', '存货核算系统', 1920, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在销售系统中新增了一张销售方式为赊销的发票，则该凭证应在（ ）系统生成（选择一项）', '销售系统', '存货核算系统 ', '应收系统', '总帐系统', 1921, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列哪些单据不是在销售系统中可以制作的（选择一项）', '销售发票', '销售订单 ', '销售出库单', '销售合同', 1922, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '销售订单中不必录项有（选择一项）', '单价', '业务员', '购货单位', '部门', 1923, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '销售发票中不能手工录入的项目是（选择一项）', '数量', '审核', '日期', '购货单位', 1924, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', ' 以下（       ）单据不能关联其他单据生成（选择一项）', '销售发票', '销售订单', '销售出库单 ', '销售报价单', 1925, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '单据号的前缀在（ ）设置（选择一项）', '系统设置', '新增单据的单据设置中 ', '基础资料', '备注资料', 1926, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在出入库的单据序时簿中能看到下列哪些单据（选择一项）', '在仓库系统中录入的外购入库单 ', '在盘点中生成的盘赢单', '在盘点中生成的盘亏单 ', '在采购系统中录入的收料通知单', 1927, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '某物料已有业务发生，哪些物料的内容不能更改（选择一项）', '物料代码 ', '名称', '默认仓库', '基本计量单位', 1928, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '某程序员编写了如下创建一个DataTable的代码。请问关于该段代码说法正确的是（选一项）' || chr(10) || 'public static DataTable CreateDataTable()' || chr(10) || '{' || chr(10) || '   DataTable dt = new DataTable();' || chr(10) || '   dt.Columns.Add("id",typeof(System.Int32));' || chr(10) || '   dt.Columns.Add("name",typeof(System.String));' || chr(10) || '   dt.Constraints.Add("id",dt.Columns[0],true);' || chr(10) || '   dt.Columns[1].DefaultValue = "";' || chr(10) || '   DataRow dr = dt.NewRow();' || chr(10) || '   dr[0] = 1;' || chr(10) || '   dr[1] = "svse";' || chr(10) || '   dt.Rows.Add(dr);' || chr(10) || '   dr = dt.NewRow();' || chr(10) || '   dr[0] = 1;' || chr(10) || '   dr[1] = "svse";' || chr(10) || '   dt.Rows.Add(dr);' || chr(10) || '   return dt;' || chr(10) || '}', '由于创建DataTable表时没有传递表名参数，该段代码编译时有错误', '该代码编译时无错误，但是运行时有错误', '该代码编译和运行时都没有错误', '如果把代码dr[1]="svse;"改为"dr[1]=硅谷svse;" 则运行时没有错误', 1929, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有SQL SERVER2005数据库PUBS，PUBS库中有一表UserLogin，表结构如下：' || chr(10) || 'UserName   Varchar(50)  PrimaryKey' || chr(10) || 'Password   Varchar(20) ' || chr(10) || '阅读下面的WINFORM(C#)代码：' || chr(10) || 'private void button1_Click (object sender, System.EventArgs e)' || chr(10) || '{' || chr(9) || '' || chr(10) || 'SqlConnection myConn = new SqlConnection("Server=(local);uid=sa;pwd=;Database=pubs");' || chr(10) || 'try' || chr(10) || '{' || chr(10) || '    myConn.Open();' || chr(10) || '    SqlDataAdapter da = new SqlDataAdapter(" Select UserName, password from UserLogin ", myConn);' || chr(10) || '    DataSet ds  = new DataSet();' || chr(10) || '    da.Fill(ds, "UserLogin");' || chr(10) || '    DataRow dr = ds.Tables["UserLogin"].NewRow();' || chr(10) || '    dr["UserName"] =  DateTime.Now.Ticks.ToString();' || chr(10) || '    dr["password"] =  DateTime.Now.Ticks.ToString();' || chr(10) || '    ds.Tables["UserLogin"].Rows.Add(dr);' || chr(10) || '    ds.AcceptChanges();' || chr(10) || '    da.Update(ds, "UserLogin");' || chr(10) || '}' || chr(10) || 'catch(SqlException ee)' || chr(10) || '{' || chr(10) || '    MessageBox.Show(ee.Message.ToString());' || chr(10) || '}' || chr(10) || 'finally' || chr(10) || '{' || chr(10) || '    myConn.Close();' || chr(10) || '}' || chr(10) || '}' || chr(10) || '假设命名空间引用、窗体初始化、连接数据库全部正确，则点击按钮button1，执行结果为（选一项）', '在UserLogin表中新增加一条记录', '报错，ds.AcceptChanges()与da.Update(ds, “UserLogin”)不能同时用', '不报错，但没有将数据记录增加到UserLogin表中', '报错，不能用DateTime.Now.Ticks.ToString()给字段赋值', 1930, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在WinForm应用程序中，可以通过以下（   ）方法使一个窗体成为MDI窗体。（选一项）', '改变窗体的标题信息', '在工程的选项中设置启动窗体', '设置窗体的IsMdiContainer属性', '设置窗体的ImeMode属性', 1931, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在一台名为Aptech的SQL Server服务器上，有一个名为Exam的数据库，管理员为该数据库创建了一个用户，用户名为bill，密码是123456。为了使用ADO.NET在该服务器（本地服务器的IP地址是127.0.0.1）上操作该数据库，下列连接字符串编写不正确的 是（选一项）', '"server = Aptech;database = Exam;uid = bill;pwd = 123456;"', '"server = Aptech;database = Exam;integrated security = sspi"', '"server = .;database = Exam;uid = bill;pwd = 123456"', '"server = 127.0.0.1;database = Exam;integrated security = sspi"', 1932, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'android 关于service生命周期的onCreate()和onStart()说法正确的是？(选择两项)', '如果service已经启动，将先后调用onCreate()和onStart()方法', '当第一次启动的时候先后调用onCreate()和onStart()方法  ', '当第一次启动的时候只会调用onCreate()方法', '如果service已经启动，只会执行onStart()方法，不再执行onCreate()方法 ', 1933, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '同以往的版本相比较，HTML4.0：(选择一项)', '增加了JavaScript支持', '增加了Flash技术', '增强了网页的动态性', '增加了ActiveX技术', 1934, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'mysql_affected_rows()对哪个操作没有影响？(选择一项)', 'select', 'delete', 'update', 'insert ', 1935, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'C#中存储过程参数的（ ）属性表明它是输入还是输出参数（选一项）', 'DbType', 'ParameterName', 'Direction', 'SqlDbType', 1936, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在使用 SQLiteOpenHelper 这个类时，它的哪一个方法是用来实现版本升级之用的？' || chr(10) || '选择一项：' || chr(10) || '', 'onCreate()', 'onCreade()', ' onUpdate()', 'onUpgrade() ', 1937, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'WriteTagSingleWord函数是EPCSDK.dll提供的写入标签的函数，下面代码中空白处应填入的代码是（ ）（选一项）' || chr(10) || 'byte[] data = new byte[2];' || chr(10) || 'data = Encoding.Default.GetBytes("中");' || chr(10) || 'if(EPCSDKHelper.WriteTagSingleWord(_handle,0x03,0x00,________,________,0))' || chr(10) || '{' || chr(10) || '    MessageBox.Show("写入用户区1个字（2字节）成功");' || chr(10) || '}' || chr(10) || 'else', 'data,0', '0,data', 'data[0],data[1]', 'data.Length,data', 1938, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '友情链接方面，PR的选择应该优先选择的链接为(单选）', 'PR高，相关度低', 'PR低，相关高', 'PR高，相关低', 'RP高，相关高', 1939, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在struts.xml中。假如在一个package中没有配置namespace，那么在其中配置一个Action名字叫做login，它的result是这样配置的<result>/login.jsp</result>,已知在此配置文件中还有另一个name为user的package其中也有一个Action名字为login，它的result是这样配置的<result>/loginUser.jsp</result>那么在以下什么情况下将能访问到login.jsp（）(选择一项)', '在根路径后输入/login', '在根路径后输入/user/login', '在根路径后输入/login/user', '在根路径后输入/abc/login', 1940, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面关于多线程的描述错误的是（ ）（选一项）', '一个Thread实例只能管理一个线程', 'C#中Main()方法总是第一个线程', '线程一旦启动不能随意停止', '新创建的线程里不能直接调用主线程里的控件', 1941, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '以下关于ValueStack说法正确的是（选择三项）', '每个Action对象实例拥有一个ValueStack对象', '每个Action对象实例拥有多个ValueStack对象', 'Action中封装了需要传入下一个页面的值，这些值封装在ValueStack对象中', 'ValueStack会在请求开始时被创建，请求结束时消亡', 1942, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '下列哪些对象存储在个人geodatabase中？（多选）', '栅格数据', ' INFO表 ', 'XML元数据', '自定义工具箱 ', 1943, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ArcMap中哪些方法不能用来选择要素？（单选）', '使用一个图形 ', '交互式的要素选择工具 ', '通过图层文件选择 ', 'SQL查询 ', 1944, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '一个平面坐标系是：（单选）', '通常也被称作地理坐标系统 ', '基于度量的角度单位 ', '不适用于小比例尺地图  ', '基于英尺或米等线性单位测量', 1945, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '选择对栅格和矢量数据之间区别描述最佳的选项：（单选）', '栅格数据局限于表达区域，而矢量数据可以表达区、线和点 ', '矢量数据利于存储“真实世界”的特征，而栅格数据利于存储自然现象', '矢量数据通常比栅格数据更精确，尽管没有必要过于精确 ', ' 栅格数据只能存储包含文字和数字的数据值，而矢量数据可以存储许多不同的数据类型 ', 1946, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '哪种数据源位置的集合可以同时在ArcMap中编辑？（单选）', '在同样geodatabase中不同要素数据集中的要素类 ', '存储在相同硬盘不同目录下的shapefiles ', '一块网络硬盘和本地硬盘中的coverage要素 ', '不同的geodatabase中两个不同要素数据集的要素类', 1947, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '地图拓扑和geodatabase拓扑之间有什么共同点？（单选）', '簇的容限值 ', '仅仅能够对geodatabase要素类操作', '为子类型设置规则 ', '都可以在ArcView中创建  ', 1948, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '关于geodatabase拓扑结构描述正确的是哪项？（选择两项）', 'Geodatabase的拓扑可以在数据库中作为独立的对象而创建', '要素类可以通过共享多种拓扑', '一旦拓扑生效，你将不能更改拓扑规则 ', '一旦拓扑生效，你将不能更改簇的容限值 ', 1949, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪项对ArcGIS中geodatabase拓扑定义最好？（单选）', '地图显示中所有的空间特征在某种程度上都是相互联系的', '在相同地理数据层中的空间特征在某种程度上是相互联系的', '地图显示中定义特征的空间坐标位置的数学方程式', ' 在一个或多个地理数据图层之间，相连接或相邻的要素间的空间关联 ', 1950, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '选择一个空间操作，可以聚合高速公路（线要素）图层和县（面要素）图层为一个新的图层，这将允许选择指定县域内的高速公路：（单选）', ' Merge    ', 'Union ', 'Intersect    ', ' Clip ', 1951, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '有三个面状要素类供分析：土地利用，植被和城市边界。选择下面工作流中可以创建仅包含在城市边界内的土地利用和植被的新的要素类：（单选）', '使用union合并土地利用和植被层，然后用城市边界层clip合并的结果', '在城市边界层的范围内对土地利用层使用clip操作，然后对得到的结果和植被层进行union操作 ', '在城市边界层的范围内对植被层使用clip操作，然后对得到的结果和土地利用层进行union操作 ', '在城市边界层的范围内对植被层和土地利用层使用clip操作，然后使用编辑工具条的Merge功能 ', 1952, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面投影数据存储格式中和各自的文件格式非对应关系的是（单选）', 'DGN文件使用world文件  ', 'geodatabase使用RDBMS表 ', 'coverage使用.PRJ文件 ', 'shapefile使用.SHX文件 ', 1953, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '当使用自然分类法（Natural Breaks attribute classification）属性分类方法时：（单选）', ' 依靠具有相似属性值的要素进行分组，以此形成分类 ', '分类是由最大值减去最小值，然后除以分类数来决定的', '自然间隔在均值附件被创建   ', '每类中的要素数目是相等的 ', 1954, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '库存盘点的过程要进行哪些工作（选择一项）', '备份帐存数据', '查看仓库台面帐', '录入盘点数据 ', '编制盘点报告表', 1955, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列关于K/3虚仓说法正确的是（选择一项）', '企业中只能设置一个虚仓', '虚仓既能核算数量也能核算金额', '虚仓只能核算数量不能核算金额 ', '虚仓是指在企业外建立的仓库', 1956, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '仓库调拨单能够进行的业务是（选择一项）', '虚仓之间的调拨 ', '实仓之间的调拨', '代管仓之间的调拨', '虚实仓之间的调拨', 1957, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '供应链初始化中启用期间在哪里设置（选择一项）', ' 核算参数设置', '中间层建帐中', '系统设置 ', '不用设置', 1958, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '若从仓库领用10件自产的A产品赠送给客户，应做（选择一项）', '销售出库单', '其他出库单', '赠品出库单', '委外加工出库单', 1959, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', ' 在录入单据时，要进行即时库存查询，用快捷方式（选择一项）', 'F6', 'F7', 'F8', 'F12', 1960, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列说法不正确的有（选择一项）', '采购系统所有单据都可以关联生成', '做红字发票时，只要录入负数的数量即可', '在采购系统中录入的外购入库单会自动传递到仓存系统中', '发票核销可在单据序时簿中进行处理', 1961, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '供应链初始化数据录入不包括（   ）数据（选择一项）', '分仓库录入各物料的期初数量、金额，本年累计出入库数量、金额', '期初暂估入库单据 ', '期初未核销的销售出库单据', '日常单据', 1962, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下（   ）单据不可以关联其他单据生成（选择一项）', '外购入库单', '采购发票', '退料通知单', '采购合同', 1963, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下（  ）单据能关联销售订单生成（选择一项）', '采购订单', '外购入库单', '采购发票', '退货通知单', 1964, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'K/3系统的建帐工作是在____进行。(选择一项)', 'K/3客户端', 'K/3中间层', 'K/3数据库', '以上几处皆可', 1965, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '某企业成立于2000年6月，2005年12月购入K/3软件，2006年3月开始正式使用软件并录入2006年1月的帐务数据，则该企业的帐套启用期间是（）(选择一项)', '2000年6月', '2005年12月', '2006年3月', '2006年1月', 1966, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '金蝶K/3 系统遵循微软Windows DNA 框架结构，基于三层结构技术，不包括（）(选择一项)', '数据库端', '中间层', '人力资源层', '客户端', 1967, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '拥有最大管理权限，无需授权的用户是(         )(选择一项)', '系统管理员', '任何授予了全部权限的用户', '没有此类用户', '普通用户', 1968, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '添加新用户时可以不作的是()(选择一项)', '录入用户名', '确定认证方式', '选择用户组', '授权', 1969, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '初始化与日常凭证业务处理可以同步进行,但是不能执行的操作是（）(选择一项)', '凭证审核', '凭证汇总', '凭证过账', '查询帐簿', 1970, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '制单时，用来获取基础资料等内容的通用获取键（)(选择一项)', 'F7', 'Ctrl+F7', 'F11', 'ESC', 1971, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '固定资产初始化流程正确顺序是哪一项（   ）a、基础资料设置   b、初始数据的录入 c、结束初始化 d、系统参数的设置(选择一项)', 'abcd', 'dabc', 'bcad', 'abdc', 1972, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '创建一个名为‘Customers’的新表，同时要求新表中包含表‘clients’的所有记录，SQL语句是（选一项）', 'Select * into customers from clients', 'Select  into customers from clients', 'Insert into customers select * from clients', 'Insert customers select * from clients', 1973, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于查询中列的别名, 以下(  )语句是不正确的。（选一项）', 'Select name as ''姓名'' from table', 'Select name as姓名 from table where id =1', 'Sleect name = 姓名 from table', 'Select  names姓名 from table', 1974, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '你们正在设计一个数据库应用程序，在设计中途的时候，数据库进行了重新规划，因此原来的数据库不再使用，并且启用了一个新的数据库和和数据库表结构，但是，原来有一张重要的表中已输入了大量的数据，你检查了新的数据库表和原来的数据库表的结构，发现表的结构并没有更改，为了把原来的数据在新的数据库中利用，可以采用最好的办法是（选一项）', '重新在新的数据库表中录入全部的数据', '使用数据转换服务的输出功能把原来的数据保存为文本文件，再把文本文件拷贝到新的数据库中', '使用“INSERT INTO[新的表名] SELECT [旧的表名]”的插入语句进行表之间的数据转移', '首先建立两张表之间的主外键关系，再在VB中使用ADO对象进行数据分析和数据行插入', 1975, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ADO.NET中，下列代码运行后的输出结果是（选一项）' || chr(10) || 'DataTable dt = new DataTable();' || chr(10) || 'dt.Columns.Add("编号",typeof(System Int16));' || chr(10) || 'dt.Columns.Add("成绩",typeof(System Single));' || chr(10) || 'Console.WriteLine(dt.Columns[1].DataType);', 'System.Int16', 'System.Single', '编号', '成绩', 1976, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在ADO.NET中，已知变量sqlCom是一个SqlCommand对象，则下列代码运行时将出现异常的是（选一项）' || chr(10) || 'SqlDataReader reader = sqlCom.ExecuteReader();   //1' || chr(10) || 'reader.Read();                               //2' || chr(10) || 'reader.Close();                              //3' || chr(10) || 'reader.Read();                              //4', '1', '2', '3', '4', 1977, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中，可以通过装箱和拆箱实现值类型与引用类型之间相互转换，在下列代码中，有(  )处实现了拆箱。（选一项）' || chr(10) || 'int age = 5;' || chr(10) || 'object o= age;    //0' || chr(10) || 'o=10;             //1' || chr(10) || 'age=(int)o;       //2' || chr(10) || 'object oAge =age; //3', '0', '1', '2', '3', 1978, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '创建存储过程如下：' || chr(10) || 'CREATE procedure bookproc' || chr(10) || '@id int, @title char(20) OUTPUT  ' || chr(10) || 'as' || chr(10) || 'select @title=title from book where id= @id' || chr(10) || '执行该存储过程的方法正确的是（选两项）', 'exec bookproc 1,@title output ' || chr(13) || 'print @title', 'exec bookproc @id =1,@title output ' || chr(13) || 'print @title', 'declare @title char(20) ' || chr(13) || 'exec bookproc 1,@title output ' || chr(13) || 'print @title', 'declare @title char(20) ' || chr(13) || 'exec bookproc @id =1,@title output ' || chr(13) || 'print @title', 1979, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果需要匹配包含文本的元素，用下面哪种来实现 （选择一项）', 'text()', 'contains()', 'input()', 'attr(name)', 1980, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面不属于Jquery的ajax全局事件的是  （选择一项）', 'ajaxComplete(callback) ', 'ajaxSuccess(callback)', '$.post(url)', 'ajaxSend(callback)', 1981, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在jquey中，如果想要从DOM中删除所有匹配的元素，下面哪一个是正确的 （选择一项）', 'delete()', 'empty()', 'remove() ', 'removeAll()', 1982, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在jquery中想要找到所有元素的同辈元素，下面哪一个是可以实现的 （选择一项）', 'nextAll([expr])', 'siblings([expr])', 'next()', 'find([expr])', 1983, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面选项中哪一个是和$("#foo")等价的写法。（选择一项）', '$("foo#")', '$(#"foo")', '$ ("foo")', 'jQuery("#foo")', 1984, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在jQuery中，下列关于文档就绪函数的写法错误的是（）。（选一项）', '$(document).ready(function() {' || chr(10) || '});' || chr(10) || '', ' $(function() {' || chr(10) || '});' || chr(10) || '', '$(document)(function() {' || chr(10) || '});' || chr(10) || '', '$().ready(function() {' || chr(10) || '});' || chr(10) || '', 1985, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下（）选项不能够正确地得到这个标签：（选一项）' || chr(10) || '<input id="btnGo" type="button" value="单击我" class="btn"/>' || chr(10) || '', ' $("#btnGo")', '$(".btnGo")', '$(".btn")', '$("input[type=''button'']")', 1986, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在HTML页面中有如下结构的代码：' || chr(10) || '<div id="header">' || chr(10) || '    <h3>' || chr(10) || '       <span>S3N认证考试</span>' || chr(10) || '    </h3>' || chr(10) || '    <ul>' || chr(10) || '        <li>一</li>' || chr(10) || '        <li>二</li>' || chr(10) || '        <li>三</li>' || chr(10) || '        <li>四</li>' || chr(10) || '    </ul>' || chr(10) || '</div>' || chr(10) || '请问下列选项（）所示jQuery代码，不能够让汉字“四”的颜色变成红色。（选一项）' || chr(10) || '', '$("#header ul li:eq(3)").css("color","red");', '$("#header li:eq(3)").css("color","red");', '$("#header li:last").css("color","red");', '$("#header li:gt(3)").css("color","red");', 1987, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在HTML页面中有如下结构的代码：' || chr(10) || '<ul id="p-list">' || chr(10) || '    <li>苹果iPhone 4S</li>' || chr(10) || '</ul>' || chr(10) || '请问以下（）方法不能让“苹果iPhone 4S”隐藏。（选一项）' || chr(10) || '', '$("#p-list li:nth-child(0)").hide();', '$("#p-list li:only-child").hide();', ' $("#p-list li:last-child").hide();', ' $("#p-list li:first-child").hide();', 1988, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有以下标签：<input id="txtContent" class="txt" type="text" value="张三"/>' || chr(10) || '请问不能够正确的获取文本框里面的值“张三”的语句是（）。（选一项）' || chr(10) || '', '$(".txt").val()', '$(".txt").attr("value")', '$("#txtContent").text()', '$("#txtContent").attr("value")', 1989, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '在控制器类中一般需要添加相应属性的___________和___________。(选择两项)', 'setter方法', 'as方法', 'getter方法', 'is方法', 1990, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '控制器需要在___________配置文件中进行配置。(选择一项)', 'web.xml', 'struts.xml', 'struts2.xml', 'webwork.xml', 1991, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '当你在ArcCatalog中创建一个新的要素类后，如果碰到一个错误，你可以更改下面哪个参数（单选）', '激活Z值的存储 ', '激活M值的存储 ', ' X/Y范围的值    ', ' 投影坐标系 ', 1992, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面ArcMap中哪种编辑不需要启动一个编辑进程（单选）', ' 移动一个要素 ', '对字段计算操作使用Undo按钮 ', '在两个图层之间拷贝和粘贴要素 ', '删除一个表的所有字段 ', 1993, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ArcMap允许你：（单选）', '在一个单独的操作中，仅能从目录表中移除一个图层 ', ' 仅能使一个数据框架处于活动状态 ', '右键点击目录表中数据图层的符号，调用符号选择器', '每个地图文档中仅能添加一个数据框架', 1994, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在ArcMap中，哪个处理过程将使得图层的属性表可以被查看（单选）', '选择图层，然后在标准工具条中点击打开属性表的按钮', '选择图层，然后在视图菜单下点击打开属性表的按钮', '右键点击图层，打开上下文菜单，然后点击打开属性表 ', '右键点击图层，选择属性，然后选择字段标签', 1995, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '为了加入一个新的文本到注记要素类中，你需要在哪里设置“Active AnnotationTarget”（单选）', '编辑工具条，在编辑功能的下拉菜单中', '编辑工具条，在任务下拉列表中 ', ' 插入下拉菜单中  ', '绘图工具条，在绘图下拉菜单中 ', 1996, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ArcGIS geodatabase能够存储两种类型物理实现：个人和企业。下面哪项描述的是两种类型geodatabase之间的差别（单选）', '对geodatabase大小指定上限     ', '用户能够通过网络连接到geodatabase ', '将元数据信息存储为表 ', ' 使用ArcView许可可以连接 ', 1997, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面哪种技术无权打开数据框架的属性（单选）', '右键点击数据框架名称以打开上下文菜单 ', ' 插入菜单 ', ' 视图菜单', ' 在布局视图中右键点击数据框架 ', 1998, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面哪种数据类型是ArcGIS9中的新数据格式（单选）', ' Raster attribute type  ', 'Raster dataset ', ' Raster catalog  ', ' Image catalog ', 1999, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '哪种XML文档类型保存geodatabase行为（单选）', '工作空间和记录集 ', '工作空间和Delta ', 'Delta和记录集 ', '工作空间 ', 2000, 402);
commit;
prompt 2000 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Coverages将拓扑信息存储在不同的表类型中。下面哪项不在这些类型中（单选）', ' .pat', ' .aat ', '.nat', ' .ind ', 2001, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '地心基准面和本地基准面之间的区别是（单选）', '地心基准面的原点在地球已知的质心，本地基准面的原点在北极 ', '地心基准面的原点在地球已知的质心，本地基准面的原点在某个专门区域的地球表面 ', '地心基准面的原点在北极，本地基准面的原点在地球已知的质心 ', '地心基准面使用球体坐标系，本地基准面使用Cartesian坐标系', 2002, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关掉“Use Printer Pager Settings”选择框的重要性是（单选）', ' 你可以为打印机设置新的默认页面边白 ', ' 你不能再共享地图文档 ', ' 你不能再使用默认的ArcMap模板文件 ', '你可以设置自定义、非标准的页面大小 ', 2003, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ArcMap中不支持哪种色彩模式（单选）', ' CMYK ', ' HSV ', 'SPOT ', 'ArcInfo色彩名称', 2004, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '按钮的功能是（单选）', '在布局视图和数据视图之间切换', '激活所选择的数据框架', ' 将图形加入到虚拟地图页面中', '在不同地图模板之间切换 ', 2005, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '本月新增的固定资产在（）计提折旧(选择一项)', '本日', '本月', '下月', '本年', 2006, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '已经使用的固定资产变动方式等基础资料将（   ）(选择一项)', '可禁用', '可删除', '无法删除', '可隐藏', 2007, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '固定资产报废业务在（   ）进行(选择一项)', '卡片变动', '卡片清理', '卡片新增', '固定资产报废', 2008, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '已录入的卡片，如果还没有被审核，或者系统还没有进行结账，处于当期，则还可以对卡片进行（     ），否则只能对卡片进行变动或清理，来改变卡片的数据资料。(选择一项)', '修改或删除', '新增或复制', '禁用', '隐藏', 2009, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '固定资产净值的计算为（       ）(选择一项)', '固定资产原值-累计折旧', '固定资产原值-累计折旧-减值准备', '固定资产原值-累计折旧-减值准备-净残值', '固定资产原值-累计折旧-净残值', 2010, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '固定资产系统提供的计提折旧方法不包括（）(选择一项)', '平均年限法', '双倍余额递减法 ', '自定义', '三倍余额递增法', 2011, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '应收（付）系统，不可以对以下单据生成凭证(选择一项)', '已核销的单据', '已审核的单据', '未核销的单据', '未审核的单据', 2012, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '信用管理中不包括（   ）(选择一项)', '信用额度', '信用期限', '物料数量', '产品质量', 2013, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '金蝶K/3 10.3工资系统中，提供了3种基金计算方法，下面不正确的是(选择一项)', '按次数计算', '按季度计算', '按期间计算', '按年度计算', 2014, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '金蝶K/3 10.3工资系统中，禁用职员是在哪里操作(选择一项)', '职员属性中修改', '工资数据录入中修改', '工资数据参数进行修改', '人员变动中进行处理', 2015, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '金蝶K/3 10.3系统中，提供了费用分配功能，费用分配是和K/3什么模块业务紧密相关的(选择一项)', '人力资源系统', '固定资产系统', '总账系统', '现金系统', 2016, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在金蝶K/3 10.3工资系统中，所得税设置计算完毕，还需要在哪里把相应的所得税额进行引入，供工资计算；(选择一项)', '工资录入', '所得税设置', '工资发放表', '期末结账', 2017, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于会计的产生和发展，下列说法错误的是（       ）(选择一项)', ' 会计是适应社会生产实践和经济管理的客观需要而产生的', ' 剩余产品的出现是会计产生的前提条件', ' 近代会计的出现以借贷记账法的产生及应用为标志', ' 现代会计以财务会计的形成为标志', 2018, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '会计确认和计量基础不包括（       ）(选择一项)', '收付实现制', ' 权责发生制', '混合制', ' 虚拟制', 2019, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '会计假设不包括（      ）(选择一项)', '会计主体假设', ' 持续经营假设', '会计年度假设', '货币计量假设', 2020, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列哪一项不全是会计要素（    ）(选择一项)', ' 资产、负债、利润', '资产、收入、利润', '收入、费用、所有者权益', ' 收入、税金、利润', 2021, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列哪一个活动带来的收入不属于收入要素（      ）(选择一项)', ' 销售商品', '固定资产盘盈', '提供劳务', '让渡资产使用权', 2022, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于“用银行存款归还短期借款50 000元”导致的会计要素的变化，下列说法正确的是（    ）(选择一项)', '资产增加，负债增加', '资产增加，负债减少', '资产减少，负债减少', ' 资产减少，负债增加', 2023, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '现有书目表book，数据见下表。 现在执行SQL语句：update book set title=replace(replace(title,''j'',''a''),''servlet'',''csharp'')，执行结果是（选一项）' || chr(10) || 'bookid    title' || chr(10) || '1         jsp&servlet' || chr(10) || '2         jsp' || chr(10) || '3         Professionalservlet' || chr(10) || '4         asp', '更新了3条记录', '更新了2条记录', '更新了1条记录', '该SQL语句有错误，无法执行', 2024, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在SQL Server 2005 中，假设订单表orders用来存储订单信息，cid代表客户编号，现要查询每个客户的次数以及客户编号，以下语句正确的是（选一项）', 'select count(cid), cid from orders', 'select count(cid), cid from orders order by cid', 'select count(cid), cid from orders having count(cid)>0', 'select count(cid), cid from orders group by cid', 2025, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在SQL Server 2005中，假定grade(成绩)表中包含字段：sID(学号),cID(班级编号)，lang(语文课成绩)，math(数学课成绩),那么先按班级，后按语文成绩排序的SQL语句是（选一项）', 'SELECT * FROM grade GROUP BY lang,cId', 'SELECT * FROM grade GROUP BYcId,lang', 'SELECT * FROM grade ORDER BY lang,cld', 'SELECT * FROM grade ORDER BY cId,lang', 2026, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在SQL Server 2005中，学生表student中包含字母：学生编号sid（主键），学生姓名sName。成绩表score包含字段：课程编号cid，学生编号sid（外键），学生成绩score；其中学生表包含10行数据，成绩表包含6行记录（且sid列没有重复值），那么执行如下SQL语句，将返回（）条记录。（选一项）' || chr(10) || 'Select * from student left outer join score on student.sid=score.sid', '0', '6', '10', '16', 2027, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在查询分析器中你运行下面的语句，得到的结果是（选一项）' || chr(10) || 'CREATE TABLE numbers（' || chr(10) || '    N1 INT，' || chr(10) || '    N2 NUMERIC（5，0），' || chr(10) || '    N3 NUMERIC（4，2）' || chr(10) || '）GO' || chr(10) || 'INSERT INTO numbers VALUES（1.5，1.5，1.5） ' || chr(10) || 'SELECT * FORM numbers', '返回2，2和1.50的结果集合', '返回1.5，1.5，和1.5的结果集合', 'CREATE TABLE命令不会执行，因为你无法为列N2设置精度为0', '返回1，2，和1.50的结果集合', 2028, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Demographic表有1000多列。将近90%的用户搜索并且更新其中的20列。剩下的列很少用到但也很重要。当存取Demographic表的信息时，下面选项中，（）能够提高数据读取和更新的性能。（选一项）', '在Demographic表的最常存取的列上建立簇索引', '基于该Demographic表对最常存取的20列建立一个视图', '将Demographic表分割成2个新表，一个包含20个最常存取的列，另一个包含剩下的列', '根据用户的需要建立一系列存储过程来选择或更新Demographic表', 2029, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列（）语句用于清除自最近的事务语句以来所有的修改（选一项）', 'COMMIT TRANSACTION', 'ROLLBACK TRANSACTION', 'BEGIN TRANSACTION', 'SAVE TRANSACTION', 2030, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在SQLServer2005中，假设orders表中存在自动编号字段oid等于1的记录，执行下面T-SQL,以下说法正确的是（选一项）' || chr(10) || ' BEGIN TRANSACTION' || chr(10) || ' Delete from Orders   where oid =1' || chr(10) || ' IF(@@Error<>0)' || chr(10) || '  ROLLBACK TRANSACTION' || chr(10) || 'Else' || chr(10) || ' COMMIT TRANSACTION', '执行成功，oid 为1的记录被永久删除', '执行成功，order表没有任何变化', '执行时出现错误', '执行成功，但事务处理并没有结束', 2031, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '不属于Struts 2表单标签库的是___________(选择一项)', '<s: textfield >', '<s: textarea >', '<s: submit >', '<select>', 2032, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下关于struts的描述中，不正确的是（）(选择一项)', 'struts 是一个基于JAVA EE的MVC', 'struts2的框架配置文件是struts-config.xml', 'struts2的控制组建核心包括核心控制和业务控制器', '在struts中解决中文乱码可以通过修改struts。I18n。encoding的值为GBK来实现', 2033, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '不属于Struts2的动作类的常量返回值的是()(选择一项)', 'success', 'input', 'never', 'login', 2034, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下不属于Struts2动作执行的结果类型是（）(选择一项)', 'action', 'redirect', 'redirectAction', 'dispatcher', 2035, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在struts.xml中。假如在一个package中没有配置namespace，那么在其中配置一个Action名字叫做login，它的result是这样配置的<result>/login.jsp</result>,已知在此配置文件中还有另一个name为user的package其中也有一个Action名字为login，它的result是这样配置的<result>/loginUser.jsp</result>那么在以下什么情况下将能访问到login.jsp（）(选择一项)', '在根路径后输入/login', '在根路径后输入/user/login', '在根路径后输入/login/user', '在根路径后输入/abc/login', 2036, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '不同的线程在调用Action时创建几个Action实例。（）(选择一项)', '1个', '2个', '每个线程创建1个。', '可以自定义配置。', 2037, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'struts提供了Action接口定义了5个标准字符串常量，不包括的有（）(选择一项)', 'SUCCESS', 'NONE', 'REG', 'LOGIN', 2038, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列描述中哪个不是Struts2的优势（选择一项）', '无侵入式设计', '侵入式设计', '提供了拦截器', '提供了类型转换器', 2039, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列不属于MVC设计模式的是（选择一项）', '模型层', '控制层', '数据层', '视图层', 2040, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'StrutsPrepareAndExecuteFilter过滤器应该在哪个文件中部署（选择一项）', 'validators.xml', 'struts.xml', 'web.xml', 'index.jsp', 2041, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2核心Jar包需拷贝到哪个目录（选择一项）', 'WEB-INF/lib', 'WEB-INF', 'WebRoot', '以上说法都不正确', 2042, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '如下代码说法正确的是(选择一项)' || chr(10) || '<s:iterator id="book" value="#arr.booklist" status="st">' || chr(10) || ' <s:if test="st.odd">' || chr(10) || '  <tr bgcolor="yellow"></tr>' || chr(10) || ' <s:if>' || chr(10) || ' <s:else>' || chr(10) || '  <tr bgcolor="red"></tr>' || chr(10) || ' </s:else>' || chr(10) || '</s:iterator>', '奇数行为黄色', '奇数行为红色', '偶数行为黄色', '偶数行为蓝色', 2043, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下不属于开发struts2的业务控制器Action的方法的是（选择一项）', 'POJO', '实现Action接口', '继承ActionSupport类', '实现Validator接口', 2044, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '为了实现基于模型的驱动，Action组件必须实现ModelDriver接口，同时实现ModelDriver接口中的(选择一项)方法', 'getUser', 'getModel', 'execute', 'setUser', 2045, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在mo二次开发中画一条polyline最少要创建几个Point对象（）', '1', '2', '3', '4', 2046, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ArcEngine二次开发的技术是基于（）的开发技术（选择一项）', 'COM', 'REST', 'C#', 'DESKTOP', 2047, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下属于接口转换的C#代码是（选择一项）：', 'm_Map.CurrentTool = pCommand;', 'command.Name == commandName;', 'pSpatialFilter.Geometry=IPolygon as IGeometry;', 'IPoint point = new PointClass(); ', 2048, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面可以从“地类区”文件中检索出所有“建设用地”的语句是 ： （ 选择一项） ', 'Select * FROM 地类区 WHERE 地类=“建设用地” ', 'Select * FROM 地类区 WHERE 地类 IN “建设用地”', 'Select 建设用地 FROM 地类区 ', 'Select * FROM 地类区 WHERE 地类= =“建设用地”', 2049, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '某市为了保护出租车司机的安全，建立了出租车GPS监控系统，并可以利用该系统对处于危险状况的司机进行营救，下面关于该应用的描述中不太合理的是 ：（选择一项）', 'GIS是该系统建设的主要支撑技术之一', '该系统的应用需要在出租车上安装GPS设备', '该系统的正常应用需要大量准确、有效的空间数据与属性数据做基础 ', '司机感觉有危险时，可以通过秘密机关报警，指挥中心可以通过遥感卫星实时拍摄到该出租车的运行位置', 2050, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ArcMap中的 工具条可以实现影像、图片的校准。 （ 选择一项） ', 'Editor ', 'ArcScan ', 'Georeferncing ', 'Data Frame Tools', 2051, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '我国目前最新得到的国家级测绘成果采取的是什么大地坐标系 ： （选择一项）', '北京54', '新北京54 ', '西安80', '2000国家大地坐标系统', 2052, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于ArcCatalog的描述，不正确的是： （选择一项） ', '在ArcCatalog中可以创建不同类型的文件，如shapefile ', 'ArcCatalog无法浏览移动设备（如移动硬盘或优盘）上的数据 ', 'ArcCatalog支持数据项搜索、地理范围搜索及时间搜索等 ', 'ArcCatalog支持删除shapefile、coverage等不同格式地理数据', 2053, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面关于地理信息系统的空间数据描述不正确的是 ： （ ） ', '空间数据有栅格结构和矢量结构两种数据结构 ', '可以把空间数据归纳为三类：1)属性数据 2)几何数据 3)关系数据 ', '栅格结构的显著特点是：属性明显，定位隐含，即数据直接记录属性本身 ', '矢量数据结构类型具有“位置明显、属性隐含”的特点，操作起来相对栅格结构比较简单', 2054, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在mo二次开发中的MapLayer是什么对象（选择一项）：', '图层集合对象', '地图对象', '图层对象', '符号对象', 2055, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在mo二次开发中使用什么集合存储多个图层（选择一项）', 'Tables', 'Columns', 'Layers', 'Rows', 2056, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在mo二次开发中Symbol是什么对象（选择一项）', '图层对象', '点对象', '符号对象', '文字对象', 2057, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ArcEngine是ArcObjects的（选择一项）：', '子集', '交集', '并集', '减集', 2058, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '地理数据一般具有的三个基本特征是 ： （ ） ', '空间特征、属性特征和时间特征', '空间特征、地理特征和时间特征', '地理特征、属性特征和时间特征 ', '空间特征、属性特征和拓扑特征', 2059, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '用银行存款购买材料2000元的会计分录借方为“借：原材料　 2000”，则贷方正确的写法是（   ）(选择一项)', ' 贷：银行存款　　2000', '贷：短期借款    2000', '贷：实收资本　　2000', ' 贷：现金    　　2000', 2060, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '使用现金支付广告费2000元的会计分录贷方为“贷：现金　 2 000”，则借方正确的写法是（   ）(选择一项)', ' 借：生产费用    2000', '借：银行存款    2000', '借：管理费用    2000', '借：营业外支出  2000', 2061, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '企业接受投资者投资一台设备，价值20 000元的会计分录借方为“借：固定资产　　20 000”，则贷方正确的写法是（    ）(选择一项)', ' 贷：银行存款　　2 0000', '贷：短期借款　　20 000', '贷：实收资本　　20 000', ' 贷：应收账款　  20 000', 2062, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '购入材料79000元，开出支票60000元，余款未付的会计分录借方为“借：原材料　　 79000”，则贷方正确的写法是（    ）(选择一项)', '贷：应付账款　19000' || chr(10) || '银行存款  60000' || chr(10) || '', '贷：应付账款　79000', ' 贷：银行存款　79000', '贷：银行存款　19000' || chr(10) || '应付账款  60000' || chr(10) || '', 2063, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '某公司用银行存款38 000元购入材料5000元和固定资产33 000元的会计分录贷方为“贷：银行存款　38 000”，则借方正确的写法是（     ）(选择一项)', ' 借：银行存款    38000', '借：原材料      38000', ' 借：原材料　　  33 000' || chr(10) || '固定资产　  5 000' || chr(10) || '', '借：原材料　　  5 000' || chr(10) || '固定资产　  33 000' || chr(10) || '', 2064, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于记账凭证，下列说法错误的是（    ）(选择一项)', '记账凭证分为单式记账凭证和复式记账凭证', '记账凭证包括原始凭证和复式记账凭证', '专用记账凭证属于复式记账凭证', '通用记账凭证属于复式记账凭证', 2065, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于日记账，下列说法错误的是（    ）(选择一项)', '是按照经济业务发生的时间先后顺序，逐日逐笔顺序登记的账', '日记账有现金日记账和银行存款日记账', '应付账款适合做日记账', '日记账也称为序时帐', 2066, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '银行存款和现金之间相互划拔的业务，按我国会计实务的惯例应编制（     ）(选择一项)', '付款凭证', '收款凭证', '转账凭证', '既需要编制付款凭证也需要编制付款凭证', 2067, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '记账凭证中使用的会计科目发生错误，并已按错误凭证登记入账 ，且记账凭证和账簿记录相吻合，此时应该使用红字更正法更正，下列哪一个更正步骤是错误的（     ）(选择一项)', ' 用黑字金额编制一张与原错误记账凭证内容一致的记账凭证，在摘要栏中注明“冲销某日×号凭证错误”', '用红字金额记入有关账户，以冲销原来的错账', '用蓝字或黑字编制一张正确的记账凭证，在摘要栏中注明“更正某日×号凭证错误”', ' 用蓝字或黑字登记有关账户，以更正错账', 2068, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '胜利公司投资旧机器一台，该机器的重置价值为150000，双方协商其现值为130000。其帐务处理借方为“借：固定资产   150000”，则贷方为（     ）(选择一项)', '贷：实收资本     150000', '贷：资本公积     150000', '贷：累计折旧     20000' || chr(10) || '实收资本     130000' || chr(10) || '', 'D. 贷：累计折旧     20000' || chr(10) || '资本公积     130000' || chr(10) || '', 2069, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '收到好友公司赠送我公司新宝马轿车一辆，市价300000。其帐务处理借方为“借：固定资产   300000”，则贷方为（     ）(选择一项)', '贷：实收资本   300000', '贷：资本公积   300000', '贷：应付账款   300000', '贷：营业外收入 300000', 2070, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下分别是SQL Server2005中两个数据表的结构描述和已经有的数据项，除Anumber字段为数字类型外其他字段数据类型都是长度为32的字符：在查询分析器内执行以下的' || chr(10) || 'Ｔ-SQL（选一项）' || chr(10) || 'SELECT Account_No,Aname FROM Saving_Accounts' || chr(10) || 'UNION SELECT Account_No,Bname FROM Current_Accounts' || chr(10) || '' || chr(10) || 'Saving_Accounts表结构如下      Current_Accounts表结构如下' || chr(10) || 'Account_No Aname     Anumber   Account No Bname' || chr(10) || 'S001       James     1         C001 Wichael' || chr(10) || 'S002       Rita      2         C002 Robin' || chr(10) || 'S003       Wary      3   ' || chr(10) || 'S004       Valcntina 4', '查询错误，因为使用UNION查询的时候，两个表的字段结构必须保持一致', '查询错误，因为使用UNION查询的时候，查询输出的列表名必须保持一致', '正确得到联合查询的结果集，并且输出的列名称为Ａccount_Ｎo和Aname', '正确得到联合查询的结果集，并且输出三列六行数据', 2071, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '运行如下T-SQL，结果返回包含(  )的记录集。（选一项）' || chr(10) || 'create table scores ' || chr(10) || '(' || chr(10) || 'scoreid int identity(1,2),' || chr(10) || 'score numeric(4,2) not null,' || chr(10) || 'courseid int' || chr(10) || ')' || chr(10) || 'insert into scores values(90.5, null);' || chr(10) || 'insert into scores values(100, 2);' || chr(10) || 'select * from scores;', '1、90.5、null' || chr(13) || '3、100、2', '1、100、2l', '1、90.50、null', '1、90.5、null' || chr(13) || '3、100.0、2', 2072, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '在SQL Server2005中，创建存储过程如下，要在Students表中查找Age（年龄）是18岁的学生，（）可以正确的调用这个存储过程。（选两项）', 'EXEC Mypl 18', 'EXEC  Mypl @p = 18', 'EXEC  Mypl p = ‘18’', 'EXEC  Mypl P = 18', 2073, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '建立一张员工表(employee)，当向表中插入数据时，若不提供入职时间(beginTime)，就把系统当前时间自动作为员工入职时间插入数据库中，以下说法正确的是（选一项）', '约束中不能使用各种函数，所以只能使用触发器来实现。', '可以使用CHECK约束实现，默认值采用日期函数getDate()。', '入职时间必须设为日期类型。', '可以使用DEFAULT 约束实现，默认值采用日期函数getDate()。', 2074, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '考虑下面的存储过程' || chr(10) || 'CREATE Procedure Lookup（@a int） As' || chr(10) || '    If @a is null' || chr(10) || '    Begin' || chr(10) || '        Print ''You forgot to pass in a parameter'' Return' || chr(10) || '    End' || chr(10) || 'Select * from syssobjects where id=@a Return' || chr(10) || '如果这个存储过程不带参数运行会发生（选一项）', '存储过程会打印“You forgot to pass in a parameter”', '该存储过程会基于无参数情况做一个查找，返回表中的所有行', '该存储过程有语法错误', '服务器打印一条消息，提示该存储过程需要提供一个参数', 2075, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'abstract class BaseClass{' || chr(10) || '    public virtual void MethodA()' || chr(10) || '    {   Console.WriteLine("BaseClass");' || chr(9) || '}' || chr(10) || '    public virtual void MethodB(){}' || chr(10) || '}' || chr(10) || 'class Class1:BaseClass{' || chr(10) || '    public  void MethodA()' || chr(10) || '    {  Console.WriteLine("Class1");}' || chr(10) || '    public virtual void MethodB(){}' || chr(10) || '}' || chr(10) || 'class Class2:Class1{' || chr(10) || '    public  void MethodB(){}' || chr(10) || '}' || chr(10) || 'class MainClass{' || chr(10) || '    public static void Main(string[] args){' || chr(10) || '        Class2 c = new Class2();' || chr(10) || '        c.MethodA();' || chr(10) || '    }' || chr(10) || '}请问,此程序输出的结果是（选一项）', 'BaseClass', 'BaseClass Class1', 'Class1', 'Class1 BaseClass', 2076, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '若要在Action中访问session的信息需要实现（）接口（选择一项）', 'RequestAware', 'ApplicationAware', 'ParameterAware', 'SessionAware', 2077, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '全局视图是通过()标记来定义（选择一项）', '<result>', '<global-results>', '<action>', '<interceptor>', 2078, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下属于struts2的控制器组件是（选择一项）', 'Action', 'ActionForm ', 'ActionServlet', 'dispatchAction', 2079, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '以下属于struts2的体系结构的是（选择两项）', 'struts2控制器组件', 'struts2配置文件', 'FilterDispathcer', 'Action', 2080, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '以下属于struts2配置文件中的配置元素是（选择两项）', '<package>', '<action>', '<form-beans> ', '<action-mappings>', 2081, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于struts2配置文件说法正确的是（选择一项）', '必须在WEB-INF/classes目录下', '名字必须为struts.xml', '配置Action时，必须配置包信息', '使用<forward>元素配置转发', 2082, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在struts2配置中用（）元素来配置常量（选择一项）', '<const>', '<constants>', '<constant>', '<constant-mapping>', 2083, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '关于struts2包的说法正确的是（选择三项）', 'struts2框架使用包来管理常量', 'struts2框架定义包时必须指定name属性', 'struts2框架中配置包时，必须继承自struts-default包，否则会报错', 'struts2框架中使用包来管理Action', 2084, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', 'struts2中获取Servlet API的方法正确的是（选择两项）', '使用ActionContext对象以解耦合的方法访问Servlet API', '使用ServletActionContext对象以解耦合的方式访问Servlet API', '使用ActionContext对象以耦合的方式访问Servlet API', '使用ServletActionContext对象以耦合的方式访问Servlet API', 2085, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2动态调用的格式为（选择一项）', 'ActionName?methodName.action', 'ActionName! methodName.action', 'ActionName*methodName.action', 'ActionName@mathodName.action', 2086, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '如果要实现struts2的数据校验功能（选择一项）', '普通Action类可以实现', '继承自Action接口可以实现', '继承自ActionSupport类可以实现', '继承自ActionValidate类可以实现', 2087, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果要实现自定义处理结果，需继承那个类（选择一项）', 'Dispathcer', 'StrutsResultSupport', 'Support', 'Action', 2088, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '实现动态返回结果，在配置<result>元素时使用（）指定视图资源（选择一项）', '${属性名} ', null, '${''属性名''}', '${"属性名"}', 2089, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '用于实现国际化的struts2标签是（选择一项）', '<s:text>', '<s:message>', '<s:textfield> ', '<s:resource>', 2090, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2默认的处理结果类型是（选择一项）', 'dispatcher', 'redirect', 'chain', 'forward', 2091, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '自定义转换器继承的抽象类是（选择一项）', 'Converter ', 'TypeConverter', 'StrutsTypeConverter', 'converts', 2092, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面关于3S结合应用的描述中不恰当的是 ：（选择一项）', '遥感数字图像是GIS数据库中一种重要的数据源', '汽车导航系统就是GPS和GIS结合的典型应用 ', '3S的结合应用及相互作用形成了“一个大脑，两只眼睛”的框架 ', '对用户来讲,3S技术相辅相成，缺一不可', 2093, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面关于WEBGIS特点的说法中正确的是 ：（选择一项）', 'WebGIS应用浏览器/服务器概念来执行GIS的分析任务 ', 'WebGIS很容易跟Web中的其它信息服务进行无缝集成，可以建立灵活多变的GIS应用系统', 'WebGIS对任何计算机和操作系统都有限制', 'WebGIS利用Internet的分布式系统把GIS数据和分析工具部署在网络不同的计算机上', 2094, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '不属于ArcGIS Desktop组件。 （） ', 'ArcMap  ', 'ArcCatalog  ', 'ArcGlobe  ', 'ArcIMS', 2095, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面不属于地理信息系统输出产品的是： （选择一项） ', '地图', '元数据', '图像', '统计图表', 2096, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪一种不属于Jquery的选择器。(选择一项）', '基本选择器', '层次选择器', '表单选择器', '节点选择器', 2097, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '使用jquery检查<input type="hidden" id="id" name="id" />元素在网页上是否存在。(选择一项）', 'if($("#id")) {   //do someing...    }', 'if($("#id").length > 0) {   //do someing...    }', 'if($("#id").length() > 0) {   //do someing...    }', ' if($("#id").size > 0) {   //do someing...    }', 2098, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<a href="xxx.jpg" title="温家宝出席学校...">新闻</a>,获取<a>元素title的属性值。（选择一项）', '$("a").attr("title").val();', '$("#a").attr("title");', '$("a").attr("title");', '$("a").attr("title").value;', 2099, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '执行下面语句' || chr(10) || ' $(document).ready(function(){' || chr(10) || '   $("#click").click(function(){' || chr(10) || '    alert("click one time");' || chr(10) || '   });' || chr(10) || '   $("#click").click(function(){' || chr(10) || '    alert("click two time");' || chr(10) || '   });' || chr(10) || '});' || chr(10) || '单击按钮<input type="button" id="click" value="点击我"/>，这个会有什么效果。' || chr(10) || '（选择一项）', '弹出一次对话框，显示click one time 。', '弹出一次对话框，显示click two time 。', '弹出两次对话框，依次显示click one time，click two time。', 'js编译错误。', 2100, 404);
commit;
prompt 2100 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '页面中有三个元素，如下：<div>div标签</div><span>span标签</span><p>p标签</p>，如果这三个标签要触发同一个事件，那么正确的写法是（选择一项）', '$("div,span,p").click(function(){   //…      });', '$("div || span || p").click(function(){   //…      });', '$("div + span + p").click(function(){   //…      });', '$("div ~ span ~ p").click(function(){   //…      });', 2101, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '页面中有一个性别单选按钮，请设置”男”为选中状态。代码如下：' || chr(10) || '<input type="radio" name="sex"> 男' || chr(10) || '<input type="radio" name="sex"> 女    正确的是' || chr(10) || '（选择一项）', '$("sex[0]").attr("checked",true);', '$("#sex[0]").attr("checked",true);', '$("[name=sex]:radio").attr("checked",true);', '$(":radio[name=sex]:eq(0)").attr("checked",true);', 2102, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '某公司购入需要安装的车床一台，发票注明买价100000元，增值税17000元，支付运杂费2000元，安装设备时，领用材料3000元，支付工资2000元，则该车床的入账价值为（     ）(选择一项)', '100000', '107000', '117000', '124000', 2103, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '企业因处置而减少的固定资产，一般应通过（     ）账户进行核算(选择一项)', ' 固定资产清理', '累计折旧', ' 营业外收入', ' 固定资产', 2104, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', ' 以下关于付款票据的说法哪些是错误的 （单选）', '票况为“出票”时，才可更改供应商', '异动功能钮中的结算功能为商业汇票专用', '付款票据结算后可再进行其他处理', '结算的票据不可以再作废，如果一定要作废时，可利用取消处理功能将票据调整为出票状态', 2105, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在本系统中哪些票据不是作为即期票处理   （单选）', '支票', '电汇', '商业汇票', ' 银行汇票', 2106, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '一种单据（非会计凭证）是否需要审核在哪个作业里进行设置？  （单选）', '表尾签核', '表尾页脚', '单据设置', '用户录入/权限', 2107, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '仓库信息这个作业里面的“仓库名称”这个栏位最多可以支持多少码？（单选）', '10', '12', '14', '16', 2108, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '生产入库单单身的耗用仓库的仓库性质是什么？（单选）', ' 委外仓', '现场仓 ', '存货仓      ', '非存货仓', 2109, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '工单单头的实际开工日是由什么来决定的？（单选）', '第1张领料单审核日  ', '工单审核日  ', '第1张生产入库单审核日    ', '当实际生产数量大于或等于工单的生产数量时', 2110, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '是在哪里设置工单的用料展开方式？（单选）', '工单单头   ', ' 共用参数', '生管参数', '物料需求计算', 2111, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '工艺入库单中的移入类别包括下面哪些？（单选）', '工作中心', ' 部门', '仓库 ', '供应商', 2112, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '“客户问题”作业里面的“反映人”指的是？（单选）', '客户的人员', '公司内部的服务人员', '以上都是', '以上都不是', 2113, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '“客户问题”作业里面的“纳入服务知识库”在什么时候被标示？（单选）', '在“处理”以后', '在“结束”以后', '在“归档”以后', '在“知识库”以后', 2114, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在“工资项目计算公式”作业里面，计算公式以何种方式显示？（单选）', '符号方式显示', '中文名称显示 ', '以上都可以 ', '以上都不可', 2115, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '“资产类别”可以层级最大支持几级？（单选）', '4', '5', '8', '10', 2116, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '下面哪个单据是红字采购发票的取单来源？ （选择两项）', '进货单', '退货单', '委外进货单 ', '委外退货单', 2117, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '收款单的凭证字段上可以记录？（选择三项）', '未抛转', '不须抛转 ', '已抛转', '凭证号码', 2118, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '打印单据的时候，可以把文档保存为哪几种格式？（选择三项）', '图形格式', 'EXCEL', 'RTF ', 'WORD', 2119, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '进销存各种单据中可以更新价格的单据有哪些？ （选择两项）', '销货单 ', '销退单', '进货单', '收料单', 2120, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Java程序中类的定义如下：' || chr(10) || 'class Demo {' || chr(10) || '    private int[] count;' || chr(10) || '    public Demo(){ ' || chr(9) || '' || chr(10) || '        count=new int[10];' || chr(10) || '    }' || chr(10) || '    public void setCount(int ct,int n){' || chr(10) || '        count[n]=ct;' || chr(10) || '    }   ' || chr(10) || '    public int getCount(int n){ ' || chr(10) || '        return count[n];' || chr(10) || '    }' || chr(10) || '    public void showCount(int n){' || chr(10) || '        System.out.println("Count is "+count[n]);' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '在创建Demo类的实例后，通过调用showCount(9)方法得到的显示结果是（选一项）', 'Count is 0', 'Count is null', '编译错误', '运行时错误', 2121, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '分析下列Java代码：' || chr(10) || 'class A{' || chr(10) || '    public static void main(String[] args){' || chr(10) || '        method();' || chr(10) || '    }' || chr(10) || '    static void method(){' || chr(10) || '        try{' || chr(10) || '            System.out.println("Hello");' || chr(10) || '        }' || chr(10) || '        finally{' || chr(10) || '           System.out.println("good-bye");' || chr(10) || '        }' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '编译运行后，输出结果是（选一项）', '“Hello”', '“good-bye”', '“Hello good-bye”', '代码不能编译', 2122, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '给定如下Java代码，编译时会在(  )出现错误。（选一项） ' || chr(10) || 'class Parent{  }' || chr(10) || 'class Child extends Parent{' || chr(10) || '    public static void main(String args[]){' || chr(10) || '        Parent p1 = new Child();' || chr(9) || '//第一行' || chr(10) || '        Parent p2 = new Parent();' || chr(9) || '//第二行' || chr(10) || '        Child c1 = new Child();' || chr(9) || '' || chr(9) || '//第三行' || chr(10) || '        Child c2 = new Parent();' || chr(9) || '//第四行' || chr(10) || '    }' || chr(10) || '}', '第一行', '第二行', '第三行', '第四行', 2123, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '研究下面的Java代码：' || chr(10) || 'public class testException{' || chr(10) || '    public static void main(String args[]){' || chr(10) || '        int n[]={0,1,2,3,4};' || chr(10) || '        int sum=0;' || chr(10) || '        try {' || chr(10) || '            for(int i=1;i<6;i++)' || chr(10) || '                sum=sum+ n[i];' || chr(10) || '            System.out.println("sum="+sum);' || chr(10) || '        }' || chr(10) || '        catch(ArrayIndexOutOfBoundsExpception e) {' || chr(10) || '            System.out.println("数组越界");' || chr(10) || '        }' || chr(10) || '        finally{' || chr(10) || '            System.out.println("程序结束");' || chr(10) || '        }' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '输出结果将是（选一项）', '10  数组越界  程序结束', '10  程序结束', '数组越界  程序结束', '程序结束', 2124, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在Java中，关健字（）使类不能派生出子类。（选一项）', 'final', 'public', 'private', 'volatile', 2125, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在JAVA中，类Animal中的方法PrintA()定义如下：' || chr(10) || 'public void printA(){' || chr(10) || '    int a=10;' || chr(10) || '    int result=10%3;' || chr(10) || '    System.out.println(result);' || chr(10) || '}' || chr(10) || '在类Dog中方法printA()定义如下：' || chr(10) || 'public void printA(){' || chr(10) || '    int a=10;' || chr(10) || '    system.out.println(a/3);' || chr(10) || '}' || chr(10) || 'Dog类的定义如下：' || chr(10) || 'class Dog extends animal{…}' || chr(10) || '若有语句：' || chr(10) || 'Animal animal = new Dog();' || chr(10) || 'Animal.printA();' || chr(10) || '则这段代码输出为（选一项）', '0', '3.3333', '2', '3', 2126, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '自定义转换器的注册方式有（选择一项）', '只有全局注册方式', '只有局部注册方式 ', '只有全局和局部注册方式', '以上说法都不对', 2127, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '自定义拦截器类的方式有（选择两项）', '实现Interceptor接口', '实现AbstractInterceptor接口', '继承Interceptor类', '继承AbstractInterceptor类', 2128, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在struts.xml文件中，使用（）元素定义拦截器（选择一项）', '<interceptor-ref>', '<interceptor> ', '<intercep>', '<default-interceptor-ref>', 2129, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在OGNL中？操作符的作用是（选择一项）', '取出符合选择逻辑的第一个元素', '取出符合选择逻辑的最后一个元素', '取出符合选择逻辑的所有元素', '以上说法都不对', 2130, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '以下属于struts2标签的是（选择两项）', 'Ajax标签', '数据访问标签', 'logic标签', 'bean标签', 2131, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下哪个标签是struts2中的用于循环迭代（选择一项）', '<s:property> ', '<s:iterator>', '<s:logic>', '<s:foreach>', 2132, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Struts2主要核心功能是由（  ）实现（选择一项）', ' 过滤器', '拦截器', ' 类型转换器', '配置文件', 2133, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts中的ActionServlet属于MVC模式（  ）（选择一项）', '视图', ' 模型', '控制器', '业务层', 2134, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'Struts2框架由（  ）和（  ）框架发展而来的（选择二项）', 'Hibernate', 'Struts', 'Spring', 'WebWork', 2135, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts2以（B）为核心，采用（ ）的机制处理用户请求（选择一项）', 'Struts', ' WebWork', ' 拦截器', ' jar包', 2136, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2中，不属于Action接口中定义的字符串常量的是（   ）（选择一项）', 'SUCCESS', 'FAILURE', ' ERROR', ' INPUT', 2137, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2控制器需要在（  ）配置文件中进行配置（选择一项）', 'web.xml', 'struts.xml', 'application.porperties', 'webwork.xml', 2138, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '不属于struts2标签库的是（  ）（选择一项）', ' <s:textfield>', ' <s:textarea>', ' <s:submit>', '<select>', 2139, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在JSP页面中可以通过Struts2提供的（   ）标签来输出国际化信息（选择一项）', '<s:input>', ' <s:messages>', ' <s:submit>', '<s:text>', 2140, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '资源文件的后缀名为（  ）（选择一项）', 'txt', ' doc', ' property', ' properties', 2141, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', 'struts2关于注册全局类型转换器的说法正确的是（  ）（选择二项）', '必须提供xwork-conversion.properties文件', '注册文件的格式为：复合类型=对应类型转换器', '注册文件的格式为：对应类型转换器=复合类型', '以上说法都不正确', 2142, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在页面中有一个ul元素，代码如下：' || chr(10) || '<ul>' || chr(10) || '   <li title=''苹果''>苹果</li>' || chr(10) || '   <li title=''橘子''>橘子</li>' || chr(10) || '   <li title=''菠萝''>菠萝</li>' || chr(10) || '</ul>，下面对节点的操作哪一个说法不正确。' || chr(10) || '（选择一项）', 'var $li = $("<li title=''香蕉''>香蕉</ii>"); 是创建节点。', '$("ul").append($("<li title=''香蕉''>香蕉</ii>")); 是给ul追加节点。', '$("ul  li:eq(1)").remove();是删除ul下“橘子“那个节点。', '以上说法都不对', 2143, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '页面有一个<input type="text" id="name"  name="name" value=""/>元素，动态设置该元素的值。正确的选项是。（选择一项）', '$("#name").val("动态设值");', '$("#name").text("动态设值");', '$("#name").html("动态设值");', '$("#name").value("动态设值");', 2144, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面说法不正确的是（选择一项）', '$(":hidden")选取<input>的type类型是hidden的不可见元素。', '$("div >span")选取<div>元素下元素名是<span>的子元素。', '$("div :first")选取所有<div>元素中第一个<div>元素。', '$("input:gt(1)")选取索引值大于1的<input>元素。', 2145, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果需要匹配包含文本的元素，用下面哪种来实现 （选择一项）', 'text()', 'contains()', 'input()', 'attr(name)', 2146, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面不属于Jquery的ajax全局事件的是  （选择一项）', 'ajaxComplete(callback) ', 'ajaxSuccess(callback)', '$.post(url)', 'ajaxSend(callback)', 2147, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在jquery中想要找到所有元素的同辈元素，下面哪一个是可以实现的 （选择一项）', 'nextAll([expr])', 'siblings([expr])', 'next()', 'find([expr])', 2148, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面选项中哪一个是和$("#foo")等价的写法。（选择一项）', '$("foo#")', '$(#"foo")', '$ ("foo")', 'jQuery("#foo")', 2149, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下关于jQuery的描述错误的是（）。（选一项）', 'jQuery 是一个 JavaScript 函数库', 'jQuery 极大地简化了 JavaScript 编程', ' jQuery 的宗旨是 “write less，do more”', ' jQuery的核心功能不是根据选择器查找HTML元素，然后对这些元素执行相应的操作', 2150, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在jQuery中，下列关于文档就绪函数的写法错误的是（）。（选一项）', '$(document).ready(function() {' || chr(10) || '});' || chr(10) || '', ' $(function() {' || chr(10) || '});' || chr(10) || '', '$(document)(function() {' || chr(10) || '});' || chr(10) || '', '$().ready(function() {' || chr(10) || '});' || chr(10) || '', 2151, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在HTML页面中有如下结构的代码：' || chr(10) || '<div id="header">' || chr(10) || '    <h3>' || chr(10) || '       <span>S3N认证考试</span>' || chr(10) || '    </h3>' || chr(10) || '    <ul>' || chr(10) || '        <li>一</li>' || chr(10) || '        <li>二</li>' || chr(10) || '        <li>三</li>' || chr(10) || '        <li>四</li>' || chr(10) || '    </ul>' || chr(10) || '</div>' || chr(10) || '请问下列选项（）所示jQuery代码，不能够让汉字“四”的颜色变成红色。（选一项）' || chr(10) || '', '$("#header ul li:eq(3)").css("color","red");', '$("#header li:eq(3)").css("color","red");', '$("#header li:last").css("color","red");', '$("#header li:gt(3)").css("color","red");', 2152, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '采购单的取单来源有哪些？ （选择三项）', '请购单', '订单', '询价单', '采购底稿', 2153, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '易助的生产成本计算中人工制费分摊跟哪些因素有关？（选择三项）', '工单的生产数量     ', '商品信息的人工分摊权数 ', '商品信息的制费分摊权数 ', '人工制费科目   ', 2154, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '物料需求计算中发放采购计划时，其采购日期可按下面哪些方式来生成？（选择两项）', '与采购底稿的生成日期一致   ', '系统日期 ', '可以从日期表中选定日期   ', '下单日期', 2155, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '移转单中的移出类别包括下面哪些？（选择两项）', '工作中心', '部门', ' 仓库', ' 供应商', 2156, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '人工制费科目是对哪几类来设置其对应的会计科目？（选择两项）', '材料成本', ' 人工成本', '制造费用  ', '以上都不是', 2157, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '以下对产品结构描述正确的是？（选择两项）', ' 可以插入主件的照片   ', '同一主件可存在两个BOM结构  ', '可采用复制方式来新建类似的BOM', '主件可与子件为同一品号 ', 2158, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '以下哪些作业里面可以输入“客户产品需求”（选择三项）', '商品信息', '客户信息', '业务活动纪录', '业务活动计划', 2159, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '以下哪些作业里面可以输入“竞争对手”这个作业？（选择两项）', '潜在客户信息', '客户信息', '业务活动纪录', '业务活动计划', 2160, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '在 “银行信息”作业里面的“字符补位符”栏位，包括了以下哪些选项？  （选择两项）', '无', '0', '左补位', '右补位', 2161, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '以下哪些内容可以在“固定资产参数”作业里面进行设置？  （多选）', '资产类别', '主要折旧方法', '增加方式', '净残值率', 2162, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '商家要开展电子商务活动，应该用( )作为其主要的生意平台(选择一项)', 'BBS', '电子邮件', '在线商店', '电话定购', 2163, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '中国网络购物的主流人群是( )(选择一项)', '18岁以下的青少年', '18-30岁的年轻人', '30-40岁的白领人士', '40岁以上的中老年人', 2164, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '淘宝网创办于哪年( )(选择一项)', '2002年', '2003年 ', '2004年', '2005年', 2165, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下哪个是淘宝网工作人员的特定称呼？( )(选择一项)', '帮主  ', '掌门  ', '护法', '小二', 2166, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '网络零售的范围包括( )(选择二项)', 'C2C', 'B2B', 'B2C', 'C2B', 2167, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '网络零售的特点是( )(选择三项)', '参与者众多 ', '覆盖面广', '产品种类单一', '交易方式灵活', 2168, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '下列属于网络零售优势的是( )(选择三项)', '口碑优势', '工具优势 ', '购物体验优势', '沟通优势', 2169, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在淘宝“我的收藏”里顾客不能收藏哪些内容？( )(选择一项)', '收藏宝贝', '收藏好友 ', '收藏店铺', null, 2170, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '2004年5月，淘宝推出了“你敢付，我敢赔”的什么服务？( )(选择一项)', '推荐物流 ', '支付宝', '消费者保障计划', '品牌商城', 2171, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '店铺名称的长度限制在多少个汉字？( )(选择一项)', '10个汉字', '20个汉字 ', '30个汉字', '40个汉字', 2172, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '给定一个 Servlet 的doGet方法中的代码片段，如下：' || chr(10) || 'request.setAttribute("name","zhang");' || chr(10) || 'response.sendRedirect("http://localhost:8080/servlet/MyServlt");' || chr(10) || '那么在 MyServlet 中可以使用（）方法把属性 name的值取出来。（选一项）', 'String str=request.getAttribute("name");', 'String str=(String)request.getAttribute("name");', 'Object str=request.getAttribute("name");', '无法取出来', 2173, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '给定以下JSP代码片段，有2个客户依次浏览该JSP;且每个客户只浏览一次，第2个客户会看到浏览器显示（选一项）' || chr(10) || '<%int x = 1; %>' || chr(10) || '<%!int x = 10; %>' || chr(10) || 'x= <%= x%>', 'x=1', 'x=2', 'x=10', 'x=11', 2174, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在C#中，下列代码的运行结果是（选一项）' || chr(10) || 'struct Student' || chr(10) || '{' || chr(10) || '    public int age;' || chr(10) || '    public string name;' || chr(10) || '    public Student(int age,string name)' || chr(10) || '    {' || chr(10) || '       this.sge = sge;' || chr(10) || '       this.name = name;' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'public class Test' || chr(10) || '{' || chr(10) || '   static void Main()' || chr(10) || '   { ' || chr(10) || '       Student stu1 = new Student(18,"小芳");' || chr(10) || '       Student stu2 = new Student(24,"小刚");' || chr(10) || '       stu2 = stu1;' || chr(10) || '       stu1.age = 30;' || chr(10) || '       stu1.name = "小燕";' || chr(10) || '       Console.WriteLine(stu2.age);' || chr(10) || '       Console.WriteLine(stu2.name);' || chr(10) || '       }' || chr(10) || '}', '18' || chr(13) || '' || chr(10) || '小芳', '18' || chr(13) || '' || chr(10) || '小燕', '30' || chr(13) || '' || chr(10) || '小燕', '30' || chr(13) || '' || chr(10) || '小芳', 2175, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '针对下面的C#代码：' || chr(10) || 'using System;' || chr(10) || 'delegate void D(int i);' || chr(10) || 'class P' || chr(10) || '{' || chr(10) || '    public static void Main()' || chr(10) || '    {' || chr(10) || '        V(new D(R));' || chr(10) || '    }' || chr(10) || '    public static void R(int t)' || chr(10) || '    {' || chr(10) || '        V(21);' || chr(10) || '    }' || chr(10) || '    public static void V(int i)' || chr(10) || '    {' || chr(10) || '        Console.WriteLine(i.ToString());' || chr(10) || '        Console.ReadLine();' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '以下说法正确的是（选一项）', '代码中存在错误，delegate voidD(int i);不能定义在名称空间或者类之外', '代码中存在错误，代码行V(new D(R))；使用委托错误', '程序正常运行，输出为0', '程序正常运行，输出为21', 2176, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Jsp中有如下代码：' || chr(10) || '<%' || chr(10) || 'Cookie c = new Cookie("name" , "admin");' || chr(10) || 'c.setMaxAge(10000);' || chr(10) || 'response.addCookie(c);' || chr(10) || '%>' || chr(10) || '以下哪句代码可以正确显示”admin”（选一项）', '${cookie.name}', '${cookie.name.value}', '${ name}', '${name.value}', 2177, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '编写Servlet 的doPost方法时，需要抛出异常为（选一项）', 'ServletException， IOException', 'ServletException， RemoteException', 'HttpServletException， IOException', 'HttpServletException， RemoteException', 2178, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '以下关于OGNL的说法正确的是（  ）（选择二项）', 'ActionContext是OGNL的上下文环境', 'StackContext是OGNL的上下文环境', 'ValueStack是OGNL的根', 'ActionContext是OGNL的根', 2179, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '假设在Session中存在名为uid属性，通过OGNL访问该属性，正确的代码是（  ）（选择一项）', '#uid', '#session.uid', 'uid', '${session.uid}', 2180, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于“#session.persions.{? #this.age>20}”OGNL代码所表示的意义说法正确的是（  ）（选择一项）', '从persons集合中取出第一个年龄＞20的Person对象', '从persons集合中取出所有年龄＞20的Person对象子集', '从persons集合中取出最后一个年龄＞20的Person对象', '该代码不符合OGNL的语法', 2181, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '假设在某JSP页面中存在”<s:property>”代码，则以下说法正确的是（  ）（选择一项）', '编译JSP页面时会出现错误', '编译JSP页面时不会出现错误，但页面不会显示任何内容', '该代码用于输出位于ValueStack（值栈）栈顶的对象', '以上说法都不正确', 2182, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2默认的处理结果类型是（  ）（选择一项）', 'dispatcher', 'redirect', 'chain', '以上说法都不正确', 2183, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列选项中，关于Struts2配置文件说法正确的是（   ）（选择一项）', '必须置于WEB-INF/classes目录下', '必须为Struts.xml', '配置Action时必须配置包信息', '使用<forward>元素配置转发', 2184, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '下列选项中，关于Struts2的Action说法正确的是（  ）（选择二项）', 'struts2会为每一个请求创建一个对应的Action实例', 'struts2在请求处理过程中，只有一个Action实例', 'struts2通过属性来封装用户请求参数', '在struts2中定义的属性都用于封装用户请求参数', 2185, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2中动态方法调用的格式为（  ）（选择一项）', 'ActionName_methodName.do', 'ActionName!methodName.do', 'ActionName_methodName.action', 'ActionName!methodName.action', 2186, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列选项哪个不是Activity启动的方法？（选择一项）', 'goToActivity', 'startActivity', ' startActivityFromChild', 'startActivityForResult', 2187, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '解析 xml 的方式有（）(选择两项)', '字符器类型', '流方式', 'dom', 'SAX', 2188, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列哪一个不属于Activity的生命周期方法(选择一项)', 'onInit', 'onStart', 'onStop', 'onPause', 2189, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '对于XML布局文件中的视图控件，layout_width属性的属性值不可以是什么？(选择一项)', 'match_parent', 'fill_parent', 'wrap_content', 'match_content', 2190, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '对一些资源以及状态的操作保存，最好是保存在Activity生命周期的哪个函数中进行？(选择一项)', 'onStart', 'onPause', 'onCreate', 'onResume', 2191, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于视图控件的常用事件描述中，不正确的是？(选择一项)', 'Click事件只能使用在按钮上，表示按钮的点击动作', '当TextView类视图控件失去焦点或获得焦点时，将触发FocusChange事件', '当单选框中某一选项被选择时，将触发CheckedChange事件', '当多选框中某一选项被选择时，将触发CheckedChange事件' || chr(10) || '题目8' || chr(10) || '', 2192, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在HTML页面中有如下结构的代码：' || chr(10) || '<ul id="p-list">' || chr(10) || '    <li>苹果iPhone 4S</li>' || chr(10) || '</ul>' || chr(10) || '请问以下（）方法不能让“苹果iPhone 4S”隐藏。（选一项）' || chr(10) || '', '$("#p-list li:nth-child(0)").hide();', '$("#p-list li:only-child").hide();', ' $("#p-list li:last-child").hide();', ' $("#p-list li:first-child").hide();', 2193, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在jQuery中，函数（）能够实现元素显示和隐藏的互换。（选一项）', 'hide()', 'show()', 'toggle()', 'fade()', 2194, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有以下标签：<input id="txtContent" class="txt" type="text" value="张三"/>' || chr(10) || '请问不能够正确的获取文本框里面的值“张三”的语句是（）。（选一项）' || chr(10) || '', '$(".txt").val()', '$(".txt").attr("value")', '$("#txtContent").text()', '$("#txtContent").attr("value")', 2195, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A ', 'php代表什么意思？(选择一项)', 'Hypertext Preprocessor（超文本预处理器）', 'Hyperlink Preprocessor（超链接预处理器）', 'Personal Homepage （个人主页空间）', ' ', 2196, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下PHP标记哪个是错误的？(选择一项)', '<? ?> ', '<?PHP   ?>', '<% %>', '<SCRIPT language="php">...</script>', 2197, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下边哪个变量是非法的?(选择一项)', '$_10 ', '${“MyVar”}', ' &$something', '$aVaR', 2198, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '选择下面程序运行的结果(   )(选择一项)' || chr(10) || '  <?php $a=1;$a=++;$c=&$a;$b=$c++;echo “\$a=$a <br>  \$b=$b  <br>  \$c=$c”;?>', '$a=3 $b=2 $c=3', '$a=3 $b=2 $c=2', 'a=2 $b=2  $c=3', '$a=2', 2199, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面程序运行的结果为(   )(选择一项)' || chr(10) || '        $numb=array(array(10,15,30),  array(10,15,30), array(10,15,30));' || chr(10) || '        echo count ($numb,1);' || chr(10) || '', '3', '6', '9', '12', 2200, 405);
commit;
prompt 2200 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面程序运行的结果为(   )(选择一项)$a=array("a","b","c","d");' || chr(10) || '$index=array_search("a",$a);' || chr(10) || 'if($index==false)' || chr(10) || '    echo"在数组a中未发现字符''a''";' || chr(10) || 'else echo "index=".$index;' || chr(10) || '', '在数组a中未发现字符’a’', '0', '1', '2', 2201, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在定ENUM中，最多指定(   )成员(选择一项)', '255', '256', '65535', '65536', 2202, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Html语言当中指明链接对象的标记是（）(选择一项)', 'img   ', 'href   ', 'font   ', 'src', 2203, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Html语言当中建立有序列表的标签是（）(选择一项)', '<ul> </ul>', '<ol></ol>', '<al></al>', '<nl> </nl>', 2204, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '你是公司的数据库管理员，数据库benet中有个员工表employees，该表中有姓名列。   你想检查哪些员工的姓名是含有“文“字的，则用下列哪个sql语句（）。(选择一项)', 'Select * from employees where 姓名=’文’；', 'Select * from employees where 姓名 like ‘%文’；', 'Select * from employees where 姓名 like ‘文%’；', '以上答案都不正确', 2205, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于会员名注册的要求哪个是正确的？( )(选择一项)', '会员名由6-25 个字符组成', '会员名可以使用小写字母数字下划线中文', '会员名可以使用两个中文字组成', '会员名是淘宝帐号唯一登陆方式', 2206, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '淘宝网的帐户密码是由多少个字符组成？( )(选择一项)', '6-16个字符   ', '5-15个字符 ', '8-16个字符', '6-16个字符', 2207, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '宝贝三要素是指哪三个？( )(选择一项)', '标题图片描述', '旺旺支付宝描述', '图片支付宝旺旺', '标题支付宝描述', 2208, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '一个店铺有几个人气类目？( )(选择一项)', '1个', '5个     ', '10个', '不限 ', 2209, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '淘宝网的评价是怎么计分的？( )(选择一项)', '一个好计1分，中评不计分，差评扣1分', '一个好计1分，中评扣1分，差评扣2分', '一个好计2分，中评1分，差评计零分', '一个好计1分，中评不计分，差评扣2分', 2210, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '以下属于消费者保障服务的是( )(选择三项)', '如实描述', '7天无理由退换货', '虚拟物品闪电发货', '退货运费险', 2211, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '下列属于交易状态的是( )(选择三项)', '买家已付款等待卖家发货', '等待买家付款', '卖家已发货', '买家未付款', 2212, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '网络骗子经常采取哪些方式来行骗？( )(选择三项)', '发送带有木马的图片  ', '发送钓鱼网站链接', '使用相似账号来行骗', '要求使用支付宝进行交易', 2213, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '关于退货程序哪个描述是错误的？（  ）(选择二项)', '买家如需退货，必须在收到货后在支付宝规定的时间内提出申请。', '逾期申请退货且卖家拒绝接受退货，则支付宝会将争议货款支付给买家', '整个退货流程与正常的交易流程相反', '为确保安全，买家可以要求卖家先退款再退货', 2214, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '支付宝认证分为个人认证和商家认证这两种，商家认证需要提交以下哪些信息？( )(选择二项)', '身份证  ', '营业执照', '公司账号  ', '税务登记证', 2215, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '支付宝公司从建立开始，以什么作为产品和服务的核心？( )(选择一项)', '安全 ', '信任   ', '简单', '高效', 2216, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '修改评价的入口在哪里？( )(选择一项)', '评价管理 ', '维权管理  ', '钱掌柜', '交易管理', 2217, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '以下评价哪些是可以修改的？( )(选择二项)', '双方相互好评 ', '仅一方作出“中评”', '一方作出“差评”', '“差评”评价超过6个月', 2218, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '旺铺的店招最大尺寸是多少？( )(选择一项)', '950*150', '750*120 ', '860*135', '850*150', 2219, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '卖家确认退款输入的密码是哪一个？( )(选择一项)', '支付宝登录密码   ', '支付宝支付密码', '淘宝会员登录密码', '网银密码', 2220, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '支付宝账号是以什么来命名？( )(选择二项)', '数字加英文  ', '中文   ', '电子邮箱   ', '手机号码', 2221, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD ', '支付宝是淘宝唯一的在线付款方式，它采用哪些手段来确保账户的安全性？( )(选择三项)', '数字证书', '口令卡', '支付盾  ', '手机动态口令', 2222, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下c#代码：' || chr(10) || 'using System.Threading;' || chr(10) || 'class App' || chr(10) || '{' || chr(10) || '    public static void Main()' || chr(10) || '    {' || chr(10) || '        Timer timer = new Timer(new TimerCallback(CheckSatus), null, 0, 2000);' || chr(10) || '        Console.Read();' || chr(10) || '    }' || chr(10) || '    static void CheckSatus(Object state)' || chr(10) || '    {' || chr(10) || '        Console.WriteLine("正在进行检查...");' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '在使用代码创建定时器对象的时候，同时指定了定时器的事件，运行时将每隔两秒打印一行“正在运行检查...”，因此，TimerCallback是一个（选一项）', '变量', '委托', '结构', '函数', 2223, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '有如下C#代码，其中定义了一个哈希表存放学生的学号和成绩，现在，为了避免输入时出现学号重复的现象，若出现重复现象，并让用户继续输入正确的学号，则在两处划横线的地方分别加入的代码是（选一项）' || chr(10) || 'class Class1{' || chr(10) || '    static void Main(string[]args){' || chr(10) || '        Hashtable scores = new Hashtable();' || chr(10) || '        string sid;' || chr(10) || '        int score;' || chr(10) || '        do{' || chr(10) || '        Console.Write("输入学生学号：");' || chr(10) || '        sid = Console.ReadLine();' || chr(10) || '        score=int.Parse(Sonsole.ReadLine());' || chr(10) || '        if(__________)//在此处填写代码' || chr(10) || '        {' || chr(10) || '             Console.WriteLine("学号输入重复了！请重新输入。");' || chr(10) || '             __________//此处填写代码' || chr(10) || '        }' || chr(10) || '        else ' || chr(10) || '        {' || chr(10) || '            score.Add(sid,score);' || chr(10) || '        }' || chr(10) || '    }while(sid!="xxxx");' || chr(10) || '    Console.WriteLine("输入完毕");' || chr(10) || '    }' || chr(10) || '}', 'score.ContainsValue(sid)和continue;', 'scores.ContainKey(sid)和continue;', 'scores.ContainKey(sid)和break;', 'scores.Contains(sid)和continue;', 2224, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'JavaScript代码通常是用__标记嵌入到HTML文档的。（选一项）', 'JavaScript', 'Language', 'alert', 'script', 2225, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '如果编写一个计数器程序，用来记载当前网站的访问量，最好采用JSP中的(  )对象。（选一项）', 'page？', 'session', 'request？', 'application', 2226, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列可以正确获取当前Web程序物理路径的方法为（选一项）', 'request.getRealPath(“/”)？', 'request.getFile(“/”)', 'response.getRealPath(“/”)？', 'response.getFile(“/”)', 2227, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下代码执行效果为（选一项）' || chr(10) || '<c:forEach var = "i" begin = "1" end = "5">' || chr(10) || '' || chr(9) || '<c:out value="${i}"/>' || chr(10) || '</c:forEach>', '1 2 3 4 5', 'i i i i i', '15', '编译错误', 2228, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在JSP中，给定以下JSP代码片段，运行结果是（选一项）' || chr(10) || '<%  int x=5;  %>' || chr(10) || '<% !  int x=7;  %>' || chr(10) || '<%!' || chr(10) || 'int getX(){  return x; }' || chr(10) || '%>' || chr(10) || '<%  out.print("X1=" + x);       %>' || chr(10) || '<%  out.print("X2=" + getX());   %>', 'X1=5  X2=7', 'X1=5  X2=5', 'X1=7  X2=7', 'X1=7  X2=5', 2229, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下关于Android应用程序的目录结构描述中，不正确的是(选择一项)', 'src目录是应用程序的主要目录，由Java类文件文件组成', 'assets目录是原始资源目录，该目录中的内容将不会被R类所引用', 'res目录是应用资源目录，该目录中的所有资源内容都会被R类所索引', 'AndroidManifest.xml文件是应用程序目录清单文件，该文件由ADT自动生成，不需要程序员手动修改 ', 2230, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列哪一个选项不属于Android中预定义的布局方式(选择一项)', 'TabLayout', 'RelativeLayout', 'AbsoluteLayout', 'LinearLayout', 2231, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列哪一个选项不属于AdapterView类的子选项？Gallery  ListView  Spinner  GridView(选择一项)', 'ListView', 'Spinner', 'GridView', 'ScrollView ', 2232, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列哪一款移动设备搭载的是Android平台？(选择一项)', 'NOKIA手机', '小米手机', 'iPhone手机', 'iPad', 2233, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列关于ListView使用的描述中，不正确的是？(选择一项)', ' 要使用ListView，必须为该ListView使用Adpater方式传递数据', '要使用ListView，该布局文件对应的Activity必须继承ListActivity', 'ListView中每一项的视图布局既可以使用内置的布局，也可以使用自定义的布局方式', ' ListView中每一项被选中时，将会触发ListView对象的ItemClick事件', 2234, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列属于SAX解析xml文件的优点的是？(选择一项)', '将整个文档树存储在内存中，便于操作，支持删除，修改，重新排列等多种功能', '指网页元素的位置，距离右边框和下边框的距离', '整个文档调入内存，浪费时间和空间', '不是长久驻留在内存，数据不是持久的，事件过后，若没有保存数据，数据就会消失', 2235, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '在android 中使用Menu 时可能需要重写的方法有？(选择两项)', 'onOptionsItemSelected() ', 'onCreateOptionsMenu() ', 'onItemSelected()', 'onCreateMenu()', 2236, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列关于内存回收的说明，哪个是正确的？(选择一项)', '程序员必须创建一个线程来释放内存', '内存回收程序允许程序员直接释放内存', '内存回收程序负责释放无用内存', '内存回收程序可以在指定的时间释放内存对象', 2237, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Math.round(11.5)等于多少(). Math.round(-11.5)等于多少？(选择一项)', '11 ,-11', '11 ,-12', '12 ,-11', '12 ,-12', 2238, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列程序段：void complicatedexpression_r(){int x=20, y=30;boolean b;b=x>50&&y>60||x>50&&y60||x(选择一项)', '1', '0', 'TRUE', 'FALSE', 2239, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '在android中使用SQLiteOpenHelper这个辅助类时，可以生成一个数据库，并可以对数据库版本进行管理的方法可以是？(选择两项)', 'getDatabase()', 'getWriteableDatabase()', 'getReadableDatabase()', 'getAbleDatabase()', 2240, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列选项中不属于GLSurFaceView特性的是？(选择一项)', '管理一个surface，这个surface就是一块特殊的内存，能直接排版到android的视图view上。', '管理一个EGL display，它能让opengl把内容渲染到上述的surface上。', '让渲染器在独立的线程里运作，和UI线程分离。', '可以直接从内存或者DMA等硬件接口取得图像数据', 2241, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '请问strlen（”I am a student”）的结果是（）(选择一项)', '11', '12', '13', '14', 2242, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面程序段执行完毕，页面上的显示内容是什么?( )(选择一项)' || chr(10) || '<?           ' || chr(10) || '  $a=”I am”；' || chr(10) || '   $b=”a sudent”；' || chr(10) || '   $a=”24ooo 7”+8；' || chr(10) || '   echo $a;' || chr(10) || '?>' || chr(10) || '', '24ooo 15', '32', '15', '以上都不正确', 2243, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', 'php中的标量数据类型有如下几种，布尔型(bool)、整型(integer)、浮点型(float)、字符串(string),其中布尔型(bool)的返回值是（）(选择2项)', '0', '1', 'true   ', 'FALSE', 2244, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '对于html代码，<input type=”________” name=”gender” >,在横线上填入哪个值，才代表会显示一个单选按钮。（）(选择一项)', 'text   ', 'submit', 'checkbox', 'radio', 2245, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '标记符title是放在标记符什么之间的(选择一项)', 'html与html ', 'head与head      ', 'body与body      ', 'head与body', 2246, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '使用CSS对文本进行修饰，若使文本闪烁，text-decoration的取值为(选择一项)', 'none         ', 'underline         ', 'overline         ', 'blink', 2247, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '＜img＞标记符中连接图片的参数是：(选择一项)', 'href     ', 'src       ', 'type     ', 'align', 2248, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '级联样式表文件的扩展名是：(选择一项)', 'html      ', 'css        ', 'xml       ', 'dib', 2249, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'HTML语言中的转行标记是(选择一项)', 'html      ', 'br       ', 'title         ', 'p', 2250, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列那个不属于数据操纵语言：(选择一项)', 'select', 'insert', 'delete', 'update', 2251, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于mysql_select_db返回值正确的是：(选择一项)', ' 成功开启返回1，失败返回0', '成功开启返回一个连接标识，失败返回false', ' 成功开启返回True,失败返回False', '成轼开启返回True,失败返回一个错误号', 2252, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '请看代码，数据库关闭指令将关闭哪个连接标识？(选择一项)<?' || chr(10) || '$link1 =mysql_connect("localhost","root","");' || chr(10) || '$link2 =mysql_connect("localhost","root","");' || chr(10) || 'mysql_close();' || chr(10) || '?>' || chr(10) || '', '$link1', '$link2', '全部关闭', '报错', 2253, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', ' mysql_data_seek(查询结果指针，资料录位置)函数中，资料记录位置的值是从多少开始的？(选择一项)', '1', '2', '3', '0', 2254, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', ' 取得搜索语句的结果集中的记录总数的函数是：(选择一项)', 'mysql_fetch_row', 'mysql_rowid', 'mysql_num_rows', 'mysql_fetch_array', 2255, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于mysql_pconnect说法正确的是：(选择一项)', '与数据库进行多连接', ' 与mysql_connect功能相同', '与＠mysql_connect功能相同', ' 与数据库建立持久连接', 2256, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '每家银行的移动数字证书都有自己的名称，其中，工商银行提供的移动数字证书叫什么？( )(选择一项)', '支付盾', 'K宝  ', '优KEY ', 'U盾', 2257, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '下面哪些是对抵价券使用规则的错误理解？( )(选择二项)', '抵价券必须使用于支持相应面额抵价券的商品上', '抵价券不能与其他优惠同时使用', '一笔交易里抵价券可以累加使用', '抵价券如果过期了可以申请补发', 2258, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下哪个工具能够让我们在室外拍摄时更加得心应手，提高照片的质量( )(选择一项)', '摄影棚 ', '反光板', '背景布', '以上都是', 2259, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '三脚架在拍摄商品照片时，最大的作用是（  ）(选择一项)', '解放双手，轻松上阵 ', '加强稳定性，防止照片模糊', '可以让照片更漂亮', '可以拍出专业级别的照片', 2260, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '为了防止我们的图片被盗用，同时为了增强图片的美观度和权威性，我们可以( )', '添加图片边框', '商品旁边放置装饰物', '图片添加水印', '图片名取名为店名', 2261, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '直通车的收费方式是什么？( )', '以展示时间收费', '按展示位置收费 ', '按实际点击收费', '按展示次数收费', 2262, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '站内推广工具—直通车，每个商品可以设置最多几个关键词？( )', '100个', '200个  ', '300个', '400个', 2263, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '先成交后付费的是淘宝的什么推广模式？( )', '论坛广告位', '直通车   ', '淘宝客', '钻石展位', 2264, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '推广和营销是两个不同的商业词汇，简单来说，网店的“推广”和“营销”分别能对顾客起到什么作用？( )(选择一项)', '知道我们；选择我们', '选择我们；知道我们', '吸引人气；规避纠纷', '选择我们；理解我们', 2265, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '直通车可以设置以下哪些内容？（  ）(选择三项)', '投放时间', '投放区域 ', '日消耗金额', '日访问量', 2266, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '不属于加入消费者保障服务项目的条件的是( )(选择二项)', '淘宝网注册用户      ', '不在其他平台开设店铺', '店铺信用必须在一钻以上', '用户卖家好评率在97%以上（包括97%）', 2267, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列送货方式中采用门对门送货的是( )(选择一项)', '邮局', '快递  ', '铁路货运', '国际货运', 2268, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '如果我们是出售液晶电视的，应该选择以下哪个包装？( )(选择一项)', '纸箱  ', '快递袋  ', '木板箱', '铁皮箱', 2269, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '有关运费模板的描述中错误的是( )(选择一项)', '可以按照城市设置邮费', '可以按照地域设置邮费', '可以按照物流方式设置邮费', '能够帮助卖家节约时间', 2270, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '具备下列哪项资质可以申请入驻商城？( )(选择二项)', '品牌商或厂商', '个体商户 ', '代理商', null, 2271, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'C#中将字符串转换为byte[]类型的方法是（ ）（选一项）', 'Encoding.Default.GetChars()', 'Encoding.Default.GetBytes()', 'Encoding.Default.GetString()', 'Encoding.Default.GetByteCount()', 2272, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'C#中要定时循环执行某一操作，用到的控件是（ ）（选一项）', 'listBox', 'timer', 'ComboBox', 'DataSet', 2273, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'C#中用于定义句柄的类型是（ ）（选一项）', 'int', 'char', 'IntPtr', 'Byte', 2274, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在支持Servlet规范的Web服务器中，URL http：//localhost：8080/HllowordWeb/helloword处为一个Servlet。当服务器收到5个同样的Servlet请求：' || chr(10) || 'http：//localhost：8080/HllowordWeb/helloword？userName=“one”' || chr(10) || 'http：//localhost：8080/HllowordWeb/helloword？userName=“two”' || chr(10) || 'http：//localhost：8080/HllowordWeb/helloword？userName=“three”' || chr(10) || 'http：//localhost：8080/HllowordWeb/helloword？userName=“four”' || chr(10) || 'http：//localhost：8080/HllowordWeb/helloword？userName=“five”' || chr(10) || '时，服务器将（选一项）', '创建5个helloword实例和5个线程，每次线程访问一个实例', '创建5个helloword实例和5个进程，每次进程访问一个实例', '创建1个helloword实例和5个线程，5个线程同时访问该实例', '创建1个helloword实例和5个线程，5个进程同时访问该实例', 2275, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列关于测试与调试的说法，错误的是（选一项）', '软件测试主要是通过某种手段找出软件中的缺陷', '一般先进行调试后进行测试', '软件调试主要是通过分析，诊断和改正程序的法潜在错误', '测试贯穿整个软件开发周期', 2276, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '如果有如下的XML文档实例片段:' || chr(10) || '<studentlist>' || chr(10) || ' <student>' || chr(10) || '  <name>a</name>' || chr(10) || '  <sex>male</sex>' || chr(10) || '  <age>20</age>' || chr(10) || ' </student>' || chr(10) || ' <student>' || chr(10) || '  <name>b</name>' || chr(10) || '  <sex>female</sex>' || chr(10) || '  <age>21</age>' || chr(10) || ' </student>' || chr(10) || '</studentlist>' || chr(10) || '那么XPath 表达式/studentlist/student/name 匹配的结果是（选一项）', '<name>a</name>', '<name>a</name>' || chr(13) || '' || chr(10) || '<name>b</name>', 'a', 'ab', 2277, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在HTML中，下列JavaScript语句的运行结果是（）。（选一项）' || chr(10) || 'var s = window.confirm("是否显示广告");' || chr(10) || 'if(s==true){' || chr(10) || '    showAdviesment();' || chr(10) || '}' || chr(10) || 'function showAdviesment(){' || chr(10) || '    window.open("广告.htm","广告","menubar=1,toolbar=0,status=yes,resizable=1");' || chr(10) || '}' || chr(10) || '</script>', '首先弹出一个包含确定与取消按钮的对话框，当用户点击确定按钮后，显示“广告.htm”页面，该页面没有工具栏', '首先弹出一个只包含确定按钮的对话框，当用户点击确定按钮后，显示“广告.htm”页面，该页面没有工具栏', '首先弹出一个包含确定与取消按钮的对话框，当用户点击确定按钮后，显示“广告.htm”页面，该页面没有菜单栏', '弹出一个包含确定与取消按钮的对话框，不管当用户点击确定按钮或者取消按钮后，均不会显示“广告.htm”页面', 2278, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ADO.NET中的DataView控件可以用来筛选数据集中的数据项，以下的代码用来选择数据集中年龄小于24的员工：' || chr(10) || 'DataView  V = new DataView(mydataSet.Tables[0]);' || chr(10) || '(1)//此处填写正确的代码' || chr(10) || '则（1）处应该填写的正确代码为（选一项）', 'V.RowFilter = "Age < 24";', 'V.RowFilter = "Select Age From V Where Age < 24";', 'V.Excute("Select Age From V Where Age < 24");', 'V.Excute("Age < 24");', 2279, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在三层架构中实体类的作用是（选一项）', '数据传递的载体', '保存数据', '显示数据', '访问数据库', 2280, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Intent传递数据时，下列的哪种类型数据不可以被传递？(选择一项)', 'Serializable', 'JSON对象', 'Bundle', 'charsequence', 2281, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '我们都知道Hanlder是线程与Activity通信的桥梁,如果线程处理不当，你的机器就会变得越慢，那么线程销毁的方法是？(选择一项)', 'onDestroy() ', 'onClear()', 'onFinish()', 'onStop()', 2282, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列哪个是 AbsoluteLayout(绝对布局) 中特有的属性？(选择一项)', 'android:layout_height', 'android:layout_x', 'android:layout_above', 'android:layout_toRightOf', 2283, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'RatingBar 组件中不能用属性直接设置的是？' || chr(10) || '选择一项：(选择一项)' || chr(10) || '', '五角星个数', '当前分数', '分数的增量', '五角星的色彩', 2284, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在手机开发中常用的数据库是？(选择一项)', 'SQLite', 'Oracle', 'Sql Server', 'MySQL', 2285, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'android 下的单元测试要配置,以下说法不正确的是？(选择一项)', '需要在 manifest.xml 清单文件 application 节点下配置instrumentation', ' 需要在 manifest.xml 清单文件 manifest 节点下配置instrumentation', '需要在 manifest.xml 清单文件 application 节点下配置 uses-library', '需要让测试类继承 AndroidTestCase 类', 2286, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '在 android 中使用 SQLiteOpenHelper 这个辅助类时，哪些操作可能生成一个数据库？(选择两项)', 'getReadableDatabase() ', 'getWriteableDatabase() ', 'getAbleDatabase()', 'getDatabase()', 2287, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'android 是如何组织 Activity 的？(选择一项)', '以栈的方式组式 Activity', '以队列的方式组织 Activity', '以树形方式组织 Activity', '以链式方式组织 Activity', 2288, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'onPause 什么时候调用？(选择一项)', '当界面启动时', '当 onCreate 方法被执行之后', '当界面被隐藏时', '当界面重新显示时', 2289, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在表格布局中，android:collapseColumns="1,2"的含义是？(选择一项)', '在屏幕中，当表格的列能显示完时，显示 1，2 列', '在屏幕中，当表格的列显示不完时，折叠', '在屏幕中，不管是否能都显示完，折叠 1、2 列', '在屏幕中,动态决定是否显示表格', 2290, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '绝对布局中，android:layout_x 的含义是？' || chr(10) || '选择一项：' || chr(10) || '', '以手机左下为原点，组件显示到屏幕中的横向坐标值。', '以手机左上为原点，组件显示到屏幕中的横向坐标值。', '以手机右下为原点，组件显示到屏幕中的横向坐标值。', '以手机右上为原点，组件显示到屏幕中的横向坐标值。', 2291, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ScrollView 中，可以直接包含多少个组件？(选择一项)', '3个', '2个', '1个', '无数个', 2292, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'TabHost.newTabSpec("tab1")的作用是？(选择一项)', '为 tab 页创建标题为 tab1', '为 tab 页创建 ID 为 tab1', '为 tab 页创建内容', '为 tab 页创建新空格', 2293, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', ' mysql_ping()函数的作用以及返回值的类型正确的是：(选择一项)', '检查数据库系统的状态，返回整型数值', '检查数据库系统的状态，返回值为布尔型', '检查到服务器的连接是否正常，返回整型数值', '检查到服务器的连接是否正常，返回值为布尔型', 2294, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于mysql_db_query与mysql_query说法正确的是：(选择一项)', 'mysql_db_query与mysql_query在执行sql语句后的返回值是一样的，成功返回资源号，失败返回FALSE', ' 不能用mysql_query函数临时在另一个数据库上执行sql语句，而mysql_db_query可以', 'mysql_db_query不会切换回先前连接到的数据库', 'mysql_query在功能上等于mysql_select_db() +mysql_db_query()', 2295, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'mysql_connect( )与@mysql_connect( )的区别是( ) (选择一项)', ' @mysql_connect( )不会忽略错误,将错误显示到客户端', ' mysql_connect( )不会忽略错误,将错误显示到客户端', '没有区别', '功能不同的两个函数 ', 2296, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '语句for($k=0;$k=1;$k++);和语句for($k=0;$k==1;$k++);执行的次数分别是: (选择一项)', '无限和0', '0和无限', '都是无限', '都是0 ', 2297, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '读取post方法传递的表单元素值的方法是:(选择一项)', '$_post["名称"]', ' $_POST["名称"]', '$post["名称"]', ' $POST["名称"] ', 2298, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'php运算符中，优先级从高到低分别是（ ）(选择一项)', '关系运算符，逻辑运算符，算术运算符', '算术运算符，关系运算符，逻辑运算符', '逻辑运算符，算术运算符，关系运算符', '关系运算符，算术运算符，逻辑运算符 ', 2299, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '要查看一个变量的数据类型,可使用函数( )(选择一项)', 'type()', 'gettype()', 'GetType()', 'Type() ', 2300, 405);
commit;
prompt 2300 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '字符串的比较，是按（　　）进行比较。(选择一项) ', '拼音顺序', 'ASCII码值', '随机', '先后顺序 ', 2301, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '复选框的type属性值是( ) (选择一项)', 'checkbox', 'radio', 'select', 'check ', 2302, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '如果想取得最近一条查询的信息,应该使用哪个函数( )(选择一项)', ' mysql_info', 'mysql_stat', 'mysql_insert_id( )', 'mysql_free_result ' || chr(10) || '' || chr(10) || '', 2303, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列哪个说法是错误的( ) (选择一项)', 'gettype( )是查看数据类型的', '没有被赋值的变量是0', 'unset( )是被认为NULL', '双引号字符串最重要的一点是其中的变量名会被变量值替代 ', 2304, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'strtolower( )函数的功能是（　）(选择一项) ', '将给定的字符串全部转换为小写字母', '将给定的字符串全部转换为大写字母', '将给定的字符串首字母转换为小写字母', '将给定的字符串首字母转换为大写字母 ', 2305, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'HTML中,表格单元格的"值"是存储在( )标签里(选择一项) ', '< body>', '< td>', '<tr>', '<table> ', 2306, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'php中字符串的连接运算符是（ ）(选择一项)', '-符号', '+符号', '&', '.', 2307, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'php函数不支持的功能有(选择一项)', '可变的参数个数', '通过引用传递参数', '通过指针传递参数', '实现递归函数 ', 2308, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'C/S架构中承担承担着连接各种感知设备，以及与它们通信的功能的是（ ）（选一项）', 'Client端', 'Server端', 'RFID端', '网络层', 2309, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'EPCSDK.dll库中打开串口的函数是（ ）（选一项）', 'ResumeReading', 'IdentifySingleTag', 'ReadTag', 'OpenComm', 2310, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'EPC编码存储在（ ）（选一项）', '读写器存储芯片', '传输协议', '应用程序', 'RFID标签的微型芯片', 2311, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'EPC编码是由（ ）组成（选一项）', '由标头、厂商识别代码、对象分类代码、序列号', '由序列号、厂商识别代码、对象分类代码、商品代码', '由标头、地区代码、对象分类代码、序列号', '由序列号、厂商识别代码、商品代码、出厂日期', 2312, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'EPC标签中每个地址可以存储的容量是（ ）字节（选一项）', '1', '2', '3', '4', 2313, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'FastWriteTag函数是EPCSDK.dll提供的快速写入标签的函数，下面代码中空白处应填入的代码是（ ）（选一项）' || chr(10) || 'byte[] data = Encoding.Default.GetBytes("独孤求败");' || chr(10) || 'if (EPCSDKHelper.FastWriteTag(_handle, 0x03, 0x00, _______,_______, 0))' || chr(10) || '{' || chr(10) || '    MessageBox.Show("写入用户区成功");' || chr(10) || '}' || chr(10) || 'else' || chr(10) || '{' || chr(10) || '    MessageBox.Show("写入用户区失败"', 'data,4', '4,data', 'data,8', '8,data', 2314, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'JT6220读写器参数的设置使用下面（ ）函数（选一项）', 'SetReaderParameters', 'GetReaderParameters', 'ReadByEpcID', 'InitializeTag', 2315, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'JT6220读写器的参数获取使用下面（ ）函数（选一项）', 'SetReaderParameters', 'GetReaderParameters', 'ReadByEpcID', 'InitializeTag', 2316, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'RFID读写器上电之后不工作，需要检查其供电是否正常，其电源适配器的交流电供电电压应在（ ）（选一项）', '220V以上', '7.5V左右', '100-240V之间', '7-9V之间', 2317, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', 'RFID设备选型的三大原则是（ ）（选三项）', '符合国家标准', '最好有技术支持', '适合应用环境', '与现有系统的结合', 2318, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'RFID设备属于物联网中的（ ）层（选一项）', '感知层', '应用层', '网络层', '编码层', 2319, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '标明现在申明的是外部函数所使用的修饰符是（ ）（选一项）', 'static', 'struct', 'extern', 'internal', 2320, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '标签的访问密码最多（ ）位16进制数（选一项）', '4', '6', '8', '16', 2321, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '标准RS-232串口的连接线只是采用九芯中的（ ）进行连接（选一项）', '4、5、8', '1、2、3', '2、3、5', '2、3、4', 2322, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '采用IdentifyUploadedMultiTags函数识别标签，一次最多识别（ ）个标签（选一项）', '50', '100', '150', '200', 2323, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '超高频RFID协议是以下（ ）一种？（选一项）', 'ISO18000-6C', '14443a', 'ISO15693', 'ISO/IEC14443', 2324, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '超高频读写器识别电子标签采用的原理是（ ）（选一项）', '光电耦合', '电感耦合', '阻容耦合', '电磁反向散射耦合', 2325, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<?xml version="1.0" encoding="gb2312" ?>' || chr(10) || '<?xml:stylesheet type="text/xsl" href="stud.xsl" ?>' || chr(10) || '<roster>' || chr(10) || '' || chr(9) || '<student ID="s101">' || chr(10) || '' || chr(9) || '' || chr(9) || '<name>李华</name>' || chr(10) || '' || chr(9) || '' || chr(9) || '<sex>男</sex>' || chr(10) || '' || chr(9) || '' || chr(9) || '<birthday>1978.9.12</birthday>' || chr(10) || '' || chr(9) || '' || chr(9) || '<score>92</score>' || chr(10) || '' || chr(9) || '</student>' || chr(10) || '</roster>' || chr(10) || '针对上述XML文件，以下是stud.xsl 。' || chr(10) || '<?xml version="1.0" encoding="gb2312"?>' || chr(10) || '<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">' || chr(10) || '' || chr(9) || '<xsl:template match="/">' || chr(10) || '' || chr(9) || '' || chr(9) || '<xsl:value-of select="student/name"/>' || chr(10) || '' || chr(9) || '</xsl:template>' || chr(10) || '</xsl:stylesheet>' || chr(10) || '此XML在IE中的输出是（选一项）', '李华', 'IE输出错误信息', '无输出', '<name>李华</name>', 2326, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', 'Report.xml中包含subject 元素，该元素可以包含某 HTML 标记，如下：' || chr(10) || '<subject>' || chr(10) || '   <b>2008年</b> <i>北京奥运会</i>展望 ' || chr(10) || '</subject>' || chr(10) || '现需要编写一个XML schema来定义该xml文档内容的结构，以下的schema片断中，（）可以使Report.xml通过有效性验证（选两项）', '<xsd:element name="subject">' || chr(13) || '' || chr(10) || '  <xsd:complexType mixed="true">' || chr(13) || '' || chr(10) || '     <xsd:all>' || chr(13) || '' || chr(10) || '       <xsd:element name="i" minOccurs="0" maxOccurs="unbounded" ' || chr(13) || '' || chr(10) || '            type="xsd:string" />' || chr(13) || '' || chr(10) || '<xsd:element name="b" minOccurs="0" maxOccurs="unbounded" ' || chr(13) || '' || chr(10) || '            ty', '<xsd:element name="subject" type="xsd:string" />', '<xsd:element name="subject" type="xsd:anyType" />', '<xsd:element name="subject">' || chr(13) || '' || chr(10) || '  <xsd:complexType mixed="true">' || chr(13) || '' || chr(10) || '     <xsd:sequence>' || chr(13) || '' || chr(10) || '       <xsd:element name="i" minOccurs="0" maxOccurs="unbounded" ' || chr(13) || '' || chr(10) || '            type="xsd:string" />' || chr(13) || '' || chr(10) || '<xsd:element name="b" minOccurs="0" maxOccurs="unbounded"', 2327, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '分析下面的JavaScript代码：' || chr(10) || 'var today = new Date();' || chr(10) || 'document.write("现在时间是:" + today.getHours() + ":" + today.getMinutes());加入现实网页时，下列输出格式正确的是（选一项）', '现在时间是：2008-02-20-15:54', '现在时间是：15:54', '00:00', '现在时间是：+15+: +54', 2328, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '分析下面的JavaScript代码段：' || chr(10) || 'a = new Array("100","2111","41111");' || chr(10) || 'for(var i = 0;i < a.length;i++ ){' || chr(10) || '    document.write(a[i] + " ");' || chr(10) || '}' || chr(10) || '输出结果是（选一项）', '100 2111 41111', '1 2 3', '0 1 2', '1 2 4', 2329, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '假设今天是2006年5月8日星期一,请问下列JavaScript代码在页面上的输出结果是（选一项）' || chr(10) || 'var time = new Date();' || chr(10) || 'document.write(time.getDay());', '2006', '8', '5', '1', 2330, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Oracle中，使用以下语句创建视图：' || chr(10) || 'CREATE OR REPLACE VIEW pen_view' || chr(10) || 'AS SELECT * FROM order_master' || chr(10) || 'WHERE ostatus = ‘p’ WITH CHECK OPTION;' || chr(10) || '当用户试图执行以下语句:' || chr(10) || 'UPDATE pen_view SET ostatus = ‘d’ WHERE ostatus=’p’;' || chr(10) || '下列描述正确的是（选一项）', 'Oracle将ostatus修改为d，不提示任何错误', 'Oracle不执行更新操作，并返回错误信息', 'Oracle将ostatus修改为d，同时返回错误信息', 'Oracle不执行更新操作，也不提示任何错误', 2331, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于适配器的说法正确的是？(选择一项)', '它主要是用来存储数据', '它主要用来把数据绑定到组件上', '它主要用来解析数据', '它主要用来存储 xml 数据', 2332, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Matrix 类的作用是？(选择一项)', '可以存储缩小或放大比列', '存储文件中的图片信息', '存储资源中的图片信息', '存储内存中的图片信息', 2333, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'android:completionThreshold=1 是哪个组件的属性？(选择一项)', 'ImageButton', 'EditText', 'TextView', 'AutoCompleteTextView', 2334, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面退出Activity错误的方法是？(选择一项)', ' finish()', 'System.exit() ', 'onStop()', '抛异常强制退出', 2335, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于 Activity 说的法不正确的是？(选择一项)', '通过把当前 actvity 对象传递给 service 对象。', '通过向 Activity 发送广播。', '通过 Context 对象更改 Act]ivity 界面元素 ', '可以在 service 中，调用 Activity 的方法实现更改界面元素。', 2336, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于 android 进程，说法不正确的是？' || chr(10) || '选择一项：' || chr(10) || '', '组件运行所在的进程，是由 androidmanifest.xml 决定，它可以指定该组件运行于 哪个进程。', '当急需内存时，android 会决定优先关闭那些空闲的进程', '背景进程是不为用户所见的 Activity，但是还会有可能被用户看到，所以它不能 被杀死', '可视进程一般不会不被系统所杀死', 2337, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '表单的onsubmit事件的作用是？(选择一项)', '当表单中的一个按钮被点击时，执行的JavaScript事件。', '当用户提交一个表单时，执行的JavaScript事件。', '当表单创建时，执行的JavaScript事件。', ' 当页面加载完成时，执行的JavaScript事件。', 2338, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在 Activity 的生命周期中，当它从可见状态转向半透明状态时，它的哪个方法必须被调用？(选择一项)', 'onStop（）', 'onPause（）', 'onRestart（）', 'onStart（）', 2339, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于 BroadcastReceiver 的说法不正确的是？(选择一项)', '是用来接收广播 Intent 的', '一个广播 Intent 只能被一个订阅了此广播的 BroadcastReceiver 所接收 ', '对有序广播，系统会根据接收者声明的优先级别按顺序逐个执行接收者', '接收者声明的优先级别在的 android:priority 属性中声明，数值越大 优先级别越高', 2340, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在 android 中使用 RadioButton 时，要想实现互斥的选择需要用的组件是 ？(选择一项)', 'ButtonGroup', 'RadioButtons', 'CheckBox', 'RadioGroup ', 2341, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在多个应用中读取共享存储数据时， 需要用到哪个对象的 query 方法？(选择一项)', ' ContentResolver ', ' ContentProvider', ' Cursor', 'SQLiteHelper', 2342, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'DDMS 中 Log 信息分为几个级别？(选择一项)', '3', '4', '5', '7', 2343, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面哪一项不属于android的动画类型？' || chr(10) || '选择一项：(选择一项)' || chr(10) || '', 'Tween', 'Alpha', 'Frame', 'Animation ', 2344, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '创建子菜单的方法是？(选择一项)' || chr(10) || '' || chr(10) || '', 'add', ' addSubMenu', 'createSubMenu', 'createMenu', 2345, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'MediaPlayer 播放资源前，需要调用哪个方法完成准备工作？(选择一项)' || chr(10) || '' || chr(10) || '', 'setDataSource', 'prepare ', 'begin', 'pause', 2346, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '文件框的type属性值是( )(选择一项)', 'text', 'hidden', 'textarea', 'checkbox', 2347, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '搜索引擎营销的简称是(单选）', 'SEO', 'SEM', 'SEC', 'SERP', 2348, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Google和百度哪个能抓取Iframe里的内容(单选）', 'Google', '百度', '都能', '都不能', 2349, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下对网站排名没有太大影响的因素是(单选）', '服务器稳定性', 'Title标签', 'Keywords标签', '网站内容和更新频率', 2350, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '友情链接方面，PR的选择应该优先选择的链接为(单选）', 'PR高，相关性低', 'PR低，相关性高 C', 'PR高，相关性低', 'RP高，相关性高', 2351, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '一个精准关键词的“基础三度”不包括(单选）', '相关度', '流行度', '竞争度', '相似度', 2352, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '一个做女性服装批发的网站，最好的关键词选择是(单选）', '女装批发', '服装批发', '女性服装', '女性服装批发网站', 2353, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面哪个HTTP状态码是搜索引擎返回的抓取正常的状态码(单选）', '500', '301', '200', '404', 2354, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列URL对SEO最友好的是(单选）', 'seo/index.html', 'seo/', 'seo.aspx', 'seo.php?id=21', 2355, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'robots.txt不支持的代码为(单选）', 'Allow', 'Disallow', 'Crawl-delay', 'noindex', 2356, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下哪一种提高PR值的行为被Google 认为是作弊行为(单选）', '与很多相关站点友情链接', '加入很多网站目录站、导航站', '向PR值高的站点购买链接', '发布供求信息，带有反向链接', 2357, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SEO指的是(单选）', '搜索引擎优化', '搜索引擎营销 ', '搜索引擎操作', '搜索引擎开放', 2358, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在目前的搜索引擎中，从全球来看，占领市场份额最大的搜索引擎是(单选）', 'ASK', 'Yahoo!', 'Google ', 'AOL ', 2359, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'link命令的作用是(单选）', '检查站点收录情况', '检查反链数量', '检查死链', '检查错误', 2360, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '以下状态码表示重定向的是(单选）', '403', '404', '301', '500', 2361, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '搜索引擎公司百度是由（         ）创立的(单选）', '马云', '史玉柱 ', '李彦宏', '杨致远', 2362, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'slurp是哪个搜索引擎的蜘蛛(单选）', '百度', '美国在线', 'Bing', 'Yahoo', 2363, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Wordpress常被搜索引擎优化人员用来(单选）', '建立论坛', '建立内容管理系统', '建立博客', '建销售站', 2364, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '老谢要做一个女性服装批发的销售站，进行在线销售，你觉得老谢最应该选择哪个关键词进行推广(单选）', '女装', '女装网站', '女装批发  ', '服装批发', 2365, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Sitemap的开始和结束标记是(单选）', '<urlset></urlset>', '<url></url>', '<loc></loc> ', '<add></add>', 2366, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在网络营销中，PPC指的是(单选）', 'Points Per Click', 'Pay Per Click', 'Person Per Click', 'Page Per Click', 2367, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '从通信方式来划分，下列（ ）不属于读写器的常见工作模式（选一项）', '单标签模式', '定时模式', '主从模式', '触发模式', 2368, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '当RFID应用系统中需要同时使用多台读写器进行标签识别时，应当使用下列（ ）技术来对每台读写器的识别进行控制？（选一项）', '存储过程', '多线程', '配置文件', '委托', 2369, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '当SQL Server数据库经常作为C/S架构中的服务器系统，它的登录方式包括以下（ ）（选两项）', 'Windows身份验证', '本地账户身份验证', '远程账户身份验证', 'SQL Server身份验证', 2370, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '当串口不能连接时，下面检查中描述错误的是（ ）（选一项）', '需要检查读写器是否符合ISO18000-6B/C协议', '需要检查读写器的波特率是否设置正确', '查看选择的COM口是不是跟读写器与PC连接的相符。', '串口电缆是否连接正确，电缆未连接或连接不牢靠会导致PC机的命令不能下发到读写器', 2371, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '电脑的串行传输接口一次只能传输（ ）数据（选一项）', '1 byte', '1 int', '1 bit', '1 char', 2372, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '电子标签的保留区是用于存放（ ）的区域（选一项）', 'EPC编码', '用户数据', '访问密码', '唯一编号', 2373, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '读写器的频率LF, HF, UHF分别对应于（ ）（选一项）', '高频、超高频、微波', '低频、中频、高频', '低频、高频、超高频', '中频、高频、超高频', 2374, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '多线程的命名空间是（ ）（选一项）', 'System.Threading;', 'System.Configuration;', 'System.Collections.Generic;', 'System.Runtime.InteropServices;', 2375, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '发生在读写器与电子标签之间射频信号的耦合类型分为（ ）（选二项）', '光电耦合', '电感耦合', '阻容耦合', '电磁反向散射耦合', 2376, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于串口通讯下列描述错误的是（ ）（选一项）', '串口也可以称为COM口', 'RS-232被称为标准串口，也是最常用的一种串行通讯接口', '串口不支持热插拔，且传输速率较低', '串口通讯不支持全双工模式', 2377, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于动态链接库下面描述错误的是（）（选一项）', '动态链接库英文为DLL，是Dynamic Link Library 的缩写形式', 'DLL是一个可执行文件', 'DLL是一个包含可由多个程序同时使用的代码和数据的库', 'DLL 包含一个或多个已被编译、链接并与使用它们的进程分开存储的函数', 2378, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '关于事件下列描述正确的是（ ）（选两项）', '事件是WinForm中独有的机制', '事件可以看作是一种特殊的委托', '事件是对委托的一种封装表现形式', '事件可以用于替换委托', 2379, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于相邻判别下列描述错误的是（ ）（选一项）', '相邻判别间隔时间越长表明同一标签识别到的几率越小', '启用相邻判别需要设置两个参数。', '相邻判别只能用在定时模式下', '' || chr(9) || '相邻判别间隔时间设置为0的话表示不启用相邻判别', 2380, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '灭活密码保存在（ ）（选一项）', 'TID区的地址2-5', 'EPC区的地址2-7', '保留区的地址0-1', '保留区的地址2-3', 2381, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '能够快速读取标签中EPC区域的函数是（ ）（选一项）', 'FastWriteTagID', 'ReadTag', 'IdentifySingleTag', 'InitializeTag', 2382, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '能一次性写入多个字节的函数是（ ）（选一项）', 'WriteTagSingleWord', 'FastWriteTag', 'FastWriteTagID', 'InitializeTag', 2383, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '有stud.dtd文件如下:' || chr(10) || '<?xml version="1.0" encoding="gb2312" ?>' || chr(10) || '<!ELEMENT roster (student )>' || chr(10) || '<!ELEMENT student (name)>' || chr(10) || '<!ELEMENT name (#PCDATA)>' || chr(10) || '<!ATTLIST student school CDATA #REQUIRED>' || chr(10) || '<!ENTITY is "Elementary School">' || chr(10) || '有stud.xml文件如下:' || chr(10) || '<?xml version="1.0" encoding="gb2312" ?>' || chr(10) || '<!DOCTYPE roster SYSTEM "stud.dtd" >' || chr(10) || '<roster>' || chr(10) || '' || chr(9) || '<student school="&is;" >' || chr(10) || '' || chr(9) || '' || chr(9) || '<name>Jake</name>' || chr(10) || '' || chr(9) || '</student>' || chr(10) || '</roster>' || chr(10) || '下述说法正确的是（选一项）', 'stud.xml不符合stud.dtd的有效性要求', 'IE中浏览stud.xml 时,报错', 'IE中浏览stud.xml 时,将显示:' || chr(13) || '' || chr(10) || '<roster>' || chr(13) || '' || chr(10) || '<student school="Elementary School">' || chr(13) || '' || chr(10) || '<name>Jake</name>' || chr(13) || '' || chr(10) || '</student>' || chr(13) || '' || chr(10) || '</roster>', 'IE中浏览stud.xml 时,将显示:' || chr(13) || '' || chr(10) || '<roster>' || chr(13) || '' || chr(10) || '<student>' || chr(13) || '' || chr(10) || '<name>Jake</name> ' || chr(13) || '' || chr(10) || '</student>' || chr(13) || '' || chr(10) || '</roster>', 2384, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '如果希望执行某操作时，该操作不执行，而是执行另一个操作，那么可是使用什么方式来完成（选一项）', 'before触发器', 'after触发器', 'instead of触发器', 'undo触发器', 2385, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '要审计用户执行的create,drop,和alter等ddl语句，应创建(  )触发器。（选一项）', '行级', '语句级', '模式', '数据库', 2386, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '用例图可以用于软件开发的(   )阶段。' || chr(13) || '', '需求分析和测试' || chr(13) || '', '设计' || chr(13) || '', '编码' || chr(13) || '', '部署' || chr(13) || '', 2387, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在面向对象的分析与设计中，下列（ ）不属于类之间的关系。', '关联', '泛化', '依赖', '多态', 2388, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '在面向对象的分析与设计中，下列关于关键抽象的说法，错误的是(  )。' || chr(13) || '', '关键抽象强调与系统设计有关的实体' || chr(13) || '', '关键抽象的抽象层次越高越好' || chr(13) || '', '关键抽象排除系统外部多于地实体' || chr(13) || '', '关键抽象将成为分析模型中的类' || chr(13) || '', 2389, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '( )标签检查cookie、header、name、parameter或 property属性之一指定的变量是否在应用的范围内（选一项）', 'messagePresent', 'messageNotPresent', 'present', 'notPresent', 2390, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '对于以下这段配置ActionServlet的代码，哪项说法是错误的（选一项）' || chr(10) || '<servlet>' || chr(10) || '    <servlet-name>action</servlet-name>' || chr(10) || '    <servlet-class>org.apache.struts.action.ActionServlet</servlet-class>' || chr(10) || '    <init-param>' || chr(10) || '       <param-name>config</param-name>' || chr(10) || '       <param-value>/WEB-INF/myconfig.xml</param-value>' || chr(10) || '    </init-param>' || chr(10) || '     <load-on-startup>2</load-on-startup>' || chr(10) || '</servlet>' || chr(10) || '' || chr(10) || '<!-- Standard Action Servlet Mapping -->' || chr(10) || '<servlet-mapping>' || chr(10) || '    <servlet-name>action</servlet-name>' || chr(10) || '    <url-pattern>*.do<', 'Servlet容器在启动Struts应用时，会初始化这个ActionServlet。', '对于所有URL中以”.do”结尾的HTTP请求，都由ActionServlet处理。', '这段代码位于struts-config.xml中。', '这段代码位于web.xml中。', 2391, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '处理菜单项单击事件的方法不包含？(选择一项)' || chr(10) || '' || chr(10) || '', '使用onOptionsItemSelected(MenuItem item)响应', '使用onMenuItemSelected(int featureId ,MenuItem item)响应', '使用onMenuItemClick(MenuItem item)响应', '使用 onCreateOptionsMenu(Menu menu)响应 ', 2392, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '使用 AIDL 完成远程 service 方法调用下列说法不正确的是？(选择一项)' || chr(10) || '' || chr(10) || '', 'aidl 对应的接口名称不能与 aidl 文件名相同', 'aidl 的文件的内容类似 java 代码', '创建一个 Service（服务），在服务的 onBind(Intent intent)方法中返回实现了 aidl 接口的对象', ' aidl 对应的接口的方法前面不能加访问权限修饰符', 2393, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '"android 中文件操作模式中表示只能被本应用使用， 写入文件会覆 盖的是？"(选择一项)' || chr(10) || '' || chr(10) || '', 'MODE_APPEND', 'MODE_WORLD_READABLE', 'MODE_WORLD_WRITEABLE', 'MODE_PRIVATE ', 2394, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '进度条中哪个属性是设置进度条大小格式的？' || chr(10) || '' || chr(10) || '', 'android:secondaryProgress', 'android:progress', 'android:max', 'style', 2395, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列用以显示一系列图像的是？(选择一项)' || chr(10) || '' || chr(10) || '', 'ImageView', 'Gallery ', ' ImageSwitcher', 'GridView', 2396, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列说法错误的是？(选择一项)' || chr(10) || '' || chr(10) || '', ' Button 是普通按钮组件，除此外还有其他的按钮组件', 'TextView 是显示文本的组件，TextView 是 EditText 的父类', 'EditText 是编辑文本的组件，可以使用 EditText 输入特定的字符', 'ImageView 是显示图片的组件，可以通过设置显示局部图片 ', 2397, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列关于如何使用 Notification，不正确的是？' || chr(10) || '(选择一项)' || chr(10) || '', 'notification 需要NotificatinManager 来管理', '使用 NotificationManager 的 notify 方法显示 notification 消息', '在显示 Notification 时可以设置通知时的默认发声，震动等', 'Notification 中存在可以清除消息的方法', 2398, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Android项目工程下面的assets目录的作用是什么？(选择一项)' || chr(10) || '' || chr(10) || '', '主要放置多媒体等数据文件', '放置字符串，颜色，数组等常量数据', '放置一些与UI相应的布局文件，都是xml文件', '旋转应用程序所使用的图片资源', 2399, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Java是从（）语言改进重新设计(选择一项)' || chr(10) || '' || chr(10) || '', 'Ada', 'C++', 'Pascal', 'BASIC', 2400, 401);
commit;
prompt 2400 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列语句哪一个正确()' || chr(10) || '(选择一项)' || chr(10) || '', 'Java程序经编译后会产生machine code', 'Java程序经编译后会产生byte code', 'Java程序经编译后会产生DLL', '以上都不正确', 2401, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列说法正确的有（）' || chr(10) || '(选择一项)', 'class中的constructor不可省略', 'constructor必须与class同名，但方法不能与class同名', 'constructor在一个对象被new时执行 ', '一个class只能定义一个constructor', 2402, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列运算符合法的是（）(选择一项)' || chr(10) || '' || chr(10) || '', '&& ', '<>', ' if', ':=', 2403, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '"执行如下程序代码 a=0;c=0; do{ --c; a=a-1; }while(a>0); 后，C的值是（）"(选择一项)' || chr(10) || '' || chr(10) || '', '0', '1', '-1', '死循环', 2404, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列语句正确的是（）' || chr(10) || '(选择一项)' || chr(10) || '', '形式参数可被视为local variable', '形式参数可被字段修饰符修饰', '形式参数为方法被调用时，真正被传递的参数', '形式参数不可以是对象', 2405, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '你刚刚上了一个新的站点，为了让搜索引擎收录，最好的做法是(单选）', '把标题变得更加吸引人', '  从相关高质量的权威网站加链接到新站', '向黑客购买大量的反向的无关的链接', '加一些flash动画到站点首页上', 2406, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '对于老站点改版，最好的做法是(单选）', '改天主题和URL  ', ' 不改变主题和URL，更新丰富相关内容', '需要再次提交给搜索引擎   ', '换个产品，从头再来', 2407, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'PageRank是（           ）公司的专有算法(单选）', '百度 ', '雅虎', '谷歌 ', '美国在线', 2408, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '老谢要做一个关于SEO培训的网站，选择在南京地区做SEO培训，帮助有学习需要的人，你觉得老谢最应该选择哪个关键词进行推广(单选）', ' 南京SEO', 'SEO培训网站', '南京SEO学习', '南京SEO培训', 2409, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '老谢要对其博客站点进行改版，为了保持和提高现有排名，一定不能改变的是(单选）', '主题和URL  ', 'keyword标签', 'description描述', '页面上的文字', 2410, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '跟天涯属于同类型的网站是(单选）', '新浪', '优酷', '猫扑', '赶集', 2411, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下网站属于站长论坛的是(单选）', '5173', 'A5 ', '163', 'PLU', 2412, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '新浪博客每天可写多少篇日志(单选）', '5', '10', '20', '多于20', 2413, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下软件中不属于网络三剑客的是(单选）', 'Dreamweaver', 'Flash', 'Firework', 'Access', 2414, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下扩展名中不属于图片格式的是(单选）', 'jpg', 'swf ', 'gif', 'jpeg', 2415, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '在控制器类中一般需要添加相应属性的___________和___________。(选择两项)', 'setter方法', 'as方法', 'getter方法', 'is方法', 2416, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '控制器需要在___________配置文件中进行配置。(选择一项)', 'web.xml', 'struts.xml', 'struts2.xml', 'webwork.xml', 2417, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '不属于Struts 2表单标签库的是___________(选择一项)', '<s: textfield >', '<s: textarea >', '<s: submit >', '<select>', 2418, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '资源文件的后缀名为___________。(选择一项)', 'txt', 'doc', 'property', 'Properties', 2419, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下关于struts的描述中，不正确的是（）(选择一项)', 'struts 是一个基于JAVA EE的MVC', 'struts2的框架配置文件是struts-config.xml', 'struts2的控制组建核心包括核心控制和业务控制器', '在struts中解决中文乱码可以通过修改struts。I18n。encoding的值为GBK来实现', 2420, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '不属于Struts2的动作类的常量返回值的是()(选择一项)', 'success', 'input', 'never', 'login', 2421, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下不属于Struts2动作执行的结果类型是（）(选择一项)', 'action', 'redirect', 'redirectAction', 'dispatcher', 2422, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '正规开发中，在使用struts2时定义Action使用哪种方式。（）(选择一项)', '直接定义Action类。', '从ActionSupport继承。', '从Action继承。', '实现Action接口。', 2423, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '设立EPC编码的目标是（ ）（选一项）', '对硬件设备进行管理', '对物理世界对象的唯一标识', '对数据建立唯一标识', '一种信号协议', 2424, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '申明委托的关键字是（ ）（选一项）', 'extern', 'DllImport', 'delegate', 'Event', 2425, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '物联网的三个重要特征是（）（选三项）', '全面感知', '物物相连', '可靠传递', '智能处理', 2426, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列（ ）不属于RFID系统的组成部分（选一项）', '阅读器', '天线', '标签', '传感器', 2427, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列（ ）区域的数据不需要锁定也不能修改（选一项）', '保留区', 'EPC区', 'TID区', '用户区', 2428, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列（ ）是表明Command对象是存储过程的类型（选一项）', 'CommandType.Text', 'CommandType.TableDirect', 'CommandType.StoredProcedure', 'CommandType.Parameters', 2429, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列（ ）种工作频率不是采用的电感耦合（选一项）', '125kHz', '225kHz', '13.56MHz', '443MHz', 2430, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '下列关于电子标签的保留区描述正确的是（ ）（选二项）', '保留区的访问标志是0x02', '保留区的地址范围是0-8', '保留区的地址0-1存储的是8位16进制的灭活密码', '保留区的地址2-3存储的是8位16进制的访问密码', 2431, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下列区域锁定后既不能读取也不能修改的是（ ）（选一项）', '保留区', 'EPC区', 'TID区', '用户区', 2432, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面（ ）标准及协议被称为标准串口（选一项）', 'RS-458', 'RS-422', 'RJ45', 'RS-232', 2433, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面（ ）不属于物联网的系统架构（选一项）', '数据层', '应用层', '感知层', '编码层', 2434, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '下面代码是申明EPCSDK.dll中的打开和关闭串口的函数，请指出里面包含（ ）处错误（选一项）' || chr(10) || '--[DllImport(“EPCSDK.dll”)]' || chr(10) || '--public static extern IntPtr OpenComm(int portNo);' || chr(10) || '--[DllImport(“EPCSDK.dll”)]' || chr(10) || '--public static extern void CloseComm();', '1', '2', '3', '4', 2435, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面代码中读取的是（ ）区的数据（选一项）' || chr(10) || 'byte[] data=new byte[2];' || chr(10) || 'if(EPCSDKHelper.ReadTag(_handle,0x03,0x00,1,data,0))' || chr(10) || '{' || chr(10) || '' || chr(9) || 'String str=Encoding.Default.GetString(data);' || chr(10) || '' || chr(9) || 'MessageBox.Show(str);' || chr(10) || '} ', '保留区', 'EPC区', 'TID区', '用户区', 2436, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面关于Demo软件的作用描述错误的是（ ）（选一项）', 'Demo软件可以用于调试RFID读写器', '可以借用Demo软件来设置读写器的参数', 'Demo软件可以用来检查标签状况', 'Demo软件是开发RFID系统应用必备的工具', 2437, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面关于多线程的描述错误的是（ ）（选一项）', '线程是进程中的一个执行单元；是操作系统分配CPU时间的基本单元。', 'IsAlive可以获得当前线程的执行状态', '新建一个线程必须要先实例化一个Thread对象', 'Thread对象的构造方法必须要使用ThreadStart委托', 2438, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在Oracle中，用下列语句定义了一个过程：' || chr(10) || 'CREATE PROCEDURE proc(value1 IN VARCHAR2,value2 OUT NUMBER,value3 IN OUT VARCHAR2)' || chr(10) || 'IS' || chr(10) || 'BEGIN' || chr(10) || '……' || chr(10) || 'END;' || chr(10) || '假定使用的变量都已定义，下面对过程proc的调用语法正确的是（选一项）', 'proc(''tt'',10,v3)', 'proc(''tt'',v2,v3)', 'proc(v1,v2,v3)', 'proc(''tt'',10,''dd'')', 2439, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('undefined', 'OOAD（面向对象分析与设计）是软件工程醒目中首先必须做的工作，下面有关OOAD说法中，正确的是（ ）。', '在OOA中，依据对应的现实世界对象来模型化问题', 'OOA着眼于OOD的细化', 'OOD阶段不考虑按对象的协作集合组织解决方案', 'OOD阶段还需要设计数据库，并应用规范化方法', 2440, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在使用struts框架构建应用系统时，建立一个类UserBean，其中有userName属性以及' || chr(10) || '相应的setter、getter方法。另外建立一个Action类，它的execute方法有如下片段：' || chr(10) || '//======================' || chr(10) || 'UserBean user=new UserBean();' || chr(10) || 'user.setUserName("rose");' || chr(10) || 'request.setAttribute("user",user);' || chr(10) || 'return (actionMapping.findForward("success"));' || chr(10) || '//=======================' || chr(10) || '假设success对应的jsp页面为success.jsp，若要使success.jsp能够输出user对象中的属性值，以下代码片断正确的是（选择一项）', '<logic:equal name="user">' || chr(13) || '' || chr(10) || '  ' || chr(9) || '  <bean:write name="user" property="userName"/>' || chr(13) || '' || chr(10) || '</logic:equal>', '<logic:equal name="user">' || chr(13) || '' || chr(10) || '    <bean:message name="user" property="userName"/>' || chr(13) || '' || chr(10) || '</logic:equal>', '<logic:notEmpty name="user">' || chr(13) || '' || chr(10) || '    <bean:write name="user" property="userName"/>' || chr(13) || '' || chr(10) || '</logic:notEmpty>', '<logic:notEmpty name="user">' || chr(13) || '' || chr(10) || '   <bean:message name="user" property="userName"/>' || chr(13) || '' || chr(10) || ' </logic:notEmpty>', 2441, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面的程序执行后没有报错，但数据总保存不到数据库，最可能的原因是（选一项）' || chr(10) || 'public static void imain(String[] args){' || chr(10) || '    SessionFactory sf=new Configration().configure().buildSessionFactory();' || chr(10) || '    Session session=sf.openSession();' || chr(10) || '    Medal medal = new Medal();' || chr(10) || '    medal.setOwner("totong");' || chr(10) || '    medal.setType("Gold medal");' || chr(10) || '    session.save(user);' || chr(10) || '    session.close();' || chr(10) || '}', '配置文件配置有误', '没有在配置文件中包含对映射文件的声明', '没有对持久化操作捕捉异常', '没有开启事务', 2442, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下哪个Hibernate主键生成策略是实现主键按数值顺序递增的（选一项）', 'increment', 'identity', 'sequence', 'native', 2443, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在使用了Hibernate的系统中，要想在删除某个客户数据的同时删除该客户对应的所有订单数据，下面方法可行的是（选一项）', '配置客户和订单关联的cascade属性为save-update' || chr(13) || '', '配置客户和订单关联的cascade属性为all' || chr(13) || '', '设置多对一关联的inverse属性为true' || chr(13) || '', '设置多对一关联的inverse属性为false' || chr(13) || '', 2444, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下关于BeanFactory说法正确的是（选一项）', 'BeanFactory是一个接口', 'BeanFactory是一个抽象类', 'BeanFactory是一个已实现的类', 'ApplicationContext不是BeanFactory的实现', 2445, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下列哪种说法是正确的（）(选择一项)' || chr(10) || '' || chr(10) || '', '实例方法可直接调用超类的实例方法', '实例方法可直接调用超类的类方法', '实例方法可直接调用其他类的实例方法', '实例方法可直接调用本类的类方法 ', 2446, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', 'Java程序的种类有（）' || chr(10) || '(选择三项)' || chr(10) || '', 'Servlet ', 'Applet ', 'Application', '类（Class）', 2447, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于res/raw目录说法正确的是？(选择一项)' || chr(10) || '' || chr(10) || '', '这里的文件是原封不动的存储到设备上会转换为二进制的格式', '这里的文件最终以二进制的格式存储到指定的包中', '这里的文件是原封不动的存储到设备上不会转换为二进制的格式', '这里的文件最终不会以二进制的格式存储到指定的包中', 2448, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '下列说法正确的有（）' || chr(10) || '(选择三项)' || chr(10) || '', 'javac.exe 能指定编译结果要置于哪个目录（directory）', '在编译程序时，所能指定的环境变量不包括class path ', 'javac 一次可同时编译数个java 源文件', '环境变量可在编译source code时指定', 2449, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '下列标识符不合法的有（）(选择三项)', '$Usdollars', 'new ', '1234', 'car.taxi', 2450, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '下列说法错误的有（）(选择三项)', 'int number=[]={31,23,33,43,35,63} ', '数组的大小可以任意改变 ', '数组是一种对象', '数组属于一种原生类 ', 2451, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '不能用来修饰interface 的有（）(选择三项)', ' protected', 'private', 'static', ' public', 2452, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '下列说法错误的有（）(选择三项)', 'Java语言中的方法必定隶属于某一类（对象），调用方法与过程或函数相同', 'Java面向对象语言容许单独的过程和函数存在', 'Java面向对象语言容许单独的方法存在', 'Java语言中的方法属于类的成员（member）', 2453, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '下列说法错误的有（）(选择三项)', 'J2SDK就是Java API ', 'Appletviewer.exe可利用jar 选项运行.jar 文件 ', '能被java.exe 成功运行的java.class 文件必须有main()方法', '能被Appletviewer成功运行的java.class 文件必须有main()方法 ', 2454, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '当 Activity 被消毁时，如何保存它原来的状态（）(选择一项)', '实现 Activity 的 onSaveInstanceState（）方法', '实现 Activity 的 onSaveInstance（）方法', '实现 Activity 的 onInstanceState（）方法', '实现 Activity 的 onSaveState（）方法', 2455, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '关于 Intent 对象说法错误的是（）(选择一项)', ' 在 android 中，Intent对象是用来传递信息的', ' Intent 对象可以把值传递给广播或 Activity', '利用 Intent 传值时，可以传递一部分值类型', '利用 Intent 传值时，它的 key 值可以是对象', 2456, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在 android 中，ArrayAdapter 类是用于（）(选择一项)', '用于把数据绑定到组件上', '它能把数据显示到 Activity 上', '它能把数据传递给广播', '它能把数据传递给服务', 2457, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '使进度条变横向的系统样式是（）(选择一项)', 'android:style/Widget.ProgressBar.Horizontal', 'android:style/ProgressBar.Horizontal', 'style/Widget.ProgressBar.Horizontal', 'style/ProgressBar.Horizontal', 2458, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'struts提供了Action接口定义了5个标准字符串常量，不包括的有（）(选择一项)', 'SUCCESS', 'NONE', 'REG', 'LOGIN', 2459, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下列描述中哪个不是Struts2的优势（选择一项）', '无侵入式设计', '侵入式设计', '提供了拦截器', '提供了类型转换器', 2460, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列不属于MVC设计模式的是（选择一项）', '模型层', '控制层', '数据层', '视图层', 2461, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Struts2框架的核心类库是：（选择一项）', 'xwork-core-.jar', 'ognl-.jar', 'freemarker-.jar', 'struts2-core-.jar', 2462, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'StrutsPrepareAndExecuteFilter过滤器应该在哪个文件中部署（选择一项）', 'validators.xml', 'struts.xml', 'web.xml', 'index.jsp', 2463, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2核心Jar包需拷贝到哪个目录（选择一项）', 'WEB-INF/lib', 'WEB-INF', 'WebRoot', '以上说法都不正确', 2464, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '假设在session中存在名为username的属性，通过OGNL访问该属性，正确的代码是（选择一项）', '#username', '#session.username', 'username', '$username', 2465, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '如下代码说法正确的是(选择一项)' || chr(10) || '<s:iterator id="book" value="#arr.booklist" status="st">' || chr(10) || ' <s:if test="st.odd">' || chr(10) || '  <tr bgcolor="yellow"></tr>' || chr(10) || ' <s:if>' || chr(10) || ' <s:else>' || chr(10) || '  <tr bgcolor="red"></tr>' || chr(10) || ' </s:else>' || chr(10) || '</s:iterator>', '奇数行为黄色', '奇数行为红色', '偶数行为黄色', '偶数行为蓝色', 2466, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '以下不属于开发struts2的业务控制器Action的方法的是（选择一项）', 'POJO', '实现Action接口', '继承ActionSupport类', '实现Validator接口', 2467, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '为了实现基于模型的驱动，Action组件必须实现ModelDriver接口，同时实现ModelDriver接口中的(选择一项)方法', 'getUser', 'getModel', 'execute', 'setUser', 2468, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '若要在Action中访问session的信息需要实现（）接口（选择一项）', 'RequestAware', 'ApplicationAware', 'ParameterAware', 'SessionAware', 2469, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '以下属于struts2的控制器组件是（选择一项）', 'Action', 'ActionForm ', 'ActionServlet', 'dispatchAction', 2470, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '以下属于struts2的体系结构的是（选择两项）', 'struts2控制器组件', 'struts2配置文件', 'FilterDispathcer', 'Action', 2471, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '以下属于struts2配置文件中的配置元素是（选择两项）', '<package>', '<action>', '<form-beans> ', '<action-mappings>', 2472, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '关于struts1和struts2对比的说法正确的是（选择一项）', 'struts1要求Action类继承struts1框架中的Action父类，struts2中则不一定需要继承，可以是POJO类', 'struts1中的Action不是线程安全的，而struts2中的Action是线程安全的', 'struts1和struts2中都使用ActionForm对象封装用户的请求数据', 'struts1使用OGNL表达式语言来支持页面效果，struts2通过ValueStack技术使标签库访问值', 2473, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面关于新增配置文件节点代码中应该填入的是（ ）（选一项）' || chr(10) || 'Configuration cf = ConfigurationManager.OpenExeConfiguration(“配置文件");' || chr(10) || 'cf.AppSettings.Settings.Add(“color”, “red”);      //新增appSettings节点' || chr(10) || '____________________;', 'ConfigurationManager.RefreshSection(“appSettings”)', 'cf.Save()', 'return cf', 'cf.AppSettings.Settings["color"].Value = status', 2474, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '下面这段代码是EPCSDK.dll中单标签读取函数的运用，其中空白处应填入（ ）（选一项）' || chr(10) || 'byte[] data = new byte[12];' || chr(10) || 'if (EPCSDKHelper.IdentifySingleTag(hCom, data, null, 0))' || chr(10) || '{' || chr(10) || '    StringBuilder sb = new StringBuilder(__________);' || chr(10) || '    foreach (byte b in data)' || chr(10) || '       sb.Append(Convert.ToString(b, 16', 'data', 'data.length', 'data.Length * 2', 'data.Length * 3', 2475, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '下面这段代码执行后，写入到标签里的数据是（ ）（选一项）' || chr(10) || 'byte[] data = new byte[12];' || chr(10) || 'data = Encoding.Default.GetBytes("0123456789ABCDEF");' || chr(10) || 'if (EPCSDKHelper.FastWriteTagID(_handle, 12, data, 0))' || chr(10) || '{' || chr(10) || '    MessageBox.Show("写入EPC编码成功");' || chr(10) || '}' || chr(10) || 'else' || chr(10) || '{' || chr(10) || '    MessageBox.Show("写入EPC失败");' || chr(10) || '}', '0123456789ABCDEF', '0123456789AB', '0123456789', '012345', 2476, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '现有一套不停车收费系统需采用RFID技术对车辆进行识别，应采用（ ）标签（选一项）', '卡片类标签', '标签类标签', '注塑类抗金属标签', '防撕标签', 2477, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在 C#中要引用外部实现的API函数时需要引入的命名空间是（ ）（选一项）', 'System.Threading;', 'System.Configuration;', 'System.Collections.Generic;', 'System.Runtime.InteropServices;', 2478, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在C#中将字节序列解码为字符串的方法是（ ）（选一项）', 'Encoding.Default.GetBytes()', 'Encoding.Default.GetEncoder()', 'Encoding.Default.GetString()', 'Encoding.Default.GetByteCount()', 2479, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在C#中要读取配置文件必须要引入（ ）命名空间（选一项）', 'System.Threading;', 'System.Configuration;', 'System.Collections.Generic;', 'System.Runtime.InteropServices;', 2480, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在EPCSDK.dll提供的函数中能够对标签所有区域进行读取的是（ ）（选一项）', 'IdentifySingleTag', 'ReadFirmwareVersion', 'ReadTag', 'IdentifyUploadedMultiTags', 2481, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '在WinForms的窗体继承中父窗体控件中的（ ）属性可以控制是否可以被子窗体修改（选一项）', 'Modifiers', 'Locked', 'TopMost', 'Enabled', 2482, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在WinForms中要实现窗体的动画效果，需要借助（ ）动态库的API函数（选一项）', 'mpr.dll', 'EPCSDK.dll', 'kernel32.dll', 'user32.dll', 2483, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '假如发布了一个名为ASP.NET的应用系统，域名为My_web.com，本机的IP地址是202.163.45.68。下面的几种方式哪一种是可以访问这个系统的（选一项）', '在本机：http://127.0.0.1/aspnet', '在局域网内的其它计算机： http://127.0.0.1/aspnet', '在因特网上的其它计算机： http://127.0.0.1/aspnet', '在本计算机', 2484, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在Spring框架中，面向方面编程(AOP) 的目标在于（选一项）', '编写程序时不用关心其依赖组件的实现', '将程序中涉及的公用问题集中解决', '封装 JDBC 访问数据库的代码，简化数据访问层的重复性代码', '实现页面的“无刷新”', 2485, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ASP.NET窗体文件的扩展名为（选一项）', 'aspx', 'ascx', 'Inc', 'Html', 2486, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'response对象的(  )方法用于网页重导向另一个地址。（选一项）', 'transfer', 'link', 'redirect', 'execute', 2487, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '在ASP.NET中，文本框控件TextBox允许多种输入模式，包括单行、多行和密码输入模式，这是通过设置其（）属性来区分的。（选一项）', 'Style', 'TextMode', 'Type', 'Input', 2488, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '某个用ASP.Net技术开发的网站拥有大量访问量，最近该网站经常因为服务器内存占用率过高而停机。作为该网站的技术人员的你仔细检查了该网站系统，发现内存占用率过高是因为每个用户都有大量数据保存在Session中，为了解决该问题你因该进行（   ）处理。（选一项）', '将保存在Session中的数据保存在Application中', '将保存在Session中的数据保存在Cookie中', '将Session中安全性要求不高的数据保存在Cookie中，不经常使用的数据保存在数据库中', '将Session中对安全性要求不高的数据保存在Application中，不经常使用的数据保存在数据库中', 2489, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下列哪个服务器控件不对WEB窗体进行输入验证（选一项）', 'Button', 'LinkButton', 'HyperLink', 'ImageButton', 2490, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '下面代码为一个ASP.NET Web应用程序Global.asax文件中的部分代码，当某个用户第一次访问应用程序的第一个页面时，页面中输出（选一项）' || chr(10) || 'void Session_Start(Object sender,EventArgs e)' || chr(10) || '{    Response.Write("1");  }' || chr(10) || 'void Application_BeginRequest(Object sender,EventArgs e)' || chr(10) || '{    Response.Write("3");  }' || chr(10) || 'void Application_EndRequest(Object sender,EventArgs e)' || chr(10) || '{    Response.Write("4");  }', '34', '341', '314', '1', 2491, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '能提供内容补全的组件是（）(选择一项)', ' EditText', 'DatePicker', 'TimePicker', 'TimePicker', 2492, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '下列属于 Activity 的状态是()(选择三项)', '暂停状态', '运行状态', ' 睡眠状态', '停止状态 ', 2493, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '关于 Handler 的说话正确的是(）(选择一项)', '它实现不同线程间通信的一种机制', '它避免了新线程操作 UI 组件', '它采用栈的方式来组织任务的', '它可以属于一个新的线程' || chr(10) || ' ' || chr(10) || '', 2494, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '关于广播的作用，正确的说法是（）(选择两项)', '它是用接收系统发布的一些消息的', '它可以帮助 service修改用户界面', '它可以启动一个 Service ', '它可以启动一个 Activity', 2495, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '下面属于 View 的子类的是（）(选择两项)', 'ViewGroup', 'TextView', 'Activity', 'Service', 2496, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '在 main.xml 中，定义一个组件时，有两个属性必须写（）(选择两项)', 'android:text', 'android:layout_height ', 'android:id="@+id/start"', 'android:layout_width ', 2497, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于 Sqlite 数据库，不正确的说法是（）(选择一项)', 'SqliteOpenHelper类主要是用来创建数据库和更新数据库', 'SqliteDatabase 类是用来操作数据库的', '在 每 次 调 用 SqliteDatabase 的getWritableDatabase() 方 法 时 ， 会 执 行 SqliteOpenHelper 的onCreate 方法。', '当数据库版本发生变化时，可以自动更新数据库结构', 2498, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '地理信息区别与其他信息的显著标志是 （单选）', '属于属性信息 ', '属于共享信息', '属于社会经济信息 ', '属于空间信息 ', 2499, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '“3S”技术指的是（单选）', 'GIS、RS、GPS ', 'GIS、DSS、GPS', 'GIS、GPS、OS ', 'GIS、DSS、RS', 2500, 402);
commit;
prompt 2500 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '矢量结构的特点是（单选）', ' 定位明显、属性隐含', '定位明显、属性明显', '定位隐含、属性明显 ', '定位隐含、属性隐含', 2501, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '描述地理实体本身位置、形状和大小等的数据为（单选）', ' 属性数据', '几何数据 ', '关系数据', '统计数据', 2502, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '世界上第一个地理信息系统是（单选）', '美国地理信息系统 ', '加拿大地理信息系统', '日本地理信息系统 ', '奥地利地理信息系统', 2503, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在GIS数据中，把非空间数据称为（单选）', '几何数据', '关系数据', '属性数据', '统计数据', 2504, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '地理数据一般具有的三个基本特征是（单选）', '空间特征、属性特征和时间特征', '空间特征、地理特征和时间特征', ' 地理特征、属性特征和时间特征', '空间特征、属性特征和拓扑特征', 2505, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'GIS区别于其它信息系统的一个显著标志是（单选）', '空间分析 ', '计量分析', '属性分析', '统计分析', 2506, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'GIS进入推广应用阶段是20世纪（单选）', '60年代 ', '70年代', '80年代', '90年代', 2507, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '数字地球是美国人1998年由（单选）', '戈尔提出的', '克林顿提出的', '布什提出的', '基辛格提出的', 2508, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '在GIS中，明确定义空间结构关系的数学方法称为（单选）', ' 邻接关系', '关联关系', '包含关系', '拓扑关系', 2509, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '关于struts2配置文件说法正确的是（选择一项）', '必须在WEB-INF/classes目录下', '名字必须为struts.xml', '配置Action时，必须配置包信息', '使用<forward>元素配置转发', 2510, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '关于struts2包的说法正确的是（选择三项）', 'struts2框架使用包来管理常量', 'struts2框架定义包时必须指定name属性', 'struts2框架中配置包时，必须继承自struts-default包，否则会报错', 'struts2框架中使用包来管理Action', 2511, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2动态调用的格式为（选择一项）', 'ActionName?methodName.action', 'ActionName! methodName.action', 'ActionName*methodName.action', 'ActionName@mathodName.action', 2512, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '如果要实现struts2的数据校验功能（选择一项）', '普通Action类可以实现', '继承自Action接口可以实现', '继承自ActionSupport类可以实现', '继承自ActionValidate类可以实现', 2513, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '如果要实现自定义处理结果，需继承那个类（选择一项）', 'Dispathcer', 'StrutsResultSupport', 'Support', 'Action', 2514, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '实现动态返回结果，在配置<result>元素时使用（）指定视图资源（选择一项）', '${属性名} ', null, '${''属性名''}', '${"属性名"}', 2515, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '用于实现国际化的struts2标签是（选择一项）', '<s:text>', '<s:message>', '<s:textfield> ', '<s:resource>', 2516, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2默认的处理结果类型是（选择一项）', 'dispatcher', 'redirect', 'chain', 'forward', 2517, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '自定义转换器继承的抽象类是（选择一项）', 'Converter ', 'TypeConverter', 'StrutsTypeConverter', 'converts', 2518, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '自定义转换器的注册方式有（选择一项）', '只有全局注册方式', '只有局部注册方式 ', '只有全局和局部注册方式', '以上说法都不对', 2519, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '自定义拦截器类的方式有（选择两项）', '实现Interceptor接口', '实现AbstractInterceptor接口', '继承Interceptor类', '继承AbstractInterceptor类', 2520, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '在OGNL中？操作符的作用是（选择一项）', '取出符合选择逻辑的第一个元素', '取出符合选择逻辑的最后一个元素', '取出符合选择逻辑的所有元素', '以上说法都不对', 2521, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '以下属于struts2标签的是（选择两项）', 'Ajax标签', '数据访问标签', 'logic标签', 'bean标签', 2522, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '以下哪个标签是struts2中的用于循环迭代（选择一项）', '<s:property> ', '<s:iterator>', '<s:logic>', '<s:foreach>', 2523, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Struts2主要核心功能是由（  ）实现（选择一项）', ' 过滤器', '拦截器', ' 类型转换器', '配置文件', 2524, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'Struts2框架由（  ）和（  ）框架发展而来的（选择二项）', 'Hibernate', 'Struts', 'Spring', 'WebWork', 2525, 407);
commit;
prompt 2525 records loaded
set feedback on
set define on
prompt Done.
