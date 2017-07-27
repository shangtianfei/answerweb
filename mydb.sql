prompt PL/SQL Developer import file
prompt Created on 2017��6��29�� by TJH
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
values ('�ٶ��ƹ�', 408);
insert into ALLCLASS (classname, classid)
values ('��Ӧ��', 409);
insert into ALLCLASS (classname, classid)
values ('����', 410);
insert into ALLCLASS (classname, classid)
values ('��������', 411);
insert into ALLCLASS (classname, classid)
values ('����Ӫ��', 412);
insert into ALLCLASS (classname, classid)
values ('������', 413);
insert into ALLCLASS (classname, classid)
values ('��������-Net', 414);
insert into ALLCLASS (classname, classid)
values ('��������-Java', 415);
insert into ALLCLASS (classname, classid)
values ('��������-Android', 416);
insert into ALLCLASS (classname, classid)
values ('��������-HP������', 417);
insert into ALLCLASS (classname, classid)
values ('��������-������', 418);
commit;
prompt 43 records loaded
prompt Loading USERINFO...
insert into USERINFO (userid, uame, upsw, urealname)
values (15502, 'cv', 'cv', '�ɱ�');
insert into USERINFO (userid, uame, upsw, urealname)
values (100, 'zsf', 'zsf', '������');
insert into USERINFO (userid, uame, upsw, urealname)
values (101, 'lsf', 'lsf', '���ķ�');
insert into USERINFO (userid, uame, upsw, urealname)
values (102, 'wwf', 'wwf', '�����');
insert into USERINFO (userid, uame, upsw, urealname)
values (15488, 'ss', 'ss', '������������');
insert into USERINFO (userid, uame, upsw, urealname)
values (15490, 'zz', 'zz', '���������䡧');
insert into USERINFO (userid, uame, upsw, urealname)
values (15522, 'mm', 'mm', '�����飿����');
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
values ('A', '��������Java����Ƭ�Σ�������Ϊ��ѡһ�' || chr(10) || 'int price = 10, number = 0, monney = 0;' || chr(10) || 'for (int i = 0;i<2;i++){' || chr(10) || '    number++;' || chr(10) || '    --price;' || chr(10) || '    monney += number * price;' || chr(10) || '}' || chr(10) || 'System.out.println(monney);', '25', '28', '31', '20', 1, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������Java���Դ���Σ�x��y��Ϊint�������ͣ�����˵����ȷ���ǣ�ѡһ�' || chr(10) || 'if(x>y){' || chr(10) || '    x+=y;' || chr(10) || '    ++y;' || chr(10) || '}' || chr(10) || 'else{' || chr(10) || '    y+=x;' || chr(10) || '    x++;' || chr(10) || '}' || chr(10) || 'System.out.println( x + "," + y);', '��x=2, y=0�������Ϊ1��1', '��x=0, y=1�������Ϊ1��0', '��x=1, y=1�������Ϊ2��2', '��x=2, y=3�������Ϊ3��4', 2, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������JAVA���Դ���Ƭ��' || chr(10) || 'int i=6,j=4;' || chr(10) || 'System.out.println(i%j);' || chr(10) || '������Ϊ��ѡһ�', '0', '2', '1.5', '1', 3, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������JAVA����' || chr(10) || 'public static void main(String args[]) {' || chr(10) || '    int num =0;' || chr(10) || '    while(num<=2){' || chr(10) || '        num++;' || chr(10) || '        System.out.println(num);' || chr(10) || '    }' || chr(10) || '}�������ǣ�ѡһ�', '123', '012', '23', '12', 4, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������Java����' || chr(10) || 'public static void main(String args[]) {' || chr(10) || '    int num = 0;' || chr(10) || '    while(num <= 2){' || chr(10) || '        num++;' || chr(10) || '        System.out.print(num);' || chr(10) || '    }' || chr(10) || '}�������ǣ�ѡһ�', '13', '12', '023', '123', 5, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������ĳ���' || chr(10) || 'void fun(int a ,int b,int c) {' || chr(10) || '    a=456; b=567; c=678;' || chr(10) || '}' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int x=10,y=20,z=30;' || chr(10) || '    fun(x,y,z);' || chr(10) || '    System.out.println(z,y,x);' || chr(10) || '}' || chr(10) || '�������ǣ�ѡһ�', '30��20��10', '10��20��30', '456��567��678', '678��567��456', 6, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����Java���룬���£�' || chr(10) || 'public byte count(byte b1,byte b2){' || chr(10) || '    return______;' || chr(10) || '}' || chr(10) || 'Ҫʹ��δ����ܹ�����ɹ������ߴ��������루ѡһ�', '(byte)(b1-b2)', '(byte)b1-b2', 'b1-b2', '(byte)b1/b2', 7, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '����java�������£�Ҫʹ����δ����ܹ�����ɹ������ߴ��������루ѡ���' || chr(10) || 'public int count(char c,int i,double d){' || chr(10) || '       return______;' || chr(10) || '}', 'c*i', 'c*(int)d', '(int)c*d', 'i*d', 8, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ĳJava�����main���������£�' || chr(10) || 'public static void main(String[] args) {' || chr(10) || '    System.out.print("Hello" + args[1]);' || chr(10) || '}' || chr(10) || '�������д��Σ�people world nation���ó�������н���ǣ�ѡһ�', 'Hello people', 'Hello world', 'hello people world nation', '����ʱ�����쳣', 9, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������Java����, ��������ʱ, ����(  ) ��������ȷ�ģ�ѡһ�' || chr(10) || 'public class Person{' || chr(10) || '    static int arr[] = new int [10];' || chr(10) || '    public static void main(String a[]){' || chr(10) || '        System.out.println(arr[1]);' || chr(10) || '    }' || chr(10) || '}', '����ʱ����������', '����ʱ��ȷ��������ʱ����', '���Ϊ0', '���Ϊ null', 10, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������Java���룬��������ʱ������ǣ�ѡһ�' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    for(int i = 0; i < 3; i++){' || chr(10) || '        System.out.print(i);' || chr(10) || '    }' || chr(10) || '    System.out.print(i);' || chr(10) || '}', '����ʱ����', '��ȷ���У����012', '��ȷ���У����123', '��ȷ���У����0123', 11, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������Java���룬��������֮�󣬽��������ѡһ�' || chr(10) || 'public class Test ' || chr(10) || '{' || chr(10) || 'public static void main(String args[]) {' || chr(10) || '    int Output = 10;' || chr(10) || '    boolean b1 = false;' || chr(10) || '    if((b1 == true) && ((Output += 10) == 20)) {' || chr(10) || '        System.out.println("Equal" + Output);' || chr(10) || '    }' || chr(10) || '    else {' || chr(10) || '        System.out.println("Not equal" + Output);' || chr(10) || '    }' || chr(10) || '}}', 'Equal 10', 'Equal 20', 'Not equal 10', 'Not equal 20', 12, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��������Java���룬��������֮�󣬽��������ѡһ�' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int a = 5;' || chr(10) || '    System.out.println((a % 2 == 1) ? (a + 1)/2 : a/2);' || chr(10) || '}', '1', '2', '2.5', '3', 13, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����һ�� Java Դ���� Test.Java, ����������Ӧ��ʹ�����棨  �������Ա��롢���иó��򡣣�ѡһ�' || chr(10) || '', 'Javac Test.Java' || chr(13) || '      Java Test' || chr(13) || '', 'Javac Test.Java      ' || chr(13) || 'Java Test.clsss' || chr(13) || '', 'Javac Test.Java' || chr(13) || '      Java Ttest' || chr(13) || '', 'Javac Test.Java' || chr(13) || '      Java Test.class' || chr(13) || '', 14, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����һ��java����Ĵ���Ƭ�Σ����£�����δ���ת��Ϊif��䣬������ȷ���ǣ�ѡһ�' || chr(10) || 'switch(grade){' || chr(10) || '    case''A'':score=100;break;' || chr(10) || '    case''B'':score=90;break;' || chr(10) || '    case''C'':' || chr(10) || '    case''D'':score=60;break;' || chr(10) || '    default:score=0;break;' || chr(10) || '}', 'if(grade=''A'') score=100;else if(grade=''B'') score=90;else if(grade=''C''||grade=''D'') score=60;elsescore=0;', 'if(grade=''A'') score=100; if(grade==''B'')score=90; if(grade==''C''||grade==''D'') score=60; else score=0;', 'if(grade==''A'')score=100;else if(grade==''B'')score=90;else if(grade==''C'')score=60;else if(grade==''D'')score=60;else score=0;', 'if(grade==''A'')score=100;else if(grade==''B'') score=90;else if(grade==''C''||grade==''D'') score=60;else score=0;', 15, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����Java������������ȷ��һ���ǣ�ѡһ�', '��ʶ�����ַ��ĺ�����Ը����֣�', '��ʶ�������ִ�Сд��', '�����������ͱ������������͡��ַ��͡������ͣ�', '�������ڻ����������ͣ�', 16, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����Java�﷨˵����ȷ���ǣ�ѡһ�', 'switch �Ccase ����е�default����Ǳ����', 'else���Ե���ʹ��', 'case �Ӿ����Ը��ַ���', 'else���Ǻ������ifƥ��', 17, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ṹ������������涨�����ֻ������ƽṹ�ǣ�ѡһ�', '���룬�������', '���У���״������', '˳�򣬷�֧��ѭ��', '�������ӳ��򣬺���', 18, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������µ�JAVA����' || chr(10) || 'public static void main(String args[]) {' || chr(10) || 'int i,j,num=0;' || chr(10) || 'for(i=0;i<4;i++)' || chr(10) || '    for(j=i;j<2;j++)' || chr(10) || '        num=num+j;' || chr(10) || 'System.out.println("the value of num is "+ num);' || chr(10) || '}' || chr(10) || '����ִ�к�num��ֵӦ���ǣ�ѡһ�', '2', '4', '0', '3', 19, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(10*(2-8)+10)/(5-5*2)��JAVA�����У�����ı��ʽ������Ϊ��ѡһ�', '-10', '10', '30', '-32', 20, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�Ķ������Java����' || chr(10) || 'int[] arr;' || chr(10) || 'int n = 5;' || chr(10) || 'n = n * 2 +1;' || chr(10) || 'arr = new int[n];' || chr(10) || 'System.out.println(arr.length);' || chr(10) || '��������Ľ���ǣ�ѡһ�', '5', '8', '10', '11', 21, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�� Java ������ , ���� (  ) ת�����б�ʾ���С���ѡһ�', '\a', '\n', '\r', '\f', 22, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�� JAVA����У�Java�������ὫJavaԴ�������ת��Ϊ��ѡһ�', '�ֽ���', '��ִ�д���', '��������', '��������ѡ�����ȷ', 23, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�� Java�����У����д���Ƭ�ε��������ǣ�ѡһ�' || chr(10) || 'float a = 50;' || chr(10) || 'int b = 4;' || chr(10) || 'float c = a/b;' || chr(10) || 'System.out.println(c);', '0', '12', '12.0', '12.5', 24, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Java �����У����д�����������ǣ�ѡһ�' || chr(10) || 'public static void main(String[] args) {' || chr(10) || 'int i=5, j=10;' || chr(10) || 'do {' || chr(10) || '    if(i>j) {' || chr(10) || '        break;' || chr(10) || '    }' || chr(10) || '    j--;' || chr(10) || '    i++;' || chr(10) || '}while(j!=i);' || chr(10) || 'System.out.println( i + "," + j);' || chr(10) || '}', '8,7', '9,6', '7,6', '7,8', 25, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java �����ж��������±�����double x=10.0; y=3.0;int z=2;����ǿ��ת���������������ã����ˣ�ѡһ�', '(int)(x+y/z);', '(double)(x/y);', '(int)x;', '(int)(y+z);', 26, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JAVA����У�Դ�����ļ�����չ��Ϊ��ѡһ�', '.class', '.java', '.com', '��������ѡ�����ȷ', 27, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��JAVA������' || chr(10) || '����A����8����8����ͬ��' || chr(10) || '����B��������������������char' || chr(10) || '�����ѡ��(  )����ȷ�ģ�ѡһ�', '��������������ȷ��', 'ֻ������A����ȷ��', '�����������Ǵ����', 'ֻ������B����ȷ��', 28, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JAVA�����У�(  )�����Խ�������ѭ���������������ѭ������ѡһ�', 'next', 'continue', 'switch', 'break', 29, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JAVA�����У�3/5��ֵ�ǣ�ѡһ�', '1', '0', '2', '0.6', 30, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Java�����У�5/3��ֵ�ǣ�ѡһ�', '1', '�C1', '2', '1.67', 31, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Java�����У������������б�����Ϊ���ͣ������д���ִ�к�c��ֵ�ǣ�ѡһ�' || chr(10) || 'a=2;b=5;b++;c=a+b;', '5', '6', '7', '8', 32, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java�����У��������������num��ֵΪ��ѡһ�' || chr(10) || 'int num = 0;' || chr(10) || 'num = 2>3?0:1;', '0', '1', '2', '3', 33, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JAVA�����У���̬�����ã�   �����εġ���ѡһ�' || chr(10) || '', 'static' || chr(13) || '', 'final' || chr(13) || '', 'abstract' || chr(13) || '', 'interface' || chr(13) || '', 34, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '��Java�����У����У�   ���ǺϷ��ı�ʾ����ѡ���', '$95', '_wii', '3psp', 'break;', 35, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '��JAVA�����У�����(  )�ǺϷ��ı�ʾ����ѡ���', 'Main', 'p234', '4x', 'short', 36, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JAVA������,����JAVA���Դ����ѭ����ִ�еĴ����ǣ�ѡһ�' || chr(10) || 'int n=2;' || chr(10) || 'while(n == 0){' || chr(10) || '    System.out.println(n);' || chr(10) || '    n--;' || chr(10) || '}', '0', '1', '2', '3', 37, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Java�����У����б��ʽ������Ľ���ǣ�ѡһ�' || chr(10) || '10/2 +5%10��', '5', '7', '10', '12', 38, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Java�����У����д�����������ǣ�ѡһ�' || chr(10) || 'public static void main(String[] args) {' || chr(10) || '    int[] num={10,20,51,40,50};' || chr(10) || '    System.out.println(num[2]);' || chr(10) || '}', '40', '50', '51', '60', 39, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JAVA������,���д�����������ǣ�ѡһ�' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int i,j=0;' || chr(10) || '    for(i=1;i<10;i++){' || chr(10) || '        if(i%4==0)' || chr(10) || '            continue;' || chr(10) || '        j =i; ' || chr(10) || '    }' || chr(10) || '    System.out.println(i + "," + j);' || chr(10) || '}', '10,9', '3,6', '10,8', '4,10', 40, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Java�����У����д�������н���ǣ�ѡһ�' || chr(10) || 'int a = 1, sum = 0;' || chr(10) || 'while (a< 3){' || chr(10) || '   sum = sum + a;' || chr(10) || '   a++;' || chr(10) || '}' || chr(10) || 'System.out.println(sum);', '2', '3', '4', '���϶�����', 41, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JAVA�����У����д������еĽ���ǣ�ѡһ�' || chr(10) || 'int a=1,b=3,c=5;' || chr(10) || 'if(a>b)' || chr(10) || 'if(b>c)' || chr(10) || '   c=a+b;' || chr(10) || 'else ' || chr(10) || '   c=a*b;' || chr(10) || 'System.out.println( a + "\t" + b + "\t" + c);', '1   3   5', '1   3   4', '1   3   6', '1   3   3', 42, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java�����У����ж����ַ�����Ķ��岢��ֵ��ȷ���ǣ�ѡһ�', 'char[ ] name = new char[4];', 'char[ ] name = {''S'',''V'',''S'',''E''};', 'char[4] name = "SVSE";', 'char[4] name = {''S'',''V'',''S'',''E''};', 43, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Java�����У����й��ڷ������ŵ㣬˵��������ǣ�ѡһ�', 'ͨ��ʹ�÷����������ṩ���򿪷���Ч��', 'ͨ��ʹ�÷�����������ߴ����������', 'ͨ��ʹ�÷�����ʹ�ó����ά����ø���', 'ͨ��ʹ�÷�����ʹ�ó���ı�ü�̺�����', 44, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '(5 > 10) && (3 < 8)�Ľ��Ϊ��ѡһ�', '��0', 'true', '0', 'false', 45, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'double x,y;' || chr(10) || 'x = 2;' || chr(10) || 'y = x + 3 / 2;' || chr(10) || 'System.out.println(y);' || chr(10) || '������Ӧ��Ϊ��ѡһ�', '3.5', '3.0', '2.0', '3', 46, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'if(����){����}��if(����)���������ǣ�ѡһ�', 'û������', 'һ������ִ�ж�����䣬��һ������ִ��һ�����', '����ִ�ж������', '������ִ�ж������', 47, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'int a, b;' || chr(10) || 'int count=0;' || chr(10) || 'for(a=2,b=5;a<b;a+=2,b++)' || chr(10) || '    count++ ;' || chr(10) || '����JAVA�������к�count��ֵΪ��ѡһ�', '0', '3', '2', '4', 48, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'int a[] = {3,9,5,6,4};' || chr(10) || 'System.out.println(a[4]) ;' || chr(10) || '����JAVA����ε�������Ϊ��ѡһ�', '3', '5', '4', '6', 49, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'int a=0 ;' || chr(10) || 'if(a>5&&a<5){' || chr(10) || '    System.out.println("ok");' || chr(10) || '}�������ǣ�ѡһ�', 'ok', 'false', 'û�����', 'true', 50, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'int i = 0, x = 0;' || chr(10) || 'do {' || chr(10) || '    if (i % 5 == 0)' || chr(10) || '        x++;' || chr(10) || '} ' || chr(10) || 'while (i < 20);' || chr(10) || 'System.out.println(x);' || chr(10) || '�������ǣ�ѡһ�', '4', '10', '0', '���϶�����', 51, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Java ������ĳ����Ա��д������ while ѭ������ , ���ʸ�ѭ��ִ�� (  )�顣��ѡһ�  ' || chr(10) || 'int a=5,b=15;' || chr(10) || 'while(a<b) {' || chr(10) || '    System.out.println(b-a);' || chr(10) || '    a++;' || chr(10) || '    b--;' || chr(10) || '}', '1', '5', '10', '������', 52, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', 'Java �����������´���,����x�Ķ�����,����ʹ�϶δ������ 100 ���У�ѡ���' || chr(10) || 'switch(x){' || chr(10) || 'case 100:System.out.println("100");break; ' || chr(10) || 'case 110:System.out.println("110");break;' || chr(10) || '}', 'byte x=100;', 'float x=100;', 'char x=''d'';', 'long x=100;', 53, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Java �У�byte�������͵�ȡֵ��Χ�ǣ�ѡһ�', '-256 �� 255', '-255 �� 255', '-128 �� 127', '-127 �� 128', 54, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Java �У�byte�������͵�ȡֵ��Χ�ǣ�ѡһ�', '-256 �� 255', '-255 �� 255', '-128 �� 127', '-127 �� 128', 55, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Java�����У�main�����ĸ�ʽ��ȷ���ǣ�ѡһ�', 'static void main(String[] args)', 'public void main(String[] args)', 'public static void main(String[] s)', 'public static void main(String args)', 56, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Java�����泣����������ѡһ�', '0', 'true', 'false', 'null', 57, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'JAVA�����У�����˵��int a[10];���a����Ԫ�ص���ȷ�������ǣ�ѡһ�', 'a[10]', 'a[3+1]', 'a(5)', 'a(0)', 58, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', 'Java����������һ�������Ĺ��������ѡ���', '�����ĵ�һ����ĸ��������ĸ���»��߻�$', '��������������ĸ���»��߻����ֿ�ͷ', '�����������ִ�Сд', '��һ���ַ����������ĸ�����ֺ��»�����ɵ�����', 59, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'public static void main(String args[]) {' || chr(10) || '    double x,y;' || chr(10) || '    x = 2;' || chr(10) || '    y = x + 3/2;' || chr(10) || '    System.out.println(y);' || chr(10) || '}' || chr(10) || '������������Java�����У�������Ӧ��Ϊ��ѡһ�', '3.5', '3', '2.0', '3.0', 60, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ʾ��ϵX<=Y<=Z��JAVA���Ա��ʽΪ��ѡһ�', '(X<=Y)&&(Y<=Z)', '(X<=Y)AND(Y<=Z)', '(X<=Y<=Z)', '(X<=Y)��(Y<=Z)', 61, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������java����, ��������֮��, ���������ѡһ�' || chr(10) || 'public class Test {' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int a = 5;' || chr(10) || '    System.out.println((a % 2 ==1)?(a+1)/2:a/2);' || chr(10) || '}}', '1', '2', '2.5', '3', 62, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������һ����������' || chr(10) || 'public static void main( String[] args ){' || chr(10) || '    int[] arr = {5��1��3��6��4��5��6��7��8��9};' || chr(10) || '    changeValue( arr );' || chr(10) || '    System.out.println( arr[2] );' || chr(10) || '}' || chr(10) || 'public static void changeValue(int[] arr){' || chr(10) || '    arr[2] = 5;' || chr(10) || '}' || chr(10) || '�������к�������Ϊ��ѡһ�', '5', '1', '2', '3', 63, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ĳ��������Ľ���ǣ�ѡһ�' || chr(10) || 'int i=1��b��c��' || chr(10) || 'int[] a=new int[3]��' || chr(10) || 'b=a[i];' || chr(10) || 'c=b+i;' || chr(10) || 'System.out.println(c)��', '1', '2', '0', '3', 64, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ķ����������������нϴ��ֵ' || chr(10) || 'public static int max(int x�� int y){ return ________;}' || chr(10) || '�ں��߳�Ӧ���루ѡһ�', 'x', 'y', 'x>y?x:y', 'x<y?x:y', 65, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���涨��������䣬��ȷ���ǣ�ѡһ�', 'int arr = new arr[10][2];', 'int ary = {1,2,3,4,5};', 'int[] ary = new arr[10];', 'int[] arr = {-1,"2",3,4,5};', 66, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������ڷ�������������ȷ���ǣ�ѡһ�', '�������Է��ض��ֵ', '�������뷵��һ��ֵ', '���������ж������', '�ٷ����ڿ��Զ�����������', 67, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������Щ��Java�����еĹؼ��֣�����ѡһ�' || chr(10) || '', 'sizeof�� ' || chr(13) || '', 'Abstract�� ' || chr(13) || '', 'null�� ' || chr(13) || '', 'Native��' || chr(13) || '', 68, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ѡ��(  )��JAVA�����ж����ѭ��������ͣ�ѡһ���' || chr(10) || '', 'if else' || chr(13) || '', 'loop', 'switch...case' || chr(13) || '', 'for' || chr(13) || '', 69, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�о������JAVA�����' || chr(10) || 'int i,j;' || chr(10) || 'for(i=5;i<10;i++)' || chr(10) || 'for(j=0;j<4;j++){...}' || chr(10) || 'ѭ�������ִ�д����ǣ�ѡһ�', '20', '25', '24', '30', 70, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��֪��int x=7��y=5�� x/y��ֵΪ��ѡһ�', '1', '7', '0', '2', 71, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����(    )����Java��ԭʼ�������͡���ѡһ�', 'short', 'boolean', 'unit', 'float', 72, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���²���Java�����������͵��ǣ�ѡһ�', 'int', 'float', 'String', 'boolean', 73, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���³�����������ǣ�ѡһ�' || chr(10) || 'int i;' || chr(10) || 'for (i = 1; i <= 5; i++) ' || chr(10) || '{ ' || chr(10) || 'if (i % 2 == 0)' || chr(10) || '    System.out.print("*");' || chr(10) || 'else ' || chr(10) || '    continue;' || chr(10) || 'System.out.print("#"); ' || chr(10) || '}' || chr(10) || 'System.out.print("$");', '*#*#*#$', '#*#*#*$', '*#*#$', '#*#*$', 74, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���³�����������ǣ�ѡһ�' || chr(10) || 'public static void main(String args[]) { ' || chr(10) || '    int a=11;' || chr(10) || '    System.out.println (++a);' || chr(10) || '}', '12', '11', '10', '9', 75, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���´����' || chr(10) || 'int i = 5;' || chr(10) || 'if(i < 3){' || chr(10) || '    if(i > 0 ){' || chr(10) || '        System.out.println ("ok!");' || chr(10) || '    }' || chr(10) || '    else{' || chr(10) || '        System.out.println ("yes!");' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'else{' || chr(10) || '    System.out.println ("no!");' || chr(10) || '}' || chr(10) || '�����Ӧ���ǣ�ѡһ�', 'ok!', 'yes!', 'no!', 'ok!', 76, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���»������������Java����ǣ�ѡһ�', 'if (2 == 3) System.out.println("Hi");', 'if (2 = 3) System.out.println("Hi");', 'if (true) System.out.println("Hi");', 'if (2 != 3) System.out.println("Hi");', 77, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���Ҫʹһ��ͼ������ҳ�о�����ʾ��Ӧʹ��������䣨ѡһ�', '<DIV align="center"><IMG src=image.gif></DIV>', '<IMG src=image.gif align="center">', '<IMG src=image.gif align="middle">', '<IMG src=image.gif valign="middle">', 78, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ҪΪ��ҳ����һ���ⲿ��ʽ���ļ���Ӧʹ�����£�   ����Ƿ�����ѡһ�', 'A', 'LINK', 'STYLE', 'CSS', 79, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ɸ���ѡ��ťradioһ��ֻ��ѡ��һ��������Ҫ���ó���ֵͬ�������ǣ�ѡһ�', 'type', 'name', 'value', 'checked', 80, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������ֹ���������Ҫ����<marquee>��ǩ���ĸ����ԣ�ѡһ�', 'dir', 'direction', 'scrollamount', 'scrolldelay', 81, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������������Ҫ����<input>��ǩ��type����Ϊ��ѡһ�', 'button', 'password', 'text', 'radio', 82, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ⲿ��ʽ����ļ���չ���ǣ�ѡһ�', '.OSS', '.DSS', '.CSS', '.asa', 83, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ά��(WWW)ʹ�õ�Э���ǣ�ѡһ�', 'web', '�����', 'HTML', '���ı�����Э��', 84, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ҳ����ͨ����ʾ��������ģ�ѡһ�', '״̬��', '��ַ��', '������', '�˵���', 85, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', 'Ϊ�˸�ҳ������<H1>���ⴴ����ʽ����,ָ�������е�<H1>������ʾΪ��ɫ,������ʾΪArial. ���в�����ȷ���ǣ�ѡ���', '<STYLE TYPE="text/css">H1{color:blue}H1{font-family:Arial}>/STYLE>', 'B<STYLE TYPE="text/css">H1{color:blue;fontface:Arial}>/STYLE>', '<STYLE TYPE="text/css">H1{color:blue;font-family:Arial}>/STYLE>', '<STYLE TYPE="text/css">H1{color:blue}H1{fontface:Arial}>/STYLE>', 86, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���У�  ������ڱ�����ԵĶ��뷽ʽ��ѡһ�', '�����', '�Ҷ���', '����', '����', 87, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '������Щ��Ƿ�����Ϊ�������ԣ���ֻ��Ҫָ�����ԵĴ��ڣ�������ָ����ֵ�ı�Ƿ����ԣ���ѡ���', 'noshade', 'width', 'selected', 'size', 88, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���У�����չ������Դ������IMG��Ƿ�ֱ�Ӳ������ҳ�С���ѡһ�', 'PNG', 'JPG', 'SWF', 'GIF', 89, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���й��ڸ��������������ȷ��һ���ǣ�ѡһ�', '��ѡ��ťһ�������������������ϵ���ʽ����', '��ѡ���ڱ���һ�㶼���ǵ������ֵģ����Ƕ����ѡ��ͬʱʹ��', 'ͼƬ��������������ύ��ť������', '���ǲ������ڱ����в���ͼƬ��', 90, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����ܹ���ȷ����һ��htmlҳ���е�����ͬһĿ¼�µ�"StyleSheet1.css"��ʽ����ǣ�ѡһ�', '<style>@import StyleSheet1.css</style>', '<link rel="stylesheet" type="text/css" href="StyleSheet1.css">', '<link rel="stylesheet1.css" type="text/css">', '<link rel="stylesheet" type="text/javascript" href="../htm/StyleSheet1.css">', 91, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����������ȷ���ǣ�ѡһ�', 'JAVA���Գ������Ǵӵ�һ������ķ�����ʼִ��', '��JAVA���Գ����У�Ҫ���õķ���������main()�����ж���', 'JAVA���Գ������Ǵ�main()������ʼִ��', 'JAVA���Գ����е�main()����������ڳ���Ŀ�ʼ����', 92, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����ַ������в��Ϸ����ǣ�ѡһ�', '''|''', '''\''''', '"\n"', '''��''', 93, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������JAVA���Գ�����������к�Ľ��Ϊ��ѡһ�' || chr(10) || 'public static  void main(String args[]) {' || chr(10) || '    int a = 2;' || chr(10) || '    int b = 3;' || chr(10) || '    int c = a>b?a:b;' || chr(10) || '    System.out.println(c);' || chr(10) || '}', '2', '3', '1', '0', 94, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����µ�JAVA���Գ������к�m��ֵΪ��ѡһ�' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int a=4;' || chr(10) || '    int m=0;' || chr(10) || '    int i,j;' || chr(10) || '    for(i=0;i<a;i++)' || chr(10) || '        for(j=0;j<=i;j++)' || chr(10) || '            m++;' || chr(10) || '}', '9', '10', '12', '16', 95, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����³��� ' || chr(10) || 'public static void main(String args[]) {' || chr(10) || '    int x=3, y=2; ' || chr(10) || '    System.out.println(x/y); ' || chr(10) || '} ' || chr(10) || '�������к���������ǣ�ѡһ�', '3', '2', '1', '0', 96, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�Ķ������JAVA ���Դ��룬�������ǣ�ѡһ�' || chr(10) || 'int x,y=1,z=0;' || chr(10) || 'if(z<10)' || chr(10) || '    x=3;' || chr(10) || 'else if(y==0)' || chr(10) || '    x=5;' || chr(10) || 'else' || chr(10) || '    x=7;' || chr(10) || 'System.out.println(x-y);', '7', '3', '4', '2', 97, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JAVA�����У�������ȷ���ַ��ͳ����ǣ�ѡһ�', '����', '''9''', '#', '365', 98, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JAVA�����У�����()���߼�����������ȼ���ߵģ�ѡһ�', '!', '&&', '||', '|', 99, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '��Java�����У�������������Ϸ����У�ѡ���', 'variable123', '123varable', 'private', 'variable_123', 100, 101);
commit;
prompt 100 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Java�����У����������������ǣ�ѡһ�' || chr(10) || 'public static void fun(int a,int b,int c) {' || chr(10) || '    c = a * b;' || chr(10) || '}' || chr(10) || 'public static void main(String[] args) {' || chr(10) || '    int c = 0;' || chr(10) || '    fun(2,3,c);' || chr(10) || '    System.out.println(c);' || chr(10) || '}', '0', '1', '6', '�޷�ȷ��', 101, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java�����У���֪ a Ϊint �ͣ�b Ϊ double�ͣ�c Ϊ float �ͣ�d Ϊ char �ͣ�����ʽ a+b*c-d/a �� �������Ϊ��ѡһ�', 'int', 'double', 'float', 'char', 102, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��JAVA�����У�������ȷ�ĺ���������ʽ�ǣ�ѡһ�', 'double run(x,y);', 'double run(int x;int y);', 'double run(int x,int y);', 'double run(int x,y);', 103, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��java�����У������¶���' || chr(10) || 'public static void f (int x,int y) {' || chr(10) || '    int t ;' || chr(10) || '    if(x>y){' || chr(10) || '        t=x;' || chr(10) || '        x=y;' || chr(10) || '        y=t;' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int a=4,b=3,c=5;' || chr(10) || '    f(a,b);' || chr(10) || '    System.out.println(a,b,c);' || chr(10) || '}�������ǣ�ѡһ�', '3,4,5', '5,3,4', '4,5,3', '4,3,5', 104, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JAVA�����У���������ĳ���κ������ѡһ�' || chr(10) || 'char a[],b[] = {''c'',''h'',''i'',''n'',''a''};' || chr(10) || 'a=b;' || chr(10) || 'System.out.println(a);', 'china', 'ch', 'chi', '�������', 105, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��JAVA�����У�ִ�������ѭ����x��ֵΪ��ѡһ�' || chr(10) || 'public static void main(String args[]) {' || chr(10) || '    int y=1,x=1;' || chr(10) || '    for(;y<=50;y++) {' || chr(10) || '        if(x==10)' || chr(10) || '            break;' || chr(10) || '        if(x%2==1) {' || chr(10) || '            x =3;' || chr(10) || '            continue;' || chr(10) || '        }' || chr(10) || '        x =3;' || chr(10) || '    }' || chr(10) || '}', '1', '2', '3', '4', 106, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��JAVA�����У�ִ����䣺char ch = ''A'' + 3;��ch��ֵΪ��ѡһ�', '����ȷ��', '67', '''C''', '''D''', 107, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java�����ж��������±�����char ch;���и�ֵ�����ȷ���ǣ�ѡһ�', 'ch = "strtest"', 'ch = ''2''', 'ch = ''2345''', 'ch = strtest', 108, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '��Java���������¶��壺int[] a= new int[10];���a����Ԫ�ص���ȷ�����ǣ�ѡ���', 'a[10]', 'a[3+1]', 'a(5)', 'a[0]', 109, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��JAVA�������������¶��壬����ʽa*b+d-c��ֵ������Ϊ��ѡһ�' || chr(10) || 'char a;' || chr(10) || 'int b;' || chr(10) || 'float c;' || chr(10) || 'double d;', 'float', 'int', 'char', 'double', 110, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '��JAVA�������������鲻�ǺϷ����û���ʶ����ѡ���', 'integer ��  1ch', 'Int ��  scan', 'case  ��  public', '_ch �� integer', 111, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JAVA��, ���۲���������ʲô, ����(    )ѭ��������ִ��һ�Ρ���ѡһ�', 'for', 'do��while', 'while', 'while��do', 112, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��JAVA�У���   ���ؼ���������ֹѭ������ѡһ�', 'return', 'continue', 'break', 'exit', 113, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Java�У�����(   )��䲻��ͨ�����롣��ѡһ�', 'String s = "john" + "was" + "here";', 'String s = "john" + 3;', 'int a = 3 + 5;', 'float f = 5 + 5.5;', 114, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Java��������һ�д��벻���ֱ��뾯�����󣿣�ѡһ�' || chr(10) || '', 'float f = 1.3;' || chr(13) || '', 'char c = "a";' || chr(13) || '', 'byte b = 257;' || chr(13) || '', 'int i = 10;' || chr(13) || '', 115, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java�����´���������ǣ�ѡһ�', 'break��䲻������ѭ������switch�������κ��������', '��switch �����ʹ��break����continue����������ͬ', '��ѭ�������ʹ��continue�����Ϊ�˽�������ѭ������������ֹ����ѭ��', '��ѭ�������ʹ��break�����Ϊ��ʹ��������ѭ���壬��ǰ����ѭ��', 116, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ִ������ Java ���Դ���κ� ,k ��ֵ�ǣ�ѡһ�' || chr(10) || 'int k =45,a =18,b =23,c =9;' || chr(10) || 'k=a<b?b:a;' || chr(10) || 'k=k>c?c:k;', '23', '18', '45', '9', 117, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '<A href="#">����ʾ�������ǣ�ѡһ�', '��ʾ�ӵ�ǰҳ����ת����Ϊ' || chr(13) || '#��ҳ��', '��ʾ�ӵ�ǰҳ����ת����ǰҳ������Ϊ' || chr(13) || '#��ê��', '��ʾ�ѵ�ǰλ������Ϊ��#��', '��ʾ�����ӣ������κ���ת', 118, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<form>��ǩ������ָ������Ҫ�ύ�ĵ�ַ����Ҫ�������ԣ�ѡһ�', 'name', 'method', 'action', 'onsubmit', 119, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '<img>��ǩҪ��ʾͼƬ����Ҫ���õ������ǣ�ѡһ�', 'href', 'background', 'rel', 'src', 120, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<marquee>��ǩ�����ù����Ĵ����õ��������ǣ�ѡһ�', 'behavior', 'scrollamount', 'loop', 'direction', 121, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'html�ĵ���һ���ı��ļ������У�  ����չ����ѡһ�', 'html ���� .htm', '.js', '.doc', '.gif', 122, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'html�ĵ����ļ�������ɣ���ѡһ�', 'html���֣�ͷ����,���Ĳ��֡�', 'html���֣�ͷ����,title����', 'html���֣�head����', 'title ���֣�html���֣�p����', 123, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Iframe��ܵ�����src��ʾ��ѡһ�', 'Դ�ļ�', '���Ҫ���ص�ҳ���ַ', '����Ƿ���������', '��ܵı߿�', 124, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'WWW�ϵ�������Ϣ�����ԣ�������ʽ�ṩ�ġ���ѡһ�', 'DOC', 'TXT', 'HTML', 'EXE', 125, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���������Ԥ����ĸ�ʽ��ʾ�ı������ı������������ʾʱ��ѭ��HTMLԴ�ĵ��ж���ĸ�ʽ��ѡһ�', '<ADDRESS>', '<BLOCKQUOTE>', '<PRE>', '<SPAN>', 126, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���߿�����Ϊ��  ���������������ʾʱ��û�б߿��ˡ���ѡһ�', '0', '1', '2', 'null', 127, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���������ĵ�Ԫ�ǣ�ѡһ�', '��', '��', '��Ԫ��', '�к���', 128, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '����Internet Explorer �����������ʹ�ã�  ����ǽ�������ӵ���ҳ�ϡ���ѡ���', '<BGSOUND>', '<EMBED>', '<SOUND>', '<EMBEDSOUND>', 129, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���������б�ѡ�����˵��������ǣ�ѡһ�', '�������óɵ�ѡ', '�������óɶ�ѡ', '��������size��ֵĬ��Ϊ0ʱ����˵��һ��ֻ�ܿ���һ��ѡ��ֵ', '��<select  multiple="multiple"  id="aa"></select>�У�multiple������������б�Ϊ��ѡ', 130, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������HTML��䣺' || chr(10) || '<EMBED SRC ="firework.avi"  WIDTH = "250"  HEIGHT = "150" ' || chr(10) || 'AUTOSTATR = "TRUE">' || chr(10) || '����˵����ȷ���ǣ�ѡһ�', '�����ʵ������ҳ����������ļ�firework.avi', '���ļ������Զ�����', '����ͨ�����LOOP����ָ�����ŵĴ���', 'WIDTH �� HEIGHT ����ָ��ҳ��ĳߴ�', 131, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ҳ����ӱ���ɫ����Ҫ�������Եı�ǩ�ǣ�ѡһ�', '<html>', '<head>', '<tilte>', '<body>', 132, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������µ�HTML����Ƭ�Σ�' || chr(10) || '...' || chr(10) || '<h1 style ="font-style:italic;color:limegreen;font-size=30">' || chr(10) || '    hello!Nice to meet you !' || chr(10) || '</h1>' || chr(10) || '<h1>' || chr(10) || 'this is the default display of an h1 element' || chr(10) || '</h1>' || chr(10) || '...' || chr(10) || '������������ȷ�ǣ�ѡһ�', '��һ��h1�������ض�����ʽ', '�ڶ���h1����ϵͳĬ�ϵ���ʽ', '"hello!Nice to meet you !"��������ɫ��ǳ��ɫ(limegreen)', '"this is the default displayof an h1 element"�������СΪ30', 133, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���ڳ����ӣ�����˵����ȷ���ǣ�ѡһ�', '�����ӵı�Ƿ�����<A>,���Ҫ����ê�㣬����ʹ������name��������ɡ�', '��������Ҫʹ��src����ָ������Ŀ���URL��', '������Ŀ�겻�����Ǳ�վ������ҳ��ĳһ���֡�', '�����ӵ�Ŀ��ҳ�治��������һ����ҳ��', 134, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ı����룬Դ�������ò���ȷ��һ���ǣ�ѡһ�', '���ж��룺<div align="middle">��</div>', '���Ҷ��룺<div align="right">��</div>', '������룺<div align="left">��</div>', '���˶��룺<div align="justify">��</div>', 135, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������ʽ������˵��������ǣ�ѡһ�', '�����Ž�ѡ�����������������ж��������ڣ�����CSS��ʽ��', 'ð�Ž���������������ֵ�ֿ���', '�ֺű�ʾһ�����Զ���Ľ�����', '��ѡ����ʹ��HTMLԪ�ص�class���ԡ�', 136, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ϲ���Ԫ��3��Ϊ1�У�����������ȷ���ǣ�ѡһ�', '<td colspan=3></td>', '<td rowspan=3></td>', '<td cols=3></td>', '<td rows=3></td>', 137, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��֪services.html��text.html��ͬһ�������ϣ�������ͬһ�ļ����С������ĵ�services.html���ļ���information �У�proposals�������ĵ�services.html�С���Ҫ����text.html�ĵ��б�дһ�������ӣ����ӵ��ĵ�services.html��proposals���䡣���������ȷ���ǣ�ѡһ�', '<A HREF = "services.html#proposals">Link</A>', '<A HREF = "information/services.html#proposals">Link</A>', '<A HREF = "#proposals">Link</A>', '<A HREF = "information#proposals">Link</A>', 138, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����Ҫ����ҳ����ʾ�������ݣ�' || chr(10) || '������SVSE��ѧԱ' || chr(10) || '��Ҫ��"SVSE" �ĸ�����25��������ʾ' || chr(10) || '���������ȷ���ǣ�ѡһ�', '<p>������<DIV STYLE="font-size:25">svse</DIV>��ѧԱ', '<P>������< DIV FONT ="font-size:25">svse</SPAN>��ѧԱ', '<P>������<SPAN FONT="font-size:25">svse</SPAN>��ѧԱ', '<P>������<SPAN STYLE="font-size:25">svse</SPAN>��ѧԱ', 139, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���Ը�����ҳ��֮������λ�õı�ǩ�ǣ�ѡһ�', '<div>', '<span>', '<talbe>', '<frameset>', 140, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ҳ�е�ÿ����ܴ��ڣ���ʾ���ǣ�ѡһ�', '��������ҳ', '��ҳ��һ����', 'һ��ͼƬ', 'һ������', 141, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������ʹ��OutLook Express�����ʼ�ʱ�����Ͳ��ܳɹ�������Ϊ�����ռ���Ӧ�ø�Ϊ��ѡһ�', 'xiaoming$sohu.com', 'xiaoming@sohu.com', 'xiaoming#sohu.com', 'xiaoming.sohu.com', 142, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������Web������֮������໥ͨ�ŵ�Э���ǣ�ѡһ�', 'FTP', 'IPX/SPX', 'TCP/IP', 'HTTP', 143, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ê���ӵĴ�����������Ҫ�õ������Էֱ��ǣ�ѡһ�', 'src  ' || chr(9) || '  name', 'name  href', 'href   src', 'href   name', 144, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Ĭ������£���HTML�ĵ���ʹ�ã�����ǻ���ˮƽ�ߡ���ѡһ�', '<LEN>', '<LINE>', '<HR>', '<P>', 145, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ܹ��ύ���İ�ť��type���Ե�ֵӦ��Ϊ��ѡһ�', 'button', 'reset', 'submit', 'hidden', 146, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ѡ��������<font>������Ե�һ�ѡһ�', 'size', 'align', 'color', 'face', 147, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ÿһ�������Ƕ��һ���ļ�����һ����3����ܵ���ҳ������У�  �����ļ�����ѡһ�', '3', '4', '5', '6', 148, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������˼���Java���鼮���۸�(��λԪ)�ֱ���32��40��28��30��18��Ϊ�˰���' || chr(9) || '�����Щ�������������õ����18��28��30��32��40��������д������Java���룬�����ں��ߴ�Ӧ����д�Ĵ����ǣ�ѡһ�' || chr(10) || 'public static void main(String args[]){' || chr(10) || '    int price[5] = {30,40,20,32,18};' || chr(10) || '    int i,j,temp;' || chr(10) || '    for(i=0;i<5;i++){' || chr(10) || '        for(j=0;j<5-i-1;j++){' || chr(10) || '            if(_________){' || chr(10) || '                temp=price[j];' || chr(10) || '                price[j]=price[j+1];' || chr(10) || '                price[j+1]=temp;' || chr(10) || '            }' || chr(10) || '        }' || chr(10) || '    }' || chr(10) || '}', 'price[j]>price[j+1]', 'price[j]<price[j+1]', 'j>i', 'i<j', 149, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ܽ���JAVA���Ա�д��Դ����ת�����ֽ���������ǣ�ѡһ�', 'java', 'javac', 'javadoc', 'javab', 150, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ȷ��ʾa��10��a��0�Ĺ�ϵ���ʽ�ǣ�ѡһ�', 'a>=10 or a<=0', 'a>=10��a<=0', 'a>=10||a<=0', 'a>=10&&a<=0', 151, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '�������a��10����Ա�����a����Ԫ�صĲ���ȷ�����ǣ�ѡ���', 'a[10]', 'a[3-4]', 'a[5]', 'a[0]', 152, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��kΪ���Σ���whileѭ��ִ��(  )�Σ�ѡһ�' || chr(10) || 'int k=2; ' || chr(10) || 'while(k==0) {' || chr(10) || '    System.out.println(k);' || chr(10) || '    k--;  ' || chr(10) || '}', '10', '9', '0', '1', 153, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����˵�����:char c��''72'';�����c��ѡһ�', '����1���ַ�', '2���ַ�', '����3���ַ�', '�������', 154, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '��int �ͱ��� a��b��float �ͱ��� x��y��char �ͱ��� ch ������ȷ���岢��ֵ����ȷ��switch����ǣ�ѡ���', 'switch (x + y) { ���� }', 'switch ( ch + 1 ) { ���� }', 'switch ch { ���� }', 'switch ( a + b ){ ���� }', 155, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����һ������ int[][] arr = new[3][5]; �������й���(  )��Ԫ�ء���ѡһ�', '9', '10', '15', '12', 156, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����Java�������к�a, b,c ��ֵ�ֱ�Ϊ��ѡһ�' || chr(10) || 'int a = 1,b = 5,c;' || chr(10) || '++a;' || chr(10) || 'b++;' || chr(10) || 'c = a + b;', '2   6   8', '1  5  9', '1  5  8', '���϶�����ȷ', 157, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����Java���������У���ȷ���ǣ�ѡһ�', 'int x( int a,b )', 'boolean x( int a,int b) { return (a-b); }', 'void x( a,b )', 'int x( int a,int b) { return a-b; }', 158, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����Java����У�����ȷ��һ���ǣ�ѡһ�', 'int��$e,a,b��=10;', 'char��c,d��=��''a'';', 'float��e��=��0.0d;', 'double��e��=��0.0f;', 159, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����JAVA���Գ���β�����ѭ�����ǣ�ѡһ�', 'int i=100;while(1==1){i = i%100;if(i>100) break;}', 'for(; ;){}', 'int k=0; do {   } while(k<=0);', 'boolean b = false; while(b){};', 160, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����JAVA���Դ�����������ǣ�ѡһ�' || chr(10) || 'public static void main(String args[]){' || chr(10) || 'int i;' || chr(10) || 'for(i=0;i<3;i++) {' || chr(10) || '    switch(i) {' || chr(10) || '    case 1:System.out.print(i);' || chr(10) || '    case 2:System.out.print(i);' || chr(10) || '    default :System.out.print(i);' || chr(10) || '    }' || chr(10) || '}}', '011122', '012', '012020', '120', 161, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���д���' || chr(10) || 'public static void main(String []args){' || chr(10) || '    int i = 5;' || chr(10) || '    do {' || chr(10) || '        System.out.println(i);' || chr(10) || '        ++i;' || chr(10) || '    }while (i>5); ' || chr(10) || '}���Ϊ��ѡһ�', '��ѭ��', '5', '���򱨴�', '�޷�����', 162, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���д����У�����������������ǣ�ѡһ�' || chr(10) || 'public��class��Exercise{ ' || chr(10) || 'public��static��void��main(String��args[]){ ' || chr(10) || '    float��f = 0.0; ' || chr(10) || '    f += 1.0; ' || chr(10) || '}}', '��2�У���', '��3�У���', '��4�У���', '��6��', 163, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���е��ĸ���ֵ�������ȷ�ģ���ѡһ�' || chr(10) || '', 'char a = 12.0;' || chr(13) || '', 'int a = 12.0;' || chr(13) || '', 'int a = 12.0f;' || chr(13) || '', 'int a = (int)12.0;' || chr(13) || '', 164, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���з��������У�����ͷ����ȷ���ǣ�ѡһ�', 'public static x(double a)', 'public static int x(double y)', 'void x(double d)', 'public int x()', 165, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���й���char���͵�����˵���У���ȷ��һ���ǣ���ѡһ�', '��\r����ʾ���з���', '��\n����ʾ�س�����', 'byte�ķ�Χ��-128~128', '������Unicode���ַ��������õ�������������Ϊchar���ͳ�����', 166, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���й��ڱ�����ɲ���������ȷ��һ���ǣ���ѡһ�', '���������Ǳ�ʶ����', '�������Ǳ�ʶ����', '���������ڸ������ͣ�', '������Ϊ���������ͺ͸������ͣ�', 167, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����ĸ�������ȷ��ʶ������ѡһ�', '$million;', '$_million;', '1��$_million;', '$1_million;', 168, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������һ������ȷ��Java��ʶ��������ѡһ�', '12@34', '_student', '-class', '1234', 169, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������һ�����Java���Ե��ص㣨ѡһ�', '��׳��', '��ȫ��', '�������', '���ܿ�ƽ̨', 170, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����������ִ�к�x ��ֵ�ǣ�ѡһ�' || chr(10) || 'int a = 3, b = 4, x = 5; ' || chr(10) || 'a++;' || chr(10) || 'if( a == b )' || chr(10) || '    x = a * x;', '35', '25', '20', '5', 171, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����(  )��JAVA�����е���Чע�ͣ�ѡһ�', '/* this is a comment*/', '--this is a comment', '*this is a comment*', '/--this is a comment', 172, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����JAVA������������ǣ�ѡһ�' || chr(10) || 'int i,x[][]={{1,2,3},{4,5,6},{7,8,9}};' || chr(10) || 'for(i=0;i<3;i++)' || chr(10) || '    System.out.print(x[i][2-i]);', '1 5 9', '1 4 7', '3 5 7', '3 6 9', 173, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��������������ǣ�ѡһ�' || chr(10) || 'System.out.println(''2''+ ''2'');', '22', '4', '0', '100', 174, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����Java����Σ�' || chr(10) || 'int i,j;' || chr(10) || 'for(i = 3;i > 0;i--)' || chr(10) || '    for(j = 0;j < 5;j++)' || chr(10) || '    {...}' || chr(10) || 'ѭ�������ִ�д����ǣ�ѡһ�', '8', '15', '20', '16', 175, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����JAVA���Դ���ε��������ǣ�ѡһ�' || chr(10) || 'int j;' || chr(10) || 'for(j=1;j<10;j+=2)' || chr(10) || '    System.out.print(j);', '1 2 3 4 5 6 7 8 9', '2 4 6 8', '1 3 5 7 9', '1 2 4 6 8', 176, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��.NET��WinForms�����У�����ʹ��()���������Ӻͷ������ݿ⡣��ѡһ�', 'MDI', 'JIT', 'ADO.NET', 'System.ADO', 177, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ڣ�NET�Ŀؼ��У�Panel��GroupBox��TabControl�ȷ���ؼ�����ʱ��Ҳ����֮Ϊ��ѡһ�', '�����ؼ�', '��Ͽؼ�', '���пؼ�', '����ؼ�', 178, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��.NET�У�����Ա�ڴ�����©д��һ��������ţ������ڣ�ѡһ�', '�߼�����', '����ʱ����', '�﷨����', '�Զ������', 179, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�ڣ�Net�У���ʱ��(Timer)�ؼ��ģ�   ���¼��ñ�д��ʱ�����ĳ�����롣��ѡһ�', 'Timer', 'Start', 'Trigger', 'Tick', 180, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��.NET�У��ı���ؼ���(  )���������������Ƿ���ֻ���ġ���ѡһ�', 'ReadOnly', 'Locked', 'Lock', 'Style', 181, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��.NET�У����¹��������ռ����������ȷ���ǣ�ѡһ�', '�����ռ䲻���Խ���Ƕ��', '��һ��.cs�ļ��У�ֻ�ܴ���һ�������ռ�', '����private���ε������ռ䣬���ڲ�����Ҳ���������', '�����ռ�ʹ�ô�������������ṹ������', 182, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��.NET�У��ڴ�������ʾһ����Ϣ�򣬲��ڵ�Yes��ťʱ�رմ��ڣ���������:' || chr(10) || '     MessageBoxButtons buttons = MessageBoxButtons.YesNo;' || chr(10) || '     DialogResult result;' || chr(10) || '     // (1)�˴���д��ȷ�Ĵ���' || chr(10) || '     if(result == DialogResult.Yes) ' || chr(10) || '     {' || chr(10) || '        this.Close();' || chr(10) || '     }' || chr(10) || '������Ϊ��(1)������ʵĴ���Ӧ���ǣ�ѡһ�', 'result = MessageBox.Show(this, "Cancel this operation?", "No Server Name Specified", buttons);', 'result = MessageBox(this,"Cancel this operation?","No Server Name Specified",bottons);', 'result = MessageBox.Show("Cancel this operation?","No Server Name Specified");', 'result = MessageBox("Cancel this operation?","No Server Name Specified");', 183, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ADO.NET,�����Ǵ���һ�����ݼ��Ĵ��룬�����ܹ���ȷ��������ġ��Ĵ����ǣ�ѡһ�' || chr(10) || 'DataSet ds = new DataSet();' || chr(10) || 'DataTable dt = new DataTable();' || chr(10) || 'dt.Columns.Add("name",typeof(System.String));' || chr(10) || 'DataRow dr = dt.NewRow();' || chr(10) || 'dr[0] = "����";' || chr(10) || 'dt.Rows.Add(dr);' || chr(10) || 'ds.Tables.Add(dt);', 'Console.WriteLines(ds.Tables["name"].Rows[0][0]);', 'Console.WriteLines(ds.Tables[0].Rows[0]["name"]);', 'Console.WriteLines(ds.Rows[0][0]);', 'Console.WriteLines(ds.Rows["name"][0]);', 184, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ADO.NETӦ�ó�����,ͨ��Ҫ����������ݿ��¼,���ÿ��Ӧ�ó�����Ҫ������һ����¼ʱ���������ݿ��ǲ�ʵ�ʵ�,����һ�����������ʹ�ã�  ����������ݵĴ�����ѡһ�' || chr(10) || '', 'DataSet', 'ResultSet', 'DataReader', 'DataAdpter', 185, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ADO.NET�У�SqlConnection �����ڵ������ռ��ǣ�ѡһ�', 'System', 'System.Data', 'System.Data.OleDb', 'System.Data.SqlClient', 186, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ADO.NET��,SqlConnection�����ڵ������Ŀռ��ǣ�ѡһ�', 'System', 'System.Data', 'System.Data.OleDb', 'System.Data.SqlClient', 187, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������У���  ���ڱ�ǵ�λ�����һ�����з�����ѡһ�', '<H1>', '<ENTER>', '<BR>', '<HR>', 188, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����ǩ�У�û��type���Ե��ǣ�ѡһ�', '<ul>', '<ol>', '<font>', '<input>', 189, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ǩ�е����֣��ĸ��������ѡһ�', 'h1', 'h2', 'h3', 'h4', 190, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ı�ǩ�в����𵽻������õ��ǣ�ѡһ�', '<p>', '<br>', '<h1>', '<b>', 191, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������Ͳ���ȷ���ǣ�ѡһ�', 'HTML ���ı��������', 'WWW ��ά��', 'HTTP  �ļ�����Э��', 'URL   ͳһ��Դ��λ��', 192, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����ĸ����Բ���<select>��ǩ�����ԣ�ѡһ�', 'Name', 'Size', 'Multiple', 'Selected', 193, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������һ��ѡ����URL����ɲ��֣�ѡһ�', '���������', 'IP��ַ��������', 'HTTPͨ��Э��', '�ļ��м��ļ�����', 194, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������У�(  )��HTMLҳ��ı�������Ϊ��HTML��ϰ������ѡһ�', '<HEAD>HTML��ϰ</HEAD>', '<TITLE>HTML��ϰ</TITLE>', '<H>HTML��ϰ</H>', '<T>HTML��ϰ</T>', 195, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������в�����<td>��ǩ���У�ѡһ�', 'colspan', 'rowspan', 'align', 'border', 196, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���뵥Ԫ��Ĺ�ϵ�ǣ�ѡһ�', '����', '��ͬ', '������', '�޹�', 197, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Ҫ����һ��1��2�еı�����������ȷ���ǣ�ѡһ�', '<TABLE>' || chr(13) || '<TD>' || chr(13) || '<TR>��Ԫ��1</TR>' || chr(13) || '<TR>��Ԫ��2</TR>' || chr(13) || '</TD>' || chr(13) || '</TABLE>', '<TABLE>' || chr(13) || '<TR>' || chr(13) || '<TD>��Ԫ��1</TD>' || chr(13) || '<TD>��Ԫ��2</TD>' || chr(13) || '</TR>' || chr(13) || '</TABLE>', '<TABLE>' || chr(13) || '<TR>' || chr(13) || '<TD>��Ԫ��1</TD>' || chr(13) || '</TR>' || chr(13) || '<TR>' || chr(13) || '<TD>��Ԫ��2</TD>' || chr(13) || '</TR>' || chr(13) || '</TABLE>', '<TABLE>' || chr(13) || '<TD>' || chr(13) || '<T1>��Ԫ��1</T1>' || chr(13) || '<T2>��Ԫ��2</T2>' || chr(13) || '</TD>' || chr(13) || '</TABLE>', 198, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', 'Ҫ��ҳ��ı���ɫ����Ϊ��ɫ�����������ȷ���ǣ�ѡ���', '<BODY BGCOLOR=RED></BODY>', '<BODY BGCOLOR=FFOOOO></BODY>', '<BODY BGCOLOR=#FFOOOO></BODY>', '<BODY BGCOLOR="FFOOOO"></BODY>', 199, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Ҫʵ�����¹���: ����ҳ�в���һ��ͼƬ joke11.gif, ʹ����ͨ��������ͼƬ , ���� ��joke11.htm��ȥ�������HTML������ȷ���ǣ�ѡһ�', '<A HREF="joke11.htm " IMG:SRC= "images/joke11.gif"></A>', '<A HREF="joke11.htm" SRC="images/joke11.gif"></A>', '<A HREF= "jokell.htm"><IMG SRC="images/joke11.gif"></A>', '<A HREF="images/joke11.gir"></A>', 200, 102);
commit;
prompt 200 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Ҫ�ڱ��д���һ�����������ı��򣬳�ʼֵ������һ�������ı������������ȷ���ǣ�ѡһ�', '<TEXTAREA  NAME="texr1" VALUE="����һ�������ı���"></TEXTAREA>', '<INPUT TYPE =text VALUE="����һ�������ı���" NAME="text1">', '<INPUT TYPE =textarea NAME="text1"  VALUE="����һ�������ı���" >', '<TEXTAREA  NAME="text1" COLS=20 ROWS=5> ����һ�������ı���</TEXTAREA>', 201, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Ҫ����ҳ����ʾ������б�' || chr(10) || '.ƻ��' || chr(10) || '.â��' || chr(10) || '.����' || chr(10) || '���������ȷ���ǣ�ѡһ�', '<UL>   <LI>ƻ��  <LI>â��  <LI> ����  </UL>', '<OL>   <LI>ƻ��  <LI>â��  <LI>����  </OL>', '<UL>   <UI>ƻ��  <UI>â��  <UI>����   </UL>', '<OL TYPE=A>  <LI>ƻ��  <LI>â��  <LI>����   </OL>', 202, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������Щ����ˮƽ�߾��е����ԣ�ѡһ�', 'align', 'size', 'valign', 'noshade', 203, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�Ѷ����һ���ⲿ��ʽ���ļ�c.css,Ҫ����ҳ�����Ӵ��ⲿ��ʽ����ȷ�������ǣ�ѡһ�', '<html><head><style><link rel=c.css /></style></head></html>', '<html><head><style><link href=c.css /></style></head></html>', '<html><head><link rel=c.css /></head></html>', '<html><head><link href=c.css /></head></html>', 204, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���±���У���  �����ϱ��Ƿ��š���ѡһ�', 'u���' || chr(13) || '', 'sub��� ' || chr(13) || '', 'th���' || chr(13) || '', 'sup���' || chr(13) || '', 205, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������ǩ�����ӣ�ê�㣩���ǣ�ѡһ�', '<a href="1.htm#a1">��һ��</a>', '<a href="1.htm">��һ��</a>', '<a href="mailto: 2000@163.com ">����</a>', '<a href="1.htm*a">��һ��</a>', 206, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����˵���У�������ǣ�ѡһ�', '��ȡWWW����ʱ����Ҫʹ���������Ϊ�ͻ��˳���', 'WWW����͵����ʼ�������Internet�ṩ����õ����ַ���', '��վ����һϵ���߼��Ͽ�����Ϊһ�������ҳ��ļ���', '������ҳ����չ������ .htm', 207, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������ı�����������ַ�������Ҫ����<input>�����ԣ�ѡһ�', 'value', 'type', 'size', 'maxlength', 208, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������HTML��䣬����˵��������ǣ�ѡһ�' || chr(10) || '<textarea name="S1" rows="2" cols="20"> </textarea>', 'name��ʾ�ı��������ơ�', 'rows ��ʾ�ı�����������', '��Ҫ�ı���ı������к���ʱ����Ҫ�ǵ�����name���Ե�ֵ��', '���ı����������ı�ʱ�����Զ�����', 209, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��test.htmҳ��ͬһĿ¼����һ��pic�ļ��У�pic�ļ�������һ��ͼƬbg.jpg������Ҫ��bg.jpgͼƬ����Ϊtest.htmҳ��ı���ͼƬ������д����ȷ���ǣ�ѡһ�', 'Background="bg.jpg"', 'Bgcolor="bg.jpg"', 'Background="pic/bg.jpg"', 'Background="../pic/bg.jpg"', 210, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��BODY��������У�����������ҳ������ɫ�������ǣ�ѡһ�', 'bgcolor', 'background', 'text', 'align', 211, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��HTML�ĵ���, ���б������Ϊ��ҳ�ϵ������ṩ���⣨ѡһ�', '<body>', '<head>', '<h1>', '<pre>', 212, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��HTML�ĵ��У�ʹ�ã�  ����Ƕ�����ı������������ʾʱ������ѭ��HTMLԴ�ĵ��ж���ĸ�ʽ����ѡһ�', '<P>', '<BR>', '<PRE>', '<A>', 213, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��HTMLҳ���У�()�������Ϊ����е�һ��ָ��һ�����⣨ѡһ�', '<TR>', '<TD>', '<TH>', '<TT>', 214, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��HTML�����У����弶����ʽ��CSS����ѡ�������ԣ�  �����ſ�ͷ����ѡһ�', '#(����)', '.����ţ�', '!��̾�ţ�', '%���ٷֺţ�', 215, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��HTML�����У�����ҳ����ͼƬ�ı���ǣ�ѡһ�', 'P���', 'A���', 'H���', 'IMG���', 216, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��HTML�����У������б�ı���ǣ�ѡһ�', 'ul', 'li', 'ol', 'dl', 217, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��HTML�У���  ����������ҳ��ͨ������ֱ�Ӵ򿪿ͻ��˵ķ����ʼ��Ĺ��߷��͵����ʼ�����ѡһ�', '<A HREF="telnet:zhangming@svse.com">���ͷ�����Ϣ</A>', '<A HREF="mail:zhangming@svse.com">���ͷ�����Ϣ</A>', '<A HREF="ftp:zhangming@svse.com">���ͷ�����Ϣ</A>', '<A HREF="mailto:zhangming@svse.com">���ͷ�����Ϣ</A>', 218, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��HTML�У�INPUTԪ�ص�TYPE��������ָ����Ԫ�ص����ͣ����в����õ������У�ѡһ�', 'IMAGE', 'TEXTAREA', 'SELECT', 'HIDDEN', 219, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��HTML�У����е�INPUTԪ�صģ�����������ָ����Ԫ�ص����ơ���ѡһ�', 'VALUE', 'NAME', 'TYPE', 'CAPTION', 220, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��HTML�У�����ʹ�ã�  ���������ҳ�в���GIF�����ļ�����ѡһ�', '<SOUND>', '<GIF>', '<TABLE>', '<IMG>', 221, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��HTML�У����д��루������ʵ��ÿ��60���Զ�ˢ��ҳ��Ĺ��ܡ���ѡһ�', '<meta http-equiv="refresh" content="1">', '<meta http-equiv="refresh" content="60">', '<meta http-equiv="expires" content="1">', '<meta http-equiv="expires" content="60">', 222, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��HTML�У����м���������ʽ���ŵ��˵��������ǣ�ѡһ�', '��ʽ����Ըı��������Ĭ����ʾ���', '��ʽ�����ʹҳ�����ݺ���ʾ��ʽ����', '��ʽ��������ã�������ʽ����ĺ�ʹ�ø���ʽ����ĵ�������Ӧ���޸�', 'һ����ʽ���Ӧһ��HTML�ĵ�', 223, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��HTML�У����棨   ��������ڶ����ĵ�Ԫ�񡣣�ѡһ�' || chr(10) || '', '<TABLE>' || chr(13) || '', '<TH>' || chr(13) || '', '<TD>' || chr(13) || '', '<TR>' || chr(13) || '', 224, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��HTML�У����棨  ����ǿɽ������ε��ı���ʾΪ�±ꡣ��ѡһ�', '<SUB>', '<B>', '<FONT>', '<BR>', 225, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��HTML�У����棨�������Խ��������ɫ���ó���ɫ����ѡһ�', '<H1 color:green>', '<H1 FONT = green>', '<H1 STYLE = "color:green;">', '<H1 STYLE : green>', 226, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��HTML�ĵ��У���   ��Ԫ����ͷ������Ϊ�������涨���ĵ��Ĺؼ��֡���ѡһ�', '<META>', '<P>', '<BODY>', '<H1>', 227, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ҳ�ϣ����е�inputԪ�ص�TYPE����Ϊ����ʱ�����ڴ������ð�ť��ѡһ�', 'RESET', 'SET', 'BUTTON', 'IMAGE', 228, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���ĵ�����ģ�ͣ�DOM���У����еĶ��󶼼̳��ԣ�ѡһ�', 'window����', 'math����', 'history����', 'frame����', 229, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ʽ���У�����������ҳ������ɫ�������ǣ�ѡһ�', 'bgcolor', 'background', 'background-color', 'becolor', 230, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��   ������ִ��ָ��ΪCommand����������ı���SQL��䣬��������SQL���Ӱ����������������ѡһ�', 'ExecuteNonQuery', 'ExecuteReader', 'ExecuteQuery', 'ExecuteScalar', 231, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '��  ���ؼ����Խ������ؼ����顣��ѡ���', 'GroupBox', 'ComboBox', 'Panel', 'TextBox', 232, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '.NET�����б������������ݿ����ݵ�������ϳ�Ϊ��ѡһ�', 'ADO', 'ADO.NET', 'COM', 'Data Service.NET', 233, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '.NET�У������еĴ�����Ի���Ϊ�������࣬���ˣ�ѡһ�', '�߼�����', '����ʱ����', '�﷨����', '�Զ������', 234, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ADO.NET�ģ�  ��������������Ӧ�ó��������ݿ�����ӡ���ѡһ�', 'DataSet', 'DataReader', 'Connection', 'Command', 235, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ADO.NET�У�Ҫ��DataTable���������һ�У�����C#������ȷ���ǣ�ѡһ�', 'myTable = new DataTable("Months");' || chr(13) || '' || chr(10) || 'myTable.Columns.Add("Month", string);', 'myTable = new DataTable("Months");' || chr(13) || '' || chr(10) || 'myTable.Columns.Add("Month", typeof(string));', 'myTable = new DataTable("Months");' || chr(13) || '' || chr(10) || 'myTable.Columns.Add("string",Month));', 'myTable = new DataTable("Months");' || chr(13) || '' || chr(10) || 'myTable.Columns.Add(string ,"Month"));', 236, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, 'C#����ʹ�ã�  �����������ƿռ䡣��ѡһ�', 'import', 'using', 'include', 'lib', 237, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'C#��,����var1��һ���������ͱ���,������ѡһ�', '���Դ������������', 'ֻ���ָ���������ݵ��ڴ��ַ������', '���Դ������������,Ҳ���ָ���������ݵ��ڴ��ַ������', '�ı�һ���������ͱ�����ֵ,���ܻ�Ӱ�쵽����ֵ���ͱ�����ֵ', 238, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Connection ��Command ����  ����DataAdapter������.NET Framework�����ṩ����ģ�͵ĺ���Ҫ�ء���ѡһ�', 'DataReader', 'DataSet', 'DataTable', 'Transaction', 239, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'public class Console{' || chr(10) || 'public static void Main()' || chr(10) || '{' || chr(10) || '    __________________;' || chr(10) || '}' || chr(10) || '}�ں��ߴ��������,���Ϊ:C# is simple����ѡһ�', 'Console.PrintLine("C# is simple")', 'Console.WriteLine("C# is simple")', 'WriteLine("C# is simple")', 'Console.Output.WriteLine("C# is simple")', 240, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'public static void Main(string[] args)' || chr(10) || '{ ' || chr(10) || '    int i = 2000; ' || chr(10) || '    object o = i; i = 2001; ' || chr(10) || '    int j = (int)o; ' || chr(10) || '    Console.WriteLine("i={0},o={1},j={2}", i, o, j); ' || chr(10) || '}' || chr(10) || '����������ǣ�ѡһ�', 'i=2001,o=2000,j=2000', 'i=2001,o=2001,j=2001', 'i=2000,o=2001,j=2000', 'i=2001,o=2000,j=2001', 241, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'WinForms�������ڵ�Ϊ��ѡһ�', '��̬����Main', '��̬����Start', '���������Form_Load�¼�', 'Appliaction_OnStart�¼�', 242, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'WinForms�����У������ѡ��ؼ��� Checked����ֵ����Ϊ True����ʾ��ѡһ�', '�ø�ѡ��ѡ��', '�ø�ѡ�򲻱�ѡ��', '����ʾ�ø�ѡ����ı���Ϣ', '��ʾ�ø�ѡ����ı���Ϣ', 243, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'WinForms����A�����˳���ťB������ڰ�ESC����ʱ���൱�ڵ㰴ťB�˳��͹رմ���A����Ҫ���ã�' || chr(9) || '�����ԡ���ѡһ�', '����A��AcceptButton����', '����A��CancelButton����', '��ťB��AcceptButton����', '��ťB��CancelButton����', 244, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'WinForms����ģ�   �����������������Ƿ�Ϊ���ĵ����塣��ѡһ�', 'MDI', 'MDIParant', 'IsMdiContainer', 'IsMDI', 245, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'WinForms�е�״̬��������(    )��ɡ���ѡһ�', 'StatusLabel', 'ProgressBar', 'DropDownButton', 'TextBox', 246, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������й����з����Ĵ��󣬽�����ѡһ�', '�汾', '�ϵ�', '�쳣', '����', 247, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '������ش����⣨ѡ���' || chr(10) || '��������:   ' || chr(10) || 'create  table stuInfo' || chr(10) || '(' || chr(10) || 'stuId   int  not null,' || chr(10) || 'stuName varchar(30) not null,' || chr(10) || 'stuAddress varchar(30),' || chr(10) || ')' || chr(10) || '������C#������գ�Ҫ��ȡ���еĵ�һ������(��֪sqlCmdΪSqlCommand����sqlReaderΪSqlDataReader����)��' || chr(10) || 'while(sqlReader.________ ) {' || chr(10) || '    Console.WriteLine(sqlReader._________);' || chr(10) || '}', 'Read()    GetInt(0)', 'Next()     GetValue(0)', 'Read()     GetValue(1)', 'Read()     GetValue(0)', 248, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���Ҫ����������Ϊ͸����,��ѡһ�', 'Ҫ��FormBoderStyle��������ΪNone;', 'Ҫ��Opacity��������ΪС��100%��ֵ;', 'Ҫ��locked��������Ϊtrue;', 'Ҫ��Enabled��������ΪTrue;', 249, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʹ��ADO.NET�Ĳ�������Parameters��ΪSQL������Ӳ���ʱ����Ҫ��ѡһ�', '��������', '��������', '��������', '����', 250, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ͨ��(    )����������Ϣ������ʾ�İ�Ŧ����ѡһ�', 'Button', 'DialogButton', 'MessageBoxButtons', 'MessageBoxIcon', 251, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Ϊʹ��OleDb .NET Data Proviver���ӵ�SQL Server 2005���ݿ�,Ӧ��Connection�����ConnectionString�����е�Provider�����Ե�ֵ����Ϊ��ѡһ�', 'Provider=SQLOLEDB', 'Provider=SQLSERVER', 'Provider=Microsoft.Jet.OLEDB.4.0', 'Provider=MSDAORA', 252, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���� (  )��ADO.NET��������Ҫ�����ѡһ�', 'Command��DataAdapter', 'DataSet��DataTable', '.NET�����ṩ�����DataSet', '.NET�����ṩ��DataAdapter', 253, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���У�  ����ADO��NET��������Ҫ�������ѡһ�', 'Command �� DataAdapter', 'DataSet �� DataAdapter', 'NET Framework�����ṩ�����DataSet', 'NET Framework�����ṩ�����DataAdapter', 254, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���й���ADO.NET���ص������ǣ�ѡһ�', '��ADO.NET��,��������XML��ʽ�洢��,���нϺõĻ�������', 'ADO.NET���öϿ�ʽ���ݽṹ,��������Ӧ�ó���Ŀ���', '��ADO.NET��,���Բ���C# VB.NET�����Ա�д����', 'ADO.NET�����ܱȻ���COM��ADO��', 255, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���й���C#���쳣�����˵����������ǣ�ѡһ�', 'try������catch�����ʹ��', 'һ��try����Ը�����catch��', 'ʹ��throw���ȿ�����ϵͳ�쳣��Ҳ���������ɿ�����Ա�������Զ����쳣', '��try �� catch ��..finally���У����㿪����Ա��дǿ���߼����룬Ҳ��������finally���ִ��', 256, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������using���ʹ����ȷ���ǣ�ѡһ�', 'using(SqlConnection conn = new SqlConnection(connString)){}', 'using(){SqlConnection conn = new SqlConnection(connString)}', 'SqlConnection conn = new SqlConnection(connString)using(){}', 'using(){}SqlConnection conn = new SqlConnection(connString)', 257, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��֪Winforms����һ����Ϊ"dsOrder"�����ݼ�����һ����Ϊ"order"�ı���"order"������һ��һ�У����У�   ���δ����ܹ���ȷ�õ��ñ��¼�ĵ�һ�е�һ�е�ֵ����ѡһ�', 'dsOrder["order"].Rows[0][0]', 'dsOrder.Tables[0].Rows[0][0]', 'dsOrder.Tables[0].Columns[0][0]', 'dsOrder["order"].Columns[0][0]', 258, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���µ�C#����,�����ж����������Ƿ����:' || chr(10) || 'class C{     ' || chr(10) || '    static void Main(string[] args)     ' || chr(10) || '    {        ' || chr(10) || '        int A;        ' || chr(10) || '        int B;        ' || chr(10) || '        if A=B         ' || chr(10) || '            Console.Write("A=B");    ' || chr(10) || '    }' || chr(10) || '}�����д��ڵĴ���������µļ���,���ˣ�ѡһ�', '����A��B��ʹ��ǰ,������и�ֵ', '�ж�A��B�Ƿ����,Ӧʹ��"=="����', 'A��B�Ƿ���ȵ��ж�,Ӧ��ʹ������������;', 'if�����ִ�д���,Ӧ��ʹ�û�����������', 259, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���µ�C#����:' || chr(10) || 'static void Main(string[]args)' || chr(10) || '{' || chr(10) || '    int i=3;' || chr(10) || '    Console.WriteLine(A(i));' || chr(10) || '}' || chr(10) || 'static int A(int t)' || chr(10) || '{' || chr(10) || '    return A(t) * t;' || chr(10) || '}' || chr(10) || '����ʱ�������ѡһ�', '9', '27', '����ʱ���������ʾ�������ñ����ж�������', '������뽫�����������', 260, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�Ķ�����C#����Ƭ�Σ��ڳ����������У�����˵����ȷ�ģ�ѡһ�' || chr(10) || 'int val=100;' || chr(10) || 'object obj=val;' || chr(10) || 'int num=(int)obj;' || chr(10) || 'Console.WriteLine("num:{0}",num);', '��1��ִ��װ�����', '��2��ִ��װ�����', '��ֹ�߳����е�����', '��ֹ�߳����е�CPUʱ����', 261, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�Ķ����µ�C#���룺' || chr(10) || 'public class TEApp' || chr(10) || '{' || chr(10) || '    public static void ThrowException()' || chr(10) || '    {' || chr(10) || '        throw new Exception();' || chr(10) || '    }' || chr(10) || '    public static void Main()' || chr(10) || '    {' || chr(10) || '        try' || chr(10) || '        {' || chr(10) || '            Console.WriteLine("try");' || chr(10) || '            ThrowException();' || chr(10) || '        }' || chr(10) || '        catch (Exception e)' || chr(10) || '        {' || chr(10) || '            Console.WriteLine("catch");' || chr(10) || '        }' || chr(10) || '        finally' || chr(10) || '        {' || chr(10) || '            Console.WriteLine("finally");' || chr(10) || '        }' || chr(10) || '    }' || chr(10) || '}���ʴ������н���ǣ�ѡһ�', 'try     catch      finally', 'try', 'try     catch', 'try     finally', 262, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������µ�C#����ν������ѡһ�' || chr(10) || 'int a=10;string b="10";' || chr(10) || 'Console.Writeline(a + b);', '20', '1010', '10 10', '���������ʾ�������Ͳ�ƥ��', 263, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��WinForms��������һ��ΪtxtUser��TextBox�ؼ�����MaxLength����Ϊ5���ÿؼ��ĵ�ǰ�ı�Ϊ�������̡�������ִ�д��룺txtUser.AppendText("����");��ؼ����ı�Ϊ��ѡһ�', '������', '�����̸�', '�����̸���', '���������Ǵ���', 264, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��C#��,���д������к�,����c��ֵ�ǣ�ѡһ�' || chr(10) || 'int a=15,b=10;float c=(float)a/b;', '0', '1', '1.5', '5', 265, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��C#�У����д������к󣬱���Max��ֵ�ǣ�ѡһ�' || chr(10) || 'int a=5,b=10,c=15,Max=0;' || chr(10) || 'Max = a>b?a:b;' || chr(10) || 'Max = c<Max?c:Max;', '0', '5', '10', '15', 266, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�У����й��ڹ��캯�����ص��˵������ȷ���ǣ�ѡһ�', 'һ�����У�ֻ����һ�����캯��', '���캯����������������һ��������û�з�������', '���캯���ڶ�������ʱ�Զ�ִ��', 'һ����������Ҫ��һ�����캯��', 267, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�ж���һ�����飬��ȷ�Ĵ���Ϊ��ѡһ�', 'int arraya = new int[5];', 'int[] arraya = new int[5];', 'int arraya = new int[];', 'int[5] arraya = new int;', 268, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��C#�����й��ڹ��캯����������ȷ���ǣ�ѡһ�', '���캯������������������', '���캯����������private����', '���캯����������ͬ��', '���캯�����ܴ�����', 269, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��WinForms �У����д�������н���ǣ�ѡһ�' || chr(10) || 'DataSet ds = new  Dataset("Books");' || chr(10) || 'DataTable dt = new DataTable("Student");' || chr(10) || 'Console.Writeline(ds.DataSetName);', 'Books', 'Student', 'Ds', 'ds.DataSetName', 270, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��WinForms�����У������ʹ�÷���ؼ������鵥ѡ��ť������ֱ����ק������ѡ��ť�����ڴ����У�������˵����ȷ�ǵģ�ѡһ�', '������ѡ��ť����ͬʱ��ѡ�У�����������������������', '��������л������й������Ѿ�����ĵ�ѡȡ��ť������������ѡ��ť�Զ����������', '������ѡť��ť���Զ�Ĭ��Ϊһ��', '���б�����ʾ����ʹ�÷���ؼ��Ե�ѡȡ��ť���з���', 271, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '��WinForms�����У��й�ListView�ռ��������������֮������˵��������ǣ�ѡ���' || chr(10) || 'This.listView1.SelectedItems[1].Text = "ABC"', '��ѡ��������б���ı�ֵ�޸�Ϊ��ABC��', '��ѡ��ĵ�һ����ı�ֵ�޸�Ϊ��ABC ��', '��û��ѡ���κ����ʱ�򣬳������', '��ѡ���ֻ��һ���ʱ�򣬳������', 272, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��WinForms�У�Ϊ�˷�ֹ�û�����رմ��壬��Ҫ�ڣ�   ���¼��б�д���룬��ʾ�û��Ƿ�رմ��塣��ѡһ�', 'Closing', 'Closed', 'Load', 'VisibleChanged', 273, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��WinForms�У���֪��һ����ΪForm1�Ĵ��壬�������д���ִ�й����У����ȴ������¼��ǣ�ѡһ�', 'Load', 'Activated', 'Closing', 'Closed', 274, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��WinForm�����У�������һ��PictureBox �ؼ�PictureBox1��������PictureBox1�ؼ���Image ���Ժ󣬵�ͼƬ��ؼ��Ĵ�С��һ��ʱ������ͨ�����´���(  )ʹPictureBox1�ؼ��Ĵ�С��ͼƬ��С����һ�¡���ѡһ�', 'this.PictureBox1.SizeMode = PictureBoxSizeMode.AutoSize;', 'this.PictureBox1.SizeMode = PictureBoxSizeMode.Normal;', 'this.PictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;', 'this.PictureBox1.SizeMode = PictureBoxSizeMode.CenterImage;', 275, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Ҫɾ��book�����������ݣ����������ȷ���ǣ�ѡһ�', 'truncate table book', 'delete * from book', 'drop table book', 'delete  table  book', 276, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ɾ���������������е������ǣ�ѡһ�', 'DELETE TABLE ����', 'TRUNCATE TABLE ����', 'DROP TABLE ����', 'ALTER TABLE ����', 277, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ABC����������A��B��C�����Ҷ����������ͣ�������(  )��ѯ����ܰ�B�н��з��飬����ÿһ����ȡC��ƽ��ֵ����ѡһ�', 'SELECT  AVG(C) FROM ABC', 'SELECT AVG(C) FROM  ABC  ORDER  BY   B', 'SELECT AVG(C) FROM ABC GROUP  BY  B', 'SELECT  AVG(C) FROM ABC  GROUP  BY  C,B', 278, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ʹ��SQL��������ѯҪ���ѯ�����漰�ı�����У�ѡһ�', '����', '�����ֶ�', '��ϼ�', '���϶���', 279, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ͨ��ʹ�ã�   ������洢�͹������ݡ���ѡһ�', '���ݿ����ϵͳ(DBMS)', '���ݿ�', '������Ϣϵͳ(MS)', '���ݴʵ�', 280, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ϵͳ�洢������Ҫ�洢��(   )���ݿ��С���ѡһ�', 'tempdb', 'master', 'model', 'msdb', 281, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���дӴ�С��������ȷ���ǣ�ѡһ�', '���ݿ����ϵͳ   ���ݿ�ϵͳ   ���ݿ�', '���ݿ�   ���ݿ�ϵͳ   ���ݿ����ϵͳ', '���ݿ�ϵͳ   ���ݿ�   ���ݿ����ϵͳ', '���ݿ�ϵͳ   ���ݿ����ϵͳ   ���ݿ�', 282, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������������/ʱ�����͵ľۺϺ����ǣ�ѡһ�', 'MAX', 'SUM', 'MONTH', 'AVG', 283, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����������������Լ����˵������ȷ���ǣ�   ������ѡһ�', 'Υ������������Լ��ʱ�����ܶ����ñ���в������' || chr(13) || '', '���������ñ�ʱ�����õı�����Ѿ�����' || chr(13) || '', '���������ñ�ʱ�����õ��б����Ѿ�����' || chr(13) || '', '�����õ��в�������������ΨһԼ��' || chr(13) || '', 284, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '���б�book������bookid��Ϊ��ʶ�С���ִ����䣺select * into book2 from book ����˵����ȷ���ǣ�ѡ���', '�����ݿ����Ѵ��ڱ�book2, �����ʾ����', '�����ݿ����Ѵ��ڱ�book2, �����ִ�гɹ������ұ�book2�е�bookid�Զ���Ϊ��ʶ��', '�����ݿ��в����ڱ�book2, �����ִ�гɹ������ұ�book2�е�bookid�Զ���Ϊ������', '�����ݿ��в����ڱ�book2, �����ִ�гɹ������ұ�book2�е�bookid�Զ���Ϊ��ʶ��', 285, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���б�book���ֶΣ�id (int)��title (varchar), price (float); ����id�ֶ���Ϊ��ʶ�� ʹ��insert�����book���в������ݣ�������������ǣ�ѡһ�', 'insert into book (id,title,price) values(1,''java'',100)', 'insert into book (title,price) values(''java'',100)', 'insert into book values (''java'',100)', 'insert book values(''java'',100)', 286, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���б�book���ֶΣ�id (int)��title (varchar), price (float); ����id�ֶ���Ϊ�������ı�ʶ�� ʹ��insert�����book���в������ݣ�������������ǣ�ѡһ�', 'insert into book (id,title,price) values(1,''java'',100)', 'insert into book (title,price) values(''java'',100)', 'insert into book values (''java'',100)', 'insert book values(''java'',100)', 287, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��WinFormӦ�ó����У�����ͨ������(  )����ʹһ�������ΪMDI���塣��ѡһ�', '�ı䴰��ı�����Ϣ', '�ڹ��̵�ѡ����������������', '���ô����IsMdiContainer����', '���ô����ImeMode����', 288, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��WinForm�У�Ϊ�˽���һ����ΪbtnOpen��Button�ؼ��ؼ�������������ȷ���ǣ�ѡһ�', 'btnOpen.Enable = true;', 'btnOpen.Enable = false;', 'btnOpen.Visible = true;', 'btnOpen.Visible = false;', 289, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Winform��,���д�������н���ǣ�ѡһ�' || chr(10) || 'DataSet ds = new DataSet();' || chr(10) || 'DataTable dt = new DataTable();' || chr(10) || 'dt.Columns.Add("name", typeof(System.String));' || chr(10) || 'DataRow dr = dt.NewRow();' || chr(10) || 'dr[0] = "����";' || chr(10) || 'dt.Rows.Add(dr);' || chr(10) || 'ds.Tables.Add(dt);' || chr(10) || 'Console.WriteLine(ds.HasChanges());', '����', 'True', 'False', 'û�����', 290, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ʹ��ADO.NET ������ݿ�Ӧ�ó���ʱ,��ͨ������Connection ����ģ�   ��������ָ�����ӵ����ݿ�ʱ���û���������Ϣ����ѡһ�', 'ConnectionString', 'DataSource', 'UserInformation', 'Provider', 291, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ʹ��ADO.NET��д���ӵ�SQL Server 2005���ݿ��Ӧ�ó���ʱ,��������ܵĽǶȿ���,Ӧ������  ����Ķ���, ��������Open�������ӵ����ݿ⡣��ѡһ�', 'OleDbConnection', 'SqlConnection', 'OdbcConnection', 'Connection', 292, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(   )����ͬһ����Ĳ�ͬ�ֶν������ӡ���ѡһ�', '������', '������', '������', '������', 293, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '( )��������ָ�����ܹ���ʶ�����е�ÿ��ʵ�壨ѡһ�', 'ʵ��', '��', '����', '�û��Զ���', 294, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����������һ�������洢���ݵ��������Լ��������洢�ͼ������ݵĹ��̣�ѡһ�', '���ݿ�', '���ݿ����ϵͳ', '����ģ��', '��ϵ�����ݿ����ϵͳ', 295, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'IBM ��˾ʥ�����о�ʵ���ҵ�һλ�о���ԱCodd����1970��6�·����һƪ�����������һ��ģ�ͣ�����������߰����ǵ����ݿ�ֽ�ɼ�������������صı����������ݿ�����ܺ������壬ͬʱҲ�������û�����ԭ�����ݿ����ۡ��Ӵˣ�Codd�ͱ�����Ϊ�������ݿ�֮����ѡһ�', '��״ģ��', '���ģ��', '��ϵģ��', 'ƽ��ģ��', 296, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'Microsoft SQL Server 2005�ڰ�װ��ʱ��ʹ��������ݿ������ѡ���', 'Pubs', 'Master', 'Northwind', 'Msdb', 297, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', 'Microsoft SQL Server �У�����һ�����ݿ⣬���԰������£�  ���ļ�����ѡ���', '��Ҫ�����ļ�', '��Ҫ�����ļ�', '��־�ļ�', '��¼��', 298, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ORDER BY �������ǣ�ѡһ�', '��ѯ�������', '���ò�ѯ����', '�Լ�¼����', '���Ʋ�ѯ���ص�������', 299, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SQL Server 2005 �ǻ��ڣ����ģ�ѡһ�', '��ϵ��', '�ļ�ϵͳ', '�����', '������', 300, 104);
commit;
prompt 300 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SQL server�ṩ��һЩ�ַ�������������˵��������ǣ�ѡһ�', 'select right(''hello'',3) ����ֵΪ��hel', 'select ltrim(rtrim(''  hello  '')) ����ֵΪ��hello(ǰ���޿ո�)', 'select replace(''hello'',''e'',''o'') ����ֵΪ��hollo', 'select len(''hello'') ����ֵΪ��5', 301, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Sql server�ṩ��һЩ�ַ�������������˵��������ǣ�ѡһ�', 'select right(''hello'',3) ����ֵΪ��hel', 'select ltrim(rtrim(''  hello  '')) ����ֵΪ��hello��ǰ���޿ո�', 'select replace(''hello'',''e'',''o'') ����ֵΪ��hollo', 'select len(''hello'') ����ֵΪ��5', 302, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SQLServer2005��, ��һ��book(ͼ��)��,�����ֶ�:bookID(ͼ����),title(����), pDate(��������), author (����) ���ֶ�, ����( )�ֶ���Ϊ�ñ����������ǡ���ģ�ѡһ�', 'bookID', 'title', 'pDate', 'author', 303, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SQL��䣺select * from students where SNO like ''010[^0]%[A,B,C]%'',���ܻ��ѯ����SNO�ǣ�ѡһ�', '01053090A', '01003090A01', '01053090D09', '0101A01', 304, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'T-SQL����������Ľ�����־Ϊ��ѡһ�', 'GO', 'SUBMIT', 'END', 'RETURN', 305, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����Ԫ���ݵı��ɹ�ϵ�����ݿ����ϵͳ������ά�������У���Ĵ����漰�����ݰ������µķ��棬���ˣ�ѡһ�', 'ָ�����ݿ�����', 'ָ���������뵽�ֶ��е����ݵĴ�С', 'ʵʩ�κα�Ҫ��Լ����ȷ�������������Ч', 'ʵʩ����Ȩ��', 306, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��book�а��������ֶΣ�title(varchar), author(varchar), price(float)��' || chr(10) || 'Author��Ĭ��ֵ�ǡ�UNKNOW����ִ��SQL��䣺insert book (title,price) values (jsp'', 50)�����½����ȷ���ǣ�ѡһ�', '����ʧ�ܣ�SQL����д�', '����ɹ���author�е�������UNKNOW', '����ɹ���author�е�������NULL', '����ɹ���author�е�������50', 307, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ѯstudent���е����зǿ�email��Ϣ, ���������ȷ���ǣ�ѡһ�', 'Select email from student where email !=null', 'Select email from student where email not is null', 'Select email from student where email <> null', 'Select email from student where email is not null', 308, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���� student�������е绰����(������telephone)�ĵ�һλΪ8��6������λΪ0�ĵ绰���루ѡһ�', 'SELECT telephone FROM student WHERE telephone LIKE ''[86]%0*''', 'SELECT telephone FROM student WHERE telephone LIKE ''(8,6)*0%''', 'SELECT telephone FROM student WHERE telephone LIKE ''[8,6]_0*''', 'SELECT telephone FROM student WHERE telephone LIKE ''[86]_0%''', 309, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���� student�������е绰����(������telephone)�ĵ�һλΪ8��6������λΪ0�ĵ绰���루ѡһ�', 'SELECT telephone FROM student WHERE telephone LIKE ''[86]%0*''', 'SELECT telephone FROM student WHERE telephone LIKE ''(8,6)*0%''', 'SELECT telephone FROM student WHERE telephone LIKE ''[8,6]_0*''', 'SELECT telephone FROM student WHERE telephone LIKE ''[86]_0%''', 310, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '�ɼ���grade���ֶ�score�������������(  )��䷵�سɼ����е���ͷ֡���ѡ���', 'select max(score) from grade', 'select top 1 score from grade order by score asc', 'Select min(score) from grade', 'select top 1 score from grade order by score desc', 311, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����һ����Ϊ��Customers�����±�ͬʱҪ���±��а�����clients�������м�¼��sql����ǣ�ѡһ�', 'Select * into customers from clients', 'Select  into customers from clients', 'Insert into customers select * from clients', 'Insert customers select * from clients', 312, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ִ�������SQL���ʱ���ᷢ����ѡһ�' || chr(10) || 'SELECT au_id, title_id,sum(royaltyper) FROM titleauthor GROUP BY title_id, au_id ORDER BY title_id, au_id', '������ʧ��', '�ڽ�����У���ÿһ����ͬ��au_id��ֵ��title_id��ֵ����϶�����һ��', '�ڽ�����У�ÿһ����au_id��ֵ��������ͬ', '�ڽ�����У�ÿһ����title_id��ֵ��������ͬ', 313, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������п��Խ��ܵ�����ֵ���ʽ����Ϊ��ѡһ�', 'Ψһ��Լ��', '���Լ��', '����Լ��', 'Ĭ��Լ��', 314, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������п��Խ��ܵ�����ֵ���ʽ����Ϊ��ѡһ�', 'Ψһ��Լ��', '���Լ��', '����Լ��', 'Ĭ��Լ��', 315, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����������˵��������ǣ�ѡһ�', '�����ֶ���������ݲ������ظ�', '�����ֶε����ݣ�Ϊ�Զ������������ͣ�����������', '�������ɶ������϶��ɣ���ĳ�������ֶο��Դ����ظ�ֵ', '�����ֶο������ַ���������', 316, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������SQL���:' || chr(10) || 'SELECT DISTINCT ��Ʒ.��Ʒ���ƣ���Ʒ.���� FROM ��Ʒ ' || chr(10) || 'WHERE��������Ʒ.���ۣ�>(SELECT AVG([����]) FROM ��Ʒ)����' || chr(10) || 'ORDER BY��Ʒ.����DESC' || chr(10) || '����˵��������ǣ�ѡһ�', '��SELECT AVG��[����]��FROM��Ʒ�����Ӳ�ѯ', '��ORDER BY��Ʒ.���� DESC����ָ�����۴ӵ͵���˳������', '��ѯ�����ʾ���ǵ��۴���ƽ���۸�ļ�¼', '�˲�ѯ��ʾ���ֶ�ֻ�С���Ʒ���ơ��͡����ۡ�', 317, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ϵ�����ݿ��У�Ҫ��ֹС��100�������浽int���͵�UnitsInStock�п��ԣ�ѡһ�', 'ʹ������Լ��', 'ʹ��ȱʡԼ��', 'ʹ�����Լ��', 'ʹ�ü��Լ��', 318, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����IDENTITY���ԣ�����˵��������ǣ�ѡһ�', 'һ����ֻ����һ���о���IDENTITY����', '�㲻���Զ�����IDENTITY���Ե��м���defaultԼ��', '������IDENTITY���Ե��п�����������������', '�㲻�ܸ���һ��������IDENTITY���Ե���', 319, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����SQL server���õ��������ͣ����£�   ��˵���Ǵ���ġ���ѡһ�', 'Image�������Ϳ��������洢ͼ��' || chr(13) || '', 'ʹ���ַ���������ʱ�����Ըı䳤����Ϣ��' || chr(13) || '', 'ʹ��������������ʱ�����Ըı䳤����Ϣ��' || chr(13) || '', 'Bit��������Ϊ1λ���ȣ����Դ洢��ʾ��/������ݡ�' || chr(13) || '', 320, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����sql server���õ��������ͣ�����˵���Ǵ���ģ�ѡһ�', 'Image�������Ϳ��������洢ͼ��', 'ʹ���ַ���������ʱ�����Ըı䳤����Ϣ��', 'ʹ��������������ʱ�����Ըı䳤����Ϣ��', 'Bit��������Ϊ1λ���ȣ����Դ洢��ʾ��/������ݡ�', 321, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����Truncate table, ����(  )��������ȷ�ġ���ѡһ�', 'Truncate table �ɸ�Where�Ӿ䣬������������ɾ����', 'Truncate table ����ɾ�������������ݡ�', 'Truncate ����ɾ����', 'Truncate �� table delete�ٶȿ졣', 322, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ڱ�ʶ�У�����˵����ȷ���ǣ�ѡһ�', 'ʹ��SQL����������ʱ������Ϊ��ʶ��ָ��Ҫ�����ֵ��', '��������ʱ�����ʶ��һ������ȷ���ı�ʶ���Ӻͱ�ʶ��������', '���趨��ʶʱ��δָ����ʶ����������ôʹ��SQL����������ʱ������Ϊ��ʶ��ָ������ֵ��', 'ֻ�ܰ������趨Ϊ��ʶ�С�', 323, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ڶ�����Ӳ�ѯ����������������ǣ�ѡһ�', '�����Ӳ�ѯ���صĽ�����������ܴ������з������������Ľ����������', '������Ӳ�ѯ����ʹ�õ�JOIN�ؼ���', '�����Ӳ�ѯ���صĽ���ǣ����з����������������ݡ�', '��where�Ӿ���ָ��������������ʵ�������Ӳ�ѯ��', 324, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '���ڷ����ѯ�����£�   �������Ǵ���ġ���ѡ���', 'ʹ��group by ���з����ѯ' || chr(13) || '', '�Է����Ľ������������ѯ����ʹ��Having�Ӿ�' || chr(13) || '', 'Having�Ӿ䲻����where�Ӿ�ͬʱ������һ��select�����' || chr(13) || '', '��ʹ�÷����ѯʱ����select�б���ֻ�ܳ��ֱ�������ֶΡ�' || chr(13) || '', 325, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ھۺϺ���������˵��������ǣ�ѡһ�', 'Sum���ر��ʽ�����������ܺϣ����ֻ�������������͵��С�', 'Avg���ر��ʽ����������ƽ��ֵ���������������ͺ������͵��С�', 'Max��Min���������ַ��͵��С�', 'Count���������ַ��͵��С�', 326, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������������(  )˵������ȷ�ġ���ѡһ�', '������������ȷ�����в������ظ��������С�', 'һ���������һ��������', '�����п���Ϊnull��', 'ֻ�ܶ�������������������', 327, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���衰��Ʒ�������С���ƷID��������Ʒ���ơ������۸񡱴������ֶΣ�Ҫ�ڴ˱������һ���¼�¼������SQL�����ʵ����ӹ��ܵ��ǣ�ѡһ�', 'UPDATE INSERT ��Ʒ VALUES(''01008'',''����'',''20'')', 'INSERT ��Ʒ VALUES(01008,����,20)', 'INSERT  INTO ��Ʒ VALUES(''01008'',''����'',''20'')', 'INSERT  *  FROM ��Ʒ VALUES(''01008'',''����'',''20'')', 328, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����orderitem����orderid(int����)����thenumber(int����)����������������ȷִ�е��ǣ�ѡһ�', 'Select * from orderitem where orderid<=2 order by orderid' || chr(13) || '' || chr(10) || 'Compute sum(thenumber) by orderid', 'Select * from orderitem where orderid<=2' || chr(13) || '' || chr(10) || 'Compute sum(thenumber) by orderid', 'Select * from orderitem where orderid<=2 order by thenumber' || chr(13) || '' || chr(10) || 'Compute sum(thenumber) by orderid', 'Select * from orderitem where orderid<=2 order by orderid' || chr(13) || '' || chr(10) || 'Compute sum(orderid) by thenumber', 329, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������ű����ˡ�����������������ù�ϵ��������(����)�ж�Ӧ(���)�����ݣ�ѡһ�', '�������ӱ����ж�Ӧ', '���Ա���������ݶ�', '����������п��Ա��ӱ����������', '����Ϊ������������', 330, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����һϵͳԭ��ʹ��Access���ݿ⣬��Ҫʹ��SQL server���ݿ⣬���ã�   ��������������������ݿ�֮�������ת����������ѡһ�', 'SQL server�ĸ������ݿ⹦��' || chr(13) || '', 'SQL server�Ļ�ԭ���ݿ⹦��' || chr(13) || '', '��SQL server�п�ֱ�Ӵ�Access���ݿ⣬��漴�ɡ�' || chr(13) || '', 'SQL server�ĵ��뵼������' || chr(13) || '', 331, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '�����ݿ���ֻ��һ��student�����а�������sudentid ����ִ����䣺update student set studentid=100 where studentid=101, ��������ǣ�ѡ���', '������ʾ�������в��ܸ��¡�', '������һ�����ݡ�', '������ʾ��Υ������Լ����', '�Ȳ���ʾ����Ҳ���������ݡ�', 332, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Ҫɾ��book�����������ݣ����������ȷ���ǣ�ѡһ�', 'truncate table book', 'delete * from book', 'drop table book', 'delete  table  book', 333, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ADO.NET��,Ϊ��ȷ��DataAdapter�����ܹ���ȷ�ؽ����ݴ�����Դ��䵽DataSet��,������������ú�DataAdapter����������ĸ�Command���ԣ�ѡһ�', 'DeleteCommand', 'UpdateCommand', 'InsertCommand', 'SelectCommand', 334, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ADO.NET�У����У�   ��������SqlDataAdapter��������ԡ���ѡһ�', 'SqlCommand', 'SelectCommand', 'DeleteCommand', 'InsertCommand', 335, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ADO.NET�У����У�   ������������ֻ��ֻ�����ݡ���ѡһ�', 'DataSet', 'Command', 'DataReader', 'DataAdapter', 336, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ADO.NET�У����У�  �����������.NET�����ṩ����ѡһ�', 'Command', 'DataReader', 'DataSet', 'DataAdapter', 337, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ADO.NET�У����д�����������ǣ�ѡһ�' || chr(10) || 'SqlConnection conn = new SqlConnection("data source = pub;uid = bill;pwd = 12345;Initial catalog = Northwind");' || chr(10) || 'Console.WriteLine(conn.ConnectionString);', 'pub', 'bill', 'data source = pub;uid = bill;pwd = 12345;initial catalog = Northwind', 'Northwind', 338, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ADO.NET�У����д������к���������ǣ�ѡһ�' || chr(10) || 'DataTable dt = new DataTable();' || chr(10) || 'dt.Columns.Add("���", typeof(System.Int16));' || chr(10) || 'dt.Columns.Add("�ɼ�", typeof(System.Single));' || chr(10) || 'dt.Columns[1].DefaultValue = 60;' || chr(10) || 'DataRow dr = dt.NewRow();' || chr(10) || 'dr[0] = 10;' || chr(10) || 'dt.Rows.Add(dr);' || chr(10) || 'Console.WriteLine(dt.Rows[0][1]);', '0', '1', '10', '60', 339, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ADO.NET�У����д������к���������ǣ�ѡ��һ�' || chr(10) || 'DataTable dt = new DataTable();' || chr(10) || 'dt.Columns.Add(''���",typeof(System.Int16));' || chr(10) || 'for(int i=1;i<5;i++)' || chr(10) || '{' || chr(10) || '   DataRow dr =dt.NewRow();' || chr(10) || '   dr[0]=i;' || chr(10) || '   dt.Row.Add(dr);' || chr(10) || '}' || chr(10) || 'Console.WriteLine(dt.Rows[2][0]);', '0', '1', '2', '3', 340, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '��ADO.NET�У����й���DataSet��˵��������ǣ�ѡ���', '������DataSet�ı���������±�', 'DataSet�е����ݷ����ı�֮�������Զ��������ݿ��ж�Ӧ������', 'DataSet �ͺ������ڴ��е�һ������ʱ���ݿ⡱', 'DataSet  �е�������ֻ���Ĳ�����ֻ����', 341, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ADO.NET�У���֪ĳ����Ա��д�����ݿ������ַ������£�����ʹ�õ��ǣ�   ��.NET�����ṩ���򡣣�ѡһ�' || chr(10) || '"provider=MSDAORA;Date Source=pubs;UserID=sa;Password=##"', 'SQL', 'OIE DB', 'ODBC', 'Oracle', 342, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ADO.NET��,��֪��һ��ΪdsBook�����ݼ�,���ݼ�����һ��Ϊbook�����ݱ�,�����ܹ���ȷ��һ����ΪdgBook��DataGridView�ؼ������ݽ��а󶨵��ǣ�ѡһ�', 'dsBook.SetDataBingding(dgBook,"book");', 'dgBook.SetDataBingding(dsBook);', 'dgBook.DataSource = dsBook.Tables["book"];', 'dsBook.SetDataBingding(dgBook);', 343, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ADO.NET��,ӵ��ͨ������"DataTable dt = new DataTable();"������һ�����ݱ�,���й��ڸñ��˵����ȷ���ǣ�ѡһ�', 'ͨ������DataRow dr = dt.NewRow();����Ϊ���ݱ�����µ�һ��', 'ͨ������DataColumn dc = dt.Columns.Add("columnName");����Ϊ���ݱ�����µ�һ��', 'ͨ����Ӵ���DataRow dr = dt.NewRow();dt.Rows.add(dr);����Ϊ���ݱ�����µ�һ��', 'ͨ������DataColumn dc = dt.Newcolumn("columnName");dt.Columns.Add(dc);����Ϊ���ݱ�����µ�һ��', 344, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ADO.NET�У��������������롣����Ϊ��������ܵı�д˳���ǣ�ѡһ�' || chr(10) || 'SqlConnection sqlCon=new SqlConnection();                      //(1)' || chr(10) || 'sqlCon.Close();                                                //(2)' || chr(10) || 'sqlCon.ConnectionString="Server=;DataBase=pubs;uid=sa;pwd=pwd";   //(3)' || chr(10) || 'sqlCon.Open();                                                //(4)', '1,2,3,4', '1,3,2,4', '1,3,4,2', '4,3,2,1', 345, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ADO.NET�С����д������к���������ǣ�ѡһ�' || chr(10) || 'DataTable dt = new DataTable();' || chr(10) || 'dt.Columns.Add("���",typeof(System.Int16));' || chr(10) || 'dt.Columns.Add("�ɼ�",typeof(System.Int16));' || chr(10) || 'for(int i=1;i<=3;i++){' || chr(10) || '    DataRow dr = dt.NewRow();' || chr(10) || '    dr[0] = i;' || chr(10) || '    dt.Rows.Add(dr)' || chr(10) || '}' || chr(10) || 'Console WriteLine(dt.Columns.Count);', '1', '2', '3', '4', 346, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��C#�����У�ʹ��try...catch...�����ṹ�������쳣����ѡһ�', 'error', 'process', 'finally', 'do', 347, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C#�����У��������������쳣�Ľṹ��������ǣ�ѡһ�', 'catch{}finally{}', 'try{}finally{}', 'try{}catch{}finally{}', 'try{}catch{}', 348, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��C#�У�������ȷ������һ�����飨ѡһ�', 'int iArray=new int[10];', 'int[] iArray=new int;', 'int[] iArray=new int[10];', 'int[] iArray=new int(10);', 349, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�У�����ʹ�ã�  ������׳�ϵͳ�쳣���Զ����쳣����ѡһ�', 'run', 'throw', 'catch', 'finally', 350, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��C#�У����б��������븳ֵ��ȷ���ǣ�ѡһ�', 'int age =12.5;', 'string name =ACCP;', 'double money =100.0;', 'char leel=A;', 351, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '��C#�У����б��ʽ������ȷ���ǣ�ѡ���', '10%3=3', '10/3=3', '10%3=1', '10/3=1', 352, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��c#�У����д�������н���ǣ�ѡһ�' || chr(10) || 'float f=123.56f;' || chr(10) || 'object o=f;' || chr(10) || 'f=789.123f;' || chr(10) || 'Console.WriteLine("f={0}",f);' || chr(10) || 'Console.WriteLine("o={0}",o);', 'f=789.123  o=123.56', 'f=123.56  o=789.123', 'f=789.123  o=789.123', 'f=123.56  o=123.56', 353, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�У����д�������н���ǣ�ѡһ�' || chr(10) || 'int a=30,b=20;' || chr(10) || 'b=a;' || chr(10) || 'a=10;' || chr(10) || 'Console.WriteLine(a+" "+b);', '10 10', '10 30', '10 20', '10 20', 354, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'SQLServer2005�У���ִ֪����䣺select count(score),sum(score)from score���صĽ����10��750����ôִ����䣺select avg(score) from score,���صĽ���ǣ�ѡһ�', '10', '75', '750', '7500', 355, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'SQLServer��ϵͳ�洢�����еİ�ȫ���̿������ڹ���ȫ�ԣ��������' || chr(10) || 'EXEC sp_addlogin ''adms'',''sales'',���е�sales�ǣ�ѡһ�', '�û���', '����', '����', 'Ĭ�����ݿ�', 356, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'SQLSever 2005�����ݿ��У��ؼ��֣�����־��������Ľ�������ѡһ�', 'END', 'GO', 'FINISH', 'PRINT', 357, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Sybase��˾��PowerDesigner���漰��ģ���У�ѡһ�', 'ҵ��ģ��', '�������ģ��', '���ݿ�ģ��', '��������ģ��', 358, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'UNIQUEԼ��������Լ��Ҳ�����������Ե����֣�ѡһ�', '��������', '����������', 'ʵ��������', '����', 359, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ṹ���£�# �Ŵ�ͷ�ֶδ������������������һ�ݶ������Զ������ֲ�Ʒ��' || chr(10) || '��Ʒ��# ��Ʒ��ţ���Ʒ���ƣ���Ʒ�۸�' || chr(10) || '������# ������ţ�# ��Ʒ��ţ��������ڣ�����������' || chr(10) || '�ñ���߷��ϵ�(  )��ʽ����ѡһ�', 'һ', '��', '��', 'δ�淶����', 360, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���õ�ϵͳ�洢���̲�������ѡһ�', 'sp_tables', 'sp_columns', 'sp_stored_procedures', 'sp_renametable', 361, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '������sql������£�' || chr(10) || 'create table userInfo' || chr(10) || '(' || chr(10) || 'userId int identity(-1,1),         ��һ��' || chr(10) || 'username nvarchar(20) not null,  �ڶ���' || chr(10) || 'cardNO char not null,           ������' || chr(10) || 'age smallint(2),                 ������' || chr(10) || 'address ntext(300)              ������' || chr(10) || ')' || chr(10) || 'ִ��ʱ�����ڣ������ִ��󡣣�ѡ���', '��һ��', '������', '������', '������', 362, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '�����洢���̵�Ƭ�����£�' || chr(10) || 'Create procedure proc_score' || chr(10) || '@passed int=60,' || chr(10) || '@excellent int=90' || chr(10) || 'AS' || chr(10) || '����(  )���÷�ʽ����ȷ�ġ���ѡ���', 'Exec proc_score', 'Exec proc_score 60,90', 'Exec proc_score @passed=65,@excellent=95', 'Exec proc_score  @passed=65', 363, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ִ�������SQL���ʱ���ᷢ����ѡһ�' || chr(10) || 'SELECT au_id, title_id,sum(royaltyper)' || chr(10) || 'FROM titleauthor GROUP BY  title_id, au_id ORDER BY  title_id, au_id', '������ʧ��', '�ڽ�����У���ÿһ����ͬ��au_id��ֵ��title_id��ֵ����϶�����һ��', '�ڽ�����У�ÿһ����au_id��ֵ��������ͬ', '�ڽ�����У�ÿһ����title_id��ֵ��������ͬ', 364, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����������������ǣ�ѡһ�', 'һ�������е�����������Ϊһ�������ύ��ع���', '���������������Ҫͬʱ�޸�ͬһ�����п��ܲ���������', 'Sql serverĬ�Ͻ�ÿ��������T-SQL�����Ϊһ������', '�������ʹ��begin transaction����ȷָ������Ŀ�ʼ��', 365, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��˾���ж�����źͶ���ְԱ��ÿ��ְԱֻ������һ�����ţ�һ�����ſ����ж���ְԱ���Ӳ��ŵ�ְԱ����ϵ�����ǣ�ѡһ�', '��Զ�', 'һ��һ', '���һ', 'һ�Զ�', 366, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ж�����orders�������û���Ϣuserid, ��Ʒ��Ϣ productid, ����(  )����ܹ��������ٱ����������ص�productid��ѡһ�', 'select productid from orders where count(productid)>1', 'select productid from orders where max(productid)>1', 'select productid from orders where having count(productid)>1 group by productid', 'select productid from orders group by productid having count(productid)>1', 367, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���пͻ���customers(�������ͻ����cid)������10�����ݣ�������orders(������ͻ����cid )������6�����ݡ�ִ��SQL��䣺select * from customers right outer join orders on customers.cid=orders.cid����෵��(  )����¼����ѡһ�', '10', '6', '4', '0', 368, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������Ŀ��book�������ֶΣ�price (float); ���ڲ�ѯһ�������ߵ���Ŀ����ϸ��Ϣ�����������ȷ���ǣ�ѡһ�', 'select top 1 * from book order by price asc', 'select top 1 * from book order by price desc', 'select top 1 * from book where price', 'select top 1 * from book where price= max(price)', 369, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������Ŀ��book�������ֶΣ��۸�price (float)�����type(char); ���ڲ�ѯ��������ƽ���۸�������ƣ����������ȷ���ǣ�ѡһ�', 'select avg(price),type from book group by type', 'select count(price),type from book group by price', 'select avg(price),type from book group by price', 'select count (price),type from book group by type', 370, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ѧ����Ϣ��Student_info,���а�������(stu_name),ѧ��(stu_id),�ɼ�(stu_grade),Ϊint�������͡�������Ҫ��ѯ�ɼ�Ϊ80�ֵ�ѧ��������Ҫ��������ѧ�Ž������С������ѯ�����ȷ���ǣ�ѡһ�', 'SELECT stu_neme FROM student_info WHERE stu_grade=80 ORDER BY stu_id ASC', 'SELECT stu_neme FROM student_info WHERE stu_grade=80 ORDER BY stu_id DESC', 'SELECT stu_id,tu_neme FROM student_info WHERE stu_grade=80 ORDER BY stu_id ASC', 'SELECT stu_neme FROM stu_info WHERE stu_grade LIKE 80 RSER BY stu_id DESC', 371, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ѧ���ɼ���grade�����ֶ�score��float��,����Ҫ��������55����60(���������߽�ֵ)֮��ķ������5�֣�����sql�����ȷ���ǣ�ѡһ�', 'Update grade set score=score+5', 'Update grade set score=score+5 where score>=55 or score <=60', 'Update grade set score=score+5 where score between 55 and 60', 'Update grade set score=score+5 where score <=55 and score >=60', 372, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'һ��ѧ������ѡ�޶����Ŀ��һ����Ŀ���Ա�����ѧ��ѡ�ޣ����ֹ�ϵ�ǣ�ѡһ�', 'һ��һ', 'һ�Զ�', '���һ', '��Զ�', 373, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����(  )�����ھۺϺ�����ѡһ�', 'MAX', 'COUNT', 'NOT', 'MIN', 374, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����(  )˵���˴��룺not (���ʽ=�����ÿ���) or (���ÿ�<>�����⿨��) �ĺ��塣��ѡһ�', '���ʽ���������ÿ���', '���ʽ���������ÿ����������ÿ������⿨��', '������ʽ�����ÿ�����ô���ÿ����������⿨��', '���ʽ�����ÿ����������ÿ����������⿨��', 375, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���£������ӱ�student����ȡǰ5����¼����ѡһ�', 'select * from student where rowcount=5', 'select TOP of 5 * from student', 'select TOP 5 * from student', 'select * from student where rowcount<=5', 376, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���µ�T-SQL:SELECT city,state,COUNT(*) FROM authors GROUP BY city,state ORDERBY COUNTT(*) DESC,state �ڲ�ѯ�����������к󽫣�ѡһ�', '��ʾ������Ϣ������COUNT(*)DESC��������', '��ʾ������Ϣ�����ܰ��ն���н�������', '����ʧ�ܣ�GROUPBY ��ORDERBY��˳���ֶ�Ӧ����һ��', '���гɹ��������Ȱ���ͳ������������', 377, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���¿��������ַ���ģ��ƥ��Ĺؼ��֣�ѡһ�', 'OR', 'Not between', 'Not IN', 'Like', 378, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����������Լ��������ά����������֮����е�һ���Եģ�ѡһ�', '��', '��', '���', '������', 379, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�й���������˵��������ǣ�ѡһ�', '���ݿ��У����ݴ��ڸ��������󣬾�����������', 'ͨ������洢��������Ч�����������࣬���ǻ��������ݲ��ҵĸ�����', '�����ݿ���ƽ׶Σ�һ��Ҫ�������ܱ����������࣬����������������ࡣ', '��������ͨ�����������ݿ��������ġ�', 380, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һ��"������"������ͼ�����(BOOK-CODE),����(BOOK-NAME)����������(ISSUE-DT),��ע(MEM-CD)���ֶΣ��ֶΣ�����Ϊ�ñ��������������ǡ���ģ�ѡһ�', 'book-code', 'book-name', 'issue-dt', 'mem-cd', 381, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��һ����Ʒ��Ϣ��������ProInfo)������ֶ�Ϊ��ProID(��Ʒ��ţ���ProCatg(��Ʒ���)��ProName(��Ʒ����)�� ProPrice����Ʒ�۸񣩣�����ѡ�  �����Բ�ѯÿһ����Ʒ��ƽ���۸�ѡһ�', 'Select ProCatg , AVH(ProPrice) From ProInfo', 'Select ProCatg,AVG(ProPrice) From ProInfo Group By ProCatg', 'Select AVG (ProPrice) From ProInfo Group By ProCatg', 'Select AVG(ProPrice) From ProInfo', 382, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�� SQL Server 2005 �� , �� students ( ѧ�� ) �� , �����ֶ� :SID( ѧ�� ),SName( �� ��) ,Grade ( �ɼ�)����Ҫ������ѧԱ�ĳɼ��� 10 �֡����� SQL �����ȷ���� ��ѡһ�', 'update students set Grade = Grade + lO', 'update * set Grade = Grade +lO', 'update * from students set Grade =Grade +l O', 'update students set Grade �� Grade +lO', 383, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server 2005 �У�ʹ��update���������ݿ���е����ݣ�����˵����ȷ���ǣ�ѡһ�', 'ÿ��ֻ�ܸ���һ������', '���е������п���ȫ��������', '���û����������£�����ʾ������Ϣ', '��������ʱ�����ܴ���WHERE�����Ӿ�', 384, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��SQL Server 2005��, ��ִ�������SQL ���ʱ, �ᷢ��( ) ' || chr(10) || 'Select au_id, little_id, sum(royaltyper)from titleauthor group by title_id, au_id order by title_id, au_id ��ѡһ�', '�ڽ������,��ÿһ����ͬ��au_id��ֵ��title_id��ֵ����϶�����һ��', '�ڽ������,ÿһ����au_id��ֵ��������ͬ', '����������ʧ��,��Ϊ��ѯ����Ĵ���ͷ���Ĵ���һ��', '����������ʧ��,��Ϊroyaltyper��ҲӦ���з���', 385, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��SQL Server 2005��, ��students (ѧ��)��, �����ֶ�: STD(ѧ��),SName (����), Grade (�ɼ�). �ֲ�������ѧԱ�гɼ���ߵ�ǰ5��ѧԱ. ����SQL�����ȷ���ǣ�ѡһ�', 'SELECTTOP 5 FROM students ORDER BY Grade DESC', 'SELECTTOP 5 FROM students ORDER BY Grade', 'SELECTTOP 5 * FROM students ORDER BY Grade ASC', 'SELECTTOP 5 * FROM students ORDER BY Grade DESC', 386, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server 2005�У��������ݿ������ָ��ѡһ�', '��SQLServer���ݿ��ļ�����Ϊ�������ݿ��ļ�', '�������ݿ������ļ��е���Ϣ�������ݿ���SQLServer2005�лָ�', '�����и����ݿ����������', '�����ݿ�ɾ��', 387, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQL server 2005�У��������ݿ�˵��������ǣ�ѡһ�', '���ݿ��ڴ�����Ĭ�ϵĴ洢λ���ǣ�SQL Server��װ·��\Microsoft SQL Server\MSSQL\Data', 'һ�����ݿ�����Ӧ����һ�����ݿ��ļ�(*.mdf)��һ��������־�ļ�(*.ldf)', 'ֻ�е����ݿ��в��������ݵ�����£��ſ��Խ������ݿ������������', '����ͨ����A�����������ݿ��ļ���������־�ļ���B������Ȼ��ͨ����B������ִ����Ӧ�ĸ������ݿ������ʵ�����ݿ��A������B�����ĸ��ơ�', 388, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server 2005�У��ٶ�grade (�ɼ�)���а����ֶΣ�sID(ѧ��)��cID (�༶���)��lang(���Ŀγɼ�)��math(��ѧ�γɼ�),��ô��������ѧ�������͸�����߳ɼ���SQL����ǣ�ѡһ�', 'SELECT COUNT(*),MAX(lang),MAX(math)FROM grade', 'SELECT COUNT(*),MAX(lang),MAX(math)FROM grade GROUP BY sID', 'SELECT SUM(*),MAX(lang),MAX(math)FROM grade GROUP BY sID', 'SELECT SUM(*),MAX(lang),MAX(math)FROM grade', 389, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQL Server 2005�У��ٶ�grade(�ɼ�)���а����ֶΣ�sID(ѧ��)��lang(���Ŀγɼ�)����ô�г����ĳɼ���80�ֵ�90�ֵ�ѧ����SQL����ǣ�ѡһ�', 'SELECT * FROM grade WHERE lang IN (80,90)', 'SELECT * FROM grade HAVING lang IN (80,90)', 'SELECT * FROM grade WHERE lang BETWEEN 80 AND 90', 'SELECT * FROM grade HAVING lang BETWEEN 80 AND 90', 390, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '��SQL Server 2005�У��ٶ�һ��ѧ��ѡ�޿ι���ϵͳ����������������student(ѧ��)����ṹΪ��sID (ѧ��),sName (����); studentCourse (ѧ��ѡ��)����ṹΪ��sID (ѧ��),cID (�γ̱��),score (�ɼ� )����ô�г�������ѡ��ѧ����ѧ�š��������γ̱�źͳɼ���SQL����ǣ�ѡ���', 'SELECT sID,sName,cId,score FROM student,studentCourse', 'SELECT,sID,sName,cID,score FROM student INNER JOIN studentCourse ON' || chr(13) || 'student.sID = studentCourse.sID', 'SELECT,sID,sName,cID,score FROM student OUTER JOIN studentCourse ON' || chr(13) || 'student.sID = studentCourse.sID', 'SELECT,sID,sName,cID,score FROM student, studentCourse WHERE student.sID = studentCourse.sID', 391, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '��SQL Server 2005�У������ABC����A��B��C���У�����Ϊ�ַ��������ͣ�����' || chr(10) || 'A�е�Ĭ��ֵΪ��VA��������ܹ���ȷִ����䣺INSERT ABC(A,C)VALUES(��V��,��NULL��)�����е�˵����ȷ���ǣ�ѡ���', '����A�е�ֵΪV', '����A�е�ֵΪVA', '����B�е�ֵΪ��ֵ', '����C�е�ֵΪ��ֵ', 392, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server 2005�У�ɾ��һ����ṹ�������ǣ�ѡһ�', 'DELETE TABLE', 'DROP TABLE', 'TRUNCATE TABLE', 'ALTER TABLE', 393, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��SQL Server 2005�У�������ڽ�һ�����е�������һ�����е��й���������Ϊ��ȷ�����õ������ԣ�Ҫ��ѡһ�', '����е���ֵ�����Ѿ�������������Ķ�Ӧ�е���ֵ��', '����е���ֵ������������Ķ�Ӧ�е���ֵһһ��Ӧ', '����в������ظ���ֵ', '����������������������������������������', 394, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��SQL Server 2005�У����в�ѯ������   �����Բ�ѯ��Ա�����е���hometown����''����''�ļ�¼����ѡһ�', 'Where hometown =! ''����'';', 'Where hometown not ''����''', 'Where hometown is not ''����''', 'Where hometown <> ''����''', 395, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '��SQL Server 2005��,����������������Ե�������ȷ���ǣ�ѡ���', '������ݿ���û���ظ�������,��û�����������ʱ��,���ݾ���������', 'ά�����������Ծ��Ǳ�֤���ݿ������ݵ�׼ȷ��', '���ݿ�������Խ��ϸ��Խ��������������', 'ά�����������Կ��Ա�֤���ݵ�һ����,�������û�����������', 396, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��SQL Server 2005��,ѧ����student�а����ֶ�: ѧ�����sid(����),ѧ������sName, ���ڲ�ѯ���������ظ��ļ�¼,���������ȷ���ǣ�ѡһ�', 'select * from student where count(sid)>1', 'select a. * from student a,student b where a.sname=b.sname', 'select * from student where count(sid)>1 group by sName', 'select * from student group by sName having count(sid)>1', 397, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��SQL Server 2005�У�Ҫ��ֹ����100 ���������浽int ���͵��У�����ʹ�ã�ѡһ�', '����Լ��', '����Լ��', '���Լ��', '���Լ��', 398, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server 2005�У����¹���������˵����ȷ����(  )����ѡһ�', '������һ���趨�������������Ͳ����ٸ���', '���п���û������', '�����е�ֵ�����ظ�', '��������������ֵ', 399, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��SQL Server 2005�У���ϵͳ���ݿ���û����ݿ⣬���в�����ϵͳ���ݿ���ǣ�ѡһ�', 'master', 'model', 'msdb', 'pubs', 400, 104);
commit;
prompt 400 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server 2005�У���һ��course(�γ�)�������ֶΣ�cName(�γ�����)��grade(ѧ��)��Ҫ�Ӵ˱��в�ѯ����ѧ�ֲ��ڣ�����֮��Ŀγ����ƣ�����spl�����ȷ���ǣ�ѡһ�', 'SELECT cName FROM course WHERE grade IN (2, 4)', 'SELECT cName FROM course WHERE grade NOT BETWEEN 2 AND 4', 'SELECT cName FROM course WHERE ! (grade > 2 AND grade < 4)', 'SELECT cName FROM course WHERE ! (grade < 2 OR grade <= 4)', 401, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server 2005�У���������ʵʩ��ѡһ�', '����������Լ��', 'ʵ��������Լ��', '��������Լ��', '�Զ���������Լ��', 402, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '��SQL Server2005 �����ݿ����Ҫ�������ļ���ѡ���', '��Ҫ�����ļ�', '��Ҫ�����ļ�', '�����ļ�', '��־�ļ�', 403, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server���ݿ��У�(  )���Կ���Ϊ����ı���ѡһ�', '�α�', '��ͼ', '����', '�洢����', 404, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��SQL Server���ݿ��У�UNIQUEԼ����PRIMARY KEYԼ��֮������Ҫ�������ǣ�ѡһ�', 'UNIQUEԼ��Ҫ�����ݿ������ٴ���һ�����ݣ���˱����ڴ������ݿ��֮����ܴ�������PRIMARY KEYԼ���޴�����', 'UNIQUEԼ�������п�ֵ����PRIMARY KEYԼ���������п�ֵ', '����UNIQUEԼ���󣬸��������������ģ���PRIMARY KEYԼ���������в��������', 'UNIQUEԼ���в��ܴ����������PRIMARY KEYԼ�����Դ����������', 405, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQL Server�У����¶����ڶ������������ͣ����ˣ�ѡһ�', 'Binary', 'Image', 'Bit', 'VarBinary', 406, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��SQL Server�д���һ����ΪCustomers ���±�ͬʱҪ��ñ���clients��ı�ṹ��ͬ����������clients��ļ�¼��SQL����ǣ�ѡһ�', 'select * into customers from clients where 1<>1', 'select * into customers from clients where false', 'insert into customers select* from clients where 1<>1', 'insert customers select9 from clients where false', 407, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQLServer2005�У�������֮��ѡһ�', '�������ٸĸ�����', '����û������', 'ֻ������ҵ�������и�������������ͨ��T��SQL��������', '��������Ϊ��', 408, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��T-sql�У����£�����ͨ�����ѡһ�', '>=', '%', 'or', 'where', 409, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ڱ�student�У�����������StuID,��ִ��"Update student set StuID=80",ִ��' || chr(10) || '�Ľ�������ǣ�ѡһ�', '�����˶�������', 'û�����ݸ���', 'ɾ����һ�в�����Ҫ�������', 'T_SQL�﷨���󣬲���ִ��', 410, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ڲ�ѯ��������ִ�����µ����' || chr(10) || 'Select top 40  percent  sName,sAddress,from  students' || chr(10) || '�������10�����ݣ���ѡһ�', '��students��ֻ��10�����ݡ�', '��students��ֻ��25�����ݡ�', '��students��ֻ��10�����ݡ�', '��students��ֻ��40�����ݡ�', 411, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ڹ�ϵģ���У������к�����ɣ��к��зֱ��Ϊ��ѡһ�', 'Ԫ�飬����', '���ԣ�Ԫ��', '��ϵ������', 'Ԫ�飬��ϵ', 412, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ڹ�ϵ�����ݿ��У����ڹ����ֶν�������������ϵ������Ϊ���ӣ����Ӱ������²�ͬ�����ͣ����ˣ�ѡһ�', '�ڲ�����', '�������', '�ⲿ����', '������', 413, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ڹ�ϵ�����ݿ��У���������ָ���ǣ�ѡһ�', '���ݲ�׼ȷ', '�����ظ�����', '����֮�䲻���ڹ�ϵ', '������̫��', 414, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�ڿͻ����в�ѯ��������"��˾"��β�Ŀͻ��ļ�¼����ȷ��SQL����ǣ�ѡһ�', 'SELECT * FROM �ͻ� WHERE ��˾���� NOT LIKE ''��˾%''', 'SELECT * FROM �ͻ� WHERE ��˾���� LIKE ''_��˾''', 'SELECT * FROM �ͻ� WHERE ��˾���� NOT IN ''%��˾''', 'SELECT * FROM �ͻ� WHERE ��˾���� NOT LIKE ''%��˾''', 415, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ʵ���ϵͼ�У�ÿ��ʵ����ܶ�Ӧ��   ������ѡһ�', 'Ӧ�ó����һ������ģ��', 'Ӧ�ó����һ������', 'Ӧ�ó����һ������', 'Ӧ�ó������ݿ��е�һ����', 416, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һ�����У�ͨ��ʹ��(   )Լ������֤���е�ֵ����Ψһ�ģ�����Ψһ�ı�ʾÿ�С���ѡһ�', '����', '���', '�ǿ�', '���', 417, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ִ��SQL��䣺select *, score*0.5+20 as ��Ȩ�ɼ� from grade where (score*0.5+20)<60 order by score*0.5+20��������������ȷ�ģ�ѡһ�', '������ʾ��order by �Ӿ��в��ܳ��ֱ��ʽ��', '��ȷִ�У���ʾgrade���и���ֵ������score�ɵ͵�������', '��ȷִ�У���ʾgrade���и���ֵ���Լ���Ȩ�ɼ��У�����score�ɵ͵�������', '������ʾ��where �Ӿ��в��ܳ��ֱ��ʽ��', 418, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '(  )�������κ��ļ��顣��ѡһ�', '�������ļ�', '�������ļ�', '��־�ļ�', '����', 419, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'create table student' || chr(10) || '(' || chr(10) || 'id int identity(1,1),' || chr(10) || 'name varchar(20)' || chr(10) || ')' || chr(10) || 'alter table student add constraint uq_name unique(name)' || chr(10) || 'insert into student values(null)' || chr(10) || 'insert into student values(null)' || chr(10) || 'insert into student values(''jack'')' || chr(10) || 'insert into student values(''jack'')' || chr(10) || '����ִ������SQL����student���д���(  )�м�¼����ѡһ�', '1', '2', '3', '4', 420, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'E-Rͼ�У���ϵ��������(  )����ʾ����ѡһ�', '����', '��Բ��', '����', 'Բ��', 421, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'SQL Server���ݿ���2�ֵ�¼��֤��ʽ��������(  )��ʽ�£���Ҫ�ͻ���Ӧ�ó�������ʱ�ṩ��¼ʱ��Ҫ���û���ʶ�����롣��ѡһ�', 'Windows�����֤��', '�Գ����û���ݵ�¼ʱ��', 'SQL Server �����֤��', '��ϵͳ��ݵ�¼ʱ��', 422, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'SQL Server���ݿ��У����в�����T-SQL������������ǣ�ѡһ�', 'BEGIN TRANSACTION��', 'END TRANSACTION��', 'COMMIT TRANSACTION��', 'ROLLBACK TRANSACTION��', 423, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ģʽ����like ''_a%'',�����ĸ�����ǿ��ܵģ�ѡһ�', 'aili', 'bai', 'bba', 'cca', 424, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ĳ��stuinfoֻ��2�м�¼������stuname�������У����������Select @name = stuname from stuinfoִ�н��˵����ȷ���ǣ�ѡһ�', '���ִ���', 'û�д��󣬵�@name��û�д洢�κ�ֵ', '@name�洢���ǵ�һ�е�stuname', '@name�洢���ǵڶ��е�stuname', 425, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ĳ���ݿ�����studentID�б�����ΪstudentID int identity(50,2),�����������3����¼��Ȼ����ѵڶ�����¼ɾ��������ʱ������������һ����¼��studentID��ֵ���ǣ�ѡһ�', '8', '54', '56', '58', 426, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���Ҫȷ��һ�����еķ������в������ظ�ֵ��Ӧ�ڸ����϶��壨ѡһ�', 'PRIMARY KEY', 'UNIQUE KEY', 'CHECK', 'FOREIGN KEY', 427, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����Ҫ�ڱ�������ָ���ĵ��ʡ���������ʵȣ�����ʹ��CONTAINSν�ʣ��������ڲ����ı������Ƚ�����ѡһ�', '����', 'Լ��', 'ȫ������', '��������', 428, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����û���ʱ�����֤��Ϊ�̶�18λ�����Ը��ֶ���ò���(  )�������͡���ѡһ�' || chr(10) || '', 'int' || chr(13) || '', 'char' || chr(13) || '', 'varchar' || chr(13) || '', 'text' || chr(13) || '', 429, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʹ��T-SQL���������ֲ�����AA��BB����ȷ����ǣ�ѡһ�', 'DECLARE @AA,@BB', 'PRIVATE @AA,@BB', 'PUBLIC @AA,BB', 'DECLARE @AA,BB', 430, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����û�teacher��Score��Ĳ�����޸ĵ�Ȩ�ޣ���ȷ����Ȩ����ǣ�ѡһ�', 'GRANT INSERT,UPDATE TO TABLE Score ON teacher', 'GRANT INSERT AND UPDATE TO TABLE Score ON teacher', 'GRANT INSERT,UPDATE ON Score TO teacher', 'GRANT INSERT AND UPDATE ON Score TO teacher', 431, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����ֵ��е����ݣ�ͨ�������������ݿ⼰��ض���������ǡ��������ݵ����ݡ�������������Ҳ����Ϊ��ѡһ�', '�淶������', '�������', 'Ԫ����', '��������', 432, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Ϊ��userinfo���Լ�����﷨���£�alter table userinfo add constraint uq_userid unique ( userid )ִ�гɹ���Ϊuserinfo���(  )�ֶ������(  )Լ������ѡһ�', 'Userid �� ����', 'Userid �� Ψһ', 'Uq_userid �����', 'Uq_userid �����', 433, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Ϊ�˼ӿ��ĳ��ķ����ٶȣ�Ӧ�Դ˱�����ѡһ�', 'Լ��', '�洢����', '����', '����', 434, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Ϊ���ݿ���һ���������е������ṩ��һ�ֲ鿴��ʽ���߼�����Ϊ��ѡһ�', '�洢����', '������', '��ͼ', '��', 435, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���а���group by�������ȷ���ǣ�ѡһ�', 'Select  stuid , stuname  from  stuinfo  group by  stuid', 'Select stuid  from  stuinfo  where  stuid<1000 group by stuid', 'Select count(stuid) , stuname  from  stuinfo  group by  stuid', 'Select stuid , count(stuname)  from  stuinfo  group by stuname', 436, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���б�ʶ��������Ϊ�ֲ�����ʹ�ã�ѡһ�', 'yvar', 'My var', '@Myvar', '@My var', 437, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ĸ��������ݿ����ѡһ�', '����ģ��', '��ͼ', '��', '�û�', 438, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server��ѯ�������У������������ROUND������������������ͽض̴���SELECT round(918.2736,3),round(918.2736,-2)����֮��õ��Ľ���ǣ�ѡһ�', '918.2730 �� 900.0000', '918.2740 �� 900.0000', '918.2734 �� 900', '918.2736 �� 918.2700', 439, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server���ݿ��У��������Կ���Ϊ����ı���ѡһ�', '�α�', '��ͼ', 'ȫ������', '�洢����', 440, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQL Server���ݿ��У�����õ���products�������Ĳ�Ʒ���ƺͼ۸�Ӧ��ʹ�õ���ȷ��ѯ�ǣ�ѡһ�', 'SELECT TOP 1 Productname, Price FROM Products ORDER BY Price', 'SELECT Productname, MAX��Price��FROM Products', 'SELECT TOP 1 Productname, Price FROM Products ORDER BY Price DESC', 'SELECT Productname, MAX��Price��FROM Products GROUP BY Productname', 441, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��SQL Server�У����¶��Ǵ����������ԣ����ˣ�ѡһ�', 'ǿ��Լ��', '�ɼ�������', '���ٱ仯', '��ѯ�Ż�', 442, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQL Sever 2005�У����¹�����ͼ���ݵĲ�������ȷ�������ǣ�ѡһ�', '��ͼ����ֻ��������ѯ����������ܽ����޸ġ������ɾ��', '�����޸ĺ�ɾ����ͼ�����ݣ�������Щ���ݲ����µ����ݿ����', '�����ڲ�ѯ��������ʹ��INSERT/UPDATE/DELETE ��SQL������ͼ���в���', '������ͼ�����ݿ�������ݵĸ��ƣ����ɾ����ͼ�е������У�����Ӱ�쵽���������', 443, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL��Sever�У�ִ�д洢����MY_PROC����ȷ��T_SQLΪ��ѡһ�', 'RUN   MY_PROC', 'EXECUTE   MY_PROC', 'START   MY_PROC', 'SHELL   MY_PROC', 444, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQLServer 20050 �У�����һ�������Դ洢5���ַ��ı���A����ȷ�Ĵ���Ϊ        ��ѡһ�', 'DECLARE  A  VARCHAR(5)', 'DECLARE @A VARCHAR(5)', 'Private A  VARCHAR(5)', 'Private @A  VARCHAR(5)', 445, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��SqlServier2005�У����a>any(5,2,3),���ʾ��ѡһ�', 'a>5', 'a>2', 'a>3', '2>a>5', 446, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL��ͼ���У�SELECT DISTINCT ��Ʒ.��Ʒ���ƣ���Ʒ.���� FROM ��Ʒ' || chr(10) || 'WHERE��������Ʒ.���ۣ�>(SELECT AVG([����]) FROM ��Ʒ)����ORDER BY ��Ʒ.����DESC��' || chr(10) || '����˵��������ǣ�ѡһ�', '��SELECT AVG��[����]��FROM��Ʒ�����Ӳ�ѯ', '��ORDER BY��Ʒ.���� DESC����ָ�����۴ӵ͵���˳������', '��ѯ�����ʾ���ǵ��۴���ƽ���۸�ļ�¼', '�˲�ѯ��ʾ���ֶ�ֻ�С���Ʒ���ơ��͡����ۡ�', 447, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��SQL�����У������洢���̵������ǡ���ѡһ�', 'CREATE PROCEDURE', 'CREATE RULE', 'CREATE DURE', 'CREATE FILE', 448, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ĳ���������У��������´���Ƭ�ϣ�' || chr(10) || 'Declare @p1 int, @p2 int' || chr(10) || 'Select @p1=price from deleted' || chr(10) || 'Select @p2=price from inserted' || chr(10) || 'print convert(varchar, @p2-@p1)' || chr(10) || '�ô�������(  )����������ѡһ�', 'select', 'update', 'insert', 'delete', 449, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����������У����и��е�����˳�����ֵ���߼���������˳����ͬ��ѡһ�', '�ۼ�����', '�Ǿۼ�����', '���߶���', '���߶�����', 450, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������ֲ����ܹ��õ�ѧ���������ϸ��Ϣ��ѡһ�', 'exec sp_help student', 'exec sp_helptext student', 'exec sp_helptable student', 'exec sp_tables student', 451, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���棨���������ݿ�淶��Ҫ�ﵽ��Ч������ѡһ�', '�������ݿ�����', 'ʵ����С����������', '������һ�������洢�������ݣ�ʹ��Ƽ��������Ӽ�', '��ֹ���¡����뼰ɾ����ʱ�򣬲������ݶ�ʧ', 452, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '���棨�������ݿ�ģ�͡���ѡ���', '����ģ��', '����ģ��', '��ϵģ��', '��״ģ��', 453, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����T-SQL����������Ľ���ǣ�ѡһ�' || chr(10) || 'declare @counter int' || chr(10) || 'set @counter=1' || chr(10) || 'while @counter<3' || chr(10) || 'begin' || chr(10) || '    set @counter=@counter+1' || chr(10) || '    print @counter' || chr(10) || '    break' || chr(10) || '    print ''loop''' || chr(10) || 'end', '2' || chr(13) || 'loop', '2', '2' || chr(13) || 'loop' || chr(13) || '3' || chr(13) || 'loop', '2' || chr(13) || '3', 454, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '�����������������Լ����˵����ȷ���ǣ�ѡ���', 'Υ������������Լ��ʱ�����ܶ����ñ���в������', '���������ñ�ʱ�����õı�����Ѿ�����', '���������ñ�ʱ�����õ��в����Ѿ�����', '�����õ��в�������������ΨһԼ��', 455, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����һ��ѧ����Ϣ��student����������studentID (ѧ�����)�����з�����scores������studentID(ѧ�����)���Լ� score(���Է���)����֪student���й���50��ѧ������45�˲μ��˿���(��������scores����)������10�˲�����ִ������sql��䣺 select * from student where exists (select studentid from score where score<60)�ɷ���(  )����¼����ѡһ�', '50', '45', '10', '0', 456, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����α�myCursor��Ҫɾ�����α�ʹ�������������ѡһ�', 'DEALLOCATE  myCursor', 'DELETE  myCursor', 'REMOVE  myCursor', 'CLOSE��myCursor', 457, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���û��������Ȩ�޵�SQL����ǣ�ѡһ�', 'CTEATE', 'REVOKE', 'SELECT', 'GRANT', 458, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Ŀ������Ҫ���������׶Σ��������ݿ��E-RͼӦ����(  )�׶ν��У�ѡһ�', '�������', '��Ҫ���', '��ϸ���', '�����д', 459, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '���ж����ȵ����ƣ����ֳ�Ϊ��ѡ���', 'ʵ��', 'Ԫ��', '����', '��ϵ', 460, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Ҫ��ѯXSH���ݿ�CP���в�Ʒ�����С����䡱�Ĳ�Ʒ��������ã�ѡһ�', 'SELECT * FROM CP WHERE ��Ʒ���� LIKE �����䡯', 'SELECT * FROM XSH WHERE ��Ʒ���� LIKE �����䡯', 'SELECT * FROM CP WHERE ��Ʒ���� LIKE ��%����%��', 'SELECT * FROM CP WHERE ��Ʒ���� =��%����%��', 461, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Ҫ����һ����ʦ������������ְ�ơ�������ֶΡ�����������ʱ�������ֶ���������룬ȱʡֵΪ����ʦ��������ʵ�ʵ�ַ����ǣ�ѡһ�', 'Ϊ �� ���� �� �ֶν���defaultԼ����', 'Ϊ �� ���� �� �ֶν���check Լ����', '�ڽ�ʦ���Ͻ���һ�������� (trigger)��', 'Ϊ��ʦ�����������дһ���洢���̽��п��ơ�', 462, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Ҫ����һ��Լ������֤�û���(user)������(age)������16�����ϣ����������ȷ���ǣ�ѡһ�', 'Alter table user add constraint ck_age CHECK(age>16)', 'Alter table user add constraint df_age DEFAULT(16) for age��', 'Alter table user add constraint uq_age UNIQUE(age>16)��', 'Alter table user add constraint df_age DEFAULT(age>16)��', 463, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', 'һ������£���ϵ����ģ�������ģ��֮������Щƥ���ϵ��ѡ���', '���Ӧ��', '��¼��Ӧ����', '����ֶζ�Ӧ�������', '��֮��Ĳο���ϵ��Ӧ��֮���������ϵ', 464, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'һ����������У������Ǿۼ�������ѡһ�', '32', '64', '127', '249', 465, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'һ��ѧ��ֻ�ܾͶ���һ���༶����һ���༶����ͬʱ���ɶ��ѧ����ѧ����༶֮����(  )��ϵ����ѡһ�', 'һ��һ', 'һ�Զ�', '���һ', '��Զ�', 466, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��֪employee���о���Ĭ��Լ��df_email, ɾ����Լ�������Ϊ��ѡһ�', 'Alter table employee drop constraint df_email', 'Alter table employee remove constraint df_email', 'Alter table employee delete constraint df_email', 'Remove constraint df_email from table employee', 467, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��֪��A����amount��int���ͣ���A���������£�' || chr(10) || 'Amount' || chr(10) || '1' || chr(10) || '2' || chr(10) || '3' || chr(10) || '����������䣬' || chr(10) || 'Declare @one int' || chr(10) || 'Select @one = amount from A' || chr(10) || '�����@one�Ľ���ǣ�ѡһ�', '1', '2', '3', '����', 468, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��֪��student��studentidΪ���������ڱ��й���10�м�¼��studentid��ֵ��1' || chr(10) || '��10��' || chr(10) || '������ͼ��' || chr(10) || 'CREATE VIEW dbo.VIEW_student' || chr(10) || 'AS' || chr(10) || 'SELECT * FROM dbo.student' || chr(10) || 'GO' || chr(10) || '����ִ���������' || chr(10) || 'DELETE FROM VIEW_student WHERE (studentid = 8)��' || chr(10) || 'Ȼ��ִ�в�ѯ���' || chr(10) || 'SELECT * FROM student��' || chr(10) || 'SELECT * FROM VIEW_student��' || chr(10) || '�ٶ���������ȫ��ִ�гɹ��������Է���(  )(  )�м�¼����ѡһ�', '10,10', '10,9', '9,10', '9,9', 469, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���´�����������ϣˣ��Ĵ����ǣ�ѡһ�', 'declare @num nvarchar(10)' || chr(13) || '' || chr(10) || '@num = ���ϣˡ�' || chr(13) || '' || chr(10) || 'Print @num', 'declare @num nvarchar(10)' || chr(13) || '' || chr(10) || '@num = ���ϣˡ�' || chr(13) || '' || chr(10) || 'Select @num', 'If( true )' || chr(13) || '' || chr(10) || 'Print ��OK��', 'If( 1=1 )' || chr(13) || '' || chr(10) || 'Select ��OK��', 470, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '���¹��ڹ淶��Ƶ�������ȷ���ǣ�ѡ���', '�淶��Ƶ���ҪĿ���������������ࡣ', '�淶����������������ݿ�����ܡ�', '������ݿ�ʱ���淶���̶�Խ��Խ�á�', '�ڹ淶�����ݿ��У�����ά�����������ԡ�', 471, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������SQL Server 2005֧�ֵ������α����ͣ����ˣ�ѡһ�', '�����α�', 'Transact-SQL�α�', 'API�������α�', '�ͻ����α�', 472, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ϵͳ�����ʻ���ͽ��ױ��ʻ����д洢�˸�����˵��ʻ������ױ��д洢�˸������ÿ�εĴ�ȡ���Ϊ��֤�����ÿ����һ�δ桢ȡ��ף�����ȷ�ĸ����˸ô���˵��ʻ�������ѡ������ȷ�������ǣ�ѡһ�', '���ʻ����ϴ���insert��������', '�ڽ��ױ��ϴ���insert��������', '���ʻ����ϴ������Լ����', '�ڽ��ױ��ϴ������Լ����', 473, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��sp_recompileϵͳ�洢���̿���ǿ�ƴ洢��������һ������ʱ�������±��룬���﷨Ϊ��sp_recompile [@objectname]=''object''�����е�object���������µ�ĳ���������ƣ����ˣ�ѡһ�', '�洢��������', '����������', 'Լ����������', '��ͼ����', 474, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�û�ͨ����ͨ���������������ݿ�����ݣ����������ֶκͼ�¼Խ�࣬����������Խ����Ҫ���������������õķ����ǣ�ѡһ�', 'ɾ�����в���Ҫ��ѯ���ֶκͼ�¼', '��ѯ�а���������ֶκͼ�¼', 'ֻ��ѯһС��������', '���ø������ܵĿͻ������', 475, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�й�T-SQL�б�����ʹ�ã�����˵��������ǣ�ѡһ�', '������ʹ�ñ�������������ʹ�á�', '�����ĸ�ֵֻ��ʹ��set��䡣', '����ʹ��print����select�����������', '�ֲ�����������������@��ͷ��', 476, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��һ�����۱�(orders),��������Ա���(salepersonID)��������ţ�regionID�������۶orderamount�����У���������Ա���Ϊ��������ϣ��ͳ�Ƹ����������ܶ��Լ���������֮�ͣ����棨��������ʵ����һԸ������ѡһ�', 'SELECT regionID,SUM(orderamount) From orders', 'SELECT regionID,SUM(orderamount) From orders GROUP BY regionID', 'SELECT regionID,orderamount From orders', 'SELECT * FROM orders', 477, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����������䣬�������ǣ�ѡһ�' || chr(10) || 'CREATE PROC proc_lookup' || chr(10) || '@mystuNo varchar(8)=NULL' || chr(10) || 'AS' || chr(10) || '    IF @mystuNo IS NULL' || chr(10) || '    BEGIN' || chr(10) || '        Print ''�������˴���ѧ�Ų���''' || chr(10) || '        RETURN' || chr(10) || '    END' || chr(10) || 'SELECT * FROM stuInfo WHERE stuNO = @mystuNo' || chr(10) || 'GO' || chr(10) || 'Exec Proc_lookup', '�������', '���ô洢����Proc_lookup����', '��ʾ���������˴���ѧ�Ų���', '��ʾ�յ�ѧԱ��Ϣ��¼��', 478, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '��(  )�����ϸ��ʺϴ�����������ѡ���', '��Ҫ�����ݽ�������', '����Ĭ��ֵ', 'Ƶ������', 'Ƶ������', 479, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��(  )�Ӳ�ѯ�У��ڲ��ѯҪ�����Σ��ڲ��ѯ����������������ѯ�е�ĳЩֵ��ѡһ�', 'IN�Ӳ�ѯ', 'EXIST�Ӳ�ѯ', 'JOIN�Ӳ�ѯ', 'NOT IN�Ӳ�ѯ', 480, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��employee���firstname�ֶ��Ͻ����ķǾۼ�����������Ч���ǣ�ѡһ�', '���е��а���firstname�ֶ�ֵ�������в�����ش洢������ҳ��', '���д洢����û��Ӱ���', '���е��а���firstname�ֶ�ֵ�������в�����ش洢������ҳ��', '���е��б�����ش洢������ҳ��,���Ҹ���firstname�ֶ�ֵ������������ʱָ����˳������', 481, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��MS SQL Server�У�������ʾ���ݿ���Ϣ��ϵͳ�洢�����ǣ�ѡһ�', 'sp_dbhelp', 'sp_db', 'sp_help', 'sp_helpdb', 482, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��score���ϴ���һ����������' || chr(10) || 'create trigger tri_score ' || chr(10) || 'on score for update,delete' || chr(10) || 'as' || chr(10) || 'if (select count(*) from inserted)>0' || chr(10) || 'print(''success'')' || chr(10) || 'go' || chr(10) || '�ڲ�ѯ��������ִ������(  )��䣬���ܻ������success������ѡһ�', 'Update score set score=20', 'Delete from score where score<60', 'Insert into score values ( �˴�ʡ��)', 'Select * from score', 483, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server 2005 �Ĳ�ѯ���������������µ�T-SQL��' || chr(10) || 'USE PUBS' || chr(10) || 'GO' || chr(10) || 'SELECT   DISTNCT QTY   FROM  SALES' || chr(10) || 'WHERE QTY>=ALL(SELECT MAX(QTY) FROM SALES),�����ѡһ�', '��ȷ��ѯ��������Sales���е����е�������', '��ȷ��ѯ��������һ������', '��ʾ�Ӳ�ѯ����ȱ��GROUP����GROUP BY�Ӿ�������﷨����', '��ʾ������Ϊ���Ӳ�ѯ��ʹ�ø���ѯ�е�ͬһ�����ݿ��ʱ��Ҫ��ʹ��', 484, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQL Server 2005�Ĳ�ѯ�������У�ִ�����µ�T-SQL��' || chr(10) || 'EXEC sp_droplogin ''DBLocalHost''' || chr(10) || '�Ը������ȷ������Ϊ��ѡһ�', '���������ݿ�DBLocalHost����ɾ�������ݿ⼰��������صĶ���', '�����ڽ�ɫDBLocalHost����ɾ���ý�ɫ�������е���ص��û����ոý�ɫ�����е�Ȩ��', '�����ڵ�¼��DBLocalHost����ɾ���õ�¼������ֹʹ�øõ�¼������SQL Server', '���������ݿ��û�DBLocalHost����ɾ�����û�', 485, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server 2005�Ĳ�ѯ���������������²�ѯ��䣬����ǣ�ѡһ�' || chr(10) || ' SELECT DISTINCT T1��Type FROM Titles T1 WHERE T1.Type' || chr(10) || '  IN (SELECT Type FROM Titles WHERE T1.Pub_id<>Pub_id)', '��ѯ�ɹ������ǽ���ѯ�����κ�������', '��ѯ�ɹ��������ܹ���ѯ��һ�л��߶�������', '��ѯʧ�ܣ���Ϊ��ͬһ�ű��н��в�ѯ���Ӳ�ѯ����ʹ�ñ�ı���', '��ѯʧ�ܣ���Ϊ����ͬʱ��һ�ű���ִ�ж�β�ѯ', 486, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��SQL SERVER 2005���ݿ��У�Public��ɫ��һ������Ľ�ɫ���������µ����ԣ����ˣ�ѡһ�', '�����ܱ�ɾ��', 'ÿ�����ݿ��û�������Public��ɫ������Sa�ʻ�', '��������ÿ�����ݿ���', '����Public��ɫ����ӻ����ɾ���û�', 487, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server 2005�У��������µ�T-SQL���룬����˵����ȷ���ǣ�ѡһ�' || chr(10) || 'Create procedure price_proc(@count int output,   @avg_price money output,@type Char(12)=��business��)as' || chr(10) || ' Select @Count=count(*),@avg_price=Avg(price) from titles  where type=@type', '�����˴洢����price_price,���в��������������', '�����˴洢����price_price,���ص����û�ָ��ͼ�������������ƽ���۸�', '@Count=count(*)Ҳ����ʹ��@Count=count()����', '�����洢����ʧ�ܣ���ΪSelect�����ʹ���˾ۺϺ�������˱���ʹ��Group By���з���', 488, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL Server2005�İ�ȫ��ģ���У��ṩ�ˡ����������ͣ����������͵Ľ�ɫ����ѡһ�', '�ͻ���', '���ݿ�', '����ϵͳ', '���ݶ���', 489, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQL Server2005�Ĳ�ѯ����������������T-SQL��' || chr(10) || 'USE PUBS' || chr(10) || 'GO' || chr(10) || 'CREATE TABLE My_Table' || chr(10) || '(a int NULL, b int NULL)' || chr(10) || 'GO' || chr(10) || 'CREATE TRIGGER my_trig ON My_Table FOR INSERT' || chr(10) || 'AS' || chr(10) || 'IF UPDATE(b)' || chr(10) || '  BEGIN' || chr(10) || '    CREATE DATABASE AAA' || chr(10) || '    PRINT ''OK��''' || chr(10) || '  END' || chr(10) || 'GO' || chr(10) || 'INSERT My_Table VALUES(3,4)' || chr(10) || 'GO' || chr(10) || 'UPDATE My_Table SET a=5 WHERE b=4' || chr(10) || 'GO��ѡһ�', '��ȷ�������ݿ�AAA�����Ҵ�ӡOK��', '��һ����ȷ�������ݿ�AAA����ӡOK��,�ڵڶ��δ�����ʱ�򱨸������Ϣ', '���������Ϣ����ʾ�����ڴ�������ʹ��CREATE DATABASE���', '�ô��������ᱻ����������������Ϻ󣬲��������ݿ⣬Ҳ����õ��κ������Ϣ', 490, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQLServer2005�У�Ϊ���ݿ���������ܹ���ѡһ�', '��ֹ�Ƿ���ɾ������', '��ֹ�Ƿ��Ĳ������', '��߲�ѯ����', '��Լ���ݿ�Ĵ��̿ռ�', 491, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '���ڴ�������(  )˵���Ǵ���ġ���ѡ���', '��������һ���������͵Ĵ洢���̡�', '����ʹ�ô���������Ӧ�����ݵ�select��insert��update��delete������', 'һ�����ϵĴ����������԰���������һ��������ݲ��������������ѭ����', '�������ʹ���������乹��һ������', 492, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���ڴ洢���̣�����˵����ȷ���ǣ�ѡһ�', '�����ڴ洢������ʹ��CREATE VIEW���', 'T-SQL�������ִ���ٶ�Ҫ���ڴ洢���̡�', '�洢���̱�����в�����', '�洢���̲��ܷ��ؽ������', 493, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '���ھۼ�����������(  )˵���Ǵ���ġ���ѡ���', 'һ�������ֻ�ܴ���һ���ۼ�������', '�۽������ȷǾۼ������и���ķ����ٶȡ�', '����һ���Ǿۼ�������', '�����˾ۼ��������в��������ظ�ֵ��', 494, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ȫ������������ȷ���ǣ�ѡһ�', 'ȫ���������������ļ�ϵͳ��', '�������ж��ȫ�ı�����', '��Transact-SQL���������������Ͷ���ȫ������', '����Ķ�����ȷ', 495, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������ͼ������˵����ȷ���ǣ�ѡһ�', '��ͼ�������򻯸��Ӳ�ѯ���������ֶΣ�������Ƕ��', '��ͼ��������������ʵ���ڵ����ݣ���Ϊ���Ƕ������Թ������Ķ��岻�Ǳ�����sysobjects������sysviews��', 'Ҫ���ñ��˲�֪��������ͼ��������ڽ���ʱ���with encryption', '��ͼ�޷���drop����ɾ����Ӧʹ��delete����', 496, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������ͼ������(  )˵���Ǵ���ġ���ѡһ�', 'ʹ����ͼ�����Լ����ݵ�ʹ�á�', 'ʹ����ͼ�����Ա����������ݡ�', '��ͼ��һ���������ͼ�е�����ֻ����Դ���������ݱ�������Դ��������ͼ��', '��ͼ��ֻ�洢�˲�ѯ��䣬���������κ����ݡ�', 497, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������ͼ����˵����ȷ���ǣ�ѡһ�', '��ͼ���Ծ��в���', '��ͼ�����Լ���', '������ͼʱ����ָ������', '��ͼ�ͱ�һ���洢������', 498, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������ݿ�����ʽ������˵��������ǣ�ѡһ�', '���ݿ��������ķ�ʽ����Խ�ߣ����ݿ�����Խ��', '���ݿ����Ʒ�ʽ�����ڹ淶���ݿ�����', '���ݿ����Ʒ�ʽ�����ڼ�����������', 'һ���õ����ݿ���ƿ��Բ�����ĳ����ʽ', 499, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������ݿ�������־�ļ�����������ǣ�ѡһ�', 'һ�����ݿ�������һ��������־�ļ�', '�������ݿ�ʱ�����δָ��������־�ļ���SQL Server����Զ�����һ��', '������־�ļ���Ĭ�ϴ�СΪ1MB', '���δָ��������־�ļ��������������ļ���С���ֲ���', 500, 201);
commit;
prompt 500 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������������ĸ��ǲ���ȷ�ģ�ѡһ�', '�����ȴ���һ���ۼ�������Ȼ��ſɴ���һ�������Ǿۼ�����', '��һ�������ͼ�п����ж��ͬ��������', '��������������ֶα���ȡ����ͬһ��', '������Ѵ������ݵı����ۺ����������뱣֤�������Ӧ��ֵ���ظ�ֵ', 501, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '�����Ӳ�ѯ������˵����ȷ���ǣ�ѡ���', 'һ����˵�������Ӷ��������Ӳ�ѯ�滻��', 'һ����˵���Ӳ�ѯ�������ñ������滻��', '����ڱ����ӣ��Ӳ�ѯ�ʺ�����Ϊ��ѯ��ɸѡ������', '����ڱ����ӣ��Ӳ�ѯ�ʺ��ڲ鿴�������ݡ�', 502, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����Ӳ�ѯ����˵������ȷ���ǣ�ѡһ�', '�Ӳ�ѯ�е����������б���', '�Ӳ�ѯ���Է��ڸ���ѯ��where�󣬵��޷�����select��from�м�', '����Ӳ�ѯ���ڸ���ѯ�жԸ���ѯ���﷨�ṹ������Ӱ�죬��ô�Ӳ�ѯ����ʡ�������С����', '�Ӳ�ѯ����Ƕ�ף�����಻�ܳ���3��', 503, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�ٶ�һλ��ʦ�ɽ��ڶ��ſγ̣�һ�ſγ̿��ɶ�λ��ʦ���ڣ���ʦ��γ�֮���ǣ�ѡһ�', 'һ��һ�Ĺ�ϵ', 'һ�Զ�Ĺ�ϵ', '���һ�Ĺ�ϵ', '��Զ�Ĺ�ϵ', 504, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����order���д���orderid����1�ļ�¼��ִ������T-SQL�� ' || chr(10) || 'BEGIN TRANSACTION' || chr(10) || 'Delete from Order where orderid=1' || chr(10) || 'IF (@@Error <> 0)' || chr(10) || 'ROLLBACK TRANSACTION' || chr(10) || 'ROLLBACK TRANSACTION' || chr(10) || '����˵����ȷ���ǣ�ѡһ�', 'ִ�гɹ���OrderidΪ1�ļ�¼������ɾ����', 'ִ�гɹ���Order��û���κα仯��', 'ִ��ʱ���ִ���', 'ִ�гɹ�����������û�н�����', 505, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������Ҫ���һ������¼������������������ͼ����Ϣ����ṹ������£�����(�������ơ�ͼ��1���汾1�����1��ͼ��2���汾2�����2������)���ñ���߷��ϵ�(  )��ʽ����ѡһ�', 'һ', '��', '��', 'δ�淶����', 506, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����һϵͳԭ��ʹ��Access���ݿ⣬��Ҫʹ��sql server���ݿ⣬����(  )������������������ݿ�֮�������ת����������ѡһ�' || chr(10) || '', 'Sql server�ĸ������ݿ⹦��' || chr(13) || '', 'Sql server�Ļ�ԭ���ݿ⹦��' || chr(13) || '', '��Sql server�п�ֱ�Ӵ�Access���ݿ⣬��漴�ɡ�' || chr(13) || '', 'Sql server�ĵ���\��������' || chr(13) || '', 507, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����б�student��������£�ID(ѧ��),Name(����),Address(��ͥסַ),Department(����ϵ),DepartmentHead(ϵ����). �ñ���������(  )��ʽ����ѡһ�', 'һ', '��', '��', '�������κη�ʽ��', 508, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����������ݿ��' || chr(10) || 'CREATE TABLE department(' || chr(10) || 'DeptID      int NOT NULL  primary key,' || chr(10) || 'DeptName    varchar (20) NOT NULL' || chr(10) || ')' || chr(10) || 'CREATE TABLE Employee (' || chr(10) || 'EmployeeID    int NOT NULL,' || chr(10) || 'DeptID        int NOT NULL,' || chr(10) || 'Name          varchar (20) NOT NULL' || chr(10) || ')' || chr(10) || 'Ҫ�뱣֤Employee����ÿһ����Ա(Employee)��Ψһ�ģ���ֻ��������Department�����Ѿ����ڵĲ��ţ����ŵ������ǣ�ѡһ�', '��EmployeeID ��DeptID ��Ϊ���������', '��EmployeeID��Ϊ������ͬʱ��DeptID���ϴ���һ���⽡Լ����', '��EmployeeID��Ϊ������ͬʱ��DeptID���ϴ���һ�����Լ����', '��DepartmentID���ϴ���һ��ΨһԼ����ͬʱ��DeptID���ϴ���һ���⽡Լ����', 509, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��E-Rͼת��Ϊ��Ĺ����У����ʵ��֮����ڶ�Զ�Ĺ�ϵ��ͨ���������ǣ�ѡһ�', '������ʵ��佨���������ϵ��', '������ʵ��佨����������һ����Զ�Ĺ�ϵ�ֽ������һ�Զ�Ĺ�ϵ��', '������ʵ��佨����������һ����Զ�Ĺ�ϵ�ֽ������һ��һ�Ĺ�ϵ��', '������ʵ��䲻�����κι�ϵ��', 510, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������ʵ��,������̳һ�����ݿ�洢ϵ��Ŀγ̸������,��PROFESSORS���д洢ÿһ�����ڵ���Ϣ����COURSES���д洢���еĿγ̵���Ϣ��ÿ�ſγ̱������һ��ָ���Ľ��ڣ���ÿһ�����ڿ��Խ��ڼ��ſγ̣�Ҫ��ֻ����PROFESSORS����ע����Ľ��ڲ��ܹ����ڿγ̣����������Ҳֻ�ܽ�����Щ��COURSES���еǼǹ��Ŀγ̡�' || chr(10) || '����ѡ���У������������������ϵ����󡣣�ѡ��һ�', '��PROFESSORS���н���һ������������COURSES��', '��COURSES���д���һ�����������PROFESSORS��', '��PROFESSORS���д���һ�����������COURSES��', '��COURSES���н���һ������������PROFESSORS��', 511, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Java�У�ִ�����������c��ֵΪ��ѡһ�' || chr(10) || 'String s = "Jessica ";' || chr(10) || 'char c = s.charAt(6);', 'null', ''' ''', '''c ''', '''a''', 512, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Java���ѻ��Ĭ�����͵� Resultset ���� rs, Ҫ��ȡ������е����� , ����ִ�е�����ǣ�ѡһ�', 'rs.next()', 'rs.previous()', 'rs.getNext()', 'rs.getPrevious()', 513, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��jave�У���Worker����Person�����࣬Worker�Ĺ��췽������һ�䡱super()��, ����� ��ѡһ�', '������Worker �ж����super()����', '������Person�ж����super()����', '������Person�Ĺ��캯��', '�䷨����', 514, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��JDK1.5�����ϰ汾�У��������ͼ����������������ᷢ��ʲô����ѡһ�' || chr(10) || 'Integer ten=new Integer(10);' || chr(10) || 'Long nine=new Long (9);' || chr(10) || 'System.out.println(ten + nine);' || chr(10) || 'int i=1;' || chr(10) || 'System.out.println(i + ten);', '19 Ȼ����20', '19 Ȼ����11', '�������', '10Ȼ����1', 515, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����˵�����У���ָ��Ϊ˽�е����ݿ��Ա����£������ʡ���ѡһ�', '�����е��κκ���', '������ĳ�Ա����', '���еĳ�Ա����', '�������еĳ�Ա����', 516, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '"^(abc)|(def)"����ƥ����ǣ�ѡһ�', '"abcdef"', '"abcd"', '"abc"', '"cdef"', 517, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '(   )�ؼ���������C#�д��������з��ʻ���ĳ�Ա����ѡһ�', 'new', 'super', 'this', 'base', 518, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'C#����������ݣ� �������з������ء���ѡһ�', '��ͬ�Ĳ�������', '��ͬ�Ĳ�������', '��ͬ�ķ���ֵ', '��ͬ�ķ�������', 519, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'C#�����е��� myClass �еĳ�Ա����var1����' || chr(10) || 'public class MyClass{...private int var1;...}' || chr(10) || '����Է���var1���У�ѡһ�', 'MyClass�а�������', 'MyClass�ļ̳���', 'MyClass�ĸ���', '��MyClass��ͬһ�����ռ��µ���', 520, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'C#��Regex�ģ�    ���������Բ����ַ����Ƿ�ƥ��ĳ��������ʽģʽ����ѡһ�', 'IsMatch( )', 'IsMatchs( )', 'Split( )', 'Test()', 521, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'C#�У����й�����������˵������ȷ���ǣ�ѡһ�', '������û�з�������', '������һ�������������е�����Ԫ�ػ򼯺�Ԫ��', '�������Ĳ������ͱ�����int������', '����������������ʹ��������this�ؼ���', 522, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'C#�еķ�����дʹ�ùؼ��֣�ѡһ�', 'override', 'overload', 'static', 'inherit', 523, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'C#�е��¼�������3�����裺1�������¼�2�������¼�3�������¼�ʱ֪ͨ�����ߣ���ȷ��˳���ǣ�ѡһ�', '123', '321', '132', '213', 524, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'C#�й���ί�У�����˵����ȷ���ǣ�ѡһ�' || chr(10) || '', 'ί����һ����ĳ�Ա' || chr(13) || '', 'ί�б��붨��������' || chr(9) || '' || chr(13) || '', '����ί����Ҫʹ��delegate�ؼ���' || chr(13) || '', 'ί����һ����������' || chr(13) || '', 525, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'class Class1{' || chr(10) || '    public static int Count = 0;' || chr(10) || '    static Class1()' || chr(10) || '    {    Count++;    }' || chr(10) || '    public Class1()' || chr(10) || '    {    Count++;    }' || chr(10) || '}' || chr(10) || 'Class1 c1 = new Class1();' || chr(10) || 'Class1 c2 = new Class1();' || chr(10) || '����,Class1.Count��ֵ�Ƕ��٣�ѡһ�', '1', '2', '3', '4', 526, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����������У����и��е�����˳�����ֵ���߼�(����)˳����ͬ��ѡһ�', '�۴�����', '�Ǿ۴�����', '���߶���', '���߶�����', 527, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����ݱ��У������������Եõ����µĺô������ˣ�ѡһ�', '������ݼ������ٶ�', '�ӿ�������ٶ�', 'ʹ���ݸ��¡�����ɾ���������', 'ͨ����������ļ�����λ��¼��ͨ�����ʵ�ʱ�ļ�¼�Եø��򵥡������', 528, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��һ��SQL Server���ݿ���ORDERS ������У�orderID��customerID��orderDate��employeeID���Ѿ�����orderID����' || chr(10) || 'ORDERDETAILS��洢��ÿ�Ŷ����ĵ��ۺ�������Ϣ��' || chr(10) || 'Ҫ��ﵽ��' || chr(10) || '����ͻ�ȡ�����Ŷ�����ORDERS��ORDERDETAILS������˶�����ص�������Ϣ��Ӧ�ñ�ɾ�������з�ʽ�У�����������С��ִ�в����������Ҫ�󡣣�ѡһ�', '����һ���洢����', '��ORDERDETAILS���Ͻ���һ������', '��ORDERS���Ͻ���һ��������', '��ORDERDETAILS���Ͻ���һ�����������ORDERS��', 529, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Ӧ�ÿ������ߺͲ���ϵͳ�����ݿ�֮��һ���ã��������н�������������ݽ�������ѡһ�', '���ݿ�ϵͳ', '���ݿ����ϵͳ', 'Ӧ��ϵͳ', '�Զ�������ϵͳ', 530, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ִ��SELECT COL_LENGTH(''AA'',''BB'')�Ľ���ǣ�ѡһ�', '����AA���ݿ�BB����еĸ���', '����AA��BB�еķǿ��е�����', '����AA��BB�еĳ���', '����AA�е�BB����ֵ', 531, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������ɱ��е�()���ֶ���ɣ�ѡһ�', 'һ', '��', '��', '������', 532, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '.��������java����,����:Text.java�ı������н���ǣ�ѡһ�' || chr(10) || 'pubilc interface Face{' || chr(10) || '   int count = 40;' || chr(10) || '}' || chr(10) || 'pubilc class Text implements Face{' || chr(10) || '   private static int counter;' || chr(10) || '   pubilc static void main(String[]args){' || chr(10) || '       System.out.println( counter );' || chr(10) || '}' || chr(10) || '}', '40', '41', '0', '1', 533, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Java�����ж����û������һ��ֵ��Ҫ�󴴽�һ���Զ�����쳣���������ֵ����10��ʹ��throw�����ʽ�������쳣���쳣�����ϢΪ��something��s wrong���������Ϊ��ѡһ�', 'if (I>10)  throw Exception("something��s wrong��");', 'if (I>10)  throw Exception e ("something��s wrong��");', 'if (I>10)  throw new Exception("something��s wrong��");', 'if (I>10) throw new Exception e ("something��s wrong��");', 534, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'java�����������´��룺' || chr(10) || 'DataInputStream din = new DataInputStream ��' || chr(10) || '    new BufferedInputStream(new FileInputStream("employee.dat") ));' || chr(10) || '������employee.dat�ļ���ֻ������һ���ַ���abcdefg����System.out.println(din.read())����Ļ�ϴ�ӡ��ѡһ�', 'A', 'B', '97', '98', 535, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'java�����У����д������������������Ļ������ǣ�ѡһ�', 'DataOutput', 'OutputStream', 'BufferedOutputStream', 'IOStream', 536, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Java�У�ʹ�ã������η�ʱ��һ�����ܱ�ͬһ����ͬ���е���������ʡ���ѡһ�', 'private', 'protected', 'public', 'friendly', 537, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'public class Test {' || chr(10) || '    public static void main(String args[]){' || chr(10) || '        EqTest e = new EqTest();' || chr(10) || '        e.show();' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'class  EqTest{' || chr(10) || '    String s = "Java";' || chr(10) || '    String s2 = "java";' || chr(10) || '    public void show(){' || chr(10) || '        //��������ò��Դ���' || chr(10) || '        {System.out.println("���");}' || chr(10) || '        else' || chr(10) || '        {System.out.println("�����");}' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '�������Java�����ע����λ�ã����ã������Դ������������ȡ��������ѡһ�', 'if(s==s2)', 'if(s.equals(s2))', 'if(s.equalsIgnoreCase(s2))', 'if(s.noCaseMatch(s2))', 538, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '��pack1����class1���г�Ա������' || chr(10) || 'protected void method_1(){��}��' || chr(10) || 'private void method_2(){��},' || chr(10) || 'public void method_3(){��}��void method_4(){��},�ڰ�pack2�е���class2��class1�����࣬����class2�п��Ե��÷�����ѡ���', 'method_1', 'method_2', 'method_3', 'method_4', 539, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���벢���������Java����: ' || chr(10) || 'class A{' || chr(10) || '    int var1=1;' || chr(10) || '    int var2;' || chr(10) || '    public static void main(String[] args){' || chr(10) || '        int var3=3;' || chr(10) || '        A a = new A(); ' || chr(10) || '        System.out.println(a.var1+a.var2+var3);' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '������(  )�������ѡһ�', '0', '4', '3', '�����޷����룬��Ϊvar2����û�б���ʼ��', 540, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���벢���������Java�����' || chr(10) || 'char c = ''a'';' || chr(10) || 'switch (c) {' || chr(10) || '     case ''a'': System.out.println("a");' || chr(10) || '     default: System.out.println("default");' || chr(10) || '  }' || chr(10) || '�������ǣ�ѡһ�', '�����޷����룬��Ϊswitch���û��һ���Ϸ��ı��ʽ', 'a  default', 'a', 'default', 541, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '���� Java �������� , Ҫ��ӡ��list�д洢������,���������ȷ���ǣ�ѡ���' || chr(10) || 'ArrayList list= new ArrayList();' || chr(10) || 'list.add("a");' || chr(10) || 'list.add("b");', 'System.out.print(list);', 'System.out.print(list.toArray());', 'System.out.print(list.toString());', 'System-out-print(list.get(0));', 542, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '����Java���룬���£�' || chr(10) || 'abstract class Shape{' || chr(10) || '    abstract void draw();' || chr(10) || '}' || chr(10) || 'Ҫ����Shape�������Circle�����´�����ȷ���ǣ�ѡ���', 'class Circle extends Shape{' || chr(13) || 'int draw(){}' || chr(13) || '}', 'abstract class Circle extends Shape{  }', 'class Circle extends Shape{' || chr(13) || 'void draw();' || chr(13) || '}', 'class Circle extends Shape{' || chr(13) || 'void draw(){};' || chr(13) || '}', 543, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����java���룬���£��������У�����ǣ�ѡһ�' || chr(10) || 'public static void main(String[] args) {' || chr(10) || '    String s;' || chr(10) || '    System.out.println( "s=" + s);' || chr(10) || '}', '�������', '����ͨ��������������ʱ����', '�������У����s=null', '�������У����s=', 544, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����java���룬���£�����ʱ��������������͵��쳣����ѡһ�' || chr(10) || 'String s = null;' || chr(10) || 's.concat("abc");', 'AritthmeticException', 'NullpointerException', 'IOException', 'EOFException', 545, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����java����Ƭ�Σ����£�' || chr(10) || 'Integer a = new Integer(3);' || chr(10) || 'Integer b = new Integer(3);' || chr(10) || 'System.out.println(a==b);' || chr(10) || '���к���δ��뽫�����ѡһ�', '1', '0', 'true', 'false', 546, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����java��������,d��ȡֵ��Χ�ǣ�ѡһ�' || chr(10) || 'double d = Math.random();', 'd>=1.0', 'd>=0.0,����d<1.0', 'd>=0.0,����d<Double.MAX_VALUE', 'd>=1.0,����d<Double.MAX_VALUE', 547, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����Java�������£�����ʱ�������(  )���͵��쳣����ѡһ�' || chr(10) || 'String s = null;' || chr(10) || 's.concat("abc");', 'ArithmeticException', 'NullPointerException', 'IOException', 'EOFException', 548, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ĳJava�����main�������£��ó���������еĽ���ǣ�ѡһ�' || chr(10) || 'public static void main(String[]args){' || chr(10) || '    String str = null;' || chr(10) || '    str.concat("abc");' || chr(10) || '    str.concat("def");' || chr(10) || '    System.out.println(str);' || chr(10) || '}', 'null', 'abcdef', '�������', '����ʱ�����쳣', 549, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������JAVA ����Ƭ��:' || chr(10) || 'class A{' || chr(10) || '    public A(){' || chr(10) || '        system.out.println("A");' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'class B extends A{' || chr(10) || '    public B(){ System.out.println("B"); }' || chr(10) || '    public static void main(String[] args){' || chr(10) || '        B b = new B();' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '�������򽫣�ѡһ�', '����ͨ������', 'ͨ������,���Ϊ: A B', 'ͨ������,���Ϊ: B', 'ͨ������,���Ϊ: A', 550, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '��������Java���룬��������ʱ������(  )����ֵ��true����ѡ���' || chr(10) || 'String s = "hello";' || chr(10) || 'String t = "hello";' || chr(10) || 'String e = new String("hello");' || chr(10) || 'char[] c = {''h'',''e'',''l'',''l'',''o''};', 's.equals( t )', 't.equals( c )', 't.equals( e )', 't==c', 551, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����һ��Java������룬���£����б�����������ǣ�ѡһ�' || chr(10) || 'pubilc class Test{' || chr(10) || '    int count = 9;' || chr(10) || '    pubilc void count1(){' || chr(10) || '        int count = 10;' || chr(10) || '        System.out.println("count1" + count);' || chr(10) || '    }' || chr(10) || '    pubilc void count2(){' || chr(10) || '        System.out.println("count2" + count);' || chr(10) || '    }' || chr(10) || '    pubilc static void main(String args[]){' || chr(10) || '        Test t = new Twst();' || chr(10) || '        t.count1();' || chr(10) || '        t.count2();' || chr(10) || '    }' || chr(10) || '}', 'count1=9 count2=9', 'count1=10 count2=9', 'count1=10 count2=10', 'count1=9 count2=10', 552, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '����һ��java����ķ����ṹ�����£�' || chr(10) || 'public Integer change(String s){' || chr(10) || '}' || chr(10) || '���·�����ʵ�������ȷ���ǣ�ѡ���', 'return new Integer(s);', 'return s;', 'Integer t = Integer.valueOf(s);return t;', 'return s.getInteger();', 553, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�� Java.util.HashMap ʵ����(  )�ӿڡ���ѡһ�', 'collection', 'Set', 'Map', 'List', 554, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����Java����Σ������ˣ��������ѡһ�' || chr(10) || 'public void aMethod(String s){....}' || chr(10) || 'public void aMethod(int i){.........}' || chr(10) || 'public void aMethod(int i,float f){.....}', '��̳�', '����', '��д��', '��̬', 555, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Ϊ���ж������ַ���s1��s2�Ƿ���ȣ�Ӧ��ʹ�ã�ѡһ�', 'if (s1==s2)', 'if (s1=s2)', 'if (strcpy(s1��s2))', 'if (s1.equals(s2))', 556, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���й������е�����������ǣ�ѡһ�', '����ӵ����ͬ��������ͬ����Ϊ�͹�ͬ�Ĺ�ϵ��һ�����', '���Ƕ�������ʵ����ľ��������ʽ', '���ƵĶ����Ϊһ���࣬ÿ��������һ������Ķ���', '���������ʵ������ṹ�Ƕ�������ʵ����ʽ', 557, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������������ǣ�ѡһ�' || chr(10) || 'class A2 extends A1 {' || chr(10) || '    A2(){' || chr(10) || '        System.out.println("A2");' || chr(10) || '    }' || chr(10) || '    public static void main(String args[]){' || chr(10) || '        new A2();' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'class  A1{' || chr(10) || '    A1(){' || chr(10) || '        System.out.println("A1");' || chr(10) || '    }' || chr(10) || '}', 'A1', 'A2', 'A1A2', 'A2A1', 558, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������Java�����е�һЩ������ѡ�����ܹ�ͨ�������һ���ǣ�ѡһ�' || chr(10) || 'String s1 = new String("Hello");' || chr(10) || 'String s2 = new String("there");' || chr(10) || 'String s3 = new String();', 's3 = s1 + s2', 's3 = s1 �� s2', 's3 = s1 || s2', 's3 = s1 - s2', 559, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Ҫʹ��Java����һ����Ŀ¼����������£������ʵ������ѡһ�', 'File', 'FileoutputStream', 'Printwriter', 'BufferedReader', 560, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Ҫʹ��������������������������뵼�루��������ѡһ�', 'java.lang', 'java.stream', 'java.net', 'java.io', 561, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����Java����У�(  )���Թ���һ��DataOutputStream���󡣣�ѡһ�', 'new DataOutputStream(new FileOutputStream("abc.txt"));', 'new DataOutputStream(new OutputStream("abc.txt"));', 'new DataOutputStream(new FileWriter("abc.txt"));', 'new DataOutputStream(new FileInputStream("abc.txt"));', 562, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��J2EE�У�����Ĵ����г��ֱ��������ǣ�ѡһ�', 'File f = new File("/","autoexec.bat");', 'DataInputStream din = new DataInputStream(new FileInputStream("autoexec.bat"));', 'InputStreamReader in = new InputStreamReader(System.in);', 'OutputStreamWriter out = new OutputStreamWriter(System.in);', 563, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��J2SE�У�����Ԫ�ؾ�������ļ������ǣ�ѡһ�', 'LinkedList', 'Stack', 'Hashtable', 'TreeSet', 564, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Java.lang����Math���У������ֵ�ķ���Ϊ��ѡһ�', 'Max()', 'Min()', 'Abs()', 'Ceil()', 565, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��java���쳣�����У��ܵ�����finally���һ��ʹ�õĿ��ǣ�ѡһ�', 'try', 'catch', 'throw', 'throws', 566, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '��Java�����У���һ�����ĳ����������Ϊprotectedʱ����˵����ȷ���ǣ�ѡ���', 'ֻ��ͬһ���еĳ�Ա���ܷ�����', '��ͬ���е��κ������඼�ܹ�������', 'ͬ���е��κ��������ܹ�������', '��ͬ���е�������Է��ʸñ���', 567, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java�����У��������������ඨ�壺' || chr(10) || 'abstract class Shape{' || chr(10) || '    abstract void draw();' || chr(10) || '}' || chr(10) || 'Class Square extends Shape{}' || chr(10) || '�������ͼ��������Ĵ���ᷢ����ѡһ�', 'һ�гɹ�����', 'Shape���Ա���,Square���ܱ���', 'Square���Ա��룬Shape���ܱ���', 'Shape��Square�����ܱ���', 568, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Java�����У�С�������İ�mypackage�ж�������My_Class����mypackage���Ӱ�mysubpackage��Ҳ�и���My_Class��С����.import mypackage���������ִ�����е���䣺My_Class NewClass=New My_Class();ʱ����������ѡһ�', '����һ����mypackage.My_Class����', '����һ����mypackage. Mysubpackage.My_Class�Ķ���', '������Ǵ����', '����һ����mypackage.My_Class�Ķ����һ����mypackage. Mysubpackage.My_Class�Ķ���', 569, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Java�����У�С����������SquareRoot�ж����˷���method_A�����а�����䣺' || chr(10) || 'double my_result=Math.sqrt(1000)������Ҫ���루ѡһ�', 'Java.awt.*', 'Java.Math.*', 'Java.util.Math.*', '���ϽԷ�', 570, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Java�У�(  )�������ʹ�ü�/ֵ����ʽ�������ݡ���ѡһ�', 'ArrayList', 'HashSet', 'HashMap', 'LinkedList', 571, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java��,()�ӿ�λ�ڼ��Ͽ�ܵĶ��㡣��ѡһ�', 'Map', 'Collection', 'Set', 'List', 572, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JAVA�У�com����ĳ��ķ���ʹ�����У����������η����κ󣬿��Ա�com.db���е�������ʣ������ܱ�com.db����������ʡ���ѡһ�', 'private', 'protected', 'public', 'friendly', 573, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java�У�����Math.random() �������ܷ��صĽ���ǣ�������ѡһ�', '132.34', '0.342', '29.34E10', '1.0009', 574, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java�У�����Math.random() �������ܷ��صĽ���ǣ�ѡһ�', '132.34', '0.342', '29.34E10', '1.0009', 575, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��java�У�����ӿڵĹؼ����ǣ�ѡһ�', 'class', 'interface', 'extends', 'implements', 576, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Java�У�����CLASSPATH����������˵������ȷ���ǣ�ѡһ�', 'CLASSPATHһ������֮�󲻿��޸ģ������Խ�Ŀ¼��ӵ��û���������', '�������������������Ե����ļ�', 'CLASSPATH��һ��Ŀ¼�б�', '�������������������Ե����ļ�', 577, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '��Java�У�����final�ؼ��ֵ�˵����ȷ���ǣ�ѡ���', '������α�������һ������ֵ���͵�ͬһ������', '��������࣬�����ֻ�ܱ�һ������̳�', '������η�������÷��������������б�����', '������η�������÷������ڵ��಻�ܱ��̳�', 578, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Java�У���������е�ĳЩ�����������κ��߼���������Ҫ��������д��Ӧ��ʹ��(  )�ؼ����������������Щ��������ѡһ�', 'final', 'static', 'abstract', 'void', 579, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��JAVA�У����Ҫ���ַ������Ͷ���S��"java"�����ҳ���ĸ''v''���ֵ�λ�ã���λ��2������ʹ�ã�ѡһ�', 'mid��2��s��', 'charAt��2��', 's.indexOf��''v''��', 'indexOf��s,''v''��', 580, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '��java�У����и�ֵ�����ȷ���ǣ�ѡ���', 'char c=''a'';', 'char c="a";', 'char c=97;', 'char c=new Character(''a'');', 581, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java�У����й��ڳ������������ȷ����(  )����ѡһ�', '��������Ա�ʵ����', '���һ��������һ������������Ϊ����ģ���ô���������ǳ�����', '�������еķ������붼�ǳ����', '�����಻�ܺ��й��췽��', 582, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Java��,����ѡ���ʾ�ַ�''a''ֵ���ǣ�ѡһ�', '''a''', '"a"', 'new Character(a)', '\000a', 583, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '��Java�У�������ڰ��ĳ�������ȷ���ǣ�ѡ���', '��������������Դ�ļ��ĵ�һ�����', '�����������������import���ĺ���', 'ֻ�й�������ܷ��ڰ���', '���Խ����Դ�ļ��е������ͬһ������', 584, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Java�У�������ڰ��ĳ�������ȷ���ǣ�ѡһ�', '��������������Դ�ļ��ĵ�һ�����', '�����������������import���ĺ���', 'ֻ�й�������ܷ��ڰ���', '���Դ�ļ��е��಻���Է���ͬһ������', 585, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Java�У�������ڹ��캯����������ȷ���ǣ�ѡһ�', '���������ʽ���캯��', '���ķ���������void', '����������ͬ�����ƣ��������ܴ��κβ���', '���ϽԷ�', 586, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Java�У�����������ȷ���ǣ�������ѡһ�', 'try���п�����Ƕ��try��', 'try��������Ը���3��catch��', 'try����Ե�������', 'finally����Ե�������', 587, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Java�У�Ҫ��ʹֻ�ж���������ڵİ��ڵ�����Է��ʸ��࣬Ӧ����(  )�ؼ��֡���ѡһ�', '����Ҫ�κιؼ���', 'private', 'final', 'protected', 588, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��java�У����´��루����ȷ�ش�����һ��InputStreamReader���͵Ķ���ѡһ�', 'new InputStreamReader(new FileInputStream("1.dat"));', 'new InputStreamReader(new FileReader("1.dat"));', 'new InputStreamReader(new BufferedReader("1.dat"));', 'new InputStreamReader("1.dat");', 589, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��java�У�����ʱ�����Ĵ����Ϊ��  ������ѡһ�', '�쳣', '��ͣ', '��Ϣ', '����', 590, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java�У��ڵ�һ�ļ���import��class ��package����ȷ����˳���ǣ�ѡһ�', 'class,import, package', 'package, import, class', 'import, package, class', 'package, class, import', 591, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��java�У��ڷ���ǰʹ�ã����ؼ��֣����Ա�ʾ�˷���Ϊ�෽�������贴�����󼴿ɷ��ʡ���ѡһ�', 'void', 'final', 'public', 'static', 592, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Java�У���ʹ��JDBCʱ�����ڶ�ε���ͬһ��SQL���������ʹ��(  )ͨ�������Ч�ʡ���ѡһ�', 'Statement', 'CallableStatement', 'PrepareStatement', 'ParameterStatement', 593, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��.Net�У�ArrayList����λ�ڣ��������ռ��ڡ���ѡһ�', 'System.Array', 'System.IO', 'System.Collections', 'System.RunTime', 594, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��.NET�У�Hashtable�����ڵ������ռ��ǣ�ѡһ�', 'System.Threadint', 'System.IO', 'System.Collections', 'System', 595, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��.NET��,IL��ָ��ѡһ�', '�ӿ�����', '�м�����', '���Ĵ���', '������', 596, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��.Net�У�����CLR��IL���Դ�������ȷ���ǣ�ѡһ�', 'Ӧ�ó�����CLR�����������IL,IL���ܹ����κμ����ָ���', 'Ӧ�ó��򱻱������Σ���һ������IL,IL������ʱ��CLR���ٱ���', 'Ӧ�ó��򱻱�������,���ǵڶ���CLR�༭�ȵ�һ����', '��ȡCLR,IL������ɻ������벢���ܹ��ڲ�ͬ�ļ����ָ��±�ִ��', 597, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��.NET�У����й����¼��������˵��������ǣ�ѡһ�', '�¼������˳���Ƕ����¼��������¼��������¼�', '�����¼�ʹ��evnet�ؼ���', 'C#�е��¼�������ί����ʵ��', '�����¼�ʹ��delegate�ؼ���', 598, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��.NET�У�һЩ��������Ϊ�������ͣ����������͵�ֵΪ(  )ʱ������û�������κζ��󡣣�ѡһ�' || chr(10) || '', 'Empty' || chr(13) || '', 'null' || chr(13) || '', 'Nothing' || chr(13) || '', '0' || chr(13) || '', 599, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C#�﷨�У����������жԻ�����麯��������д��Ҫ����������ʹ�ùؼ��֣�ѡһ�', 'override', 'new', 'static', 'virtual', 600, 203);
commit;
prompt 600 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��C#�У�(  )�������η����εı���ֻ���ɵ�ǰ���򼯷��ʡ���ѡһ�', 'public', 'protected', 'internal', 'private', 601, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�У����ڼ̳кͽӿڣ�����˵����ȷ���ǣ�ѡһ�', 'C#�����ӿ�ʵ�֣�Ҳ������ؼ̳�', 'C#�����ӿ�ʵ�֣�����������ؼ̳�', 'C#�������ӿ�ʵ�֣���������ؼ̳�', 'C#�������ӿ�ʵ�֣�Ҳ��������ؼ̳�', 602, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�У���������C#�����˵����ȷ���ǣ�ѡһ�' || chr(10) || 'namespace Microsoft' || chr(10) || '{' || chr(10) || '    class Student' || chr(10) || '    {' || chr(10) || '        string type=" �������ѧԱ";  ' || chr(10) || '        internal string name="����";   ' || chr(10) || '    }' || chr(10) || '    public class Test' || chr(10) || '    {   ' || chr(10) || '        static viod Main() ' || chr(10) || '        { ' || chr(10) || '            Student stu = new Student();         //1' || chr(10) || '            Console.WriteLine(stu.type);         //2' || chr(10) || '            Console.WriteLine(stu.name);         //3' || chr(10) || '        }' || chr(10) || '    }' || chr(10) || '}', '����1����', '����2����', '����3����', '���붼����', 603, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��C#�У��������Ե�˵��������ǣ�ѡһ�', '���Կ�����ֻ����', '���Կ�����ֻд��', '���Կ����ǿɶ���д��', '���Բ���ֻ�ǿ�д��', 604, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C#�У��ӿ�����������������ڣ�ѡһ�', '���������԰����ǳ��󷽷������ӿ�ֻ�ܰ������󷽷�', '���������Ա�ʵ���������ӿڲ��ܱ�ʵ����', '������಻�ܱ�ʵ���������ӿڿ��Ա�ʵ����', '��������ܹ����̳У����ӿڲ��ܱ��̳�', 605, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��C#��,���Ҫ��������Ϊһ�������Ĳ���,�򴫵ݵ��ǣ�ѡһ�', '�����е�����Ԫ��', '����ĵ�һ��Ԫ��', '���������', '���ϽԷ�', 606, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��HTTP�����л�����������Ӧ�õ��ã�ѡһ�', 'request�����getAttribute()����', 'request�����getParameter()����', 'session�����getAttribute()����', 'session�����getParameter()����', 607, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������ڶ��η�������JSP��ҳʱ����������ʲô��ѡһ�' || chr(10) || '<!% int a=0;  %>' || chr(10) || '<%' || chr(10) || '     int b=0; ' || chr(10) || '     a  ;' || chr(10) || '     b  ; ' || chr(10) || '%>' || chr(10) || 'a:<%= a %> <br>' || chr(10) || 'b:<%= b %>', 'a=0  b=0', 'a=1  b=1', 'a=2  b=1', 'a=2  b=2', 608, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����test1.jsp����Ƭ�ϣ����£�' || chr(10) || '<html> ' || chr(10) || '<jsp:include page=��test2.jsp�� flush=��false��> ' || chr(10) || '<jsp:param name=��color�� value=��red��/> ' || chr(10) || '</jsp:include> ' || chr(10) || '</html> ' || chr(10) || 'Ҫ��test2.jsp���������color�е�ֵ������ѡ����ȷ���ǣ�ѡһ�', '<%=request.getParameter(��color��)%>', '<%=request.getAttribute(��color��)%>', '<jsp:getParam name=��color��/>', '<jsp:include param=��color��/>', 609, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ĳServlet�����Ƭ������,�û����������ַ���м��̼�����ȷ������URL���س���,�ڿ���̨����ʾ�Ľ���ǣ�ѡһ�' || chr(10) || 'public void doGet(HttpServletRequest request,HttpServletResponse response)  throws ServletException ,IOException{' || chr(10) || '    System.out.println("get");' || chr(10) || '}' || chr(10) || 'public void doPost(HttpServletRequest request,HttpServletResponse response)  throws ServletException ,IOException{' || chr(10) || '    System.out.println("post");' || chr(10) || '}', 'get', 'post', 'get' || chr(13) || '' || chr(10) || 'post', 'post' || chr(13) || '' || chr(10) || 'get', 610, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����һ��Model1��ϵ�ṹ��������һ��JSPҳ�洦�����п��������������JSP������Ҫ��������ɸ���һ��JSPҳ�棨ѡһ�', '<jsp:forward page=��view.jsp��/>', '<jsp:forward file=��view.jsp��/>', '<jsp:dispatch page=��view.jsp��/>', '<jsp:dispatch file=��view.jsp��/>', 611, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����һ��Servlet����Ĵ���Ƭ�Σ�����' || chr(10) || 'public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException {' || chr(10) || '     Request.getSession().getAttribute("A");  //��һ��' || chr(10) || '}' || chr(10) || '�ٶ���һ�з��صĶ������ò���null����ô�������洢�ڣ�����Χ�У�ѡһ�', 'page', 'session', 'request', 'application', 612, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����һ��Servlet�Ĵ���Ƭ������' || chr(10) || 'public void doGet(HttpServletRequest request,HttpServletResponse response)' || chr(10) || 'throws ServletException,IOException{' || chr(9) || '' || chr(10) || '    ______' || chr(10) || '    out.println("hi kitty!");' || chr(10) || '    out.close();' || chr(10) || '}' || chr(10) || '���д�Servletʱ������£�' || chr(10) || '' || chr(9) || 'hi kitty!' || chr(10) || '��Ӧ�ڴ�Servlet�»��ߴ�������´��루ѡһ�', 'PrintWriter out = response.getWriter();', 'PrintWriter out = request.getWriter();', 'OutputStream out = response.getOutputStream();', 'OutputStream out = request.getWriter();', 613, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C#�У����Ҫ���ļ�file1.txt��д����ĸd����ASCII��Ϊ100��,����ߴ�������д�Ĵ����ǣ�ѡһ�' || chr(10) || 'class Class1{' || chr(10) || '    static void Main(string[] args){' || chr(10) || '        string path = @"D:\file1.txt";' || chr(10) || '        FileStream fs=new FileStream(path,FileMode.Create,FileAccess.Write);' || chr(10) || '        ________�ڴ˴���֮����' || chr(10) || '        fs.Close();' || chr(10) || '    }' || chr(10) || '}', 'fs.WriteLine("d");', 'fs.Write(new byte[]{50,10,150},1,1);', 'fs.WriteByte(100);', 'fs.Write(''d'');', 614, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�У�ͨ������Thread ���Sleep(int x)������ʵ�ֽ�ֹ�߳����У�����x����ѡһ�', '��ֹ�߳����е�΢����', '��ֹ�߳����еĺ�����', '��ֹ�߳����е�����', '��ֹ�߳������Ե�CPUʱ����', 615, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C#�У����д�������н���ǣ�ѡһ�' || chr(10) || 'Hashtable hsStu = new Hashtable();' || chr(10) || 'hsStu.Add(3,"A");' || chr(10) || 'hsStu.Add(2,"B");' || chr(10) || 'hsStu.Add(1,"C");' || chr(10) || 'hsStu.Remove(1);' || chr(10) || 'Console.WriteLine(hsStu[2])', '2', 'B', '1', 'C', 616, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�У����д�������н���ǣ�ѡһ�' || chr(10) || 'int []num = new int[]{3,4,5,3,8};' || chr(10) || 'int index = Array.IndexOf(num,3);' || chr(10) || 'Console.WriteLine(index);', '-1', '0', '1', '3', 617, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C#�У����д�������н���ǣ�ѡһ�' || chr(10) || 'int[] age = new int[]{16,18,14,22};' || chr(10) || 'foreach(int i in age){' || chr(10) || '    if(i>18)' || chr(10) || '        continue;' || chr(10) || '    Console.Write(i.ToString()+" ");' || chr(10) || '}', '16 18 20 14 22', '16 18 14 22', '16 18 14', '16 18', 618, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�У����д�������н���ǣ�ѡһ�' || chr(10) || 'int[] num = new int[]{1,3,5};' || chr(10) || 'ArrayList arr = new ArrayList();' || chr(10) || 'for(int i=0;i<num.Length;i++) {' || chr(10) || '    arr.Add(num[i]);' || chr(10) || '}' || chr(10) || 'arr.Insert(1,4);' || chr(10) || 'console.Write(arr[2]);', '1' || chr(13) || '', '3' || chr(13) || '', '4' || chr(13) || '', '5' || chr(13) || '', 619, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��C#�У����д�������н���ǣ�ѡһ�' || chr(10) || 'int[] num = new int[5]{1,3,2,0,0};' || chr(10) || 'Array.Reverse(num);' || chr(10) || 'foreach(int i in num)' || chr(10) || '{' || chr(10) || '    Console.Write(i);' || chr(10) || '}', '00123', '12300', '00132', '00231', 620, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C#�У����д�������н���ǣ�ѡһ�' || chr(10) || 'static void main()' || chr(10) || '{' || chr(10) || '    int[] num1 = new int[]{1,2,3,4,5};' || chr(10) || '    int[] num2 = new int[5]{6,7,8,9,10};' || chr(10) || '    Array.Copy(num1,num2,1);' || chr(10) || '    foreach(int i in num2)' || chr(10) || '    {' || chr(10) || '        Console.Write(i);' || chr(10) || '    }' || chr(10) || '}', '62345', '678910', '12346', '178910', 621, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�У����д������н���ǣ�ѡһ�' || chr(10) || 'Hashtable hsStu = new Hashtable();' || chr(10) || 'hsStu.Add(3,"��");' || chr(10) || 'hsStu.Add(2,"��");' || chr(10) || 'hsStu.Add(1,"��");' || chr(10) || 'Console.WriteLine(hsStu[3]);', '3', '��', '1', '��', 622, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��C#��,���нṹ�����ඨ����ȷ���ǣ�ѡһ�', 'public struct Person{     string name;     int age;     public void ShowName(){          Console.WriteLine(name);     }}', 'public struct Person{     string name;     int age;     public Person(){          Conssole.WriteLine(name);     }}', 'public class Person{     string name;     int age;     public Person(){          Conssole.WriteLine(name);     }}', 'public class Person{     string name;     int age;     public Person(string name){          Conssole.WriteLine(name);     }}', 623, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�У�һ���ࣨѡһ�', '���Լ̳ж����', '����ʵ�ֶ���ӿ�', '��һ��������ֻ����һ������', 'ֻ��ʵ��һ���ӿ�', 624, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#����ʵ�߳�ͬ���Ĺؼ����ǣ�ѡһ�', 'synchronize', 'lock', 'Monitor', 'delay', 625, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Net��,�����ӿڶ������ͷŷ��й���Դ�ķ�����Dispose����������������һ��ʹ�����ͷŷ��й���Դ����ѡһ�', 'IRelease', 'IDispose', 'IDisposable', 'IDispatch', 626, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����Ե�set���ʵ���ڣ����ڷ��ʴ��ݸ������Ե����ò������ǣ�ѡһ�', 'this', 'value', 'args', 'property', 627, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������C#���룺' || chr(10) || 'class Teststring' || chr(10) || '{' || chr(10) || '    public static void Main()' || chr(10) || '    {' || chr(10) || '        String strOriginal;' || chr(10) || '        strOriginal = Console.ReadLine();' || chr(10) || '        bool A = strOriginal.Equals("A");' || chr(10) || '        Console.WriteLine(A.ToString());' || chr(10) || '        int B = strOriginal.Length;' || chr(10) || '        Console.WriteLine(B.ToString());' || chr(10) || '        Console.ReadLine();' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '��������ʱ�����롰   AAAAA��(���A��ǰ���������ո�)��������Ϊ��ѡһ�', '0 8', 'False 8', '��1 8', 'False 5', 628, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(   )�ӿ��û��洢��Servlet��ص���Ϣ����ѡһ�', 'HttpSession', 'ServletContext', 'HttpServletRequest', 'HttpServletResponse', 629, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(  )�������ڵõ�Bean������ֵ����ѡһ�', '<jsp:param>', '<jsp:getProperty>', '<jsp:setProperty>', '<jsp:forward>', 630, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '(  )�������ڽ����õĿ���Ȩ��jspҳ�洫�������ط���������һ��λ�á���ѡһ�', '<jsp:include>', '<jsp:userBean>', '<jsp:forword>', '<jsp:param>', 631, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '(  )��μ������ı�ǩ�塣��ѡһ�', '������ǩ', '��׼������ǩ', '���ñ�ǩ', '������ǩ', 632, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(  )ҳ����Model I��ϵ�ṹ�и��������󡣣�ѡһ�', 'XML', 'JSP', 'DHTML', 'HTML', 633, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '(  )���ڵ��ù��������е���һ������������ѡһ�', 'FilterConfig()', 'Filter()', 'FilterChain()', 'RequestDispatcher()', 634, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '<jsp:param>����Ԫ�ؾ�����(  )Ԫ��һ��ʹ�á���ѡһ�', '<jsp:include>', '<jsp:useBean>', '<jsp:setProperty>��', '<jsp:forward>', 635, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '<jsp:useBean>���������Ĭ����Ч��ΧΪ��ѡһ�', 'page', 'session', 'application', 'request', 636, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '<jsp:userBean>������()����ָ������������ҳ���������ض�Bean��Ψһֵ����ѡһ�' || chr(10) || '', 'id' || chr(13) || '', 'class' || chr(13) || '', 'type   ' || chr(13) || '', 'scope' || chr(13) || '', 637, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Cookie�����У��Ǹ��ܵõ�Cookie�Ĵ��ڵ�ʱ�䣨ѡһ�', 'getName()', 'getValue()', 'getMaxAge()', 'setMaxAge()', 638, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'EL���ʽ��${10 mod 3}��ִ�н��Ϊ��ѡһ�', '10 mod 3', '1', '3', 'null', 639, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Form���ύ����Ϣ�к��С�name= svse�����Ķ������JSP��a.jsp�������ѡһ�' || chr(10) || '���ܸ������JSP��' || chr(10) || '<%' || chr(10) || '' || chr(9) || 'response.sendRedirect(��a.jsp");' || chr(9) || '' || chr(10) || '%>' || chr(10) || 'a.jsp:' || chr(10) || '<%=request.getParameter(��name") %>', 'null', 'ʲô�������', '�쳣��Ϣ', 'svse', 640, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'HttpServletRequest�ӿڵ�(  )�������ڴ����Ự����ѡһ�', 'getContext()', 'getSession()', 'setSession()', 'putSession()', 641, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Http��ʲô(  )Э�顣��ѡһ�' || chr(10) || '', '������' || chr(13) || '', '��״̬' || chr(13) || '', '��״̬' || chr(13) || '', '״̬����' || chr(13) || '', 642, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'HttpЭ���״̬�루����ʾ�ļ�û�д�����ѡһ�', '200', '400', '500', '404', 643, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'J2EE �У�������ģ����������ڴ����Ի���ѡһ�', 'HttpServletRequest��getSession', 'HttpServletResponse��newSession', 'HtttpSession��newInstance', 'HttpSession��getSession', 644, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'J2EE�У�HttpServletRequest���( )�����÷����뵱ǰ����������ĻỰ�����û�У��򷵻�null��ѡһ�', 'getSession()', 'getSession(true)', 'getSession(false)', 'getSession(null)', 645, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'J2EE�У�Servlet API Ϊʹ��Cookie,�ṩ�ˣ����ࡣ��ѡһ�', 'javax.servlet.http.Cookie', 'javax.servlet.http.HttpCookie', 'javax.servlet. Cookie', 'javax.servlet.http. HttpCookie', 646, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'JSP EL���ʽ���﷨Ϊ��ѡһ�', '!JSP expression', '${JSP expression}', '#{ JSP expression}', '@{ JSP expression{', 647, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'JSPȱʡ�Ľű�����Ϊ��ѡһ�', 'HTML', 'JSP', 'ASPX', 'JAVA', 648, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', 'JSP�е����ֽű�Ԫ���ǣ�ѡ���', '����', 'Scriptlet', '���ʽ', 'ע��', 649, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Login.jspΪ��¼ҳ�棬���������£�' || chr(10) || '<form action="index.jsp" method="post">' || chr(10) || '      <input type="text" name="name"/>' || chr(10) || '      <input type="submit" value="login"/>' || chr(10) || '</form>' || chr(10) || 'Index.jsp��ֱ����ʾ�û������������ִ�����ȷ��ѡһ�', '${requestScope.name}', '<%=name%>', '${param.name}', '<%=param.name%>', 650, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Medel II ��ϵ�ṹ��(  )���󽫿ͻ��˳�����Ӧ�ó�����档��ѡһ�', 'ģ��', '������', '��ͼ', 'Servlet', 651, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'pageContext�����ṩ��(  )��request����ķ���Ȩ�ޡ���ѡһ�', 'session', 'param', 'header', 'cookie', 652, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'pageָ���е�contentType ���Ե�ȱʡֵ��ѡһ�', 'text/xml', 'text/html', 'text/plain', 'image/gif', 653, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'pageָ���е�import���Կ�����ҳ���г���(  )�Ρ���ѡһ�', '1', '2', '��', '���϶�����', 654, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Servlet ���������£���������ͬ��������洢���ݣ�ѡһ�', '���󡢻Ự��������', '��Ӧ���Ự��������', '������Ӧ�ͻỰ', '������Ӧ��������', 655, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ServletContext�ӿڵ�(  )�������ڽ����󱣴浽Servlet�������С���ѡһ�' || chr(10) || '', 'getServletContext()' || chr(13) || '', 'getContext()' || chr(13) || '', 'getAttribute()' || chr(13) || '', 'setAttribute()' || chr(13) || '', 656, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Servlet�������ڵ��ǣ�ѡһ�', 'init����', 'main����', 'service����', 'doGet����', 657, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Servlet�ĳ�ʼ������ֻ����Servlet��(  )�����л�ȡ����ѡһ�', 'doPost()����', 'doGet()', 'init()����', 'destroy()', 658, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Servletʹ��(  )�ӿڵ�forword��include��������ͨѶ����ѡһ�', 'ServletContext', 'ServletConfig', 'RequestDispatcher', 'HttpSession', 659, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Servlet�У�HttpServletResponse�ģ�������������һ��Http�����ض��������URL��ѡһ�', 'sendURL()', 'redirectURL()', 'sendRedirect()', 'redirectResponse()', 660, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'session�����(  )�����������ûỰ�ĳ�ʱʱ�䡣��ѡһ�' || chr(10) || '', 'session.setMaxInactiveInterval(30);' || chr(13) || '', 'session.setMaxTime(30) ;' || chr(13) || '', 'session.getMaxInactiveInterval() ;' || chr(13) || '', 'session.setAttribute(��time��,30) ;' || chr(13) || '', 661, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'sesson�����(  )���������ж��Ƿ�Ϊ��ʼ�»Ự����ѡһ�', 'begin()��', 'isNewSessionID()', 'invalidate()', 'isNew()', 662, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'test.jsp�ļ���������һ�д��룺' || chr(10) || '<jsp:useBean id="user" scope="__" type="com.UserBean">' || chr(10) || 'Ҫʹuser�����������������Ӧ�ó����»�����Ӧ���루ѡһ�', 'page', 'request', 'session', 'application', 663, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'WebӦ�ó���ṹ�У�web.xml�ļ��������������Ǹ�Ŀ¼�£�ѡһ�', 'class', 'WebRoot', '��Ŀ��', 'WEB-INF', 664, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��дһ��Filter����Ҫ��ѡһ�', '�̳�Filter ��', 'ʵ��Filter �ӿ�', '�̳�HttpFilter ��', 'ʵ��HttpFilter�ӿ�', 665, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��д�Զ����ǩ���������Ҫ��дһ������ȥ������ѡһ�', ' .tag�ļ�', '.tld�ļ�', 'dtd�ļ�', '.xml�ļ�', 666, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ͬ�Ŀͻ�����Ҫ�������ϢӦ�洢��(  )�С���ѡһ�' || chr(10) || '', 'Servlet������' || chr(13) || '', '�Ự����' || chr(13) || '', 'Http�������' || chr(13) || '', 'Http��Ӧ����' || chr(13) || '', 667, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'CLRΪ.NET�ṩ�·���Ĺ��ܻ��߷���,���ˣ�ѡһ�', '��������', '������֤�����Ͱ�ȫ', '������ʰ�ȫ', '�Զ����������е��﷨����', 668, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'System.String��ģ�    ����������ɾ���ַ����еĿո񡣣�ѡһ�', 'Replace()', 'Trim()', 'Remove()', 'EndsWith()', 669, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����IComparable�ӿڣ�����˵��������ǣ�ѡһ�', 'ʵ���˸ýӿڵĶ�����ζ���ܽ��бȽ�', 'һ�������ʵ�ֶ��IComparable�ӿ�', 'IComparable�ӿڰ���һ��û��ʵ�ֵķ���CompareTo()', 'ʵ���˸ýӿڵ��࣬�ڼ����и���Ķ���Ϳ��Խ���������', 670, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����List<T>��Dictionary<K,V>˵����ȷ���ǣ�ѡһ�', 'List<T>��Dictionary<K,V>����ѭ����������Ԫ�ض���', '��ȡԪ��ʱ��List<T>��Ҫ��������ת����Dictionary<K,V>����Ҫ', 'List<T>ͨ����������Ԫ�أ�Dictionary<K,V>ͨ��Key���ʼ���Ԫ��', '��List<T>��Dictionary<K,V>�У������Դ洢��ͬ���͵�Ԫ��', 671, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ڳ���������˵��������ǣ�ѡһ�', '��������԰����ǳ��󷽷�', '���г��󷽷�����һ���ǳ�����', '�����಻�ܱ�ʵ����', '������������ܷ���', 672, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���ڽӿڵ�ʹ�ã�˵��������ǣ�ѡһ�', '�ӿڿ�����Ϊ�������д���', '�ӿڿ�����Ϊ�����ķ���ֵ', '�ӿڿ���ʵ����', 'ͬʱʵ�ֶ���ӿ��Ǳ���ʵ���˶��ؼ̳�', 673, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������л�˵��������ǣ�ѡһ�', '���л��ǽ������ʽ��Ϊһ�ִ洢���ʵĹ���', '���л���Ĵ洢����ֻ���Ƕ������ļ�', '��ʶһ����ɱ����л�Ҫʹ��[Serializable]�ؼ���', 'һ����������л�����������Ͱ�����������Ҳ����ɱ����л�', 674, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����һ��ί��public delegate int myCallBack(int x);���ø�ί�в����Ļص���ԭ��Ӧ���ǣ�ѡһ�', 'void myCallBack(int x)', 'int receive(int x)', 'string receive(int x)', '��ȷ����', 675, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���з��ͼ���������ȷ���ǣ�ѡһ�', 'List<int> f = new List<int>()', 'List<int> f = new List()', 'List f = new List()', 'List<int> f = new List<int>', 676, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���й���C#�����������ȷ���ǣ�ѡһ�', '�������Ĳ�����������������������', '�������Ĳ������ͱ�����������', '������û������', '���Ͻ���', 677, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��֪C#ĳ�ӿ�����һ��Show( )����������Ը÷���ԭ�͵Ķ�����ȷ���ǣ�ѡһ�', 'public void Show( )', 'public virtual void Show( )', 'void Show( )', 'virtual void Show( )', 678, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��֪WinForm��������һ��Timer�ؼ���Interval��������Ϊ4���ӣ����ؼ���ʱ1���Ӻ󣬵����˿ؼ���Stop�������ٹ�1���Ӻ����µ��ÿؼ���strat������ ���Ըôε���Strar�����󣬵�һ�δ����ؼ���Tick �¼���ʱ�����ǣ�   �����ӡ���ѡһ�', '1', '2', '3', '4', 679, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���µ�C#����' || chr(10) || 'public class A{}' || chr(10) || 'public class B:A{}' || chr(10) || 'public class Test' || chr(10) || '{' || chr(10) || '      public static void Main()' || chr(10) || '      {' || chr(10) || '           A  myA = new A ();' || chr(10) || '           B myB = new B ();' || chr(10) || '           A myC = myB;' || chr(10) || '           Console.WriteLine(myC.GetType());' || chr(10) || '      }' || chr(10) || '}����ʱ�������ѡһ�', 'A', 'B', 'object', '�����������Ϣ����ʾ��Ч������ת��', 680, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���µ�C#����' || chr(10) || 'public static void Main()' || chr(10) || '{' || chr(10) || '    int[] A = new int[5]{1,2,3,4,5};' || chr(10) || '    Object[] B = new Object[5] {6,7,8,9,10};' || chr(10) || '    Array.Copy(A,B,2);' || chr(10) || '}' || chr(10) || '���к�����A�е���ֵΪ��ѡһ�', '1��2��3��4��5', '1��2��8��9��10', '1��2��3��9��10', '6��7��8��9��10', 681, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���µ�C#����' || chr(10) || 'using System;' || chr(10) || 'using System��Cillections;' || chr(10) || 'public class SamplesHashtable' || chr(10) || '{' || chr(10) || '      public static void Main()' || chr(10) || '      {' || chr(10) || '         Hashtable myHT = new Hashtable();' || chr(10) || '         myHT��Add("A","AA");' || chr(10) || '         myHT��Add("B","BB");' || chr(10) || '         myHT��Add("C","CC");' || chr(10) || '         Console��WriteLine(myHT��Count);' || chr(10) || '         myHT��Remove("BB");' || chr(10) || '         Console��WriteLine(myHT��Count);' || chr(10) || '      }' || chr(10) || '}�������Ϊ��ѡһ�', '3' || chr(13) || '' || chr(10) || '3', '3' || chr(13) || '' || chr(10) || '2', '2' || chr(13) || '' || chr(10) || '2', '����ʱ������ʾ��Ч�ļ�ֵ', 682, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���µ�C#����Σ�' || chr(10) || 'public struct Person {' || chr(10) || '    string Name��' || chr(10) || '    int Age��' || chr(10) || '}' || chr(10) || 'public static void Main() {' || chr(10) || '    Hasbtable A��' || chr(10) || '    Person B��' || chr(10) || '}' || chr(10) || '����˵����ȷ���ǣ�ѡһ�', 'AΪ�������͵ı�����BΪֵ���͵ı���', 'AΪֵ���͵ı�����BΪ�������͵ı���', 'A��B����ֵ���͵ı���', 'A�� B�����������͵ı���', 683, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���¶����Ա��Ĵ��룺' || chr(10) || 'class Employee' || chr(10) || '{' || chr(10) || '     private string id;' || chr(10) || '     public string Id' || chr(10) || '     {' || chr(10) || '          _________//����д��ȷ�Ĵ�����' || chr(10) || '          {    return id;    }' || chr(10) || '          set' || chr(10) || '          {' || chr(10) || '              if(id��Length>2)' || chr(10) || '                  id = value;' || chr(10) || '          }' || chr(10) || '     }' || chr(10) || '}Ӧ��д����ȷ�Ĵ���Ϊ��ѡһ�', 'let', 'set', 'get', 'put', 684, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '���¹���C#�з������ص�˵����ȷ���ǣ�ѡ���', '�������������ֲ�ͬ����������������ͬ����ô���ǿ��Թ��ɷ�������', '����������������ͬ��������ֵ���������Ͳ�ͬ����ô���ǿ��Թ��ɷ�������', '����������������ͬ�����������������Ͳ�ͬ����ô���ǿ��Թ��ɷ�������', '����������������ͬ����������������ͬ����ô���ǿ��Թ��ɷ�������', 685, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�Ķ����µ�C#���룺' || chr(10) || 'class A {' || chr(10) || '    public A( ) {' || chr(10) || '        Console.WriteLine("A");' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'class B:A {' || chr(10) || '    public B() {' || chr(10) || '        Console.WriteLine("B");' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'class Program {' || chr(10) || '    public static void Main() {' || chr(10) || '        B b = new B();' || chr(10) || '        Console.ReadLine();' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '�����������к󣬽��ڿ���̨���������ѡһ�', 'A', 'B', 'A  B', 'B  A', 686, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��.NET ��,���й��ڼ�ʱ����(JIT)������,��ȷ���ǣ�ѡһ�', '��ʱ�����ǽ���ʽ', '��ʱ�����ǽ�Դ�������ɱ�������Ĺ���', '��.NET�����,�������Ե�Դ�����Ⱦ������α����γ��м�����,�����м����Ա���ɱ�������,���ǰ����м����Ա���ɱ�������Ĺ��̳�Ϊ��ʱ����Ĺ���', '��.NET ����������п�ΪĿ��Ĵ���Ϊ�йܴ���,�������п�ΪĿ��Ĵ���Ϊ���йܴ���,�������йܴ��뻹�Ƿ��йܴ���,Ҫ����ɱ������붼���뾭����ʱ�������Ĺ���', 687, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ڣ�NET�������У���������̻߳���Ӧ����ص��඼����(  )�����ռ��С���ѡһ�', 'System.SysThread', 'System.Thread', 'System.Threading', 'NetException', 688, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������Ժ����������֤�У������ʹ����һ���Զ����Ĳ��Թ������������  ����ģ�飬�ù���ֻ�����ڼ��Ӻͼ������ȱ�ݣ��������޸Ļ����Ż������κβ�����ĵط��������Ĳ��Թ������ڣ������͵ġ���ѡһ�', '�Զ�����', '���Զ���', '�����뻯', '���ƻ���', 689, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������Լ�����,�����й���׮ģ��������ģ���˵����ȷ�ǣ�ѡһ�', '����ģ���ڵ�Ԫ�������������', '����ģ���ڵ�Ԫ�����н�������,�������ݴ��͸�����ģ��', '׮ģ���ڵ�Ԫ�����н�������', '׮ģ����ñ���ģ��,�������ݴ��͸�����ģ��', 690, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���������оٵ��߼������У����Ը����������ǣ�ѡһ�', '��������', '������ϸ���', '��串��', '�������ж�����', 691, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����������������Ĺ����ǣ�ѡһ�', '�����������������������Ԥ��', '�����ƻ���������֤���������ơ�', '���������������������������', '�����ƻ���������������������', 692, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����Ϊ������ȷ�����ִ����������е�һ�����ԭ�򡣣�ѡһ�', '����', '�ƻ�', '����', '����', 693, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��  �������ʾ��������ڣ��������ڼ������ڸô���״̬����Ϣ��ѡһ�', 'document', 'window', 'frames', 'navigator', 694, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '___�����ʾ��������������е�html�ĵ������ڼ��������ĵ�����Ϣ��ѡһ�', 'document', 'window', 'screen', 'history', 695, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '___�¼����������������û�������ťʱִ�к�������ѡһ�', 'onSubmit', 'onClick', 'onChange', 'onExit', 696, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '___�������Ϊ���ú�������䷵��һ��ֵ����ѡһ�', 'return', 'send', 'invoke', 'return false', 697, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '__JavaScript�����������������뵽��ӽ�����������ѡһ�', 'round()', 'ceil()', 'sin()', 'min()', 698, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '__���͵������ڽ��о��߻�Ƚ�����ʱ�����á���ѡһ�', '�ַ���', '����', '������', '����', 699, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '__�������ڽ��ⲿJavaScript�ļ����ӵ�HTML�ĵ�����ѡһ�', 'prompt', 'script', 'src', 'language', 700, 206);
commit;
prompt 700 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<input name="v1" type="text" value="5+3*4">' || chr(10) || '<input name="v2" type="text" value="3+4*5">' || chr(10) || 'v1.value+v2.value��ֵΪ��ѡһ�', '17+23', '40', '5+3*43+4*5', '5+3*4+3+4*5', 701, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Date�������ڴ洢Ϊ��1970��1��1��00:00:00����������___������ѡһ�', '��', '����', '��', '����', 702, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'eval(5+3*4)+eval(3+4*5)��ֵΪ��ѡһ�', '17��23', '40', '5+3*43+4*5', '5+3*4��3+4*5', 703, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'isNaN("abc")�ķ���ֵΪ��ѡһ�', 'underfined', 'null', 'true', 'false', 704, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'JavaScript���Ե��ص㣬����������Щ����ȷ��ѡһ�', '�ͻ��˽ű�����', '�ɿͻ��˽���ִ��', '��������IE��ִ��', '���ڶ��������', 705, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'JavaScript��__�����ɽ�����Ԫ����ϳ�һ���ַ�������ѡһ�', 'join', 'sort', 'reverse', 'push', 706, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����<jsp:include>,����˵������ȷ���ǣ�ѡһ�', '�����԰�����̬�ļ�', '�����԰�����̬�ļ�', '������flush����Ϊtrueʱ,��ʾ��������ʱ,���ᱻ���', '����flush���Ե�Ĭ��ֵΪtrue', 707, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����session��ʹ��,,����˵����ȷ���ǣ�ѡһ�', '��ͬ���û����ھ��в�ͬ��session', '��ͬ���û����ھ�����ͬ��session', 'session���ܳ���ʱ��', 'Session��Զ�����ܳ�ʱ', 708, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ı�ǩ���У�����ʵ��ѭ�����ܵı�ǩ�ǣ�ѡһ�', '<c:if>', '<c:for>', '<c:while>', '<c:foreach>', 709, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '��������JSP�ļ�����Ƭ�ϣ�' || chr(10) || '<HTML><BODY>' || chr(10) || '<jsp:include page=��test2.jsp��>' || chr(10) || '<jsp:param name=��username�� value=��accp��/>' || chr(10) || '</jsp:include>' || chr(10) || '</BODY></HTML>' || chr(10) || '���£� ������Ƭ�Ϸ�����test2.jsp�в��ᵼ�´���ѡ���', '<jsp:getParam name=��username��/>', '<jsp:include param =��username��/>', '<%=request.getParameter(��username��)%>', '<%=request.getAttribute(��username��)%>', 710, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ĳJSP�������´��룬��ʾ���Ϊ��ѡһ�' || chr(10) || '<%' || chr(10) || '' || chr(9) || 'int a = 5;' || chr(10) || '' || chr(9) || 'request.setAttribute(��a��,��123��);' || chr(10) || '' || chr(9) || 'session.setAttribute(��a��,��456��);' || chr(10) || '%>' || chr(10) || '<c:out value="${a}"/>', '5', '123', '456', 'null', 711, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ĳJSP�������´��룺' || chr(10) || '<%' || chr(10) || 'page .setAttribute(��a��,��page��);' || chr(10) || 'request.setAttribute(��a��,��request��);' || chr(10) || 'session.setAttribute(��a��,��session��);' || chr(10) || 'application.setAttribute(��a��,��application��);' || chr(10) || '%>' || chr(10) || '�У�${a}' || chr(10) || '����ʾ���Ϊ��ѡһ�', 'page', 'request', 'session', 'application', 712, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ַ�ʽ��������Tomcat��ѡһ�', 'javac.exe', 'shutdown.bat', 'java.exe', 'startup.bat', 713, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���ĳһJSPҳ��ı��У��м�����ѡ��nameΪ"habit"�����JSP�ύ��ͨ������(  )���ȥ��ȡ�û�ѡ�и�ѡ���ֵ����ѡһ�', 'request.getAttrubute("habit");', 'request.getParameter("habit");', 'request.getParameterValues("habit");', 'request.getHabit();', 714, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���´��룬ִ��Ч��Ϊ��ѡһ�' || chr(10) || '<c:set var=��a�� value=��123�� />' || chr(10) || '<c:out value=��${a}��/>' || chr(10) || '<c:out value=��a��/>', '123  123', 'a    123', '123  a', 'A    a', 715, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����(  )�����ڻỰ���ټ��������ݡ���ѡһ�', 'URL��д', 'Cookie', '���ر���', 'ʹ�ûỰ����', 716, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���й���import����˵��������ǣ�ѡһ�', 'import �����ܵ���һ���ض�����', 'import�����ܵ���ĳһ�����е�������', 'import������ͨ����һ���Ե�����������', 'import���Բ���ͨ����һ���Ե�����������', 717, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����Ǹ����ǳ����ࣨѡһ�', 'ServletConfig', 'HttpServlet', 'Cookie', 'HttpServletRequest', 718, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '������Щ���Խ��лỰ����ѡ���', 'Session', 'Request', 'Cookie', 'Response', 719, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���治��JAVA����ƽ̨���ǣ�ѡһ�', 'J2SE', 'JAVA EE', 'J2ME', 'Eclipse', 720, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���治����Cookieͷ���������ǣ�ѡһ�', 'Name', 'Value', 'Domain', 'Expires', 721, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������JSP����������˵��������ǣ�ѡһ�', 'request������Եõ������еĲ���', 'session������Ա����û���Ϣ', 'application������Ա����Ӧ�ù���', '������Χ��С������request��session��application', 722, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������Щ���������ͬһӦ�ó���Ĳ�ͬ��ҳ�乲�����ݣ�ѡһ�', 'page', 'response', 'request', 'session', 723, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����Ǹ�����Servlet���������У�ѡһ�', 'init()', 'doOptions()', 'service()', 'destroy()', 724, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����session��û���κ����ԣ��Ķ�����2��JSP�еĴ��룬���ֱ������ѡһ�' || chr(10) || '<% out.println(session.getAttribute("svse ")); %>' || chr(10) || '<% session.invalidate();' || chr(10) || '  out.println(session.getAttribute("svse "));' || chr(10) || '%>', 'null, �쳣��Ϣ', 'null, null', '�쳣��Ϣ���쳣��Ϣ', '�쳣��Ϣ��null', 725, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ҳ����ModelI��ϵ�ṹ�и��������󡣣�ѡһ�', 'XML', 'DHTML', 'JSP', 'HTML', 726, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���£��������ڼ���session����userid��ֵ��ѡһ�', 'session.getAttribute ("userid");', 'session.setAttribute ("userid");', 'request.getParameter ("userid");', 'request.getAttribute ("userid");', 727, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���´����ܷ����ͨ���������ܱ���ͨ��������ʱ�õ�ʲô��������ѡһ�' || chr(10) || '<%' || chr(10) || 'request.setAttribute("count",new Integer(0));' || chr(10) || 'Integer count = request.getAttribute("count") ;' || chr(10) || '%>' || chr(10) || '<%=count %>', '���벻ͨ��', '���Ա������У����0', '����ͨ����������ʱ�׳�ClassCastException', '���Ա���ͨ���������������', 728, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���´���ִ��Ч��Ϊ��ѡһ�' || chr(10) || '<c:forEach var  = "i" begin = "1" end = "5" step = "2">' || chr(10) || '' || chr(9) || '<c:out value=��${i}��/>' || chr(10) || '</c:forEach>', '1 2 3 4 5', '1 3 5', 'i i i', '15', 729, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���´���ִ��Ч��Ϊ��ѡһ�' || chr(10) || '<% session.setAttribute("a","svse"); %>' || chr(10) || '<c:if test="${2>1}">' || chr(10) || '<c:out value="${a}"/>' || chr(10) || '</c:if>', 'a', 'svse', '2>1', 'null', 730, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����ĸ���ǩʵ����switch���ܣ�ѡһ�', '<c:if>', '<c:switch>', '<c:choose>', '<c:case>', 731, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����ĸ�����������<c:forEach>��ǩ��ѡһ�', 'var', 'begin', 'end', 'delims', 732, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ĸ���������TagSupport��ķ�����ѡһ�', 'doPost()', 'doStartTag()', 'doEndTag()', 'doAfterBody()', 733, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����ľ���������ȷ������ı�ǩ�⣨ѡһ�', '<% page import = "c"%>', '<% page prefix = "c" uri = "/WEB-INF/c.tld"%>', '<% taglib prefix = "c" import = "/WEB-INF/c.tld" %>', '<% taglib prefix = "c" uri = "/WEB-INF/c.tld"%>', 734, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������Щ��Web��������ѡһ�', 'JCreator', 'Tomcat', 'JBuilder', 'Eclipse', 735, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '������Щ������Java�Ŀ���ƽ̨��ѡ���', 'J2SE', 'J2EE', 'J2ME', 'JDK', 736, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�� J2EE�У�ʹ�� Resultset����� next()�����ƶ����ʱ������������ޣ����׳��쳣�����쳣ͨ���ǣ�ѡһ�', 'InterruptedExceptlon', 'AlreadyBoundExceptlon', 'SQLException', 'NetExcePtlon', 737, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '�� J2EE�У�ʹ�� Servlet ����������Ҫ�� web.xml�����ã���Ԫ�أ�ѡ���', '<filter>', '<filter-mapping>', '<servlet-filter>', '<filter-config>', 738, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��a.jsp���д���Ƭ�����£���b.jsp�м������У�A�����룬���������a.jspҳ���������loginName��ֵ����ѡһ� ' || chr(10) || '<form action =��b.jsp�� method =��POST�� name=��form1��> ' || chr(10) || 'loginName:<input type=��text�� name=��loginName��/> ' || chr(10) || '<input type=��submit�� name=��submit��/> ' || chr(10) || '</form>', '<%=request.getParameter(��loginName��)%>', '<%=request.gerAttribute(��loginName��)%>', '<%String name=request.getParameter(��loginname��); out.println(name); %>', '<% String name=request.getAttribute(��loginname��); out.println(name); %>', 739, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��httpЭ������ڷ��ʹ������ݵķ����ǣ�ѡһ�', 'post', 'get', 'put', 'options', 740, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��J2EE�У���ǩ�����ļ���*.tld������ڣ���Ŀ¼�£�ѡһ�', 'WEB��INF', 'WEB��INF/tags', 'WEB��INF/classes', 'WEB��INF/lib', 741, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��J2EE�У�����ĳServlet�Ĵ������£��������и��ļ������³�����ȷ���ǣ�ѡһ�' || chr(10) || 'public class Servlet1 extends HttpServlet{' || chr(10) || '    public void init() throws ServletException{}' || chr(10) || '    public void service(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{' || chr(10) || '        PrintWriter out = response.getWriter();' || chr(10) || '        out.println("hello!");' || chr(10) || '    }' || chr(10) || '}', '������ļ�ʱ����ʾȱ��doGet()����dopost()���������벻�ܹ��ɹ�ͨ��', '����󣬰�Servlet1.class������ȷλ�ã����и�Servlet����������лῴ��������֣�hello!', '����󣬰�Servlet1.class������ȷλ�ã����и�Servlet����������п������κ����������', '����󣬰�Servlet1.class������ȷλ�ã����и�Servlet,��������лῴ�������ڴ�����Ϣ', 742, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��J2EE�У�����HttpSession��getLastAccessTime������������ֵΪx��getCreationTime������������ֵΪy����Ϊx - yΪ��ѡһ�', '������������֮�������ʱ��', '�����������������֮���ʱ����', '���ʹ��session���������ʱ���session����ʱ��ļ��', '���ʹ��session���������ʱ��', 743, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��J2EE�У����¶�RequestDispatcher������ȷ���ǣ�ѡһ�', 'Jsp���и������Ķ���diapatcher,����������RequestDispatcher', 'ServletConfig��һ��������getRequestDispatcher���Է���RequestDipatcher����', 'RequestDipatcher ��һ��������forward���԰�����������ݸ����Servlet����JSP����', 'JSP���и�������Ĭ�϶���request������������RequestDipatcher', 744, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��J2EE�У���web.xml�У������´���:' || chr(10) || '<session - config>' || chr(10) || '' || chr(9) || '<session - timeout>30</session - timeout>' || chr(10) || '</session - config>' || chr(10) || '�������붨����Ĭ�ϵĻỰ��ʱʱ����ʱ��Ϊ30��ѡһ�', '����', '��', '����', 'Сʱ', 745, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��J2EE�У��ض�����һ��ҳ�棬���£����������ȷ�ģ�ѡһ�', 'request.sendRedirect("http://www.svse.org");', 'request.sendRedirect();', 'response.sendRedirect("http://www.svse.org");', 'response.sendRedirect();', 746, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��J2EE����servletl�е�doGet��doPost������ֻ�����´��룺' || chr(10) || 'request.setAttribute("jb","aPtech");' || chr(10) || 'response.sendRedirect("http://localhost��8080/servlet/Servlet2");' || chr(10) || '��ô��Servlet2 ��ʹ�ã������԰�����jb��ֵȡ������ѡһ�', 'String str = request.getAttribute("jb");', 'String sir =(String)request.getAttribute("jb");', 'Object str = request.getAttribute("jb");', 'ȡ������', 747, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��JSPҳ���У��������ݵķ�Χ��С���������ǣ�ѡһ�', 'pageContext,request,application,session', 'pageContext,application,session,request', 'pageContext,request,session,application', 'pageContext,session,request,application', 748, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JSPҳ���У��ܹ����������������ö����ǣ�ѡһ�', 'out', 'response', 'request', 'config', 749, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '��JSPҳ���У������һ��Դҳ����ͨ��<jsp:forward page=urlname/>����ҳ������ת����ָ��URL��������ڸ�URL�����JSPҳ�棩�пɴ���Ĺ������ݷ�Χ�ǣ�ѡ���', 'session', 'request', 'page', 'application', 750, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��JSPҳ���У���ȷ����JavaBean���ǣ�ѡһ�', '<%jsp:useBean id="myBean" scope="page" class="pkg.MyBean" %>', '<jsp:useBean name="myBean" scope="page" class="pkg.MyBean" >', '<jsp:useBean id="myBean" scope="page" class="pkg.MyBean" />', '<jsp:useBean name="myBean" scope="page" class="pkg.MyBean" />', 751, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JSP�У�<%��"1+4" %>�������ѡһ�', 'l+4', '5', '14', '�����������Ϊ���ʽ�Ǵ����', 752, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JSP�У�pageָ��ģ�����������������Ҫ�İ����ࣨѡһ�', 'extends', 'import', 'languge', 'contentType', 753, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��JSP�У�test . jsp�ļ����£���ͼ����ʱ����������ѡһ�' || chr(10) || '<html>' || chr(10) || '' || chr(9) || '    <% String str = null; %>' || chr(10) || '' || chr(9) || '    str is <%= str%>' || chr(10) || '</html>', 'ת��������', '����ServletԴ��ʱ��������', 'ִ�б�����Servletʱ��������', '���к����������ʾ��str is null', 754, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JSP�У���Ҫ��JSP��ȷʹ�ñ�ǩ��<x:getKing/>����jsp��������taglibָ��Ϊ��<%@taglib uri = "/WEB-INF/myTags.tld" prefix = "_____">���»��ߴ�Ӧ���ǣ�ѡһ�', 'x', 'getKing', 'myTags', 'king', 755, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��JSP�У����µ�pageָ��������ʹ�õĽű�������Java���ҵ�����java.rmi.*��java��util��*������ȷ���ǣ�ѡһ�', '<%@ page Language="Java",import="java.rmi.*;java.uitl.* "%>', '<%@ page language="Java" import="java.rmi.* ;java.uitl.* "%>', '<%@ page language="Java";import="java.rmi.*;java.uitl.* "%>', '<%@ page language="Java" import="java.rmi.* ,java.uitl.*" %>', 756, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JSP�У��������й�<jsp:setProperty>��<jsp:getProperty>��ǵ���������ȷ���ǣ�ѡһ�', '<jsp:setProperty>��<jsp:getProperty>��Ƕ�������<jsp:useBean>�Ŀ�ʼ��Ǻͽ������֮��', '��������ǵ�name���Ե�ֵ�����<jsp:usebean>��ǵ�id ���Ե�ֵ���Ӧ', '<jsp:setProperty>��<jsp:getProperty> ��ǿ������ڶ�bean�ж�����������Խ���ѡ�������', '��������ǵ�name���Ե�ֵ���Ժ�<jsp:userbean>��ǵ�id���Ե�ֵ��ͬ', 757, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JSP�У�ֻ��һ�д��룺${1+2}�����н������ѡһ�', '1 2', '3', 'null', 'û���κ��������Ϊ���ʽ�Ǵ����', 758, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��MVCģʽ�У���������Ϊ��ѡһ�', 'view����', 'control����������', 'model��', '��ȷ֤', 759, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Servlet���������������ڷ����У�ÿ�������������Ӧʱ��web��������ã���������ѡһ�', 'init', 'service', 'doFilter', 'destroy', 760, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Servlet�У�������������ȷ��ȡPrintWriter������ǣ�ѡһ�', 'PrintWriter out= request.getWriter();', 'PrintWriter  out  =  request.getPrintWriter();', 'PrintWriter out= response.getWriter();', 'PrintWriter  out  =  response.getPrintWriter();', 761, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��WEBӦ�ó����Ŀ¼�ṹ�У���WEB-INF�ļ����е�libĿ¼�Ƿ�()�ļ��ģ�ѡһ�', '.jsp�ļ�', '.class�ļ�', '.jar�ļ�', 'web.xml�ļ�', 762, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ʹ�ù�����֮ǰ����(  )��������ѡһ�', 'doFilter()', 'destroy()', 'init()', 'getFilterName()', 763, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��һ��Filter�У�����filterҵ����ǣ���������ѡһ�', 'dealFilter (ServletRequest request,ServletResponse response,FilterChain chain)', 'dealFilter (ServletRequest request,ServletResponse response)', 'doFilter (ServletRequest request,ServletResponse response, FilterChain chain)', 'doFilter (ServletRequest request,ServletResponse response)', 764, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���Զ����ǩ�У�HelloTag�̳���TagSupport�࣬���������´��룺' || chr(10) || 'out.println("HELLO");' || chr(10) || '��out������������Ϊ����ѡһ�', 'PrintWriter out = response.getOut();', 'JspWriter out = pageContext.getOut();', 'JspWriter out = pageContext.getWriter();', 'PrintWriter out = response.getWriter();', 765, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������ʹ��(  )��������ѡһ�', 'response.sendRedirect("login.jsp"):', 'request.sendRedirect("login.jsp");', '<jsp :forward page= "login.jsp"/>', '<forward page= "login.jsp"/>', 766, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '( )�Ƕ������ģ����ߵ�Ԫ�Ĳ��ԡ���ѡһ�', 'ϵͳ����', '��Ԫ����', '���ɲ���', '���ղ���', 767, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���Ե����Ͱ������������ɲ��ԡ�ϵͳ���Ժ����ղ��ԡ���ѡһ�', '�߽����', '�ؼ�·������', '���ȼ�����', '��Ԫ����', 768, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Ԫ������õķ����ǣ�ѡһ�', '��װ/����װ����', 'ѹ������', '�׺в���', '�û����ղ���', 769, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ھ�̬���ԺͶ�̬���ԣ�����˵����ȷ���ǣ�ѡһ�', '���߶������г���', '���߶���Ҫ���г���', 'ֻ�о�̬������Ҫ���г���', 'ֻ�ж�̬������Ҫ���г���', 770, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����������ԣ����£���˵���Ǵ���ġ���ѡһ�', '�������������������������������������������', '����ֻ��֤��ȱ�ݴ��ڣ�����֤��ȱ�ݲ�����', '������Ա�����Լ��ĳ���󣬿���Ϊ�ó����Ѿ�ͨ�����Ե�����', '80%��ȱ�ݾۼ���20%��ģ���У����������ģ��Ĵ�󻹻ᾭ������', 771, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����������ԣ�����˵�������Ǵ���Ĺ۵㡣��ѡһ�', '��ȫ���Գ����ǲ����ܵ�', '����������з�����Ϊ', '���Կ�����ʾǱ�������ȱ��', '�����������ȱ�ݶ��ָܻ�', 772, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ʹ���Զ����Թ��ߣ�����˵��������ǣ�ѡһ�', '��߲���Ч�ʣ���ʡ���Գɱ�', '��Щ���Ե����ֹ��������', '�������еĲ��Զ�����ʹ���Զ����Թ��������', '�ʵ������߼����Զ������֤��', 773, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����·��������һ�֣������Է�������ѡһ�', '�׺�', '�ں�', 'ѹ��', '����', 774, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C���Դ���Σ����в�����������ʵ���������ǵ��ǣ�ѡһ�' || chr(10) || 'int cal(int x,int y,int z){' || chr(10) || '    int k = 0;' || chr(10) || '    if(x > 3 || y > 4){' || chr(10) || '        k = x  y;' || chr(10) || '    }' || chr(10) || '    if ( z > 2 ){' || chr(10) || '        k  = z;' || chr(10) || '    }' || chr(10) || '    return k;' || chr(10) || '}', '{x = 4��y = 4 ��z = 1}' || chr(13) || '' || chr(10) || '{x = 2 ��y = 5 ��z= 3}', '{x = 4 ��y = 4 ��z = 3}' || chr(13) || '' || chr(10) || '{x = 2 ��y = 3 ��z = 3}', '{x = 4 ��y = 4 ��z = 1}' || chr(13) || '' || chr(10) || '{x = 2 ��y = 5 ��z = 2}', '{x = 4 ��y = 4 ��z = 3}' || chr(13) || '' || chr(10) || '{x = 4 ��y = 4 ��z = 3}', 775, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���й��ڵ�Ԫ���Ե�˵���д�����ǣ�ѡһ�', '׮ģ���ɱ���ģ����ã��ڵ�Ԫ�����н��ܲ������ݣ���������ģ��', '��Ԫ�����԰׺в���Ϊ��', '׮ģ������ģ�ⱻ��ģ�鹤�������������õ�ģ��', '����ģ������ģ�ⱻģ����ϼ�ģ��', 776, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'һ������������Ϊ�˲��������ĳһ���幦�ܻ�����������ƣ���ͨ�������µĲ�������ɣ����ˣ�ѡһ�', '����Ŀ��', '��������', 'ʵ�ʵ�������', 'Ԥ�Ƶ�������', 777, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��C�����У������º�����Ϊ�˽����ж�-�������ǲ��ԣ���������Ҫ��Ĳ��������ǣ�ѡһ�' || chr(10) || 'void Check(int x,int y){' || chr(10) || '    if(x>=2||y>2){' || chr(10) || '        print("ok");' || chr(10) || '    }' || chr(10) || '}', '{x=1��y=2}' || chr(13) || '' || chr(10) || '{x=0��y=0}', '{x=1��y=4}' || chr(13) || '' || chr(10) || '{x=3��y=1}', '{x=1��y=1}' || chr(13) || '' || chr(10) || '{x=3��y=4}', '{x=2��y=2}' || chr(13) || '' || chr(10) || '{x=3��y=3}', 778, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ʹ��ҳ�г��ֵ���ȷ�Ϻ�ȡ���Ի����javascript�����ǣ�ѡһ�', 'alert("��һ�������ˣ�"+100+''Ԫ'');', 'prompt("�����룺");', 'pop("error");', 'confirm("������");', 779, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���Ҫ����ҳ����ʾ��20060816��,�ո������д��JavaScript�����ǣ�ѡһ�' || chr(10) || 'var year = 2006;' || chr(10) || 'var month = 8;' || chr(10) || 'var date = 16;' || chr(10) || 'document.write( ________ );�˴���д����', 'year+month+date', 'year+0+month+date', 'year+"0"+month+date', 'year+" "+month+" "+date', 780, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ͨ���޸�<input>Ԫ�ص�type���ԣ����ť����Ϊ���ύ����ť�͡����á���ť���������ύ����ťʱ�����ı��¼��ǣ�ѡһ�', 'onBlur', 'onChange', 'onSubmit', 'onMouseDown', 781, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ҳ����У����������JavaScript���룺' || chr(10) || '<script language="JavaScript">' || chr(10) || 'x=3;' || chr(9) || '' || chr(10) || 'y=2;' || chr(9) || '' || chr(9) || '' || chr(10) || 'z=(x + 2)/y;' || chr(9) || '' || chr(10) || 'alert(z);' || chr(10) || '</script>' || chr(10) || '����ʾ������ʾ��ѡһ�', '2', '2.5', '32/2', '16', 782, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����JavaScript����У�������ʵ�ֵ���һ����ťʱ����һ����Ϣ�򡣣�ѡһ�', '<BUTTON VALUE ="�����Ӧ" onClick=alert("ȷ��")></BUTTON>', '<INPUT TYPE="BUTTON" VALUE ="�����Ӧ" onClick=alert("ȷ��")>', '<INPUT TYPE="BUTTON" VALUE ="�����Ӧ" onChange=alert("ȷ��")>', '<BUTTON VALUE ="�����Ӧ" onChange=alert("ȷ��")></BUTTON>', 783, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ĸ����Կ��Ի�ô򿪵�ǰ���ڵ�window����ѡһ�', 'opener', 'parent', 'self', 'top', 784, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����JavaScript�Զ��庯����ȷ���ǣ�ѡһ�', 'int function sum(int a,int b){' || chr(13) || 'return a+b;' || chr(13) || '}', 'function sum(var a,var b){' || chr(13) || 'return a+b;' || chr(13) || '}', 'var function sum(a,b){' || chr(13) || 'return a+b;' || chr(13) || '}', 'function sum(a,b){' || chr(13) || 'return a+b;' || chr(13) || '}', 785, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������JavaScript�еĵ�ѡ��ť��Radio����˵����ȷ���ǣ�ѡһ�', '�����ѡ��ť��checked���Խ���ΪTrue', '��ͬһ��ҳ���У���ĳ��ʱ�̣�ֻ����һ��Radio��ť��ѡ��', '�����ѡ��ť��ѡ����checked����ΪTrue', '�����ѡ��ť��ѡ����value����ΪTrue', 786, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '�������JavaScript�еĵ�ѡ��Ť��Radio����˵����ȷ���ǣ�ѡ���', '��ѡ��ť����ͨ��������ѡ�֡��͡�δѡ�С�ѡ���������л�', '��ѡ��ťû��checked����', '��ѡ��ť֧��onClick�¼�', '��ѡ��ť���length���Է���һ��ѡ�����е�ѡ��ĸ���', 787, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������Щ��䲻�ܹ�������ʾ�򣬻���ҳ��������ݣ�ѡһ�', 'alert(Hello World)', 'prompt("Hello World","")', 'document.write("Hello World")', 'document.writeln("Hello World")', 788, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����������һ�δ��룬' || chr(10) || '<script language="javascript">' || chr(10) || 'var a = "18";' || chr(10) || 'var b = 10 ;' || chr(10) || 'document.write((a+b)+"&nbsp;&nbsp;&nbsp;&nbsp;");' || chr(10) || 'document.write(a-b);' || chr(10) || '</script>' || chr(10) || '��ѡ�������ӡ����Ľ������ѡһ�' || chr(10) || '', '28  0     ' || chr(13) || '', '28  8' || chr(13) || '', '1810   8' || chr(13) || '', '1810    0   ' || chr(13) || '', 789, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����XML�ĵ�ʵ��<decimals>-2.0 -3.0 8.6</decimals>,��ǡ�����������Ľṹ��XML SchemaƬ���ǣ�ѡһ�', '<xs:element name="decimals">' || chr(13) || '' || chr(10) || '    <xs:simpleType>' || chr(13) || '' || chr(10) || '      <xs:restriction base="xs:decimal">' || chr(13) || '' || chr(10) || '         <xs:minInclusive value="-3.0"/>' || chr(13) || '' || chr(10) || '         <xs:maxInclusive value="8.6"/> ' || chr(13) || '' || chr(10) || '      </xs:restriction>' || chr(13) || '' || chr(10) || '    </xs:simpleType>' || chr(13) || '' || chr(10) || '    </xs:element>', '<xs:element name="decimals">' || chr(13) || '' || chr(10) || '    <xs:simpleType>' || chr(13) || '' || chr(10) || '      <xs:union itemType="xs:decimal">     ' || chr(13) || '' || chr(10) || '    </xs:simpleType>' || chr(13) || '' || chr(10) || '    </xs:element>', '<xs:element name="decimals">' || chr(13) || '' || chr(10) || '    <xs:simpleType>' || chr(13) || '' || chr(10) || '      <xs:list itemType="xs:decimal">    ' || chr(13) || '' || chr(10) || '    </xs:simpleType>' || chr(13) || '' || chr(10) || '    </xs:element>', '<xs:element name="decimals">' || chr(13) || '' || chr(10) || '    <xs:simpleType>' || chr(13) || '' || chr(10) || '      <xs:all itemType="xs:decimal">         ' || chr(13) || '' || chr(10) || '    </xs:simpleType>' || chr(13) || '' || chr(10) || '    </xs:element>', 790, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������µ�DTD�ĵ��������XMLʵ�������ܹ�ͨ����DTD��У�顣��ѡһ�' || chr(10) || '<!ELEMENT doc(title?,chap*)>' || chr(10) || '<!ELEMENT title (#PCDATA)>' || chr(10) || '<!ELEMENT chap (sect )>' || chr(10) || '<!ELEMENT sect (para )>' || chr(10) || '<!ELEMENT para (#PCDATA)>', '<doc><chap><para>Text</para></chap></doc>', '<doc><chap><sect><para>Text</para></chap></doc>', '<doc><title>Text</title></doc>', '<doc><title>Text</title><sect><para>Text </para></sect></doc>', 791, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���� () �����ݴ����׼, Web�������ʵ�ֿ�ƽ̨�������Ե��໥ͨ�ź����ݹ���ѡһ�', 'HTML', 'CSS', 'XML', 'XSLT', 792, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ĳ������վ�������ϴ󣬲���������Ҫ����ʱ����������վ����ͨ��������������ֳ��豸���ʡ���վ��̨��һ������xml��Ӧ��ϵͳ����ϵͳ�����ݿ������ݶ�ȡ��xml�ĵ��У���ʹ��DOM���н�����ʹ�����£�������������ߺ�̨Ӧ��ϵͳ�����ܣ��Ӷ���߸���վ�����ܣ�ѡһ�', '��xml�ĵ�ת����html��ҳ��', 'ʹ��SAX����xml�ĵ���', '������������xml�ĵ�ֱ�ӷ��͸��������', 'ʹ����ʽ���xml�ĵ�����ת����', 793, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '���һ��XML �ĵ���������(  )��������ǳ���Ϊ��Ч��xml�ĵ�����ѡ���', 'û������ XML �淶������﷨����', '���� XML�﷨����û�� ����DTD ��Schema��', '������DTD ��Schema����û������DTD ��Schema�ж���Ĺ���', '�����DTD ��Schema�������﷨�淶��', 794, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����DOM��������һ��XML�ĵ����������XML�ĵ����У���������ѡһ�' || chr(10) || '<book>' || chr(10) || '    <author>tom</author>' || chr(10) || '    <bookcode>12</bookcode>' || chr(10) || '</book>', '0', '3', '4', '5', 795, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������ͬ��Ԫ���������һ��Ӧʹ���ĸ����ţ�ѡһ�', '+', '*', '��', '|', 796, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Ҫ����JavaScriptʵ������Ĺ��ܣ���һ���ı��������ݷ����ı�󣬵���ҳ����������ֽ�����һ����Ϣ����ʾ�ı����е����ݣ����������ȷ���ǣ�ѡһ�', '<input type="text" onChange="alert(this.value)">', '<input type="text" onClick="alert(this.value)">', '<input type="text" onChange="alert(text.value)">', '<input type="text" onClick="alert(value)">', 797, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ΪJavaScript���������������ȷ���ǣ�ѡһ�', 'dim x��', 'int x��', 'var x��', 'x��', 798, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���¶�������������󣬳��ˣ�ѡһ�', 'window', 'document', 'location', 'session', 799, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�û����ı���selectԪ���е�ֵʱ���ͻ����__�¼�������ѡһ�' || chr(10) || '', 'onClick' || chr(13) || '', 'onFoucs' || chr(13) || '', 'onMouseOver' || chr(13) || '', 'onChange  ' || chr(13) || '', 800, 206);
commit;
prompt 800 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��date����ķ������У�����getMonth()������ʹ��ʱ ����__����һ���е�7�¡���ѡһ�', '3', '6', '7', '8', 801, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��HTMLҳ���У��������Window�����˵������ȷ���ǣ�ѡһ�', 'Window�����ʾ������Ĵ��ڣ������ڼ����йش���״̬����Ϣ', 'Window������������������ݵ�������', '�������HTML�ĵ�ʱ��ͨ���ᴴ��һ��Window����', '����ĵ������˶����ܣ������ֻΪԭʼ�ĵ�����һ��Window��������Ϊÿ����ܴ���Window����', 802, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��HTMLҳ���У������йص�Document���������������ǣ�ѡһ�' || chr(10) || '', 'Document�������ڼ����޸�HTMLԪ�غ��ĵ��е��ı�' || chr(13) || '', 'Document�������ڼ�������������е�HTML�ĵ�����Ϣ' || chr(13) || '', 'Document�����ṩ�ͻ�������ʵ�URL���б�' || chr(13) || '', 'Document�����location���԰����йص�ǰURL����Ϣ' || chr(13) || '', 803, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��HTMLҳ����ʹ���ⲿJavaScript�ļ�����ȷ�﷨�ǣ�ѡһ�', '<language="JavaScript" src="scriptfile.js">', '<script language="JavaScript" src="scriptfile.js"></script>', '<script language="JavaScript" =scriptfile.js></script>', '< language  src="scriptfile.js">', 804, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��HTML�У�Location�����()�����������û����URL�Ķ˿ںš���ѡһ�', 'hostname', 'host', 'port', 'href', 805, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��HTML�У�Ϊ����ҳ���������ǰҳ���URL�ĵ�ַ������Javascript�����ȷ���ǣ�ѡһ�', 'document.write(document.location);', 'document.write(document.title);', 'document.write(document.body);', 'document.write(document.links);', 806, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��HTML�У�����JavaScript��䵯���ĶԻ�������ʾ��ֵ�ǣ�ѡһ�' || chr(10) || '<script language="JavaScript">' || chr(10) || 'var a=10;' || chr(10) || 'var b=5;' || chr(10) || 'var c=10/5;' || chr(10) || 'if(c==0 || a>5)' || chr(10) || '    confirm(c+"�ܺ�");' || chr(10) || 'else if(c>0 && a<5)' || chr(10) || '    confirm(c+"һ��");' || chr(10) || 'else ' || chr(10) || '    confirm(c+"�ܲ�");' || chr(10) || '< /script>', '2�ܺ�', '0�ܺ�', '2һ��', '2�ܲ�', 807, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JavaScript �У�����ʹ��Date����ģ����������ظö�������ڡ���ѡһ�' || chr(10) || '', 'getDate' || chr(13) || '', 'getYear' || chr(13) || '', 'getMonth' || chr(13) || '', 'gerTime' || chr(13) || '', 808, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��JavaScript��,("12.3" + 1.2)�ļ������ǣ�ѡһ�', '12.3', '13.5', '13', '12.31.2', 809, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��JavaScript�У�__���Կɷ����ַ����е��ַ�����ѡһ�', 'blink', 'PI', 'length', 'max()', 810, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JavaScript��,���ı���(Text)��֧�ֵ��¼�������ѡһ�' || chr(10) || '', 'onBlur' || chr(13) || '', 'onLostFocused' || chr(13) || '', 'onFocus' || chr(13) || '', 'onChange' || chr(13) || '', 811, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��JavaScript�У��绰����010-88669696��֤������ȷ���ǣ�ѡһ�', '//\d{3}-\d{8}', '/\d{3}-\d{8}/', '/^\d{3}-\d{8}$/', '/^0d{3}-d8{}$/', 812, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JavaScript��,���Ŧ(Button)֧�ֵ��¼�������ѡһ�', 'onClick' || chr(13) || '', 'onChange' || chr(13) || '', 'onSelect' || chr(13) || '', 'onSubmit' || chr(13) || '', 813, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JavaScript�У����ж�������ķ�����ȷ���ǣ�ѡһ�', 'emp = new Array[3];', 'emp = new Array(3);', 'emp = new() Array;', 'emp = new Array[];', 814, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��JavaScript�ж����������Щ����ȷ��ѡһ�', 'var count', 'var city = ''wuhan''', 'result = true', 'int i', 815, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JavaScript������ĺ����ǣ�ѡһ�', 'Sort()', 'Reverse()', 'Join()', 'Age()', 816, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ڵ�ǰҳ���ͬһĿ¼����һ��Ϊshow.js���ļ�, ����(  )���������ȷ���ʸü�����ѡһ�', '<script language= "show.js"></script>', '<script type="show.js"></script>', '<script language="JavaScript"  src="show.js"></script>', '<script runat="show.js"></script>', 817, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ҳ����ʹ��JavaScript����Щ����������ȷ���ǣ�ѡһ�', 'ʹ��<script> ��ǩ��JavaScript ����Ƕ�뵽��ҳ��', '��������<style> ��ǵ�href ����ָ�����ⲿ�ļ���', '������HTML��ǩ��on��ͷ�����Լ��¼����������', '��������<script> ��ǵ�src ����ָ�����ⲿ�ļ���', 818, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'DataView����ģ�  ������ʵ�ֶ����ݵ�ɸѡ��ѡһ�', 'Table', 'Sort', 'RowFilter', 'Count', 819, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ListView�ؼ����б��������ĸ��ࣨѡһ�', 'ListViewItem', 'ListItem', 'ViewItem', 'Li', 820, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'lvwList��WinForms�����е��б���ͼ�ؼ��������������¼����룺 ' || chr(10) || 'private void btnChangeText_Click(object sender, System.EventArgs e)' || chr(10) || '{' || chr(10) || '    lvwList.SelectedItems[1].Text = "A";  ' || chr(10) || '}' || chr(10) || '���иô���ʱ������˵����ȷ���ǣ�ѡһ�', '��������ѡ����б�����ı�Ϊ"A"', '����ѡ��ĵ�һ����ı���ϢΪ"A"', '��ֻѡ��һ���ʱ�򣬳��򽫱��������Ϣ', '��û��ѡ���κ����ʱ�򣬸ô����в��ᱻִ��', 821, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ʾ�����Ҫ�����ǣ�ѡһ�', '��������', '��������', '�������ݿ�', '�ṩ�������ʾ�Ľ���', 822, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������Ҫ�����������һ��SQL��ѯ��䣬���������ڣ�ѡһ�', 'ģ�Ͳ�', '���ݷ��ʲ�', 'ҵ���߼���', '��ʾ��', 823, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���󹤳�ģʽ���漰�����е������ࣨѡһ�', 'ͳһ�ӿ���', '���幤����', '�����Ʒ��', '�����Ʒ��', 824, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���󹤳�ģʽ����ͼ�ǣ�ѡһ�', '�ṩһ������һϵ����ض���Ľӿڣ�������Ҫָ��������', '��һ����Ľӿ�ת���ɿͻ�ϣ��������һ���ӿ�', '�����󲿷�������ʵ�ֲ��ַ��룬ʹ���Ƕ����Զ����ر仯', 'Ϊ��ϵͳ�е�һ��ӿ��ṩһ��һ�µĽ���', 825, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '��������ܹ������֮������ù�ϵ������˵��������ǣ�ѡ���', '�������Ҫ�������ݷ��ʲ�', '�������Ҫ�����߼���', '�߼�����Ҫ�������ݷ��ʲ�', '�߼�����Ҫ���ý����', 826, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�б���ͼListView�ؼ��еģ������Ա�ʾ�б���ϣ�ѡһ�', 'Item', 'Items', 'SubItem', 'SubItems', 827, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����TreeView treeView1 = new TreeView(),��treeView1��Nodes��Add("���ڵ�")���ص���һ����   �����͵�ֵ����ѡһ�', 'TreeNode', 'int', 'string', 'TreeView', 828, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����ĸ������б���ͼListView��View���ԵĿ�ѡֵ��ѡһ�', 'LargeIcon', 'Caption', 'Details', 'List', 829, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ADO.NET ��,ִ�����ݿ��ĳ���洢����,��������Ҫ����(   )���������ǵ�����,���ú��ʵķ�����ѡһ�', 'һ��Connection �����һ��Command ����', 'һ��Connection �����DataSet ����', 'һ��Command �����һ��DataSet ����', 'һ��Command �����һ��DataAdapter ����', 830, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ADO��NET�У�Ϊ��ִ��һ���洢���̣���Ҫ��Command�����CommandType��������Ϊ��ѡһ�', 'CommandType.StoredProcedure', 'CommandType.TableDirect', 'CommandType.Text', 'CommandType.Sql', 831, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ADO.NET�У����п�����ΪDataGridView�ؼ�������Դ���ǣ�ѡһ�' || chr(10) || '1.DataSet' || chr(10) || '2.DataTable' || chr(10) || '3.DataView', '1��2', '1��3', '2��3', '1��2��3������', 832, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Winforms�����У�Ϊ�˴������ļ���ȡ�����ַ����������ĸ������Ǵ���ģ�ѡһ�' || chr(10) || '1����������ļ�App.config' || chr(10) || '2���������System.configuration' || chr(10) || '3�����using System.Configuration;' || chr(10) || '4��ʹ��Configuration������ȡ�����ַ���', '1', '2', '3', '4', 833, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'չ������ͼ�ؼ�ʱ�ᴥ�����¼��ǣ�ѡ���', 'AfterCollapse', 'AfterExpand', 'BeforeCollapse', 'BeforeExpand', 834, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(  )�﷨���ڱ�дSchema����ѡһ�' || chr(10) || '', 'HTML' || chr(13) || '', 'XML' || chr(13) || '', 'SGML' || chr(13) || '', 'DTD' || chr(13) || '', 835, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��<����DTD���ڲ�ʵ��( )��ʾ��ѡһ�', '&gt;', '&lt;', '&amp;', '&apos;', 836, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '<?xml version="1.0"?>            ' || chr(10) || '<!DOCTYPE mydoc[' || chr(10) || '<!ENTITY location "jianwai street">]>' || chr(10) || '<customer>' || chr(10) || '<name>jack</name>' || chr(10) || '<address>&location;</address>' || chr(10) || '</customer>' || chr(10) || '��������Xml�ĵ�������������ȷ���ǣ�ѡ���', '��Xml�ĵ���ʹ�����ⲿDTD��', 'ͨ�������������Xml�ĵ�ʱ���ַ���jianwai street������& location;', '��Xml�ĵ�������Ч��XML�ĵ���', '��Xml�ĵ��е�locationΪ����ʵ�塣', 837, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<?xml version="1.0"?>' || chr(10) || '<!--���� -->' || chr(10) || '<greeting>' || chr(10) || '  Hello, World!' || chr(10) || '</greeting>' || chr(10) || '�����XML�ĵ����ڣ����ĵ���ѡһ�', '��Ч��', '��Ч��', '��ʽ���õ�', '��ʽ�����', 838, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<customer_summary' || chr(10) || '  xmlns:addr="http://www.xyz.com/addresses/"' || chr(10) || '  xmlns:books="http://www.zyx.com/books/"' || chr(10) || '>' || chr(10) || '<addr:name><title>Mrs.</title></addr:name>  ' || chr(10) || '<books:title>Lord of the Rings</books:title>    ' || chr(10) || '������һ�ι���XML�����ռ��ʵ��Ƭ�Σ�����˵��������ǣ�ѡһ�', '�����У������ռ��ǰ׺�ֱ��� addr��books', '��һ�� <title> Ԫ������ addr ���ƿռ䣬��Ϊ�丸Ԫ�� <addr:Name> ���ڸ����ƿռ䡣', '���ƿռ��ж�����ַ��������ǿ��Է��ʵ�URL�����磺XML �������ᵽ http://www.zyx.com/books/ ȥ���� DTD ��schema', '���ƿռ����д��Ҫ�ڶ���֮�����ʹ��', 839, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '<roster>' || chr(10) || '   <student ID="s101">' || chr(10) || '       <name>�</name>' || chr(10) || '       <sex>��</sex>' || chr(10) || '       <birthday>1978.9.12</birthday>' || chr(10) || '       <score>92</score>' || chr(10) || '    </student>' || chr(10) || '    <student ID="s102">' || chr(10) || '        < name>���</name>' || chr(10) || '        <sex>Ů</sex>' || chr(10) || '        <birthday>1979.3.2</birthday>' || chr(10) || '        <score>90</score>' || chr(10) || '    </student>' || chr(10) || '</roster>' || chr(10) || '�������XML����,���IDΪs102��ѧ����������XSLƬ����ȷ���ǣ�ѡһ�', '<xsl:template match="/roster">' || chr(13) || '' || chr(10) || '' || chr(9) || '<xsl:value-of select=".[@ID=''s102'']/name"/>' || chr(13) || '' || chr(10) || '</xsl:template>', '<xsl:template match="/roster">' || chr(13) || '' || chr(10) || '' || chr(9) || '<xsl:value-of select="student[@ID=''s102'']/name"/>' || chr(13) || '' || chr(10) || '</xsl:template>', '<xsl:template match="/roster">' || chr(13) || '' || chr(10) || '' || chr(9) || '<xsl:value-of select="[student@ID=''s102'']/name"/>' || chr(13) || '' || chr(10) || '</xsl:template>', '<xsl:template match="/">' || chr(13) || '' || chr(10) || '' || chr(9) || '<xsl:value-of select="student[@ID=''s102'']/name"/>' || chr(13) || '' || chr(10) || '</xsl:template>', 840, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '<stuList>' || chr(10) || '  <student id="a001">' || chr(10) || '<name>jack<name>' || chr(10) || '<age>22</age>' || chr(10) || '  </student>' || chr(10) || '  <student id="a002">' || chr(10) || '<name>make<name>' || chr(10) || '<age>23</age>' || chr(10) || '  </student>' || chr(10) || '</stuList>' || chr(10) || '����id=''a002''��xpath���ʽ�ǣ�ѡһ�', '//name[.=''a002'']', '//name[@id]/age=''22''', '//name[@id=''a002'']', 'stuList/child::*[2]', 841, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'DOM��ȫ��Ϊ��ѡһ�' || chr(10) || '', 'Document  Object  Mode' || chr(13) || 'l', 'Document  Object  Module' || chr(13) || '', 'Double  Object  Mode' || chr(13) || 'l', 'Double  Object  Module' || chr(13) || '', 842, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'DTD��Required���Ե������ǣ�ѡһ�' || chr(10) || '', '���������Ǳ����' || chr(13) || '', '�������Ե�Ĭ��ֵ' || chr(13) || '', 'ʹ���Ծ��й̶�ֵ' || chr(13) || '', '���������Կ�ѡ' || chr(13) || '', 843, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'XML���ĸ������ƶ��ı�׼��ѡһ�', 'IBM', 'Microsoft', '�׹���', 'W3C', 844, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ʽ���еı���,ʹ�õı�ǩ�ǣ�ѡһ�', '<xsl:value-of>', '<xsl:count>', '<xsl:sum>', '<xsl:variable>', 845, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'var  a = new Array(1,20,12,30);' || chr(10) || 'alert(a.reverse());' || chr(10) || '������ֵΪ��ѡһ�', '1,20,12,30', '1,12,20,30', '30,20,12,1', '30,12,20,1', 846, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'var a=1.6;' || chr(10) || 'result=parseInt(a)+parseFloat(a);' || chr(10) || '����������ȷ���ǣ�ѡһ�', 'result��ֵΪ3.2', 'result��ֵΪ3.6', 'result��ֵΪ2.6', 'ҳ�����', 847, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'var d=new Date();��ȡ��ǰ�·ݵ�����ǣ�ѡһ�', 'd.getDate()', 'd.getMonth()', 'd.getMonth()+1', 'd.getMonth()-1', 848, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'var result1,result2;' || chr(10) || 'result1 = 5 + "8";' || chr(10) || 'result2 = 5/8;' || chr(10) || '����������ȷ���ǣ�ѡ���', 'result1��ֵΪ13', 'result1��ֵΪ58', 'result2��ֵΪ1', 'result2��ֵΪ0.625', 849, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'var str="hello world";' || chr(10) || 'document.write(str.indexOf("llo"));' || chr(10) || '������Ϊ��ѡһ�', '1', '2', '3', '4', 850, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'var str="hello world";' || chr(10) || 'document.write(str.substr(3,5));' || chr(10) || 'document.write("<br>");' || chr(10) || 'document.write(str.substring(3,5));' || chr(10) || '������Ϊ��ѡһ�', 'lo wo' || chr(13) || 'lo', 'lo' || chr(13) || 'lo wo', 'llo' || chr(13) || 'llo', 'lowo' || chr(13) || 'lo', 851, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Ԫ�ص�onblur�¼���ʾ��ѡһ�', '��ȡ����', 'ʧȥ����', '�ύ��', '����������', 852, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����һ�����飬���������ȷ��ѡһ�', 'var a = new Array(3);', 'a = new Array(1, 2, 3, "hello");', 'var a = [true, 3.14159];', 'Array d = new Array(1,2,3);', 853, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����������д��ϣ���굥���ύ��ťʱ���Դ�����Ԫ�صģ�  ���¼���ѡһ�', 'onEnter', 'onSubmit', 'onMouseDrag', 'onMouseOver', 854, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������µ�JavaScript����Σ������к���ҳ���������ѡһ�' || chr(10) || 'var c="10",d=10;' || chr(10) || 'document.write(c + d);', '10', '20', '1010', 'ҳ�汨��', 855, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������µ�JavaScript����Σ����к�����������ȷ���ǣ�ѡһ�' || chr(10) || 'eval("a=1;b=2;alert(a+b)");', '����������ʾ3', '����������ʾundefined', 'a��ֵΪundefined', 'b��ֵΪnull', 856, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������µ�JavaScript����Ƭ��, b��ֵΪ��ѡһ�' || chr(10) || 'var a = 1.5,b; ' || chr(10) || 'b=parseInt(a);', '2', '0.5', '1', '1.5', 857, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������JavaScript���룬�������ǣ�ѡһ�' || chr(10) || 'var a=15.49;' || chr(10) || 'document.write(Math.round(a));', '15', '16', '15.5', '15.4', 858, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������JavaScript���룺' || chr(10) || 'x = 11;' || chr(10) || 'y = "number";' || chr(10) || 'm = x +y ;' || chr(10) || 'm��ֵΪ��ѡһ�', '11number', 'number', '11', '���򱨴�', 859, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������Javascript���룺x=11��y="number"��m=x+y��m��ֵΪ��ѡһ�', '11number', 'number', '11', '���򱨴�', 860, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������JavaScript�����' || chr(10) || 'a = new Array(2,3,4,5,6);' || chr(10) || 'sum = 0;' || chr(10) || 'for(i=1;i<a.length;i++)' || chr(10) || '   sum += a[i];' || chr(10) || 'document.write(sum);' || chr(10) || '�������ǣ�ѡһ�', '20', '18', '14', '12', 861, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������JavaScript�����' || chr(10) || 'Emp = new Array(5);' || chr(10) || 'Emp[1] = 1;' || chr(10) || 'Emp[2] = 2;' || chr(10) || 'document.write(emp.length);' || chr(10) || '����Ľ���ǣ�ѡһ�', '2', '3', '4', '5', 862, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������JavaScript�����' || chr(10) || 'var x = "15";' || chr(10) || 'str = x + 5;' || chr(10) || 'a = parseFloat(str);' || chr(10) || 'document.write(a);' || chr(10) || 'ִ�к���������ǣ�ѡһ�', '20', '155', 'NaN', '����', 863, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������JavaScript����Σ������ȷ���ǣ�ѡһ�' || chr(10) || 'a = eval("3 + 6 + 7");' || chr(10) || 'document.write(a);', '367', '16', '0', '���϶�����', 864, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������JavaScript����Σ�' || chr(10) || 'function employee(name,code)' || chr(10) || '{' || chr(10) || '  this.name="wangli";' || chr(10) || '  this.code="A001";' || chr(10) || '}' || chr(10) || 'newemp=new employee("zhangming",''A002'');' || chr(10) || 'document.write("��Ա����:" + newemp.name + "<br>");' || chr(10) || 'document.write("��Ա����:" + newemp.code + "<br>");' || chr(10) || '����Ľ���ǣ�ѡһ�', '��Ա����:wangli ��Ա����:A001', '��Ա������zhangming ��Ա���룺A002', '��Ա������null, ��Ա���룺null', '�����д�����������', 865, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������JavaScript����Σ��������ǣ�ѡһ�' || chr(10) || 'var s1=15;' || chr(10) || 'var s2="string";' || chr(10) || 'if(isNaN(s1))' || chr(10) || '    document.writeln(s1);' || chr(10) || 'if(isNaN(s2))' || chr(10) || '    document.writeln(s2);', '15', 'string', '15string', '����ӡ�κ���Ϣ', 866, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������JavaScript��䣺' || chr(10) || 'str = "This apple costs " + 50.5;' || chr(10) || 'ִ�к�str�Ľ���ǣ�ѡһ�', 'This apple costs 50.5', 'This apple costs 5.5', '"This apple costs" 50.5', '"This apple costs "5.5', 867, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ѡ��ʧȥ����ʱ�������¼���������ǣ�ѡһ�', 'onClick', 'onFocus', 'onSelect', 'onBlur', 868, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ĳ��ҳ����Ա����MainForm.htmҳ���ϵ�һ����ΪSystemTime���ı�������ʾϵͳ�ĵ�ǰʱ��,��д������JavaScript����,Ϊ��ʹ��ʾ��ʱ��ÿ��������ˢ��һ��,�����ڿհ׳�1��ò���Ĵ����ǣ�ѡһ�' || chr(10) || '<script language="javascript">' || chr(10) || 'function displaytime()' || chr(10) || '{' || chr(10) || '    var time = new Date();' || chr(10) || '    var hour = time.getHours();' || chr(10) || '    var minute = time.getMinutes();' || chr(10) || '    document.mainform.systemtime.value=hour+"��"+minute+"��";' || chr(10) || '    ____________________;' || chr(10) || '}' || chr(10) || '</script>', 'setTimeout("displaytime()",60000);', 'setTimeout("displaytime()",6000);', 'setTimeout("displaytime()",60);', 'setTimeout("displaytime()",1);', 869, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ַ�������history����ķ�����ѡһ�', 'forword()', 'back()', 'go()', 'jump()', 870, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У���1���û������ݿ��Productʵ�������µ����' || chr(10) || 'SELECT * FROM Product WHERE ProductID=''001'' FOR UPDATE;' || chr(10) || '��ʱ��2���û�Ҳ�Ըñ�ִ������������:' || chr(10) || 'SELECT * FROM Product WHERE ProductID=''001'' FOR UPDATE WAIT 3;' || chr(10) || 'UPDATE Product SET ProductID=''002'' WHERE ProductID=''001'';' || chr(10) || 'COMMIT;' || chr(10) || '����Ե�2���û�,˵����ȷ���ǣ�ѡһ�', '�޸ĳɹ�,��ProductIDΪ001�ļ�¼��ΪProductIDΪ002', '�ȴ�3����޸ĳɹ�,��ProductIDΪ001�ļ�¼��ΪProductIDΪ002', '��ʾ��Դ��ռ��,�����һ���û���3���ڼ��ͷ�����Դ,����ʾ�޸ĳɹ�', '�ȴ�ʱ�����3��,��1���û��ͷ���Դ��,�޸ĳɹ�', 871, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У�����PL/SQL����������ȷ���ǣ�ѡһ�', 'PL/SQL����Power Language/SQL', 'PL/SQL��֧�����������', 'PL/SQL������������֡���ִ�в��ֺ��쳣������', 'PL/SQL�ṩ��������������������character,integer,float,boolea', 872, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Oracle�У����ڳ��������������ȷ���ǣ�ѡһ�', '�������һ�����ݿ�������Ƕ����PL/SQL���͡��ӳ����αꡢ�쳣�������ͳ����ķ�װ', '�������˽�ж�����ͨ��PRIVATE�ؼ�������ʶ��', 'PL/SQL������������������ӳ������ͬһ���ƣ�ֻҪ�ӳ�����ܵĲ����������Ͳ�ͬ', '���������ģ�黯����Ϣ���ء��������ܼ����ܸ��ѵ��ŵ�', 873, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Oracle�У����ڴ�������������ȷ���ǣ�ѡһ�', '����������ɾ���������ܽ���', '������ֻ�����ڱ�', '���������Է�Ϊ�м�����伶', '��������һ���Թ�������select��insert��update��delete���ʱ�����Ĵ洢����', 874, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Oracle�У�������,������������ȷ���ǣ�ѡһ�', '���������û�֮����ƶ����ݵĲ�������', '���Խ�������Ϊ�м����ͱ���', 'insert��update��delete����Զ�����м���', 'ͬһʱ��ֻ����һ���û�����һ���ض��ı�', 875, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У������ӳ������������ȷ���ǣ�ѡһ�', '�ӳ�������������PL/SQL�飬�ɴ�������������Ҫʱ��ʱ����', '�ӳ�����Ծ����������֡���ִ�в��ֺ��쳣������', '�ӳ��������ģʽֻ��IN��OUT����ģʽ', '�ӳ���ɷ�Ϊ���̺ͺ�����������', 876, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ORACLE�У�ģʽ�ǣ�ѡһ�' || chr(10) || '', '�������ģ��' || chr(13) || '', 'һ���û������ж���ļ���' || chr(13) || '', 'һ��������ݿ�ķ���' || chr(13) || '', '���ݿ����' || chr(13) || '', 877, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Oracle�У�����SYSDBA��¼��CUSTOMER��λ��Mary�û������У������������Ϊ���ݿ��е������û�����CUSTOMER���ͬ��ʣ�������ѡһ�', 'CREATE PUBLIC SYNONYM cust ON mary.customer;', 'CREATE PUBLIC SYNONYM cust FOR mary.customer;', 'CREATE SYNONYM cust ON mary.customer FOR PUBLIC;', '���ܴ���CUSTOMER�Ĺ���ͬ��ʡ�', 878, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle��,ʹ����������������:' || chr(10) || 'CREATE SEQUENCE id;' || chr(10) || 'Oracle��������Ԥ�����ڴ沢ά�ֵ�����ֵ��()����ѡһ�', '0', '10', '20', '100', 879, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Oracle��,ʹ��������䴴����ͼ;' || chr(10) || 'create or replace view myView' || chr(10) || 'as select * from orders' || chr(10) || 'where status=''p'';' || chr(10) || '�ٶ�Orders���а���10��status=''p''�ļ�¼,���û���ͼִ���������;' || chr(10) || 'update myView set status=''o'' where status=''p'';' || chr(10) || '������ȷ���ǣ�ѡһ�', 'Oracle��ִ�и��²���,�����ش�����Ϣ', 'Oracle�ɹ�ִ�и��²���,�ٴβ鿴��ͼʱ����0�м�¼', 'Oracle�ɹ�ִ�и��²���,�ٴβ鿴��ͼʱ����10�м�¼', 'Oracleִ�и��²���,����ʾ������Ϣ', 880, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���й���XML����������ȷ���У�ѡһ�', '����Ѿ�ָ���˸�Ԫ�ص������ռ䣬��Ԫ�ؾͲ���ʹ���Լ��������ռ�', 'Ԫ�ؿ���Ӧ�������ռ䣬���Բ�����', '�ṹ������XML�ĵ�һ���ǺϷ���XML�ĵ�', '�Ϸ���XML�ĵ�һ���ǽṹ������XML�ĵ�', 881, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���й���XML�ĵ��и�Ԫ�ص�˵������ȷ���У�ѡһ�', 'ÿһ���ṹ������XML�ĵ�����ֻ��һ����Ԫ��', '��Ԫ����ȫ�������ĵ�����������Ԫ��', '��Ԫ�ص���ʼ���Ҫ������������Ԫ�ص���ʼ���֮ǰ������Ԫ�صĽ������Ҫ������������Ԫ�صĽ������֮��', '��Ԫ�ز��ܰ������Խڵ�', 882, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '���棨����XML�ṩ�ı�̽ӿڣ����ڿ�����Ա����XML�ĵ�����ѡ���', 'XPath', 'DOM', 'XSLT', 'SAX', 883, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����XML�ĵ��ڵ��У����У����������ǲ��ᱻXML�����������ģ�ѡһ�', 'PCDATA', '����ָ��PI', 'CDATA', 'ʵ��', 884, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Ҫ����һ���������ͣ��ȿ��ܰ���integer���͵�ֵ��Ҳ���ܰ���string���͵�ֵ������schemaƬ����ȷ���ǣ�ѡһ�', '<xsd:simpleType name="idNumber">' || chr(13) || '' || chr(10) || ' <xsd:union>' || chr(13) || '' || chr(10) || '   <xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:integer"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:string"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '   </xsd:union>' || chr(13) || '' || chr(10) || '</xsd:simpleType>', '<xsd:simpleType name="idNumber">' || chr(13) || '' || chr(10) || ' <xsd:list>' || chr(13) || '' || chr(10) || '   <xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:integer"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:string"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '   </xsd:list>' || chr(13) || '' || chr(10) || '</xsd:simpleType>', '<xsd:simpleType name="idNumber">' || chr(13) || '' || chr(10) || ' <xsd:all>' || chr(13) || '' || chr(10) || '   <xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:integer"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:string"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '   </xsd:all>' || chr(13) || '' || chr(10) || '</xsd:simpleType>', '<xsd:simpleType name="idNumber">' || chr(13) || '' || chr(10) || ' <xsd:choice>' || chr(13) || '' || chr(10) || '   <xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:integer"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:simpleType>' || chr(13) || '' || chr(10) || '<xsd:restriction  base="xsd:string"/>' || chr(13) || '' || chr(10) || '   </xsd:simpleType>' || chr(13) || '' || chr(10) || '   </xsd:choice>' || chr(13) || '' || chr(10) || '</xsd:simpleType>', 885, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��֪xml�ĵ������������ݣ�listΪ��Ԫ�أ���' || chr(10) || '<list>' || chr(10) || '    <item id="0001">' || chr(10) || '        <price>18</price>' || chr(10) || '    </item>' || chr(10) || '    <item id="0002">' || chr(10) || '        <price>15</price>' || chr(10) || '    </item>' || chr(10) || '    <item/>' || chr(10) || '    <product>' || chr(10) || '        <item id="01"></item>' || chr(10) || '    </product>' || chr(10) || '</list>' || chr(10) || 'ʹ��xslt����ת��ʱ�����<xsl:template match="/list/item[@id]">�ܹ�ƥ�䵽������itemԪ�أ�ѡһ�', '3', '2', '1', '0', 886, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��֪xsltƬ�Σ�<xsl:if  test="roundOff(o.5)"></xsl:if>, test���ķ���ֵ�ǣ�ѡһ�', 'true', 'false', '������roundOff������', '���϶����ǡ�', 887, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ת���ͱ�ʾXML�ĵ����ǣ�ѡһ�', 'CSS', 'XSL', 'SAX', 'DOM', 888, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��DOM�У��Ը����� Node�����ظ������Ƶ����ԣ�Ӧ���÷�����ѡһ�', 'getLastChild', 'getDocumentElement', 'getAttribute', 'getFirstChild', 889, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Schema�У��޶�Ԫ�ص�ֵ�ɴ��б���ѡ���Ԫ���ǣ�ѡһ�', 'Unique', 'Sequence', 'Pattern', 'List', 890, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��XML�����У�XSL��ѭ���ж����Ϊ��ѡһ�', '<xsl:template>', '<xsl:for-each>', '<xsl:sort>', '<xsl:sort>', 891, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��XML�ĵ��ṹ�У��ڣ�����ָ�����õ�XML�İ汾��ѡһ�', 'XML����', '��Ԫ��', 'ע��', 'CDATA', 892, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��XML�У��õ�����ʽ����ÿ���ڵ��XSLT��Ԫ���ǣ�ѡһ�', '<xsl:template>', '<xsl:for-each>', '<xsl:sort>', '<xsl:choose>', 893, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '��XML�е�Schema�У���������Ԫ�س��ִ�����element�����У�ѡ���', 'maxExclusive', 'minExclusive', 'minOccurs', 'maxOccurs', 894, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��XML��ʹ���ַ���<��Ӧʹ���ĸ�Ԥ�����ַ�����ѡһ�', '&gt;', '&amp;', '&lt;', '&apos;', 895, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��XSL����ѭ���ķ�ʽ����ÿ���ڵ㣬ʹ�õı�ǩ�ǣ�ѡһ�' || chr(10) || '', '<xsl:for-each>' || chr(13) || '', '<xsl:for >' || chr(13) || '', '<xsl:choose>' || chr(13) || '', '<xsl:while>' || chr(13) || '', 896, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һ��DTDԪ���ж�����һ��Ԫ�ء�ѧԱ��Ϊ<!ELEMENT ѧԱ (#PCDATA)>����ô���µ�XMLʵ��Ƭ���кϷ����ǣ�ѡһ�', '<ѧԱ>����</ѧԱ>', '<ѧԱ><����>����</����></ѧԱ>', '<ѧԱ/>', '<ѧԱ>һ��<����>����</����>ͬѧ</ѧԱ>', 897, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ָ��Ԫ�������ֵĴ�������ѡһ�', 'minOccurs', 'maxOccurs', 'minExclusive', 'maxExclusive', 898, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '(  )��������ڶ�д����ϵͳ�ı��ļ�����ѡһ�', 'Dbms_output', 'Dbms_lob', 'Dbms_random', 'Utl_file', 899, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '(  )�������������������������е���ֵ����ѡһ�' || chr(10) || '', '�м�' || chr(13) || '', '��伶' || chr(13) || '', 'ģʽ' || chr(13) || '', '���ݿ⼶' || chr(13) || '', 900, 302);
commit;
prompt 900 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '(  )��oracle�������ڼ�������ʶ�����ļ��������ļ��Ķ������ļ�����ѡһ�', '�����ļ�', '�����ļ�', '�����ļ�', '��ִ���ļ�', 901, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'CREATE TABLE �������������ѡһ�', '��', '��ͼ', '�û�', '����', 902, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'imp������ĸ���������ȷ���Ƿ�Ҫ�������������ļ�����ѡһ�', 'constranints', 'tables', 'full', 'file', 903, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ORACLE���ʽNVL(phone��''0000-0000'')�ĺ����ǣ�ѡһ�', '��phoneΪ�ַ���0000-0000ʱ��ʾ��ֵ', '��phoneΪ��ֵʱ��ʾ0000-0000', '�ж�phone���ַ���0000-0000�Ƿ����', '��phone��ȫ�������滻Ϊ0000-0000', 904, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ORACLE����������ǣ�ѡһ�', 'intersect', 'union', 'set', 'minus', 905, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ORACLEʹ���ĸ�ϵͳ�����������ڵĸ�ʽ��ѡһ�', 'nls_language', 'nls_date', 'nls_time_zone', 'nls_date_format', 906, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Oracle���ݿ��У�ͨ�����������ܹ������ķ�ʽ���ʱ��е�һ�У�ѡһ�', '����', 'Rowid', 'Ψһ����', '����ɨ��', 907, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Oracle���ݿ��У����棨��������Ϊ��Ч����������ѡһ�', 'Column', '123_NUM', 'NUM_#123', '#NUM123', 908, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Oracle���ݿ��У����£����������ɾ���������е����ݣ������޷��ع���ѡһ�', 'drop', 'delete', 'truncate', 'cascade', 909, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Oracle��, (  )������char��varchar��������ת��Ϊdate�������͡���ѡһ�', 'date', 'to_date', 'todate', 'ctodate', 910, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ORACLE�У�ִ����䣺SELECT address1||'',''||address2||'',''||address2 "Address" FROM employ�����᷵�أ����У�ѡһ�', '0', '1', '2', '3', 911, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Oralce���ݿ��У����£�������������������������ͽ��в�������ѡһ�', 'TO_CHAR', 'LOWER', 'MAX', 'CEIL', 912, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'partition by list(msn_id)�Ӿ�ĺ����ǣ�ѡһ�', '��msn_id�н��з�Χ����', '��msn_id�н����б����', '��msn_id�н��и��Ϸ���', '��msn_id�н���ɢ�з���', 913, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '�Ƚ�pagesize��linesize����������ص㣬��ȷ���ǣ�ѡ���', 'pagesize��������������Ļ��ÿһҳ����������', 'linesize��������������Ļ��ÿһ�е��ַ���', 'pagesize��������������Ļ��ÿһ�е��ַ���', 'linesize��������������Ļ��ÿһҳ����������', 914, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ѯ���SELECT LTRIM(''aaabaccaddefg'',''abc'') FROM DUAL�ķ��ؽ���ǣ�ѡһ�', 'addefg', 'dde', 'ddefg', 'aabaccaddefg', 915, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ORACLE��ʽ�α�Ĺؼ����ǣ�ѡһ�', 'CURSOR', 'SQL', 'PLSQL', 'ORACLECURSOR', 916, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ORACLE���ļ���˵����ȷ���ǣ�ѡһ�', 'ROW SHARE�Ǳ���', 'һ���Ự�Ա����SHARE������ĻỰ���ܶԸñ��SHARE��', 'һ���Ự�Ա����SHARE������ĻỰ���ܶԸñ�����޸�', 'ʹ��UPDATE����޸ļ�¼��ϵͳһ�������ROW SHARE��', 917, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ʹ�������(  )�������ֵ�鿴��ǰ���ݿ�ı�ռ��������ѡһ�', 'dba_users', 'dba_tab_privs', 'dba_tablespaces', 'user_tab_privs', 918, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����洢���̵Ĳ�������ΪOUT����ô����ʱ���ݵĲ���Ӧ��Ϊ��ѡһ�', '����', '���ʽ', '����', '������', 919, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ϣ������Oracle��authors��first_name��Ϊ�ǿգ�����ʹ���ĸ���䣨ѡһ�', 'alter  table  authors  add  first_name  not  null', 'alter  table  authors  modify  first_name  not  null', 'alter  table  authors  alter  first_name  not  null', 'alter  table  authors  drop  first_name  not  null', 920, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ʹ��desc�������ʾ���(  )��Ϣ��ѡһ�', '������', '�г���', '���Ƿ�Ϊ��', '���еļ�¼��', 921, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ֵ���SGA����һ������л��棨ѡһ�', '���ݿ���ٻ�����', '����', 'PGA', '������־������', 922, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���в�����ORACLE�����������ǣ�ѡһ�', 'ROW_NUMBER', 'ROWNUM', 'RANK', 'DENSE_RANK', 923, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���в�����ORACLE�߼��ṹ���ǣ�ѡһ�', '��', '��', '�����ļ�', '���ݿ�', 924, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���в�����ORACLE�α����Ե��ǣ�ѡһ�' || chr(10) || '', 'ISOPEN' || chr(13) || '', 'EXISTS' || chr(13) || '', 'FOUND' || chr(13) || '', 'ROWCOUNT' || chr(13) || '', 925, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '���й���ORACLE��to_date������ to_char������������ȷ���ǣ�ѡ���', 'to_char ��������ҵ�ǽ��ַ�������ת��Ϊ��������', 'to_date ��������ҵ�ǽ��ַ���ת��Ϊ����', 'to_char �����ǽ���������ת��Ϊ�ַ�����', 'to_date �����ǽ���������ת��Ϊ�ַ�����', 926, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ĸ�ORACLE��̨����������д����̣�ѡһ�', 'DBWR', 'SERVICELOG', 'LGWR', 'SMON', 927, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����ĸ�������Ҫְ���Ǽ�ط��������̺�ע�����ݷ��񡣣�ѡһ�', 'SMON', 'PMON', 'DBWR', 'LGWR', 928, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '����˵��������ǣ�ѡ���', '��PL/SQL��ʹ��<>��ʾ������', '��PL/SQL��ʹ��!=��ʾ������', '��PL/SQL��ʹ������ж�ʹ�á�==', '��PL/SQL�и�ֵʹ�á�=', 929, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����йذ���ʹ��˵��������ǣ�ѡһ�', '�ڲ�ͬ�İ���ģ���������', '����˽�й��̲��ܱ��ⲿ�������', '�����е�ȫ�ֹ��̺ͺ��������ڰ�ͷ����˵��', '�����ȴ�����ͷ��Ȼ�󴴽�����', 930, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����йش洢���̵��ص�˵��������ǣ�ѡһ�', '�洢���̲��ܽ�ֵ���ص��õ�������', '�洢������һ��������ģ��', '����Ĵ洢���̴�������ݿ���', 'һ���洢���̿��Ե�����һ���洢����', 931, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ĸ�ORACLE�������ַ���x�����е��ʵ�����ĸ��ɴ�д��ѡһ�', 'initcap', 'concat', 'upper', 'lower', 932, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ĸ������ᵼ���û����ӵ�ORACLE���ݿ⣬�����ܴ�����ѡһ�', '������CONNECT�Ľ�ɫ����û������RESOURCE�Ľ�ɫ', 'û�������û�ϵͳ����Ա�Ľ�ɫ', '���ݿ�ʵ��û������', '���ݿ����û������', 933, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ĸ��û�����ORACLEȱʡ��װ��ʹ��ڵģ�ѡһ�', 'SYSMANAGER', 'SYSTEM', 'SYS', 'SCOTT', 934, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����Ǹ�������PL/SQL�б�����ڵĲ��֣�ѡһ�' || chr(10) || '', '��������' || chr(13) || '', 'ִ�в���' || chr(13) || '', '�쳣������' || chr(13) || '', '��ת��' || chr(13) || '', 935, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������й�ϵͳȨ�޺Ͷ���Ȩ�޵���������ȷ���ǣ�ѡһ�', 'ϵͳȨ�������ĳ�������Ȩ�ޣ�����Ȩ�޲������ݿ��е�ĳ���������', 'ϵͳȨ�޺Ͷ���Ȩ�޶������ĳ�����������Ȩ��', 'ϵͳȨ�޺Ͷ���Ȩ�޶��������Ķ������', 'ϵͳȨ�޲������ݿ��еĶ������������Ȩ�������ĳ�����������Ȩ��', 936, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '���е����������ǣ�ѡ���', 'currval', 'nowval', 'nextval', 'preval', 937, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����������ĸ���Ҫ�÷��麯����ʵ�֣�ѡһ�', '��ORDER���еĶ���ʱ����ʾ�� ''DD MON YYYY'' ��ʽ', '���ַ��� ''JANUARY 28, 2000'' ת�������ڸ�ʽ', '��ʾPRODUCT ���в�ͬ�����Ʒ��COST�ĺ�', '��PRODUCT���е�DESCRIPTION����Сд��ʽ��ʾ', 938, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '�й�ORACLE�洢����˵����ȷ���ǣ�ѡ���', '�����ڲ�ѯ����е��ô������', '�洢������һ�α�����ʹ��', '�洢����ͨ��������������ʽ�����ṩ���ݴ���', '�洢�����в��ܵ��������Ĵ洢����', 939, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�й�ORACLE����˵����ȷ���ǣ�ѡһ�' || chr(10) || '', 'ORACLE�����Զ��庯��' || chr(13) || '', '����ÿ�ε��õ�ʱ����Ҫ����ִ��PL/SQL' || chr(13) || '', '����ֻ���ڲ�ѯ��ʹ��' || chr(13) || '', '�������Բ�������' || chr(13) || '', 940, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�й�ORACLE��ͼ˵����ȷ���ǣ�ѡһ�', '��ͼ�����ݺͶ�Ӧ������ݵ����洢', '��ͼֻ���ڴ洢������ʹ��', 'ʹ��WITH CHECK OPTION���Ա�֤ͨ����ͼ�޸����ݲ���ı����ͼ�ļ�¼��', '��������ڲ��ܴ�����ͼ', 941, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�й�ORACLE������������˵����ȷ���ǣ�ѡһ�', '%TYPE��ȡ��һ���нṹ����', '%ROWTYPE��ȡ��һ���нṹ����', 'VARCHAR2��PL/SQL�к�SQL�б�ʾ���ݵĳ���һ��', 'PL/SQL��SQL�ж����߼�����', 942, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�й�ORACLE����˵����ȷ���ǣ�ѡһ�', '���������ݺͱ�����ݷֿ��洢����������֯�����', '���������е�������˳������', '���������������ͳһ�洢', 'ֻ�ܶԷ�������������з���', 943, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�й�ORACLE�쳣˵����ȷ���ǣ�ѡһ�', '�������÷�Ԥ���쳣�׳��б�ŵ��쳣', '�û����Զ���Ԥ�����쳣', '�Զ����쳣��Ӧ����ORACLEϵͳ����', 'ʹ��try��catchץ�쳣', 944, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '�йش�������ά��˵��������ǣ�ѡ���', '��������������ϵͳ�Զ�����', '�ڴ������в���ִ���������', '������Ϊ���趨�������Ƿ���Ч', '���ܶ�һ��������д�����ͬʱ�޸�Ϊ��Ч', 945, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�й�����˵��������ǣ�ѡһ�', '���е���ʼֵ���������ֵ����Сֵ֮��', '���п�ʼʹ�ú��ܽ����޸�', '�����������ѭ��ȡֵ����һ��ѭ���Ŀ�ʼֵ��minvalueָ����ֵ', '��һ��ʹ�����е�NEXTVAL�õ�������ʼֵ', 946, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�Ķ�����PL/SQL����' || chr(10) || 'begin' || chr(10) || 'for idx in 1..10 loop' || chr(10) || 'dbms_output.put_line(''Index=''||idx);' || chr(10) || 'end loop;' || chr(10) || 'end;' || chr(10) || '��˵����ȷ���ǣ�ѡһ�', '���������Ϊ��2�б���idxû������', '���������Ϊ��3���ַ�������Ӧ����+�ţ�������||', '���������Ϊ��3�б���idx������TO_CHAR������������ת��', '�öδ��������������', 947, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '��Oracal�У��Ķ�����PL/SQL���룺' || chr(10) || 'DELCARE' || chr(10) || 'vempno number;' || chr(10) || 'BEGIN' || chr(10) || 'SELECT empno INTO vempno FROM emp;' || chr(10) || '...' || chr(10) || 'END;' || chr(10) || '�������PL/SQLƬ�Σ����ܷ������쳣�ǣ�ѡ���', 'TOO_MANY_ROWS', 'DUP_CAL_ON_INDEX', 'NO_DATA_FOUND', 'ZERO_DIVIDE', 948, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Oracle �У�ʹ�������µ���䴴���û�TOM' || chr(10) || 'CREATE USER TOM IDENTIFIED BY TOMSYS' || chr(10) || '����ڸ��û����ԣ�����˵��������ǣ�ѡһ�', '���û��Ŀ���ΪTOMSYS', 'TOMĬ��Ϊ��ռ�ΪSYSSTEM', 'TOM ����ʱ��ռ�ΪTEMP', 'ʹGRANT UPDATE ��������޸�TOM�Ŀ���', 949, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��oracle�����д������ʱ�������߼�������(  )���ϡ���ѡһ�', 'ʵ��', '����', '���', '�û�����', 950, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Oracle���ݿ��У�ʹ��������䴴��һ����������' || chr(10) || 'Create or replace trigger ai_emp' || chr(10) || 'After insert on emp' || chr(10) || 'For each row' || chr(10) || 'Begin' || chr(10) || ':new.ename:=upper(:new.ename);' || chr(10) || 'End ai_emp;' || chr(10) || '����˵����ȷ���ǣ�ѡһ�', '�����������ɹ����ô�������ÿ�β�����¼�¼��ename�б�Ϊ��д' || chr(13) || '', '�����������ɹ����ô�������ÿ��insert������ĵ�һ����¼��ename�б�Ϊ��д' || chr(13) || '', '����������ʧ�ܣ���Ϊinsert���������ܸ���:new�����ֵ' || chr(13) || '', '����������ʧ�ܣ���Ϊafter���������ܸ���:new�����ֵ' || chr(13) || '', 951, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Oracleϵͳ�У�����ʹ��(  )�ύ��ɵ����񡣣�ѡһ�', 'commit', 'rollback', 'savepoint', 'transaction', 952, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��oracle��(  )����С�Ĵ洢�ռ䡣��ѡһ�', '��', '��', '��', '��ռ�', 953, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle��, ����HAVING �Ӿ�, ����˵����ȷ���ǣ�ѡһ�', 'HAVING�Ӿ��WHERE�Ӿ���ͬ', 'HAVING�Ӿ����ڵ��е�������ѯ', 'HAVING�Ӿ������ѷ����������ѯ', 'HAVING�Ӿ���������WHERE�Ӿ����ʹ��', 954, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle��,(  )����������������ѯ��ѡ�������в��ظ����С���ѡһ�', 'INTERSECT', 'MINUS', 'UNION', 'OR', 955, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Oracle�У�INSTEAD OF��������Ҫ���ڣ�ѡһ�', '��', '�����ͼ', '���ڵ��������ͼ', '���ڶ�������ͼ', 956, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Oracle�У�PL/SQL���ж�����һ�����������α꣺' || chr(10) || 'CURSOR emp_cursor(dnum NUMBER) IS' || chr(10) || 'SELECT sal,comm FORM emp WHERE deptno=dnum;' || chr(10) || '��ô��ȷ�򿪴��α������ǣ�ѡһ�', 'OPEN emp_cursor(20);', 'OPEN emp_cursor FOR 20;', 'OPEN emp_cursor USING 20;', 'FOR rmp_rec IN emp_cursor(20) LOOP ... END LOOP;', 957, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ORACLE�У�rank()������dense_rank()�����Ĳ���ǣ�ѡһ�', 'rank������dense_rank������û����Ծ', 'rank������dense_rank����������Ծ', 'rank��������Ծ dense_rank����û����Ծ', 'rank����û����Ծ dense_rank��������Ծ', 958, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У��������ʽ���������������2���ݣ�2��4��8�ȣ����Ի����ƽ�������ݷ�����ѡһ�', '��Χ����', '�б����', 'ɢ�з���', '���Ϸ���', 959, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Oracle�У��������α����Ե��ǣ�ѡһ�', '%NOTFOUND��', '%FOUND', '%ISCLOSE' || chr(13) || 'D', '%ROWTYPE', 960, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ORACLE�У���colΪ(  )ʱ��col > any ( 5 , 10 , 28 ) Ϊ�١���ѡһ�' || chr(10) || '', '22' || chr(13) || '', '2' || chr(13) || '', '12' || chr(13) || '', '32' || chr(13) || '', 961, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У���FETCH�����α�������ʱ������������ȷ���ǣ�ѡһ�', '�α��', '�α�ر�', '��ǰ��¼�����ݼ��ص�������', '�����������浱ǰ��¼������', 962, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У�����SQL���ʽ���ú���ʱ��������������ȷ���ǣ�ѡһ�', '��SELECT�����õĺ����������޸����ݿ��', '�������Դ���IN��OUT��ģʽ�Ĳ���', '�����ķ���ֵ���������ݿ����ͣ�����ʹ��PL/SQL����', '��ʽ��������ʹ�����ݿ����ͣ�����ʹ��PL/SQL����', 963, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У�����Ҫʹ����ʽ�α���»�ɾ���α��е���ʱ�������α�ʱָ����SELECT��������У����Ӿ䡣��ѡһ�', 'WHERE CURRENT OF', 'INTO', 'FOR UPDATE', 'ORDER BY', 964, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ͼ�в����Ŀɼ��Բ�����(  )��' || chr(13) || '', 'Public' || chr(13) || '', 'Friend' || chr(13) || '', 'Private' || chr(13) || '', 'Package' || chr(13) || '', 965, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '��֮���(   )��ϵ�Ĳ�������������ǿ��' || chr(13) || '', '�ۺ�' || chr(13) || '', '���' || chr(13) || '', '����' || chr(13) || '', '����' || chr(13) || '', 966, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '��֮��Ĺ�����ϵ�����������ĸ�Ԫ��(  )��' || chr(13) || '', '����' || chr(13) || '', 'Ȩ��' || chr(13) || '', '����' || chr(13) || '', '������' || chr(13) || '', 967, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������ķ���������У�UML�����ͼ����һ�������������ֵģ� ����', '��Բ', '������', '����', '�����', 968, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ĳһ����ҵ��ϵͳ������У���һ��ȡ���������������֤���롢�����ֽ𡢴�ӡȡ��ƾ֤������������ȡ�������ʹ�ӡȡ��ƾ֤����֮��Ĺ�ϵ�ǣ�����', '��չ', '����', '����', 'ʹ��', 969, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ͼ��һ��UML��ͼ������ͼ ����ʾ����֮��Ĺ�ϵ�ǣ� ����', '����', '����', '�ۺ�', '����', 970, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ͼ��һ��UML��ͼ������ͼ����ʾ��Ĺ��������ǣ� ����', 'Name', 'Salary', 'teach', 'GetSalaey', 971, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, 'ʱ��ͼ�����������ĸ�Ԫ��(  )��' || chr(13) || '', '������' || chr(13) || '', '��Ϣ' || chr(13) || '', '����' || chr(13) || '', '��' || chr(13) || '', 972, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, 'ʱ��ͼ��(  )ͼ��������Ϣ��ͬ�������໥ת����', '����' || chr(13) || '', '״̬' || chr(13) || '', '�' || chr(13) || '', 'Э��' || chr(13) || '', 973, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ʱ��ͼ�е��������ʾ����(  )��' || chr(13) || '', '��' || chr(13) || '', '��Ϣ' || chr(13) || '', 'ʱ��' || chr(13) || '', '�¼�' || chr(13) || '', 974, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���й���UMLͼ��˵����������ǣ� ����', 'UMLͼ��ʹ�õ�ͼ�η��ſ�չʾ�ͱ��ϵͳ�ĸŹ�', 'UMLͼ��Ϊ�滮�е�ϵͳ������׼ȷ�Ľ�ģ', 'UMLͼ���ض��������', 'UMLͼ���԰�����ɴ������Ŀ��ʼ�����������е������ĵ�', 975, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������һ���UML�еĶ�̬ͼ��(  )��' || chr(13) || '', '��ͼ' || chr(13) || '', '�ͼ' || chr(13) || '', 'ʱ��ͼ' || chr(13) || '', '״̬ͼ' || chr(13) || '', 976, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '�������ֹ�ϵ�������ϵ�е���Ϲ�ϵ(   )��' || chr(13) || '', '������˾��' || chr(13) || '', '�����Ա��' || chr(13) || '', '���ӻ���ң����' || chr(13) || '', '���ֽ' || chr(13) || '', 977, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '�������ֹ�ϵ����������Ĺ�ϵ(  )��' || chr(13) || '', '������ϵ' || chr(13) || '', '�ۺϹ�ϵ' || chr(13) || '', '��չ��ϵ' || chr(13) || '', '������ϵ' || chr(13) || '', 978, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '��֤DOM�������÷���(  )��' || chr(13) || '', 'javax.xml.validation.Validator��validate����' || chr(13) || '', 'javax.xml.parsers.DocumentBuilderFactory��setValidating�ķ���' || chr(13) || '', 'javax.xml.parsers.DocumentBuilderFactory��setNamespaceAware�ķ���' || chr(13) || '', 'java.xml.validation.Validator��validate����' || chr(13) || '', 979, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���´��봴����������, ����������֮��Ĺ�ϵ�� (   )��' || chr(13) || '' || chr(10) || 'Public class Teacher{' || chr(13) || '' || chr(10) || '    private Glasses glasses ; //�۾�' || chr(13) || '' || chr(10) || '}' || chr(13) || '' || chr(10) || 'public class Glasses{' || chr(13) || '' || chr(10) || '    public void Watch(){}' || chr(13) || '' || chr(10) || '}', '����', '����', '����', '���', 980, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���´��봴���������࣬�ֱ�Ϊ������࣬����࣬����������֮��Ĺ�ϵ�ǣ� ��' || chr(13) || '' || chr(10) || 'Public class Computer' || chr(13) || '' || chr(10) || '{' || chr(13) || '' || chr(10) || 'Private Mouse gdMouse;' || chr(13) || '' || chr(10) || '}' || chr(13) || '' || chr(10) || 'Public class Mouse' || chr(13) || '' || chr(10) || '{' || chr(13) || '' || chr(10) || '}(ѡ��һ��)', '����', '����', '�ۺ�', '���', 981, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, 'Ӧ����(   )�׶��ƶ�ϵͳ���Լƻ���' || chr(13) || '', '�������' || chr(13) || '', '��Ҫ���' || chr(13) || '', '��ϸ���' || chr(13) || '', 'ϵͳ����' || chr(13) || '', 982, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '���Ҫʹ��Validator��ܣ�Ӧ����ActionFrom����������ࣺ(  )��(  )����ѡ���', 'ActionForward', 'DynaValidatorForm', 'ValidatorForm', 'ActionValidatorForm', 983, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���У� ���Ǵ������������ѡһ�', 'Struts��Դ���뱣�ܵ��������', 'Struts�ǿ���WebӦ�õĿ��ϵͳ', 'Struts����MVC���ģʽ', 'Struts��Apache���ӹ���', 984, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���в�����struts������ǣ�ѡһ�', 'ActionForm', 'ActionServlet', 'Action', 'HttpServletRequest', 985, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���й���RequestProcessor��˵����ȷ���ǣ�ѡһ�', 'StrutsӦ����ֻ�ܲ���һ��RequestProcessor��ʵ��', 'RequestProcessor����������web.xml��', 'RequestProcessor���ǳ�����', '������дRequestProcessor���еķ���', 986, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����оٵĳ���ģ�Ͳ����ģʽ��ȷ���ǣ�ѡһ�', 'Validator', 'Data Access Object', 'ORM', 'oracle', 987, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '�����оٵķ���������ActionForm�ķ����ǣ�ѡһ�', 'doGet()', 'doPost()', 'validate()', 'reset()', 988, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '��������strtus������������ǣ�ѡ���', 'ActionForm', 'ActionServlet', 'HttpServletRequest', 'Action', 989, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���棨��������Struts�ṩ�ġ���ѡһ�', 'DispatchAction��', 'saveErrors�����Ķ���', 'DynaForm��', '<html:errors>��ǩ', 990, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����____������Struts�ṩ�ģ�ѡһ�', 'DispatchAction��', 'saveErrors�����Ķ���', 'DynaForm��', '<html:errors>��ǩ', 991, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����html��ǩ��ʹ������ȷ���ǣ�ѡһ�', '<html:text type="hidden" name="opr" value="toList"/>', '<html:submit class="btn">�ύ</html:submit>', '<html:select property="from"><html:option value="1">�ˮ</html:option></select>', '<html:optionsCollection property="userList" label="uname" value="uid"/>', 992, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������ʹ�ö�̬Form����������ȷ���ǣ�ѡһ�', 'ʹ�ö�̬Form����Ҫ����һ��ͬ����Form Bean������Ҫ����κ����ԡ�', '�����ö�̬Formʱtype����ָ��Ϊ�Լ������Form Bean��������', 'ͨ��myForm.getUserName()�Ӷ�̬Form�л��userName��ֵ��', '��̬Form�е�������Ҫͬҳ������name����һ�²����ڱ��ύʱ�Զ����', 993, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������Щ������RequestProcessor��ɵģ�ѡһ�', '��Struts�����ļ���Ϣ���ص��ڴ���', '����Դ�ļ���Ϣ���뵽�ڴ���', '�����Ҫ�Ļ�������ActionFormʵ������װ���ݣ������б���֤', '������ת����Action��execute()�������ص�ActionForward��������', 994, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����Ǹ���Struts��ͼ�����ѡһ�', 'ActionForm', 'Action', 'ActionServlet', 'RequestProcessor', 995, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '������Щ��������ActionForm��ѡһ�', 'doPost()', 'init()', 'validate()', 'reset()', 996, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�й�UML��Ӧ�ã�����˵��������ǣ�����', 'UML ��һ�ֽ�ģ���ԣ������������󻯵Ļ��������ͼ', 'UML ����Ӧ����Ƕ��ʽϵͳ��', 'ʹ��UML ������ģ��ֻ��Ӧ���������������', 'UML����Ӧ������Բ���ϵͳ�Ŀ�������', 997, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��OOAD��, ��ͼ��ʾ�Ļͼ�е�Ԫ�ر�ʾ���� (   )��', '�', '�ֲ�', '�ж�', '��ֹ', 998, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��OOD��״̬���У���ͼ��ʾ�ķ��ű�ʾ���Ƕ���ģ� ��״̬��', '��ʼ', '��ֹ', '�', 'ת��', 999, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�ڻͼ�У���Բ����Ŀ�������ģ����Ҫ����(   )��' || chr(13) || '', '��֧��ϲ�' || chr(13) || '', '��֧����' || chr(13) || '', '�ֲ���ϲ�' || chr(13) || '', '�ֲ�����' || chr(13) || '', 1000, 303);
commit;
prompt 1000 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������ķ���������У����й��ڻͼ��˵������ȷ���ǣ� ����', '�ͼ����ʾ�������Ļ�ƽ�еĻ��', '�ͼ���ֶ����Э����ʽ', '�ͼ���Բ������Ľ���������ܲ�����', '�ͼ���Բ������������ܲ������Ľ��', 1001, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������ķ���������У�UMLͨ���� ��������ͻ�������', '����ͼ', '��ͼ', '״̬ͼ', 'ʱ��ͼ', 1002, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У����ڽӿ���ʵ��˵���������(  )��' || chr(13) || '', 'һ����ֻ��ʵ��һ���ӿ�' || chr(13) || '', 'һ���ӿڿ��Ա������ʵ��' || chr(13) || '', '��ͽӿ�֮��Ĺ�ϵ��Ϊʵ��' || chr(13) || '', '�ӿ�������ָ������������Ĳ����ļ���' || chr(13) || '', 1003, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У�������Rational XDE����ʱ��ͼ��˵����ȷ����(  )��' || chr(13) || '', '�¼�����ˮƽ��������' || chr(13) || '', '�������ɴ�ֱ��������' || chr(13) || '', '���µ��ϵ��¼�����˳���������¼�' || chr(13) || '', 'ʱ���ǴӶ�����ʼ�ش�ֱ����������' || chr(13) || '', 1004, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������ķ���������У�ʹ������ͼ����ҵ��ϵͳʱ���������������ǣ� ����', '��������', '�������֮�佻����ʱ������', '��������߽�', '���������������صĴʻ�', 1005, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У�����(  )�����ڱ�ʶ��ѡ��ķ�ʽ��' || chr(13) || '', '�ų�������' || chr(13) || '', 'ȥ���޹���' || chr(13) || '', '�ų�ģ����' || chr(13) || '', '�ų�������' || chr(13) || '', 1006, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У�����(  )��������֮��Ĺ�ϵ��' || chr(13) || '', '����' || chr(13) || '', '����' || chr(13) || '', '����' || chr(13) || '', '��̬' || chr(13) || '', 1007, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������ķ���������У����У� ��������UMLͼ��', '��ͼ', 'ʱ��ͼ', '�ͼ', '��ͼ', 1008, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������ķ���������У����в����ڶ�̬ģ�͵��ǣ� ����', '��ͼ', 'ʱ��ͼ', 'Э��ͼ', '�ͼ', 1009, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У����й���OOA��OOD˵���������(  )��' || chr(13) || '', 'OOA��ָ�����û�������ʵ�����еĶ���͸�����ֺͷ���������ڲ����ɺ��ⲿ��ϵ' || chr(13) || '', 'OOA������OOD�ļ���ϸ��' || chr(13) || '', 'OOD��ָ�����Խ�����ϵͳ����ģ�ͣ��������������������������' || chr(13) || '', 'OOA��OOD�����ڴ�����������ĸ�����' || chr(13) || '', 1010, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У����й���UMLͼ���ŵ�˵������ȷ����(  )��' || chr(13) || '', 'ͼ�η��ſ���չʾ�ͱ��ϵͳ�ĸŹ�' || chr(13) || '', 'Ϊ�滮�е�ϵͳ��������ȷ�Ľ�ģ' || chr(13) || '', 'ʹ��UML������ģ�����������' || chr(13) || '', '������ɴ������Ŀ��ʼ�����������е����й鵵' || chr(13) || '', 1011, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У����й��ڽ�ģ�ı�Ҫ�ԣ�˵���������(  )��' || chr(13) || '', 'ģ��������ָ��ϵͳ�Ľṹ����Ϊ' || chr(13) || '', 'ģ�Ϳ��Լ�¼�Ѿ������ľ���' || chr(13) || '', 'ģ��������ʵ��ϵͳ���ģ��Ӷ���ǿ���ܺ͵õ��Ͽ�' || chr(13) || '', 'С��ϵͳ����Ҫ��ģ' || chr(13) || '', 1012, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У����й��ڽ�ģ��ԭ��˵����ȷ����(  )��' || chr(13) || '', 'ѡ��ʲô����ģ����Ҫ���������û�й�ϵ' || chr(13) || '', 'һ������£�����ģ�Ͷ�������Ҫ��' || chr(13) || '', '���ģ������ʾ����ǽ���������' || chr(13) || '', 'ÿһ��ģ�Ͷ����ض��ľ��ȼ���' || chr(13) || '', 1013, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У����й�����֮��ľۺ�����Ϲ�ϵ��˵����ȷ����(  )��' || chr(13) || '', '�ۺϱ���һ�ֳ��ڹ�ϵ������������ĳ����������һ���������ɲ���' || chr(13) || '', '����Ϲ�ϵ�У�û�����壬����Ҳû�д��ڵؼ�ֵ' || chr(13) || '', '�ھۺϹ�ϵ�У�û�����壬����Ҳû�д��ڵؼ�ֵ' || chr(13) || '', '����ǹ�����һ��������ʽ' || chr(13) || '', 1014, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������ķ����������,���й���ʱ��ͼ,˵����ȷ����(   )��', 'ʱ��ͼ��һ�־�̬ģ��', 'ʱ��ͼ�ص�˵�������Ľ���˳��', '��ʱ��ͼ�У���������֮��Ľ���˳���Լ������Ĺ�ϵ', '��ʱ��ͼ�У�ˮƽ�������ʾʱ��' || chr(13) || '' || chr(10) || '', 1015, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������ķ���������У����й���ʱ��ͼ��˵��������ȷ���ǣ� ����', '����ӳ����ʱ��仯�����Ķ����Ľ���', '��������ˮƽ��������', '�¼���ˮƽ������', 'ʱ��Ӷ�����ʼ���϶��´�ֱ����', 1016, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('undefined', '���������ķ���������У����й�������ͼ��˵������ȷ���У� ����', '����ģ���е�ϵͳ����һ�����������ϵͳ', '����ͼ��������ϵͳ�ṩ���û��ķ���', '�������У����ο����ڱ�ʾϵͳ�ı߽�', 'Ϊϵͳ����������������������̵Ļ���', 1017, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������ķ���������У������й�UML��˵��������ȷ���ǣ� ����', '����Ҫ��ͼ�η��ţ����������ķ�������ϵͳ���', '�Ѿ���С��ģ���ж����Ǹ���ϵͳ��֤���ɹ�', '�������û��������ߡ�����ߺ����������֮�佨�����õĹ�ͨ', '�����ڿ��ӻ������廯���ṹ�����ĵ����������ϵͳ�Ĳ�ͬ����', 1018, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���������ķ���������У�����ͼ��ʹ�ã� ����ʾϵͳ�ı߽硣', '��Բ', '������', '����', '���߿�', 1019, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ʹ����������˼���������з������У�һ���ڣ� ���׶δ�����ͼ��', 'OOA', 'OOD', 'OOP', '����', 1020, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һ�����е���Ŀ����У��кܶ�����������ȡ������ʹ��������У����������ȡ������������У������֮��Ĺ�ϵ�ǣ�������ѡ��һ�', '����', '��չ', '����', '����', 1021, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '(  )��struts-config.xml�ļ���������Դ�ı�ǩ����ѡһ�', '</data-source>', '</data-sources>', '<set-property>', '<form-beans>', 1022, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '( )ȷ����ɴ���󣬽�������͵�ʲô�ط���ѡһ�', 'ActionMapping', 'ActionServlet', 'Validate()', 'Process()', 1023, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Action ���execute()��������(  )�Ķ��󡣣�ѡһ�' || chr(10) || '', 'Action' || chr(13) || '', 'Null' || chr(13) || '', 'HttpServletResponse' || chr(13) || '', 'ActionForward' || chr(13) || '', 1024, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Action �е�execute()��������____�Ķ���ѡһ�', 'Action', 'null', 'HttpServletResponse', 'ActionForward', 1025, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', 'ActionForm Bean�����ִ��ڷ�Χ��ѡ���', 'Request', 'Session', 'Page', 'Application', 1026, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ActionForward��(  )����ָ��ActionForward��URL����ѡһ�', 'name', 'redirect', 'class', 'path', 1027, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Action���execute�����еĲ���ActionMapping�������ǣ�ѡһ�', '��ȡstruts-config.xml�е���Ϣ', '��ȡ<actionform>Ԫ���е���Ϣ', '��ȡ<action-mapping>Ԫ���е���Ϣ', '��ȡ<action>Ԫ���е���Ϣ', 1028, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'StrutsBean��(  )��ǩ������webӦ�ó�����Դ�Ľ������ѡһ�', 'define', 'include', 'message', 'page', 1029, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'StrutsBean�ģ�  ����ǩ���Ѷ������Դ���м������м���ֵ��ѡһ�', 'deinfe', 'message', 'parameter', 'write', 1030, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts�ģ�����ǩ�����������ز�������ı����ڶ��󼯺���ѭ���Ӷ��ظ��ز�������ı����Լ�Ӧ�ó������̿��ơ���ѡһ�', 'Nested', 'Bean', 'Logic', 'Html', 1031, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts��ActionServlet��Ҫ���Ǹ������ļ��н������ã�ѡһ�' || chr(10) || '', 'struts-config.xml  ' || chr(13) || '', 'config.xml  ' || chr(13) || '', 'web.xml  ' || chr(13) || '', 'struts.xml' || chr(13) || '', 1032, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'struts�Ŀ�������ģ�Ͳ�֮��Ĺ�ϵ������ȷ���ǣ�ѡһ�', 'û�й�ϵ', '�໥����', 'ģ�Ϳ��Ե��ÿ�����', '���������Ե���ģ��', 1033, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Struts���ʻ���ƣ�ѡһ�', 'I18N', 'GBK', 'GB2312', 'Unicode', 1034, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts��ܵĿ�������Ҫ�ɣ�  �����𡣣�ѡһ�', 'EJB', 'JSPҳ��', 'ActionServlet��', '��ǩ��', 1035, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Struts�����,(   )��������ģ�Ͳ㽻������ѡһ�', 'ActionServlet', 'Action', 'ActionForm', 'ActionMappin', 1036, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Struts�����(  )����ΪstrutsӦ������������֤���������̡���ѡһ�', 'Struts���', 'ActionForm Bean', 'javascript', 'Validator���', 1037, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts����У�ʹ�����£�����ǩ������ʾ������֤������Ϣ����ѡһ�', '<html:error/>', '<html:errors/>', '<logic:error/>', '<logic:errors/>', 1038, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Struts�ڲ�Ĭ�ϱ����ǣ�ѡһ�', 'GBK', 'UTF-8', 'ISO-8859-1', 'û��Ĭ�ϱ���', 1039, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts�����ļ��ǣ�ѡһ�', 'Struts_cfg.xml', 'struts-hbm.xml', 'struts-config.xml', 'config.xml', 1040, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Strutsʹ�ã�����������ݡ���ѡһ�', 'ActionError', 'ActionForm', 'Action', 'ActionMessage', 1041, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Strutsͨ������֧��MVCģʽ����ͼ�㿪������ѡһ�', 'Struts��ǩ���Form Bean', 'EJB', 'Servlet', 'Applet', 1042, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'StrutsӦ�ó����Ĭ�������ļ�Ϊ��ѡһ�', 'struts-config.xml', 'web.xml', 'ejb-jar.xml', 'sun-web.xml', 1043, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Struts�е�����������ǣ�ѡһ�', 'ActionServlet', 'Action', 'Servlet', 'Request', 1044, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Struts�е�����������ǣ�ѡһ�', 'ActionServlet', 'Action', 'request', 'response', 1045, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', 'Struts��ģ�͵���ƿ���ʹ���������ּ���������ƺ����ã�������𰸣�ѡ���', 'UML', 'PB', 'VB', 'XML', 1046, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����struts-config.xml�ļ������������(   )Ԫ����ָ���Զ����RequestProcessor�ࡣ��ѡһ�', '<form-beans>', '<controller>', '<set-property>', '<plug-in>', 1047, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����struts-config.xml�ļ�����������ӣ���Ԫ������չstruts�Ĺ��ܣ�ѡһ�', '<form-beans>', '<controller>', '<set-property>', '<plug-in>', 1048, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����struts-config.xml�ļ������������____Ԫ����ָ���Զ����RequestProcessor�ࣨѡһ�', '<form-beans>', '<controller>', '<set-property>', '<plug-in>', 1049, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������´��룬HelloActionϣ��������ת����hello.jsp����HelloAction��execute()���������ʵ�֣�ѡһ�' || chr(10) || '<action  path= "/HelloWorld" type="hello.HelloAction" name="HelloForm" ' || chr(9) || 'scope="request"  validate= "true"  input= "/hello.jsp">' || chr(10) || '        <forward name="SayHello" path="/hello.jsp" />' || chr(10) || '</action>', 'return (new ActionForward(mapping.getInput()));', 'return (mapping.findForward("SayHello"));', 'return (mapping.findForward("hello.jsp"));', 'return (mapping.findForward("/hello.jsp"));', 1050, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����<forward>��ǩ����˵����ȷ���ǣ�ѡһ�', '<forward>��ǩֻ��������<global-forwards>Ԫ����', '<forward>��ǩֻ��������<action>Ԫ����', 'struts-config.xmlû��<forward>��ǩ', '����˵��ȫ������', 1051, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������Struts����Դ˵����ȷ���ǣ�ѡһ�', 'Struts����Դֻ����Tomcat������', 'Struts����Դֻ����weblogic������', 'Struts����Դ���κη�������������', '����˵��������ȷ', 1052, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ģ�Ͳ����ݴ��������Ϊ��ѡһ�', 'DAO', 'BO', 'DTO', 'DDL', 1053, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Oracle�У�������ʹ������SQL��䲻������������ѡһ�', 'SELECT', 'INSERT', 'UPDATE', 'DELETE', 1054, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Oracle�У����ݿ��еĴ�������һ���Թ�������insert��update�򣨣����ʱ�����Ĵ洢���̡���ѡһ�', 'delete', 'drop', 'create', 'truncate', 1055, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У�ͨ������������ͷ�������ѡһ�', 'INSERT', 'DELETE', 'ROLLBACK', 'UNLOCK', 1056, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Oracle�У�����(  )��䲻�����ڿ����αꡣ��ѡһ�', 'Open', 'Create', 'Fetch', 'Close', 1057, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У����й���PL/SQL��˵������ȷ���ǣ�ѡһ�', 'PL/SQL֧��DML��DDL��DCL', 'PL/SQL֧���α��������������', '���������Ǳ�ѡ��', '��ִ�в����Ǳ�ѡ��', 1058, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Oracle�У��������ֱ������Ͳ��ܱ��浽���ݿ���У�ѡһ�', 'CHAR', 'BLOB', 'DATE', 'BOOLEAN', 1059, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '��Oracle�У�������ں���������ȷ���ǣ�ѡ���', 'SYSDATE��������Oracle�����������ں�ʱ��', 'ROUND���ֺ�������������ԭ�򷵻�ָ��ʮ���������������', 'ADD_MONTHS���ں�������ָ�������·������ĺ�', 'SUBSTR�������ַ���ָ����λ�÷���ָ�����ȵ��Ӵ�', 1060, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Oracle�У�����(  )�����ʹ�����������ɡ���ѡһ�' || chr(10) || '', 'COMMIT' || chr(13) || '', 'DELETE' || chr(13) || '', 'UPDATE' || chr(13) || '', 'SELECT' || chr(13) || '', 1061, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Oracle�У����²����ڼ��ϲ��������ǣ�ѡһ�', 'UNION', 'SUM', 'MINUS', 'INTERSECT', 1062, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Oracle�У��û�����ӵ���������õĳ��������ѡһ�', 'SYS', 'SYSTEM', 'PUBLIC', 'DEFAULT', 1063, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У���������䶨����һ�����̣�' || chr(10) || 'CREATE OR REPLACE PROCEDURE test(a IN VARCHAR2,' || chr(10) || 'b IN OUT NUMBER,' || chr(10) || 'c OUT VARCHAR2) IS' || chr(10) || 'BEGIN' || chr(10) || '  ����' || chr(10) || 'END;' || chr(10) || '�ٶ�ʹ�õı������Ѷ��壬����Թ���test�ĵ����﷨��ȷ���ǣ�ѡһ�', 'test(''String1'',50,v_str2)', 'test(v_str1,v_num1,''String2'')', 'test(''String1'',v_num1,v_str2)', 'test(v_str1,20,v_str2)', 1064, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Oracle�У�������SQL�������һ�����У�' || chr(10) || 'CREATE SEQUENCE my_seq' || chr(10) || 'START WITH 394' || chr(10) || 'INCREMENT BY 12' || chr(10) || 'NOMINVALUE' || chr(10) || 'NOMAXVALUE' || chr(10) || 'NOCYCLE' || chr(10) || 'NOCACHE;' || chr(10) || '�û�ִ�а���my_seq.NEXTVAL��SQL������Σ�Ȼ��ִ�а���' || chr(10) || 'my_seq.CURRVAL��SQL����ĴΣ���������my_seq�ĵ�ǰֵ�ǣ�ѡһ�', '406', '418', '430', '442', 1065, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '��Oracle�У��б�cd���������С�cdcode������category���͡�cdname����Ҫ��ѯcategoryȡֵΪ��CLASSIC����ROCK�����У�Ӧ������䣨ѡ���', 'SELECT * FROM cd WHERE category IN (''CLASSIC'',''ROCK'');', 'SELECT * FROM cd WHERE category BETWEEN ''CLASSIC'' AND ''ROCK'';', 'SELECT * FROM cd WHERE category=''CLASSIC''AND category=''ROCK'';', 'SELECT * FROM cd WHERE category=''CLASSIC'' OR category=''ROCK'';', 1066, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У��Ķ�����PL/SQL�飺' || chr(10) || 'DECLARE' || chr(10) || '  v_lower NUMBER:=2;' || chr(10) || '  v_upper NUMBER:=100;' || chr(10) || '  v_count NUMBER:=1;' || chr(10) || 'BEGIN' || chr(10) || '  FOR i IN v_lower..v_upper LOOP' || chr(10) || '  INSERT INTO test(results) VALUES (v_count);' || chr(10) || '  v_count := v_count + 1;' || chr(10) || 'END LOOP;' || chr(10) || 'END;' || chr(10) || '����FOR LOOPѭ����ִ���ˣ����Ρ���ѡһ�', '1', '2', '98', '100', 1067, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '��Oracle�У���SQL��ʾ���µ��ô洢���̵ķ����ǣ�ѡ���', 'ʹ��CALL���', 'ʹ��EXECUTE���', 'ʹ��RUN���', 'ֱ��ʹ�ù�����', 1068, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У����������ν���λͼ�������Ի�ýϺõ����ܣ�ѡһ�', '����ֵΨһ�����Ͻ���', '����ֵ����С�����Ͻ���', '����ֵƵ���ظ������Ͻ���', '�����ڱ���λͼ�����Ͻ���', 1069, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Oracle�У���ִ��SQL���ʱ���㲻С��ʹ��Update������е�IDֵ���ó���11111����ôʹ��(  )�������ȡ����һ��������ѡһ�', 'EXIT', 'OUIT', 'COMMIT', 'ROLLBACK', 1070, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Oracle�У�ִ���������䣺' || chr(10) || 'SELECT ceil(-97.342),' || chr(10) || 'floor(-97.342),' || chr(10) || 'round(-97.342),' || chr(10) || 'trunc(-97.342)' || chr(10) || 'FROM dual;' || chr(10) || '�ĸ������ķ���ֵ������-97��ѡһ�', 'ceil()', 'floor()', 'round()', 'trunc()', 1071, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Windows����ϵͳ�У�Oracle�ģ����������������������Կͻ���Ӧ�ó�����������󡣣�ѡһ�', 'OracleHOME_NAMETNSListener', 'OracleServiceSID', 'OracleHOME_NAMEAgent', 'OracleHOME_NAMEHTTPServe', 1072, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ڷǹ鵵��ʽ�²��������ݿ�����ˣ�ѡһ�' || chr(10) || '', '�鵵��־��' || chr(13) || '', '������־��' || chr(13) || '', '��־д�����' || chr(13) || '', '��־�ļ���' || chr(13) || '', 1073, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ӳ����(  )ģʽ���������ڵ����ӳ���ʱָ��һ����������ѡһ�', 'in', 'out', 'In out', 'inout', 1074, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '��UML�ṩ��ͼ�У����Բ���(   )���߼����ݿ�ģʽ��ģ��', '����ͼ', '�ͼ', 'ʱ��ͼ', '��ͼ', 1075, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '(  )����ϵͳ�Ĺ��ܽ�ģ����ǿ������Ŀ�������' || chr(13) || '', '״̬ͼ' || chr(13) || '', '����ͼ' || chr(13) || '', '�ͼ' || chr(13) || '', '��ͼ' || chr(13) || '', 1076, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'UML�ģ����ص�˵������֮�佻����˳��', 'ʱ��ͼ', '��ͼ', '״̬ͼ', '����ͼ', 1077, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ģ�͵���ҪԪ��Ϊ�����������ӡ�', '��Ͷ���', 'ģ��', '�ڵ�', '���', 1078, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һ���������Լ�����������ʱ�����ǳ���Ϊ������', '�ݹ����', '����', '�޶�����', '�������', 1079, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '������ͼ����˵���������(  )��' || chr(13) || '', '��ͼ��������' || chr(13) || '', '��ͼ�е�������Ҫ��ֵ' || chr(13) || '', '��ͼ�е����Բ���Ҫ��ֵ' || chr(13) || '', '��ͼ��������' || chr(13) || '', 1080, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '��������ͼ�еĲ����ߣ�����˵���������(  )��' || chr(13) || '', '������ϵͳ�û�' || chr(13) || '', '������������ϵͳ' || chr(13) || '', '������һЩ����' || chr(13) || '', '���϶��Ǵ��' || chr(13) || '', 1081, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��������ͼ�Ĳ��費����(   )��' || chr(13) || '', '����ϵͳ�߽�' || chr(13) || '', '��ʶ������' || chr(13) || '', '��ʶ��������' || chr(13) || '', '��ʶ�����߼�Ĺ�ϵ' || chr(13) || '', 1082, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '��ģ��Ŀ�꣬��������˵���Ǵ����(   )��' || chr(13) || '', '���ڿ�����Աչʾϵͳ' || chr(13) || '', '��������Աָ��ϵͳ�Ľṹ����Ϊ' || chr(13) || '', '��ģ�͵���д�ĵ�' || chr(13) || '', '��¼������Ա�ľ���' || chr(13) || '', 1083, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����spring��ܵ�������ȷ���ǣ�ѡһ�', 'spring ���������Ŀ��', 'spring ��j2se�ļ��Ͽ��', 'spring ��j2se�������Ŀ�ܣ����� ������', '���� struts ��hibernate��ܵĳ���  spring ��ܲ��Ǳ����', 1084, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����spring����jdbc�洢���̵Ĳ���������˵����ȷ���ǣ�ѡһ�', '�洢���̲���û�в���', '�洢���̵Ĳ�����Ŀ���ܳ�������', '�洢���̿���û�в���', '�洢���̵Ĳ��������java�е����Ͷ�Ӧ', 1085, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '����Spring������������ȷ���ǣ�ѡ���', '����һ��������������ʵ���˷�ת����ģʽ', '��web�㣬�����Լ���ʵ�֣���Ҳ���Ժ������������', '��EJB����һ������һ����ȫ��ȫ�ޡ��Ľ������', 'Spring���ܺ�EJBһ��ʹ��', 1086, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����Spring��˵��������ǣ�ѡһ�', 'ͨ��setter����ʵ������ע��', '��Hibernate�ṩ��֧�֣��ɼ�Hibernate����', 'ͨ��AOP����������Hibernate����', 'ͨ��AOPʵ��������ʽ�������', 1087, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ڡ����غ�֪ͨ���͡���֪ͨ��˵����ȷ���ǣ�ѡһ�', '���۷�������ν����Ķ��ᴥ�������غ�֪ͨ��', '���۷�������ν����Ķ��ᴥ������֪ͨ��', '�������û�з���ֵ�����غ�֪ͨ�����ᴥ��', '�������û�з���ֵ����֪ͨ�����ᴥ��', 1088, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������ʽ��������˵����ȷ���ǣ�ѡһ�', '����ʽ����û�б��ʽ�����', '����ʽ������Ҫ���á�����ע�롱�ķ�ʽ��ɵ�', '����ʽ������Ҫ���á������桱�ķ�ʽ��ɵ�', 'Hibernate �Դ�����ʽ���񣬿��Բ��� Spring �ṩ������', 1089, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ʹ��Spring��װ�������������˵����ȷ���ǣ�ѡһ�', 'Spring ��Ҫͨ������ע�룬������Ҫ�ڱ�ע������ж���� setter ����', '���ʼ���Ĺ������� Spring ��ɣ���������Ҫ�Ի������Ķ����� new ����', '<bean> �ڵ�� abstract ���Ա�ʾ���Ի����ʵ��', '��������ļ�����Spring 2.0�ģ�д������﷨������', 1090, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ĳ��beanҪʹ��ĳ�����͵���Դ����ôһ�������Ӧ�ð���Դ���ͷŷŵ�bean�����������е�(  )�׶Ρ���ѡһ�', '����', '���绯', 'ʹ��', '����', 1091, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������Spring��������A��B�����B�̳�AӦ�����ã�ѡһ�', '<bean id="B"��class=".."  parent="A">', '<bean id="A"��class=".."  parent="B">', '<bean id="B"��class=".."  extends="A">', '<bean id="A"��class=".."  parent="B">', 1092, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������src����spring�������ļ�bean.xml,��������ȷ���������ļ��Ĵ����ǣ�ѡһ�', 'ApplicationContext ctx=new XmlClassPathApplicationContext("bean.xml");', 'ApplicationContext ctx=new XmlClassPathApplicationContext("src/bean.xml");', 'ApplicationContext ctx=new XmlClassPathApplicationContext("src/application.xml");����������������������������������������', 'ApplicationContext ctx=new XmlClassPathApplicationContext("application.xml");��', 1093, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����Spring��Contextģ��Ĺ����ǣ�ѡһ�', '�ṩ����JNDI�ķ��ʶ����ѯ�͹��ʻ���I18N����֧��', '�ṩAOPA�Ľӿں�ʵ��', '�ṩMVC��ܵ�ʵ��', '�ṩORM', 1094, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '������Щ��Struts�����������ѡ���' || chr(10) || '', 'Action' || chr(13) || '', 'ActionForm' || chr(13) || '', 'ActionServlet' || chr(13) || '', 'RequestProessor' || chr(13) || '', 1095, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '��������У���ȷ���ǣ�ѡ���', 'public class AddAction implements Action {...', 'mapping.findForward("/ch01/result.jsp");', '<form method="get" action="add.do">', '<action name="addAction" path="/add" type="com.svse.web.action.AddAction">', 1096, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������Ŀ��Ҫʹ�õ�Struts�汾�Ƚ��ȶ��ͳ�����ǣ�ѡһ�', 'Struts1.0', 'Struts1.1', 'Struts1.2', 'Struts2.0', 1097, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Ҫʹ�ö�̬StrutsForm�����õ������Ǹ��ࣨѡһ�', 'DynaActionForm', 'ActionForm', 'Action', 'ActionServlet', 1098, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������˵������ȷ�ģ�ѡһ�', 'ÿ��HTTP�����Ӧһ��������ActionServletʵ��', '����ÿ���������HelloAction��HTTP����Struts��ܻᴴ��һ��������HelloActionʵ����', 'ÿ����Ӧ�ö�Ӧһ��������RequestProcessorʵ��', 'ÿ����Ӧ�ö�Ӧһ��������web.xml�ļ�', 1099, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '�û�δ��¼��ʾ�����¼�����ѵ�¼��ʾ�û��������������ȷ���ǣ�ѡ���', '<logic:empty name="user" scope="session">${���¼}</logic:empty>', '<logic:empty name="user" scope="session">${user.uname}</logic:empty>', '<logic:notEmpty name="user" scope="session">���¼</logic:notEmpty>', '<logic:notEmpty name="user" scope="session">${user.uname}</logic:notEmpty>', 1100, 314);
commit;
prompt 1100 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Struts��execute()��������(   )���󡣣�ѡһ�', 'null', 'forward', 'ActionForward', 'response', 1101, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Struts����У�������ActionServlet�ܹ�������£������ܡ���ѡһ�', '����HTTP���󣬽�����ͼ��ģ�Ͳ�֮������ݵĴ���', '��HTTP����ַ�����Ӧ��Action����', '����ģ�Ͳ��JavaBean���ҵ���߼�', '��ȡActionForm Bean�е���Ϣ����������HTML��', 1102, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��struts�����ļ���,(  )Ԫ�ؿ���������struts��validator��ܡ���ѡһ�', '<plug-in>', '<embeded>', '<form-beans>', '<set-property>', 1103, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ʹ��struts��ܹ���Ӧ��ϵͳʱ�����������ļ��г�������������Ϣ��' || chr(10) || '<form-beans>' || chr(10) || '    <form-bean name=" LoginForm" type="com.test.LoginForm"/>' || chr(10) || '</form-beans>' || chr(10) || '��������������Ϣ��������������ȷ���ǣ�ѡһ�', ' ��com.test.LoginForm��org.apache.struts.action.ActionForm��������', ' ȱʡ����£����������Ϣ������struts-config.xml�ļ��£�struts-config.xml�ļ���jsp��html���ļ���λ��webӦ�õĸ�Ŀ¼��', '������м�һ�и�Ϊ��' || chr(13) || '' || chr(10) || '<form-bean name=" LoginForm" type="com.test.LoginForm" scope= "session"/> ' || chr(13) || '' || chr(10) || '�����������HTTP�Ự��Χ����Ч ' || chr(13) || '' || chr(10) || '', '��������Ϊ���õ���execute����', 1104, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Ӧ�ó�������ʱ�������Plugin�ӿڵģ�ѡһ�', 'Start()', 'Create()', 'Init()', 'Initialize()', 1105, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '<set>Ԫ����һ��cascade���ԣ����ϣ��Hibernate�������漯���еĶ���casecade����Ӧ��ȡʲôֵ��ѡһ�', 'none', 'save', 'delete', 'save-update', 1106, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Customer������һ��Set���͵�orders���ԣ��������Order����������Customer.hbm.xml�ļ��У����ĸ�Ԫ��ӳ��orders���ԣ�ѡһ�', '<set>', '<one-to-many>', '<many-to-one>', '<property>', 1107, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', 'from Cat as cat,����������(    )��ʵ�������һ�����(    )��ʵ����ѡ���', 'Cat', 'Cat����', 'Cat����', 'Catʵ�ֽӿ�', 1108, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'hibernate.cfg.xml�����ļ��У�����������ģ�ѡһ�', '������-��ϵӳ�䡱��Ϣ', 'ʵ������������', 'show_sql�Ȳ���������', '���ݿ�������Ϣ', 1109, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'HQL��֧�־ۺϺ����У�ѡһ�', 'count(*)', 'avg(��)', 'count(��)', 'count(?)', 1110, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ORM�ǣ�ѡһ�' || chr(10) || '', '����ʵ��ӳ��' || chr(13) || '', '�����ϵӳ��' || chr(13) || '', '���ݴ��ݶ���' || chr(13) || '', '���ݷ��ʶ���' || chr(13) || '', 1111, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ORM��ʲô�ô���ѡһ�', '�ܽ��й�ϵ�����ӳ��', '���п���������', '���ڷ������˱���ͻ���״̬', '��DTOһ����������', 1112, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'POJO�������ǣ�ѡһ�' || chr(10) || '', '��ͨ��JavaBean����ӳ�����ݿ���ֶ�', '���ݷ���' || chr(13) || '', '����ĸ�ֵ' || chr(13) || '', '����ͻ��˶���' || chr(13) || '', 1113, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������ʵ������ǣ�ѡһ�', '���������(EJB)', 'JAVABEAN����(Ҳ���Գ�ΪPOJO)', '����������', 'ActionForm����', 1114, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�־û�״̬ǰ���кϷ��Լ�飬��Ҫʵ�ֵĽӿ��ǣ�ѡһ�', 'ActionListerner', 'Lifecycle', 'HttpServletReequest', '�־û�״̬�Ϸ���鲻��Ҫʵ�ֽӿ�', 1115, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '����ʵ���ʵ������һ���ض���Session��˵��Ҫô��һ��(    )����Ҫô��(    )����ѡ���', '˲ʱ', '�־û�', '������', '���ݴ������', 1116, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������³���Customer�����ڵڼ��б�Ϊ�־û�״̬��ѡһ�' || chr(10) || 'Customer customer=new Customer();  ' || chr(10) || 'customer.setName(\"Tom\");   ' || chr(10) || 'Session session1=sessionFactory.openSession();  ' || chr(10) || 'Transaction tx1 = session1.beginTransaction();  //line1' || chr(10) || 'session1.save(customer);  //line2' || chr(10) || 'tx1.commit();  //line3' || chr(10) || 'session1.close(); //line4', 'line1', 'line2', 'line3', 'line4', 1117, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������³���Customer�����ڵڼ��б�Ϊ����״̬��ѡһ�' || chr(10) || 'Customer customer=new Customer();  ' || chr(10) || 'customer.setName(\"Tom\");   ' || chr(10) || 'Session session1=sessionFactory.openSession();  ' || chr(10) || 'Transaction tx1 = session1.beginTransaction();  //line1' || chr(10) || 'session1.save(customer);  //line2' || chr(10) || 'tx1.commit();  //line3' || chr(10) || 'session1.close(); //line4', 'line1', 'line2', 'line3', 'line4', 1118, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����������Hibernate�д���ѡһ�', 'ҵ���߼�����', 'Ӧ�ò����', '���ݿ�����', '����������', 1119, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����Customer���orders���ϲ����ӳټ������ԣ�������������³��򣬻����ʲô�����ѡһ�' || chr(10) || 'Session session=sessionFactory.openSession();' || chr(10) || 'tx = session.beginTransaction();' || chr(10) || 'Customer customer=(Customer)session.get(Customer.class,new Long(1));' || chr(10) || 'tx.commit();' || chr(10) || 'session.close(); ' || chr(10) || 'Iterator orderIterator=customer.getOrders().iterator();', '�������', '����ͨ�����������У�����ʾ�κ���Ϣ', '����ͨ�����������У�����ʾ�����', '����ͨ����������ʱ�׳��쳣', 1120, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����㲻��ȷ����ҪѰ�ҵĶ���ĳ־û���ʶ��,��ô����Ҫʹ�ò�ѯ������ʹ����������ַ�����ѡһ�', 'query()', 'queryAll()', 'createQuery()', 'load()', 1121, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʵ��equals()��hashCode()���Զ��׼��������ǣ�ѡһ�', '�Ƚ����������ʶ����ֵ', '�Ƚ����ݿ����������', '�Ƚ����������Ƿ�����ͬһ����������', '�������ֶε�ӳ��', 1122, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ʹ��Hibernate��QBC��ѯ��Ҫʹ��SQL�е�����select count(*) from tablename���������¼��������ʹ����һ���ࡣ��ѡһ�', 'Restrictions', 'Projections', 'Criteria', 'Criteron', 1123, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���е�Hibernate ���󣬳���(  )����֧�ֿ�(null)���塣��ѡһ�', 'collection', 'Element', 'Entity', 'NodeList', 1124, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���в����ڶ��һ��ϵ���ǣ�ѡһ�', '�������', '�ֻ�����������', '�û��ͷ����ĳ�����Ϣ', 'ʿ���Ͱ೤', 1125, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���治��Hibernateӳ���ļ��а��������ݡ���ѡһ�', '���ݿ�������Ϣ', 'Hibernate���Բ���', '�������ɲ���', '������������', 1126, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���洴��Criteria������������ȷ���ǣ�ѡһ�', 'Criteria c = query.createCriteria();', 'Criteria c = query.addCriteria();', 'Criteria c = session.createCriteria();', 'Criteria c = session.createCriteria(User.class);', 1127, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����������ݳ־û������������������ǣ�ѡһ�', '�������ڴ������ݵ�״̬��˲ʱ״̬', '�־�״̬�������ڹػ���������Ȼ����', '���ݿ����ɳ־�״̬ת��Ϊ˲ʱ״̬', '������ת��Ϊ�־�״̬�Ļ��Ƴ�Ϊ���ݳ־û�', 1128, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '�����Ǽ����ǳ־û������״̬��ѡ���', '˲ʱ״̬', '����״̬', '�־û�״̬', '�ѹ�״̬', 1129, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '����һ�Զ�����������У�������Щ����ѡ���' || chr(10) || '<set name="orders" inverse="false" cascade="true">' || chr(10) || '    <one-to-many class="com.xdsvse.entity.Order" column="customer_id" />' || chr(10) || '</set>', 'inverse���Բ���������Ϊfalse', 'cascade���Բ�������Ϊtrue', 'class="com.xdsvse.entity.Order"ӦΪtype="com.xdsvse.entity.Order"', 'column���Բ�����<one-to-many>�ڵ�������', 1130, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������ڳ־û����ǣ�ѡһ�', '�Ѷ���ת�����ַ�������ʽͨ�����紫�䣬����һ�˽��յ�����ַ������ܰѶ���ԭ����', '�ѳ������ݴ����ݿ��ж�����', '��XML�����ļ��ж�ȡ�����������Ϣ', '�ѳ������ݱ���Ϊ�ļ�', 1131, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', 'һ������£���ϵ����ģ�������ģ��֮������Щƥ���ϵ��ѡ���', '���Ӧ��', '��¼��Ӧ����', '����ֶζ�Ӧ�������', '��֮��Ĳο���ϵ��Ӧ��֮���������ϵ', 1132, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��֪grid.getItem().size()��ֵ��1��Ҫ��ʹִ��session.update(wage)ʱ�Զ�ִ��session.update(grid.getItems().get(0))���������ã�ѡһ�', '<set name="items" inverse="true" cascade="none">��</set>', '<set name="items" inverse="false" cascade="none">��</set>', '<set name="items" inverse="true" cascade="all">��</set>', '<set name="items" inverse="false" cascade="save-update">��</set>', 1133, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���³�������Customer��name�����޸������Σ�' || chr(10) || 'tx = session.beginTransaction();' || chr(10) || 'Customer customer=(Customer)session.load(Customer.class,new Long(1));' || chr(10) || 'customer.setName(\"Jack\");' || chr(10) || 'customer.setName(\"Mike\");' || chr(10) || 'tx.commit();' || chr(10) || 'ִ�����ϳ���Hibernate��Ҫ�����ݿ��ύ����update��䣨ѡһ�', '0', '1', '2', '3', 1134, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '���¹���SessionFactory��˵����Щ��ȷ��ѡ���', '����ÿ�����ݿ�����Ӧ�ô���һ��SessionFactory����', 'һ��SessionFactory�����Ӧһ�����ݿ�洢Դ��', 'SessionFactory���������Ķ��󣬲�Ӧ�����ⴴ�������ϵͳ��ֻ��һ�����ݿ�洢Դ��ֻ��Ҫ����һ����', 'SessionFactory��load()�������ڼ��س־û�����', 1135, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '������Щ����Session�ķ�����ѡ���', 'load()', 'save()', 'update()', 'open()', 1136, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '������һ�ּ��������������������ѯ��ѡ���', '��������', '�ӳټ���', '���������������', '���������������', 1137, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '��ģ�Ͱ���������Щ��ѡ���' || chr(10) || '', 'ʵ�������  ' || chr(13) || '', '�ļ������' || chr(13) || '', '���������  ' || chr(13) || '', '�¼������' || chr(13) || '', 1138, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Ԫ�ذ��Ӷ����һЩԪ���븸���Ӧ�ı��һЩ�ֶ�ӳ��������ѡһ�', 'Component', 'Element', 'Attribute', 'ActionForm', 1139, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Hibernate��ϵӳ�������У�inverse���Եĺ����ǣ�ѡһ�', '������<one-to-many>�ڵ��ϣ�����Ҫ���������ά��', '������<set>�ڵ��ϣ�����Ҫ�Է����������ά��', '������<one-to-many>�ڵ��ϣ������Է�Ҫ���������ά��', '������<set>�ڵ��ϣ�����Ҫ���������ά��', 1140, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Hibernate�У��������ݿ�ķ��ԣ������ĸ�˵������ȷ�ģ�ѡһ�', '���Բ�д���ݿⷽ��', '���ݿⷽ��û�����ã��������д', '��ͨ�õ����ݿⷽ�Կ���ʹ��', '���ݷ��Զ�Ӧ��ÿ�����ݿ⣬��Ҫ���ڲ���SQL���', 1141, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������ṹ�У����ݷ��ʲ�е��������ǣ�ѡһ�', '����ʵ����', '���ݵ���ɾ�Ĳ����', 'ҵ���߼�������', 'ҳ��չʾ�Ϳ���ת��', 1142, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ִ�������hql��ѯ�����ڷ���ֵ��˵������ȷ���ǣ�ѡһ�' || chr(10) || 'select u.username,u.userid ' || chr(10) || 'from com.x.entity.User u ' || chr(10) || 'where u is not null', '�﷨���󣬲���ִ��', '����һ������ΪList��ʵ��', '����һ������', '�����ؽ��ֻ��һ��ʱ������һ������', 1143, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ע�롱ʹ����������������е�����˼�루ѡһ�', '��װ', '��̬', '�̳�', '����ӿڱ��', 1144, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'AOP�������������У�ѡһ�', '��̬����㣬��̬�����', '��̬����㣬��̬����㣬�Զ��������', '��̬����㣬�Զ��������', '��̬����㣬�Զ��������', 1145, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'AOP�е�֪ͨ��Advice�������ǣ�ѡһ�', 'һ����ע���ģ�黯', '�ڳ���ִ�й�����ĳ���ض��ĵ�', 'ƥ�����ӵ㣨Joinpoint���Ķ���', '�������ĳ���ض������ӵ㣨Joinpoint����ִ�еĶ���', 1146, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'AOP�е�֪ͨ�����У�ѡһ�', 'ǰ��֪ͨ�����غ�֪ͨ���׳���֪ͨ������֪ͨ', 'ǰ��֪ͨ�����غ�֪ͨ����֪ͨ������֪ͨ', 'ǰ��֪ͨ�����غ�֪ͨ���׳���֪ͨ����֪ͨ������֪ͨ', '���غ�֪ͨ���׳���֪ͨ����֪ͨ������֪ͨ', 1147, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Spring��DWR�Ľ�ϣ�����˵����ȷ���ǣ�ѡһ�', 'Spring �� DWR ���û��ʲô�ô�', 'Spring �� DWR ��Ͽ����ü����⸴�ӻ�', 'Spring �� DWR �Ľ�Ͽ��Կ�������', 'Spring �� DWR �Ľ�ϲ��ܿ�������', 1148, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Spring��Hibernate�Ѿ����óɹ�������˵����ȷ���ǣ�ѡһ�', '�Լ�д��dao ����̳�Spring �� HibernateDaoSupport', '���Բ���д�κ�����������ݣ�spring �Լ�����', '������ spring dao ��д sql ���', 'Spring dao ���ܽ��з�ҳ���� hibernate �еĶ����ѯ��ʽ', 1149, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Spring��struts�Ľ�ϣ����´�����ǣ�ѡһ�', '���ǵĽ�ϣ������� spring ������ע�롱�ķ�ʽ���� Action ��', '���ǵĽ�����˷�ʱ�䣬��ɿ���ֱ���� Action������spring ����', '���ǵĽ����Ҫ����һЩ������Ϣ', '���ǵĽ�Ͽ��Լ��ٳ����ż�϶�', 1150, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', 'Spring �����ļ��������´���Ƭ�Σ�������˵��������ǣ�ѡ���' || chr(10) || '<bean id="testBean" class="com.my.PersonBean">' || chr(10) || '<property name="ss" value="10">' || chr(10) || '<property name="dd" value="abc">' || chr(10) || '</bean>', 'PersonBean ��һ���д��룺private Integer ss;', 'PersonBean��һ���� public void setSs(Integer ss) ����', 'PersonBean��һ���д���: private String ss;', 'PersonBean��һ���� public void setDd(String dd) ����', 1151, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Spring���ṩHibernate����ģ������ǣ�ѡһ�', 'JdbcTemplate��������������������������', 'JdbcDaoSupport', 'HibernateTemplate��������������������������', 'HibernateDaoSupport', 1152, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Spring��������������ģʽ�ǣ�ѡһ�', 'none, simple, object, null', 'none, simple, object, all', 'none, all, object, null', 'none, simple, null, all', 1153, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'SSH�ܹ����ʲô���⣬�����˵����ȷ���ǣ�ѡ���', 'SSHʲô���������', 'SSH���Խ��ͳ����ż�϶ȣ���ά����ü�', 'SSH���԰Ѽ����⸴�ӻ������˸о�����', 'SSH���԰Ѹ�������򵥻����ܹ����õ�ʵ�ֳ����ά��', 1154, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����<proterty name="msg">' || chr(10) || '<value>null<value>' || chr(10) || '<proterty name="msg">�������ǣ�ѡһ�', '����Bean������Ϊnull������������������������������������������', '����Bean������Ϊ���ַ���', '����Bean������Ϊ�ַ������ַ�����ֵ�ǡ�null������������������������������������������', '����Bean������Ϊmsg', 1155, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '�����������쳣������ʱ���Դ�����֪ͨ�ǣ�ѡ�����', 'ǰ��֪ͨ', '�׳���֪ͨ', '���غ�֪ͨ', '��֪ͨ', 1156, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��һ����̳�HibernateDaoSupport֮�������ᷢ��ʲô�仯��ѡһ�', '�����û���κα仯', '������������ݿ�������', '�������Լ�������ɾ��ĵĴ��룬ʲô����Ҳ����д', '������� Hibernate �������ݿ�Ĳ��裬�����ṩ�� session �Ĺ�����', 1157, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������Spring����ʽ��������ú����˵��������ǣ�ѡһ�' || chr(10) || '<bean id="txProxyTemplate" abstract="true"' || chr(10) || 'class="org.springframework.transaction.interceptor.TransactionProxyFactoryBean">' || chr(10) || '<property name="transactionManager" ref="myTransactionManager" />' || chr(10) || '<property name="transactionAttributes">' || chr(10) || '<props>' || chr(10) || '<prop key="get*">PROPAGATION_REQUIRED,readOnly</prop>        ' || chr(10) || '<prop key="*">PROPAGATION_REQUIRED</prop>' || chr(10) || '</props>' || chr(10) || '</property>' || chr(10) || '</bean>', '����������ʽ���������ģ��', '��get��������ֻ������', 'ȱ��sessionFactory���Ե�ע��', '������Ҫ��������bean�Ĵ���ʱ��ͨ��parent�����������ģ�壬�������£�<bean id="petBiz" parent="txProxyTemplate">' || chr(13) || '<property name="target" ref="petTarget"/>' || chr(13) || '</bean>', 1158, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '����Spring��Struts�ļ��ɣ�����˵��������ǣ�ѡ���', 'Action Bean ��ʵ�������� Spring ����', '�� Struts �����ļ��У�Action Bean �����ÿ���������ʾ��' || chr(13) || '<action name="userForm" path="/user" parameter="operate" scope="request" ' || chr(13) || 'type="org.springframework..web.struts.DelegatingActionProxy" >' || chr(13) || '</action>', '�� Spring �����ļ��У�Action Bean �����ÿ���������ʾ��' || chr(13) || '<bean  id="/user" class="com.svse.web.action.UserAction">' || chr(13) || '<property name="userBiz" ref="userBiz" />' || chr(13) || '</bean>', '���� Spring ����Ҳ�ṩ�� MVC ���ܣ����Բ����� Struts ����', 1159, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����HibernateDaoSupport�࣬����˵����ȷ���ǣ�ѡһ�', 'HibernateDaoSupport ���� j2se �е���', 'HibernateDaoSupport ���� j2ee �е���', 'HibernateDaoSupport ���� hibernate �е���', 'HibernateDaoSupport ���� spring �е���', 1160, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����spring����jdbc�洢���̷���ֵ������˵����ȷ���ǣ�ѡһ�', '�洢����һ�������з���ֵ', '�洢���̿���û�з���ֵ', '�洢����һ��Ҫ�з���ֵ', '�洢���̿����з���ֵ��Ҳ����û�з���ֵ', 1161, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����JdbcTemplate˵����ȷ���ǣ�ѡһ�', 'queryForInt����ʹ���ڲ�ѯ���ֻ����ֻ��һ����¼�����', 'JdbcTemplateֻ������SQL��䣬���ܵ��ô洢����', 'JdbcTemplate�е�update����ֻ�������޸����ݣ������ɾ������Ҫʹ��execute����', '����Ʒ��������в�ѯ��������Product�����б���ʽ����Ӧ��ʹ��queryForList����', 1162, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����Spring��AOP������˵��������ǣ�ѡһ�', '֧��ǰ��֪ͨ������֪ͨ������֪ͨ', '���ô���ķ�ʽʵ��', '��Spring2.0��ǰ�İ汾�У�ͨ��<aop:config>��<aop:pointcut>��<aop:advisor>����', '�롰����ע�롱ʵ�ֽ��ܽ��', 1163, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ڡ�����ע�롱��˵����������ǣ�ѡһ�', '��������������ϵ��ȡ�����ļ��ķ�ʽ����������Ӳ�����ڴ�����', '��������������ϣ�ʹ���������ά��������', '�ٽ��ˡ�����ӿڡ���̣�ʹ�������ģ���������', '����Ҫ����ӿڣ������˱��븴�Ӷ�', 1164, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '�������Spring��jdbc�����ã�˵��������ǣ�ѡ���', 'Spring ���ܺ� jdbc ���ã�ֻ֧�� Hibernate', 'Spring �ܺ� jdbc ���ã�������д sql ���', 'Spring �ܺ� jdbc ���ã�Ҳ����д sql ���', 'Spring �� jdbc ����֮���� sql �������ݿ��е�����', 1165, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������Spring��Hibernate����˵����ȷ���ǣ�ѡһ�', 'Hibernate������Դֻ��������Hibernate�Լ��������ļ��С�', 'Hibernate������Դֻ��������Spring�������ļ���', 'Hibernate������Դ����������Hibernate�Լ��������ļ��л�Spring�������ļ��С�', 'Hibernate������Դ����������������', 1166, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������Spring˵����ȷ���ǣ�ѡһ�', 'Spring�ṩ�ˡ�ȫ��ȫ�ޡ��Ľ������', 'Spring����һ�֡�ȫ��ȫ�ޡ��Ľ������', 'Springֻ������Web���', 'Springֻ�����ڷ�Web��Ŀ', 1167, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '�����������ע��˵����ȷ���ǣ�ѡ���', '����ע���Ŀ�����ڴ���֮��������������������ϵ', '����ע�뼴�ǡ�����ӿڡ����', '����ע������������������Ʒ', '����ע���ʹ�û��������Ĺ�ģ', 1168, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������Щ��Spring������ƣ�ѡһ�', '��̬����', '��������', '��̬����', '�������', 1169, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������Ҫʹ������ṹ�ĳ������ר�������վ������һ����1000��200�Ĵ���������������������Ա���㽫������ṹ��(  )��ʵ����һ���ԡ���ѡһ�', 'ģ�Ͳ�', '��ʾ��', '���ݷ��ʲ�', 'ҵ���߼���', 1170, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������������������ŵ��ǣ�ѡһ�', '�ܹ����ӣ�����ǿ��', '�����˸����ԣ�����������', '���Ӵ�����', '������AOPA', 1171, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���²�����������ע����ŵ���ǣ�ѡһ�', '�ڶ��󷽷�����ǰ������һ��������װ�걸��״̬' || chr(13) || '', '�򻯿���JAVABEAN����Ĺ�����' || chr(13) || '', 'JAVABEAN���Կ��Ա�����̳У�������Ӷ������' || chr(13) || '', 'JAVABEAN���Ե�getter��setter����������Ϊ�ĵ���һ����' || chr(13) || '', 1172, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���²�����Spring��Bean���������ڵ��ǣ�ѡһ�', 'Ԥ����', '����', '��ʼ��', '����', 1173, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���´���������ǣ�ѡһ�' || chr(10) || '<entry>' || chr(10) || '    <key>' || chr(10) || '        <value>yup an entry</value>' || chr(10) || '    </key>' || chr(10) || '    <value>just some string</value>' || chr(10) || '</entry>', '��Bean��map������ע��һ��Ԫ��', '��Bean��list������ע��һ��Ԫ��', '��Bean��set������ע��һ��Ԫ��', '���϶�����', 1174, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���´���������ǣ�ѡһ�' || chr(10) || '<list>' || chr(10) || '' || chr(9) || '<ref bean="myDataSource" />' || chr(10) || '</list>', '��Bean ��List������ע��һ���ַ�����myDataSource��', '��Bean ��List������ע��һ���ļ���myDataSource��', '��Bean ��List������ע��һ������Ŀ��Bean�����ǡ�myDataSource��', '��Bean ��List������ע��һ���ַ����顰myDataSource��', 1175, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���¹���AOP˵����ȷ���ǣ�ѡһ�', 'AOP���ϵͳ�����ԣ�', 'AOP���������ϵͳ��ά����', 'AOPʱ����Ч�ʱ��', 'AOP��Ҫ����������', 1176, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Session�����Ĭ����Ч��Ϊ���ٷ��ӣ���ѡһ�', '10', '15', '20', '30', 1177, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'txtInputName��һ���ı���Web�ؼ������µ�ASP.NET���룺' || chr(10) || 'private void Page_Load(object sender, System.EventArgs e)' || chr(10) || '{   txtInputName.Unload();  }' || chr(10) || '��ִ��ʱ����ѡһ�', 'ҳ�����ʱ����txtInputName�ı���ж�أ�����ʾ��ҳ����', 'ҳ�����ʱ���ô�������Ч��txtInputName�ı�����Ȼ��ʾ', 'ҳ�����ʱ�����д�����ִ���', '��ʾ������Ϣ�����벻��ͨ��', 1178, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ValidatorSummary��֤�ؼ��������ǣ�ѡһ�', '����ܺ���', '������ʾ������֤�Ľ��', '�ж����޳�����Χ', '�����ֵ�Ĵ�С', 1179, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Web ���У���ť��Ĭ���¼��ǣ�ѡһ�', 'Click �¼�', 'Load �¼�', 'Init �¼�', 'Command �¼�', 1180, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ASP.NET ����Ӧ�ó�������˵����Щ�ǲ���ȷ�ģ�ѡһ�' || chr(10) || '', 'Web ��������������н��н���ִ�е�' || chr(13) || '', 'Web ��������нű��ʹ�����Էֿ�' || chr(13) || '', 'Web ������������HTML ҳ��ֻ��������IE �����' || chr(13) || '', 'Web �������Ĵ������ʹ���κ�һ��.NET ���ݵı�����Ա�д' || chr(13) || '', 1181, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ASP.NET����֤�ؼ�������˵��������ǣ�ѡһ�', '��Ϊ���ڷ���˿ؼ���������֤���ڷ���˽���', 'RequiredFieldValidator������֤һ���ؼ�����ֵ�Ƿ�Ϊ��', 'CompareValidator���Ƚ���֤�� ���趨�Ƚ���������', 'RangeValidator����Χ��֤�� �����Ƿ���ָ����Χ', 1182, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ASP.NET�еĴ��������ļ���������ȷ���ǣ�ѡһ�', 'Web����ҳ�ĳ�����߼��ɴ�����ɣ���Щ����Ĵ��������봰�彻��������߼�Ψһ���û����治ͬ���ļ��С����ļ�����Ϊ���������ء��ļ��������C�����������ļ������С�.ascx.cs����չ����' || chr(13) || '', '��Ŀ������Web����ҳ�Ĵ��������ļ����������.EXE�ļ���' || chr(13) || '', '��Ŀ�����е�Web����ҳ�Ĵ��������ļ������������Ŀ��̬���ӿ�(.dll)�ļ���' || chr(13) || '', '���϶�����ȷ��' || chr(13) || '', 1183, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ΪC:\Inetpub\wwwroot\asp.net\chapter1���������Ŀ¼chapter1����ô����������е�1-1.aspx�������(  )�Ǵ���ġ���ѡһ�', 'http://localhost/asp.net/chapter1/1-1.aspx', 'http://localhost/chapter1/1-1.aspx', 'http://localhost/asp.net/1-1.aspx', 'http://127.0.0.1/chapter1/1-1.aspx', 1184, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������ASP.NETӦ�ó���ҳ���Ŀ¼ΪC:\InetPub\WWWRoot\WebSvrSample����ó����еĴ��룺Request.ApplicationPath����ֵӦΪ��ѡһ�', 'C:\InetPub\WWWRoot', '/WebSvrSample', 'C:\InetPub\WWWRoot\WebSvrSample', '\InetPub\WWWRoot\WebSvrSample', 1185, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��һ��Button�ؼ����뵽DataList�ؼ���ģ���У���CommandName��������Ϊ��buy��������������ʱ������DataList�ؼ���(   )�¼�����ѡһ�', 'DeleteCommand', 'ItemCommand', 'CancelCommand', 'EditCommand', 1186, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���¹���Bean��ID˵��������ǣ�ѡһ�', 'ID��Ψһ��', 'ע��Beanʱ�ǿ��Բ�����ID', 'ID�Ķ���������ʹ�ò�����XML ID�޶����ַ�', 'ID��ĳЩ����¿ɱ�name���', 1187, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���¹�������ע��˵����ȷ���ǣ�ѡһ�', '����Struts��������ֻ��ʹ����ֵ����ע�룿��������������������������������������', '����Struts��������ֻ��ʹ�ù��췽��ע��', '��ֵ����ע�������setter��������������������������������������������', '��ֵ����ע�������getter����', 1188, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���������ļ��Ĺ����ǣ�ѡһ�' || chr(10) || '<bean id="exampleInitBean" class="examples.ExampleBean" destroy-method="cleanup"/>', 'exampleInitBeanʹ��cleanup����ʵ��', 'exampleInitBeanʹ��cleanup��ʼ������', 'exampleInitBean������ʱ����cleanup����', '���϶�����', 1189, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������dwr��sprig��������Ϣ' || chr(10) || '<context-param>' || chr(10) || '<param-name>contextConfigLocation</param-name>       //1.' || chr(10) || '<param-value>src:applicationContext.xml</param-value>    //2.' || chr(10) || '</context-param>' || chr(10) || '<listener>                                        //3.' || chr(10) || '<listener-class>' || chr(10) || 'org.springframework.web.context.ContextLoaderListener   //4.' || chr(10) || '</listener-class>' || chr(10) || '</listener>' || chr(10) || '������ǣ�ѡһ�', '1���д���', '2���д���', '3���д���', '4���д���', 1190, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�й�Spring����������Դ������˵����ȷ���ǣ�ѡһ�', '��������Դ��bean����ֻ����dataSource', 'DataSource�ӿ�λ��java.sql����', '��һ��Spring�����ļ��п������ö������Դ', 'DataSource����һ�����ݿ�����', 1191, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '��Spring�������ļ��У�����������ʾ�����ô��룬������˵����ȷ���ǣ�ѡ���' || chr(10) || '<bean id="testBean" class="test.TestBean">' || chr(10) || '<property name="db" value="10" />' || chr(10) || '<property name="sp" value="mm" />' || chr(10) || '</bean>', '����ͨ������Ĵ���õ������ʵ����' || chr(13) || 'ApplicationContext  c = new ClassPathXmlApplicationContext("di.xml");' || chr(13) || 'TestBean  t  =  (TestBean) c.getBean("test.TestBean");', 'TestBean ��һ�������µ���䣺' || chr(13) || 'Private String db = "";', 'TestBean ��һ���з�����public void setSp(String value)', '���� db �����Ϳ����� int Ҳ������ String', 1192, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�� Spring �����ļ� di.xml �а�����������ô��룬�����ƶϣ�ѡһ�' || chr(10) || '<bean  id="a"  class="A">' || chr(10) || '<property name="m" value="1" />' || chr(10) || '</bean>', '�����������ʱ���쳣' || chr(13) || 'ApplicationContext  c = new ClassPathXmlApplicationContext("di.xml");' || chr(13) || 'A  a =  (A)content.getBean("a");', 'A �� ������', 'A �ǽӿ�', '��A�ж����� getM() ����', 1193, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Spring������Hibernate���������(HibernateTransactionManager) ʱ����Ҫע������������ǣ�ѡһ�', 'dataSource', 'sessionFactory', 'baseHibernateDao', 'transactionProxyFactoryBean', 1194, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SpringAOP�У���������ĳһ������ִ�е�ʱ�䣬����ʹ�õ�SpringAOP�е�(  )֪ͨ��ʵ�ָĹ��ܡ���ѡһ�', 'Interception Around֪ͨ', 'Before֪ͨ', 'After Returning', 'Throws ֪ͨ', 1195, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SpringAOP��ʵ���ƶ���������ǣ�ѡһ�', 'RegexpMethodPointcutAdvisor', 'ProxyFactoryBean', 'DefaultAdvisorAutoProxyCreator', '���϶�����', 1196, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Spring�ж����Զ�װ��ΪbyType�������ǣ�ѡһ�', 'Spring��Ŀ��Bean���������ֺ͹����ж�Ӧ��Bean���ֶ�Ӧ����', 'Spring��Ŀ��Bean���������ͺ͹����ж�Ӧ��Bean���Ͷ�Ӧ����', 'Spring��Ŀ��Bean�Ĺ��캯�������͹����ж�Ӧ��Bean���ֶ�Ӧ����', '���϶�����', 1197, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ʹ�á�����ע�롱��ѡһ�', '�� new  ������', '�ü̳�������', '��ʵ�ֽӿ�������', 'ͨ�� setXX ���� �� xml �����ļ���ʵ��', 1198, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'CLDC��J2SE���Ӽ���ϵ����?', '����', '��ȷ', '�޷�ȷ����ϵ', 'û���κι�ϵ', 1199, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'EclipseMe��Eclipse��ʲô��ϵ?', 'Eclipse�ǿ���ƽ̨', 'EclipseME�ǿ���ƽ̨', 'EclipseME�ǿ���J2ME�Ĳ��', '���϶�����ȷ', 1200, 317);
commit;
prompt 1200 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Form�����ֱ�Ӹ�����?', 'Displayable', 'Screen', 'Item', 'String', 1201, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'J2ME��ϵͳ�ṹ�����������ļ���?', '��������������', '����������á����', '���á�����������', '��������������', 1202, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'List�б������ChoiceGroup���������֮һ��List�б����Ĭ�������ĸ�Command?', 'EXIT_COMMAND', 'BACK_ COMMAND', 'SELECT_ COMMAND', 'OK_ COMMAND', 1203, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'MIDlet��������������֮���Ĭ��״̬��?', 'stoped', 'destroy', 'pause', 'active', 1204, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'MIDP�����J2ME����ĵڼ���?', '1', '2', '3', '4', 1205, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'RecordListener�ӿڵ�������?', '������һ���ȽϽӿڣ����ڱȽ�������¼�Ƿ�ƥ�䣬���߷���һ�����߼���ϵ', '����RecordStore�еļ�¼', '���ڽ��ܼ�����¼�ִ��м�¼��ӣ����Ļ�ɾ����¼���¼��Ľӿ�', '���������˲����������ļ�¼', 1206, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'RecordStore�е���������ʲô��ʽ���ڵ�?', 'String', 'int', 'byte[]', 'double', 1207, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'RGB��ȡֵ��Χ?', '1-999', '0-999', '0-255', '1-255', 1208, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Screen�����Canvax�����ֱ�Ӹ�����?', 'Item', 'Form', 'Displayable', 'String', 1209, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ظ�ԭ״ʱ���ͻ����ԭ���Ļ��棬ϵͳ��ͬʱ�����ĸ�����?', 'showNotify()', 'notify()', 'wait()', 'hideNotify()', 1210, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ĳЩͻ���¼�������˵����ȣ���Ļ�ᱻϵͳ���������ǵ�ʱ�򣬻�����ĸ�����?', 'showNotify()', 'notify()', 'wait()', 'hideNotify()', 1211, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������д�ĳ�����л�����Ŀ����ʲô?', '����', '�����ٶȿ�', '������С', '�ű�', 1212, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����Ҫ��һ������Ӧ��ʹ��ʲô����?', 'drawLine', 'drawArc', 'drawString', 'drawChars', 1213, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Linux��DHCP�����������ù��̣���ȷ�Ĳ����ǣ�ѡһ�' || chr(10) || '1��rpm -qa | grep dhcp' || chr(10) || '2������DHCP������' || chr(10) || '3������DHCP�����������ļ�' || chr(10) || '4���޸ķ����������ļ�' || chr(10) || '5�����÷�����IP��ַ', '12345', '13452', '15342', '54321', 1214, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Linux�п��Ը��û�svse�����������ǣ�ѡһ�', 'usermod -l svse', 'passwd -l svse', 'passwd -u svse', 'usermod -u svse', 1215, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Linux������Samba�������Ĳ��裬��ȷ���ǣ�ѡһ�' || chr(10) || '1��rpm -qa | grep samba' || chr(10) || '2�����÷�����IP��ַ' || chr(10) || '3���޸������ļ�/etc/samba/smb.conf' || chr(10) || '4���½������ļ���' || chr(10) || '5��service smb start', '15234', '54321', '13425', '12345', 1216, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Linux������FTP�������������ǣ�ѡһ�', 'ftp start', 'vsftpd start', 'service vsftpd start', 'start ftp', 1217, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Linux������ʹ��U�̵Ĳ�����ȷ���ǣ�ѡһ�' || chr(10) || '1��mkdir  /mnt/usb' || chr(10) || '2��mount  /dev/sda1  /mnt/usb' || chr(10) || '3��cd  /mnt/usb' || chr(10) || '4��umount  /dev/sda1', '1234', '1324', '4321', '4231', 1218, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Linux����ʾ��ǰĿ¼�µ��ļ�����Ŀ¼�������ǣ�ѡһ�', 'cd', 'ls', 'listfie', 'mkdir', 1219, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Linux����ʾ������Ϣ�������ǣ�ѡһ�', 'ipconfig', 'config', 'ifconfig', 'netconfig', 1220, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Linux���½��û��������ǣ�ѡһ�', 'useradd', 'userdel', 'userpassed', 'usermod', 1221, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Linux��ѹ���ļ��������ǣ�ѡһ�', 'gzip', 'uzip', 'gunzip', 'zip', 1222, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����Linux���ص㣬����˵��������ǣ�ѡһ�', '���ŵ�Դ����', 'ǿ������繦��', '�ɿ���ϵͳ��ȫ', '֧��Windows���', 1223, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����ĸ�����Liunxϵͳ�û�����������ļ���ѡһ�', '/etc/password', '/etc/shadow', '/etc/group', '/etc/users', 1224, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '(  )�����ռ��е���ͽӿ����ڴ���Web Ӧ�ó����ҳ�档��ѡһ�', 'System.Drawing', 'System.IO', 'System.Web.UI', 'System.Web.Service', 1225, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '.NetӦ�ó���Ĳ���ʽԽ��Խ�࣬���¶���Ӧ�ó�����Ƚϳ��õķ�ʽ�����ˣ�ѡһ�', 'ʹ��XCOPY�ķ�ʽ�ڿ�����-������֮�����Ŀ¼��������', 'ʹ��Windows Installer 2.0ר�ô�����߽��пͻ�����ķַ��͹���', '�ṩ�ͻ������Internet����', '�����е�Դ�����ṩ���û������û����е��ԡ�����������������л���', 1226, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '<% Reponse.Write(DateTime.Now) %>�ȼ��ڣ�ѡһ�', '<% = DateTime.Now %>', '<% DateTime.Now %>', '< Write( DateTime.Now )>', '<% Write = DateTime.Now %>', 1227, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'App_CodeĿ¼���������м��ģ�ѡһ�', 'ר�����ݿ��ļ�', '�����ļ�', '���������ļ�', '�����ļ�', 1228, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ASP.NET����Response.Write(Server.htmlEncode("<H1>HtmlEncode ����</H1>"))������Ϊ��ѡһ�' || chr(10) || '', '�ڴ��ڴ�ӡ��HtmlEncode������' || chr(13) || '', '�ڴ��ڴ�ӡ��<H1>HtmlEncode����</H1>��' || chr(13) || '', '�ڴ��ڴ�ӡ��H1HtmlEncode����H1��' || chr(13) || '', '���ִ�����Ϣ��˵��Ƕ��Ĵ��а����Ƿ��ַ�' || chr(13) || '', 1229, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ASP.NET��Response���ö��󣬿���ͨ����������ȡ�ͻ��Ƿ���Ȼ�����ڷ������ϡ���ѡһ�', 'IsConnected����', 'IsClientConnected����', 'Refresh����', 'CheckConnection����', 1230, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ASP.NET��WebӦ�ó��򱻰�װ�������ڷ������ˣ��������ǣ�ѡһ�', '���ҳ�浽��Ļ', '�������ڴ����е�HTML�ĵ����͵��ͻ���', '�ṩ���ݸ���һ��Ӧ�ó���', '��̬����ҳ���HTML�����͵��ͻ���', 1231, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ASP.NET�������ؼ���AutoPostBack���������������¼���ѡһ�', '�Ƿ������ش�', '�Ƿ���Ҫ�ش�', '�Ƿ���Ҫ��Ӧ', '�Ƿ�������Ӧ', 1232, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ASP.NET����У��������ؼ���Ϊ���Web��������ר����Ƶġ��������ؼ����������ͣ������ǣ�ѡһ�', 'HTML�ؼ���Web�ؼ�', 'HTML�ؼ���XML�ؼ�', 'XML�ؼ���Web�ؼ�', 'HTML�ؼ���IIS�ؼ�', 1233, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', 'ASP.NET֧�ֵ������ļ��������У�ѡ���', '�����������ļ�', 'IIS�����ļ�', '�ļ��������ļ�', 'Ӧ�ó��������ļ�', 1234, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ASP.NET�У����¶�DropDownList�������ؼ�����������ǣ�ѡһ�', 'DropDownList�������ؼ���֧�ֶ���ѡ��', '������SelectIndex���Ի���SelectItem�������ж���һ�ѡȡ', '���û�����ѡ��ʱ������SelectIndexChanged�¼�', '����WinForms�е�ComboBox�ؼ�,�����û�������ʱ�����ı�', 1235, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ASP.NET�е������ļ�Web.Config��һ����ѡһ�', '�ı��ļ�', '�������ļ�', 'XML', 'ֻ���ļ�', 1236, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'DataList�ؼ���(   )���Կ�����ʾ����������ѡһ�', 'RepeatLayout', 'RepeatDirection', 'RepeatColumns', 'DataSource', 1237, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Label�������ؼ�(  )��������ָ��Label�ؼ���ʾ�����֡���ѡһ�', 'width', 'alt', 'text', 'name', 1238, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'PageDataSource���(   )�������û��ȡ��ҳ����Դÿҳ����������ѡһ�', 'AllowPaging', 'PageSize', 'PageCount', 'AlloewCustomPaging', 1239, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'RangeValidator�ؼ�������֤���ݵģ�ѡһ�', '����', '��ʽ', '��Χ', '������ʽ', 1240, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'RequiredFieldValidator�ؼ���ControlToValidate����������(  )����ѡһ�', '�����Ƿ���Ҫ��֤', '���õ���֤�Ŀؼ�', '������֤��ʽ', '������֤����������', 1241, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Response�����(  )���Կ����趨http�������ַ����롣��ѡһ�', 'charset', 'cookie', 'text', 'Binarywrite', 1242, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Server�ؼ��ġ�Server����ָ��ѡһ�' || chr(10) || '', '�ؼ��ڷ������˶���' || chr(13) || '', '�ؼ��Ƿ�����' || chr(13) || '', '�ؼ��ڷ������˴��ڲ�ִ��' || chr(13) || '', '�ؼ������ṩ����' || chr(13) || '', 1243, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�뿴���´���' || chr(10) || 'public class FwxxDAOHibImpl extends HibernatedaoSupport  //1.' || chr(10) || 'implements FwxxDAO{     //2.' || chr(10) || '    public void add(FWXX fwxx) {   //3.' || chr(10) || '        super.getHibernateTemplate().insert(fwxx);  //4.' || chr(10) || '}' || chr(10) || '}������ǣ�ѡһ�', '1���д���', '2���д���', '3���д���', '4���д���', 1244, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�뿴���´���' || chr(10) || 'public List findAll() {' || chr(10) || '    List list = null;' || chr(10) || '    try {' || chr(10) || '        String hql = "select * from TblUser";  //1.' || chr(10) || '        list = getHibernateTemplate().find(hql);   //2.' || chr(10) || '    } ' || chr(10) || '    catch (RuntimeException re) {                     ' || chr(10) || '        throw re;                              //3.' || chr(10) || '    }' || chr(10) || '    return list;   //4.' || chr(10) || '}������ǣ�ѡһ�', '1���д���', '2���д���', '3���д���', '4���д���', 1245, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�뿴���´���' || chr(10) || '<action name="fwxxForm" path="/fwxx" parameter="operate"' || chr(10) || 'type="org.springframework.web.struts.DelegatingActionProxy">    //1.' || chr(10) || '</action> ' || chr(10) || '<plug-in' || chr(10) || 'className="org.springframework.web.struts.ContextLoaderPlugIn">   //2.' || chr(10) || '<set-property property="contextConfigLocation"     //3.' || chr(10) || 'value="WEB-INF/applicationContext.xml" />        //4.' || chr(10) || '</plug-in>' || chr(10) || '������ǣ�ѡһ�', '1���д���', '2���д���', '3���д���', '4���д���', 1246, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�뿴���´���' || chr(10) || '<bean id="sessionFactory"      //1.' || chr(10) || 'class="org.springframework.orm.hibernate3.LocalSessionFactoryBean">    //2.' || chr(10) || '<!-- ��hiberante�����ݿ�������Ϣ -->' || chr(10) || '<property name="configLocation"    //3.' || chr(10) || 'value="src:hibernate.cfg.xml">   //4.' || chr(10) || '</property>' || chr(10) || '</bean>' || chr(10) || '������ǣ�ѡһ�', '1���д���', '2���д���', '3���д���', '4���д���', 1247, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���Bean������Ϊprototype������ζ�ţ�ѡһ�', 'Bean������Ϊ����ģʽ��ÿ�δ���һ��', 'Bean������Ϊ����ģʽ��ÿ�δ�����������', 'Bean������Ϊ����ģʽ��ֻ�Ṳ��һ��ʵ��', 'Beanÿ�ζ��ᴴ���µ�ʵ��', 1248, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '���ʹ�����´���ע��<ref local="msg">��ʾ��ѡ���', 'Ŀ��Bean��ID��Name��"msg"', 'Ŀ��Bean������ͬһ�����ļ���', 'Ŀ��Bean�����ڲ�ͬ�����ļ���', 'Ŀ��Bean���������������ļ���', 1249, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����ָ��Spring��Bean�ĳ�ʼ��������������������(  )���ԡ���ѡһ�', 'Init-factory', 'Init-method', 'Start-factory', 'Start-method', 1250, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʹ��Spring��DAOģ�����JDBC����ʱ���ǲ����������ǣ�ѡһ�', 'ʵ��ORMӳ�䣿������������������������������������������', '��������Դ', '�������', '�ṩJDBCģ��', 1251, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ʹ�ù��췽��ע��ʱ��Spring��ͨ��(  )���������֮���������ϵ����ѡһ�', 'JavaBean������', 'setter����', '���������', '�������Ĺ��캯��', 1252, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ΪʲôҪʹ�á�����ע�롱��ѡһ�', '������ڼ�', '����Ҫ�б��˼��', 'ʹ�á���������Ѵ����ż�϶Ƚ���', 'Ϊ��ʹ���������Ƚ��Ӵ�', 1253, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���ж�����ҵ��Ӧ������������ǣ�ѡһ�', '��ҵ��Ӧ���е�ϵͳ���ֲܷ��ڲ�ͬ�ĵط�', '��ҵ��Ӧ�ö԰�ȫ��Ҫ��ܸ�', '��ҵ��Ӧ��ϵͳ�˴�֮�����໥�����ģ�����Ҫ�����е�ϵͳ����', '��ҵӦ�������ݵ�һ����Ҫ��ܸߣ����Ա������ϸ��������', 1254, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���й���������Ӧ���ṩ�ģ����ˣ�ѡһ�', '����������������', '����ʽ�����ȫ����ҵ������', '�����п�����ܵ�����', '������ҵ������������ϵ�Ĺ���', 1255, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '���й���SpringAOP��˵����ȷ���ǣ�ѡ���', '����Ҫ��д������룬ʵ�� MethodBeforeAdvice �ӿ�', 'Spring AOP ��ȡ���ط������õķ�ʽʵ�֣������ڵ��÷���ǰ�����ú��׳��쳣ʱ����', 'Spring AOP ��ȡ����ķ�ʽʵ�֣����ô����������Ϊ org.springframework.aop.framework.ProxyFacoryBean', 'Spring AOP �����ڶ�Ŀ��(target) �����κ��޸ĵ���������ӳ�����', 1256, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���й���Spring����ע���˵��������ǣ�ѡһ�', '����ע��һ��������֣���ֵע��͹��췽��ע��', '��ֵע�뷽ʽʹ�õö�һЩ', 'Springֻ֧����ֵע��', '����ע��һ���������������ɣ�����Ӧ�ô�����ɵ�', 1257, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '�����й�AOP������ǣ�ѡ���', 'JoinPoint', 'Advice', 'Advisor', 'Pointcut', 1258, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '����Spring����ʽ����������У�������Щ����ѡ���' || chr(10) || '<aop:config>' || chr(10) || '<aop:pointcut id="bizMethods" ' || chr(9) || 'expression="execution(*com.conghai.isale.biz.*(..))" />' || chr(10) || '<aop:advisor advice-ref="txAdvice" pointcut-ref="txAdvice" />' || chr(10) || '</aop:config>', '<aop:config>ӦΪ<tx:config>', 'execution(* com.conghai.isale.biz.*(..))ӦΪexecution(* com.conghai.isale.biz.*.*(..))', '<aop:advisor>ӦΪ<aop:advise>', 'pointcut-ref="txAdvice"ӦΪpointcut-ref="bizMethods"', 1259, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���治����Spring�ṩ�ķ����ǣ�ѡһ�' || chr(10) || '', '���������������ڹ���' || chr(13) || '', '���ҷ���' || chr(13) || '', '�������' || chr(13) || '', '�̹߳���' || chr(13) || '', 1260, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������AOP��˵��������ǣ�ѡһ�', 'AOP ��ɢ����ϵͳ�еġ����桱���뼯��ʵ��', 'AOP ���������ϵͳ�Ŀ�ά����', 'AOP �Ѿ����ֳ��˽�Ҫ���������������', 'AOP ��һ�����ģʽ��Spring �ṩ��һ��ʵ��', 1261, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������Spring��˵���д�����ǣ�ѡһ�', 'Spring ��һϵ�������� JavaEE��ܵļ���', 'Spring �а���һ��������ע�롱ģʽ��ʵ��', 'ʹ��Spring ����ʵ������ʽ����', 'Spring �ṩ��AOP ��ʽ����־ϵͳ', 1262, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������Spring��DWR������˵����ȷ���ǣ�ѡһ�', 'Spring �����Զ��ҵ� DWR ����Ϣ', 'Spring ��Ҫ�� spring���� �ļ�������dwr �������ҵ� DWR �������ļ�', '�� dwr.xml �п����ҵ� spring �������ļ�', '�� web.xml �н���spring���úͼ��������ã������� dwr �ϵ� spring', 1263, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�У������û��ؼ����Զ���ؼ��Ĳ����������������ǣ�ѡһ�', '�û��ؼ��� .ascx �ļ���ʾ', '�û��ؼ���������ڹ������У����Զ���ؼ�������ڹ�������', '�û��ؼ����Զ���ؼ�����֧�ֻ���', '�û��ؼ����ʹ�ÿ��ӻ���ƹ��ߵ��û��ṩ���޵�֧�֣����Զ���ؼ����ṩȫ���֧�֡�', 1264, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET�У�����ʹ�ö��ַ�����һ��ҳ����ת������һ��ҳ�棬�������ӵ������ĳ������ӣ����¶��ǿ�ѡ��ķ��������ˣ�ѡһ�', 'ʹ��Response�����Redirect����', 'ʹ��Server�����Execute����', 'ʹ��Server�����Transfer����', 'ʹ��Application�����DirectTo����', 1265, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET�У�Ĭ�������WebService���ѡһ�', '���Է���Session�����Request����', '���ܷ���Session�����ܷ���Request����', '�ܷ���Session���󵫲��ܷ���Request����', '�Ȳ��ܷ���Session����Ҳ���ܷ���Request����', 1266, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET�У�����Session�����TimeOut���ԣ�����Ϊ��ǰ�Ự����һ���ĳ�ʱ���ƣ�TimeOut���ԣ���Ϊʱ�䵥λ�ġ���ѡһ�', 'Сʱ', '����', '��', '����', 1267, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�У�ʹ�ô������ؼ���������ҳ���ļ��ʹ����ļ����Ѿ�����õ�.dll�ļ��������Ժ�һ�㶼�ţ����¡���ѡһ�', '����Ŀ¼�ĸ�Ŀ¼', '����Ŀ¼��Ŀ¼�µ�bin�ļ�����', 'վ�����ڵ�Ŀ¼��bin�ļ�����', 'ϵͳĿ¼��system32Ŀ¼��', 1268, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET�У�Ϊ�˲������û���һ���ı���������"�ϵ�"������ʹ�����пؼ������ˣ�ѡһ�', 'RangeValidator', 'CompareValidator', 'ReularExpressionvalidator', 'CustomValidator', 1269, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET�У�Ϊ����ҳ����ʹ��һ����ΪUserControl1���û��ؼ��������пհ״�Ӧ�ò���Ĵ����ǣ�������ѡһ�' || chr(10) || '<%@ Register src="________" tagname="WebUserControl" tagprefix="uc1" %>', 'UserControl1.ascx', 'UserControl1', 'UserControl1.dll', 'UserControl1.ascx.cs', 1270, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET�У�Ϊ����ҳ����ԭ�����ͼ����ʾ���ַ��������д�����ȷ���ǣ�ѡһ�', 'Server.HtmlDecode("<script>confirm(''�������˻���ʱ��ֱ���Ʒ��ò׺�'');<script>");', 'Server.HtmlEncode("<script>confirm(''�������˻���ʱ��ֱ���Ʒ��ò׺�'');<script>");', 'Server.UrlDecode("<script>confirm(''�������˻���ʱ��ֱ���Ʒ��ò׺�'');<script>");', 'Server.UrlEncode("<script>confirm(''�������˻���ʱ��ֱ���Ʒ��ò׺�'');<script>");', 1271, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET��,���в�����߳��������ٶȵ������ǣ�ѡһ�', 'ʹ�����ݻ��漼��', 'ȫ��ʹ��ASP.NET�������ؼ�', '��һЩ�ؼ���EnableViewState������Ϊfalse', '����ư����������ݵ�ҳ��ʱ���÷�ҳ����', 1272, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET�У����д�����ҳ���е��������ǣ�ѡһ�' || chr(10) || 'XmlDocument xd = new XmlDocument();' || chr(10) || 'xd.LoadXml("<Person><name>�����</name></Person>");' || chr(10) || 'Response.Write(xd.InnerText);', '�����', '<name></name>', '<name>�����</name>', '<Person><name>�����</name></Person>', 1273, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', 'ĳASP.NETӦ�ó����Web.Config�ļ����ִ�������,��˿�֪��ѡ���<authentication mode ="Forms">' || chr(10) || '    <forms name =".yourAuthCookie" loginUrl="Login.aspx" protection="All" path="/">' || chr(10) || '        <credentials passwordFormat="Clear">' || chr(10) || '            <username="��ɣ" password="123"/>' || chr(10) || '        </credentials>' || chr(10) || '    </froms>' || chr(10) || '</authentication>' || chr(10) || '<authorization>   <deny users="?"/>   </authorization>', 'ֻ����Ϊ��ɣ���û��ܹ�����Ӧ�ó���', '�����û����ܹ�����Ӧ�ó���', '����û���֤ʧ�ܣ����Զ���ת��Login.aspxҳ��', '����û���֤ʧ�ܣ��������Զ���ת��Login.aspxҳ��', 1274, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', 'ĳASP.NETӦ�ó����Web.Config�ļ����ִ������£�' || chr(10) || '<customErrors defaultRedirect="erro.aspx" mode= "Off">' || chr(10) || '�ɴ˿�֪��ѡ���', '���Ӧ�ó������Զ�̿ͻ��˲��ܿ�����ϸ�Ĵ�����Ϣ', '���Ӧ�ó������������ת��erro.aspxҳ��', '���Ӧ�ó�����������û���������ϸ�Ĵ�����Ϣ', '���Ӧ�ó���������򲻻���ת��erro.aspx ҳ��', 1275, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ĳ����Ա��һ��ASP.NETӦ�ó����У���Session�����TimeOut��������Ϊ��20����ѡһ�', '�û����������ʮ����û����Ӧ�ó�����н��������û��Ự�������', '�û����������ʮ����û����Ӧ�ó�����н��������û��Ự�������', '�û����������ʮ������Ӧ�ó�����н����󣬸��û��Ự�������', '�û����������ʮ������Ӧ�ó�����н����󣬸��û��Ự�������', 1276, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ĳ������ASP.NET��дһ���������ҳ���Ӧ�ó���ÿ��ҳ���ж���һ���ֹ�����ͬ�ĵ�����ť����ʱ��ò��ã���ʵ�ֵ������ܣ��Լӿ쿪���ٶȡ���ѡһ�', '�Զ���ؼ�', '�û��ؼ�', '���Ͽؼ�', 'Web�ؼ�', 1277, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������ʹ��ASP.NET����һ����̳����Ϊ����ҳ����ʵ���ļ��ϴ��Ĺ��ܣ����ѡ�����У�����ʵ�֡���ѡһ�', 'һ��HtmlInputText�ؼ���������ť', 'һ��HtmlInputFile�ؼ���һ����ť', 'һ��HtmlInputText�ؼ���һ��HtmlImage�ؼ���һ����ť�ؼ�', 'һ��HtmlSelect�ؼ���������ť', 1278, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���ڱ�дһ��ASP.NETӦ�ó���ʵ��һ����Ա���������ҳ�棬��Ҫʹ��ASP���ڲ��ؼ���ʵ���Ա��ѡ�񣬴�ʱ�������ؼ�Ӧ������ѡ����ѡһ�', 'CheckBox', 'ListBox', 'DropDownList', 'TextBox', 1279, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����������ͨ��Internet������ļ�����ϵ�ASP.NET�ļ���Ӧ��ѡ��ѡһ�', 'http://localhost/asp.net/chapter1/1-1.aspx', 'http://127.0.0.1/asp.net/chapter1/1-1.aspx', 'http://��ļ��������/asp.net/chapter1/1-1.aspx', 'http://��ļ����IP��ַ/asp.net/chapter1/1-1.aspx', 1280, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���ϣ���ؼ����ݱ仯��������������ύ������Ҫ�ڿؼ���������ԣ�ѡһ�', 'AutoPostBack="true"', 'AutoPostBack="false"', 'IsPostBack="true"', 'IsPostBack="false"', 1281, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Internet ��ԴҪ����֤�ͻ�����ݣ�WebRequest.GetResponse ����������һ�������֤���̡��˹��̳ɹ������������֤ģ�齫��WebRequest ʵ������һ��(' || chr(9) || ')��ʵ������ʵ������Internet ����������֤��Ϣ����ѡһ�', 'Authorization', 'WebResponse', 'Cookie', 'NetworkCredential', 1282, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʹ�á��½���Ŀ����Visual C# Projects ��Ŀ����ASP.NET Web Ӧ�ó��򡱳ɹ�����URLΪ��http://localhost/MyWeb����Web ��Ӧ�ó������Ŀ�ļ��������ڣ�ѡһ�', '���ؼ����Web վ���MyWeb ����Ŀ¼��', '�����ļ�����MyWeb ��', '��һ̨��Ϊlocalhost �ļ������Web վ���MyWeb ����Ŀ¼��', '����Ŀ¼c:\My Documents\MyWeb ��', 1283, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ʹ��ADO.NET��DataReader�����ȡXML���ݵĴ�������£�' || chr(10) || 'DataSet myds = new DataSet();  //1' || chr(10) || 'FileStream myfs = new FileStream(Server.MapPath("xmlgrid.xml"),FileMode.Open,FileAccess.Read);  //2' || chr(10) || 'StreamReader myreader = new StreamReader(myfs);  //3' || chr(10) || 'myreader.ReadXml(myds);  //4' || chr(10) || '���������д����У��ڣ����д��뽫��������ʱ���󡣣�ѡһ�', '1', '2', '3', '4', 1284, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ʹ��CompareValiddator�ؼ���֤textbox�ؼ�������������Ƿ�Ϊ����ʱ����������operator����Ϊ��ѡһ�', 'equal', 'notequal', 'datatypecheck', 'lessthan', 1285, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ͨ����Զ����վ�ϵ��ļ�����ά�����õ��ֶ��ǣ�ѡһ�', 'SMTP', 'POP3', 'FTP', 'HTTP', 1286, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ļ��ϴ��ؼ�.PostedFile.FileName��ʾ���ǣ�ѡһ�' || chr(10) || '', '���������ļ�����·��' || chr(13) || '', '�ͻ����ļ�����·��' || chr(13) || '', '���������ļ�����' || chr(13) || '', '�ͻ����ļ�����' || chr(13) || '', 1287, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����(  )���ö��󾭳�����������ҳ����������ѡһ�', 'Reponse', 'Application', 'Request', 'Session', 1288, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���в��Ƿ������ؼ����ǣ�ѡһ�', 'Textarea', 'LinkButton', 'HyperLink', 'DropDownList', 1289, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���ж�ASP.NET��֤�ؼ�������ȷ���ǣ�ѡһ�', '�����ΪRequiredFieldValidator��֤�ؼ�����ControlToValidate���ã�������ʱ������쳣', '���ܽ������֤�ؼ�Ӧ�õ�һ���ı�����', 'RangeValidator��֤�ؼ�ֻ�ܶ������͵����ݽ��з�Χ��֤', '��֤�ؼ�ֻ���ڿͻ��˽������ݵ���֤', 1290, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����ĸ�����ASP.NET�����ö���ѡһ�', 'Application', 'Session', 'Request', 'SqlCommand', 1291, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����(  )�ļ���Ҫ����Ӧ�ó�ʼ�����������Ự��ʼ������������ʼ���������¼�����ʱӦ�ó���Ҫ�������顣��ѡһ�', 'Web.Config', 'Global.asax', 'Global.inc', 'Config.asax', 1292, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���涼��ASP.NET���ģʽ���ŵ㣬���ˣ�ѡһ�', '���ݷ���', '�칹ϵͳ�����ݽ���', '�¼�����', '�������', 1293, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����ĸ�(  )���Բ�����Page���󡣣�ѡһ�' || chr(10) || '', 'Lanuage' || chr(13) || '', 'AutoEventWireup' || chr(13) || '', 'Inherits' || chr(13) || '', 'Runat' || chr(13) || '', 1294, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������Request����ļ��ϡ���ѡһ�' || chr(10) || '', 'cookie' || chr(13) || '', 'querystring' || chr(13) || '', 'form' || chr(13) || '', 'session' || chr(13) || '', 1295, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����һ�γ̳ɼ�����򣬳ɼ���ΧΪ0��100���������ʹ��(  )��֤�ؼ�����ѡһ�' || chr(10) || '', 'RequiredFieldValidator' || chr(13) || '', 'CompareValidator' || chr(13) || '', 'RangeValidator' || chr(13) || '', 'RegularExpressionValidator' || chr(13) || '', 1296, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '����������������м��ַ�ʽ����ѡ���' || chr(10) || '', 'POST' || chr(13) || '', 'GET' || chr(13) || '', 'SESSION' || chr(13) || '', 'COOKIE' || chr(13) || '', 1297, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Ҫ��һ��TextBox���ó����������Ӧ������(  )���ԡ���ѡһ�', 'Columns', 'Rows', 'Text', 'TextMode', 1298, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Ҫ������Դ�󶨵��ؼ�����Ҫ���ÿؼ���(   )��������ѡһ�', 'Load', 'DataBind', 'Dispose', 'GetType', 1299, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Ҫȡ��DropDownList�ؼ����û�ѡ���ֵ��Ӧ��ȡ��ѡһ�' || chr(10) || '', 'SelectedIndex' || chr(13) || '', 'SelectedValue' || chr(13) || '', 'Value' || chr(13) || '', 'Text' || chr(13) || '', 1300, 324);
commit;
prompt 1300 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ҪʹButton�ؼ������ã���Ҫ���ؼ���(  )��������Ϊfalse����ѡһ�', 'Enabled', 'EnableViewState', 'Visible', 'CausesValidation', 1301, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ҪʹRadioButton�ؼ���ѡ�У���Ҫ����(  )��������Ϊ true����ѡһ�', 'Enabled', 'Visible', 'Checked', 'AutoPostBack', 1302, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Ҫ��֤�ı���������������Ƿ�Ϊ�Ϸ����ʱ࣬��Ҫʹ��(  )��֤�ؼ�����ѡһ�', 'RequiredFieldValidator', 'RangeValidator', 'CompareValidator', 'RegularExpressionValidator', 1303, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ҪָʾASP.NET�Ƿ����ûỰ״̬��Ӧ�����õ��������ǣ�ѡһ�', '<httpRuntime>', '<pages>', '<appSetting>', '<sessionState>', 1304, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ҳ���IsPostBack���������б�ҳ�棨ѡһ�', '�Ƿ���Ҫ�ش�', '�Ƿ��ǻش���', '�Ƿ����ûش�', '�Ƿ���Ӧ�ش�', 1305, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���µ�ASP.NET���룬��ִ��ʱ����ѡһ�' || chr(10) || 'private void Page_Load(object sender, System.EventArgs e)' || chr(10) || '{  Response.Write(Server.UrlEncode("http://ABC.aspx"));}', '��ҳ��������ַ�"http://ABC.aspx"', '��ҳ��������ַ�"http%3a%2f%2fABC.aspx"', '��ת��http://ABC.aspxҳ��', '��������κ���Ϣ������', 1306, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���µ�ASP.NET���룺' || chr(10) || 'private void Page_Load(object sender,System.EventArgs e){   ' || chr(10) || '    (1)//�ڴ˴���д����' || chr(10) || '    {' || chr(10) || '        ArrayList values=new ArrayList();' || chr(10) || '        values.Add("O");' || chr(10) || '        values.Add("A");' || chr(10) || '        chkA.DataSource=values;' || chr(10) || '        chkA.DataBind();' || chr(10) || '    }' || chr(10) || '}Ϊ��֤ҳ�治�ظ�����������ļ��أ���Ҫ�ڣ�1������д�Ĵ�����ӦΪ��ѡһ�', 'if(!IsPostBack)', 'If(Page.PostBack=false)', 'If(this.PostBack=fales)', 'if (IsPostBack)', 1307, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '�Ķ�����.net�����ļ���' || chr(10) || '<configuration>' || chr(10) || '<system.web>' || chr(10) || '    <sessionState mode="InProc" cookieless="true" timeout="20"/>' || chr(10) || '</system.web>' || chr(10) || '</configuration>' || chr(10) || '���������ļ�������ȷ���ǣ�ѡ���', '�����ýڵ����õ��ǻỰ״̬��Ϣ', '�������ļ�ָ������Զ�̼�����ϴ洢�Ự״̬', '�������ļ�ָ��������ʱʱ��Ϊ20����', '�������ļ�ָ��������ʱʱ��Ϊ20����', 1308, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���µ�ASP.NETҳ����룺' || chr(10) || '<html><head></head>' || chr(10) || '<body>' || chr(10) || '    <h3>HyperLink Sample </h3>   Click on the HyperLink:<br>' || chr(10) || '    <asp:HyperLink id="hyperlink1"  ImageUrl="images/pict.jpg" NavigateUrl="http://www.microsoft.com"  Text="Microsoft Official Site"/>' || chr(10) || '</body></html>' || chr(10) || '����˵����ȷ���ǣ�ѡһ�', '��ʾһ��HyperLink�ؼ������ҵ����ת��http://www.microsoft.comҳ��', '��ʾһ��HyperLink�ؼ������ǲ�ִ���κ���ת', '����ʾHyperLink�ؼ�', 'ҳ������ʱ�����ִ�����ʾ��Ϣ', 1309, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���¶���@Pageָ������ԣ����ˣ�ѡһ�', 'Debug', 'AutoEventWireup', 'Inherits', 'EnableBuffer', 1310, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������ĳ������Ա��һ��Web�����б�д�Ĳ���C#���룬��֪GetJobDs��һ������һ�����ݼ��ķ�������ĳ���û���һ�η��ʸ�ҳ���ʱ������˵����ȷ���ǣ�ѡһ�' || chr(10) || 'private void Page_Load(object sender,System.EventArgs e)' || chr(10) || '{ ' || chr(10) || '    if(!this.IsPostBack)' || chr(10) || '    {' || chr(10) || '        DataSet ds = this.GetJobDs();' || chr(10) || '        this.GridView1.DataSorce = ds.Tables[0];' || chr(10) || '    }' || chr(10) || '}', '�û�������GridView�ؼ��п������ݼ����е����ݣ���Ϊû������GridView�ؼ���DataMember����', '�û�������GridView�ؼ��п������ݼ����е����ݣ���Ϊû�н������ݰ�', '�û�������GridView�ؼ��п������ݼ����е����ݣ���Ϊ������2��3���ܱ�ִ��', '�û�������GridView�ؼ��п������ݼ��е�����', 1311, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��C#��д����ҳ��̨���뱻������ (  )�ļ��С���ѡһ�' || chr(10) || '', '.aspx' || chr(13) || '', '.vb' || chr(13) || '', '.cs' || chr(13) || '', '.config' || chr(13) || '', 1312, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�Ķ����������ļ���' || chr(10) || '<appSettings>' || chr(10) || '<add key="DSN" value=" data source=YONGPING;Integrated Security=SSPI;Initial Catalog=northwind" />' || chr(10) || '<add key="SQL_Orders" value="SELECT AVG(Freight) FROM Orders" />    </appSettings>' || chr(10) || '��ASP.NET�У�ͨ��C#����������ļ����ռ�"DSN"����Ϣ����ȷ�Ĵ������ǣ�ѡһ���', 'string strDSN = ConfigurationManager.AppSettings["DSN"];', 'string strDSN = ConfigurationManager.AppSettings("DSN");', 'string strDSN = AppSettings["DSN"];', 'string strDSN = AppSettings("DSN");', 1313, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�Ķ����������ļ���' || chr(10) || '<configuration>' || chr(10) || '   <system.web>' || chr(10) || '      <pages buffer="true" enableSessionState="true" autoEventWireup="true" />' || chr(10) || '   </system.web>' || chr(10) || '</configuration> ' || chr(10) || '�������������ļ�������������ǣ�ѡһ�', '���������ļ�ͨ��ҳ���������ÿ���ASP.NETҳ���һЩĬ����Ϊ', '�����ļ���ָ��δ������Ӧ����', '�����ļ���ָ�����ûỰ״̬', '�����ļ���ָ���Զ�����ҳ�¼�', 1314, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�Ķ����µ�C#���룺' || chr(10) || '<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>' || chr(10) || '<body>' || chr(10) || '    �û�����<asp:TextBox ID="txtName" runat="server"></asp:TextBox>' || chr(10) || '    <br />' || chr(10) || '    ���룺<asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox></body>' || chr(10) || '���ϴ�����һ���û��ؼ��Ĵ��룬������δ����������ȷ���ǣ�ѡһ�', '���ϴ����ǲ��Եģ���Ϊ������<body>Ԫ��', '���ϴ����ǲ��Եģ���Ϊ�������κ�Html���Ԫ���ڿؼ���', '���ϴ�������һ���ṩ��ʽ�ı�������ı����һ���ύ��ť', '�ô���������ļ�����ΪUserControl1.ascx.cs', 1315, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET �У����Ҫ������Ӧ�ó���ĸ��٣�����ҳ�����ͳ����Ϣ��Ҫ���͵��ͻ��ˣ���ô��Ҫ��Web.Config������������Ӧ��Ϊ��ѡһ�', '<trace enabled = "true"/>', '<trace enabled = "false" pageOutput = "false"/>', '<trace debug = "true"/>', '<trace debug="true" output="false"/>', 1316, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '��ASP.NET ��,��һ��ע�ᴰ��Ҫ���û���������,Ϊ��ȷ���û���������䲻С��18��������30������Ϊ����,��Ҫ����RangeValidator �ؼ������������TextBox�ؼ�������֤,���ж���RangeValidator�ؼ�����������ȷ���ǣ�ѡ���', '��MinimumValue ����Ϊ17, Type ����ΪInteger', '��MinimumValue ����Ϊ18, Type ����ΪInteger', '��MaximumValue ����Ϊ30, Type ����ΪInteger', '��MaximumValue ����Ϊ31, Type ����ΪInteger', 1317, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�����У����£����������ںڿ���Web�������϶�վ���ļ������ƻ�����ѡһ�', 'ҳ���ڵ�_ViewState�ؼ�', 'Application�����Lock����', 'Server�����MapPath����', '�ͻ��˵�JavaScript�ű�', 1318, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET�Ĳ��𷽰��У�ʹ�������ļ��ܹ�������µĺô������ˣ�ѡһ�', '�����ļ����Խ����ֹ��༭��������', '�ֲ����õķ����ɼ̳У�������', '����Ӳ���룬�����޸�', '���ò��������ýڴ�������ǹ̶��ģ������', 1319, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET��������֤�ؼ��У��ܹ���֤�Զ���������ʽ�Ŀؼ��ǣ�ѡһ�', 'RequiredFieldValidator', 'CompareValidator', 'Randebalidator', 'RegularExpressionValidator', 1320, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET�����У�Label1Ϊ��ǩ�ؼ���ListBox1ΪListBox�ؼ�������"Label1.Text=ListBox1.Text"��ִ�н��Ϊ��ѡһ�', '�ڱ�ǩ�У���ʾListBox�ؼ���ѡ�е�����ı�', '�ڱ�ǩ�У���ʾListBox�ؼ���û��ѡ�е���', '�ж�ListBox�ؼ���ѡ����ı��Ƿ����ǩ�ؼ����ı���Ϣ���', '����"Label1.Text=ListBox1.Text"�д���', 1321, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NETҳ���У�Ҫʹ�ı����������6���ַ�����Ҫ���ÿؼ���(   )����ֵ����Ϊ6����ѡһ�', 'MaxLength', 'Columns', 'Rows', 'TabIndex', 1322, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NETӦ���У����赱ǰվ�������ļ�����C��\Inetpub\����վ�������Ŀ¼ΪTest�����Ӧ���ļ���ΪE:\Study\���ڸ�Ŀ¼�����ļ�1.xml����Server.MapPath("\\1.xml")�ķ���ֵ�ǣ�ѡһ�', 'C:\Inetpub\Test\1.xml', 'E:\Study\1.xml', 'C:\Inetpub\1.xml', 'E:\Study\Test\1.xml', 1323, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET��, Application�� () ���ʵ����ѡһ�', 'HttpApplication', 'HttpApplicationUtility', 'HttpApplicationState', 'Page', 1324, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET��, ��֪��ҳ���Page_Load�¼�����Ϊһ��DataList�ؼ�������һ��DataTable��������Դ, Ϊ����DataList�ؼ�������ʾDataTable����Ϊ "Interest"���У����а󶨱��ʽ��ȷ���ǣ�ѡһ�', '<%# Eval("Interest") %>', '<%#  Container.DataItem,"Interest"%>', '<%=  DataBinder.Eval("Interest")%>', '<%#  Interest%>', 1325, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET��, ��һ��Ӧ�ó����Web.Config�ļ��������µ�����:' || chr(10) || '<customErrors   defaultRedirect = "Http://LocalHost/ MyAPP/ErrorComm.aspx"  mode = "RemoteOnly">' || chr(10) || '    <error statuscode = "404" redirect = "Http://LocalHost/ MyAPP/FileNotFound.aspx"/>' || chr(10) || '</customErrors>   Զ���û��ڷ��ʵ�ʱ��,���Ӧ�ó�����ֳ���Ϊ����������,���򽫣�ѡһ�', '��ת��ErrorComm.aspxҳ��', '��ת��FileNotFound.aspxҳ��', 'ֱ�ӹر��û��������', 'ֱ�ӱ������', 1326, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�У�.ascx��.aspx�ļ��ж�����ӵ�е�Ԫ�ذ�����ѡһ�', '<HTML>', '<BODY>', '<SCRIPT>', '<FORM>', 1327, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET�У�_VIEWSTATE�ǣ�ѡһ�', 'Page������', '���صĿؼ�', '�Զ�ִ�еĴ���', '@Pageָ�������', 1328, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET�У�DropDownList��ѡ����������ű�����(  )�����С���ѡһ�', 'SelectedIndex', 'SelectedItem', 'SelectedValue', 'TabIndex', 1329, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '��ASP.NET�У�http://localhost/onlineExamSystem/ExamQuestion.aspx?ExamLevel=1,Ϊ���ڵ�ǰҳ��������ҳ��ӵ�ַ���д��ݹ����Ĳ���ExamLevel��ֵ�����з�����ȷ���ǣ�ѡ���', 'Request.QueryString["ExamLevel"]', 'Request.QueryString[0]', 'Request.QueryString[1]', 'Request.Params[1]', 1330, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�У����������ҳ����ã�������ʱ�������ҳ�����������ݰ󶨱��ʽ����ѡһ�', 'Fill()', 'ReadXML()', 'DataBind()', 'DataBinder.Eval()', 1331, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET�У�����XmlDataDocument��������������ǣ�ѡһ�', 'XmlDataDocument�Ļ�����XmlDocument', 'XmlDataDocument���ڵ������ռ���System.Xml', 'XmlDataDocument������һ��DataSet���г�ʼ��', 'XmlDataDocument��XmlDocument�Ļ���', 1332, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET�У��������д����˵����ȷ���ǣ�ѡһ�' || chr(10) || 'HttpCookie user = new HttpCookie("name","����");  //1' || chr(10) || 'Response.Cookies.Add(user);    //2' || chr(10) || 'user.Expires = DateTime.Now.AddMinutes(4); //3', '������1����', '������2����', '������3����', '���д�������ȷ', 1333, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET��<%@  Register%>ָ���У����й���Src���Ե�������ȷ���ǣ�ѡһ�', 'Src�������û��ؼ���·��', 'Src�������û��ؼ�������', 'SrcΪ�û��ؼ�������', 'SrcΪ�û��ؼ��������ռ�', 1334, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET��Ϊ�˱����û���һ����Ҫ��Ϣ,���ʹ������()����ѡһ�', 'application', 'session', 'cookie', 'cache', 1335, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET��Ҫ�ڸ�TextBox�ؼ����ı�����Ҫ���ؼ���TextMode��������Ϊ��ѡһ�', 'Password', 'MultiLine', 'SingleLine', 'Null', 1336, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET��ִ�����´��룬û�еõ���ȷ�����ԭ���ǣ�ѡһ�' || chr(10) || 'public string Name{ get{ return"��С��";}}' || chr(10) || '��Test.aspxҳ���б�д�������ݰ󶨱��ʽ��<%#Name%>', '��Test.aspx�а󶨷�ʽ���ԣ�Ӧ����<%= %>����<%# %>', '���Զ������', 'Ӧ��Page_Load�����м���Page.DataBind();', '���ϴ𰸶�����', 1337, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASPNET�У���ͼ״̬��ͨ������(  )�ؼ���ʵ�ֵġ���ѡһ�' || chr(10) || '', 'Input type = "text"', 'Input type=hidden"', 'Input type="image"' || chr(13) || '', 'Input type="file"', 1338, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C#��,����XML���඼����������ĸ������ռ��У�ѡһ�', 'System.Xml', 'System.Xml.Schema', 'System.Xml.Xsl', 'System.Xml.XPath', 1339, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��DOM�У�װ��һ��XML�ĵ��ķ�����ѡһ�', 'Save����', 'Load����', 'LoadXML����', 'Send����', 1340, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ڱ�дASP.NET ҳ��ʱ����ϣ����ÿ��ҳ������ʱִ��ĳ����������Ӧ����Ӧ����д��(  )�¼���������С���ѡһ�', 'ҳ���Load', 'ҳ���init', 'ҳ���PreRender', 'ҳ���Disposed ��Ϣ', 1341, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һ��ASP.NETӦ�ó����Global.Asax�У������µĶ��壺' || chr(10) || 'protected void Application_Start(Object sender, EventArgs e)' || chr(10) || '{' || chr(10) || '    Application["count"] = 123;' || chr(10) || '}Application������ҳ��Ҳ���������ã����Ұ�count��Сд�ĳ��˴�д���������£�Response.Write(Application["COUNT"].ToString());  ��������е�����Ĵ�����ʱ������ѡһ�', '�����ִ������123', '�����ִ��󣬵����Ϊ0', '������벻��ͨ��', '���ִ��󣬱���Ϊ�޶���ʵ�����Ƿ���NULL����', 1342, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��һ��ASP.NET�У�Ҫִ������ҳ�����Ч����֤��ʹ�����µĴ��룺' || chr(10) || 'void ValidateBtn_Click(Object Sender, EventArgs E) ' || chr(10) || '{  ' || chr(10) || '    //��1���˴���д��ȷ�Ĵ���' || chr(10) || '    {      lblOutput.Text = "��֤ͨ��";  }  ' || chr(10) || '    else ' || chr(10) || '    {      lblOutput.Text = "��֤δͨ��";  } ' || chr(10) || '}��1�����Ĵ�����Ӧ��Ϊ��ѡһ�', 'if (Page.Validate == true)', 'if (Page.IsValid == true)', 'if (Page.Validators == true)', 'if (Page.VerifyRenderingInServerForm == true)', 1343, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ʹ��jquery���<input type="hidden" id="id" name="id" />Ԫ������ҳ���Ƿ���ڡ�(ѡ��һ�', 'if($("#id")) {   //do someing...    }', 'if($("#id").length > 0) {   //do someing...    }', 'if($("#id").length() > 0) {   //do someing...    }', ' if($("#id").size > 0) {   //do someing...    }', 1344, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<a href="xxx.jpg" title="�¼ұ���ϯѧУ...">����</a>,��ȡ<a>Ԫ��title������ֵ����ѡ��һ�', '$("a").attr("title").val();', '$("#a").attr("title");', '$("a").attr("title");', '$("a").attr("title").value;', 1345, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ִ���������' || chr(10) || ' $(document).ready(function(){' || chr(10) || '   $("#click").click(function(){' || chr(10) || '    alert("click one time");' || chr(10) || '   });' || chr(10) || '   $("#click").click(function(){' || chr(10) || '    alert("click two time");' || chr(10) || '   });' || chr(10) || '});' || chr(10) || '������ť<input type="button" id="click" value="�����"/>���������ʲôЧ����' || chr(10) || '��ѡ��һ�', '����һ�ζԻ�����ʾclick one time ��', '����һ�ζԻ�����ʾclick two time ��', '�������ζԻ���������ʾclick one time��click two time��', 'js�������', 1346, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ҳ������һ��select��ǩ���������£�' || chr(10) || '<select id="sel">' || chr(10) || '    <option value="0">��ѡ��</option>' || chr(10) || '    <option value="1">ѡ��һ</option>' || chr(10) || '    <option value="2">ѡ���</option>' || chr(10) || '    <option value="3">ѡ����</option>' || chr(10) || '    <option value="4">ѡ����</option>' || chr(10) || ' </select>��Ҫʹ��ѡ���ġ�ѡ�е���ȷд����' || chr(10) || '��ѡ��һ�', '$("#sel").val("ѡ����"); ', '$("#sel").val("4");', '$("#sel > option:eq(4)").checked;', '$("#sel  option:eq(4)").attr("selected");', 1347, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ҳ������һ��ulԪ�أ��������£�' || chr(10) || '<ul>' || chr(10) || '   <li title=''ƻ��''>ƻ��</li>' || chr(10) || '   <li title=''����''>����</li>' || chr(10) || '   <li title=''����''>����</li>' || chr(10) || '</ul>������Խڵ�Ĳ�����һ��˵������ȷ��' || chr(10) || '��ѡ��һ�', 'var $li = $("<li title=''�㽶''>�㽶</ii>"); �Ǵ����ڵ㡣', '$("ul").append($("<li title=''�㽶''>�㽶</ii>")); �Ǹ�ul׷�ӽڵ㡣', '$("ul  li:eq(1)").remove();��ɾ��ul�¡����ӡ��Ǹ��ڵ㡣', '����˵��������', 1348, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ҳ����һ��<input type="text" id="name"  name="name" value=""/>Ԫ�أ���̬���ø�Ԫ�ص�ֵ����ȷ��ѡ���ǡ���ѡ��һ�', '$("#name").val("��̬��ֵ");', '$("#name").text("��̬��ֵ");', '$("#name").html("��̬��ֵ");', '$("#name").value("��̬��ֵ");', 1349, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����˵������ȷ���ǣ�ѡ��һ�', '$(":hidden")ѡȡ<input>��type������hidden�Ĳ��ɼ�Ԫ�ء�', '$("div >span")ѡȡ<div>Ԫ����Ԫ������<span>����Ԫ�ء�', '$("div :first")ѡȡ����<div>Ԫ���е�һ��<div>Ԫ�ء�', '$("input:gt(1)")ѡȡ����ֵ����1��<input>Ԫ�ء�', 1350, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����˵������ȷ���� ��ѡ��һ�', '$("input:checked")ѡȡ���б�ѡ�е�<input>Ԫ��', '$("#form:disabled")ѡȡidΪform�ı��ڵ����в�����Ԫ��', '$("#name").is(":visible")���ж�idΪname��Ԫ�صĿɼ���', '$("div ").addClass("background","url(img/up.gif) ")��������ʽ��', 1351, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��һ��ASPNET������ͼ������ϵͳ�У���һ��Web���壬�������и���ΪDropDownListBookName��DropDownList�ؼ��Լ�һ����ΪbtnGetBookName��Button�ؼ�����btnGetBookName�ؼ���Click�¼������´���:' || chr(10) || 'private void GetBookName_Click(object sender,System.EventArgs e)' || chr(10) || '{' || chr(10) || 'string [] bookName = {"CSharp�߼�Ӧ�ó��򿪷���","CSharp�߼�Ӧ�ó��򿪷���","CSharp�߼�Ӧ�ó��򿪷���"};' || chr(10) || 'ArrayList bookNameArr = new ArrayList();' || chr(10) || 'for(int i=0; i<bookName.Length; i++ )' || chr(10) || '{' || chr(10) || '    bookNameArr.Add(bookName[i].Replace("��","��"));' || chr(10) || '}' || chr(10) || 'this.DropDownListBookName.DataSource = bookNameArr;' || chr(10) || '}��Web���������󣬵��û����btnGetBookName�ؼ�������˵����ȷ���ǣ�ѡһ�', '��DropDownListBookName�ؼ���Items������������ֱ�Ϊ"CSharp�߼�Ӧ�ó��򿪷���"��"CSharp�߼�Ӧ�ó��򿪷���"', '��DropDownListBookName�ؼ���Items������������ֱ�Ϊ"CSharp�߼�Ӧ�ó��򿪷���"��"CSharp�߼�Ӧ�ó��򿪷���"��"CSharp�߼�Ӧ�ó��򿪷���"', '��DropDownListBookNameû���κ����Ϊû�е���DropDownListBookName�ؼ���DataBind����', '�����this.DropDownListBookName.DataBind();����DropDownListBookName�ؼ���Items������������ֱ�Ϊ"CSharp�߼�Ӧ�ó��򿪷���"��"CSharp�߼�Ӧ�ó��򿪷���"', 1352, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һ��ASPXҳ���Page_Load�¼��У���д�����´��룬��ִ�и�ҳ��󣬽���ҳ���������ѡһ�' || chr(10) || 'private void Page_Load(object sender,System.EventArgs e)' || chr(10) || '{  ' || chr(10) || '    Response.Write("��ӭ����");' || chr(10) || '    Response.End();' || chr(10) || '    Response.Write("��ӭ�´ι���");' || chr(10) || '}', '��ӭ����', '��ӭ�´ι���', '��ӭ����        ��ӭ�´ι���', '��ӭ���ٻ�ӭ�´ι���', 1353, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��һ��ASPXҳ������һ��HyperLink�ؼ�,�ÿؼ���Target����Ϊ"_blank",NavigateUrl����Ϊ"http://www.baidu.com", ���û������ÿؼ�������˵����ȷ���ǣ�ѡ��һ�', '��ǰ���彫��Ϊ�հ�ҳ', '����һ���µĿհ�ҳ����', '�ڵ�ǰҳ���"http://www.baidu.com"��ַ��Ӧ����ҳ', '��һ���µĴ����д�"http://www.baidu.com"��ַ��Ӧ����ҳ', 1354, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��һ���ﳵ��ASP.NETӦ�ó����У���ʹ�����µĴ������洢��ǰ�Ự�Ŀ�����Ϣ��Session["pp"]=txtPwd.Text;��ô�����ִ��ʱ����ѡһ�', '���������Ϣ����ʾNULL����', '���������Ϣ��Ӧ��ʹ��Session["Password"]�����б�ʶ', '�����������Ϣ�����Ǵ洢�Ŀ�����Ϣ��ԶΪ��', '��������', 1355, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Duration=3������ҳ�滺���ʱ���ǣ�ѡһ�', '3Сʱ', '3����', '3����', '3��', 1356, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '<credentials> ��һ������passwordFormat�������ĸ��������Ǹ����Ե�ֵ��ѡһ�', 'None', 'Clear', 'SHA1', 'MD5', 1357, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ASP.NET�Ļ��治������ѡһ�', 'ҳ���������', '��Ի���', 'Ӧ�ó������ݻ���', 'ҳ�沿�ֻ���', 1358, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ASP.NET�У�������ǰ����(  )��������Ǹ÷���֧��Web���ʡ���ѡһ�', '[Serializable]', '[Formatable]', '[WebMethod]', '[STAThread]', 1359, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'SOAP��ȫ���ǣ�ѡһ�', 'Simple Object Address Protocol', 'Simple Object Access Protocol', 'Simple Object Address process', 'Simple Object Access process', 1360, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'WebService�Ļ���ͨ��Э���ǣ�ѡһ�', 'DCOM', 'SOAP', 'CORBA', 'UDP', 1361, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'WebService�ļ�����չ���ǣ�ѡһ�', 'aspx', 'ascx', 'asmx', 'ashx', 1362, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'WebPartManager������һ��ASPXҳ���п����ж��ٸ���ѡһ����', '1', '2', '3', '����', 1363, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ɫ������Roles������ɵĹ����ǣ�ѡһ�', '���û������ɫ', '���û��ӽ�ɫɾ��', '����ĳ����ɫ���û�', '����ĳ��ɫ�����û��ĵ�¼����', 1364, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ʹ��SQLServer2005���洢������Ϣ����ͬʱ��ε���Ϣ��ĳ��ʱ���ھ��������ʣ��������ѯ�Ľ������һЩʱ���ڶ�Internet�û�����ȫ��ͬ�ģ�Ϊ���ҳ��ķ����ٶȣ�����ʹ��ASP.NET�Ļ��������������Щ���������ʱӦ��ʹ�ã������͵Ļ�����ơ���ѡһ�', '��ʱ����', 'ҳ�滺��', '���ݻ���', '���ݿ⻺��', 1365, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������һ��ASP.NETӦ�ó������Ӧ�ó������һ��Xml Web Service�����Xml Web Service������һ�������˹�˾��Ա�б��DataSet������ѡ�����������������ʹ�����Xml Web Service��ѡһ�', '��"����"�Ի����.Net��ǩ��ѡ��System.Web.Services.dll', '��"Web����"�Ի������������XML Web service�ĵ�ַ', '��Global.asax.cs�����һ��using��䲢ָ�����XML Web service�ĵ�ַ', '��Global.asax.cs��дһ���¼��������������Xml Web Service��Ӧ��.wsdl��.disco�ļ�', 1366, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�ж��Ƿ�Ϊ�����û�Ҫʹ������Profile���ĸ����ԣ�ѡһ�', 'IsDirty', 'IsOnline', 'IsSynchronized', 'IsAnonymous', 1367, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ASP.NET���Ի���Ҫ�����ĸ����ýڣ�ѡһ�', 'Authentication', 'SessionState', 'Profile', 'MemberShip', 1368, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ʹ��Cookie���������֤�����ͳ�Ϊ���������֤��ѡһ�', 'windows', 'passport', 'forms', 'none', 1369, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���й���WebService����������ȷ���ǣ�ѡһ�', 'XML��Web Service��ʾ���ݵĻ�����ʽ��', 'XSDΪWeb Service����������ϵͳ', 'SOAP�淶������Web Service��Ϣ���ݵĻ���', 'Web Service����IDL����������Web Service�����ṩ�Ľӿ�', 1370, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���й���WSDL������������ǣ�ѡһ�', 'WSDL��Web������������', 'WSDL��һ����������Web�����������˵�Ļ���XML������', 'WSDL��΢������Web�����������ԣ���ֻ֧��Windowsƽ̨', '��Visual Studio.NET���������У����Զ�����WSDL�ļ��������ֹ�����', 1371, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���й���ģ��(HttpModule)�ʹ������(HttpHandler)��˵����,��ȷ���ǣ�ѡһ�', 'HTTP����Ĵ�������У�ֻ�ܵ���һ��HttpHandler��һ��HttpModule', 'ģ�鲻ִ���κβ���,�������������յ�ִ��', '��������ģ��һһ��Ӧ,ÿ������ֻ��һ����������ģ�����ղ��봦��', '���󵽴ﴦ��֮ǰ,���ܻᱻĳģ������', 1372, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������Щ����WebPart����֧�ֵ�ģʽ��ѡһ�', '�༭ģʽ', 'ͨѶģʽ', '���ģʽ', 'Ŀ¼ģʽ', 1373, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������Щ�������û�����ؼ���ѡһ�', 'LoginOut', 'LoginName', 'LoginStatus', 'LoginView', 1374, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������һ�����ö�������ʵ��Ӧ�ó������ݻ��棨ѡһ�', 'Session', 'Application', 'Page', 'Cache', 1375, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����Ϊ����WebService�Ĳ��ִ��룬�Ķ�������룺' || chr(10) || 'public class SvrAdd : System.Web.Services.WebService  ' || chr(10) || '{    ' || chr(10) || '    public SvrAdd ()    ' || chr(10) || '    {     InitializeComponent();     }    ' || chr(10) || '    public int Add(int x,int y)    ' || chr(10) || '    {     return (x+y);     } ' || chr(10) || '}�������������˵����ȷ���ǣ�ѡһ�', '�����ж����Web Service�ṩ��һ��"Add" Web���񣬸÷������ڶ����������', '��Ϊ��Web ����SvrAdd�ṩ�������ʼ���Ĺ��ܣ���˱����ڷ������������֮ǰ���е���', '������������public������ķ�������Web Service�ṩ������Web����', '������û���ṩWeb ����', 1376, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���²�����Ӧ�ó��򻺴��гɹ���ӻ�������ǣ�ѡһ�', 'Cache["cache1"]="Hello SVSE"', 'Cache.Insert("cache1", "SVSE")', 'Cache.Insert("cache1", "SVSE", null)', 'Cache.Add("cache1", "SVSE")', 1377, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���¹���[WebMethod]������������ǣ�ѡһ�', '����һ������', '����ʾ������ķ�����Web���񷽷�', '������ķ�����������ͷ���ֵ���Ͷ��ǹ̶���', 'һ��Web Service�ļ������ж��[WebMethod]', 1378, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���¹���Substitution�ؼ�����������ȷ���ǣ�ѡһ�', '����������ҳ������Ҫ����Ĳ��֡�', '�������滻ҳ���в���Ҫ����Ĳ��֡�', '�ÿؼ�MethodName���Ե��õķ������η��ͷ��������ǹ̶��ġ�', '�ÿؼ�MethodName���Ե��õķ������������ǹ̶��ġ�', 1379, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���¹���WebService������������ǣ�ѡһ�', 'ʹ��Web Service�� ���д�Խ����ǽ��ͨ��', 'Web Service��������WSDL��XML��ʽ���ļ�', '���ǲ���Web Service�ķ��ؽ��ΪXML��ʽ�ļ�', '���ǲ����ܵ���������վ�����������Ϸ�����Web Service', 1380, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���¹��ڵ���WebService������������ǣ�ѡһ�', '��Ҫ���Web����', '��Ҫʵ����Web Service��', '����ʵ�ֿ���Ŀ���ã����ǲ���ʵ����ص���', 'Ϊ������س���������ǵ�Web Service������ȥ', 1381, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���¹�����ҳ�����@OutputCacheָ��������������ǣ�ѡһ�', '<%@ OutputCache VarybyParam="id;name" VaryByControl="None"%>', '<%@ OutputCache Duration="5" VaryByParam="id;name" %>', '<%@ OutputCache Duration="5" VaryByControl="None" %>', '<%@ OutputCache Duration="5" VaryByParam="id;name" VaryByControl="None"%>', 1382, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��������ҳ�沿�ֻ�����ǣ�ѡһ�', '��ҳ����', '������滻', 'Ӧ�ó������ݻ���', 'ʹ��Substitution�ؼ�', 1383, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET�У�ʹ��ҳ�滺�棬������ߣ�ѡһ�', 'ҳ����ʾ��ͼ��Ч��', 'ҳ����ص��ٶ�', 'Ӧ�ó���İ�ȫ��', '��Լ����ϵͳ���ڴ���Դ', 1384, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET�й���ע���û������ǣ�ѡһ�', 'MemberShip', 'MembershipUser', 'Roles', 'Member', 1385, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ʵ��Web�����.asmx�ļ��н�������¶�������������ǣ�ѡһ�', 'WebMethod', 'Function', 'Method', 'Main', 1386, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�� ���ؼ������û�ֱ�ӵ��ҳ���еĵ绰��������Զ�����', 'PhoneCall', 'DeviceSpecific', 'Link', 'AdRotator', 1387, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('undefined', '.NET Compact Framework ������2������� ��', '�����������п� CLR', '.NET Compact Framework ��� FCL', 'IrDA', 'JIT', 1388, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Notification �����ܹ���ʾ���ı�֮�⣬����������Ϣ�����д�����   �� ���ݵ��û�֪ͨ��', 'XML', '�ı�', 'HTML', 'C#', 1389, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���Ͽؼ��̳е��������ĸ���(  )', 'UserControl', '�Ѿ����ڵĿؼ�����', 'Control', 'Page', 1390, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����RDA ���û��ķ��ʣ�����˵����ȷ���ǣ� ��', 'RDA �����������û���ǰһ���û�Push ֮ǰ��Pull ͬһ����', 'SQL Server Mobile ���ڸ���һ���Ѿ��������û�ɾ���ļ�¼����ʱ��RDA ���Զ����µ�������ӵ�SQL Server ���ݿ��������', 'ִ��Push ����ʱ����SQL Server Mobile ���ݿ��в���ļ�¼������SQL Server ���ݱ����Ѿ����ڣ�RDA ����ִ���', '����˵��������', 1391, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����Replication �� RDA ���ص㣬����˵��������ǣ� ��', '�����RDA ������Replication �ṩ�˸������Ƶ�����ͬ������', 'Replication ��RDA ���ʺ϶���û������ͬ�����ݵ�Ӧ�ó���', 'ͬ���ڼ䣬Replication �ڴ�ʹ������RDA ҪС', 'Replication ��RDA �и������Ƶĳ�ͻ�������', 1392, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ʹ��RDA �����ݿ���в���������˵����ȷ���ǣ� ��', '���ƶ��豸�϶����ݽ����޸ģ���ֱ���޸ĵ�SQL Server ���ݿ�������ϵ�����', '���ƶ��豸�϶����ݽ����޸ģ����޸ĵ�SQL Server Mobile ���������е��ǻ��ߣ���û��ֱ���޸����ݿ�������ϵ�����', 'ʹ��RDA �����ݿ���в��������ܽ��޸ĺ�����ݷ��ظ����ݿ������', 'ʹ��RDA �����ݿ���в���������ͬʱ�Զ������в���', 1393, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���в���.NET Compact Framework ��֧�ֵĿؼ��ǣ� ��', 'StatusBar', 'TabControl', 'TreeView', 'ReportViewer', 1394, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ѡ���У�������ActiveSync �������ǣ� ��', '���豸/ģ�����и����ļ���', '���豸/ģ������ɾ���ļ���', '���豸/ģ����ͬ�����ݡ�', '��������', 1395, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Ҫʵ���Ի�ؼ���������д��   ��������ʵ�֡�', 'OnDraw', 'OnPaint', 'Paint', 'Draw', 1396, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ҳ�����ʱ��ʹ�����ӿؼ����ӵ����Form �е�һ��ʱ�������ӵ�ַǰ����һ���� ������', '*', '��', '#', '~', 1397, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ƶ��豸�İ�װ�����ļ�����չ���ǣ� ��', 'exe', 'xml', 'cab', 'bat', 1398, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����˵����ȷ���ǣ� ��', 'ʹ��RDA �����ݿ���в�ѯʱ������ʹ�� * �ţ���ʾ�����ֶ�', 'SQL Server Mobile ����ʹ�ô�������', '���û��Դ����ݿ�Pull �����صı�������һ���ֶΣ��ڵ���Push ����ʱ����������ִ��', '���û��Դ����ݿ�Pull �����صı�������һ���������ڵ���Push ����ʱ����������ִ��', 1399, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������һ�ֲ�����Jquery��ѡ������(ѡ��һ�', '����ѡ����', '���ѡ����', '��ѡ����', '�ڵ�ѡ����', 1400, 326);
commit;
prompt 1400 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET�У����й���Session�����˵����ȷ���ǣ�ѡһ�', '�û�ÿ�δ�һ��Webҳ�棬���ᴴ��һ��Session����', '�û��رտͻ���Webҳ���Session����������ʧ', 'Ӧ�ó����˳���Session�����ֵ������ʧ', 'ÿ���û���Session�����ܱ������û�����', 1401, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�У����й���Session������Application����ıȽϣ�˵����ȷ���ǣ�ѡһ�', '��һ��ҳ���ж����Session��������������ҳ����ʣ���һ��ҳ���ж���Application������������ҳ�����', '��һ��ҳ���ж����Application��������������ҳ����ʣ���һ��ҳ���ж���Session������������ҳ�����', '��Ӧ��ÿ���û��ֱ𴴽�һ��Session���󣬶�Ӧ��ÿ��Ӧ�ó��򴴽�һ��Application����', '��Ӧ��ÿ���û��ֱ𴴽�һ��Application���󣬶�Ӧ��ÿ��Ӧ�ó��򴴽�һ��Session����', 1402, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET�У����й����б�ؼ���DataSource���Ե�����������ǣ�ѡһ�', 'DataSource���������ݰ����', '�б�ؼ�������Դ���Ϳ����������б�', '�б�ؼ�������Դ���Ϳ�����������ͼҲ�����ǹ�ϣ��', 'DataSource�������ݰ�ʱ�������н���ɸѡ', 1403, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET�У����й����û��ؼ���������ȷ���ǣ�ѡһ�', '��չ��Ϊ.ascx����.ocx', '�û��ؼ����԰���<HTML>Ԫ�ػ���<BODY>Ԫ��', '�û��ؼ���Htmlҳ��û�в������HTMLԪ�غʹ�����ɵ�', '�û��ؼ������԰���<FORM>Ԫ��', 1404, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET�У������ܹ���ȷ����һ��Button   Web�������ؼ����ǣ�ѡһ�', '<asp:Button id=Button1 runat="server" Text="Button"></asp:Button>', '<asp:Button id=Button1 runat="c#" Text="Button"></asp:Button>', '<asp:Button id=Buttonl Text="Button"></asp:Button>', '<INPUT type=button value=Button>', 1405, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '��ASP.NET�У�����Ϊ����XML�ĵ��Ĵ��룬��ȷ���ǣ�ѡ���', 'XmlDocument MyXml = new XmlDocument();MyXml.Load (Server.MapPath ("Test.xml") );lblXmlData.Text = MyXml.InnerXml.ToString();', 'XmlDocument MyXml = new XmlDocument();MyXml.LoadXml (Server.Path ("Test.xml") );lblXmlData.Text = MyXml.InnerXml.ToString();', 'XmlDocument MyXml = new XmlDocument();string xmlStr =  "<PhoneBook>"+ "<Name>SVSE</Name>"+ "<Number>5555555</Number>"+ "</PhoneBook>";MyPhone.LoadXml( xmlString );lblXmlData.Text = MyXml.InnerXml.ToString();', 'XmlDocument MyXml = new XmlDocument();XmlTextReader reader = new XmlTextReader("Test.xml");reader.Read();MyXml.Load(reader);lblXmlData.Text = MyXml.InnerXml.ToString();', 1406, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�У�������ASPXҳ����ʹ�ô����ָ���ǣ�ѡһ�', '<%@Assembly Name = "System"%>', '<%@Assembly Src="C:\WINDOWS\Microsoft.NET\Framework\v1.1.4322\System.dll"%>', '<%@Implements Name = "System" %>', '<%@Implements interface = "System"%>', 1407, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�У����棨����ʽ���Զ�ȡһ��XML �ļ����ڴ��С���ѡһ�', 'XmlTextReader xmlTextReader = new XmlTextReader();    xmlTextReader.Read("c:\\test.xml");', 'XmlTextReader xmlTextReader = new XmlTextReader("c:\\test.xml");    xmlTextReader.Read();', 'XmlDocument xmlDocument = new XmlDocument();    xmlDocument.Load("c:\\test.xml")', 'XmlDocument xmlDocument = new XmlDocument("c:\\test.xml");', 1408, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET�У�����˵����ȷ���ǣ�ѡһ�', 'Machine.cofing��������ASP.NET������վ�������������Ϣ', 'Web.Config��������һ��վ����Ϣ��������Ϣ', '����Web.Config��ASP.NETӦ�ó����Session����ȫʧЧ', '����˵������ȷ', 1409, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET�У�����һ����dt1����ֻ��һ���ֶ�name������DataList�������ݰ󶨣�����html��ͼ��Ӧ���õİ󶨽ű�Ϊ��ѡһ�', '<%@ Eval("dt1")%>', '<%# Eval("dt1")%>', '<%= Eval("name")%>', '<%# Eval("name")%>', 1410, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET�У�Ҫ��ȡ�����ߵ�IP��ַ��ѡһ�', '��ҪResponse����', '��ҪRequest����', 'ʹ��Request�����Response���󶼿���', 'Request�����Response���󶼲�����', 1411, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET�У���֪sqlCon��һ��SqlConnection����sqlCom��һ��SqlCommand�������д����ܹ���ȷ����һ��SqlTransaction������ǣ�ѡһ�', 'SqlTransaction tran = new SqlTransaction();', 'SqlTransaction tran = sqlCon.BeginTransaction();', 'SqlTransaction tran = sqlcom.BeginTransaction();', 'SqlTransaction tran = sqlCon.CreateTransaction();', 1412, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET�У���֪xtw��һ���Ѵ����õ�XmlTextWriter���������д������ļ��д����Ľڵ��ǣ�ѡһ�' || chr(10) || 'xtw.WriteStartElement("Person");' || chr(10) || 'xtw.WriteStartElement("Coutry");' || chr(10) || 'xtw.WriteString("�й�");' || chr(10) || 'xtw.WriteEndElement();', '<Person><Coutry></Coutry>�й�</Person>', '<Person><Coutry>�й�</Coutry></Person>', '<Person></Person><Coutry>�й�</Coutry>', '<Person>�й�</Person><Coutry></Coutry>', 1413, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '��ASP.NET�У���֪һ��RegularExpressionValidator�ؼ���ValidationExpress����Ϊ"^[a-z0-9]{3,5}$"������RegularExpressionValidator�ؼ�����֤��TextBox�ؼ������벻�Ϸ����ǣ�ѡ���', '12345', 'abcde', 'abc123', '123abc', 1414, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�У��ڼ���ҳ��ʱ��ʹ�ã� �����Լ���Ƿ�Ϊ�״δ����ҳ�档��ѡһ�', 'Page.Control', 'Page.IsValid', 'Page.IsPostBack', 'Page.Cache', 1415, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '��ASP.NET�У���һע��ҳ��Ϊ����֤�û�������û�������������Ӣ����ĸ������Ϊ�������Ҫʹ�����У�����֤�ؼ����������֤����ѡ���', 'RequiredFieldValidator', 'CompareValidator', 'RangeValidator', 'RegularExpressionValidator', 1416, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET�У�ִ�����´���ʱ������ҳ����ʾ��������ѡһ�           Response.Write(Server.HtmlEnCode("<H>SVSE</H>"));', 'SVSE', '<H>SVSE</H>', '<H></H>', '����ʾ�κ���Ϣ', 1417, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���еĲ�ѯ�����һ���Ǵ���ģ�ѡһ�', 'Select  *  from  stumarks where score>=60', 'Select * from (select * from stumarks where score>=60)', 'Select * from (select * from stumarks where score>=60) as temp', 'Select * from (select * from stumarks ) as temp where score>=60', 1418, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ڹ���DataSet��DataTable�����������У�ѡ����ȷ�Ĵ𰸣�ѡһ�', 'ͬһ��DataTable�������ڶ��DataSet', '���ݼ��е����ݱ����������ִ�Сд�ģ�ds.Tables("Employees")��ds.Tables("employees")����ͬһ����', '������ݼ���ֻ��һ�����ݱ���ñ�������Ǵ�Сд�޹ص�', '��ʹ���ݼ���ֻ��һ�����ݱ��ñ������ҲҪ���ִ�Сд', 1419, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����authors���е����е绰�������λΪ4���ڶ�λΪ0��1�ĵ绰���루ѡһ�', 'SELECT phone FROM authors WHERE phone LIKE ''4[1,0]%''', 'SELECT phone FROM authors WHERE phone in ''4[^10]%''', 'SELECT phone FROM authors WHERE phone LIKE ''4_[1,0]%''', 'SELECT phone FROM authors WHERE phone between ''41%'' and ''40%''', 1420, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ӻ��ﶩ�����ݱ�order���в�ѯ�����ж�����order_price����1000��5000֮��Ķ�������ϸ��Ϣ�������ն�����order_price���������С���ȷ������ǣ�ѡһ�', 'select * from order where order_price between 1000 and 5000 order by order_price ASC', 'select * from order where order_price between 1000 and 5000 order by order_price DESC', 'select * from order where 1000<order_price<5000 order by order_price ASC', 'select * from order where 1000<order_price<5000 order by order_price DESC', 1421, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ͥסַ��ò��ã����������ͽ��д洢����ѡһ�', 'Char/Nchar', 'text/Ntext', 'Varchar/Nvarchar', 'Char2/Nchar2', 1422, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���б�user���ֶΣ�userid��username, salary, deptid��email; ��department���ֶΣ�deptid, deptname;����(  )Ӧ���ü��Լ����ʵ�֡���ѡһ�', '��department�в�����deptidΪ2�ļ�¼����������user���в���deptidΪ2�������С�', '��user�����Ѿ�����useridΪ10�ļ�¼����������user�����ٴβ���useridΪ10�������С�', 'User���е�salary(нˮ)ֵ������1000Ԫ���ϡ�', '��User���email������Ϊ�գ�����user���в�������ʱ�� ���Բ�����emailֵ��', 1423, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '��SQL Server 2005��,���� student �����������֤����CardNo ��ǰ��λΪ010��020�ļ�¼,���������ȷ���ǣ�ѡ���', 'select * from student where cardno like ''010%'' or cardno like ''020%''', 'select * from student where cardno like ''010%'' or ''020%''', 'select * from student where cardno like ''0[1,2]0%''', 'select * from student where cardno like ''0(1,2)0%''', 1424, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ѧ���ɼ���grade�����ֶ�score(float),����Ҫ��������55����60(���������߽�ֵ)֮��ķ������5�֣�����SQL�����ȷ���ǣ�ѡһ�', 'Update grade set score=score+5', 'Update grade set score=score+5 where score>=55 or score <=60', 'Update grade set score=score+5 where score between 55 and 60', 'Update grade set score=score+5 where score <=55 and score >=60', 1425, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Pub���ݿ��У�����type������titles���е��У�����������������ĸP��ͷ����Щ��type��,������ȷ��SQL����ǣ�ѡһ�', 'Select type from titles where type like ''%p'' group by type', 'Select type from titles group by type having type not like ''P%''', 'Select type from titles group by type having type like ��p%��', 'Select type from titles where type like ��p%�� group by type', 1426, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��SQL Server 2005�У��ٶ�grade(�ɼ�)���а����ֶΣ�eID(�༶���)��lang(���Ŀγɼ�)��math(��ѧ�γɼ�)��eng(Ӣ��γɼ�)����ô���㲻ͬ�༶���ſγ̵�ƽ���ɼ���SQL����ǣ�ѡһ�', 'SELECT eID, AVG(lang,math,eng) FROM grade GROUP BY lang,math,eng', 'SELECT Eid, AVG(lang),AVG(math),AVG(eng) FROM grade GROUP BY lang,math,eng', 'SELECT eID, AVG(lang,math,eng) FROM grade GROUP BY eID', 'SELECT eID,AVG(lang),AVG(math),AVG(eng) FROM grade GROUP BY eID', 1427, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���¹����������Ӧ������֮��Ĺ�ϵ����ȷ���ǣ�ѡһ�', '�������һ��Ҫ����Ӧ������ͬ��', '���һ��Ҫ����Ӧ������ͬ��', '���һ��Ҫ����Ӧ������ͬ������Ψһ', '���һ��Ҫ����Ӧ������ͬ����������һ��Ψһ', 1428, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�Ķ�����T-SQL���룺' || chr(10) || 'USE master' || chr(10) || 'GO' || chr(10) || 'CREATE DATEBASE MyDB2' || chr(10) || 'ON' || chr(10) || '(' || chr(10) || '����;' || chr(10) || 'SIZE=2.' || chr(10) || 'MAXSIZE=5.' || chr(10) || 'FILEGROWTH=1' || chr(10) || ')' || chr(10) || 'GO' || chr(10) || '����˵����ȷ���ǣ�ѡһ�', '�����ɹ��������ļ��ĳ�ʼ��СΪ50KB������������ӵ�1000KB', '�����ɹ��������ļ�ÿ��������1M��Ϊ��λ', '����ʧ�ܣ���Ϊ��������Ҫָ�������ļ����ڵ������ļ���λ��', '����ʧ�ܣ���Ϊ����Ҫָ�����ݿ����־�ļ�����', 1429, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ڴ�������Լ��������˵��������ǣ�ѡһ�', '����������֧��Լ�������й��ܡ�', 'CheckԼ�����ܸ�����һ�����е�����֤��ֵ��', '�����Լ����֧�ֵĹ����޷�����Ӧ�ó��������ʱ����ʹ�ô�������', '��ά������������ʱ��Ҫʹ�ñ�׼��ϵͳ������Ϣ������ʹ�ô�������', 1430, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQL Server 2005�У���һ��product(��Ʒ)�������ֶΣ�pname(��Ʒ����)��Ҫ�Ӵ˱���ɸѡ����Ʒ����Ϊ��ƻ�������ߡ��㽶���ļ�¼�����������ȷ���ǣ�ѡһ�', 'SELECT * FROM product ON pname= ''ƻ��'' OR pname=''�㽶''', 'SELECT * FROM product ON pname=  ''ƻ��'' AND pname=''�㽶''', 'SELECT * FROM product WHERE pname=  ''ƻ��'' OR pname=''�㽶''', 'SELECT * FROM product WHERE pname=  ''ƻ��'' AND pname=''�㽶''', 1431, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SQL Serverϵͳ�е����з�������ϵͳ��Ϣ�洢���ĸ����ݿ⣨ѡһ�', 'master' || chr(13) || '', 'model' || chr(13) || '', 'tempdb' || chr(13) || '', 'msdb' || chr(13) || '', 1432, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����SELECT ѧ�ţ�AVG(�ɼ�) AS ''ƽ���ɼ�'' FROM XS_KC GROUP BY ѧ�� HAVING AVG(�ɼ�)>=85����ʾ��ѡһ�', '����XS_KC����ƽ���ɼ���85�����ϵ�ѧ����ѧ�ź�ƽ���ɼ�', '����ƽ���ɼ���85�����ϵ�ѧ��', '����XS_KC���и��Ƴɼ���85�����ϵ�ѧ��', '����XS_KC���и��Ƴɼ���85�����ϵ�ѧ����ѧ�ź�ƽ���ɼ�', 1433, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��SQL SERVER�������ϣ��洢������һ��Ԥ�ȶ��岢(  )��Transact-SQL��䡣��ѡһ�', '����', '����', '����', '��д', 1434, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���ж�����orders, �����������±�����ѯ�ȶ����˲�ƷP01���ֶ����˲�ƷP02�Ĺ˿ͱ�ţ�����ִ������(  )sql��䣨ѡһ�' || chr(10) || 'cid (�˿ͱ��)    Pid (��Ʒ���)' || chr(10) || 'C01               P01' || chr(10) || 'C01               P02' || chr(10) || 'C02               P01' || chr(10) || 'C03               P02', 'select distinct(cid) from orders o1 where o1.pid in (''p01'',''p02'')', 'select distinct(cid) from orders o1 where o1.pid=''p01'' and o1.pid=''p02''', 'select distinct(cid) from orders o1 where pid=''p01'' and exists (select * from orders where pid =''p02'' and cid=o1.cid)', 'select distinct(cid) from orders o1,orders o2 where o1.pid=''p01'' and o2.pid=''p02''', 1435, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQL Server2005�У�������T �C SQL����Ч�����Ϊ��ѡһ�' || chr(10) || 'UPDATE A SET A1 = A1 * 2 WHERE A2 IN ��SELECT A2 FROM B WHERE B1 = 2��', 'UPDATE A SET A1 = A1 * 2 INNER JOIN B' || chr(10) || ' ON B . B1 = 2', 'UPDATE A SET A1 = A1 * 2 FROM A INNER JOIN B' || chr(10) || ' ON B . B1 = 2', 'UPDATE A SET A1 = A1 * 2 WHERE A INNER JOIN B' || chr(10) || ' ON A . A2 = B . A2 AND B . B1 = 2', 'UPDATE A SET A1 = A1 * 2 FROM A INNER JOIN B' || chr(10) || '  ON A . A2 = B . A2 AND B . B1 = 2', 1436, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '����3��ʽ����������˵��������ǣ�ѡ���', '1NF��Ҫ���ǣ���ϵ�е�ÿ�����Ա����ǲ����ٷֵļ���', '�κα�����1NF', '2NF��Ҫ���ǣ�������1NF�Ļ����ϣ���������������ж�����������', '3NF��Ҫ���ǣ�������2NF�Ļ����ϣ���������������ж�ֱ������������', 1437, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����α꣬����˵����ȷ���ǣ�ѡһ�', '����ֻ���α�Ĺؼ�����forward_only����ֻ����ǰ����¼��������û���ˣ���Ϊ�����ܻ�ȥ��Ҫ���ٴα���ֻ�����¶���һ���µ�', '�α�Ķ������������ĳ����ѯ������ò�ѯ�Ľ��Ϊ0�����α��޷�����', 'fetch next������ȡ��һ�У��ҳ���ĩ�к���Զ�ת����һ��', '���α�δ����ĩ��ǰ��fetch relative 1��fetch next��Ч����ȫһ��', 1438, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����б�scores��������£�ID(��ţ�����),StudentID(ѧ�����),CourseID(�γ̱��),Score(����).����Ҫ��ѯ�μӹ��������ſγ̿��Ե�ѧ���ĸ��ſγ̵�ƽ���ɼ�������sql�����ȷ���ǣ�ѡһ�', 'Select studentID, avg(score) from scores group by studentID having count(studentID)>1', 'Select studentID, avg(score) from scores group by studentID where count(studentID)>1', 'Select studentID, avg(score) from scores where count(studentID)>1 group by studentID', 'Select studentID, avg(score) from scores having count(studentID)>1', 1439, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'public class MyClass1{' || chr(10) || '' || chr(9) || 'public static void main (String argv[]){}' || chr(10) || '' || chr(9) || '_____ class MyInner {}' || chr(10) || '}' || chr(10) || '������java�����еĺ����ϣ����ɷ��ã������η�����ѡһ�', 'public', 'private', 'static', 'friend', 1440, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ӿڵĶ������£�' || chr(10) || 'interface A {' || chr(10) || '    int method1(int i);' || chr(10) || '    int method2(int j);' || chr(10) || '}' || chr(10) || '��Bʵ���˽ӿ�A������(  )����ȷ�ġ���ѡһ�', 'class B implements A {' || chr(13) || 'int method1() { }' || chr(13) || 'int method2() { }' || chr(13) || '}', 'class B {' || chr(13) || 'int method1(int i) { }' || chr(13) || 'int method2(int j) { }' || chr(13) || '}', 'class B implements A {' || chr(13) || 'int method1(int i) { }' || chr(13) || 'int method2(int j) { }' || chr(13) || '}', 'class B extends A {' || chr(13) || 'int method1(int i) { }' || chr(13) || 'int method2(int j) { }' || chr(13) || '}', 1441, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Java�У����������⣬���з���(  )����������Orange�Ĺ��췽������ѡһ�', 'Orange(){��}', 'Orange(��)������', 'public void Orange(){��}', 'public Orange(){��}', 1442, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Java�У��Ѷ��������ӿ�B��C��Ҫ����һ��ʵ���������ӿڵ��࣬���������ȷ���ǣ�ѡһ�', 'interface A extends B,C', 'interface A implements B,C', 'class A implements B,C', 'class A implements B, implements C', 1443, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C#�У�����Array��ArrayList��ά��������˵����ȷ���ǣ�ѡһ�', 'Array�����ж�ά����ArrayListֻ����һά', 'Arrayֻ����һά���� ArrayList�����ж�ά', 'Array�� ArrayList ��ֻ����һά', 'Array��ArrayList�������Ƕ�ά', 1444, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'JSP EL ���ʽ��${user.loginName}ִ��Ч����ͬ�ڣ�ѡһ�', '<%=user.getLoginName()%>', '<%user.getLoginName();%>', '<%=user.loginName%>', '<% user.loginName;%>', 1445, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����WebӦ�ó�����Web�������еĲ�����ȷ��˵���ǣ�ѡһ�', 'ÿ������Tomcat��������Web Ӧ�ã����Զ��ᱻ������ѹ����WAR��ʽ��', 'ÿ������Tomcat��������Web Ӧ�ã����Զ��ᱻ�����������һ��class�ļ���', 'Tomcat ������WebӦ�ö����벿����<Tomcat��װĿ¼>\ServerĿ¼��', '����web��������WebӦ�ó���Ŀ¼�ṹ�����Ƶġ�', 1446, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'JSP�е�(  )��ʽ�����ʾServlet���ʵ������ѡһ�', 'request', 'reponse', 'page', 'session', 1447, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����J2SE�淶����WebӦ�õ��ڲ�Ŀ¼�ṹ�У�λ��(  )���ļ��ǶԿͻ��ɼ�����Դ��ѡһ�', 'WebӦ�ø�Ŀ¼', 'WebӦ��WEB-INF��Ŀ¼��', 'WebӦ��WEB-CONFIG��Ŀ¼', 'WebӦ��META-INF��Ŀ¼', 1448, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������Լ����У�SQAָ��ѡһ�', '�������', '���������֤', '���ݿ�', '��׼��ѯ����', 1449, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '������WebӦ������һ��Servlet �����Ĺ���������������ȷ��˵���ǣ�ѡ���', '����Ϊһ��Servlet ��������������', '����Ϊ���Servlet����ͬһ����������', 'ÿ��Servlet����������һ����������', 'ÿ������������벿������һ��Servlet', 1450, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������Ǵ��������Bean����ֵ�ķ�����ѡһ�', '<jsp:setProperty name="beanInstanceName" property= "*" />', '<jsp:setProperty name="beanInstanceName" property="propertyName"/>', '<jsp:setProperty name="beanInstanceName" property="propertyName" param="parameterName" />', '<jsp:setProperty name="beanInstanceName" property="*" value="{string | <%= expression %>}"/>', 1451, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��JSP�У��ԣ�jsp:setProperty�����������ȷ���ǣ�ѡһ�', '<jsp:setProperty>��<jsp:getProPerty>������һ��JSP�ļ��д������', '����ͬsession.setAttribute()һ�������������/ֵ��', '��<jsp:useBean>����һ��ʹ�ã�������bean������ֵ', '����ͬrequest.setAttribute()һ�������������ԣ�ֵ��', 1452, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�Զ����ǩ�У����Ҫ������ǩ����Ϊ����ģ�����Ҫ�����������ã�ѡһ�', '<required>true</required>', '<rtexprvalue>true</rtexprvalue>', '<required>false</required>', '<rtexprvalue>false</rtexprvalue>', 1453, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������µ�XML�ĵ�ʵ����' || chr(10) || '<!xml version="1.0" encoding="GB2312"?>' || chr(10) || '<ѧ������>' || chr(10) || ' <ѧ�� ѧ��="1">' || chr(10) || '  <����>����</����>' || chr(10) || '  <�Ա�>��</�Ա�>' || chr(10) || '</ѧ��>' || chr(10) || '<ѧ�� ѧ��="2">' || chr(10) || '  <����>����</����>' || chr(10) || '  <�Ա�>Ů</�Ա�>' || chr(10) || '</ѧ��>' || chr(10) || '</ѧ������>' || chr(10) || '�����DTD�ĵ��У��ܹ���ǡ���Ķ����XML�ĵ��ǣ�ѡһ�', '<!ELEMENT ѧ������ ��ѧ������>' || chr(13) || '' || chr(10) || '<!ELEMENT ѧ�����������Ա�>' || chr(13) || '' || chr(10) || '<!ELEMENT ���� ��#PCDATA��>' || chr(13) || '' || chr(10) || '<!ELEMENT �Ա� ��#PCDATA��>' || chr(13) || '' || chr(10) || '<!ATTLIST  ѧ�� ѧ��  (1|2|3)  #REQUIRED>', '<!ELEMENT ѧ������ ��ѧ�� ��>' || chr(13) || '' || chr(10) || '<!ELEMENT ѧ�����������Ա�>' || chr(13) || '' || chr(10) || '<!ELEMENT ���� ��#PCDATA��>' || chr(13) || '' || chr(10) || '<!ELEMENT �Ա� ��#PCDATA��>' || chr(13) || '' || chr(10) || '<!ATTLIST  ѧ�� ѧ�� CDATA #REQUIRED>', '<!ELEMENT ѧ������ ��ѧ�� ��>' || chr(13) || '' || chr(10) || '<!ELEMENT ѧ�����������Ա�>' || chr(13) || '' || chr(10) || '<!ELEMENT ���� ��#PCDATA��>' || chr(13) || '' || chr(10) || '<!ELEMENT �Ա� ��#PCDATA��>' || chr(13) || '' || chr(10) || '<!ATTLIST  ѧ�� ѧ�� ID #REQUIRED>', '<!ELEMENT ѧ������ ��ѧ������>' || chr(13) || '' || chr(10) || '<!ELEMENT ѧ�����������Ա�>' || chr(13) || '' || chr(10) || '<!ELEMENT ���� ��#PCDATA��>' || chr(13) || '' || chr(10) || '<!ELEMENT �Ա� ��#PCDATA��>' || chr(13) || '' || chr(10) || '<!ATTLIST  ѧ�� ѧ��CDATA  #REQUIRED>', 1454, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Eclipse����������,��ҳ�ļ����������ĸ�Ŀ¼�У�ѡһ�', '������', 'WEB-INF', 'WebRoot', 'classes', 1455, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ϵͳ���ԣ�����˵��������ǣ�ѡһ�', '��Ҫ����ϵͳ�Ƿ���ϡ�������˵���顱', 'һ���ɶ�������С����úںз�ʽ������', '���ղ�����ϵͳ���Ժ����ƣ���Ҫ�����ǲ�����Ա��ͬ�����ղ������û�ִ��', '�ڹ淶�����ݿ��У�����ά������������', 1456, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��JavaScript����ҳ�汳��ɫΪ��ɫ����ȷ�Ĵ����ǣ�ѡһ�', 'document.bgcolor=blue;', 'document.BgColor="blue";', 'document.bgColor="blue";', 'document.bgColor=blue;', 1457, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ĳһҳ������ʱ��Ҫ�Զ���ʾ����һҳ�棬��ͨ����<body>��ʹ���±ߵ���һ�¼�����ɣ�ѡһ�', 'onload', 'onunload', 'onclick', 'onchange', 1458, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���µ�xml�ĵ�Ƭ���У����Է���XML�﷨������ǣ�ѡһ�', '<car name="zhang��s car">', '<car name=''zhang��s car''>', '<car name=''jieda car ">', '<car name=jieda >', 1459, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����йغ������ص�˵��������ǣ�ѡһ�', '�������붨�巵������', '�������������Ϳ�����OUT', '�ں������ڿ��Զ��ʹ��RETURN���', '�����ĵ���Ӧʹ��EXECUTE����', 1460, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�й�ORACLE����˵��������ǣ�ѡһ�', '�����п��ԶԱ���д���', '��������Ҫ�����ǽ���ҵ����', '������Ҫ�ǶԴ���Ĳ����������ݴ���', '�������Եݹ����', 1461, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У�����(  )������UMLͼ��' || chr(13) || '', '����ͼ' || chr(13) || '', '��ͼ' || chr(13) || '', 'ʱ��ͼ' || chr(13) || '', '�ͼ' || chr(13) || '', 1462, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У����й�����֮��ķ�����ϵ��˵����ȷ����(  )��' || chr(13) || '', '��������֮���һ�����ӣ���������˫���' || chr(13) || '', '��������еļ̳й�ϵ��UML�г�Ϊ����' || chr(13) || '', '������ָ�ӳ�����õ�����' || chr(13) || '', '�����������Ϊ���࣬�õ������Ϊ����' || chr(13) || '', 1463, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������JavaScript���룺<SCRIPT LANGUAGE="JavaScript">confirm("Զ��ɽ' || chr(10) || '��ɫ������ˮ����");</SCRIPT>������Ϊ��ѡһ�', '����ҳ����ʾ������Ϣ��Զ��ɽ��ɫ������ˮ����', '����һ��ȷ�϶Ի��򣨺��С�ȷ�����͡�ȡ������ť������ʾ��Ϣ��Զ��ɽ��ɫ������ˮ����', '����һ����������ڣ���ʾ������Ϣ��Զ��ɽ��ɫ������ˮ����', '����һ���Ի���ֻ���С�ȷ������ť������ʾ��Ϣ��Զ��ɽ��ɫ������ˮ����', 1464, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Oracle�У�����Ҫ�����������нˮ�������ܣ������Ҫ��Ա��нˮ���12���ٷֵ����з������������ĸ�create index�����ܽ�������⣨ѡһ�', 'CREATE INDEX my_idx_1 ON employee(salary*1.12);', 'CREATE UNIQUE INDEX my_idx_1 ON employee(salary)', 'CREATE BITMAP INDEX my_idx_1 ON employee(salary);', 'CREATE INDEX my_idx_1 ON employee(salary) REVERSE;', 1465, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���У����־��SELECT�������ڱ��һ�л���з�����������ѡһ�', 'FOR INSERT', 'FOR UPDATE', 'FOR DELETE', 'FOR REFRESH', 1466, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�й�ORACLE����˵����ȷ���ǣ�ѡһ�', '���������Ͱ����еĺ��������ڲ��������ϲ�һ��', '���в��ܶ������', '���ж����ȫ�ֱ������е��ӹ��̶�����ʹ��', '���еĴ洢���̲������أ���������������', 1467, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ͼ��ʾ��һ��UMLͼ�����ʸ�ͼ���ڣ�����', '����ͼ', '��ͼ', 'ʱ��ͼ', 'Э��ͼ', 1468, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ActionForward�ģ� ������ָ��ActionForward��URI��ѡһ�', 'path', 'name', 'redirect', 'classname', 1469, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Oracle�У�����venseqʹ���������䴴����' || chr(10) || 'CREATE SEQUENCE venseq INCREMENT BY 1 START WITH 10' || chr(10) || 'MAXVALUE 100 MINVALUE 10 CYCLE CACHE 5;' || chr(10) || '���������venseq�޸ĵ���䣬������ǣ�ѡһ�', 'ALTER SEQUENCE venseq START WITH 1', 'ALTER SEQUENCE venseq MAXVALUE 90;', 'ALTER SEQUENCE venseq NOMINVALUE;', 'ALTER SEQUENCE venseq NOCACHE;', 1470, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Oracle�У���һ����Ϊseq�����ж�����������ܷ�������ֵ��������������ֵ���ӵ��ǣ�ѡһ�', 'select seq.ROWNUM from dual', 'select seq.ROWID from dual;', 'select seq.CURRVAL from dual;', 'select seq.NEXTVAL from dual;', 1471, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����Spring��jdbc�����ò��裬����˵����ȷ���ǣ�ѡһ�', '�������������spring ���Լ�������', '��Ҫ������ݿ���������Ϊÿ�����ݿ��������һ��', '����д���ݿ����ӣ� spring �Լ�������', '����д���ݿ����ӵ��û��������룬spring ���Լ�����Ĭ�ϵ��û���������', 1472, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'POJO��ȫ���ǣ�ѡһ�', 'Plain Old Java Object', 'Programming Object Java Object', 'Page Old Java Object', 'Plain Object Java Old', 1473, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����һ��Collection����students�е�ÿ��Student��������������䣬��ͥסַ��Ϣ��ҳ����ȫ����ʾ������ʹ��<logic:iterate>�������롣�ĸ�����ȷ�ģ�ѡһ�', '<logic:iterate name="students" var="stu" scope="session">' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="stuname"/>' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="age"/>' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="address"/>' || chr(13) || '' || chr(10) || '</logic:iterate>', '<logic:iterate name="students" id="stu" scope="session">' || chr(13) || '' || chr(10) || '<bean:write name="students" property="stuname"/>' || chr(13) || '' || chr(10) || '<bean:write name="students" property="age"/>' || chr(13) || '' || chr(10) || '<bean:write name="students" property="address"/>' || chr(13) || '' || chr(10) || '</logic:iterate>', '<logic:iterate  id="students"  name="stu" scope="session">' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="stuname"/>' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="age"/>' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="address"/>' || chr(13) || '' || chr(10) || '</logic:iterate>', '<logic:iterate name="students" id="stu" scope="session">' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="stuname"/>' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="age"/>' || chr(13) || '' || chr(10) || '<bean:write name="stu" property="address"/>' || chr(13) || '' || chr(10) || '</logic:iterate>', 1474, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '��������ʽ�����˵����������ȷ���ǣ�ѡ���', 'Spring ��ȡAOP �ķ�ʽʵ������ʽ����', '����ʽ�����Ƿ�����ʽ�ģ����Բ��޸�ԭ���Ĵ���͸�ϵͳ��������֧��', '��������ʽ������Ҫ tx �� aop ���������ռ��֧��', '��������ʽ����ʱ������Ҫ��ע�����Ķ����͡���ȡʲô����������ԡ�', 1475, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ԭ��SQL��ѯִ�еĿ�����ͨ��(  )�ӿڽ��еġ���ѡһ�' || chr(10) || '', 'Query' || chr(13) || '', 'Criteria' || chr(13) || '', 'SQLQuery' || chr(13) || '', 'List' || chr(13) || '', 1476, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������Hibernate��˵����������ǣ�ѡһ�', 'Hibernate��һ��������-��ϵӳ�䡱��ʵ��', 'Hibernate��һ�����ݳ־û�����', 'Hibernate��JDBC���������', 'ʹ��Hibernate���Լ򻯳־û���ı���', 1477, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��д��̳�JdbcDaoSupport�󣬱���Ҫע����ǣ�ѡһ�', 'dataSource��sessionFactory', 'jdbcTemplate', 'sessionFactory', 'dataSource', 1478, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '����Spring��Hibernate��֧�֣�����˵����ȷ���ǣ�ѡ���', 'Spring �ṩ��������˷������쳣�������', 'Spring �ṩ��������˷��������������', 'Spring �ṩ�Ļ���Բ�ѯû���ṩ���õ�֧��', 'Spring �ṩ�Ļ�����Ҫע�� sessionFacotry ������������', 1479, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������SSH��˵����ȷ���ǣ�ѡһ�', 'SSH�Ľ�ϣ�����������������javaWeb���', 'SSH�Ľ�ϣ�������������javaWeb���', 'SSH�Ľ�ϣ����Խ��ͳ����ż�϶ȣ��ó���ά����ü�', 'SSH�Ľ�ϣ������ü򵥵ĳ����ø��ӣ��ó��������ܿ�', 1480, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���³���Ĵ�ӡ�����ʲô��' || chr(10) || 'tx = session.beginTransaction();' || chr(10) || 'Customer c1=(Customer)session.load(Customer.class,new Long(1)); ' || chr(10) || 'Customer c2=(Customer)session.load(Customer.class,new Long(1)); ' || chr(10) || 'System.out.println(c1==c2);' || chr(10) || 'tx.commit();' || chr(10) || 'session.close();��ѡһ�', '���г����׳��쳣', '��ӡfalse', '��ӡtrue', '�������', 1481, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Spring�������ļ���β���Hibernate�������ļ���ѡһ�', '�Զ����ң�û�й���', 'ͨ�� spring ������ȥ���ң������ļ��������ﶼ����', 'ͨ�� spring ������ȥ���ң������ļ�Ӧ�÷�����·����', 'Hibernate ���Զ�ȥ���� spring ���ļ���spring �����ļ�ʲô������', 1482, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Spring��Hibernateһ�����õ�ʱ����Ҫע��ʲô��ѡһ�', 'Spring �������ļ� �� Hibernate ������ļ�һ��Ҫдͬһ��Ŀ¼����', '���Ҫ�� Spring �е� dao һ��Ҫ���Լ�д�� dao �̳� Spring ��HibernateDaoSupport ��', '���Ҫ�� Spring �е� dao һ��Ҫ���Լ�д�� dao �̳� Hibernate ��HibernateDaoSupport ��', '����д�Լ��� dao �࣬Spring �����ɵ�', 1483, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Spring������һ��������A��ѡһ�', '<bean id="A" abstract="false">', '<bean id="A"  abstract="true">', '<bean id="A"  parent="true">', '<bean id="A"  parent="false">', 1484, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Linux������Apache�Ĺ��̲�������ѡһ�', '����Ƿ�װ��Apache���������', '����Apache������IP��ַ', '�޸������ļ�/etc/apache/set.conf', '����Apache������', 1485, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�У�����ADO.NET�����񣬴�����ǣ�ѡһ�', '��ʼ���񷽷�ΪBeginTransaction', '��ʼ�����᷵��һ��SqlTransaction����', '����ִ�������Ҫ����SqlConnection��Commit����', '����ִ�����д�����Ҫ����SqlTransaction��RollBack����', 1486, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ҳ����������Ԫ�أ����£�<div>div��ǩ</div><span>span��ǩ</span><p>p��ǩ</p>�������������ǩҪ����ͬһ���¼�����ô��ȷ��д���ǣ�ѡ��һ�', '$("div,span,p").click(function(){   //��      });', '$("div || span || p").click(function(){   //��      });', '$("div + span + p").click(function(){   //��      });', '$("div ~ span ~ p").click(function(){   //��      });', 1487, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'SOAP��һ�ֻ��� XML �ġ�������Web�Ͻ����ṹ����������Ϣ�ļ򵥵�����Э�飬SOAP Э��淶�����ĸ����֣����£������������ĸ����֡���ѡһ�', '�������ڷ�װ���ݵı���Ŀ���չ�ŷ�', '����������ʾӦ�ó�������������ͺ�����ͼ�εĿ�ѡ���ݱ������', '���� RPC ��ʽ������/��Ӧ������Ϣ����ģʽ', '���岻ͬ���ʵķ�����֮������ݽ�������͵��ù���', 1488, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����˵����ȷ���ǣ� ����', '�ƶ�Web ��վ�������ƶ��豸��', '�ڱ�д�ƶ�Web ��վҳ������ʹ�õĿؼ�����ͨ��Web ҳ����ʹ�õĿؼ���һ����', '�ƶ�Web ��վҳ���п����ж��Form', '�ƶ�Web ��վҳ����ֻ����һ��Form', 1489, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ִ����ļ�public class WebForm1 : System.Web.UI.Page' || chr(9) || '' || chr(10) || '{' || chr(10) || '    protected System.Web.UI.WebControls.Button Button1;' || chr(10) || '    protected UserControl1 uc1;' || chr(10) || '    private void Button1_Click(object sender, System.EventArgs e)    ' || chr(10) || '    {    uc1.Visible=false;  }' || chr(10) || '}�������ϴ�����Կ������������������˰�ť��ʱ��ҳ�潫���֣����仯����ѡһ�', '����ʱ�������û��ؼ���ֱ�������ٴν���', '����ʱ�������û��ؼ���ֱ���ٴε���ð�ť', 'û��ʲô�仯', '����ʱ����', 1490, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'CLDCʹ�õ���ʲô���͵������?', 'JVM', 'KVM', 'CVM', 'MVM', 1491, 317);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Linux������DNS�������������ǣ�ѡһ�', 'service named start', 'named start', 'service dns start', 'dns start', 1492, 319);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Repeater�ؼ�����ʹ��(   )��ģ�塣��ѡһ�', 'ItemTemplate', 'HeaderTemplate', 'SelectedItemTemplate', 'AlternatingItemTemplate', 1493, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', 'ĳҵ�񷽷�materielApply(Person p, List list) ��Ҫ�������������ƣ������������ʽ����Ч�����ǣ�ѡ���', '����ѯ��������Ϊֻ������������������ΪREQUIRED', '���� do ��ͷ�ķ���Ϊ REQUIRED,���޸ķ�����Ϊ doMaterielApply', '<tx:method name="Apply"  propagation="REQUIRED" />', '����� propagation ��������Ϊ SUPPORTS', 1494, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������Spring��Struts���ú�Action��������ȷ���ǣ�ѡһ�', 'Action ����ֱ�������� spring �У�struts �������ã����Լ������ҵ�', 'Action ��Ҫ�̳� Spring �е��࣬�����ã�����ᱨ��', 'Action ʵ��ͨ������ķ�ʽ�� Spring �õ�', 'Action ʵ�ֿ����Լ��ҵ� spring ����Ϣ�����������κ�����', 1495, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�Ķ����µ�ASP.NET���룺' || chr(10) || 'private void Page_Load(object sender , Sysetm.EvetnArgs e)' || chr(10) || '{' || chr(10) || '    if(!IsPostBack)' || chr(10) || '    {' || chr(10) || '        ArrayList values = new ArrayList();' || chr(10) || '        values.Add("O");        values.Add("A");' || chr(10) || '        values.Add("A");        values.Add("B");' || chr(10) || '        values.Add("B");' || chr(10) || '        CheekBoxList1.DataSource = values;' || chr(10) || '        CheckBosList1.DataBind();' || chr(10) || '}' || chr(10) || '}���ʵ�Webҳ������������˵����ȷ���ǣ�ѡһ�', 'ҳ���Ͻ�����1��CheckBox�ؼ�', 'ҳ����ֻ��3��CheckBox�ؼ�', 'ҳ���Ͻ�����5��CheckBox�ؼ�', '����ִ�г��д��󣬴���ԭ����û���󶨵�����Դ', 1496, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ASP.NET�������Ի�����Ҫ�����ĸ����ýڣ�ѡһ�', 'appSettings', 'authentication', 'compilation', 'anonymousIdentification', 1497, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET�У����й����б�ؼ���DataBind����������������ǣ�ѡһ�', 'Ҫ���б�ؼ���ʵ�ʰ󶨵�ĳһ����Դ���������DataBind����', 'ִ��DataBind����������ɴ����б�ؼ���Ĺ���', 'ִ��DataBind�����������������Դ����������б�ؼ�ÿһ��Ĺ���', '����Ƶ�ʱ�򣬿��Ե���DataBind���������оٵ�����Դ��������䵽�б�ؼ���ÿһ�����۲����ݵ���ȷ��', 1498, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ĳ�ƹ��̻�׫д�˴������£�����������ѧ �������йܰഥ�����̻�������Ĺؼ��ʼ����йܰ࣬���ƹ���Ϣ��ǰ̨�ƹ�λ��չʾʱӦΪ������ȣ��йܣ����õ�����Ӫ  ����1רҵʦ�ʣ�Ӣ��ѧϰ��������Ԣ�����֣����̵�½�����˽�����  ����2ȥ�������йܣ�����μ�ѧϰ����Ӫ����ʵ��Ӣ��ѧϰ����������ѧϰ��ף��һ��֮������ѡ��', '���йܸ��õ�����Ӫ   רҵʦ�ʣ�Ӣ��ѧϰ��������Ԣ�����֣����̵�½�����˽����� !ȥ�����йܲ���μ�ѧϰ����Ӫ����ʵ��Ӣ��ѧϰ����������ѧϰ��ף��һ��֮��', '�ȼ����йܰ���õ�����Ӫ                         רҵʦ�ʣ�Ӣ��ѧϰ��������Ԣ�����֣����̵�½�����˽����� !ȥѧ�������йܰ಻��μ�ѧϰ����Ӫ����ʵ��Ӣ��ѧϰ����������ѧϰ��ף��һ��֮��', '��ѧ�������йܰ���õ�����Ӫ                  רҵʦ�ʣ�Ӣ��ѧϰ��������Ԣ�����֣����̵�½�����˽����� !ȥѧ�������йܰ಻��μ�ѧϰ����Ӫ����ʵ��Ӣ��ѧϰ����������ѧϰ��ף��һ��֮��', '�ȼ����йܰ���õ�����Ӫ                        רҵʦ�ʣ�Ӣ��ѧϰ��������Ԣ�����֣����̵�½�����˽����� !ȥ�����йܰ಻��μ�ѧϰ����Ӫ����ʵ��Ӣ��ѧϰ����������ѧϰ��ף��һ��֮��', 1499, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������͵ĳ���������������ѡ��', '���ǿ���������֯�����ֶε�����ֵ ', ' �����ܹ�Ϊ���е��ֶ�����������', '���ǿ��԰�����������༭��Ч��', '����ֻ����һ��Ҫ�����ж����ʹ�� ', 1500, 402);
commit;
prompt 1500 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������һ��������봦����̺�����ĵ�Ҫ��������Ա�������һ����Status���ֶΣ��������������ܵ�ֵ����tied��״ֵ̬����˼�ǣ�����ѡ��', '������ַ��Ϣ�����ֵ�ͬһ������', '������ַ��Ϣ��ȫ��ͬ', '������ַ������ͬ��ֵ ', '������ַ������ͬ�ĵ�ַ��ź�ǰ׺ ', 1501, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ѡ��ArcGIS�й���ͼ�������Ϊ����������ǣ�����ѡ��', ' һ��ͼ����԰�����ͬ���͵�����Դ����shapefile��CAD���ȵȣ� ', 'ͼ����Ļ���˳����Ա��ı䣬����ͼ����Ը�����Ҫ�����ӻ�ɾ��', 'ͼ���������Ϊһ��geodatabase�е�������Դ���� ', ' ͼ�����е���ͼ���������ʾ���Ը��� ', 1502, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ҵ�����¼�����������Ŀ�Ŀ�Ŀ�ĳ�ʼ����(ѡ��һ��)', 'ֱ��¼��', 'Ҫ���������Ŀ���ġ��̡������ض���������', '����¼���ɻ��������Զ�����', '������ʽ������', 1503, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Struts2��ܵĺ�������ǣ���ѡ��һ�', 'xwork-core-.jar', 'ognl-.jar', 'freemarker-.jar', 'struts2-core-.jar', 1504, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Ӧ��GIS��Ŀ��ƵĲ����뷽���� �� ��ѡ��һ��  �� ', '���������ϵͳ��ơ� �����ƻ���������롢GIS��Ʒ��������ά��', '��������������ƻ��� ϵͳ��ơ�������롢GIS��Ʒ��������ά��', '�����ƻ������������ ϵͳ��ơ�������롢GIS��Ʒ��������ά��', '�����ƻ������������ ������롢ϵͳ��ơ�GIS��Ʒ��������ά��', 1505, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��.NET�У����й���SOAP������������ǣ�ѡһ�', 'SOAP�ṩ�˱�׼��RPC��������Web Service', 'SOAP�淶������SOAP��Ϣ��ʽ���Լ�����ͨ��HTTPЭ����ʹ��SOAP', 'XML�ǻ���SOAP��', 'SOAP��Ŀ��������ʹ�ñ�׼���ķ����ڿͻ���������Internet�ϵ�Ӧ�ó���֮�佻��ԭ�ĵ���Ϣ', 1506, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SQL Server Mobile ���ݿ��ǣ� �����͵����ݿ⡣', '�ļ�', '��ϵ', '�������', '���϶�����ȷ', 1507, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�У����й���TagName������������ǣ�ѡһ�', 'TagNameΪ�û��ؼ������ơ�', 'TagName������TagPrefix��־һ������Ψһ��ʶ�ؼ��������ռ䡣', '���롰<uc1:UserControl1 id="UserControl11" runat="server"></uc1:UserControl1>����uc1ΪTagName��־��', 'Ҫʹ��TagNameȷ���ı�ǣ����������ļ���ע��ñ�ǡ�����롰<%@ Register TagPrefix="uc1" TagName="UserControl1" Src="UserControl1.ascx" %>��ע����TagName��ǡ�', 1508, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������д���ҵ��˵������ȷ���ǣ�ѡ��һ�', '�յ�������Ʒʱ����һ������֪ͨ������ʱ�Ĳֿ��Ǵ��ܿ�', '����������Ʒʱ���Ӵ��ܿ�ת��������������Ʒ�������⹺��ⵥ����ⵥ�����ǹ�������֪ͨ���ķ���¼�룬��ʵ�֣�ͬʱ���ɲɹ���Ʊ���˷�Ʊ�������з��Ľ��㷢Ʊ����ͬʱ��Ҫ��һ��ʵ�ʵ����۷�Ʊ�����۳��ⵥ������Ŀ��ͻ�', '������ƷҪ�˻ظ����з�ʱ����һ������֪ͨ�����Ӵ��ܿⷢ�ظ����з�', '������ƷҪ�˻ظ����з�ʱ����һ�ź�����ⵥ�����ظ����з�', 1509, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ʽ����Ҫ�����ı�������Ϊ"Arial",���������ȷ���ǣ�ѡһ�', '<p style="font-style:arial">', '<p style="text-style;arial">', '<p style="font-family:arial">', '<p style="text-family:arial">', 1510, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�Ķ�����T-SQL��䣬�Ա�����ֵʱ���ڴ�����ǣ�ѡһ�', 'DECLARE @id INT,@price MONEY' || chr(10) || ' set @id=100' || chr(10) || ' set @price=$2.21', 'DECLARE @id INT,@price MONEY ' || chr(10) || 'select @id=100,@price=2.21', 'DECLARE @id INT,@price MONEY ' || chr(10) || 'set @id=100, @price=2.21', 'DECLARE @id INT,@price MONEY ' || chr(10) || 'select @id=100' || chr(10) || ' select @price=$2.21', 1511, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ĳ�����ڵ�����վ���ڣ���ѡ��', '�ߵ��ѯ', '���߲�ѯ ', '���߲�ѯ', '�����ѯ', 1512, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ؼ������õķ���URL��www.test.com����֮ƥ��Ĵ������õķ���URL��www.clickme.com���ҹؼ��ʡ������״̬����Ч��������˵����ȷ���ǣ���ѡ��', '����URL��ͻ������ʵ���ƹ����޷�����������ת', 'ʵ���ƹ�www.clickme.com��ת', 'ʵ���ƹ���һ�밴��www.test.com��ת��һ�밴��www.clickme.com��ת', 'ʵ���ƹ㰴��www.test.comL��ת', 1513, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'struts2�Զ����������еġ�return invocation.invoke�������ʾ��  ����ѡ����', '��ִ��Ŀ��Action�ķ�����ֱ�ӷ���', 'ִ��Ŀ��Action�ķ�����ֱ�ӷ����߼���ͼ����', '���Զ����������У��ô����Ǳ����', '���Զ����������У��ô����ǿ�ѡ��', 1514, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ծȨ�˽��30000Ԫ��6���º�黹���������еĻ�Ʒ�¼�Ľ跽�ʹ���������˵����ȷ���ǣ�     ��(ѡ��һ��)', ' �跽Ϊ���д�����Ϊ���ڽ��', '�跽Ϊ���д�����Ϊ���ڽ��', '����Ϊ���д��跽Ϊ���ڽ��', '����Ϊ���д��跽Ϊ���ڽ��', 1515, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'struts2�Զ����������еġ�return invocation.invoke�������ʾ��  ����ѡ����', '��ִ��Ŀ��Action�ķ�����ֱ�ӷ���', 'ִ��Ŀ��Action�ķ�����ֱ�ӷ����߼���ͼ����', '���Զ����������У��ô����Ǳ����', '���Զ����������У��ô����ǿ�ѡ��', 1516, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '��ȡ<div id="content">���ݡ�</div>��ǩ����ı����ݡ���ѡ�����', '$("#content").val();', '$("#content").html();', '$("#content").text();  ', '$("#content").innerHTML();', 1517, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '¼���˹��Ʒѿ�Ŀ�ɱ�����������µ���������Щ������ѡ��', '������ڻ���·�  ', '������ڽ�����������õĹ�������   ', '���ɴ��ڽ�����������õĽ�������', '������������', 1518, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���׽�����һ�������˺����������Ч����������һ��δ������������( )(ѡ��һ��)', 'ϵͳĬ��Ϊ����', 'ϵͳ�������κ�����', 'ϵͳ��ȡ����ν����������� ', 'ϵͳĬ��Ϊ����', 1519, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���й���XML�����ļ���Java�����б����õ�˵���У�����ȷ����(ѡ��һ��)', '��Activity�У�����ʹ��findViewById( )������ͨ����Դid�����ָ����ͼԪ��', '��Activity�У�����ʹ��R.drawable-system.***��ʽ����Androidϵͳ���ṩ��ͼƬ��Դ', '��Activity�У�����ʹ��setContentView( )������ȷ��������һ�������ļ�', '����ʹ��View���findViewById( )��������õ�ǰView�����е�ĳһ����ͼԪ��', 1520, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'C#��String��StringBuilder����������������ȷ���ǣ� ����ѡһ�', 'String �ڽ�������ʱ�����һ���µ�ʵ������ StringBuilder �򲻻ᡣ', 'StringBuilder���������Ͷ�String��ֵ����', 'String���Ϳ�����ʽת��ΪStringBuilder����', 'StringBuilder �ڽ�������ʱ�����һ���µ�ʵ������ String �򲻻ᡣ', 1521, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'android ����������Intent�����õ��ǣ�(ѡ��һ��)', '����һ��Ӧ�ó��������ԵĹ���', '��һ�γ����������ڣ�û���û�����ĳ��򣬿��Ա���Ӧ���ں�̨���У���������Ϊ�л�ҳ�����ʧ', 'ʵ��Ӧ�ó��������ݹ���', '����ʵ�ֽ������л������԰��������Ͷ������ݣ������Ĵ������Ŧ��', 1522, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'mysql_insert_id()������������(ѡ��һ��)', ' �鿴��һ�β����¼ʱ��ID��', '�鿴�ող�������Զ�����IDֵ', '�鿴һ���������ٴ�insert����', ' �鿴һ���ж�������¼', 1523, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ί������������ǣ� ����ѡһ�', 'ί����һ�����÷���������', 'ί�м��ܹ��Ծ�̬�������е���Ҳ�ܹ���ʵ���������е���', 'ί�ж����˷���������', '����ί�б���ʹ��public���η�', 1524, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������һ����������ȷ�ģ���' || chr(10) || '' || chr(10) || '', 'abstract���η��������ֶΡ���������', '���󷽷���body���ֱ�����һ�Դ�����{}��ס', '�������󷽷��������ſ��п���', '�������󷽷�����д�������� ', 1525, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����ͺ�����Χ�������Ķ���ɲ��ã���ѡ��', ' �ռ����', 'ͳ�Ʒ���', '���÷���', '����������', 1526, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����TinyOS����ϵͳ����������������ǣ� ����ѡһ�', 'TinyOS �ṩ������¼����������Ȼ��ơ�', 'TinyOS ����ϵͳ�������Ϊ��Ӳ������������ϳ�Ӳ����������������', 'TinyOS ����ϵͳ����֮�以��ƽ�ȣ�û�����ȼ�֮��', '��Tinyos���¼������񱻴������֮��CPU�� ����˯��״̬��', 1527, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ArcMap������ݣ������������������ȷ�ģ���ѡ��', 'drag and drop���������Կռ����ݼ���Ч', '������ݶԻ����У�һ��ֻ�����һ��������Ҫ���� ', '��һ��coverage�в�����ֻ���һ��Ҫ����', '���һ��Ҫ�����ݼ�������Ӹ����ݼ�������������Ҫ���� ', 1528, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������ڻ�׼�����������������ȷ���������ѡ��', '��С�����ߵ�ͼ�ܲ�ͬ�������Ӱ����ܲ�ͬ��׼���Ӱ����� ', '��Ҫ����������У�һ��Ҫ���౻����������Ҫ�أ�����Ը��Ļ�׼�浫���ܸ��������� ', 'ƽ������ϵ����ʹ�û�׼�������������ο��� ', '�������ǵ�������ϵ��һ���֣�����׼����ǵѿ�������ϵ��һ���� ', 1529, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ArcMap TOC�У���ͼ�������Ա߳���һ����ɫ�ĸ�̾��ʱ��ζ�ţ�����ѡ��', '��ͼ�ĵ���������Ⱦ ', 'ԭ�����Ѿ�����������ɾ�������Ǵ�ԭ�ο�·������ ', 'ԭ���ݵĿռ�ο������Ѿ�������', '��ͼ��ͼ���ܹ������Ƶķ�Χ�� ', 1530, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ڴ������ϵͳ��ƾ֤һ���Ǹ��ݣ�  ��ģ�����Զ�����ƾ֤��ѡ��һ�', 'ϵͳ�Դ�������', 'Ĭ������', 'ϵͳ�Զ�ѡ������� ', 'ϵͳ���ѡ�������', 1531, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������EPCSDKHelp���װ�˲�����д���ĺ��������������Ӧ������Ĳ����ǣ� ����ѡһ�' || chr(10) || 'IntPtr _handle = EPCSDKHelp.OpenComm(1);' || chr(10) || 'byte[] data = new byte[] {0xED,0x0A,0x04,0x30,0x19,0x20 };' || chr(10) || 'EPCSDKHelp.FastWriteTagID( ?,?,?,?);', '_handle,12,data,0', '_handle,6,data,0', '_handle,data,0,12,0,0', '_handle,data,0,6,0,0', 1532, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����geodatabase��ע��Ҫ��������������ǣ�����ѡ��', 'ͨ��ѡ��ע��Ҫ�ز��ڱ༭��������ʹ�����Դ��ڣ�����Ը���Դ���ݵ�����ֵ ', '��ԴҪ�����б༭����ֵ���������Ҫ�ع�����ע��Ҫ�� ', '��ԴҪ�����б༭����ֵ��������±�׼��ע��Ҫ��', '��ArcMap��ArcCatalog�У�����Խ�������ʽ��ע��ת����geodatabaseע���� ', 1533, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�⹺��ⵥ���ɹ����ĵ����У�ѡ��һ�', '�ɹ�����', '�ɹ���Ʊ', '����֪ͨ��', '�ɹ����뵥', 1534, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������ArcGIS�ռ���׼���̵���������ǣ���ѡ��', '���������֪�Ĳο�ϵͳ��ֵ���ռ����� ', '����ַλ����Ϣ��x��y����ƥ�� ', '����׼�����������뵽ArcGIS����ʾ�������� ', '����������ϵ��һ��ͶӰת�Ƶ���һ��ͶӰ ', 1535, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C#�н��ַ�������Ϊ�ֽ����еķ����ǣ� ����ѡһ�', 'Encoding.Default.GetBytes()', 'Encoding.Default.GetEncoder()', 'Encoding.Default.GetString()', 'Encoding.Default.GetByteCount()', 1536, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQL Server������Ϊimage���ֶΣ���C#�е�ʵ����Ӧ��ʹ�ã� ����������ʾ��ѡһ�', 'Image', 'String', 'Byte[]', 'IntPtr', 1537, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'GIS����Ҫ��ɲ��ְ�������ѡ��', '�������Ӳ��ϵͳ���������ݺ��û�', '�������Ӳ��ϵͳ���������ݺͷ�������', '�������Ӳ��ϵͳ���������ݺͻ�ͼ��', ' �������Ӳ��ϵͳ��������û�', 1538, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts�е�ActionServlet����MVCģʽ��  ����ѡ��һ�', '��ͼ', ' ģ��', '������', 'ҵ���', 1539, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'if���Ŀ���������ѡһ�', 'ֻ���ù�ϵ���ʽ', 'ֻ���ù�ϵ���ʽ���߼����ʽ', 'ֻ�����߼����ʽ', '�������κα��ʽ', 1540, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���¹���Java�����˵������ȷ���ǣ�ѡһ�', 'Java�����ִ�е����ֽ���', '�ֽ���ᱻ���ͳɱ��ػ�������', '��ͬƽ̨����Ҫ��װ��ƽ̨����Ӧ��Java������汾', '��ͬƽ̨��Java������Ĺ淶��һ��', 1541, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Java�У�����(    )��ʶ���ǲ��ǺϷ��ġ���ѡһ�', 'IDoLikeTheLongNameClass', '$byte', '_ok', '4_case', 1542, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������ʽ���˵����������ǣ�ѡһ�', '�ⲿ��ʽ������ʽ���һ�ֱ�����ʽ��', '�����ⲿ��ʽ���ļ���ֻ����Link��ǵ��롣', '��ʽ����Ƕ�뵽<HEAD>��</HEAD>���֮�䡣', '�ɶԾ����ĳ����ҳԪ��Ӧ����ʽ��', 1543, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Ҫ����ҳ����ʾ����ӭ�����ҵ���ҳ������Ҫ������Ϊ���顢�����СΪ6�����������ȷ���ǣ�ѡһ�', '<P><FONT SIZE=6 TYPE="����">��ӭ�����ҵ���ҳ��</FONT>', '<P><FONT SIZE=+2 FACE="����">��ӭ�����ҵ���ҳ��</FONT>', '<P><FONT SIZE=6 FACE="����">��ӭ�����ҵ���ҳ��</FONT>', '<P><FONT SIZE=+3 STYLE="����">��ӭ�����ҵ���ҳ��</FONT>', 1544, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������HTML��䣬����˵��������ǣ�ѡһ�' || chr(10) || '<input  type="radio" value="v1"  checked  name="R1" >��', '������佫����һ����ѡ��', '����������ѡ�����ѡ��״̬��', '��ѡ���valueֵ��Ҫ����Ҫ����Ϊ�������õ�ѡ��ť�Ľ���û��Ӱ�졣', '�ñ�ǵ�name����ֵ��Ҫ����Ҫ����Ϊ���Ե�ѡ��ť�Ĺ�����Ʋ������κ�Ӱ�졣', 1545, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��HTML�У�Ҫ����һ������form1����Ҫ��������������ݵķ�ʽΪpost, �ύ���������ĵ�ַΪprocess.asp�����洴������ȷ�Ĵ��루ѡһ�', '<form name="form1" method="post" submit="process.asp"></form>', '<form name="form1" method="post" submitSrc="process.asp"></form>', '<form name="form1" method="post" action="process.asp"></form>', '<form name="form1" method="post" src="process.asp"></form>', 1546, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���������C/S�ܹ��пͻ��˻�ȡ������ʱ�䣬�����ñ���ϵͳʱ���������ͬ���Ĵ��룬�հ״�Ӧ�����루 ����ѡһ�' || chr(10) || 'DateTime serverTime = (DateTime)DBHelper.ExcuteQuery("___________").Rows[0][0];' || chr(10) || 'SystemTime st = new SystemTime();' || chr(10) || 'st.wYear = (short)serverTime.Year;' || chr(10) || 'st.wMonth = (short)serverTime.Month;' || chr(10) || 'st.wDay = (s', 'Select getdate from sysobjects', 'Select * from getdate()', 'Select getdate()', 'Select @@ServerTime', 1547, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '����˵��������У���(ѡ������)', '���෽���о��Բ��ܵ���ʵ������', '���෽����ֻ�ܵ��ñ����е��෽��', '���෽���п���this�����ñ�����෽��', '���෽���е��ñ�����෽��ʱ��ֱ�ӵ���', 1548, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����·�ؿ��в�Ǩָ��ļ������⣬��Ӧ�õĿռ���������ǣ���ѡ��', '����������', '�������� ', '�������', '���·������', 1549, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java�����У�����ȷ��ʾa��bͬʱΪ����ͬʱΪ���ı��ʽ�ǣ�ѡһ�', '(a >=0 || b >= 0) && (a < 0 || b < 0)', 'a * b > 0', '(a + b > 0) && (a + b <= 0)', '(a >= 0 && b >= 0) && (a < 0 && b < 0)', 1550, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Ϊ������ҳ�Ϸֱ��ô����б����ʾ������ʱ����׷ף�·���������ϻꡱ�������ʾƼҺδ��У���ͯңָ�ӻ��塣�������д�����ȷ���ǣ�ѡһ�', '<B>����ʱ����׷ף�·���������ϻꡣ</B><I>���ʾƼҺδ��У���ͯңָ�ӻ���</I>', '<i>����ʱ����׷ף�·���������ϻꡣ</i><b>���ʾƼҺδ��У���ͯңָ�ӻ���</b>', '<i>����ʱ����׷ף�·���������ϻꡣ</i><u>���ʾƼҺδ��У���ͯңָ�ӻ���</u>', '<b>����ʱ����׷ף�·���������ϻꡣ</b><u>���ʾƼҺδ��У���ͯңָ�ӻ���</u>', 1551, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '������ȷ�������У�ѡ���', '��Java�����У�ÿ����ֻ��дһ����䡣', '��Java�����У�Abc��abc��2����ͬ�ı���', '��a��b��������ͬ���ڼ��㸳ֵ���ʽa = b��b��ֵ������a����a��ֵ��ʧ', '��a��float�ͱ�����a = 10�ǺϷ��ģ���Ϊfloat�ͱ���������������', 1552, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JAVA������������Ϊһά����a��ȷ��ʼ��������ǣ�ѡһ�', 'int a[10]=(0,0,0,0,0);', 'int a[]= {1,2};', 'int a[10]={0;1;2};', 'int a[10] = {10};', 1553, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���д���' || chr(10) || 'public static void main(String []args){' || chr(10) || 'int i = 0;' || chr(10) || 'for(i = 1;i < 10;i++){' || chr(10) || '    System.out.println ("i = " + i);' || chr(10) || '    if(i % 2 == 0){' || chr(10) || '        continue;' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '}����Ľ��Ϊ��ѡһ�', '��1��9�е�����', '��1��9�е�ż��', '�����', '��1��9', 1554, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Ҫ����ҳ����ʾ���е�����:' || chr(10) || '��ƱԱ˵�������ۣ���68����' || chr(10) || '����������ȷ���ǣ�ѡһ�', '<p>��ƱԱ˵��  ���ۣ�&yuan; 68  &quot; </p>', '<p>��ƱԱ˵�� &quot;  ���ۣ�&yen; 68 </p>', '<p>��ƱԱ˵�� &quot;  ���ۣ�&yuan; 68  &quot; </p>', '<p>��ƱԱ˵�� &quot;  ���ۣ�&yen; 68  &quot; </p>', 1555, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���濪���У���ʹ��struts2ʱ����Actionʹ�����ַ�ʽ������(ѡ��һ��)', 'ֱ�Ӷ���Action�ࡣ', '��ActionSupport�̳С�', '��Action�̳С�', 'ʵ��Action�ӿڡ�', 1556, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ArcSDE������������ȷ���ǣ� ��ѡ��һ�� �� ', 'ArcSDE������һ����ϵ���ݿ�', 'ArcSDE����ʹ�ö���DBMS���������Ϣ ', 'ArcSDE֧�ֶ��û��༭���ṩ���Ϳռ����ݿ�֧��', 'ArcSDE֧�ְ���Windows��Unix���ڵĶ��ֲ���ϵͳ', 1557, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ȴ����֣����ȷ�ΧΪ 114 ---> 120����ô�����뾭��Ϊ �� �� ѡ��һ�� �� ', '117', '116', '115', '117.5', 1558, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���������������ʹ��Ȩ��˫���̶���������������������������ʹ��Ȩ�ļ�ֵΪ150000Ԫ�������ҹ�˾��Ͷ�ʡ�������������跽�ʹ���������˵����ȷ���ǣ�      ��(ѡ��һ��)', '�跽Ϊ�̶��ʲ�������Ϊʵ���ʱ�', '����Ϊ�̶��ʲ����跽Ϊʵ���ʱ�', ' �跽Ϊ�����ʲ�������Ϊʵ���ʱ�', '�跽Ϊ�̶��ʲ�������Ϊ���д��', 1559, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2�У����������ļ��ϴ�������ֻ�����ϴ�bmpͼƬ�ļ��Ĵ��룬��ȷ���ǣ� ����ѡ��һ�', '<param name=��allowedTypes��>image/bmp</param>', '<param name=��allowedTypes��>*.bmp</param>', '<param name=��allowedTypes��>bmp</param>', '<param name=��allowedTypes��>image/*.bmp</param>', 1560, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����˵������ȷ���� ��ѡ��һ�', '$("input:checked")ѡȡ���б�ѡ�е�<input>Ԫ��', '$("#form:disabled")ѡȡidΪform�ı��ڵ����в�����Ԫ��', '$("#name").is(":visible")���ж�idΪname��Ԫ�صĿɼ���', '$("div ").addClass("background","url(img/up.gif) ")��������ʽ��', 1561, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '��Ʒ�ṹ���Ӽ���Ϣ�а�������ѡ�����', '�ֿ�    ', '  �����', '����', 'ѡ����� ', 1562, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '����֧������˵����ȷ����( )(ѡ������)', '֧�������Ա�֤�ʽ�İ�ȫ�����Ҳ���Ҫ������   ', '���ʹ��֧����ʱ����������Ա�֤�˻��ʽ�ȫ', '���ʹ��֧�������й��ﲻ��Ҫͨ���κ���֤���� ', '֧�����ǵ��������տ�ƽ̨��Ŀǰ���Ա�����ʱʹ��֧������������ѵ�', 1563, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���й���Android�����ļ����õĳ���/��С��λ�������У�����ȷ����(ѡ��һ��)', ' dp���豸�������أ����������豸������õĳ��ȵ�λ', 'sp����Ŵ����أ���Ҫ���������С����ʾ', ' px�����ص�λ���ڲ�ͬ���豸����ʾЧ����ͬ������Ƽ��ڲ�����ʹ�øõ�λ ', '�����ÿռ䳤�ȵ���Ծ���ʱ���Ƽ�ʹ��dp��λ���õ�λ���豸�ܶȵı仯���仯', 1564, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�У����г���������ȷ���ǣ�ѡһ�', 'const double PI 3.1415926;', 'const double e=2.7', 'define double PI 3.1415926', 'define double e=2.7', 1565, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��SQL Server 2005�У���student(ѧ��)����ṹΪ: sID(ѧ��,int ��,����),sName(����,varchar ��), birthday(��������,varchar ��)��score(�ɼ���int��). ��Ҫ��ѧԱ���в���һ��ѧԱ����Ϣ������SQL�����ȷ���ǣ�ѡһ�', 'INSERT INTO students VALUES(1,''���'',''1999-01-01'',80)', 'INSERT INTO students (sID,sName,birthday) VALUES(1,''���'',''1999-01-01'',80)', 'INSERT INTO students VALUES(1,���,1999-01-01,80)', 'INSERT INTO students (sID,sName,brithday) VALUES (NULL,''���'',''1999-01-01'')', 1566, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Sql server�У�(  )��������ɾ������󡣣�ѡһ�', 'Drop', 'Remove', 'Truncate', 'Delete', 1567, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������Ϊ�У�����������һ���洢���̡���ѡһ�', '���û���ṩ����ֵ����ʹ�ô����ж����ֵ', '������һ��������е��еļ���', '���û��޸�����ʱ��һ��������ʽ�Ĵ洢���̱��Զ�ִ��', 'SQL����Ԥ���뼯��', 1568, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��SQL Server2005�У�ϵͳ�洢���̣�ѡһ�', '�洢��Master���ݿ���', '�����ڲ�ѯ���������޸�', 'һЩ�����ԡ�sp_����ͷ��һЩ�����ԡ�sys_����ͷ', '���������û��Զ���Ĵ洢����', 1569, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������Java����' || chr(10) || 'public class ExceptionTest {' || chr(10) || 'public static void main(String[]  args) throws Exception {' || chr(10) || '    try {' || chr(10) || '        throw new Exception();' || chr(9) || '' || chr(10) || '    }' || chr(10) || '    catch(Exception e){' || chr(10) || '        System.out.println("Caught in main()");' || chr(10) || '    }    ' || chr(10) || '    System.out.println("nothing"); ' || chr(10) || '}' || chr(10) || '}' || chr(10) || '������Ϊ��ѡһ�', 'Caught in main()' || chr(13) || 'nothing', 'Caught in main()', 'nothing', 'û���κ����', 1570, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����һ��Java����Ĵ���Ƭ�����£����к���ȷ���������ǣ�ѡһ�' || chr(10) || 'String s="hello,world";' || chr(10) || 's.replace(","," ");' || chr(10) || 'System.out.println(s);', 'hello world;', 'hello, world', 'HELLO WORLD;', 'HELLO ,WORLD;', 1571, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Java�У�����(  )�������Եõ�Connection�����Statement���󡣣�ѡһ�', 'ʹ��Class��getConnection�������Եõ�Connection����ʹ��Connection�����createStatement�������Ի��Statement����', 'ʹ��Class��getConnection�������Եõ�Connection����ʹ��DriverManager�����createStatement�������Ի��Statement����', 'ʹ��DriverManager��getConnection�������Եõ�Connection����ʹ��Connection�����createStatement�������Ի��Statement����', 'ʹ��DriverManager��getConnection�������Եõ�Connection����ʹ��Statement�����createStatement�������Ի��Statement����', 1572, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������һ��HTML��ǣ�' || chr(10) || '<table border="1" width="150">' || chr(10) || '<tr>' || chr(10) || '<td>��</td>' || chr(10) || '<td>��</td>' || chr(10) || '<td rowspan="2">��</td>' || chr(10) || '</tr>' || chr(10) || '<tr>' || chr(10) || '<td>��</td>' || chr(10) || '<td>��</td>' || chr(10) || '</tr>' || chr(10) || '<tr>' || chr(10) || '<td colspan="2">��</td>' || chr(10) || '<td>��</td>' || chr(10) || '</tr>' || chr(10) || '</table>' || chr(10) || '��������˵��������ǣ�ѡһ�', '����һ��3��3�еı��', '������ı߿���Ϊ��1����', '������ĵ�3����������Ԫ��', '������ĵ�3����3����Ԫ��', 1573, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����µ�HTML����Ƭ����,����()����ȷ���жϣ�ѡһ�' || chr(10) || '<table border=1>' || chr(10) || '<caption>�ľ�</caption>' || chr(10) || '<tr>' || chr(10) || '<th>Ǧ��</th>' || chr(10) || '<th>Բ���</th>' || chr(10) || '<th>ˮ��</th>' || chr(10) || '</tr>' || chr(10) || '����.', 'Ǧ��һ��λ�������еĵ�һ��', 'Բ���һ��λ�������еĵ�һ��', '�ľ�Ӧλ����������', 'ˮ����Բ����ڲ�ͬ����', 1574, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������������£���˵������ȷ�ġ���ѡһ�', '������������ȷ�����в������ظ��������С�', 'һ���������һ��������', '�����п���Ϊnull��', 'ֻ�ܶ�������������������', 1575, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��C#�У����д�������н���ǣ�ѡһ�' || chr(10) || 'static void Main(string[]args)' || chr(10) || '{   ' || chr(10) || '     Console.WrinteLine("���н���ǣ�{0}","���н��");' || chr(10) || '}', '���н��', '���н���ǣ�{0}', '���н���ǣ����н��', '���н�������н��', 1576, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������Ĵ洢���̣�' || chr(10) || 'CREATE PROCEDURE Myp1 @p Int As' || chr(10) || 'Select Studentname,Age from Students where Age=@p' || chr(10) || '������Ҫ��Students���в���������18���ѧ��������������ȷ�ĵ�������洢����' || chr(10) || '��ѡһ�', 'EXEC Myp1 @p = ''18''', 'EXEC Myp1 @p = 18', 'EXEC Myp1 p = ''18''', 'EXEC Myp1 p = 18', 1577, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���£�   �����ӱ�student����ȡǰ5����¼����ѡһ�', 'select * from student where rowcount=5', 'select TOP of 5 * from student', 'select TOP 5 * from student', 'select * from student where rowcount<=5', 1578, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'SQL Server���ݿ��У�����������:Order������ Item��������Ŀ����һ���¶���������ʱ������Ҫ�ֱ𱣴浽Order��Item���У�Ҫ��֤���������ԣ�����ʹ������(  )��䡣��ѡһ�', 'BEGIN TRANSACTION ' || chr(13) || 'INSERT INTO Order VALUES (�˴�ʡ��)' || chr(13) || 'INSERT INTO Item VALUES (�˴�ʡ��)' || chr(13) || 'END TRANSACTION', 'BEGIN TRANSACTION' || chr(13) || 'INSERT INTO Order VALUES (�˴�ʡ��)' || chr(13) || 'INSERT INTO Item VALUES (�˴�ʡ��)' || chr(13) || 'IF (@@Error = 0)' || chr(13) || 'COMMIT TRANSACTION' || chr(13) || 'ELSE' || chr(13) || 'ROLLBACK TRANSACTION', 'BEGIN TRANSACTION' || chr(13) || 'INSERT INTO Order VALUES (�˴�ʡ��)' || chr(13) || 'IF (@@Error = 0)' || chr(13) || 'INSERT INTO Item VALUES (�˴�ʡ��)' || chr(13) || 'IF (@@Error = 0)' || chr(13) || 'COMMIT TRANSACTION' || chr(13) || 'ELSE' || chr(13) || 'ROLLBACK TRANSACTION' || chr(13) || 'ELSE' || chr(13) || 'ROLLBACK TRANSACTION', 'BEGIN TRANSACTION' || chr(13) || 'INSERT INTO Order VALUES (�˴�ʡ��)' || chr(13) || 'INSERT INTO Item VALUES (�˴�ʡ��)' || chr(13) || 'IF (@@Error <> 0)' || chr(13) || 'ROLLBACK TRANSACTION', 1579, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ContenValues��˵����ȷ���ǣ�(ѡ��һ��)', '����Hashtable�Ƚ����ƣ�Ҳ�Ǹ���洢һЩ��ֵ�ԣ��������洢����ֵ�Ե��е�����String���ͣ���ֵ���ǻ�������', '����Hashtable�Ƚ����ƣ�Ҳ�Ǹ���洢һЩ��ֵ�ԣ��������洢����ֵ�Ե��е������������ͣ���ֵ���ǻ�������', ' ����Hashtable�Ƚ����ƣ�Ҳ�Ǹ���洢һЩ��ֵ�ԣ��������洢����ֵ�Ե��е���������Ϊ�գ���ֵ����String����', '����Hashtable�Ƚ����ƣ�Ҳ�Ǹ���洢һЩ��ֵ�ԣ��������洢����ֵ�Ե��е�����String���ͣ���ֵҲ��String����', 1580, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ڷ�΢�����������Ѻ��ѵķ�����(��ѡ��', 'ʹ�á�@��', 'ʹ�á�$��', 'ʹ�á�&�� ', 'ʹ�á�#��', 1581, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����߳�˵������ȷ����()(ѡ��һ��)', '�� android �У����ǿ��������߳��У�����һ���µ��߳�', '�ڴ��������߳��У������Բ��� UI ���', '���߳̿��Ժ� Handler ��ͬʹ��', '������ Handler �����������ڴ��������߳�', 1582, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ȫ����ͼ��ͨ��()��������壨ѡ��һ�', '<result>', '<global-results>', '<action>', '<interceptor>', 1583, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', 'struts2�л�ȡServlet API�ķ�����ȷ���ǣ�ѡ�����', 'ʹ��ActionContext�����Խ���ϵķ�������Servlet API', 'ʹ��ServletActionContext�����Խ���ϵķ�ʽ����Servlet API', 'ʹ��ActionContext��������ϵķ�ʽ����Servlet API', 'ʹ��ServletActionContext��������ϵķ�ʽ����Servlet API', 1584, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�����У����й������Ե�������ȷ���ǣ�ѡһ�', '����ϵ����public�ؼ������ε��ֶΣ���public�ؼ������ε��ֶ�Ҳ�ɳ�Ϊ����', '�����Ƿ����ֶ�ֵ��һ�������ƣ����Ը��õ�ʵ�������ݵķ�װ������', 'Ҫ����ֻ������ֻ����������ǰ����readonly�ؼ���', '��C#�����в����Զ�������', 1585, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��J2EE�У�����Httpservlet���������������ǣ�ѡһ�', '�����Լ���д��Servlet�̳���HttpServlet�࣬һ���踲��doPost����doGet', 'Httpservlet����չ��GenericServlet�࣬ʵ����GenericServlet��ĳ��󷽷�', 'Httpservlet���д���ͻ��������Ӧʱ��ʹ�õ������ӿ��ǣ�HttpServletRequest��HttpServletResponse��', '�����Լ���д��servlet�̳���Httpservlet�࣬һ��ֻ��Ҫ����doPost���������ظ���servive������������Ϊһ��service�������������doPost����doGet����', 1586, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����������ԣ����£� ���ǲ����ܵġ���ѡһ�', '���е�Ԫ����', '�Գ�����ȫ����', '��д���Լƻ�', '�������е�ȱ�ݽ��о���', 1587, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Ϊ����ȡ��ǰ���ڵ�Сʱ���������ж������ǰ��Сʱ��С��12����ҳ������ʾ�������!��,������ʾ������ã���������JavaScript ������ȷ���ǣ�ѡһ�', 'var todays_date=new Date();' || chr(13) || 'var seconds=todays_date.getSeconds();' || chr(13) || 'var str=(seconds>12)?"�����!":"�����!";' || chr(13) || 'document.write(str);', 'var todays_date=new Date();' || chr(13) || 'var hours=todays_date.getHours();' || chr(13) || 'var str=(hours<12)?"�����!":"�����!";' || chr(13) || 'document.write(str);', 'var todays_date=new Date();' || chr(13) || 'var seconds=todays_date.getSeconds();' || chr(13) || 'var str=(seconds<12)?"�����!":"�����!";' || chr(13) || 'document.write(str);', 'var todays_date=new Date();' || chr(13) || 'var hours=todays_date.getHours();' || chr(13) || 'var str=(hours>12)?"�����! ":"�����! ";' || chr(13) || 'document.write(str);', 1588, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '���������JavaScript����Σ�������ȷ���ǣ�ѡ���' || chr(10) || '<FORM>' || chr(10) || ' <INPUT TYPE="text" name="Text1" value="Text1">' || chr(10) || ' <INPUT TYPE="text" name="Text2" value="Text2" onFocus=alert("���ǽ���") onBlur=alert("�Ҳ��ǽ��㣡")>' || chr(10) || '</FORM>', '�������ѡ��Text2ʱ�����������ǽ��㡱��Ϣ���������ѡ��Text1�ı���ʱ���������Ҳ��ǽ��㡱��Ϣ��', '�������ѡ��Text1ʱ�����������ǽ��㡱��Ϣ���������ѡ��Text2�ı���ʱ���������Ҳ��ǽ��㡱��Ϣ��', '����������������Text1�ϣ�����굥��ҳ���ϳ�Text2�������������ʱ���������Ҳ��ǽ��㡱��Ϣ��', '������������Text2�ϣ�����굥��ҳ���ϵ���������ʱ���������Ҳ��ǽ��㡱��Ϣ��', 1589, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��DTD�ж���schoolԪ�ص�һ������name��Ӧ�ö���Ϊ��ѡһ�', '< !ATTLIST school name CDATA >', '<ELEMENT school name CDATA >', '< ATTLIST school name CDATA >', '< !ENTITY school name CDATA >', 1590, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������й�Oracle����Լ������������ȷ���ǣ�ѡһ�', '����Լ������Ψһ��ȷ�����е�ÿһ������', '��һ�����У����ֻ����2������Լ��', '����Լ��ֻ����һ�������', '����Լ��������һ���������', 1591, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�й�ORACLE��������˵����ȷ���ǣ�ѡһ�', '����ͨ���ֹ��ķ�ʽ����������', 'ͣ�ô�������Ψһ������ɾ��������', '�м������������޸�ÿ����¼ʱ������һ��', '���м��������п���ʹ��deleted��inserted��', 1592, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��SQL Sever 2005�У�ʹ�õĵ�¼���������з������ݿ��Ȩ�ޣ���¼�������������ݿ���û�ID���й������ܷ��ʶ�Ӧ�����ݿ⣬�����ȷ��¼���û���û�������ݿ��е��κ��û�ID�����������ѡһ�', '�Զ�ʹ��sa��¼�����������û�Ȩ��', '��¼�����κη���Ȩ��', '������guest�û����������Զ���������guest���û�ID', '���µ�¼ʧ��', 1593, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��.NET�У������ԵĶ�д�����������з��࣬���Ի���Ϊ�������֣����ˣ�ѡһ�', 'ֻ������', 'ֻд����', '��д����', '���ɶ�����д������', 1594, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����TheBean�࣬���軹û�д���TheBean���ʵ����������ЩJSP��׼��������ܴ������bean��һ����ʵ�����������洢������������ѡһ�', '<jsp :useBean name="myBean"  type="com.example.TheBean"/>', '<jsp :takeBean name="myBean"  type="com.example.TheBean"/>', '<jsp :useBean id="myBean"  class="com.example.TheBean" scope="request"/>', '<jsp :takeBean id="myBean"  class="com.example.TheBean" scope="request"/>', 1595, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '(  )���ڲ���JSP�еķ�Χ��������ѡһ�', '������ǩ' || chr(13) || '', '������ǩ' || chr(13) || '', '���ñ�ǩ' || chr(13) || '', '�Զ����ǩ' || chr(13) || '', 1596, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���ڷ��ͼ���List<T>˵��������ǣ�ѡһ�', 'List<T>�ڻ�ȡԪ��ʱ��Ҫ��������ת��', 'List<T>��ͨ���������ʼ����е�Ԫ��', 'List<T>���Ը�������ɾ��Ԫ�أ������Ը���Ԫ������ɾ��', '����List<T>������Ҫʵ����', 1597, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '__����Ҫ�󴰿���ʾ�ոշ��ʵ�ǰһ�����ڡ���ѡһ�', 'back()', 'go()', 'display()', 'view()', 1598, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������Ե�Ŀ���ǣ�ѡһ�', '�������������', '��������Ĵ���', '�ҳ�����е����д���', '֤���������ȷ��', 1599, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��JavaScript��ĳЩ����£��������Դ������if��䣨ѡһ�', 'if��else', 'for', 'while', 'switch��..case', 1600, 206);
commit;
prompt 1600 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��XPath��,"//B[@id]"��ʾ��ѡһ�', '�ڵ�"B"�������ӽڵ�', '���о�������id��"B"�ڵ�', '"B"�ڵ��ǰ�������Ԫ��', '���о�������"B"��id�ڵ�', 1601, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������룬��ȷ����( ѡһ�� )', 'DECLARE ' || chr(13) || 'DBMS_OUTPUT.PUT_LINE(''���岿��''); ' || chr(13) || 'BEGIN ' || chr(13) || 'DBMS_OUTPUT.PUT_LINE(''��䲿��''); ' || chr(13) || 'END;', 'BEGIN ' || chr(13) || 'NUM NUMBER:=100; ' || chr(13) || 'DBMS_OUTPUT.PUT_LINE(''NUM ��ֵΪ:''||NUM); ' || chr(13) || 'END;', 'DECLARE ' || chr(13) || 'NUM NUMBER:=100; ' || chr(13) || 'BEGIN ' || chr(13) || 'NUM:=NUM+NUM/2; ' || chr(13) || 'DBMS_OUTPUT.PUT_LINE(''NUM ��ֵΪ:''||NUM); ' || chr(13) || 'END;', 'BEGIN ' || chr(13) || 'NUM NUMBER:=100; ' || chr(13) || 'DECLARE ' || chr(13) || 'NUM:=NUM+NUM/2; ' || chr(13) || 'DBMS_OUTPUT.PUT_LINE(''NUM ��ֵΪ:''||NUM); ' || chr(13) || 'END;', 1602, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ORACLE˵��������ǣ�ѡһ�', 'UNION���������в�������ظ���¼', 'UNION ALL�������㲻������ظ���¼', 'INTERSECT��������������������й�ͬ�Ĳ���', 'MINUS�����в����ڵڶ������ϵļ�¼', 1603, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Oracle�У���EMP���������У�' || chr(10) || '  ����' || chr(10) || 'NAME VARCHAR2(20)' || chr(10) || 'ADDR VARCHAR2(60)' || chr(10) || '  ����' || chr(10) || 'Ҫ��NAME''s address is ADDR��ʽ�������ݣ�����SQL�����ȷ���ǣ�ѡһ�', 'SELECT NAME   ''''''s address is ''   ADDR FROM EMP;', 'SELECT NAME || ''''''s address is '' || ADDR FROM EMP;', 'SELECT NAME   ''\''s address is ''   ADDR FROM EMP;', 'SELECT NAME || ''\''s address is '' || ADDR FROM EMP;', 1604, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������DispatchAction��˵����ȷ���ǣ�ѡһ�', '.ʵ��DispatchAction Bean��Ҫʵ��org.apache.struts.actions.DispatchAction�ӿڡ�', 'DispatchAction Bean�в���Ҫ����execute������', '����DispatchAction Bean��������ͨAction Beanû������', '��ͨ��http://localhost:8080/app/da.doֱ�ӷ���DispatchAction��', 1605, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У����й��ڸ���UMLͼ��˵����ȷ����(  )��' || chr(13) || '', '����ʱ��ͼ��״̬ͼ���ͼ��������ϵͳ�Ķ�̬ģ��' || chr(13) || '', 'ʱ��ͼ��ʾ������������������Ӧ�ⲿ�¼�����Ϣʱ��������״̬����' || chr(13) || '', '״̬ͼ�����ڶ�����������' || chr(13) || '', '�ͼ�ǰ�ʱ��˳��ģ���������' || chr(13) || '', 1606, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У����й�������ͼ��˵�����������(  )��' || chr(13) || '', '����ͼ�����ڽ��ص����ϵͳ���ܵ��û���' || chr(13) || '', '����ͼ������ȷ���û���ϵͳ����ʱ���ݵĽ�ɫ' || chr(13) || '', '������ͼ�У���Բ�α�ʾϵͳ�߽�' || chr(13) || '', '����֮��Ĺ�ϵ������չ��ϵ��������ϵ' || chr(13) || '', 1607, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Action���а������롰request.setAttribute("data", list)����������logic:iterateʹ����ȷ���ǣ�ѡһ�', '<logic:iterate property="list" var="item">${item.title}</logic:iterate>', '<logic:iterate name="list" id="item">${item.title}</logic:iterate>', '<logic:iterate property="data" var="item">${item.title}</logic:iterate>', '<logic:iterate name="data" id="item">${item.title}</logic:iterate>', 1608, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Spring��Hibernate���֮���������Щ����ᷢ����ѡһ�', '����д�κβ������ݿ�����ݣ������Լ��������ݿ�', '����д�κ�������������ݣ������Լ���������', '�����ӳ���ĸ��Ӷȣ�����ά��', '��� Hibernate �����ݿ����', 1609, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���´���������ǣ�ѡһ�' || chr(10) || '<bean id="myTxManager" class="org.springframework.orm.hibernate3.HibernateTransactionManager">' || chr(10) || '<property name="sessionFactory" ref="mySessionFactory"/>' || chr(10) || '</bean>', '����Hibernate�Ĺ���BeanΪmyTxManager', '����Hibernate���������BeanΪmyTxManager', '����SessionFactoryΪmyTxManager', '���϶�����', 1610, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ASP.NET�����ļ���һЩ�ص㣬����������ǣ�ѡһ�', 'ASP.NET �������������뾲̬���ݡ���̬ҳ��ҵ�����һ��洢��Ӧ�ó����Ŀ¼��νṹ�С�', 'ASP.NET ������ͨ��IIS�������ļ�����ֱ�ӵ����������', 'machine.config���ÿ�Ӧ��������������������', 'Web.configֻ�ܴ���ڸ�Ŀ¼��', 1611, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�й�ORACLE��INSTEAD OF������˵����ȷ���ǣ�ѡһ�', '����������Ĵ���Դ�����Ǳ�', '������������Ժ��ô���', '��������������ô�����ִ�в����滻DML���Ĳ���', '�����������Ȼ��ִ��DML���', 1612, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������У����������������������׶ε���(  )��' || chr(13) || '', '�������ϵͳ������Ҫ��' || chr(13) || '', 'ȷ�����ϵͳ�Ĺ���Ҫ��' || chr(13) || '', 'ȷ�����ϵͳ������Ҫ��' || chr(13) || '', 'ȷ�����ϵͳ������ƽ̨' || chr(13) || '', 1613, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����html��ǩ��ʹ������ȷ���ǣ�ѡһ�' || chr(10) || '', '<html:text type="hidden" name="opr" value="toList"/>' || chr(13) || '', '<html:submit class="btn">�ύ</html:submit>' || chr(13) || '', '<html:select property="from"><html:option value="1">�人</html:option></select>' || chr(13) || '', '<html:optionsCollection label="uname" value="uid"/>' || chr(13) || '', 1614, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У�����(  )������UML��Ӧ�ÿ�������' || chr(13) || '', '��Ϣϵͳ' || chr(13) || '', '����ϵͳ' || chr(13) || '', 'ҵ��ϵͳ' || chr(13) || '', '����ϵͳ' || chr(13) || '', 1615, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����Spring��Struts�ļ��ɣ�����˵��������ǣ�ѡһ�', 'Spring �ṩ�˲����չ���ƣ����Է������������������', 'Struts �ṩ�˲�����ƣ����Է������������������', 'Spring �����ļ�ֻҪ������·���оͿ��Ա� Struts �ҵ�', 'Spring �����ļ��� Action Bean �� id ����Ҫ�� Struts �����ļ��ж�Ӧ Action �� name ������ͬ', 1616, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʹ��Session��(  )��Ѷ����״̬�����ݿ����Ƴ�����ѡһ�' || chr(10) || '', 'delete()' || chr(13) || '', 'query()' || chr(13) || '', 'queryAll()' || chr(13) || '', 'query()' || chr(13) || '', 1617, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Spring����jdbc�����ݣ�����˵��������ǣ�ѡһ�', 'spring ����ͨ�� jdbc ��ʽ�������ӵ�', 'spring �� jdbc �������п���ѡ������ sql ���� hql', 'spring ���� jdbc �����ô洢����', 'spring ���� jdbc �޷��� jdbc �������ݿ�Ĳ���', 1618, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����BeanFactory˵��������ǣ�ѡһ�', '����һ���ӿ�', '��õ���XmlBeanFactory', 'BeanFactory�������bean�Ķ���ֻ��������һ�������ļ�', 'ApplicationContextҲ��һ��BeanFactory', 1619, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'session�����(  )����ʱ�ᴥ��session_onend�¼�����ѡһ�', 'count', 'abandon', 'add', 'remove', 1620, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ASP.NET�������֤ϵͳ�ǳ�����֧��4��ģʽ�����ã����²�������4��ģʽ���ǣ�ѡһ�', 'Windows����', 'Forms����', 'IIS����', 'None����', 1621, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET��,ĳ����Ա��һ��ҳ���Load�¼��б�д�����´��룬��֪��ҳ��ʹ����������档���������û��ֱ���12��10����12��12�����˸�ҳ�棬����˵����ȷ���ǣ�ѡһ�' || chr(10) || 'private void Page_Load(object sender,System.EventArgs e)' || chr(10) || '{    Response.Write(DateTime.Now.ToShortDateString());  }', '��һ���û�һ�����12��10���ڶ����û�һ�����12��12', '��һ�û�һ�����12��10���ڶ����û����12��10����12��12', '��һ���û����ڶ����û�һ�������12��10', '��һ���û����ڶ����û����ܶ����12��12', 1622, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����´���' || chr(10) || 'package x.y;' || chr(10) || '  public class Foo {' || chr(10) || '      public Foo(Bar bar, Baz baz) {' || chr(10) || '        // ...' || chr(10) || '    }' || chr(10) || '}�ܹ���ȷ��ʹ�ù��캯������Bean�������ǣ�ѡһ�', '<bean id="exampleBean" class="examples.ExampleBean">' || chr(13) || '<constructor-arg type="int" />' || chr(13) || '      <constructor-arg type="java.lang.String" />' || chr(13) || '</bean>', '<bean id="exampleBean" class="examples.ExampleBean">' || chr(13) || '<constructor-arg type="int" value="7500000"/>' || chr(13) || '      <constructor-arg type="string" value="42"/>' || chr(13) || '</bean>', '<bean id="exampleBean" class="examples.ExampleBean">' || chr(13) || '<constructor-arg type="int" value="7500000"/>' || chr(13) || '      <constructor-arg type="java.lang.String" value="42"/>' || chr(13) || '</bean>', '<bean id="exampleBean" class="examples.ExampleBean">' || chr(13) || '<constructor-arg value="7500000"/>' || chr(13) || '      <constructor-arg value="42"/>' || chr(13) || '</bean>', 1623, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Spring��DAOģ��Ĺ����ǣ�ѡһ�', '�ṩ�ͳ���ORM��ܵļ���', '�ṩJDBC�ĳ���㣬���JDBC����Ժ�����ʽ�������', 'Web�е��ļ��ϴ�', '�ṩ�ͳ���ORM��ܵļ���', 1624, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'RequiredFieldValidator�ؼ���ErrorMessage������������ѡһ�', '���ô�����Ϣ', '���õ���֤�Ŀؼ�', '��λ��������', '�������������', 1625, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ͨ��ContextLoaderPlugin��������Struts�����÷����ǣ�ѡһ�', '<plug-in className="org.springframework.web.struts.ContextLoaderPlugIn">' || chr(13) || '  ' || chr(9) || '' || chr(9) || '<set-property property="contextConfigLocation"/>' || chr(13) || '</plug-in>', '<plug-in className="org.springframework.web.struts.ContextLoaderPlugIn">' || chr(13) || '  ' || chr(9) || '' || chr(9) || '<set-property  value="/WEB-INF/applicationContext.xml"/>' || chr(13) || '</plug-in>', '<plug-in className="org.springframework.web.struts.ContextLoaderPlugIn">' || chr(13) || '  ' || chr(9) || '' || chr(9) || '<set-property property="contextConfigLocation"' || chr(13) || '     ' || chr(9) || '' || chr(9) || '' || chr(9) || 'value="/WEB-INF/applicationContext.xml"/>' || chr(13) || '</plug-in>', '<plug-in className="org.springframework.web.struts.ContextLoaderPlugIn">' || chr(13) || '  ' || chr(9) || '' || chr(9) || '<set-property property=" ContextLoaderPlugIn "' || chr(13) || '     ' || chr(9) || ' ' || chr(9) || '' || chr(9) || 'value="/WEB-INF/applicationContext.xml"/>' || chr(13) || '</plug-in>', 1626, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�У�Ϊ�˴ӵ�ǰҳ����ת��һ����ͬĿ¼����ΪMain.htm��ҳ�棬����ķ�����ȷ���ǣ�ѡһ�', 'Server.Execute("Main.htm")', 'Server.Transfer("Main.htm")', 'Response.Redirect("Main.htm")', 'Response.Write("Main.htm")', 1627, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����Ҫȷ���û��������30��ֵ��Ӧ��ʹ��(  )��֤�ؼ�����ѡһ�', 'RequiredFieldValidator', 'CompareValidator', 'RangeValidator', 'RegularExpressionValidator', 1628, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�ڿ���ϵͳ�����ڿ���ʶ��Ķ�д��Ӧ������Ϊ�� ��ģʽ��ѡһ�', '����ģʽ������ǩ��ȡ', '��ʱģʽ������ǩ��ȡ', '����ģʽ�����ǩ��ȡ', '��ʱģʽ�����ǩ��ȡ', 1629, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', 'ĳ����Ա����һ��ASP.NETӦ�ó���,��Ӧ�ó��������Ŀ¼����һ����Ϊstudent.xml���ļ�,������Ŀ¼����һ��Webҳ��,Ϊ���ڸ�Webҳ���н�student.xml�����ݶ�ȡ��һ��DataSet������,���б�����ȷ���ǣ�ѡ���', 'DataSet ds = new DataSet();    ds.ReadXml("student.xml",XmlReadMode.ReadSchema);', 'DataSet ds = new DataSet();    ds.ReadXml(Server.MapPath("student.xml"),XmlReadMode.ReadSchema);', 'DataSet ds = new DataSet("student");    StreamReader reader = new StreamReader(Server.MapPath("student.xml"));    ds.ReadXml(reader);', 'DataSet ds = new DataSet(student);    StreamReader reader = new StreamReader(Server.MapPath("student.xml"));    reader.read(ds);', 1630, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET����Button�ؼ�myButton��Ҫ�ǵ����ؼ�ʱ������������ҳ��http://www.abc.com, ��ȷ�Ĵ���Ϊ��ѡһ�', 'private void myButton_Click(object sender, System.EventArgs e){Redirect("http://www.abc.com/");}', 'private void myButton_Click(object sender, System.EventArgs e)' || chr(13) || '' || chr(10) || '{Request.Redirect("http://www.abc.com/");}', 'private void myButton_Click(object sender, System.EventArgs e)' || chr(13) || '' || chr(10) || '{Reponse.Redirect("http://www.abc.com/");}', 'private void myButton_Click(object sender, System.EventArgs e)' || chr(13) || '' || chr(10) || '{Request.Redirect("http://www.abc.com/");return true;}', 1631, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '����HttpHandler�����˵����ȷ���ǣ�ѡ���', '������������յ�', '��ʵ����IhttpHandler�ӿ�', 'IsReusable��������Ϊfalseʱ����������ֻ��ʹ��һ��', '�ļ���׺����.ashx', 1632, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP��NET�У����й����û��ؼ����Զ���ؼ��ıȽϣ�˵����ȷ���ǣ�ѡһ�', '�Զ���ؼ����Կ�Ӧ�ó���ʹ��', '�û��ؼ����Կ�Ӧ�ó���ʹ��', '�Զ���ؼ���.ascx�ļ�', '�û��ؼ���dll�ļ�', 1633, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����˵����ȷ���ǣ� ��', '����SQL Server Mobile ���ݿ�ʱ�������÷�������', '����SQL Server Mobile ���ݿ�ʱ�������÷�������', '����ʹ���ƶ��豸�ϵĳ���ֱ������SQL Server ���ݷ�����', '����ʹ���ƶ��豸�ϵĳ���ֱ������SQL Server ���ݷ�����', 1634, 327);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���治���ڿռ����ݿ��ص���� �� �� ѡ��һ�', '�ռ����ݿⲻ������ŵ���Ҫ�ص��������ݣ����д����Ŀռ�����', '�ռ����ݿ����洢��������һ���ر��', '�ռ����ݿ������Ӧ�ù㷺����������о�����������������������滮����Դ��������̬����������������·�����', '�ռ����ݿ���ר�Ŵ�ſռ����ݵģ����ù�ϵ���ݿ����ϵͳ���ܴ�ſռ���Ϣ', 1635, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Դ�ļ��ĺ�׺��Ϊ��  ����ѡ��һ�', 'txt', ' doc', ' property', ' properties', 1636, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ȷ��ָ������ǣ� ����ѡһ�', 'һ��ָ���������ָ��ͬһ���͵ı���', 'һ�������ĵ�ַ��Ϊ�ñ�����ָ��', 'ֻ��ͬһ���ͱ����ĵ�ַ���ܴ����ָ������ͱ�����ָ�����֮��', 'ָ��������Ը����������������ܸ�������', 1637, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NETҳ���У�ʹ����֤�ؼ��������û�����ĳ��������1900��2010�����£����������ܹ�ʵ�֣�ѡһ�', '<asp:rangevalidator controltovalidate="txtBorth" type="Integer" minimumvalue="1900" maximumvalue="2010" errormessage="�Ƿ���" display="dynamic" runat="server" > </asp:rangevalidator>', '<asp:CompareValidator controltovalidate="txtBorth" type="Integer" minimumvalue="1900" maximumvalue="2010" errormessage="�Ƿ���" display="dynamic" runat="server" > </asp:rangevalidator>', '<asp:CompareValidator controltovalidate="txtBorth" type="Integer" valuetocompare="1900" operator = "GreaterThan" valuetocompare="2010" operator = "LessThan" errormessage="�Ƿ���" display="dynamic" runat="server" > </asp:rangevalidator>', '<asp:RegularExpressionValidator controltovalidate="txtBorth" type="Integer" validationexpression = "1900-2010" errormessage="�Ƿ���" display="dynamic" runat="server" > </asp:rangevalidator>', 1638, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET�����й���Response ,Request�����˵��������ǣ�ѡһ�', 'Request���ڼ����������������������������Ϣ', 'Request���ڽ����ݴӷ��������͵������', 'Response�����Redirect�������ڽ��ͻ����ض���ָ����ҳ��', 'Response�����Write���������ڿͻ��������Ϣ', 1639, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ĳ�����ھ�˾ר�ų��۶����Ʊ��������ķ���Ȩ������ҹ�˾ʹ�����У����������Ϳ��԰ѹ�Ʊ���۷����������ټҿͻ�������������κζ��ƻ��޸ġ���ѡһ�', '��д�����Ʊ�ӿ�����Ӧ��ͬ�Ŀͻ���', 'Web����', 'EJB', 'RMI', 1640, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ѡ���У�����Struts2�����ļ�˵����ȷ���ǣ�   ����ѡ��һ�', '��������WEB-INF/classesĿ¼��', '����ΪStruts.xml', '����Actionʱ�������ð���Ϣ', 'ʹ��<forward>Ԫ������ת��', 1641, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'GIS�����������ݾ��루��ѡ��', '����������������ϵ ', '�ǿռ���������ϵ', '���������������������ϵ', '����ռ�λ������ϵ', 1642, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������ArcGIS�����������Ǵ���ģ���ѡ��', ' Geodatabase�еĹ�ϵ���ܹ���ArcCatalog��Ŀ¼���п��� ', ' ArcCatalog�Ǳ༭�������ݺʹ�����ͼ����ҪӦ�ó���', 'ArcGIS��һ��personal geodatabaseͨ������ʹ��΢���Access��Ϊ����RDBMS������ҵ��geodatabase����ʹ������Oracle��SQL Server������RDBMS', 'Coverage��ʽ��������ArcGIS���ǲ��ɱ༭��', 1643, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '���¹���ƥ��ģʽ˵����ȷ���ǣ�����ѡ��', '��ƥ��ĳ��ּӴ��˹��ľ�׼�ԣ�����Ԥ����˷ѣ��ٶ�ϵͳÿ���ƻ����ύ500���񶨹ؼ���', 'ʹ�ù㷺ƥ�������˼���ؼ��ʵ����۹��̣�ֻҪ�ύ�����򵥵Ĺؼ��ʣ���ôϵͳ��������ƥ�����ؼ���������ƹ�λ������չ��', 'ʱ�����������ʱ��棬���������ʽ����������عؼ��ʷ���񶨴ʣ���߹��Ч��', '�㷺ƥ�串�ǵķ�Χ���', 1644, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '���¹��ڹؼ����Ƽ������и߼���ѯ���ܵ�˵������ȷ���ǣ�����ѡ��', '����ѡ����ʾ����������·ݡ�����ʾ�Ƽ��ؼ����ڹ�ȥ12��������������ߵľ����·�', '���ڡ����������´ʻ���Ƽ�������·�������������ĳ����ĳЩ����ʱ����������40����', '����ѡ����ʾ������չ�ʡ��󣬴����Ƽ�������ִ��е���Ĺؼ���', '���� �����������´ʻ���Ƽ�������·�������������ĳ����ĳЩ�����ʱ�Ƽ�����н�������ְ�����Щ����Ĺؼ���', 1645, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'nesC���Ա�д�ĳ����ļ�����չ���ǣ�����ѡһ�', '.h', '.nc', '.cs', '.c', 1646, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һ��ArcMap��MXD�ļ��У�ͨ��������һ��ѡ������ԶԻ��򣬿��Ը���ͼ������ʾ��ͶӰ��Ϣ����ѡ��', 'data frame', 'data layer', 'feature dataset', 'feature class', 1647, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ArcMap�����ӣ�joins���͹�����relates����������������ȷ�ģ���ѡ��', '���Ӻ͹�ϵ�洢��һ����ͼ�ĵ��� ', ' ArcMap��ֻ�����еı�������ܴ���һ����ϵ ', 'ͨ�����Ա༭�������������ϵ���б༭����ֵ ', '���Ӵ��������������ArcMap�е��� ', 1648, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ʵ�ֵ������У�ѡ��һ�', 'ʵ�ֽ��������ͽ����㣬���ֻ�����������㣬�����н�����', '����ܽ��в�λ����', '����˴����������ι��������ڹ���', '��ʱ����ѯ���ܲ鿴���������������', 1649, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���¹���jQuery������������ǣ�������ѡһ�', 'jQuery ��һ�� JavaScript ������', 'jQuery ����ؼ��� JavaScript ���', ' jQuery ����ּ�� ��write less��do more��', ' jQuery�ĺ��Ĺ��ܲ��Ǹ���ѡ��������HTMLԪ�أ�Ȼ�����ЩԪ��ִ����Ӧ�Ĳ���', 1650, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ť��ʲô���ܣ���ѡ��', '��ArcMapĿ¼���е����ݺ�Դ��ͼ��ǩ���л� ', '�����û���ArcMap��Ϊ����ѡ��ͬ��ģ��', ' �ڲ�����ͼ�У�ֹͣ��ҳ���л��Ƶ�ͼ���� ', '��XMLԪ����ת��Ϊһ���µĿ��Զ���ĸ�ʽ ', 1651, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�йع̶��ʲ���Ƭ�е�Ԥ��ʹ���ڼ�����Ԥ�ƾ���ֵ������������ѡ�������õģ�  ��(ѡ��һ��)', '�䶯��ʽ���', 'ʹ��״̬���', '��Ƭ������', '�۾ɷ�������', 1652, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�յ����Ҳ���Aԭ����һ�����ò���������Ϊ300000����Ϊ���ҹ�˾��Ͷ�ʡ������������Ϊ������ʵ���ʱ��������ʱ�     300000������跽Ϊ��     ��(ѡ��һ��)', '�裺ԭ���ϡ���A����      300000', '�裺���д��              300000', '�裺Ӧ���ʿ�              300000', ' �裺Ӧ���ʿ��A����    300000', 1653, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '���¹���ValueStack˵����ȷ���ǣ�ѡ�����', 'ÿ��Action����ʵ��ӵ��һ��ValueStack����', 'ÿ��Action����ʵ��ӵ�ж��ValueStack����', 'Action�з�װ����Ҫ������һ��ҳ���ֵ����Щֵ��װ��ValueStack������', 'ValueStack��������ʼʱ���������������ʱ����', 1654, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������ʵ���͵�����Ϣϵͳ���� �� �� ѡ��һ� ', 'MapGISũ����ε������ϵͳ', 'MapGIS����ƽ̨', 'Mapinfoƽ̨', 'ArcGIS9.x', 1655, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ArcGIS�Ŀͻ�������ĳ����д�����������ѡ��', '�����ӵ������һ��ArcEditor����ɲ��ܶ��ƽӿ� ', '�����ƶԻ����ʱ���������ϵİ�ť����ͨ���϶������������Ǵӹ����������ߣ�������ӻ���ɾ�� ', ' Context�˵����Ա��޸� ', '����Ϊ����ָ����ݼ� ', 1656, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '���¹��ڹؼ��ʷ����˵��������ǣ���ѡ��', '�ƹ㵥Ԫ�ǹ���ؼ��ʴ����С��λ�����Ա��ڸ�������Ե�׫д����', '�ƹ㵥Ԫ��ҪĿ����ȷ���ڴ����в���ͨ������Ʈ��ʱ���ܱ�֤���ͨ˳���ﵽ���õ��ƹ�Ч��������ֻҪ���ṹ��ͬ�Ĺؼ��ʷֵ�ͬһ��Ԫ���ɣ�����Ҫ�������', '������������ṹ��ͬ�Ĺؼ�������ͬһ�ƹ㵥Ԫ���ܹ��ﵽ���õ��ƹ�Ч�� ', '������Ʒ�ƴʷֵ�ͬһ�ƹ㵥Ԫ������������Ʒ�ƵĹؼ��ʣ���һЩר��Ʒ���ʲ����ƣ�������������Ʒ��', 1657, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ArcMap��ʲô�ط��������ݿ�ܵ�����ϵ������ѡ��', '���ļ��˵��ĵ�ͼ����', '�ڵ�ͼ���Ե�General��ǩҳ��', '�ڹ��߲˵��� ', '�����ݿ�ܵ������� ', 1658, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������ж�ArcGIS�ռ�����������ѵ����������ѡ��', '������ѡ��Ҫ�����ܵļ��η�Χ ', '����Ѹ�ٶ�λƥ��ѡ���׼��Ҫ�� ', '����Ҫ�غͱ������ֶ�֮�������', 'һ����ѡ��Ҫ�ص�һ������ֵ ', 1659, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����۶���������ʱ�������Ҫ�鿴�����ݹ������ɵ����۱��۵�������У�   ��������ѡ��һ�', '�ϲ�', '�²� ', '����', '����', 1660, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ʹ��ArcView 9 ����ļ���Overlay�������У��ĸ������ǿ��õģ�����ѡ��', ' Erase ', 'Update', 'Split ', ' Intersect ', 1661, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ArcMap������ʽ��������ȷ���������ѡ��', ' һ��ArcMap��ͼ�ĵ���ֻ�ܷ���һ��.style�ļ�', ' ���ڵ�styles���Ա��༭�������µ�styles���ܱ����� ', ' Route hatch�Ƿ�����ʽ��һ����ʽ ', ' ����ſ���ֱ�Ӵ�JPEGͼ���ļ����� ', 1662, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�ɽ��е��ݷ���˲�������Ա�У�ѡ��һ�', '�����Ȩ�޵�������Ա', '���ݵ�ԭ�����', 'ϵͳ����Ա', '����������Ա������', 1663, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '��ȡ<div id="content">���ݡ�</div>��ǩ����ı����ݡ���ѡ�����', '$("#content").val();', '$("#content").html();', '$("#content").text();  ', '$("#content").innerHTML();', 1664, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������ArcGIS XML����/������������������ǣ���ѡ��', '��XML�����ռ���ĵ�����ʱ����һ��ѡ�����ѡ�񵼳���ЩҪ���� ', ' ����һ��XML�����ռ��ĵ����뵽һ��geodatabase��ʱ����һ��ѡ�����ѡ������ЩҪ���� ', '�����һ��XML�����ռ��ĵ����͸�һ����ArcGIS�û������ĵ�Ӧ�ô洢�ڡ���׼���ĸ�ʽ�� ', '����XML����ѡ����ܹ��������缸����������˵�geodatabase��Ϊ', 1665, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���K/3 10.3����ϵͳ�У�������ĩ���˵���������ȷ����(ѡ��һ��)', '��ĩ���˻�ѹ�����Ŀ���Ϊ�̶���Ŀ��ֵ������һ��', '��ĩ���˺���һ�ڵĹ������ݲ������޸�', '��ĩ���˺󣬹�����Ŀ���Ϊ�䶯�Ľ���ɾ��', '��ĩ�����ṩ�˰��κͰ��µĽ��˷���', 1666, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Դ�ļ��ĺ�׺��Ϊ___________��(ѡ��һ��)', 'txt', 'doc', 'property', 'Properties', 1667, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '�Ա����ṩ��Щ��ʽ��������ҽ�������( )(ѡ������)', '���������ؼ��� ', '��������������̹ؼ���', '�����������ڵ�  ', '�����ƹ���', 1668, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������ִ����ϣ�ҳ���ϵ���ʾ������ʲô?( )' || chr(10) || '<?' || chr(10) || '   $a=10;' || chr(10) || '   echo ��a++:��.$a++;' || chr(10) || '   echo������a����ֵ�ǣ���.a .��<br>��; ' || chr(10) || '   echo ��- -a:��.$a- -;' || chr(10) || '   echo������a����ֵ�ǣ���.a .��<br>��;' || chr(10) || ' ?>' || chr(10) || '', 'a++:11 ����a����ֵ��: 11  - -a:9 ����a����ֵ��: 9    ', 'a++:10 ����a����ֵ��: 11  - -a:10����a����ֵ��: 9', 'a++:10����a����ֵ��:  11  - -a:9����a����ֵ��: 9', '���϶�����ȷ', 1669, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���´���ִ�н��(ѡ��һ��)' || chr(10) || '<?php' || chr(10) || 'mysql_connect("localhost","root","")' || chr(10) || '$result = mysql_query("select id,namefrom tb1");' || chr(10) || 'while($row =mysql_fetch_array($result,MYSQL_ASSOC))' || chr(10) || '{echo "ID:" . $row[0] ."Name:" . $row[];}' || chr(10) || ' ' || chr(10) || '?>' || chr(10) || '', ' ����', 'ֻ��ӡ��һ����¼', 'ѭ�����д�ӡȫ����¼', ' ���κν�� ', 1670, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'RFID�豸����Ƶ��������ɷ�Ϊ���࣬���������ȷ���ǣ� ����ѡһ�', '��Ƶ����Ƶ������Ƶ��΢��', '��Ƶ����Ƶ����Ƶ������Ƶ', '��Ƶ����Ƶ������Ƶ����Ƶ', '��Ƶ����Ƶ����Ƶ��΢��', 1671, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����˵����ȷ���ǣ�(ѡ��һ��)', 'ÿ�����̶��������Լ��� java �����(VM)�С�', 'Ĭ������£�ÿ��Ӧ�ó����о��������Լ��Ľ����У����Ҵ˽��̲��ᱻ���١�', ' ÿ��Ӧ�ó���ᱻ����һ��Ψһ�� linux �û� ID���Ӷ�ʹ�ø�Ӧ�ó����µ��ļ��� �����û�Ҳ���Է��ʡ�', 'һ��Ӧ�ó������ݣ��������ⱻ����Ӧ�ó��������ʡ�', 1672, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'HTML��ǩ<title>��֮��</title>��ʾ����(��ѡ��', '�ؼ���', '����', '��վ�ı���', '��վ����', 1673, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����Ҫʹ�ö��ǩ��ȡ����ʱ����Ҫ����д�����ã� ��״̬��ѡһ�', '����ģʽ+���ǩʶ��', '��ʱģʽ+���ǩʶ��', '����ģʽ+���ǩʶ��', '���Ͼ���', 1674, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ȡJava��ȡ���ݿ������İ��ǣ���(ѡ��һ��)' || chr(10) || '' || chr(10) || '', ' java.sql ', ' java.awt', ' java.lang', ' java.swing', 1675, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����Struts��Spring��Hibernate�ļ��ɿ�ܣ�����˵����ȷ���ǣ�ѡһ�', 'ʹ��SSH ��ܿ�����Ŀ�����������˴������ù������Ӷ��ή�Ϳ�����Ч��', '������ܿ����ö��ַ�ʽ���м���', 'ʹ�� SSH ��ܿ���������ʵ�ָ��ӵ�ҵ���߼�', 'ʹ�� SSH ��ܿ��������ڹ��츴�ӵ�ҳ��ͽ�������', 1676, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '������ȷ���У���(ѡ������)', 'call by reference���ܸı�ʵ�ʲ����Ĳο���ַ', 'call by reference�ܸı�ʵ�ʲ����Ĳο���ַ', 'call by reference�ܸı�ʵ�ʲ���������', 'call by value����ı�ʵ�ʲ�������ֵ', 1677, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ͬ���߳��ڵ���Actionʱ��������Actionʵ��������(ѡ��һ��)', '1��', '2��', 'ÿ���̴߳���1����', '�����Զ������á�', 1678, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ƾ֤��Ϊ�����֣�    ��(ѡ��һ��)', '�տ�ƾ֤������ƾ֤', 'ԭʼƾ֤������ƾ֤', ' �տ�ƾ֤��ͨ��ƾ֤', ' ԭʼƾ֤������ƾ֤', 1679, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����struts1��struts2�Աȵ�˵����ȷ���ǣ�ѡ��һ�', 'struts1Ҫ��Action��̳�struts1����е�Action���࣬struts2����һ����Ҫ�̳У�������POJO��', 'struts1�е�Action�����̰߳�ȫ�ģ���struts2�е�Action���̰߳�ȫ��', 'struts1��struts2�ж�ʹ��ActionForm�����װ�û�����������', 'struts1ʹ��OGNL���ʽ������֧��ҳ��Ч����struts2ͨ��ValueStack����ʹ��ǩ�����ֵ', 1680, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���ڹ̶��ʲ��ġ����¹�����������ʱ����������������Խ��б��棿 ����ѡ��', '��Ԥ�ƹ����������ݡ����ù�������+�����¹�������', '��Ԥ�ƹ��������� = �����ù�������+�����¹�������', '��Ԥ�ƹ����������������ù�������+�����¹�������', 'D. ���϶�����', 1681, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', 'struts2�ڿ���������һ����Ҫ�����Ӧ���Եģ�  ���ͣ�  ����ѡ����', ' setter����', ' as����', 'getter����', 'is����', 1682, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��jquey�У������Ҫ��DOM��ɾ������ƥ���Ԫ�أ�������һ������ȷ�� ��ѡ��һ�', 'delete()', 'empty()', 'remove() ', 'removeAll()', 1683, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������Android dvm�Ľ��̺�Linux�Ľ���,Ӧ�ó���Ľ���˵����ȷ���ǣ�(ѡ��һ��)', 'DVMָdalivk�������.ÿһ��AndroidӦ�ó��������Լ��Ľ���������,��һ��ӵ��һ��������Dalvik�����ʵ��.��ÿһ��DVM������Linux�е�һ������,����˵������Ϊ��ͬһ������.', 'DVMָdalivk�������.ÿһ��AndroidӦ�ó��������Լ��Ľ���������,��һ��ӵ��һ��������Dalvik�����ʵ��.��ÿһ��DVM��һ��������Linux�е�һ������,����˵����һ������.', 'DVMָdalivk�������.ÿһ��AndroidӦ�ó��������Լ��Ľ���������,��ӵ��һ��������Dalvik�����ʵ��.��ÿһ��DVM ��һ��������Linux �е�һ������,����˵����һ������.', 'DVMָdalivk�������.ÿһ��AndroidӦ�ó��������Լ��Ľ���������,��ӵ��һ�������� Dalvik�����ʵ��.��ÿһ��DVM������Linux �е�һ������,����˵������Ϊ��ͬһ������.', 1684, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '�Ա����ڷ�����Ʒʱ���ṩ���ļ��ַ�����ʽ������ѡ��  ��(ѡ�����)', '��ʱ����', 'һ�ڼ۷���', '�������', '��������', 1685, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ĸ����������ݶ������ԣ�(ѡ��һ��)', 'select', 'create', 'drop', 'alter', 1686, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������ֵ������Ͳ����Ա������̳ǵ��̣�( )(ѡ��һ��)', 'Ʒ���콢��', 'Ʒ��רӪ�� ', 'Ʒ��ֱ����', 'Ʒ��ר����', 1687, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�� Activity �У���λ�ȡ service ����(ѡ��һ��)', '����ͨ��ֱ��ʵ�����õ���', '����ͨ���󶨵õ���', 'ͨ�� startService()', 'ͨ�� getService()��ȡ', 1688, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����ȡ��mysql���ݿ�ϵͳ������״̬��Ӧ����ʲô������(ѡ��һ��)', ' mysql_ping', 'mysql_status', ' mysql_stat', 'mysql_info', 1689, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ʹ�� MediaPlayer ���ű����� sdcard �ϵ� mp3 �ļ�ʱ��������(ѡ��һ��)', '��Ҫʹ�� MediaPlayer.create �������� MediaPlayer', 'ֱ�� newMediaPlayer ����', '��Ҫ���� setDataSource ���������ļ�Դ', 'ֱ�ӵ��� start ���������������ļ�Դ', 1690, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'GIS�����������ݾ��루��ѡ��', '����ռ�λ������ϵ', '�ǿռ���������ϵ', '���������������������ϵ', '����������������ϵ', 1691, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��struts2�������ã���Ԫ�������ó�����ѡ��һ�', '<const>', '<constants>', '<constant>', '<constant-mapping>', 1692, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����java�������£��������У�����ǣ�ѡһ�' || chr(10) || 'public static void main(String[] args){' || chr(10) || '    int i;' || chr(10) || '    System.out.println("i=" + i);' || chr(10) || '}', '�������', '����ʱ��������', '�������У����i=-1', '�������У����i=0', 1693, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Java�����У����б�������͸�ֵ������ǣ�ѡһ�', 'short i=5;' || chr(13) || 'int j=i;', 'char c = "c"; ' || chr(13) || 'int j=c;', 'float f = ''c''+1;', 'float i=5;' || chr(13) || 'double d=i;', 1694, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'JAVA�����к�������ֵ��������(    )�����ģ�ѡһ�', 'return����еı��ʽ����', '���øú�������������������', '���ú���ʱ��ʱ����', '���庯��ʱ��ָ���ķ���ֵ����', 1695, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�о������Java���룬��x=2ʱ,���н���ǣ�ѡһ�' || chr(10) || 'switch(x){' || chr(10) || '    case 1:' || chr(10) || '        System.out.println(1);' || chr(10) || '    case 2:' || chr(10) || '    case 3: ' || chr(10) || '        System.out.println(3);' || chr(10) || '        System.out.println(4);' || chr(10) || '}', 'û���κ�������', '������Ϊ3', '������Ϊ3��4', '��������1��3��4', 1696, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��WinForm�����У��Ա��뷽ʽ�󶨵�DsHer���ݼ��е�T1��DataGridView�ؼ�gridHer,��ȷ�Ĵ���Ϊ��ѡһ�', 'gridHer.DataSource=DsHer.Tables["T1"];', 'gridHer.Bind(DsHer,"T1");', 'gridHer.SetDataBinding(DsHer,"T1");', 'gridHer.DataBindings =DsHer["T1"];', 1697, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '��������������������ȷ���ǣ�ѡ���', '��������Ժ�ʵ�������Զ�ǿ�������ݵ�Ψһ��', '����ָ����ֵ����Ч����', '�е�����������ǿ�����������', '�洢���̿������������������', 1698, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '�������������ԣ�����˵����ȷ���ǣ�ѡ���', '����������ͨ�����������֮������ù�ϵʵ�֡�', '����������ͨ�������������͡����Լ����ʵ�֡�', '������������ͨ�����ݲ�������������ݵĿ�����ʵ�ֵġ�', '����������д洢����Ϣ�໥��������ôֻҪ�޸���һ��������һ����ҲҪ������Ӧ���޸ģ���Ƹ����������е����ݾ߱����������ԡ�', 1699, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ADO.NET��,��֪reader��һ��DateReader����,���д�����1����������"True",�������2���������ǣ�ѡһ�' || chr(10) || 'Console.WriteLine(reader.Read());  //1' || chr(10) || 'Console.WriteLine(reader.IsClosed);//2', 'True', 'False', '��ȷ��', '�����쳣', 1700, 103);
commit;
prompt 1700 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'SEO����ʦͨ������Google webmastersָ����(��ѡ��', '�ȸ����ʦ', '�ȸ�����  ', '�ȸ�ؼ��� ', '�ȸ����Ա����', 1701, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������ʽ Intent ��ȷ���ǣ�(ѡ��һ��)' || chr(10) || '' || chr(10) || '', 'android ��ʹ�� IntentFilter ��Ѱ������ʽ Intent ��صĶ���', 'ͨ�����������Ѱ���� intent ������Ķ���', '��ʽ Intent ����������Ӧ�ó����ڲ�������Ϣ', 'һ�������� IntentFilter �����ֻ����Ӧ��ʽ Intent ����', 1702, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���в����ֻ�����ϵͳ�ģ�(ѡ��һ��)', ' Android', ' iPhone', 'Ubuntu ', 'Windows Phone', 1703, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��EPCSDK.dll��̬�����ṩ�˶��ǩʶ��ĺ���IdentifyUploadedMultiTags��������ʽ���£�����Ҫ��5�����������Ⱥ�˳��ֱ���� ����ѡһ�' || chr(10) || '[DllImport("EPCSDK.dll")]' || chr(10) || 'public static extern bool IdentifyUploadedMultiTags(IntPtr hCom, out byte tagNum, byte[] tagIds, byte[] devNos, byte[] antennaNos);', '���ھ�������յ��ı�ǩ�������ձ�ǩEPC�ı��������ַ���豸�ŵ������ַ�����ߺŵ������ַ', '���ھ�������յ��ı�ǩ���鳤�ȡ����ձ�ǩEPC�ı��������ַ���豸�ŵ������ַ�����ߺŵ������ַ', '���ھ�������յ����ֽڳ��ȡ����ձ�ǩEPC�ı��������ַ�����ߺŵ������ַ����ͷ��ַ', '���ھ�������յı�ǩ������ǩ�����ַ�����ձ�ǩEPC�ı�����ַ����ͷ��ַ', 1704, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'դ��ṹ���ص��ǣ���ѡ��', '��λ���ԣ���������', '��λ���ԣ���������', '��λ�������������� ', '��λ��������������', 1705, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��struts.xml�ļ��У�ʹ�ã���Ԫ�ض�����������ѡ��һ�', '<interceptor-ref>', '<interceptor> ', '<intercep>', '<default-interceptor-ref>', 1706, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����һ����ʽ, �������õ�ǰҳ����IDΪcompact Ԫ�ص����ݵ�����Ϊб��. ������ʵ�ָù��ܵĴ����ǣ�ѡһ�', '<STYLE TYPE="text/css">   compact{font-style:italic;}</STYLE>', '<STYLE TYPE="text/css">   @compact{font-style:italic;}</STYLE>', '<STYLE TYPE="text/css">   .compact{font-style:italic;}</STYLE>', '<STYLE TYPE="text/css">   #compact{font-style:italic;}</STYLE>', 1707, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ʹҪ��ͼƬ�ļ�asrlogo.jpg����ҳ�棬��Ϊ��ͼƬ�����������"ASR Outfitters Logo".Ϊ���������ȷ���ǣ�ѡһ�', '<IMG SRC =asrlogo.jpg> ASR Outfitters Logo</IMG>', '<IMG SRC=asrlogo.jpg ALT="ASR Outfitters Logo">', '<IMG SRC=asrlogo.jpg> ALT="ASR Outfitters Logo">', '<IMG SRC=asrlogo  ALT="ASR Outfitters Logo">', 1708, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C#��,���й��ڴ�������Ժͷ���,˵����ȷ���ǣ�ѡһ�', '����ڴ���ı߿�����ʾ����󻯿������С����,�������ť������ʾ', '��������˴����AcceptBtton����,���û�����Enter��ʱ,������ AcceptButton����ָ���İ�ť��Click�¼�', '��������˴����CancelButton����,���û�����Esc����ʱ,���彫��ر�', '������岻�ɼ�,���ô����Activate������,���彫��ʾ����', 1709, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts2�ԣ�B��Ϊ���ģ����ã� ���Ļ��ƴ����û�����ѡ��һ�', 'Struts', ' WebWork', ' ������', ' jar��', 1710, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2�У�������Action�ӿ��ж�����ַ����������ǣ�   ����ѡ��һ�', 'SUCCESS', 'FAILURE', ' ERROR', ' INPUT', 1711, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', 'struts2�ڿ���������һ����Ҫ�����Ӧ���Եģ�  ���ͣ�  ����ѡ����', ' setter����', ' as����', 'getter����', 'is����', 1712, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2��������Ҫ�ڣ�  �������ļ��н������ã�ѡ��һ�', 'web.xml', 'struts.xml', 'application.porperties', 'webwork.xml', 1713, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������struts2��ǩ����ǣ�  ����ѡ��һ�', ' <s:textfield>', ' <s:textarea>', ' <s:submit>', '<select>', 1714, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��JSPҳ���п���ͨ��Struts2�ṩ�ģ�   ����ǩ��������ʻ���Ϣ��ѡ��һ�', '<s:input>', ' <s:messages>', ' <s:submit>', '<s:text>', 1715, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2�Զ�������ת��������ʵ�ֵĽӿ��ǣ�  ����ѡ��һ�', 'Convert', 'TypeConverter', 'StrutsTypeConverter', 'StrutsConvert', 1716, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', 'struts2����ע��ȫ������ת������˵����ȷ���ǣ�  ����ѡ����', '�����ṩxwork-conversion.properties�ļ�', 'ע���ļ��ĸ�ʽΪ����������=��Ӧ����ת����', 'ע���ļ��ĸ�ʽΪ����Ӧ����ת����=��������', '����˵��������ȷ', 1717, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2�У����������ļ��ϴ�������ֻ�����ϴ�bmpͼƬ�ļ��Ĵ��룬��ȷ���ǣ� ����ѡ��һ�', '<param name=��allowedTypes��>image/bmp</param>', '<param name=��allowedTypes��>*.bmp</param>', '<param name=��allowedTypes��>bmp</param>', '<param name=��allowedTypes��>image/*.bmp</param>', 1718, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '���¹���OGNL��˵����ȷ���ǣ�  ����ѡ����', 'ActionContext��OGNL�������Ļ���', 'StackContext��OGNL�������Ļ���', 'ValueStack��OGNL�ĸ�', 'ActionContext��OGNL�ĸ�', 1719, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������Session�д�����Ϊuid���ԣ�ͨ��OGNL���ʸ����ԣ���ȷ�Ĵ����ǣ�  ����ѡ��һ�', '#uid', '#session.uid', 'uid', '${session.uid}', 1720, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������ĳJSPҳ���д��ڡ�<s:property>�����룬������˵����ȷ���ǣ�  ����ѡ��һ�', '����JSPҳ��ʱ����ִ���', '����JSPҳ��ʱ������ִ��󣬵�ҳ�治����ʾ�κ�����', '�ô����������λ��ValueStack��ֵջ��ջ���Ķ���', '����˵��������ȷ', 1721, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2Ĭ�ϵĴ����������ǣ�  ����ѡ��һ�', 'dispatcher', 'redirect', 'chain', '����˵��������ȷ', 1722, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '����ѡ���У�����Struts2��Action˵����ȷ���ǣ�  ����ѡ����', 'struts2��Ϊÿһ�����󴴽�һ����Ӧ��Actionʵ��', 'struts2������������У�ֻ��һ��Actionʵ��', 'struts2ͨ����������װ�û��������', '��struts2�ж�������Զ����ڷ�װ�û��������', 1723, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ڶ��߳��У��¿���Ĺ����߳���Ҫ���½����ϵĿؼ���Ҫ�������װΪһ��������ί�У�Ȼ��ͨ���� ���������ã�ѡһ�', 'delegate', 'Invoke', 'Append', 'CreateHandle', 1724, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���Ž�����ϵͳ������ʶ�������Ա��ǩ��Ϣ�Ķ�д��Ӧ��ѡ�ã� ����ѡһ�', '��Ƶ��д��', '��Ƶ��д��', '����Ƶ��д��', '���Ͼ���', 1725, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ʹ��IdentifyUploadedMultiTags����ʶ����ǩʱ���Խ裨 ��������������ǩEPC����ȡΪһ��byte[]��ѡһ�', 'Buffer. BlockCopy', 'Buffer. ByteLength', 'Buffer. GetByte', 'Buffer. SetByte', 1726, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ҽ�ܵ�Ӥ������ϵͳ�в��������£� ��ϵͳģ�飨ѡһ�', 'ϵͳ������Ϣ����', 'ϵͳȨ�޹���', '�����������ع���', 'ҽ����Ա���ڹ���', 1727, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������ҽ��ϵͳ�ж���ҽ����Ա��Ϣ����ı�ǩ����Ӧ���ã� ��ģʽ�Ķ�д����ѡһ�', '����ģʽ������ǩ��ȡ', '��ʱģʽ������ǩ��ȡ', '����ģʽ�����ǩ��ȡ', '��ʱģʽ�����ǩ��ȡ', 1728, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ֹһ��ǰ̨���̿����õ�������Ͳ����ǣ� ����ѡһ�', 'kill', '<CTRL>;+C', 'shut down', 'halt', 1729, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', 'shell��������Ҫ�У� ����ѡ���', 'ash', 'ksh', 'csh', 'bash', 1730, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ı��ļ������ߵ������ǣ� ��(ѡһ�', 'chmod���ļ�Ȩ��', 'touch', 'chown', 'Cat�鿴����', 1731, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ʹ��mkdir������µ�Ŀ¼ʱ�����丸Ŀ¼������ʱ�ȴ�����Ŀ¼��ѡ���ǣ� ����ѡһ�', '-m', '-d', '-f', '-p', 1732, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����һ��ʹ�ã� )��������Ӳ�̽�������', 'mknod', 'fdisk', 'format', 'mkfs', 1733, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'C���Թ涨����һ��Դ�����У�main������λ�ã� ����ѡһ�', '�������ʼ', '������ϵͳ���õĿ⺯���ĺ���', '��������', '���������', 1734, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ı���˵���У� ������ȷ�ģ�ѡһ�', 'char:a,b,c;', 'char a;b;c;', 'char a,b,c;', 'char a,b,c', 1735, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������-1�Ĳ��������ʽ�ǣ� ����ѡһ�', '00000001', '10000001', '11111110', '11111111', 1736, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�˳�����������ǣ� ����ѡһ�' || chr(10) || 'main()' || chr(10) || '{' || chr(10) || '   int n;' || chr(10) || '   (n=6*4,n+6),n*2;' || chr(10) || '   printf("n=%d\n",n);' || chr(10) || '}', '30', '24', '60', '48', 1737, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ѭ������ĳһ������������ִ��ѭ���������ǣ� ����ѡһ�', 'break���', 'return���', 'continue���', '�����', 1738, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ָ�������ֵ���ʱ����������ָ������ǣ� ����ѡһ�', 'ռ��ͬһ�ڴ浥Ԫ', 'ָ��ͬһ�ڴ浥Ԫ��ַ���߶�Ϊ��', '��������ָ��', '��û��ָ��', 1739, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '���ߴ������������Ҫ���ǣ� ����ѡ���', '������', '��֪����', 'ͨ������', '�۲���', 1740, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���治�������ߴ���������ϵͳ���ǣ� ����ѡһ�', '��Ƶ�ڵ�', '�������ڵ�', '��۽ڵ�', '����ڵ�', 1741, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'һ��ASP.NETӦ�ó����Global.Asax�ļ���Application�¼��������£�' || chr(10) || 'protected void Application_Start(Object sender, EventArgs e)  ' || chr(10) || '{' || chr(10) || '    Application["count"]=0;' || chr(10) || '    Response.Write(Application["count"].ToString());' || chr(10) || '}' || chr(10) || 'protected void Application_BeginRequest(Object sender, EventArgs e)        {' || chr(10) || '    Response.Write(Application["count"].ToString());' || chr(10) || '}' || chr(10) || 'protected void Application_EndRequest(Object sender, EventArgs e)' || chr(10) || '{' || chr(10) || '    Application["count"]=(Int32)Application["count"]+1;' || chr(10) || '    Response.Write(Application["count"].ToString());' || chr(10) || '}' || chr(10) || 'protected void Session_End(Object sender, EventArgs e)' || chr(10) || '{' || chr(10) || '    Application["count"]=(Int32)Application["count"]+1;' || chr(10) || '    Response.Write(Application["count"].ToString());' || chr(10) || '}' || chr(10) || '���������ʱ������˵����ȷ���ǣ�������ѡһ�', '��һ�η��ʸ���վʱ��һ����ҳ������ʾ������Ϊ0', '�״���ҳ������ʾ������Ϊ1��2��3��������', '���ж����ͬ���û���ˢ��ҳ�棬��ÿ���û���ˢ��ҳ���ʱ����ʾ������Ҳ��������', '��һ�η��ʸ���վʱ�����֡���Ӧ�ڴ��������в����á��Ĵ���', 1742, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�Ķ����µ�ASP.NET����' || chr(10) || '<asp:Button id="Button1" runat="server"></asp:Button>' || chr(10) || '<asp:TextBox id="TextBox1" runat="server" ></asp:TextBox><asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"  ErrorMessage="����" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>�Ӵ����п��Կ�������Webҳ����һ���ı����һ����ť�����ʵ�������ť��ʱ�򽫳��֣����仯����ѡһ�', '����ı���Ϊ�գ�����ʾ"����"', '����ı�������Ĳ���ʱ�䣬����ʾ"����"', '����ı�������Ĳ������֣�����ʾ"����"', '����ı�������Ĳ����ַ�������ʾ"����"', 1743, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ASP.NET�����У�������GridView �ؼ���ģ����ʱ��ѡһ�', 'ģ�����еĿؼ�ֻ��Ĭ�����Կ��԰�', 'ģ�����еĿؼ����������Կ��԰󶨣���ֻ����һ�����԰�', 'ģ�����еĿؼ����������Կ��԰󶨣�ͬʱ�����ж�����԰�', 'ģ������ֻ��TextBox�ؼ����԰�', 1744, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ASP.NET�У�System.Xml �����ռ���һ�������Ĳ���XML���࣬ͨ��ʹ�ö�ȡ������д����DOM���ݵ��������ȡ����֤�Ͳ��� XML ���ݡ���������������ǣ�ѡһ�', 'XmlTextReader ���ṩ�� XML ���ݵĿ��١��Ǹ��ٻ����ֻ��������', 'XPathNavigator ���ṩ W3C XPath 1.0 ����ģ�ͣ����������ڵ����Ĺ����ʽģ�͵Ĵ洢��', 'XslTransform ����һ�� W3C XSLT 1.0 �淶���ݵ� XSLT ������������ת�� XML �ĵ�', 'XmlTextReader ���ṩһ������ XML �Ŀ���ֻ��������', 1745, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '��һ��ASP.NETӦ�ó����Global.asax��Application_Start�¼��ж��������±���������˵����ȷ���ǣ�ѡ���   ' || chr(10) || 'protected void Application_Start(Object sender,EventArgs e)' || chr(10) || '{    Application["count"]=1;  }', 'ÿ���û�������ӵ�иñ�����ֵ', '�ñ�����Ӧ�ó����˳�ǰһֱ����', '�����û����ܷ��ʸñ�����ֵ', 'ֻ�е�һ���û����Է��ʸñ�����ֵ', 1746, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������Ϣϵͳ��Ҫ�����ĸ�������ɣ��������Ӳ��ϵͳ����������ϵͳ������ռ����ݺ���Ա������Ĳ����ǣ���ѡ��', '�����Ӳ��ϵͳ', '��������ϵͳ', '�������Ӳ��ϵͳ', '����ռ����ݺ���Ա', 1747, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������Ϣϵͳ����ƣ���ѡ��', 'EDI', 'GPS', 'EFT', 'GIS', 1748, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'GIS�б���������Ϣϵͳ�ı��������ǣ���ѡ��', '�ռ��ѯ�����', '���ӻ���������', '��������', '���ݱ༭', 1749, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'GIS�ܹ�����ڷ�����ˮ��ս�������¹ʵ��ش���Ȼ����Ϊ�ֺ�ʱ����ΰ�����ѵ���Ա����·�ߡ����䱸��Ӧ������ͱ�����ʩ�����⡣����GIS�ڣ��������������Ӧ�ã���ѡ��', '������ʩ����', 'Ӧ����Ӧ', '��Դ����', '���й滮', 1750, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������ڹ�������GIS������ǣ���ѡ��', 'GeoStar', 'MapInfo', 'CityStar', 'MapGIS', 1751, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ִ������е�GIS��ҪӦ���ڣ����������ȷ��棨��ѡ��', '����·�ߵ�ѡ��', '�ֿ�λ�õ�ѡ��', '�ֿ�Ŀ��������', '����װж����', 1752, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������Ϣ������������Ϣ��������־�ǣ���ѡ��', '����������Ϣ ', '���ڹ�����Ϣ', '������ᾭ����Ϣ', '���ڿռ���Ϣ', 1753, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���²�����GISרҵ������ǣ���ѡ��', 'MapInfo', 'GeoStar', 'MapGIS', 'PCI', 1754, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����й����ݵ�������ȷ���ǣ���ѡ��', '��Ϣ�����ݵı���������Ϣ���ں�', '��������Ϣ�ı���Ϣ�����ݵ��ں�', '���ݲ����غ����������豸����ʽ���ı�', '��ͼ���Ų�������', 1755, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'GIS�����������ݾ��루��ѡ��', '����ռ�λ������ϵ ', '�ǿռ���������ϵ', '���������������������ϵ', '����������������ϵ', 1756, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����ϵ�һ��������Ϣϵͳ�ǣ���ѡ��', '����������Ϣϵͳ', '���ô������Ϣϵͳ', '�ձ�������Ϣϵͳ', '�µ���������Ϣϵͳ', 1757, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��GIS�����У��ѷǿռ����ݳ�Ϊ����ѡ��', '��������', '��ϵ����', '��������', 'ͳ������', 1758, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ʵ����ռ�仯����������Ҫ���ǣ���ѡ��', '�ռ�λ�á�ר��������ʱ��', '�ռ�λ�á�ר������������ ', '�ռ��ص㡢�仯���ơ�����', ' �ռ��ص㡢�仯���ơ�ʱ��', 1759, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������һ����е��������������ǣ���ѡ��', '�ռ�����������������ʱ������', '�ռ�����������������ʱ������', '��������������������ʱ������', '�ռ�������������������������', 1760, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʸ���ṹ���ص��ǣ���ѡ��', '��λ���ԡ���������', '��λ���ԡ���������', '��λ�������������� ', '��λ��������������', 1761, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'GIS������������Ϣϵͳ��һ��������־�ǣ���ѡ��', '�ռ����', '��������  ', '���Է��� ', 'ͳ�Ʒ���', 1762, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����·�ؿ��в�Ǩָ��ļ������⣬��Ӧ�õĿռ���������ǣ���ѡ��', '���������� ', '��������', '�������', '���·������', 1763, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����ͺ�����Χ�������Ķ���ɲ��ã���ѡ��', '�ռ����', 'ͳ�Ʒ��� ', '���÷���', '����������', 1764, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������ڹ�������GIS������ǣ���ѡ��', 'GeoStar', 'MapInfo', 'CityStar', 'MapGIS', 1765, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2�ж�̬�������õĸ�ʽΪ��  ����ѡ��һ�', 'ActionName_methodName.do', 'ActionName!methodName.do', 'ActionName_methodName.action', 'ActionName!methodName.action', 1766, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '����ͨ���ٶ���ҳ��������ʱ�������ƹ���������Щ����չ�֣�����ѡ��', '��ҳ�Ҳ༰��ҳ���Ҳ�ҳ�棬ÿҳ���չ��8�����', '��ҳ����е�ɫ�ġ��ƹ����ӡ����3���͡��ƹ㡱λ�ã����չ��10���������ͬʱ����', '��ҳ����޵�ɫ�ġ��ƹ㡱λ�ã����չ��10����� ', '��ҳ�����е�ɫ�ġ��ƹ����ӡ�λ�ã����չ��3����ͬ���ƹ�������������չ�ֵĽ��һ��', 1767, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ڳ��汨���У��ƹ��̻������Բ鿴��������ָ�꣺����ѡ��', 'ƽ������', '����', '�����', 'ƽ������۸�', 1768, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABCD', '�ƹ��̻�������������Ҳ����Լ����ƹ�����ԭ������ǣ���ѡ��', 'ʹ�õ�IP��ַ��IP�ų���Χ', '�����������', '�ؼ���״̬Ϊ�����ƹ�', '�ؼ���״̬Ϊ������Ч', 1769, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ʷ������ѯ���ߣ�����˵��������ǣ�����ѡ��', '��ʷ���ݿ����ص�����', '�ƹ��̻��ɲ�ѯ�Լ����������Ĳ�����¼', '�ƹ��̻��ɲ�ѯ�Լ��Ĳ���', '��߿ɲ�ѯ�������ʷ���� ', 1770, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'С�ܲ�ϣ�����������ƹ��������������ƹ㣬����Ҫ���ʻ���һ���㼶�������ã�����ѡ��', '����', '�ƹ㵥Ԫ', '�ؼ���', '�ƹ�ƻ�', 1771, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '���ƹ㵥Ԫ���𣬿��Խ���������Щ����������ѡ��', '����ͳһ����', '����ʱ����ͣ', '���÷񶨹ؼ���', '��ӹؼ���', 1772, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ƹ��̻����˻��㼶�Ѿ�������20��220.X.X.X��IP��ַ�Σ����˻�ֻ��һ���ƻ����ڼƻ���������������20��221.X.X.X��IP��ַ�Σ���ô�ÿͻ�����ƻ������ж��ٸ�IP��ַ�ο��������̻����ƹ����أ�����ѡ��', '40��', '20��', '60��', '30��', 1773, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '�ƹ㵥ԪA����Ϊ2.5�����ڵĹؼ���1����Ϊ2���ؼ���2����Ϊ2.8��������˵����ȷ���ǣ�����ѡ��', '�ؼ���2���յ���۸񲻻����2.8', '�ؼ���2���յ���۸񲻻����2', '�ؼ���2���յ���۸񲻻����2.5', '�ؼ���1���յ���۸񲻻����2', 1774, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ƹ�ƻ�A�����˶����ƥ��ؼ���Ϊ��Ƹ�����ڵ��ƹ㵥Ԫ1�����˾�ȷ��ƥ��������ѵ���������ĸ������ʽ����ᴥ���ƹ���Ϣ����ѡ��', '��ѵ����', '������Ƹ', '������ѵ���', '������ѵ��ʦ', 1775, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���¹��ڲ㼶�������õ����˵��������ȷ���ǣ�����ѡ��', '�ƹ��̻��������ƹ㵥Ԫ�㼶���С�ʱ����ͣ������', '�ƹ��̻��������ƹ㵥Ԫ�㼶���С���ͣ�ƹ㡱���� ', '�ƹ��̻��������ƹ�ƻ��㼶���С���ͣ�ƹ㡱���� ', '�ƹ��̻��������ƹ�ƻ��㼶���С�ʱ����ͣ������ ', 1776, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '���ƹ㵥Ԫ����-�ڱ�û��������ͣ�����ڵĹؼ���ʮ��Ԫ��ʲô������ͣ�ƹ㣬������ƥ��ģʽ�����е�Ӱ�죬������˵����ȷ���ǣ�����ѡ��', '��������н������ƹ㵥Ԫ����-�ڱ������йؼ��ʵĽ��', '��������н������ؼ���ʮ��Ԫ��ʲô���õĽ��', '��������н��������ؼ���ʮ��Ԫ��ʲô���õĽ��', '��������н��������ؼ���ʮ��Ԫ��ʲô��������ƹ㵥Ԫ����-�ڱ������йؼ��ʵĽ��', 1777, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABCD', '�����й��ƹ�����������˵������ȷ���ǣ�����ѡ��', '������ͬ�������ȸߵĹؼ���������ǰ', '����������Ĺؼ��ʣ������ڳ��۸��͵�����»�ȡ���õ�����', '��Ϊͬ�Ǽ�������Ҳ���ھ�����ֵ�Ĳ��������Կ��ܳ����������Ǽ���ͬ�Ĺؼ��ʣ����۵͵�������ǰ', 'ͨ������£���ͬ�������ȣ����۸ߵ���������ǰ', 1778, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Ŀǰ���ߴ������������ϵͳӦ����㷺���ǣ� ����ѡһ�', 'TinyOS����ϵͳ', 'Contiki����ϵͳ', 'MANTIS����ϵͳ', 'SOS����ϵͳ', 1779, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ATOSʵ��ƽ̨�д�����Ƶģ��ʹ�����ģ����������ʵ��豸�ǣ� ����ѡһ�', '���ذ�', '�ڵ��', '������¼��', '������', 1780, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ATOSʵ��ƽ̨��������Windows������Linux�ĳ����ǣ� ����ѡһ�', 'TinyOS', 'nesC', 'Cygwin', 'Ubuntu', 1781, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��nesC ��������Ҫ���壨 �����ֹ��ܲ�ͬ�������ѡһ�', 'ģ�顢���', '�����¼�', '�ӿڡ��¼�', '�ӿڡ����', 1782, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'nesC����ģ������ľ���ִ�ж���4 ����ز�����ɣ����Ƿֱ��ǣ� ����ѡһ�', '��������¼������������������ú���', '���������¼�����������֡��ִ���߳�', '�ӿڡ�����¼�����������֡', '��������¼�����������֡��ִ���߳�', 1783, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', 'nesC���еĽӿڰ����� ������ԭ�ͣ�ѡ���', '����', '����', '�¼�', '����', 1784, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ӿ��е��¼�ʹ�ã� ���ؼ��ִ�����ѡһ�', 'signal', 'call', 'provides', 'async', 1785, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ӿ�������ĵ��÷�����ʹ�ùؼ��֣� ����ѡһ�', 'signal', 'call', 'provides', 'async', 1786, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ڲ������ӿ�����������ǣ� ����ѡһ�', '�������ӿ�ʵ������һ���ӿ�����', 'ÿ���ӿ�ʹ�����ֻ������һ��û��ʹ�ù��Ĳ���', '��ʹ�ò������ӿ�ʱ������������ӽӿ�ʱ����Ҫʵ��������', '�������ӿ��¼�ȱʡ���ڽӿڵ�ʹ���������ʵ�ֵ�', 1787, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����java����Ƭ�Σ����£�' || chr(10) || 'int i=0,j=-1;' || chr(10) || 'switch(i){' || chr(10) || '    case 0,1:j=1;' || chr(10) || '    case 2:j=2;' || chr(10) || '}' || chr(10) || 'System.out.print("j="+j);' || chr(10) || '�������У���ȷ���ǣ�ѡһ�', '����������', 'j=1', 'j=2', 'j=0', 1788, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ĳJava�����main��������,�ó�������н���ǣ�ѡһ�' || chr(10) || 'public static void main(String[] args){' || chr(10) || '    boolean boo=true;' || chr(10) || '    if(boo==false){' || chr(10) || '        System.out.println("a");' || chr(10) || '    }' || chr(10) || '    else{' || chr(10) || '        Systim.out.println("b");' || chr(10) || '    }' || chr(10) || '}', 'a', 'b', 'c', 'd', 1789, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����һ��Java����Ĵ���Ƭ�����£�' || chr(10) || 'if(grade == ''A''|| grade == ''B'')' || chr(10) || '    Score = 90;' || chr(10) || 'else if(grade == ''C''|| grade == ''D'')' || chr(10) || '    Score = 70;' || chr(10) || 'else' || chr(10) || '    Score = 60;' || chr(10) || '��ͬ��switch��������һ����ѡһ�', 'switch(grade){' || chr(13) || 'case ''A'':' || chr(13) || 'case ''B'':score = 90;' || chr(13) || 'case ''C'':' || chr(13) || 'case ''D'':scpre = 70;' || chr(13) || 'default:score=60;' || chr(13) || '}', 'switch(grade){' || chr(13) || 'case ''A'':break;' || chr(13) || 'case ''B'':score = 90;' || chr(13) || 'case ''C'':break;' || chr(13) || 'case ''D'':scpre = 70;' || chr(13) || 'default:score = 60;break;' || chr(13) || '}', 'switch(grade){' || chr(13) || 'case ''B'':score = 90;break;' || chr(13) || 'case ''D:scpre = 70;break;' || chr(13) || 'default:score = 60;break;' || chr(13) || '}', 'switch(grade){' || chr(13) || 'case ''A'':' || chr(13) || 'case ''B'':score = 90;break;' || chr(13) || 'case ''C'':' || chr(13) || 'case ''D'':scpre = 70;break;' || chr(13) || 'default:score = 60;break;' || chr(13) || '}', 1790, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ҳ������һ���Ա�ѡ��ť�������á��С�Ϊѡ��״̬���������£�' || chr(10) || '<input type="radio" name="sex"> ��' || chr(10) || '<input type="radio" name="sex"> Ů    ��ȷ����' || chr(10) || '��ѡ��һ�', '$("sex[0]").attr("checked",true);', '$("#sex[0]").attr("checked",true);', '$("[name=sex]:radio").attr("checked",true);', '$(":radio[name=sex]:eq(0)").attr("checked",true);', 1791, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һ��ASPXҳ����,���ĸ�RadioButton�ؼ�,���ǵ�HTML��������.���û���������RadioButton�ؼ���,����˵����ȷ���ǣ�ѡһ�' || chr(10) || '<asp:RadioButton id="RadioButton1" groupName="bigBall" runat="server" Text="����"></asp:RadioButton><asp:RadioButton id="RadioButton2" groupName="bigBall" runat="server" Text="����"></asp:RadioButton><asp:RadioButton id="RadioButton3" groupName="smallBall" runat="server" Text="ƹ����"></asp:RadioButton>', '����RadioButton�ؼ���Checked���Ա�ΪFalse', 'ƹ����RadioButton�ؼ���Checked���Ա�ΪFalse', '��ë��RadioButton�ؼ���Checked���Ա�ΪTrue', '����RadioButton�ؼ���Checked���Ա�ΪTrue', 1792, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���в�����ʹ��WebService��;�����ǣ�ѡһ�', 'HTTP��GET', 'HTTP��POST', 'SOAP', 'ADO.NET', 1793, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '��ASP.NET�У���һ���߿�¼ȡ�����߲�ѯ����վ������ʡ�ݵ�¼ȡ�����߶������һ�����С���˸���ʡ�ݵĿ�����ѯ������ʱ��ͨ��ѡ���Լ���ʡ������ѯ¼ȡ�����ߡ�����Ա���������ҳ�棬�ڵ�һ��ҳ������һ��DropDownList�ռ����󶨸���ʡ�ݣ��ڵڶ���ҳ�������һ��DataGrid�ؼ����������ݵ�һ��ҳ�洫�ݹ�����Provice������ʾ��Ӧʡ�ݵ�¼ȡ�����ߡ����ǵ�ͬһ��ʡ�ݵĿ����ر�࣬���ͬʱ�鿴¼ȡ�����ߵĿ����Ƚ϶࣬Ϊ�˼���������ĸ���������Ա����ҳ�滺�棬���ж�����ҳ��OutputCatheָ������������ǣ�ѡ���', '��һ��ҳ��OutputCacheָ�<%@OutputCache duration=120 VaryByParam=none%>', '�ڶ���ҳ��OutputCacheָ�<%@OutputCache duration=100 VaryByParam=none%>', '��һ��ҳ��OutputCacheָ�<%@OutputCache duration=100 VaryByControl=ddlProvince %>', '�ڶ���ҳ��OutputCacheָ�<%@OutputCache duration=100 VaryByParam= Province %>', 1794, 325);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��E-Rͼ�У�ʵ�塢���Ժ͹�ϵ�ֱ��ã�������ʾ��ѡһ�', '���Ρ����Ρ���Բ', '���Ρ���Բ������', '��Բ�����Ρ�����', '��Բ�����Ρ�����', 1795, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ASP.NET�У���һ��ASPXҳ��Ĳ��ִ������£����û�����Button1��ť������˵����ȷ���ǣ�ѡһ�' || chr(10) || 'public class CityBrower : System.Web.UI.Page{' || chr(10) || 'protected System.UI.WebControls.Button Button1;' || chr(10) || 'string name = "SVSE3.0";' || chr(10) || 'private void Page_Load(object sender,System.EventArgs e){' || chr(10) || '    if(!this.IsPostBack)' || chr(10) || '        name = "SVSE4.0";' || chr(10) || '    else' || chr(10) || '        name = "SVSE5.0";' || chr(10) || '}' || chr(10) || 'private void Button1_Click(object sender ,System.EventArgs e)' || chr(10) || '{        Response.Write(name);    }', '��ҳ����������ı� "SVSE5.0"', '��ҳ����������ı� "SVSE4.0"', '��ҳ����������ı� "SVSE3.0"', '��ҳ���в�����κ��ı�', 1796, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', ' ArcMap�У���һ��Ҫ�ر�ѡ�е�ʱ��ѡ�б�ǳ��ֵ�Ŀ���ǣ���ѡ��', '����Ҫ�ر���ת��ʱ�򣬻�Χ�����ѡ�������ת', '��������һ�ַ���ָʾ��ͨ������ɫ�ı߿��ʾҪ�ر�ѡ����', '������������׽�ߺͶ��㣬��ѡ���Ҫ�����ӵ�������Ҫ����', 'A��C', 1797, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һ��ArcGIS������ļ����������㽫GIS���ݵ���CAD�ĸ�ʽ����ѡ��', 'ArcInfo', ' ArcEditor', 'ArcView ', 'A��B ', 1798, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��һ��Ҫ�����ݼ��У����е�Ҫ�����������ͬ�ģ���ѡ��', '����Դ', ' �ռ�ο�', '�ֶ�����', ' Ԫ����', 1799, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ArcMap�У�sketch���Ա�����Ϊ����ѡ��', 'һ����ʱ��ͼ�ζԻ�����ʾ���ڱ��༭��Ҫ�صļ�������', 'ʹ��Draw�������еĹ��ߴ���������ͼ��', 'һ�����ڱ��༭��Ҫ�� ', '��Ҫ����֮�临�ơ�ճ����Ҫ��', 1800, 402);
commit;
prompt 1800 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', ' �����ĸ�����Editor�������еı༭����ѡ���ѡ��', 'Rotate Feature', 'Mirror Feature', ' Create 2-Point Line Features', ' Reshape Feature ', 1801, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', ' ѡ���Ҫ������ѵ���������ѡ��', 'ӵ����ͬ�ռ�ο���Ҫ�����͵����', 'ӵ����ͬ�������ͺ������ֶε�Ҫ��', 'ӵ����ͬ�����ֶε�Ҫ�����͵����', 'ӵ����ͬ�ļ������ͺͲ�ͬ�������ֶε�Ҫ��', 1802, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��֪ˮ�����ڵ�λ�õ���������ν����սǵľ��룬�������һ��ˮ��ʹ����һ��Sketch Construction������ã���ѡ��', ' Intersection tool  ', 'Midpoint tool', 'Distance-Distance tool   ', 'Direction-Distance tool ', 1803, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������ݵĻ�������ǣ���ѡ��', '���ԡ��������ͺͼ������� ', '���ԡ���Ϊ������������', '�������������ԡ�����Ϊ ', '�����������������͡�����Ϊ ', 1804, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ModelBuilder�����������Ǵ���ģ���ѡ��', 'ModelBuilder����ͨ��toolbox�� ', ' ModelBuilder����ͨ��ArcObjects���ж��� ', '����ģ����������ģ��Ԫ������û������  ', '������һ��ģ���д���ģ��', 1805, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����cardinality����������ǣ���ѡ��', '��geodatabase�пռ����ݺ���������֮�������', ' �����໥�������������͵����������֮��Ĺ�ϵ', '��һ�������У������ֶκ������ֶ�֮�����ϵ', '��geodatabase�У�����������ͬ����ֵ�����ı������', 1806, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ArcGIS��Ԫ���������ָ�ʽ�洢����ѡ��', 'HTML', 'XSL ', 'XML ', 'FGDC ', 1807, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����������չ��ArcGIS��֧�֣���ѡ��', 'Spatial Analyst��Maplex��Geostatistical  Analyst', 'ArcScan��Survey Analyst����Tracking  Analyst ', 'ArcGIS Schematics��Data Interoperability���� PLTS', '��������ѡ�� ', 1808, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ArcGIS�����������Զ���ռ�ο���Ϣ����ѡ��', '�����������ϵ', 'ͶӰ������ϵ', 'ͶӰ������ ', '���ݺ������� ', 1809, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����������ݸ�ʽ����ͨ��ArcGIS���Ĺ��ܣ�����չ���ܣ�ת��ΪESRI���ݸ�ʽ����ѡ��', 'MapInfo�ļ�', 'Drawing Exchange��ʽ���ļ� ', ' Vector Product��ʽ', '��������ѡ�� ', 1810, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '�ƹ��̻����Դ�������Щ����������Ƚ����Ż�������ѡ��', '����ʹ��ͨ������Ż���������', '���˻���������š��������ߵĹؼ���', '��ߴ�����ؼ��ʵ������', '���ú�����˻��ṹ', 1811, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'ĳ�ƹ��̻�����ؼ�������Ƶ꣬�����ڰٶ������Ϻ�����Ƶ�ʱ�����˸��̻�Ͷ�ŵ��ƹ���������̻��п���ʹ����������Щƥ��ģʽ������ѡ��', '��ȷƥ��', '�㷺ƥ��', '��ƥ�䣬�񶨴�Ϊ�Ϻ�����Ƶ�', '����ƥ��', 1812, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ؼ���Ӣ����ѵ�μӹ㷺ƥ�䣬����������������Щ��ʱ�����ᴥ���ƹ��̻��Ľ��չ�֣���ѡ��', 'Ӣ����ĩ��ѵ��', '�������ʸ�֤ѧϰ��', '���Ӣ�����', 'Ӣ������ǿ����', 1813, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'С���ú�̨������һ�����棬�õ����������±���ô�ʺŴ���ƽ��ת���ɱ����Ƕ��٣�չ����10,000  �����1,000  CPC0.5  ת����1%  ƽ��ת���ɱ�������ѡ��', '50', '20', '200', '100', 1814, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'С����һ������������վ���������£���ô���������ƹ��CPC���������ʲôˮƽ  Ԥ��ת����0.50%  ƽ�����׶�1000  ë����20%����ѡ��', '1.2', '1.5', '1', '2', 1815, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'С���ú�̨������һ�����棬�ᵽ���������±������ʺŴ���CPM���Ƕ��٣�չ����10000   �����1000  CPC0.5  CPM?����ѡ��', '50', '100', '20', '10', 1816, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ĳ�ƹ��̻�2010��1��1�մӰٶ��ƹ�����������£�������ʺŴ���CTR��Ϊ  չ����900  �����100  ����102   ������12  ����600����ѡ��', '20.67%', '17%', '1%', '11.11%', 1817, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ĳ�ƹ���Ϣ�����չ�������������������ƹ���Ϣ��ƽ������Ϊ����   չ�ִ���  5   7   9  �������  1   0  2  ���� 4   2   3����ѡ��', '3.5', '2.9', '3.33', '3', 1818, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���¹���ÿ�ε���۸��˵������ȷ���ǣ�����ѡ��', '���ؼ��ʲ������һ�����ؼ��ʵĵ���۸�һ�����ڹؼ��ʳ���', 'ÿ�ε���۸񲻻ᳬ���ƹ��̻��ؼ��ʵĳ���', '���ؼ��ʲ������һ���� �ؼ��ʵ�������Խ�ߣ���ÿ�ε���۸�Խ��', 'ÿ�ε���۸񲻻ᳬ���ƹ��̻��ؼ��ʵ����չ�ּ۸�', 1819, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABCD', 'Ǳ���û�ͨ�������ƹ����ƹ���ҵ������ϵ���˹��̰���������Щ���裿����ѡ��', '����վ�Ͽ�������Ȥ����Ϣ����ϵ��ʽ', '����ƹ���Ϣ�ϵ����ӣ������ƹ���ҵ��վ', '�����������ҳ�ϵ��ƹ���Ϣ', '���������������������Ϣ', 1820, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABCD', '��ͳ�������⵽�ķ�������ϵͳͳ�Ƶĵ����ԭ����ܵ��ǣ���ѡ��', '�������ʱ�������������վ����������ͨ·���������ݶ�����ʱ��ȴ��������ж�', '��վ�����ٶȹ������û���δ����ҳ��ȫ�򿪾��Ѿ�����ҳ�ر�', 'ͳ��ϵͳ�������������ͨ·������������ݶ�ʧ', '����������վ�����������', 1821, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB ', '����չ����һ��������£�������Щ���ػ�Ӱ�������ı仯������ѡ��', '�ؼ��ʵ�����', '���������', '��վ�Ĵ��ٶ�', '�ؼ�������', 1822, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JAVA������, ���д�������н���ǣ�ѡһ�' || chr(10) || 'public static void showInfo(int a,int b){' || chr(10) || '    a++;' || chr(10) || '    b++;' || chr(10) || '}' || chr(10) || 'public static void main(String[] args) {' || chr(10) || '    int a = 5;' || chr(10) || '    int b = 10;' || chr(10) || '    System.out.println(a + "," + b);' || chr(10) || '    showInfo(a,b);' || chr(10) || '    System.out.println(a + "," + b);' || chr(10) || '}', '5,10  5,10', '5,10  6,11', '5,10  4,11', '5,10  5,11', 1823, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��JAVA������,���д�������н���ǣ�ѡһ�' || chr(10) || 'public static void main(String args[]) {' || chr(10) || '    int stuAge[] = {18,22,26};' || chr(10) || '    int i, avgAge = 0;' || chr(10) || '    for(i = 0; i < 3; i++){' || chr(10) || '        avgAge += stuAge[i] / 3;' || chr(10) || '    }' || chr(10) || '    System.out.println( avgAge );' || chr(10) || '}', '0', '9', '11', '21', 1824, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���벢���������Java����Σ�' || chr(10) || 'char c = ''a'';' || chr(10) || 'switch (c) {' || chr(10) || 'case ''a'':' || chr(10) || '    System.out.println("a");' || chr(10) || 'default: ' || chr(10) || '    System.out.println("default");' || chr(10) || '}�������ǣ�ѡһ�', '�����޷����룬��Ϊswitch���û��һ���Ϸ��ı��ʽ', 'a' || chr(13) || 'default', 'a', 'default', 1825, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����pr����Ϊ' || chr(10) || 'public static void pr ( float[] scores�� int n ){ }' || chr(10) || '�������������� int[] ary = new[10]; int m=5; int n = 10; ��ô������ȷ����pr�������ǣ�ѡһ�', 'pr (ary);', 'pr (ary,m);', 'n = pr (ary,m);', '������ȷ', 1826, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���³���Ƭ��' || chr(10) || 'int i = 1; ' || chr(10) || 'while(i < 5);{' || chr(10) || 'i++;' || chr(10) || '}' || chr(10) || 'System.out.println (i);' || chr(10) || '���н���ǣ�ѡһ�', '���1', '���5', '�����޷�����', '��ѭ��', 1827, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����HTML�����ĳҳ�����ʽ����' || chr(10) || '<STYLE TYPE ="text/css">' || chr(10) || '.bule{color:bule}' || chr(10) || '.red{color:red}' || chr(10) || '</STYLE>' || chr(10) || '��Ҫ��ҳ���е�"��һ������"���óɺ�ɫ,"��һ������"����Ϊ��ɫ.���д�����ȷ���ǣ�ѡһ�', '<H1 id=red> ��һ������</H1> <P id=bule>��һ������', '<H1 color=red>��һ������</H1> <P color=blue>��һ������', '<H1 class=red >��һ������ </H1> <P class=bule>��һ������', '<H2 class=red>��һ������</H1> <P class=bule>��һ������', 1828, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JAVA�����У�����ѡ��(  )����һ���������ڱ���4�������߲μ�5����ͬ��Ŀ�ı����ɼ���ѡһ�', 'int[][] s = new int[5][6];', 'int[][] s = new int[4][5];', 'int[][] s = new int[3][4];', 'int[][] s = new int[5][4];', 1829, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Java�����У�������������������ѡһ�' || chr(10) || '����A��5/2���Ϊ2.5' || chr(10) || '����B��5.0/2.0���Ϊ2.5', '���䶼��', '���䶼��', 'ֻ��a��', 'ֻ��b��', 1830, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Java�У����¶�������������ȷ���ǣ�ѡһ�', 'int t[10] = new int[];', 'char a[] = "hefg";', 'int t[] = new int[10];', 'double d = new double[10];', 1831, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ڡ�#session.persions.{? #this.age>20}��OGNL��������ʾ������˵����ȷ���ǣ�  ����ѡ��һ�', '��persons������ȡ����һ�����䣾20��Person����', '��persons������ȡ���������䣾20��Person�����Ӽ�', '��persons������ȡ�����һ�����䣾20��Person����', '�ô��벻����OGNL���﷨', 1832, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��num��a��b����c����int�ͱ�������ִ�б��ʽnum=(a=4,b=16,c=32);��num��ֵΪ�� )��ѡһ�', '4', '16', '32', '52', 1833, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������鶨�壺char array[]=" China";��������ռ�Ĵ洢�ռ�Ϊ�� ����ѡһ�', '4���ֽ�', '5���ֽ�', '6���ֽ�', '7���ֽ�', 1834, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ĳ�����ڵ�����վ���ڣ���ѡ��', '�ߵ��ѯ', '���߲�ѯ ', '���߲�ѯ', '�����ѯ', 1835, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'СA���˻��㼶���õĵ���Ͷ��Ϊ������������ƹ�ƻ��㼶���õĵ���Ͷ��Ϊ��򣬹㶫����ʵ��Ͷ�ŵ���Ϊ������ѡ��', '���', '��򣬹㶫', '���������', 'û���κ�һ������', 1836, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'СD���ʻ��㼶���õ�ÿ��Ԥ��Ϊ250Ԫ�����ƹ�ƻ��㼶���õ�ÿ��Ԥ��Ϊ150Ԫ���Ҵ��˻�ֻ����һ���ƻ�������Ч״̬����ʵ��ÿ�ջ��ѿ���Ϊ������ѡ��', '165Ԫ', '250Ԫ', '150Ԫ', '275Ԫ', 1837, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�Ͼ�������ڱ����ǰ���ٸ��ַ��������ĸ���������Ϊ����ģ�����ѡ��', '28', '38', '50', '30', 1838, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��K/3��ҵ��Ӧ���У�������ִ��(           )������ʽ��ѡ��һ�', '�ֺܲ���', '�ֲֺ���', '�ֲֿ������', '�����ܲ�,���ֲַֺ���', 1839, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���£� �����ݲ����Ա��������ݹ������ɣ�ѡ��һ�', '���۳��ⵥ ', '���ۺ�ͬ', '����֪ͨ��', '���۶���', 1840, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', ' ������Щҵ�񲻿������á�����֡�ʵ�֣�ѡ��һ�', '�����տ����ҵ�� ', '��;ԭ�ϵ����ҵ��', '��Ҫ�����������ҵ�� ', '���мӹ�ҵ��', 1841, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�û���ϸ����Ȩ��ͨ��___��ť�����еġ�(ѡ��һ��)', '<��Ȩ>', '<ȫѡ>', '<�߼�>', '<������Ȩ>', 1842, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', ' �Բ����õĻ�ƿ�Ŀ�ɲ�ȡ        ʹ�ÿ�Ŀ����ʾ(ѡ��һ��)', 'ɾ��', '�޸�', '����', '����', 1843, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��jQuery�У����������ܹ�ʵ��Ԫ����ʾ�����صĻ�������ѡһ�', 'hide()', 'show()', 'toggle()', 'fade()', 1844, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��mo���ο�����ͼ���ϻ�������ʹ�õķ�����(ѡ��һ��)', 'DrawShape', 'DrawText', 'DrawFont', 'DrawShapeText', 1845, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������һ����ڸ�ծ��    ��(ѡ��һ��)', ' ���ڽ��', 'Ӧ������', ' Ӧ���˿�', 'Ԥ���˿�', 1846, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������session�д�����Ϊusername�����ԣ�ͨ��OGNL���ʸ����ԣ���ȷ�Ĵ����ǣ�ѡ��һ�', '#username', '#session.username', 'username', '$username', 1847, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ArcGIS�б�ע�����������Ǵ���ģ���ѡ��', '�����һ��ͼ��Ӧ����ȫ�ֱ�ע���ܺ󣬵�����ע���Ա�����', '��ע�ǴӴ洢���ĵ���ͼ���ļ������������ɵ�', '�����Ż��ƶ���ͼ��ʱ�򣬱�ע��������ʾ ', '��ע�Ĳο������߿��Ա�����', 1848, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Щ�ű�����ʹArcMap�ɻ��ڶ���ֶα�עҪ�أ���ѡ��', 'C��VBScript', 'Jscript��VBScript', ' Java��VBScript ', ' JavaScript��C ', 1849, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��һ��Ҫ�����ݼ��д���Ҫ�����ʱ�򣬸�Ҫ�����̳�Ҫ�����ݼ��ģ���ѡ��', '�ռ������ͷ��� ', '�ռ������������ ', '�ռ�ο�', ' �ռ�envelope���� ', 1850, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ѡ����ڵ�ַ���������ѵ���������ѡ��', '�ڵ�ͼ�ϻ���XY�������� ', '�͵�ַ��ص����Ե���λ�òο�', '��ַ��̬�ֶ� ', '��λ�õ���������ת���ɵ������� ', 1851, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����һ��������붨λ��������ѡ��', '������֮��ƥ������ݿռ�ο�', 'ƥ���ַ��Ҫ�����е�Ҫ��', '�����ַ��α�ƥ��', '��ʽ����ַ��ʹ�����ǿ�ƥ��� ', 1852, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '����һ��Ҫ�����ж�����Ƶ�ʱ��������������һ����Ӧ�ý������ģ���ѡ��', '���Ƶ�Ӧ�ù㷺�ֲ����о��� ', ' ���Ƶ�Ӧ�ö�λ������ʶ��ĵ�����', '�����е�����׼��ʱ������Ӧ�����ĸ����Ƶ�����ȡ��ȷ��RMS���', '�������е�ѡ�� ', 1853, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Ҫ��ͨ�����ַ�ʽ���Ա����뵽��Ҫ�����У���ѡ��', '���ֻ�Ҫ�� ', 'ʹ��Simple Data Loader ', '����һ��XML��¼���ĵ�', ' �������е�ѡ�� ', 1854, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ArcGIS�е����ˣ���������д�����ǣ���ѡ��', '�ڵ�ͼ�����п���ʹ��shapefiles ', ' �ڵ�ͼ�����п������õȼ� ', ' �ڵ�ͼ��geodatabase�����о�������������ֵ ', '�ڵ�ͼ�����в��ܶ����������ù��� ', 1855, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ArcGIS�����������û�еģ���ѡ��', '�����ӱ�������д������� ', '��ArcMap����༭������PDF�ļ�', ' ��ˮ��������ӵ���ͼ������', '�����õ�ModelBuilder���ɱ���ģ�� ', 1856, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������������ArcMap�д���ͼ��ʱ�ǲ����õģ���ѡ��', ' ����ΪEPS��ʽ ', '��ѡ���Ҫ�ر仯ʱ�Զ����� ', '����x��y����ʾ��ֵ ', '������������ ', 1857, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����������geodatabase�ġ�schema edit��������ѡ��', '�����Ա��и�����������  ', '��һ���µ�����ֶι��� ', '�����Ա������ӻ�ɾ���ֶ�', 'B��C ', 1858, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ArcMap�й�����ģʽ���ֻ���������������������ѡ��', '������ֵ�������κ�ʱ��ı䣬���������ֻ���ʱ�� ', '��������ֵ������Ϊ��λ������ ', '��ָ���ļ�����Զ����Ӷ��� ', ' �����ʹ�÷Ŵ󴰿ڶ����������ֻ�', 1859, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ArcMap�е�ͼ����ţ��������Ӧ���ڣ�����ѡ��', '������ɫ��ר��ͼ  ', '�ɱ����ķ���ר��ͼ ', '����ķ���ר��ͼ ', 'A��C ', 1860, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������ڸ���geodatabaseդ����������������������ѡ��', 'դ��Ŀ¼���Ա����ƻ򲻱����� ', 'դ�����ݱ����ϴ洢�ڸ���geodatabase�� ', '�����Ƶ�դ�����ݸ�ʽ�����������', '�����Ƶ�դ�����ݴ洢�ں͸���geodatabase��ͬ��Ŀ¼�ļ����� ', 1861, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����������ʱ������ƹ��̻����˻��ڷ���������������Ĺؼ��ʱ��������ùؼ�������Ӧ�Ĵ������������ҳ��õĳ��ִ�������֮Ϊ������ѡ��', 'չ����', '������', '�����', '������', 1862, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ĳ�ƹ��̻��˻��ڶ���ؼ��ʶ�����չ������ʱ��������չ�֣�����ѡ��', '���չ�ּ۸�ߵĹؼ��ʴ����Ĵ���', '���۸ߵĹؼ��ʴ����Ĵ���', '������������������ȫһ�µĹؼ��ʴ����Ĵ���', '�����ȸߵĹؼ��ʴ����Ĵ���', 1863, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABCD', '�����ƹ��У���Щ�����Ҫ��ȡվ���ų�������ѡ��', '��ϣ�����չʾ���Ѿ�������Դ����������վ����', 'ͨ��Ч����⹤�ߣ���������ĳЩIP�εķ��ʲ���Ϊ�ƹ�����κ�����', '��Щվ���Ŀ���û����Ʒ��λ����ƫ��', '��վ�Ѿ��ǰٶ�����վ�㣬��ϣ���Լ����ƹ���Ϣչʾ���Լ���վ����', 1864, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '�����ĸ����ǹؼ��ʵ���ʵ͵�ֱ��ԭ�򣿣���ѡ��', '�ؼ����봴������Բ�', '���۽ϵͣ���������', '������Ͷ�ŵ���', '�ؼ���ƥ��ģʽ������˹㷺ƥ��', 1865, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', ' �����йش���չʾ���ʵ�˵����������ǣ�����ѡ��', 'ϵͳĬ�ϵĴ���չʾ��������ѡ', '��Ϊ�������ѡ����', '����չʾ�������ƹ�ƻ��㼶����', 'ϵͳĬ�ϵĴ���չʾ����������', 1866, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '�����ƹ�����չ������ҳ��Ӱ�������ƹ�չ���������ذ���������ѡ��', '��ҳ�ؼ�������', '�ֵ�������', '�ؼ��ʼ�����', '�ؼ�������', 1867, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D ', '��������������ٶ������ƹ�Ż���ȡ���ã���ѡ��', '�ؼ����ύ��ϵͳ�Ժ�', '�ƹ���Ϣչ�����������ҳ��ʱ', '�ؼ��ʴ�����Ч״̬ʱ', '�������ƹ���Ϣʱ', 1868, 408);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '1. ����ƾ֤����ĳ���ԭ������������У�ѡ��һ�', '��Ŀ��������ϸ;ƾ֤�����ƽ', '�����Դ���ò���ȷ�򵥾�������Ϊ��', 'ȡ����������Ŀ', '�����ڼ�С��ҵ��ϵͳ�ڼ�', 1869, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���мӹ�ҵ������,ί�з��ṩ�Ĳ���һ���루ѡ��һ�', 'ʵ��', '�����', '���ܲ�', '��Ʒ��', 1870, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���е������ĸ����ݲ����Խ������ÿ��ƣ�ѡ��һ�', '���۶���', '���۷�Ʊ', '���۳��ⵥ', '����֪ͨ��', 1871, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ĳ����ĳ���ϵ�����Ϊ100������Ŀ��1�����ɹ���ⵥֱ�ӹ�����10������2��������֪ͨ��������40������3��������֪ͨ���ֱ���һ����ⵥ������20��,�򶩵��ϡ����������Ϊ(    )����ѡ��һ�', '10', '20', '30', '40', 1872, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ҵ��ϵͳʱ����ʼ���ĵ��ݱ��루ѡ��һ�', '���', '����', '����', '�ر�', 1873, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������ѡ�񡰵��ݱ�����������¡�������൥�ݽ�������(     )����ʱ,�õ��ݵĿ����������µ���ʱ����У�ѡ��һ�', '����', '�޸�', '����', 'ɾ��', 1874, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������ּƼ۷��������������¼���ʼ����ʱ������������˳��š�¼�루ѡ��һ�', '��Ȩƽ����', '�ƶ���Ȩƽ����', '�ƻ��ɱ���', '�Ƚ��ȳ���', 1875, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', ' �����ĸ�ѡ���Ǵ���ģ�ѡ��һ�', '�⹺�����ϲ�������BOM��', 'ֻ�в��á��ƻ��ɱ����������ϣ��ſɽ��е��۴���', '������ĩ���ʺ������޸�����ҵ�����ݣ��ɽ��С������ʡ�����', '�ڽ����ڳ�������ʱ��ֻ�ܶ����ϵ��ڳ�����������������ܶ���������������', 1876, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������Щ���ݲ����ڳ�ʼ��ʱ��Ҫ¼���������ǰ���ݣ���ѡ��һ�', '�ݹ���ⵥ', 'δ����ί��ӹ����ⵥ', 'δ���������۳��ⵥ', '�ɹ���Ʊ', 1877, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '��������ʹ�õ�METAԪ�ص���䣺' || chr(10) || '<META name="DESCRIPTION" Content="the page of zhangming">' || chr(10) || '<META name="KEYWORDS" Content="zhang,ming">' || chr(10) || '����ѡ��˵����ȷ���ǣ�ѡ���', '��ҳ��Ļ���������"the page of zhangming"', '��ҳ��Ļ����ؼ���Ϊ"zhang,ming"', '��ҳ�������Ϊ"zhangming"', '��ҳ�������Ϊ"the page of zhangming"', 1878, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��JAVA������������ǣ�ѡһ�' || chr(10) || 'int answer=100,result;' || chr(10) || 'result=answer-10;' || chr(10) || 'System.out.println("The result is " + result + 5 );', 'The result is 95', 'The result is 905', 'The result is 10', 'The result is 100', 1879, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����Java���Դ�������н���ǣ�ѡһ�' || chr(10) || 'public static void main(String[] args) {' || chr(10) || '    int a=2,b=-1,c=2;' || chr(10) || '    if(a>b) {' || chr(10) || '        if(b<0)' || chr(10) || '            c=0;' || chr(10) || '        else' || chr(10) || '            c++;' || chr(10) || '        System.out.println(c);' || chr(10) || '    }' || chr(10) || '}', '0', '1', '2', '3', 1880, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����JAVA ������������ǣ�ѡһ�' || chr(10) || 'int a=3,b=2,c=1;' || chr(10) || 'int x=10,y=20;' || chr(10) || 'if(a<b)' || chr(10) || '    if(b!=0)' || chr(10) || '        if(!(x==0))' || chr(10) || '            y=1;' || chr(10) || '        else if(x==0)' || chr(10) || '            y=0;' || chr(10) || '        y=-1;' || chr(10) || 'System.out.println(y);', '20', '1', '0', '-1', 1881, 101);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ADO.NET�У���   ������Ľṹ�����ڹ�ϵ���ݿ�Ľṹ�����������ݿ⿪������£��ڻ����д洢���ݡ���ѡһ�', 'DataAdapter', 'DataSet', 'DataTable', 'DataReader', 1882, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ADO.NET�У�ĳ����Ϊ�˱���ѧ���ĳɼ���������һ���ɼ����������£�' || chr(10) || 'DataTable dt = new DataTable("�ɼ���");' || chr(10) || 'dt.Columns.Add("����", typeof(System.String));' || chr(10) || 'dt.Columns.Add("�ɼ�", typeof(System.Single));' || chr(10) || 'DataRow dr = dt.NewRow();' || chr(10) || 'dr[0] = "����";' || chr(10) || 'dr[1] = "90.5";' || chr(10) || 'dr = dt.NewRow();' || chr(10) || 'dr[0] = "����";' || chr(10) || 'dr[1] = "100";' || chr(10) || 'dt.Rows.Add(dr);' || chr(10) || '���������������к󣬳ɼ���dt���������е������ǣ�ѡһ�', '����  90.5', '����  100', '����  90.5' || chr(13) || '' || chr(10) || '����  100', 'û������', 1883, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��HTML�ĵ��У�<TD>��ǵģ�  �����Կ��Դ�����Խ����еĵ�Ԫ�񡣣�ѡһ�', 'COLSPAN', 'ROW', 'ROWSPAN', 'SPAN', 1884, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ڿ��ҳ���У�Ҫ��Ŀ�������ڿ���е�ĳһ���ֳ��֣���Ҫ����<a>���ĸ����ԣ�ѡһ�', 'href', 'src', 'target', 'direction', 1885, 102);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'dataTable �����ݼ�myDataSet �е����ݱ����,��9����¼���������д����,dataTable �л��м�����¼��ѡһ�' || chr(10) || 'dataTable.Rows[8].Delete();', '9', '8', '1', '0', 1886, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�յ��ϻ��߼׹������ҹ�����Э���Ͷ���80000Ԫ���ʽ��Ѿ�ȫ����λ�������ҹ�˾���д�����������跽Ϊ���裺���д��      160000���������Ϊ������������(ѡ��һ��)', ' ����ʵ���ʱ�     ���� 80000', '����ʵ���ʱ������׹���      80000' || chr(10) || 'ʵ���ʱ������ҹ���      80000' || chr(10) || '', '�����ʱ���������������160000', '����Ӧ���˿�          160000', 1887, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ҳ������һ��select��ǩ���������£�' || chr(10) || '<select id="sel">' || chr(10) || '    <option value="0">��ѡ��</option>' || chr(10) || '    <option value="1">ѡ��һ</option>' || chr(10) || '    <option value="2">ѡ���</option>' || chr(10) || '    <option value="3">ѡ����</option>' || chr(10) || '    <option value="4">ѡ����</option>' || chr(10) || ' </select>��Ҫʹ��ѡ���ġ�ѡ�е���ȷд����' || chr(10) || '��ѡ��һ�', '$("#sel").val("ѡ����"); ', '$("#sel").val("4");', '$("#sel > option:eq(4)").checked;', '$("#sel  option:eq(4)").attr("selected");', 1888, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����Ա��Ϣ����ֻ��ҵ�ġ����֤�š���λ��Լ�λ�����֤�������У�飿����ѡ��', '15', '16', '17', '18', 1889, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '����Ʒ��Ϣ�����ṩ����Ʒ��Դ����Щ����ѡ�����', '�ɹ���', 'ί��������', '�����', '����������', 1890, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2�Զ�������ת��������ʵ�ֵĽӿ��ǣ�  ����ѡ��һ�', 'Convert', 'TypeConverter', 'StrutsTypeConverter', 'StrutsConvert', 1891, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���£���ѡ��ܹ���ȷ�صõ������ǩ����ѡһ�' || chr(10) || '<input id="btnGo" type="button" value="������" class="btn"/>' || chr(10) || '', ' $("#btnGo")', '$(".btnGo")', '$(".btn")', '$("input[type=''button'']")', 1892, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '�µ���ҵ��̬ϵͳ��֧����( )(ѡ������)', '����', '���� ', '����', '����', 1893, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���һ������������������ʽ�����ģ����˷���˭�е���( )(ѡ��һ��)', '��� ', '����', '��ݹ�˾', '�Ա���', 1894, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Html���Ե������ڷֶεı���ǣ���(ѡ��һ��)', '<p>��</p>', '<div>��</div>', '<i>��</i>', '<b>��</b>', 1895, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ְ����Ϣ�����±���ʾ��(ѡ��һ��)' || chr(10) || '            ���      ����        ����         �Ա�' || chr(10) || '            0001      ������         35         ��' || chr(10) || '            0002      ������         45         ��' || chr(10) || '            0003      ������         34         Ů' || chr(10) || '    ....      ....        ....         ....' || chr(10) || '   ������е�', 'SELECT ���������� FROM ְ����Ϣ�� WHERE ����>40 AND �Ա�=���С�', 'SELECT ���������� FROM ְ����Ϣ�� WHERE ����>40 AND �Ա�IS��', 'SELECT ���������� FROM ְ����Ϣ�� WHERE ����>40 AND �Ա�=��', 'SELECT ���������� FROM ְ����Ϣ�� WHERE ����>��40�� AND �Ա�=���С�', 1896, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������͡��������Ա�����һ�๤�ߣ�( )(ѡ��һ��)', '������  ', '֧������ ', 'Ӫ������', '��ͨ����', 1897, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��toolbox���������ַ�����������ִ��һ�����߲�������ѡ��', '˫���������  ', '��ģ����', ' �������϶�����ʾ�ĵ�ͼ�� ', '������ ', 1898, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'GIS�Ļ�����ɲ����ǣ���ѡ��', '������Ա��������Ա�����ݿ����Ա������ ', 'ArcMap��ArcCatalog��ArcIMS��ArcGIS ', ' �ˡ����ݡ����̡�Ӳ������� ', '��ͼ���ռ����ݿ⡢���� ', 1899, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һ�����߼��������幤�ߣ�����ѡ��', 'Proximity ', 'Extract ', ' Statistics   ', ' Overlay ', 1900, 402);
commit;
prompt 1900 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ڸ���geodatabase�У����������ֶ���������Ч�ģ�����ѡ��', 'boolean��string��blob��single ', 'string��text��guid��longraw ', 'data��blob��raster��float ', 'double��boolean��binary��number ', 1901, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ѡ�����ͼͶӰ���ܵ����ѡ�����ѡ��', '������ά��Ϣת��Ϊ' || chr(10) || 'һ������ƽ���ͼ' || chr(10) || '', '����׼�桢�����塢�Լ�����ϵ������Ҫ�ص����Ը�ֵ����', '����άģ��ת��Ϊ��άƽ��ģ�͵���ѧת������', '����������Ҫ��λ��ת������άƽ��λ�õ���ѧת������', 1902, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������Զ�ArcMap�������ߵľ��뵥λ���¶��壿����ѡ��', 'ͨ�����ݿ���е�һͼ���ͶӰԪ�����Զ�����', '�����ݿ�������� ', '�����ݲ�������� ', '�ڹ��߲˵���ѡ������', 1903, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ArcMap���������ű�ʱ����һ���ֶ����Ա���ƥ�䣿����ѡ��', '��Զ�Ķ�Ӧ��ϵ', '�ֶ���������', '�ؼ������� ', '�������� ', 1904, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ڹ��ߺ�Layout�������е���ͼ��������֮�䲻ͬ��������ǡ�������������ѡ��', '�����������ϵķŴ���С���ܶ���Ӱ����������ݵı����� ', '�����������ϵķŴ���С���ܶ������ǷŴ����С�����Ĵ�С�����ǲ�Ӱ����������ݵı����� ', '�����ϵĹ�������ť�������ӻ��СҪ�صĴ�С������Ӱ������ߣ�Ӧ��Layout�������ϵİ�ť���Ըı��ͼ�ı����� ', '�ڹ����ϵĹ��������Կ������ݿ�ܵı����ߣ�Layout�������ϵİ�ť���ӻ��С��ͼҳ����ʾ�İٷֱ���ͼ ', 1905, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������Ĳ�����������������ѡ��', '����Ա�Ӧ�õ��Ѷ��������͵��ֶ�', '��geodatabase�н�������������', '����ֵ���Ĭ��ֵ���Ǳ���ֵ�б�ĵ�һ��', '�������geodatabases֮�临��', 1906, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ѡ�����ж�Dissolve����������ѵ�ѡ�񣿣���ѡ��', '����ָ�������Ի������Ծۺ�Ҫ��', '����һ������ֵ��Ҫ����֮��ϲ��ڽ���Ҫ��', '����һ�����Ի���������ArcMapͼ��֮��ϲ�Ҫ��', 'ɾ��һ��Ҫ�����е�Ҫ�أ�����ѡ�������ֵ�����µ�Ҫ�� ', 1907, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʲô��ArcCatalog������ͼ������ѡ��', 'ĳ��ʱ��ͷ�Χ�����ݵĿ��� ', 'Ƕ��������Ԫ���ݴ洢��ʽ�е�Ӱ���ļ� ', '�����������ͺͼ���������Сͼ�� ', '���������ʱ����ʾ�����ļ���������ͼ�� ', 1908, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���Ѿ���ArcMap����ʾ��һ����״Ҫ���࣬��ϣ���ܹ���ʾMapTips��������ͼ��������ѡ���ǻ�ɫ�ġ��Ѿ�����ʾ��ͼ��������Ҫ����ʾ�ֶ��ѱ����á���Ϊʲô������ʾMapTips�أ�����ѡ��', '������л���������ͼ��Ȼ��򿪸�ģʽ�µ�MapTips ', '��Ҫ����Ŀռ�����û����ArcCatalog�д������ؽ�', '��MapTips��ÿ���֮ǰ�������ʹ����Ҫ��ʾ�ֶα�ע��ЩҪ��', ' ArcMap������ʾ��״Ҫ�ص�MapTips ', 1909, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ť�Ĺ����ǣ�����ѡ��', '������ʾҪ�صĶ����Ա�༭ ', 'ʹ�ü򵥵ĸ���ͼ��չ���ڵ�ͼ��ʾ�� ', '�����༭������  ', '���Ӷ��㵽��ͼ��', 1910, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ҵ�Դ������Ӫ��Ͷ�ʣ������Ϸ���ʱӦ¼�루ѡ��һ�', '���۳��ⵥ', '�������ϵ�', '�������ⵥ', 'ί��ӹ����ⵥ', 1911, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������ֵ��ݿ��Խ��в𵥲�����ѡ��һ�', '�ɹ����뵥', '�ɹ�����', '�⹺��ⵥ', '����֪ͨ��', 1912, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���²����ڲɹ�ϵͳ��Ҫ���ݵ��ǣ�ѡ��һ�', '�ɹ����뵥', '�ɹ�����', '�⹺��ⵥ', '�ɹ���Ʊ', 1913, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ڵ��ݱ������˵������ȷ���ǣ�ѡ��һ�', '��������ʱ�����޸ĵ��ݱ��', '�������õ��ݵ�ǰ׺', '�������õ��ݵĺ�׺', '���������õ��ݵĳ�ʼֵ', 1914, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������Щ�Ǵ������ϵͳ�������㣨ѡ��һ�', '���������� ', '����������', '�̿����� ', '��ȷ�����۵���', 1915, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������ֲ����������ϵ�������ֿ�����ͬ������ͬ��������  ��������ѡ��һ�', '��ӯ��', '�̿���', '��������', '�⹺��ⵥ', 1916, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ƾ֤ģ��Ĺ����У��������������޹ؿ�Ŀ�Ŀ�Ŀ��ԴӦѡ��ѡ��һ�', '���������ϵĴ����Ŀ', '���������ϵ����������Ŀ  ', '���������ϵĳɱ���Ŀ ', 'ƾ֤����', 1917, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ϣ���Ӳִ�ģ���п�������Ľ��Ҫ����ʲô���ã�ѡ��һ�', '��ʼ��ʱ������������ ', '��ϵͳ���������ý���ڲִ�ɼ� ', '���û�������ʹ��Ȩ�޿��� ', '����Ҫ����ϵͳĬ��', 1918, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', ' �����ĸ�ѡ���Ǵ���ģ�ѡ��һ�', '��������ֻ����������������', 'ֻ�в��á��ƻ��ɱ����������ϣ��ſɽ��е��۴���', '������ĩ���ʺ������޸�����ҵ�����ݣ��ɽ��С������ʡ�����', '�ڽ����ڳ�������ʱ��ֻ�ܶ����ϵ��ڳ�����������������ܶ���������������', 1919, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�ڹ�Ӧ���У�����㷽ʽΪ������������ʱ�����ڣ� ��ϵͳ�����ʴ���ѡ��һ�', '�ɹ�ϵͳ', '����ϵͳ', '�ִ�ϵͳ', '�������ϵͳ', 1920, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������ϵͳ��������һ�����۷�ʽΪ�����ķ�Ʊ�����ƾ֤Ӧ�ڣ� ��ϵͳ���ɣ�ѡ��һ�', '����ϵͳ', '�������ϵͳ ', 'Ӧ��ϵͳ', '����ϵͳ', 1921, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������Щ���ݲ���������ϵͳ�п��������ģ�ѡ��һ�', '���۷�Ʊ', '���۶��� ', '���۳��ⵥ', '���ۺ�ͬ', 1922, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���۶����в���¼���У�ѡ��һ�', '����', 'ҵ��Ա', '������λ', '����', 1923, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���۷�Ʊ�в����ֹ�¼�����Ŀ�ǣ�ѡ��һ�', '����', '���', '����', '������λ', 1924, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', ' ���£�       �����ݲ��ܹ��������������ɣ�ѡ��һ�', '���۷�Ʊ', '���۶���', '���۳��ⵥ ', '���۱��۵�', 1925, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���ݺŵ�ǰ׺�ڣ� �����ã�ѡ��һ�', 'ϵͳ����', '�������ݵĵ��������� ', '��������', '��ע����', 1926, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ڳ����ĵ�����ʱ�����ܿ���������Щ���ݣ�ѡ��һ�', '�ڲֿ�ϵͳ��¼����⹺��ⵥ ', '���̵������ɵ���Ӯ��', '���̵������ɵ��̿��� ', '�ڲɹ�ϵͳ��¼�������֪ͨ��', 1927, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ĳ��������ҵ��������Щ���ϵ����ݲ��ܸ��ģ�ѡ��һ�', '���ϴ��� ', '����', 'Ĭ�ϲֿ�', '����������λ', 1928, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ĳ����Ա��д�����´���һ��DataTable�Ĵ��롣���ʹ��ڸöδ���˵����ȷ���ǣ�ѡһ�' || chr(10) || 'public static DataTable CreateDataTable()' || chr(10) || '{' || chr(10) || '   DataTable dt = new DataTable();' || chr(10) || '   dt.Columns.Add("id",typeof(System.Int32));' || chr(10) || '   dt.Columns.Add("name",typeof(System.String));' || chr(10) || '   dt.Constraints.Add("id",dt.Columns[0],true);' || chr(10) || '   dt.Columns[1].DefaultValue = "";' || chr(10) || '   DataRow dr = dt.NewRow();' || chr(10) || '   dr[0] = 1;' || chr(10) || '   dr[1] = "svse";' || chr(10) || '   dt.Rows.Add(dr);' || chr(10) || '   dr = dt.NewRow();' || chr(10) || '   dr[0] = 1;' || chr(10) || '   dr[1] = "svse";' || chr(10) || '   dt.Rows.Add(dr);' || chr(10) || '   return dt;' || chr(10) || '}', '���ڴ���DataTable��ʱû�д��ݱ����������öδ������ʱ�д���', '�ô������ʱ�޴��󣬵�������ʱ�д���', '�ô�����������ʱ��û�д���', '����Ѵ���dr[1]="svse;"��Ϊ"dr[1]=���svse;" ������ʱû�д���', 1929, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQL SERVER2005���ݿ�PUBS��PUBS������һ��UserLogin����ṹ���£�' || chr(10) || 'UserName   Varchar(50)  PrimaryKey' || chr(10) || 'Password   Varchar(20) ' || chr(10) || '�Ķ������WINFORM(C#)���룺' || chr(10) || 'private void button1_Click (object sender, System.EventArgs e)' || chr(10) || '{' || chr(9) || '' || chr(10) || 'SqlConnection myConn = new SqlConnection("Server=(local);uid=sa;pwd=;Database=pubs");' || chr(10) || 'try' || chr(10) || '{' || chr(10) || '    myConn.Open();' || chr(10) || '    SqlDataAdapter da = new SqlDataAdapter(" Select UserName, password from UserLogin ", myConn);' || chr(10) || '    DataSet ds  = new DataSet();' || chr(10) || '    da.Fill(ds, "UserLogin");' || chr(10) || '    DataRow dr = ds.Tables["UserLogin"].NewRow();' || chr(10) || '    dr["UserName"] =  DateTime.Now.Ticks.ToString();' || chr(10) || '    dr["password"] =  DateTime.Now.Ticks.ToString();' || chr(10) || '    ds.Tables["UserLogin"].Rows.Add(dr);' || chr(10) || '    ds.AcceptChanges();' || chr(10) || '    da.Update(ds, "UserLogin");' || chr(10) || '}' || chr(10) || 'catch(SqlException ee)' || chr(10) || '{' || chr(10) || '    MessageBox.Show(ee.Message.ToString());' || chr(10) || '}' || chr(10) || 'finally' || chr(10) || '{' || chr(10) || '    myConn.Close();' || chr(10) || '}' || chr(10) || '}' || chr(10) || '���������ռ����á������ʼ�����������ݿ�ȫ����ȷ��������ťbutton1��ִ�н��Ϊ��ѡһ�', '��UserLogin����������һ����¼', '����ds.AcceptChanges()��da.Update(ds, ��UserLogin��)����ͬʱ��', '��������û�н����ݼ�¼���ӵ�UserLogin����', '����������DateTime.Now.Ticks.ToString()���ֶθ�ֵ', 1930, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��WinFormӦ�ó����У�����ͨ�����£�   ������ʹһ�������ΪMDI���塣��ѡһ�', '�ı䴰��ı�����Ϣ', '�ڹ��̵�ѡ����������������', '���ô����IsMdiContainer����', '���ô����ImeMode����', 1931, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һ̨��ΪAptech��SQL Server�������ϣ���һ����ΪExam�����ݿ⣬����ԱΪ�����ݿⴴ����һ���û����û���Ϊbill��������123456��Ϊ��ʹ��ADO.NET�ڸ÷����������ط�������IP��ַ��127.0.0.1���ϲ��������ݿ⣬���������ַ�����д����ȷ�� �ǣ�ѡһ�', '"server = Aptech;database = Exam;uid = bill;pwd = 123456;"', '"server = Aptech;database = Exam;integrated security = sspi"', '"server = .;database = Exam;uid = bill;pwd = 123456"', '"server = 127.0.0.1;database = Exam;integrated security = sspi"', 1932, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'android ����service�������ڵ�onCreate()��onStart()˵����ȷ���ǣ�(ѡ������)', '���service�Ѿ����������Ⱥ����onCreate()��onStart()����', '����һ��������ʱ���Ⱥ����onCreate()��onStart()����  ', '����һ��������ʱ��ֻ�����onCreate()����', '���service�Ѿ�������ֻ��ִ��onStart()����������ִ��onCreate()���� ', 1933, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ͬ�����İ汾��Ƚϣ�HTML4.0��(ѡ��һ��)', '������JavaScript֧��', '������Flash����', '��ǿ����ҳ�Ķ�̬��', '������ActiveX����', 1934, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'mysql_affected_rows()���ĸ�����û��Ӱ�죿(ѡ��һ��)', 'select', 'delete', 'update', 'insert ', 1935, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'C#�д洢���̲����ģ� �����Ա����������뻹�����������ѡһ�', 'DbType', 'ParameterName', 'Direction', 'SqlDbType', 1936, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ʹ�� SQLiteOpenHelper �����ʱ��������һ������������ʵ�ְ汾����֮�õģ�' || chr(10) || 'ѡ��һ�' || chr(10) || '', 'onCreate()', 'onCreade()', ' onUpdate()', 'onUpgrade() ', 1937, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'WriteTagSingleWord������EPCSDK.dll�ṩ��д���ǩ�ĺ�������������пհ״�Ӧ����Ĵ����ǣ� ����ѡһ�' || chr(10) || 'byte[] data = new byte[2];' || chr(10) || 'data = Encoding.Default.GetBytes("��");' || chr(10) || 'if(EPCSDKHelper.WriteTagSingleWord(_handle,0x03,0x00,________,________,0))' || chr(10) || '{' || chr(10) || '    MessageBox.Show("д���û���1���֣�2�ֽڣ��ɹ�");' || chr(10) || '}' || chr(10) || 'else', 'data,0', '0,data', 'data[0],data[1]', 'data.Length,data', 1938, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������ӷ��棬PR��ѡ��Ӧ������ѡ�������Ϊ(��ѡ��', 'PR�ߣ���ضȵ�', 'PR�ͣ���ظ�', 'PR�ߣ���ص�', 'RP�ߣ���ظ�', 1939, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��struts.xml�С�������һ��package��û������namespace����ô����������һ��Action���ֽ���login������result���������õ�<result>/login.jsp</result>,��֪�ڴ������ļ��л�����һ��nameΪuser��package����Ҳ��һ��Action����Ϊlogin������result���������õ�<result>/loginUser.jsp</result>��ô������ʲô����½��ܷ��ʵ�login.jsp����(ѡ��һ��)', '�ڸ�·��������/login', '�ڸ�·��������/user/login', '�ڸ�·��������/login/user', '�ڸ�·��������/abc/login', 1940, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������ڶ��̵߳�����������ǣ� ����ѡһ�', 'һ��Threadʵ��ֻ�ܹ���һ���߳�', 'C#��Main()�������ǵ�һ���߳�', '�߳�һ��������������ֹͣ', '�´������߳��ﲻ��ֱ�ӵ������߳���Ŀؼ�', 1941, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '���¹���ValueStack˵����ȷ���ǣ�ѡ�����', 'ÿ��Action����ʵ��ӵ��һ��ValueStack����', 'ÿ��Action����ʵ��ӵ�ж��ValueStack����', 'Action�з�װ����Ҫ������һ��ҳ���ֵ����Щֵ��װ��ValueStack������', 'ValueStack��������ʼʱ���������������ʱ����', 1942, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '������Щ����洢�ڸ���geodatabase�У�����ѡ��', 'դ������', ' INFO�� ', 'XMLԪ����', '�Զ��幤���� ', 1943, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ArcMap����Щ������������ѡ��Ҫ�أ�����ѡ��', 'ʹ��һ��ͼ�� ', '����ʽ��Ҫ��ѡ�񹤾� ', 'ͨ��ͼ���ļ�ѡ�� ', 'SQL��ѯ ', 1944, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'һ��ƽ������ϵ�ǣ�����ѡ��', 'ͨ��Ҳ��������������ϵͳ ', '���ڶ����ĽǶȵ�λ ', '��������С�����ߵ�ͼ  ', '����Ӣ�߻��׵����Ե�λ����', 1945, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ѡ���դ���ʸ������֮������������ѵ�ѡ�����ѡ��', 'դ�����ݾ����ڱ�����򣬶�ʸ�����ݿ��Ա�������ߺ͵� ', 'ʸ���������ڴ洢����ʵ���硱����������դ���������ڴ洢��Ȼ����', 'ʸ������ͨ����դ�����ݸ���ȷ������û�б�Ҫ���ھ�ȷ ', ' դ������ֻ�ܴ洢�������ֺ����ֵ�����ֵ����ʸ�����ݿ��Դ洢��಻ͬ���������� ', 1946, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������Դλ�õļ��Ͽ���ͬʱ��ArcMap�б༭������ѡ��', '��ͬ��geodatabase�в�ͬҪ�����ݼ��е�Ҫ���� ', '�洢����ͬӲ�̲�ͬĿ¼�µ�shapefiles ', 'һ������Ӳ�̺ͱ���Ӳ���е�coverageҪ�� ', '��ͬ��geodatabase��������ͬҪ�����ݼ���Ҫ����', 1947, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ͼ���˺�geodatabase����֮����ʲô��ͬ�㣿����ѡ��', '�ص�����ֵ ', '�����ܹ���geodatabaseҪ�������', 'Ϊ���������ù��� ', '��������ArcView�д���  ', 1948, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '����geodatabase���˽ṹ������ȷ���������ѡ�����', 'Geodatabase�����˿��������ݿ�����Ϊ�����Ķ��������', 'Ҫ�������ͨ�������������', 'һ��������Ч���㽫���ܸ������˹��� ', 'һ��������Ч���㽫���ܸ��Ĵص�����ֵ ', 1949, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������ArcGIS��geodatabase���˶�����ã�����ѡ��', '��ͼ��ʾ�����еĿռ�������ĳ�̶ֳ��϶����໥��ϵ��', '����ͬ�������ݲ��еĿռ�������ĳ�̶ֳ������໥��ϵ��', '��ͼ��ʾ�ж��������Ŀռ�����λ�õ���ѧ����ʽ', ' ��һ��������������ͼ��֮�䣬�����ӻ����ڵ�Ҫ�ؼ�Ŀռ���� ', 1950, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ѡ��һ���ռ���������Ծۺϸ��ٹ�·����Ҫ�أ�ͼ����أ���Ҫ�أ�ͼ��Ϊһ���µ�ͼ�㣬�⽫����ѡ��ָ�������ڵĸ��ٹ�·������ѡ��', ' Merge    ', 'Union ', 'Intersect    ', ' Clip ', 1951, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������״Ҫ���๩�������������ã�ֲ���ͳ��б߽硣ѡ�����湤�����п��Դ����������ڳ��б߽��ڵ��������ú�ֲ�����µ�Ҫ���ࣺ����ѡ��', 'ʹ��union�ϲ��������ú�ֲ���㣬Ȼ���ó��б߽��clip�ϲ��Ľ��', '�ڳ��б߽��ķ�Χ�ڶ��������ò�ʹ��clip������Ȼ��Եõ��Ľ����ֲ�������union���� ', '�ڳ��б߽��ķ�Χ�ڶ�ֲ����ʹ��clip������Ȼ��Եõ��Ľ�����������ò����union���� ', '�ڳ��б߽��ķ�Χ�ڶ�ֲ������������ò�ʹ��clip������Ȼ��ʹ�ñ༭��������Merge���� ', 1952, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ͶӰ���ݴ洢��ʽ�к͸��Ե��ļ���ʽ�Ƕ�Ӧ��ϵ���ǣ���ѡ��', 'DGN�ļ�ʹ��world�ļ�  ', 'geodatabaseʹ��RDBMS�� ', 'coverageʹ��.PRJ�ļ� ', 'shapefileʹ��.SHX�ļ� ', 1953, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ʹ����Ȼ���෨��Natural Breaks attribute classification�����Է��෽��ʱ������ѡ��', ' ����������������ֵ��Ҫ�ؽ��з��飬�Դ��γɷ��� ', '�����������ֵ��ȥ��Сֵ��Ȼ����Է�������������', '��Ȼ����ھ�ֵ����������   ', 'ÿ���е�Ҫ����Ŀ����ȵ� ', 1954, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����̵�Ĺ���Ҫ������Щ������ѡ��һ�', '�����ʴ�����', '�鿴�ֿ�̨����', '¼���̵����� ', '�����̵㱨���', 1955, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���й���K/3���˵����ȷ���ǣ�ѡ��һ�', '��ҵ��ֻ������һ�����', '��ּ��ܺ�������Ҳ�ܺ�����', '���ֻ�ܺ����������ܺ����� ', '�����ָ����ҵ�⽨���Ĳֿ�', 1956, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ֿ�������ܹ����е�ҵ���ǣ�ѡ��һ�', '���֮��ĵ��� ', 'ʵ��֮��ĵ���', '���ܲ�֮��ĵ���', '��ʵ��֮��ĵ���', 1957, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Ӧ����ʼ���������ڼ����������ã�ѡ��һ�', ' �����������', '�м�㽨����', 'ϵͳ���� ', '��������', 1958, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���Ӳֿ�����10���Բ���A��Ʒ���͸��ͻ���Ӧ����ѡ��һ�', '���۳��ⵥ', '�������ⵥ', '��Ʒ���ⵥ', 'ί��ӹ����ⵥ', 1959, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', ' ��¼�뵥��ʱ��Ҫ���м�ʱ����ѯ���ÿ�ݷ�ʽ��ѡ��һ�', 'F6', 'F7', 'F8', 'F12', 1960, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����˵������ȷ���У�ѡ��һ�', '�ɹ�ϵͳ���е��ݶ����Թ�������', '�����ַ�Ʊʱ��ֻҪ¼�븺������������', '�ڲɹ�ϵͳ��¼����⹺��ⵥ���Զ����ݵ��ִ�ϵͳ��', '��Ʊ�������ڵ�����ʱ���н��д���', 1961, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Ӧ����ʼ������¼�벻������   �����ݣ�ѡ��һ�', '�ֲֿ�¼������ϵ��ڳ��������������ۼƳ�������������', '�ڳ��ݹ���ⵥ�� ', '�ڳ�δ���������۳��ⵥ��', '�ճ�����', 1962, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���£�   �����ݲ����Թ��������������ɣ�ѡ��һ�', '�⹺��ⵥ', '�ɹ���Ʊ', '����֪ͨ��', '�ɹ���ͬ', 1963, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���£�  �������ܹ������۶������ɣ�ѡ��һ�', '�ɹ�����', '�⹺��ⵥ', '�ɹ���Ʊ', '�˻�֪ͨ��', 1964, 409);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'K/3ϵͳ�Ľ��ʹ�������____���С�(ѡ��һ��)', 'K/3�ͻ���', 'K/3�м��', 'K/3���ݿ�', '���ϼ����Կ�', 1965, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ĳ��ҵ������2000��6�£�2005��12�¹���K/3�����2006��3�¿�ʼ��ʽʹ�������¼��2006��1�µ��������ݣ������ҵ�����������ڼ��ǣ���(ѡ��һ��)', '2000��6��', '2005��12��', '2006��3��', '2006��1��', 1966, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���K/3 ϵͳ��ѭ΢��Windows DNA ��ܽṹ����������ṹ����������������(ѡ��һ��)', '���ݿ��', '�м��', '������Դ��', '�ͻ���', 1967, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ӵ��������Ȩ�ޣ�������Ȩ���û���(         )(ѡ��һ��)', 'ϵͳ����Ա', '�κ�������ȫ��Ȩ�޵��û�', 'û�д����û�', '��ͨ�û�', 1968, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������û�ʱ���Բ�������()(ѡ��һ��)', '¼���û���', 'ȷ����֤��ʽ', 'ѡ���û���', '��Ȩ', 1969, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ʼ�����ճ�ƾ֤ҵ�������ͬ������,���ǲ���ִ�еĲ����ǣ���(ѡ��һ��)', 'ƾ֤���', 'ƾ֤����', 'ƾ֤����', '��ѯ�ʲ�', 1970, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�Ƶ�ʱ��������ȡ�������ϵ����ݵ�ͨ�û�ȡ����)(ѡ��һ��)', 'F7', 'Ctrl+F7', 'F11', 'ESC', 1971, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�̶��ʲ���ʼ��������ȷ˳������һ�   ��a��������������   b����ʼ���ݵ�¼�� c��������ʼ�� d��ϵͳ����������(ѡ��һ��)', 'abcd', 'dabc', 'bcad', 'abdc', 1972, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����һ����Ϊ��Customers�����±�ͬʱҪ���±��а�����clients�������м�¼��SQL����ǣ�ѡһ�', 'Select * into customers from clients', 'Select  into customers from clients', 'Insert into customers select * from clients', 'Insert customers select * from clients', 1973, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���ڲ�ѯ���еı���, ����(  )����ǲ���ȷ�ġ���ѡһ�', 'Select name as ''����'' from table', 'Select name as���� from table where id =1', 'Sleect name = ���� from table', 'Select  names���� from table', 1974, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����������һ�����ݿ�Ӧ�ó����������;��ʱ�����ݿ���������¹滮�����ԭ�������ݿⲻ��ʹ�ã�����������һ���µ����ݿ�ͺ����ݿ��ṹ�����ǣ�ԭ����һ����Ҫ�ı����������˴��������ݣ��������µ����ݿ���ԭ�������ݿ��Ľṹ�����ֱ�Ľṹ��û�и��ģ�Ϊ�˰�ԭ�����������µ����ݿ������ã����Բ�����õİ취�ǣ�ѡһ�', '�������µ����ݿ����¼��ȫ��������', 'ʹ������ת�������������ܰ�ԭ�������ݱ���Ϊ�ı��ļ����ٰ��ı��ļ��������µ����ݿ���', 'ʹ�á�INSERT INTO[�µı���] SELECT [�ɵı���]���Ĳ��������б�֮�������ת��', '���Ƚ������ű�֮����������ϵ������VB��ʹ��ADO����������ݷ����������в���', 1975, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ADO.NET�У����д������к���������ǣ�ѡһ�' || chr(10) || 'DataTable dt = new DataTable();' || chr(10) || 'dt.Columns.Add("���",typeof(System Int16));' || chr(10) || 'dt.Columns.Add("�ɼ�",typeof(System Single));' || chr(10) || 'Console.WriteLine(dt.Columns[1].DataType);', 'System.Int16', 'System.Single', '���', '�ɼ�', 1976, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ADO.NET�У���֪����sqlCom��һ��SqlCommand���������д�������ʱ�������쳣���ǣ�ѡһ�' || chr(10) || 'SqlDataReader reader = sqlCom.ExecuteReader();   //1' || chr(10) || 'reader.Read();                               //2' || chr(10) || 'reader.Close();                              //3' || chr(10) || 'reader.Read();                              //4', '1', '2', '3', '4', 1977, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#�У�����ͨ��װ��Ͳ���ʵ��ֵ��������������֮���໥ת���������д����У���(  )��ʵ���˲��䡣��ѡһ�' || chr(10) || 'int age = 5;' || chr(10) || 'object o= age;    //0' || chr(10) || 'o=10;             //1' || chr(10) || 'age=(int)o;       //2' || chr(10) || 'object oAge =age; //3', '0', '1', '2', '3', 1978, 103);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '�����洢�������£�' || chr(10) || 'CREATE procedure bookproc' || chr(10) || '@id int, @title char(20) OUTPUT  ' || chr(10) || 'as' || chr(10) || 'select @title=title from book where id= @id' || chr(10) || 'ִ�иô洢���̵ķ�����ȷ���ǣ�ѡ���', 'exec bookproc 1,@title output ' || chr(13) || 'print @title', 'exec bookproc @id =1,@title output ' || chr(13) || 'print @title', 'declare @title char(20) ' || chr(13) || 'exec bookproc 1,@title output ' || chr(13) || 'print @title', 'declare @title char(20) ' || chr(13) || 'exec bookproc @id =1,@title output ' || chr(13) || 'print @title', 1979, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����Ҫƥ������ı���Ԫ�أ�������������ʵ�� ��ѡ��һ�', 'text()', 'contains()', 'input()', 'attr(name)', 1980, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���治����Jquery��ajaxȫ���¼�����  ��ѡ��һ�', 'ajaxComplete(callback) ', 'ajaxSuccess(callback)', '$.post(url)', 'ajaxSend(callback)', 1981, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��jquey�У������Ҫ��DOM��ɾ������ƥ���Ԫ�أ�������һ������ȷ�� ��ѡ��һ�', 'delete()', 'empty()', 'remove() ', 'removeAll()', 1982, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��jquery����Ҫ�ҵ�����Ԫ�ص�ͬ��Ԫ�أ�������һ���ǿ���ʵ�ֵ� ��ѡ��һ�', 'nextAll([expr])', 'siblings([expr])', 'next()', 'find([expr])', 1983, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ѡ������һ���Ǻ�$("#foo")�ȼ۵�д������ѡ��һ�', '$("foo#")', '$(#"foo")', '$ ("foo")', 'jQuery("#foo")', 1984, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��jQuery�У����й����ĵ�����������д��������ǣ�������ѡһ�', '$(document).ready(function() {' || chr(10) || '});' || chr(10) || '', ' $(function() {' || chr(10) || '});' || chr(10) || '', '$(document)(function() {' || chr(10) || '});' || chr(10) || '', '$().ready(function() {' || chr(10) || '});' || chr(10) || '', 1985, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���£���ѡ��ܹ���ȷ�صõ������ǩ����ѡһ�' || chr(10) || '<input id="btnGo" type="button" value="������" class="btn"/>' || chr(10) || '', ' $("#btnGo")', '$(".btnGo")', '$(".btn")', '$("input[type=''button'']")', 1986, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��HTMLҳ���������½ṹ�Ĵ��룺' || chr(10) || '<div id="header">' || chr(10) || '    <h3>' || chr(10) || '       <span>S3N��֤����</span>' || chr(10) || '    </h3>' || chr(10) || '    <ul>' || chr(10) || '        <li>һ</li>' || chr(10) || '        <li>��</li>' || chr(10) || '        <li>��</li>' || chr(10) || '        <li>��</li>' || chr(10) || '    </ul>' || chr(10) || '</div>' || chr(10) || '��������ѡ�����ʾjQuery���룬���ܹ��ú��֡��ġ�����ɫ��ɺ�ɫ����ѡһ�' || chr(10) || '', '$("#header ul li:eq(3)").css("color","red");', '$("#header li:eq(3)").css("color","red");', '$("#header li:last").css("color","red");', '$("#header li:gt(3)").css("color","red");', 1987, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��HTMLҳ���������½ṹ�Ĵ��룺' || chr(10) || '<ul id="p-list">' || chr(10) || '    <li>ƻ��iPhone 4S</li>' || chr(10) || '</ul>' || chr(10) || '�������£������������á�ƻ��iPhone 4S�����ء���ѡһ�' || chr(10) || '', '$("#p-list li:nth-child(0)").hide();', '$("#p-list li:only-child").hide();', ' $("#p-list li:last-child").hide();', ' $("#p-list li:first-child").hide();', 1988, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����±�ǩ��<input id="txtContent" class="txt" type="text" value="����"/>' || chr(10) || '���ʲ��ܹ���ȷ�Ļ�ȡ�ı��������ֵ��������������ǣ�������ѡһ�' || chr(10) || '', '$(".txt").val()', '$(".txt").attr("value")', '$("#txtContent").text()', '$("#txtContent").attr("value")', 1989, 326);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '�ڿ���������һ����Ҫ�����Ӧ���Ե�___________��___________��(ѡ������)', 'setter����', 'as����', 'getter����', 'is����', 1990, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������Ҫ��___________�����ļ��н������á�(ѡ��һ��)', 'web.xml', 'struts.xml', 'struts2.xml', 'webwork.xml', 1991, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ArcCatalog�д���һ���µ�Ҫ������������һ����������Ը��������ĸ���������ѡ��', '����Zֵ�Ĵ洢 ', '����Mֵ�Ĵ洢 ', ' X/Y��Χ��ֵ    ', ' ͶӰ����ϵ ', 1992, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ArcMap�����ֱ༭����Ҫ����һ���༭���̣���ѡ��', ' �ƶ�һ��Ҫ�� ', '���ֶμ������ʹ��Undo��ť ', '������ͼ��֮�俽����ճ��Ҫ�� ', 'ɾ��һ����������ֶ� ', 1993, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ArcMap�����㣺����ѡ��', '��һ�������Ĳ����У����ܴ�Ŀ¼�����Ƴ�һ��ͼ�� ', ' ����ʹһ�����ݿ�ܴ��ڻ״̬ ', '�Ҽ����Ŀ¼��������ͼ��ķ��ţ����÷���ѡ����', 'ÿ����ͼ�ĵ��н������һ�����ݿ��', 1994, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ArcMap�У��ĸ�������̽�ʹ��ͼ������Ա���Ա��鿴����ѡ��', 'ѡ��ͼ�㣬Ȼ���ڱ�׼�������е�������Ա�İ�ť', 'ѡ��ͼ�㣬Ȼ������ͼ�˵��µ�������Ա�İ�ť', '�Ҽ����ͼ�㣬�������Ĳ˵���Ȼ���������Ա� ', '�Ҽ����ͼ�㣬ѡ�����ԣ�Ȼ��ѡ���ֶα�ǩ', 1995, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Ϊ�˼���һ���µ��ı���ע��Ҫ�����У�����Ҫ���������á�Active AnnotationTarget������ѡ��', '�༭���������ڱ༭���ܵ������˵���', '�༭�������������������б��� ', ' ���������˵���  ', '��ͼ���������ڻ�ͼ�����˵��� ', 1996, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ArcGIS geodatabase�ܹ��洢������������ʵ�֣����˺���ҵ��������������������������geodatabase֮��Ĳ�𣨵�ѡ��', '��geodatabase��Сָ������     ', '�û��ܹ�ͨ���������ӵ�geodatabase ', '��Ԫ������Ϣ�洢Ϊ�� ', ' ʹ��ArcView��ɿ������� ', 1997, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�������ּ�����Ȩ�����ݿ�ܵ����ԣ���ѡ��', '�Ҽ�������ݿ�������Դ������Ĳ˵� ', ' ����˵� ', ' ��ͼ�˵�', ' �ڲ�����ͼ���Ҽ�������ݿ�� ', 1998, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������������������ArcGIS9�е������ݸ�ʽ����ѡ��', ' Raster attribute type  ', 'Raster dataset ', ' Raster catalog  ', ' Image catalog ', 1999, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����XML�ĵ����ͱ���geodatabase��Ϊ����ѡ��', '�����ռ�ͼ�¼�� ', '�����ռ��Delta ', 'Delta�ͼ�¼�� ', '�����ռ� ', 2000, 402);
commit;
prompt 2000 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Coverages��������Ϣ�洢�ڲ�ͬ�ı������С������������Щ�����У���ѡ��', ' .pat', ' .aat ', '.nat', ' .ind ', 2001, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���Ļ�׼��ͱ��ػ�׼��֮��������ǣ���ѡ��', '���Ļ�׼���ԭ���ڵ�����֪�����ģ����ػ�׼���ԭ���ڱ��� ', '���Ļ�׼���ԭ���ڵ�����֪�����ģ����ػ�׼���ԭ����ĳ��ר������ĵ������ ', '���Ļ�׼���ԭ���ڱ��������ػ�׼���ԭ���ڵ�����֪������ ', '���Ļ�׼��ʹ����������ϵ�����ػ�׼��ʹ��Cartesian����ϵ', 2002, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�ص���Use Printer Pager Settings��ѡ������Ҫ���ǣ���ѡ��', ' �����Ϊ��ӡ�������µ�Ĭ��ҳ��߰� ', ' �㲻���ٹ����ͼ�ĵ� ', ' �㲻����ʹ��Ĭ�ϵ�ArcMapģ���ļ� ', '����������Զ��塢�Ǳ�׼��ҳ���С ', 2003, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ArcMap�в�֧������ɫ��ģʽ����ѡ��', ' CMYK ', ' HSV ', 'SPOT ', 'ArcInfoɫ������', 2004, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ť�Ĺ����ǣ���ѡ��', '�ڲ�����ͼ��������ͼ֮���л�', '������ѡ������ݿ��', ' ��ͼ�μ��뵽�����ͼҳ����', '�ڲ�ͬ��ͼģ��֮���л� ', 2005, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���������Ĺ̶��ʲ��ڣ��������۾�(ѡ��һ��)', '����', '����', '����', '����', 2006, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�Ѿ�ʹ�õĹ̶��ʲ��䶯��ʽ�Ȼ������Ͻ���   ��(ѡ��һ��)', '�ɽ���', '��ɾ��', '�޷�ɾ��', '������', 2007, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�̶��ʲ�����ҵ���ڣ�   ������(ѡ��һ��)', '��Ƭ�䶯', '��Ƭ����', '��Ƭ����', '�̶��ʲ�����', 2008, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��¼��Ŀ�Ƭ�������û�б���ˣ�����ϵͳ��û�н��н��ˣ����ڵ��ڣ��򻹿��ԶԿ�Ƭ���У�     ��������ֻ�ܶԿ�Ƭ���б䶯���������ı俨Ƭ���������ϡ�(ѡ��һ��)', '�޸Ļ�ɾ��', '��������', '����', '����', 2009, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�̶��ʲ���ֵ�ļ���Ϊ��       ��(ѡ��һ��)', '�̶��ʲ�ԭֵ-�ۼ��۾�', '�̶��ʲ�ԭֵ-�ۼ��۾�-��ֵ׼��', '�̶��ʲ�ԭֵ-�ۼ��۾�-��ֵ׼��-����ֵ', '�̶��ʲ�ԭֵ-�ۼ��۾�-����ֵ', 2010, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�̶��ʲ�ϵͳ�ṩ�ļ����۾ɷ�������������(ѡ��һ��)', 'ƽ�����޷�', '˫�����ݼ��� ', '�Զ���', '������������', 2011, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Ӧ�գ�����ϵͳ�������Զ����µ�������ƾ֤(ѡ��һ��)', '�Ѻ����ĵ���', '����˵ĵ���', 'δ�����ĵ���', 'δ��˵ĵ���', 2012, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ù����в�������   ��(ѡ��һ��)', '���ö��', '��������', '��������', '��Ʒ����', 2013, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���K/3 10.3����ϵͳ�У��ṩ��3�ֻ�����㷽�������治��ȷ����(ѡ��һ��)', '����������', '�����ȼ���', '���ڼ����', '����ȼ���', 2014, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���K/3 10.3����ϵͳ�У�����ְԱ�����������(ѡ��һ��)', 'ְԱ�������޸�', '��������¼�����޸�', '�������ݲ��������޸�', '��Ա�䶯�н��д���', 2015, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���K/3 10.3ϵͳ�У��ṩ�˷��÷��书�ܣ����÷����Ǻ�K/3ʲôģ��ҵ�������ص�(ѡ��һ��)', '������Դϵͳ', '�̶��ʲ�ϵͳ', '����ϵͳ', '�ֽ�ϵͳ', 2016, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ڽ��K/3 10.3����ϵͳ�У�����˰���ü�����ϣ�����Ҫ���������Ӧ������˰��������룬�����ʼ��㣻(ѡ��һ��)', '����¼��', '����˰����', '���ʷ��ű�', '��ĩ����', 2017, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ڻ�ƵĲ����ͷ�չ������˵��������ǣ�       ��(ѡ��һ��)', ' �������Ӧ�������ʵ���;��ù���Ŀ͹���Ҫ��������', ' ʣ���Ʒ�ĳ����ǻ�Ʋ�����ǰ������', ' ������Ƶĳ����Խ�����˷��Ĳ�����Ӧ��Ϊ��־', ' �ִ�����Բ����Ƶ��γ�Ϊ��־', 2018, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ȷ�Ϻͼ���������������       ��(ѡ��һ��)', '�ո�ʵ����', ' Ȩ������', '�����', ' ������', 2019, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Ƽ��費������      ��(ѡ��һ��)', '����������', ' ������Ӫ����', '�����ȼ���', '���Ҽ�������', 2020, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������һ�ȫ�ǻ��Ҫ�أ�    ��(ѡ��һ��)', ' �ʲ�����ծ������', '�ʲ������롢����', '���롢���á�������Ȩ��', ' ���롢˰������', 2021, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������һ������������벻��������Ҫ�أ�      ��(ѡ��һ��)', ' ������Ʒ', '�̶��ʲ���ӯ', '�ṩ����', '�ö��ʲ�ʹ��Ȩ', 2022, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���ڡ������д��黹���ڽ��50 000Ԫ�����µĻ��Ҫ�صı仯������˵����ȷ���ǣ�    ��(ѡ��һ��)', '�ʲ����ӣ���ծ����', '�ʲ����ӣ���ծ����', '�ʲ����٣���ծ����', ' �ʲ����٣���ծ����', 2023, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������Ŀ��book�����ݼ��±� ����ִ��SQL��䣺update book set title=replace(replace(title,''j'',''a''),''servlet'',''csharp'')��ִ�н���ǣ�ѡһ�' || chr(10) || 'bookid    title' || chr(10) || '1         jsp&servlet' || chr(10) || '2         jsp' || chr(10) || '3         Professionalservlet' || chr(10) || '4         asp', '������3����¼', '������2����¼', '������1����¼', '��SQL����д����޷�ִ��', 2024, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��SQL Server 2005 �У����趩����orders�����洢������Ϣ��cid����ͻ���ţ���Ҫ��ѯÿ���ͻ��Ĵ����Լ��ͻ���ţ����������ȷ���ǣ�ѡһ�', 'select count(cid), cid from orders', 'select count(cid), cid from orders order by cid', 'select count(cid), cid from orders having count(cid)>0', 'select count(cid), cid from orders group by cid', 2025, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��SQL Server 2005�У��ٶ�grade(�ɼ�)���а����ֶΣ�sID(ѧ��),cID(�༶���)��lang(���Ŀγɼ�)��math(��ѧ�γɼ�),��ô�Ȱ��༶�������ĳɼ������SQL����ǣ�ѡһ�', 'SELECT * FROM grade GROUP BY lang,cId', 'SELECT * FROM grade GROUP BYcId,lang', 'SELECT * FROM grade ORDER BY lang,cld', 'SELECT * FROM grade ORDER BY cId,lang', 2026, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��SQL Server 2005�У�ѧ����student�а�����ĸ��ѧ�����sid����������ѧ������sName���ɼ���score�����ֶΣ��γ̱��cid��ѧ�����sid���������ѧ���ɼ�score������ѧ�������10�����ݣ��ɼ������6�м�¼����sid��û���ظ�ֵ������ôִ������SQL��䣬�����أ�������¼����ѡһ�' || chr(10) || 'Select * from student left outer join score on student.sid=score.sid', '0', '6', '10', '16', 2027, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�ڲ�ѯ���������������������䣬�õ��Ľ���ǣ�ѡһ�' || chr(10) || 'CREATE TABLE numbers��' || chr(10) || '    N1 INT��' || chr(10) || '    N2 NUMERIC��5��0����' || chr(10) || '    N3 NUMERIC��4��2��' || chr(10) || '��GO' || chr(10) || 'INSERT INTO numbers VALUES��1.5��1.5��1.5�� ' || chr(10) || 'SELECT * FORM numbers', '����2��2��1.50�Ľ������', '����1.5��1.5����1.5�Ľ������', 'CREATE TABLE�����ִ�У���Ϊ���޷�Ϊ��N2���þ���Ϊ0', '����1��2����1.50�Ľ������', 2028, 104);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Demographic����1000���С�����90%���û��������Ҹ������е�20�С�ʣ�µ��к����õ���Ҳ����Ҫ������ȡDemographic�����Ϣʱ������ѡ���У������ܹ�������ݶ�ȡ�͸��µ����ܡ���ѡһ�', '��Demographic������ȡ�����Ͻ���������', '���ڸ�Demographic������ȡ��20�н���һ����ͼ', '��Demographic��ָ��2���±�һ������20�����ȡ���У���һ������ʣ�µ���', '�����û�����Ҫ����һϵ�д洢������ѡ������Demographic��', 2029, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���У����������������������������������е��޸ģ�ѡһ�', 'COMMIT TRANSACTION', 'ROLLBACK TRANSACTION', 'BEGIN TRANSACTION', 'SAVE TRANSACTION', 2030, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��SQLServer2005�У�����orders���д����Զ�����ֶ�oid����1�ļ�¼��ִ������T-SQL,����˵����ȷ���ǣ�ѡһ�' || chr(10) || ' BEGIN TRANSACTION' || chr(10) || ' Delete from Orders   where oid =1' || chr(10) || ' IF(@@Error<>0)' || chr(10) || '  ROLLBACK TRANSACTION' || chr(10) || 'Else' || chr(10) || ' COMMIT TRANSACTION', 'ִ�гɹ���oid Ϊ1�ļ�¼������ɾ��', 'ִ�гɹ���order��û���κα仯', 'ִ��ʱ���ִ���', 'ִ�гɹ�����������û�н���', 2031, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������Struts 2����ǩ�����___________(ѡ��һ��)', '<s: textfield >', '<s: textarea >', '<s: submit >', '<select>', 2032, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���¹���struts�������У�����ȷ���ǣ���(ѡ��һ��)', 'struts ��һ������JAVA EE��MVC', 'struts2�Ŀ�������ļ���struts-config.xml', 'struts2�Ŀ����齨���İ������Ŀ��ƺ�ҵ�������', '��struts�н�������������ͨ���޸�struts��I18n��encoding��ֵΪGBK��ʵ��', 2033, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������Struts2�Ķ�����ĳ�������ֵ����()(ѡ��һ��)', 'success', 'input', 'never', 'login', 2034, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���²�����Struts2����ִ�еĽ�������ǣ���(ѡ��һ��)', 'action', 'redirect', 'redirectAction', 'dispatcher', 2035, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��struts.xml�С�������һ��package��û������namespace����ô����������һ��Action���ֽ���login������result���������õ�<result>/login.jsp</result>,��֪�ڴ������ļ��л�����һ��nameΪuser��package����Ҳ��һ��Action����Ϊlogin������result���������õ�<result>/loginUser.jsp</result>��ô������ʲô����½��ܷ��ʵ�login.jsp����(ѡ��һ��)', '�ڸ�·��������/login', '�ڸ�·��������/user/login', '�ڸ�·��������/login/user', '�ڸ�·��������/abc/login', 2036, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ͬ���߳��ڵ���Actionʱ��������Actionʵ��������(ѡ��һ��)', '1��', '2��', 'ÿ���̴߳���1����', '�����Զ������á�', 2037, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'struts�ṩ��Action�ӿڶ�����5����׼�ַ������������������У���(ѡ��һ��)', 'SUCCESS', 'NONE', 'REG', 'LOGIN', 2038, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����������ĸ�����Struts2�����ƣ�ѡ��һ�', '������ʽ���', '����ʽ���', '�ṩ��������', '�ṩ������ת����', 2039, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���в�����MVC���ģʽ���ǣ�ѡ��һ�', 'ģ�Ͳ�', '���Ʋ�', '���ݲ�', '��ͼ��', 2040, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'StrutsPrepareAndExecuteFilter������Ӧ�����ĸ��ļ��в���ѡ��һ�', 'validators.xml', 'struts.xml', 'web.xml', 'index.jsp', 2041, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2����Jar���追�����ĸ�Ŀ¼��ѡ��һ�', 'WEB-INF/lib', 'WEB-INF', 'WebRoot', '����˵��������ȷ', 2042, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���´���˵����ȷ����(ѡ��һ��)' || chr(10) || '<s:iterator id="book" value="#arr.booklist" status="st">' || chr(10) || ' <s:if test="st.odd">' || chr(10) || '  <tr bgcolor="yellow"></tr>' || chr(10) || ' <s:if>' || chr(10) || ' <s:else>' || chr(10) || '  <tr bgcolor="red"></tr>' || chr(10) || ' </s:else>' || chr(10) || '</s:iterator>', '������Ϊ��ɫ', '������Ϊ��ɫ', 'ż����Ϊ��ɫ', 'ż����Ϊ��ɫ', 2043, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���²����ڿ���struts2��ҵ�������Action�ķ������ǣ�ѡ��һ�', 'POJO', 'ʵ��Action�ӿ�', '�̳�ActionSupport��', 'ʵ��Validator�ӿ�', 2044, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Ϊ��ʵ�ֻ���ģ�͵�������Action�������ʵ��ModelDriver�ӿڣ�ͬʱʵ��ModelDriver�ӿ��е�(ѡ��һ��)����', 'getUser', 'getModel', 'execute', 'setUser', 2045, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��mo���ο����л�һ��polyline����Ҫ��������Point���󣨣�', '1', '2', '3', '4', 2046, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ArcEngine���ο����ļ����ǻ��ڣ����Ŀ���������ѡ��һ�', 'COM', 'REST', 'C#', 'DESKTOP', 2047, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������ڽӿ�ת����C#�����ǣ�ѡ��һ���', 'm_Map.CurrentTool = pCommand;', 'command.Name == commandName;', 'pSpatialFilter.Geometry=IPolygon as IGeometry;', 'IPoint point = new PointClass(); ', 2048, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������Դӡ����������ļ��м��������С������õء�������� �� �� ѡ��һ� ', 'Select * FROM ������ WHERE ����=�������õء� ', 'Select * FROM ������ WHERE ���� IN �������õء�', 'Select �����õ� FROM ������ ', 'Select * FROM ������ WHERE ����= =�������õء�', 2049, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ĳ��Ϊ�˱������⳵˾���İ�ȫ�������˳��⳵GPS���ϵͳ�����������ø�ϵͳ�Դ���Σ��״����˾������Ӫ�ȣ�������ڸ�Ӧ�õ������в�̫������� ����ѡ��һ�', 'GIS�Ǹ�ϵͳ�������Ҫ֧�ż���֮һ', '��ϵͳ��Ӧ����Ҫ�ڳ��⳵�ϰ�װGPS�豸', '��ϵͳ������Ӧ����Ҫ����׼ȷ����Ч�Ŀռ��������������������� ', '˾���о���Σ��ʱ������ͨ�����ܻ��ر�����ָ�����Ŀ���ͨ��ң������ʵʱ���㵽�ó��⳵������λ��', 2050, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ArcMap�е� ����������ʵ��Ӱ��ͼƬ��У׼�� �� ѡ��һ� ', 'Editor ', 'ArcScan ', 'Georeferncing ', 'Data Frame Tools', 2051, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�ҹ�Ŀǰ���µõ��Ĺ��Ҽ����ɹ���ȡ����ʲô�������ϵ �� ��ѡ��һ�', '����54', '�±���54 ', '����80', '2000���Ҵ������ϵͳ', 2052, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ArcCatalog������������ȷ���ǣ� ��ѡ��һ� ', '��ArcCatalog�п��Դ�����ͬ���͵��ļ�����shapefile ', 'ArcCatalog�޷�����ƶ��豸�����ƶ�Ӳ�̻����̣��ϵ����� ', 'ArcCatalog֧������������������Χ������ʱ�������� ', 'ArcCatalog֧��ɾ��shapefile��coverage�Ȳ�ͬ��ʽ��������', 2053, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ڵ�����Ϣϵͳ�Ŀռ�������������ȷ���� �� �� �� ', '�ռ�������դ��ṹ��ʸ���ṹ�������ݽṹ ', '���԰ѿռ����ݹ���Ϊ���ࣺ1)�������� 2)�������� 3)��ϵ���� ', 'դ��ṹ�������ص��ǣ��������ԣ���λ������������ֱ�Ӽ�¼���Ա��� ', 'ʸ�����ݽṹ���;��С�λ�����ԡ��������������ص㣬�����������դ��ṹ�Ƚϼ�', 2054, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��mo���ο����е�MapLayer��ʲô����ѡ��һ���', 'ͼ�㼯�϶���', '��ͼ����', 'ͼ�����', '���Ŷ���', 2055, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��mo���ο�����ʹ��ʲô���ϴ洢���ͼ�㣨ѡ��һ�', 'Tables', 'Columns', 'Layers', 'Rows', 2056, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��mo���ο�����Symbol��ʲô����ѡ��һ�', 'ͼ�����', '�����', '���Ŷ���', '���ֶ���', 2057, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ArcEngine��ArcObjects�ģ�ѡ��һ���', '�Ӽ�', '����', '����', '����', 2058, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������һ����е��������������� �� �� �� ', '�ռ�����������������ʱ������', '�ռ�����������������ʱ������', '��������������������ʱ������ ', '�ռ�������������������������', 2059, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����д������2000Ԫ�Ļ�Ʒ�¼�跽Ϊ���裺ԭ���ϡ� 2000�����������ȷ��д���ǣ�   ��(ѡ��һ��)', ' �������д���2000', '�������ڽ��    2000', '����ʵ���ʱ�����2000', ' �����ֽ�    ����2000', 2060, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ʹ���ֽ�֧������2000Ԫ�Ļ�Ʒ�¼����Ϊ�������ֽ� 2 000������跽��ȷ��д���ǣ�   ��(ѡ��һ��)', ' �裺��������    2000', '�裺���д��    2000', '�裺�������    2000', '�裺Ӫҵ��֧��  2000', 2061, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ҵ����Ͷ����Ͷ��һ̨�豸����ֵ20 000Ԫ�Ļ�Ʒ�¼�跽Ϊ���裺�̶��ʲ�����20 000�����������ȷ��д���ǣ�    ��(ѡ��һ��)', ' �������д���2 0000', '�������ڽ���20 000', '����ʵ���ʱ�����20 000', ' ����Ӧ���˿  20 000', 2062, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������79000Ԫ������֧Ʊ60000Ԫ�����δ���Ļ�Ʒ�¼�跽Ϊ���裺ԭ���ϡ��� 79000�����������ȷ��д���ǣ�    ��(ѡ��һ��)', '����Ӧ���˿19000' || chr(10) || '���д��  60000' || chr(10) || '', '����Ӧ���˿79000', ' �������д�79000', '�������д�19000' || chr(10) || 'Ӧ���˿�  60000' || chr(10) || '', 2063, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ĳ��˾�����д��38 000Ԫ�������5000Ԫ�͹̶��ʲ�33 000Ԫ�Ļ�Ʒ�¼����Ϊ���������д�38 000������跽��ȷ��д���ǣ�     ��(ѡ��һ��)', ' �裺���д��    38000', '�裺ԭ����      38000', ' �裺ԭ���ϡ���  33 000' || chr(10) || '�̶��ʲ���  5 000' || chr(10) || '', '�裺ԭ���ϡ���  5 000' || chr(10) || '�̶��ʲ���  33 000' || chr(10) || '', 2064, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ڼ���ƾ֤������˵��������ǣ�    ��(ѡ��һ��)', '����ƾ֤��Ϊ��ʽ����ƾ֤�͸�ʽ����ƾ֤', '����ƾ֤����ԭʼƾ֤�͸�ʽ����ƾ֤', 'ר�ü���ƾ֤���ڸ�ʽ����ƾ֤', 'ͨ�ü���ƾ֤���ڸ�ʽ����ƾ֤', 2065, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����ռ��ˣ�����˵��������ǣ�    ��(ѡ��һ��)', '�ǰ��վ���ҵ������ʱ���Ⱥ�˳���������˳��Ǽǵ���', '�ռ������ֽ��ռ��˺����д���ռ���', 'Ӧ���˿��ʺ����ռ���', '�ռ���Ҳ��Ϊ��ʱ��', 2066, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���д����ֽ�֮���໥���ε�ҵ�񣬰��ҹ����ʵ��Ĺ���Ӧ���ƣ�     ��(ѡ��һ��)', '����ƾ֤', '�տ�ƾ֤', 'ת��ƾ֤', '����Ҫ���Ƹ���ƾ֤Ҳ��Ҫ���Ƹ���ƾ֤', 2067, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ƾ֤��ʹ�õĻ�ƿ�Ŀ�������󣬲��Ѱ�����ƾ֤�Ǽ����� ���Ҽ���ƾ֤���˲���¼���Ǻϣ���ʱӦ��ʹ�ú��ָ�����������������һ�����������Ǵ���ģ�     ��(ѡ��һ��)', ' �ú��ֽ�����һ����ԭ�������ƾ֤����һ�µļ���ƾ֤����ժҪ����ע��������ĳ�ա���ƾ֤����', '�ú��ֽ������й��˻����Գ���ԭ���Ĵ���', '�����ֻ���ֱ���һ����ȷ�ļ���ƾ֤����ժҪ����ע��������ĳ�ա���ƾ֤����', ' �����ֻ���ֵǼ��й��˻����Ը�������', 2068, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ʤ����˾Ͷ�ʾɻ���һ̨���û��������ü�ֵΪ150000��˫��Э������ֵΪ130000����������跽Ϊ���裺�̶��ʲ�   150000���������Ϊ��     ��(ѡ��һ��)', '����ʵ���ʱ�     150000', '�����ʱ�����     150000', '�����ۼ��۾�     20000' || chr(10) || 'ʵ���ʱ�     130000' || chr(10) || '', 'D. �����ۼ��۾�     20000' || chr(10) || '�ʱ�����     130000' || chr(10) || '', 2069, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�յ����ѹ�˾�����ҹ�˾�±���γ�һ�����м�300000����������跽Ϊ���裺�̶��ʲ�   300000���������Ϊ��     ��(ѡ��һ��)', '����ʵ���ʱ�   300000', '�����ʱ�����   300000', '����Ӧ���˿�   300000', '����Ӫҵ������ 300000', 2070, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���·ֱ���SQL Server2005���������ݱ�Ľṹ�������Ѿ��е��������Anumber�ֶ�Ϊ���������������ֶ��������Ͷ��ǳ���Ϊ32���ַ����ڲ�ѯ��������ִ�����µ�' || chr(10) || '��-SQL��ѡһ�' || chr(10) || 'SELECT Account_No,Aname FROM Saving_Accounts' || chr(10) || 'UNION SELECT Account_No,Bname FROM Current_Accounts' || chr(10) || '' || chr(10) || 'Saving_Accounts��ṹ����      Current_Accounts��ṹ����' || chr(10) || 'Account_No Aname     Anumber   Account No Bname' || chr(10) || 'S001       James     1         C001 Wichael' || chr(10) || 'S002       Rita      2         C002 Robin' || chr(10) || 'S003       Wary      3   ' || chr(10) || 'S004       Valcntina 4', '��ѯ������Ϊʹ��UNION��ѯ��ʱ����������ֶνṹ���뱣��һ��', '��ѯ������Ϊʹ��UNION��ѯ��ʱ�򣬲�ѯ������б������뱣��һ��', '��ȷ�õ����ϲ�ѯ�Ľ���������������������Ϊ��ccount_��o��Aname', '��ȷ�õ����ϲ�ѯ�Ľ�������������������������', 2071, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��������T-SQL��������ذ���(  )�ļ�¼������ѡһ�' || chr(10) || 'create table scores ' || chr(10) || '(' || chr(10) || 'scoreid int identity(1,2),' || chr(10) || 'score numeric(4,2) not null,' || chr(10) || 'courseid int' || chr(10) || ')' || chr(10) || 'insert into scores values(90.5, null);' || chr(10) || 'insert into scores values(100, 2);' || chr(10) || 'select * from scores;', '1��90.5��null' || chr(13) || '3��100��2', '1��100��2l', '1��90.50��null', '1��90.5��null' || chr(13) || '3��100.0��2', 2072, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '��SQL Server2005�У������洢�������£�Ҫ��Students���в���Age�����䣩��18���ѧ��������������ȷ�ĵ�������洢���̡���ѡ���', 'EXEC Mypl 18', 'EXEC  Mypl @p = 18', 'EXEC  Mypl p = ��18��', 'EXEC  Mypl P = 18', 2073, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����һ��Ա����(employee)��������в�������ʱ�������ṩ��ְʱ��(beginTime)���Ͱ�ϵͳ��ǰʱ���Զ���ΪԱ����ְʱ��������ݿ��У�����˵����ȷ���ǣ�ѡһ�', 'Լ���в���ʹ�ø��ֺ���������ֻ��ʹ�ô�������ʵ�֡�', '����ʹ��CHECKԼ��ʵ�֣�Ĭ��ֵ�������ں���getDate()��', '��ְʱ�������Ϊ�������͡�', '����ʹ��DEFAULT Լ��ʵ�֣�Ĭ��ֵ�������ں���getDate()��', 2074, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������Ĵ洢����' || chr(10) || 'CREATE Procedure Lookup��@a int�� As' || chr(10) || '    If @a is null' || chr(10) || '    Begin' || chr(10) || '        Print ''You forgot to pass in a parameter'' Return' || chr(10) || '    End' || chr(10) || 'Select * from syssobjects where id=@a Return' || chr(10) || '�������洢���̲����������лᷢ����ѡһ�', '�洢���̻��ӡ��You forgot to pass in a parameter��', '�ô洢���̻�����޲��������һ�����ң����ر��е�������', '�ô洢�������﷨����', '��������ӡһ����Ϣ����ʾ�ô洢������Ҫ�ṩһ������', 2075, 201);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'abstract class BaseClass{' || chr(10) || '    public virtual void MethodA()' || chr(10) || '    {   Console.WriteLine("BaseClass");' || chr(9) || '}' || chr(10) || '    public virtual void MethodB(){}' || chr(10) || '}' || chr(10) || 'class Class1:BaseClass{' || chr(10) || '    public  void MethodA()' || chr(10) || '    {  Console.WriteLine("Class1");}' || chr(10) || '    public virtual void MethodB(){}' || chr(10) || '}' || chr(10) || 'class Class2:Class1{' || chr(10) || '    public  void MethodB(){}' || chr(10) || '}' || chr(10) || 'class MainClass{' || chr(10) || '    public static void Main(string[] args){' || chr(10) || '        Class2 c = new Class2();' || chr(10) || '        c.MethodA();' || chr(10) || '    }' || chr(10) || '}����,�˳�������Ľ���ǣ�ѡһ�', 'BaseClass', 'BaseClass Class1', 'Class1', 'Class1 BaseClass', 2076, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Ҫ��Action�з���session����Ϣ��Ҫʵ�֣����ӿڣ�ѡ��һ�', 'RequestAware', 'ApplicationAware', 'ParameterAware', 'SessionAware', 2077, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ȫ����ͼ��ͨ��()��������壨ѡ��һ�', '<result>', '<global-results>', '<action>', '<interceptor>', 2078, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������struts2�Ŀ���������ǣ�ѡ��һ�', 'Action', 'ActionForm ', 'ActionServlet', 'dispatchAction', 2079, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '��������struts2����ϵ�ṹ���ǣ�ѡ�����', 'struts2���������', 'struts2�����ļ�', 'FilterDispathcer', 'Action', 2080, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '��������struts2�����ļ��е�����Ԫ���ǣ�ѡ�����', '<package>', '<action>', '<form-beans> ', '<action-mappings>', 2081, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����struts2�����ļ�˵����ȷ���ǣ�ѡ��һ�', '������WEB-INF/classesĿ¼��', '���ֱ���Ϊstruts.xml', '����Actionʱ���������ð���Ϣ', 'ʹ��<forward>Ԫ������ת��', 2082, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��struts2�������ã���Ԫ�������ó�����ѡ��һ�', '<const>', '<constants>', '<constant>', '<constant-mapping>', 2083, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '����struts2����˵����ȷ���ǣ�ѡ�����', 'struts2���ʹ�ð���������', 'struts2��ܶ����ʱ����ָ��name����', 'struts2��������ð�ʱ������̳���struts-default��������ᱨ��', 'struts2�����ʹ�ð�������Action', 2084, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', 'struts2�л�ȡServlet API�ķ�����ȷ���ǣ�ѡ�����', 'ʹ��ActionContext�����Խ���ϵķ�������Servlet API', 'ʹ��ServletActionContext�����Խ���ϵķ�ʽ����Servlet API', 'ʹ��ActionContext��������ϵķ�ʽ����Servlet API', 'ʹ��ServletActionContext��������ϵķ�ʽ����Servlet API', 2085, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2��̬���õĸ�ʽΪ��ѡ��һ�', 'ActionName?methodName.action', 'ActionName! methodName.action', 'ActionName*methodName.action', 'ActionName@mathodName.action', 2086, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���Ҫʵ��struts2������У�鹦�ܣ�ѡ��һ�', '��ͨAction�����ʵ��', '�̳���Action�ӿڿ���ʵ��', '�̳���ActionSupport�����ʵ��', '�̳���ActionValidate�����ʵ��', 2087, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���Ҫʵ���Զ��崦��������̳��Ǹ��ࣨѡ��һ�', 'Dispathcer', 'StrutsResultSupport', 'Support', 'Action', 2088, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʵ�ֶ�̬���ؽ����������<result>Ԫ��ʱʹ�ã���ָ����ͼ��Դ��ѡ��һ�', '${������} ', null, '${''������''}', '${"������"}', 2089, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ʵ�ֹ��ʻ���struts2��ǩ�ǣ�ѡ��һ�', '<s:text>', '<s:message>', '<s:textfield> ', '<s:resource>', 2090, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2Ĭ�ϵĴ����������ǣ�ѡ��һ�', 'dispatcher', 'redirect', 'chain', 'forward', 2091, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�Զ���ת�����̳еĳ������ǣ�ѡ��һ�', 'Converter ', 'TypeConverter', 'StrutsTypeConverter', 'converts', 2092, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������3S���Ӧ�õ������в�ǡ������ ����ѡ��һ�', 'ң������ͼ����GIS���ݿ���һ����Ҫ������Դ', '��������ϵͳ����GPS��GIS��ϵĵ���Ӧ�� ', '3S�Ľ��Ӧ�ü��໥�����γ��ˡ�һ�����ԣ���ֻ�۾����Ŀ�� ', '���û�����,3S�����ศ��ɣ�ȱһ����', 2093, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������WEBGIS�ص��˵������ȷ���� ����ѡ��һ�', 'WebGISӦ�������/������������ִ��GIS�ķ������� ', 'WebGIS�����׸�Web�е�������Ϣ��������޷켯�ɣ����Խ���������GISӦ��ϵͳ', 'WebGIS���κμ�����Ͳ���ϵͳ��������', 'WebGIS����Internet�ķֲ�ʽϵͳ��GIS���ݺͷ������߲��������粻ͬ�ļ������', 2094, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ArcGIS Desktop����� ���� ', 'ArcMap  ', 'ArcCatalog  ', 'ArcGlobe  ', 'ArcIMS', 2095, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���治���ڵ�����Ϣϵͳ�����Ʒ���ǣ� ��ѡ��һ� ', '��ͼ', 'Ԫ����', 'ͼ��', 'ͳ��ͼ��', 2096, 403);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������һ�ֲ�����Jquery��ѡ������(ѡ��һ�', '����ѡ����', '���ѡ����', '��ѡ����', '�ڵ�ѡ����', 2097, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ʹ��jquery���<input type="hidden" id="id" name="id" />Ԫ������ҳ���Ƿ���ڡ�(ѡ��һ�', 'if($("#id")) {   //do someing...    }', 'if($("#id").length > 0) {   //do someing...    }', 'if($("#id").length() > 0) {   //do someing...    }', ' if($("#id").size > 0) {   //do someing...    }', 2098, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<a href="xxx.jpg" title="�¼ұ���ϯѧУ...">����</a>,��ȡ<a>Ԫ��title������ֵ����ѡ��һ�', '$("a").attr("title").val();', '$("#a").attr("title");', '$("a").attr("title");', '$("a").attr("title").value;', 2099, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ִ���������' || chr(10) || ' $(document).ready(function(){' || chr(10) || '   $("#click").click(function(){' || chr(10) || '    alert("click one time");' || chr(10) || '   });' || chr(10) || '   $("#click").click(function(){' || chr(10) || '    alert("click two time");' || chr(10) || '   });' || chr(10) || '});' || chr(10) || '������ť<input type="button" id="click" value="�����"/>���������ʲôЧ����' || chr(10) || '��ѡ��һ�', '����һ�ζԻ�����ʾclick one time ��', '����һ�ζԻ�����ʾclick two time ��', '�������ζԻ���������ʾclick one time��click two time��', 'js�������', 2100, 404);
commit;
prompt 2100 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ҳ����������Ԫ�أ����£�<div>div��ǩ</div><span>span��ǩ</span><p>p��ǩ</p>�������������ǩҪ����ͬһ���¼�����ô��ȷ��д���ǣ�ѡ��һ�', '$("div,span,p").click(function(){   //��      });', '$("div || span || p").click(function(){   //��      });', '$("div + span + p").click(function(){   //��      });', '$("div ~ span ~ p").click(function(){   //��      });', 2101, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ҳ������һ���Ա�ѡ��ť�������á��С�Ϊѡ��״̬���������£�' || chr(10) || '<input type="radio" name="sex"> ��' || chr(10) || '<input type="radio" name="sex"> Ů    ��ȷ����' || chr(10) || '��ѡ��һ�', '$("sex[0]").attr("checked",true);', '$("#sex[0]").attr("checked",true);', '$("[name=sex]:radio").attr("checked",true);', '$(":radio[name=sex]:eq(0)").attr("checked",true);', 2102, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'ĳ��˾������Ҫ��װ�ĳ���һ̨����Ʊע�����100000Ԫ����ֵ˰17000Ԫ��֧�����ӷ�2000Ԫ����װ�豸ʱ�����ò���3000Ԫ��֧������2000Ԫ����ó��������˼�ֵΪ��     ��(ѡ��һ��)', '100000', '107000', '117000', '124000', 2103, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ҵ���ö����ٵĹ̶��ʲ���һ��Ӧͨ����     ���˻����к���(ѡ��һ��)', ' �̶��ʲ�����', '�ۼ��۾�', ' Ӫҵ������', ' �̶��ʲ�', 2104, 410);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', ' ���¹��ڸ���Ʊ�ݵ�˵����Щ�Ǵ���� ����ѡ��', 'Ʊ��Ϊ����Ʊ��ʱ���ſɸ��Ĺ�Ӧ��', '�춯����ť�еĽ��㹦��Ϊ��ҵ��Ʊר��', '����Ʊ�ݽ������ٽ�����������', '�����Ʊ�ݲ����������ϣ����һ��Ҫ����ʱ��������ȡ�������ܽ�Ʊ�ݵ���Ϊ��Ʊ״̬', 2105, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ڱ�ϵͳ����ЩƱ�ݲ�����Ϊ����Ʊ����   ����ѡ��', '֧Ʊ', '���', '��ҵ��Ʊ', ' ���л�Ʊ', 2106, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'һ�ֵ��ݣ��ǻ��ƾ֤���Ƿ���Ҫ������ĸ���ҵ��������ã�  ����ѡ��', '��βǩ��', '��βҳ��', '��������', '�û�¼��/Ȩ��', 2107, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ֿ���Ϣ�����ҵ����ġ��ֿ����ơ������λ������֧�ֶ����룿����ѡ��', '10', '12', '14', '16', 2108, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������ⵥ����ĺ��òֿ�Ĳֿ�������ʲô������ѡ��', ' ί���', '�ֳ��� ', '�����      ', '�Ǵ����', 2109, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������ͷ��ʵ�ʿ���������ʲô�������ģ�����ѡ��', '��1�����ϵ������  ', '���������  ', '��1��������ⵥ�����    ', '��ʵ�������������ڻ���ڹ�������������ʱ', 2110, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����������ù���������չ����ʽ������ѡ��', '������ͷ   ', ' ���ò���', '���ܲ���', '�����������', 2111, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������ⵥ�е�����������������Щ������ѡ��', '��������', ' ����', '�ֿ� ', '��Ӧ��', 2112, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���ͻ����⡱��ҵ����ġ���ӳ�ˡ�ָ���ǣ�����ѡ��', '�ͻ�����Ա', '��˾�ڲ��ķ�����Ա', '���϶���', '���϶�����', 2113, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���ͻ����⡱��ҵ����ġ��������֪ʶ�⡱��ʲôʱ�򱻱�ʾ������ѡ��', '�ڡ������Ժ�', '�ڡ��������Ժ�', '�ڡ��鵵���Ժ�', '�ڡ�֪ʶ�⡱�Ժ�', 2114, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ڡ�������Ŀ���㹫ʽ����ҵ���棬���㹫ʽ�Ժ��ַ�ʽ��ʾ������ѡ��', '���ŷ�ʽ��ʾ', '����������ʾ ', '���϶����� ', '���϶�����', 2115, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ʲ���𡱿��Բ㼶���֧�ּ���������ѡ��', '4', '5', '8', '10', 2116, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '�����ĸ������Ǻ��ֲɹ���Ʊ��ȡ����Դ�� ��ѡ�����', '������', '�˻���', 'ί������� ', 'ί���˻���', 2117, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '�տ��ƾ֤�ֶ��Ͽ��Լ�¼����ѡ�����', 'δ��ת', '������ת ', '����ת', 'ƾ֤����', 2118, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '��ӡ���ݵ�ʱ�򣬿��԰��ĵ�����Ϊ�ļ��ָ�ʽ����ѡ�����', 'ͼ�θ�ʽ', 'EXCEL', 'RTF ', 'WORD', 2119, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '��������ֵ����п��Ը��¼۸�ĵ�������Щ�� ��ѡ�����', '������ ', '���˵�', '������', '���ϵ�', 2120, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Java��������Ķ������£�' || chr(10) || 'class Demo {' || chr(10) || '    private int[] count;' || chr(10) || '    public Demo(){ ' || chr(9) || '' || chr(10) || '        count=new int[10];' || chr(10) || '    }' || chr(10) || '    public void setCount(int ct,int n){' || chr(10) || '        count[n]=ct;' || chr(10) || '    }   ' || chr(10) || '    public int getCount(int n){ ' || chr(10) || '        return count[n];' || chr(10) || '    }' || chr(10) || '    public void showCount(int n){' || chr(10) || '        System.out.println("Count is "+count[n]);' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '�ڴ���Demo���ʵ����ͨ������showCount(9)�����õ�����ʾ����ǣ�ѡһ�', 'Count is 0', 'Count is null', '�������', '����ʱ����', 2121, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������Java���룺' || chr(10) || 'class A{' || chr(10) || '    public static void main(String[] args){' || chr(10) || '        method();' || chr(10) || '    }' || chr(10) || '    static void method(){' || chr(10) || '        try{' || chr(10) || '            System.out.println("Hello");' || chr(10) || '        }' || chr(10) || '        finally{' || chr(10) || '           System.out.println("good-bye");' || chr(10) || '        }' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '�������к��������ǣ�ѡһ�', '��Hello��', '��good-bye��', '��Hello good-bye��', '���벻�ܱ���', 2122, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��������Java���룬����ʱ����(  )���ִ��󡣣�ѡһ� ' || chr(10) || 'class Parent{  }' || chr(10) || 'class Child extends Parent{' || chr(10) || '    public static void main(String args[]){' || chr(10) || '        Parent p1 = new Child();' || chr(9) || '//��һ��' || chr(10) || '        Parent p2 = new Parent();' || chr(9) || '//�ڶ���' || chr(10) || '        Child c1 = new Child();' || chr(9) || '' || chr(9) || '//������' || chr(10) || '        Child c2 = new Parent();' || chr(9) || '//������' || chr(10) || '    }' || chr(10) || '}', '��һ��', '�ڶ���', '������', '������', 2123, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�о������Java���룺' || chr(10) || 'public class testException{' || chr(10) || '    public static void main(String args[]){' || chr(10) || '        int n[]={0,1,2,3,4};' || chr(10) || '        int sum=0;' || chr(10) || '        try {' || chr(10) || '            for(int i=1;i<6;i++)' || chr(10) || '                sum=sum+ n[i];' || chr(10) || '            System.out.println("sum="+sum);' || chr(10) || '        }' || chr(10) || '        catch(ArrayIndexOutOfBoundsExpception e) {' || chr(10) || '            System.out.println("����Խ��");' || chr(10) || '        }' || chr(10) || '        finally{' || chr(10) || '            System.out.println("�������");' || chr(10) || '        }' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '���������ǣ�ѡһ�', '10  ����Խ��  �������', '10  �������', '����Խ��  �������', '�������', 2124, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��Java�У��ؽ��֣���ʹ�಻�����������ࡣ��ѡһ�', 'final', 'public', 'private', 'volatile', 2125, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��JAVA�У���Animal�еķ���PrintA()�������£�' || chr(10) || 'public void printA(){' || chr(10) || '    int a=10;' || chr(10) || '    int result=10%3;' || chr(10) || '    System.out.println(result);' || chr(10) || '}' || chr(10) || '����Dog�з���printA()�������£�' || chr(10) || 'public void printA(){' || chr(10) || '    int a=10;' || chr(10) || '    system.out.println(a/3);' || chr(10) || '}' || chr(10) || 'Dog��Ķ������£�' || chr(10) || 'class Dog extends animal{��}' || chr(10) || '������䣺' || chr(10) || 'Animal animal = new Dog();' || chr(10) || 'Animal.printA();' || chr(10) || '����δ������Ϊ��ѡһ�', '0', '3.3333', '2', '3', 2126, 202);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�Զ���ת������ע�᷽ʽ�У�ѡ��һ�', 'ֻ��ȫ��ע�᷽ʽ', 'ֻ�оֲ�ע�᷽ʽ ', 'ֻ��ȫ�ֺ;ֲ�ע�᷽ʽ', '����˵��������', 2127, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '�Զ�����������ķ�ʽ�У�ѡ�����', 'ʵ��Interceptor�ӿ�', 'ʵ��AbstractInterceptor�ӿ�', '�̳�Interceptor��', '�̳�AbstractInterceptor��', 2128, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��struts.xml�ļ��У�ʹ�ã���Ԫ�ض�����������ѡ��һ�', '<interceptor-ref>', '<interceptor> ', '<intercep>', '<default-interceptor-ref>', 2129, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��OGNL�У��������������ǣ�ѡ��һ�', 'ȡ������ѡ���߼��ĵ�һ��Ԫ��', 'ȡ������ѡ���߼������һ��Ԫ��', 'ȡ������ѡ���߼�������Ԫ��', '����˵��������', 2130, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '��������struts2��ǩ���ǣ�ѡ�����', 'Ajax��ǩ', '���ݷ��ʱ�ǩ', 'logic��ǩ', 'bean��ǩ', 2131, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����ĸ���ǩ��struts2�е�����ѭ��������ѡ��һ�', '<s:property> ', '<s:iterator>', '<s:logic>', '<s:foreach>', 2132, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Struts2��Ҫ���Ĺ������ɣ�  ��ʵ�֣�ѡ��һ�', ' ������', '������', ' ����ת����', '�����ļ�', 2133, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts�е�ActionServlet����MVCģʽ��  ����ѡ��һ�', '��ͼ', ' ģ��', '������', 'ҵ���', 2134, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'Struts2����ɣ�  ���ͣ�  ����ܷ�չ�����ģ�ѡ����', 'Hibernate', 'Struts', 'Spring', 'WebWork', 2135, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Struts2�ԣ�B��Ϊ���ģ����ã� ���Ļ��ƴ����û�����ѡ��һ�', 'Struts', ' WebWork', ' ������', ' jar��', 2136, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2�У�������Action�ӿ��ж�����ַ����������ǣ�   ����ѡ��һ�', 'SUCCESS', 'FAILURE', ' ERROR', ' INPUT', 2137, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2��������Ҫ�ڣ�  �������ļ��н������ã�ѡ��һ�', 'web.xml', 'struts.xml', 'application.porperties', 'webwork.xml', 2138, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������struts2��ǩ����ǣ�  ����ѡ��һ�', ' <s:textfield>', ' <s:textarea>', ' <s:submit>', '<select>', 2139, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��JSPҳ���п���ͨ��Struts2�ṩ�ģ�   ����ǩ��������ʻ���Ϣ��ѡ��һ�', '<s:input>', ' <s:messages>', ' <s:submit>', '<s:text>', 2140, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Դ�ļ��ĺ�׺��Ϊ��  ����ѡ��һ�', 'txt', ' doc', ' property', ' properties', 2141, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', 'struts2����ע��ȫ������ת������˵����ȷ���ǣ�  ����ѡ����', '�����ṩxwork-conversion.properties�ļ�', 'ע���ļ��ĸ�ʽΪ����������=��Ӧ����ת����', 'ע���ļ��ĸ�ʽΪ����Ӧ����ת����=��������', '����˵��������ȷ', 2142, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��ҳ������һ��ulԪ�أ��������£�' || chr(10) || '<ul>' || chr(10) || '   <li title=''ƻ��''>ƻ��</li>' || chr(10) || '   <li title=''����''>����</li>' || chr(10) || '   <li title=''����''>����</li>' || chr(10) || '</ul>������Խڵ�Ĳ�����һ��˵������ȷ��' || chr(10) || '��ѡ��һ�', 'var $li = $("<li title=''�㽶''>�㽶</ii>"); �Ǵ����ڵ㡣', '$("ul").append($("<li title=''�㽶''>�㽶</ii>")); �Ǹ�ul׷�ӽڵ㡣', '$("ul  li:eq(1)").remove();��ɾ��ul�¡����ӡ��Ǹ��ڵ㡣', '����˵��������', 2143, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ҳ����һ��<input type="text" id="name"  name="name" value=""/>Ԫ�أ���̬���ø�Ԫ�ص�ֵ����ȷ��ѡ���ǡ���ѡ��һ�', '$("#name").val("��̬��ֵ");', '$("#name").text("��̬��ֵ");', '$("#name").html("��̬��ֵ");', '$("#name").value("��̬��ֵ");', 2144, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����˵������ȷ���ǣ�ѡ��һ�', '$(":hidden")ѡȡ<input>��type������hidden�Ĳ��ɼ�Ԫ�ء�', '$("div >span")ѡȡ<div>Ԫ����Ԫ������<span>����Ԫ�ء�', '$("div :first")ѡȡ����<div>Ԫ���е�һ��<div>Ԫ�ء�', '$("input:gt(1)")ѡȡ����ֵ����1��<input>Ԫ�ء�', 2145, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����Ҫƥ������ı���Ԫ�أ�������������ʵ�� ��ѡ��һ�', 'text()', 'contains()', 'input()', 'attr(name)', 2146, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���治����Jquery��ajaxȫ���¼�����  ��ѡ��һ�', 'ajaxComplete(callback) ', 'ajaxSuccess(callback)', '$.post(url)', 'ajaxSend(callback)', 2147, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��jquery����Ҫ�ҵ�����Ԫ�ص�ͬ��Ԫ�أ�������һ���ǿ���ʵ�ֵ� ��ѡ��һ�', 'nextAll([expr])', 'siblings([expr])', 'next()', 'find([expr])', 2148, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ѡ������һ���Ǻ�$("#foo")�ȼ۵�д������ѡ��һ�', '$("foo#")', '$(#"foo")', '$ ("foo")', 'jQuery("#foo")', 2149, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���¹���jQuery������������ǣ�������ѡһ�', 'jQuery ��һ�� JavaScript ������', 'jQuery ����ؼ��� JavaScript ���', ' jQuery ����ּ�� ��write less��do more��', ' jQuery�ĺ��Ĺ��ܲ��Ǹ���ѡ��������HTMLԪ�أ�Ȼ�����ЩԪ��ִ����Ӧ�Ĳ���', 2150, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��jQuery�У����й����ĵ�����������д��������ǣ�������ѡһ�', '$(document).ready(function() {' || chr(10) || '});' || chr(10) || '', ' $(function() {' || chr(10) || '});' || chr(10) || '', '$(document)(function() {' || chr(10) || '});' || chr(10) || '', '$().ready(function() {' || chr(10) || '});' || chr(10) || '', 2151, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��HTMLҳ���������½ṹ�Ĵ��룺' || chr(10) || '<div id="header">' || chr(10) || '    <h3>' || chr(10) || '       <span>S3N��֤����</span>' || chr(10) || '    </h3>' || chr(10) || '    <ul>' || chr(10) || '        <li>һ</li>' || chr(10) || '        <li>��</li>' || chr(10) || '        <li>��</li>' || chr(10) || '        <li>��</li>' || chr(10) || '    </ul>' || chr(10) || '</div>' || chr(10) || '��������ѡ�����ʾjQuery���룬���ܹ��ú��֡��ġ�����ɫ��ɺ�ɫ����ѡһ�' || chr(10) || '', '$("#header ul li:eq(3)").css("color","red");', '$("#header li:eq(3)").css("color","red");', '$("#header li:last").css("color","red");', '$("#header li:gt(3)").css("color","red");', 2152, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '�ɹ�����ȡ����Դ����Щ�� ��ѡ�����', '�빺��', '����', 'ѯ�۵�', '�ɹ��׸�', 2153, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '�����������ɱ��������˹��Ʒѷ�̯����Щ�����йأ���ѡ�����', '��������������     ', '��Ʒ��Ϣ���˹���̯Ȩ�� ', '��Ʒ��Ϣ���Ʒѷ�̯Ȩ�� ', '�˹��Ʒѿ�Ŀ   ', 2154, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '������������з��Ųɹ��ƻ�ʱ����ɹ����ڿɰ�������Щ��ʽ�����ɣ���ѡ�����', '��ɹ��׸����������һ��   ', 'ϵͳ���� ', '���Դ����ڱ���ѡ������   ', '�µ�����', 2155, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '��ת���е��Ƴ�������������Щ����ѡ�����', '��������', '����', ' �ֿ�', ' ��Ӧ��', 2156, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '�˹��Ʒѿ�Ŀ�Ƕ��ļ������������Ӧ�Ļ�ƿ�Ŀ����ѡ�����', '���ϳɱ�', ' �˹��ɱ�', '�������  ', '���϶�����', 2157, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '���¶Բ�Ʒ�ṹ������ȷ���ǣ���ѡ�����', ' ���Բ�����������Ƭ   ', 'ͬһ�����ɴ�������BOM�ṹ  ', '�ɲ��ø��Ʒ�ʽ���½����Ƶ�BOM', '���������Ӽ�ΪͬһƷ�� ', 2158, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '������Щ��ҵ����������롰�ͻ���Ʒ���󡱣�ѡ�����', '��Ʒ��Ϣ', '�ͻ���Ϣ', 'ҵ����¼', 'ҵ���ƻ�', 2159, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '������Щ��ҵ����������롰�������֡������ҵ����ѡ�����', 'Ǳ�ڿͻ���Ϣ', '�ͻ���Ϣ', 'ҵ����¼', 'ҵ���ƻ�', 2160, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '�� ��������Ϣ����ҵ����ġ��ַ���λ������λ��������������Щѡ�  ��ѡ�����', '��', '0', '��λ', '�Ҳ�λ', 2161, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '������Щ���ݿ����ڡ��̶��ʲ���������ҵ����������ã�  ����ѡ��', '�ʲ����', '��Ҫ�۾ɷ���', '���ӷ�ʽ', '����ֵ��', 2162, 411);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�̼�Ҫ��չ����������Ӧ����( )��Ϊ����Ҫ������ƽ̨(ѡ��һ��)', 'BBS', '�����ʼ�', '�����̵�', '�绰����', 2163, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�й����繺���������Ⱥ��( )(ѡ��һ��)', '18�����µ�������', '18-30���������', '30-40��İ�����ʿ', '40�����ϵ���������', 2164, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�Ա�������������( )(ѡ��һ��)', '2002��', '2003�� ', '2004��', '2005��', 2165, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����ĸ����Ա���������Ա���ض��ƺ���( )(ѡ��һ��)', '����  ', '����  ', '����', 'С��', 2166, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '�������۵ķ�Χ����( )(ѡ�����)', 'C2C', 'B2B', 'B2C', 'C2B', 2167, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '�������۵��ص���( )(ѡ������)', '�������ڶ� ', '�������', '��Ʒ���൥һ', '���׷�ʽ���', 2168, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '�������������������Ƶ���( )(ѡ������)', '�ڱ�����', '�������� ', '������������', '��ͨ����', 2169, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���Ա����ҵ��ղء���˿Ͳ����ղ���Щ���ݣ�( )(ѡ��һ��)', '�ղر���', '�ղغ��� ', '�ղص���', null, 2170, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '2004��5�£��Ա��Ƴ��ˡ���Ҹ����Ҹ��⡱��ʲô����( )(ѡ��һ��)', '�Ƽ����� ', '֧����', '�����߱��ϼƻ�', 'Ʒ���̳�', 2171, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������Ƶĳ��������ڶ��ٸ����֣�( )(ѡ��һ��)', '10������', '20������ ', '30������', '40������', 2172, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����һ�� Servlet ��doGet�����еĴ���Ƭ�Σ����£�' || chr(10) || 'request.setAttribute("name","zhang");' || chr(10) || 'response.sendRedirect("http://localhost:8080/servlet/MyServlt");' || chr(10) || '��ô�� MyServlet �п���ʹ�ã������������� name��ֵȡ��������ѡһ�', 'String str=request.getAttribute("name");', 'String str=(String)request.getAttribute("name");', 'Object str=request.getAttribute("name");', '�޷�ȡ����', 2173, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������JSP����Ƭ�Σ���2���ͻ����������JSP;��ÿ���ͻ�ֻ���һ�Σ���2���ͻ��ῴ���������ʾ��ѡһ�' || chr(10) || '<%int x = 1; %>' || chr(10) || '<%!int x = 10; %>' || chr(10) || 'x= <%= x%>', 'x=1', 'x=2', 'x=10', 'x=11', 2174, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��C#�У����д�������н���ǣ�ѡһ�' || chr(10) || 'struct Student' || chr(10) || '{' || chr(10) || '    public int age;' || chr(10) || '    public string name;' || chr(10) || '    public Student(int age,string name)' || chr(10) || '    {' || chr(10) || '       this.sge = sge;' || chr(10) || '       this.name = name;' || chr(10) || '    }' || chr(10) || '}' || chr(10) || 'public class Test' || chr(10) || '{' || chr(10) || '   static void Main()' || chr(10) || '   { ' || chr(10) || '       Student stu1 = new Student(18,"С��");' || chr(10) || '       Student stu2 = new Student(24,"С��");' || chr(10) || '       stu2 = stu1;' || chr(10) || '       stu1.age = 30;' || chr(10) || '       stu1.name = "С��";' || chr(10) || '       Console.WriteLine(stu2.age);' || chr(10) || '       Console.WriteLine(stu2.name);' || chr(10) || '       }' || chr(10) || '}', '18' || chr(13) || '' || chr(10) || 'С��', '18' || chr(13) || '' || chr(10) || 'С��', '30' || chr(13) || '' || chr(10) || 'С��', '30' || chr(13) || '' || chr(10) || 'С��', 2175, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������C#���룺' || chr(10) || 'using System;' || chr(10) || 'delegate void D(int i);' || chr(10) || 'class P' || chr(10) || '{' || chr(10) || '    public static void Main()' || chr(10) || '    {' || chr(10) || '        V(new D(R));' || chr(10) || '    }' || chr(10) || '    public static void R(int t)' || chr(10) || '    {' || chr(10) || '        V(21);' || chr(10) || '    }' || chr(10) || '    public static void V(int i)' || chr(10) || '    {' || chr(10) || '        Console.WriteLine(i.ToString());' || chr(10) || '        Console.ReadLine();' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '����˵����ȷ���ǣ�ѡһ�', '�����д��ڴ���delegate voidD(int i);���ܶ��������ƿռ������֮��', '�����д��ڴ��󣬴�����V(new D(R))��ʹ��ί�д���', '�����������У����Ϊ0', '�����������У����Ϊ21', 2176, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Jsp�������´��룺' || chr(10) || '<%' || chr(10) || 'Cookie c = new Cookie("name" , "admin");' || chr(10) || 'c.setMaxAge(10000);' || chr(10) || 'response.addCookie(c);' || chr(10) || '%>' || chr(10) || '�����ľ���������ȷ��ʾ��admin����ѡһ�', '${cookie.name}', '${cookie.name.value}', '${ name}', '${name.value}', 2177, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��дServlet ��doPost����ʱ����Ҫ�׳��쳣Ϊ��ѡһ�', 'ServletException�� IOException', 'ServletException�� RemoteException', 'HttpServletException�� IOException', 'HttpServletException�� RemoteException', 2178, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '���¹���OGNL��˵����ȷ���ǣ�  ����ѡ����', 'ActionContext��OGNL�������Ļ���', 'StackContext��OGNL�������Ļ���', 'ValueStack��OGNL�ĸ�', 'ActionContext��OGNL�ĸ�', 2179, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������Session�д�����Ϊuid���ԣ�ͨ��OGNL���ʸ����ԣ���ȷ�Ĵ����ǣ�  ����ѡ��һ�', '#uid', '#session.uid', 'uid', '${session.uid}', 2180, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ڡ�#session.persions.{? #this.age>20}��OGNL��������ʾ������˵����ȷ���ǣ�  ����ѡ��һ�', '��persons������ȡ����һ�����䣾20��Person����', '��persons������ȡ���������䣾20��Person�����Ӽ�', '��persons������ȡ�����һ�����䣾20��Person����', '�ô��벻����OGNL���﷨', 2181, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������ĳJSPҳ���д��ڡ�<s:property>�����룬������˵����ȷ���ǣ�  ����ѡ��һ�', '����JSPҳ��ʱ����ִ���', '����JSPҳ��ʱ������ִ��󣬵�ҳ�治����ʾ�κ�����', '�ô����������λ��ValueStack��ֵջ��ջ���Ķ���', '����˵��������ȷ', 2182, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2Ĭ�ϵĴ����������ǣ�  ����ѡ��һ�', 'dispatcher', 'redirect', 'chain', '����˵��������ȷ', 2183, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ѡ���У�����Struts2�����ļ�˵����ȷ���ǣ�   ����ѡ��һ�', '��������WEB-INF/classesĿ¼��', '����ΪStruts.xml', '����Actionʱ�������ð���Ϣ', 'ʹ��<forward>Ԫ������ת��', 2184, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '����ѡ���У�����Struts2��Action˵����ȷ���ǣ�  ����ѡ����', 'struts2��Ϊÿһ�����󴴽�һ����Ӧ��Actionʵ��', 'struts2������������У�ֻ��һ��Actionʵ��', 'struts2ͨ����������װ�û��������', '��struts2�ж�������Զ����ڷ�װ�û��������', 2185, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2�ж�̬�������õĸ�ʽΪ��  ����ѡ��һ�', 'ActionName_methodName.do', 'ActionName!methodName.do', 'ActionName_methodName.action', 'ActionName!methodName.action', 2186, 328);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ѡ���ĸ�����Activity�����ķ�������ѡ��һ�', 'goToActivity', 'startActivity', ' startActivityFromChild', 'startActivityForResult', 2187, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '���� xml �ķ�ʽ�У���(ѡ������)', '�ַ�������', '����ʽ', 'dom', 'SAX', 2188, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������һ��������Activity���������ڷ���(ѡ��һ��)', 'onInit', 'onStart', 'onStop', 'onPause', 2189, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����XML�����ļ��е���ͼ�ؼ���layout_width���Ե�����ֵ��������ʲô��(ѡ��һ��)', 'match_parent', 'fill_parent', 'wrap_content', 'match_content', 2190, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��һЩ��Դ�Լ�״̬�Ĳ������棬����Ǳ�����Activity�������ڵ��ĸ������н��У�(ѡ��һ��)', 'onStart', 'onPause', 'onCreate', 'onResume', 2191, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������ͼ�ؼ��ĳ����¼������У�����ȷ���ǣ�(ѡ��һ��)', 'Click�¼�ֻ��ʹ���ڰ�ť�ϣ���ʾ��ť�ĵ������', '��TextView����ͼ�ؼ�ʧȥ������ý���ʱ��������FocusChange�¼�', '����ѡ����ĳһѡ�ѡ��ʱ��������CheckedChange�¼�', '����ѡ����ĳһѡ�ѡ��ʱ��������CheckedChange�¼�' || chr(10) || '��Ŀ8' || chr(10) || '', 2192, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��HTMLҳ���������½ṹ�Ĵ��룺' || chr(10) || '<ul id="p-list">' || chr(10) || '    <li>ƻ��iPhone 4S</li>' || chr(10) || '</ul>' || chr(10) || '�������£������������á�ƻ��iPhone 4S�����ء���ѡһ�' || chr(10) || '', '$("#p-list li:nth-child(0)").hide();', '$("#p-list li:only-child").hide();', ' $("#p-list li:last-child").hide();', ' $("#p-list li:first-child").hide();', 2193, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��jQuery�У����������ܹ�ʵ��Ԫ����ʾ�����صĻ�������ѡһ�', 'hide()', 'show()', 'toggle()', 'fade()', 2194, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����±�ǩ��<input id="txtContent" class="txt" type="text" value="����"/>' || chr(10) || '���ʲ��ܹ���ȷ�Ļ�ȡ�ı��������ֵ��������������ǣ�������ѡһ�' || chr(10) || '', '$(".txt").val()', '$(".txt").attr("value")', '$("#txtContent").text()', '$("#txtContent").attr("value")', 2195, 404);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A ', 'php����ʲô��˼��(ѡ��һ��)', 'Hypertext Preprocessor�����ı�Ԥ��������', 'Hyperlink Preprocessor��������Ԥ��������', 'Personal Homepage ��������ҳ�ռ䣩', ' ', 2196, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����PHP����ĸ��Ǵ���ģ�(ѡ��һ��)', '<? ?> ', '<?PHP   ?>', '<% %>', '<SCRIPT language="php">...</script>', 2197, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�±��ĸ������ǷǷ���?(ѡ��һ��)', '$_10 ', '${��MyVar��}', ' &$something', '$aVaR', 2198, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ѡ������������еĽ��(   )(ѡ��һ��)' || chr(10) || '  <?php $a=1;$a=++;$c=&$a;$b=$c++;echo ��\$a=$a <br>  \$b=$b  <br>  \$c=$c��;?>', '$a=3 $b=2 $c=3', '$a=3 $b=2 $c=2', 'a=2 $b=2  $c=3', '$a=2', 2199, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����������еĽ��Ϊ(   )(ѡ��һ��)' || chr(10) || '        $numb=array(array(10,15,30),  array(10,15,30), array(10,15,30));' || chr(10) || '        echo count ($numb,1);' || chr(10) || '', '3', '6', '9', '12', 2200, 405);
commit;
prompt 2200 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����������еĽ��Ϊ(   )(ѡ��һ��)$a=array("a","b","c","d");' || chr(10) || '$index=array_search("a",$a);' || chr(10) || 'if($index==false)' || chr(10) || '    echo"������a��δ�����ַ�''a''";' || chr(10) || 'else echo "index=".$index;' || chr(10) || '', '������a��δ�����ַ���a��', '0', '1', '2', 2201, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ڶ�ENUM�У����ָ��(   )��Ա(ѡ��һ��)', '255', '256', '65535', '65536', 2202, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Html���Ե���ָ�����Ӷ���ı���ǣ���(ѡ��һ��)', 'img   ', 'href   ', 'font   ', 'src', 2203, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Html���Ե��н��������б�ı�ǩ�ǣ���(ѡ��һ��)', '<ul> </ul>', '<ol></ol>', '<al></al>', '<nl> </nl>', 2204, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ǹ�˾�����ݿ����Ա�����ݿ�benet���и�Ա����employees���ñ����������С�   ��������ЩԱ���������Ǻ��С��ġ��ֵģ����������ĸ�sql��䣨����(ѡ��һ��)', 'Select * from employees where ����=���ġ���', 'Select * from employees where ���� like ��%�ġ���', 'Select * from employees where ���� like ����%����', '���ϴ𰸶�����ȷ', 2205, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ڻ�Ա��ע���Ҫ���ĸ�����ȷ�ģ�( )(ѡ��һ��)', '��Ա����6-25 ���ַ����', '��Ա������ʹ��Сд��ĸ�����»�������', '��Ա������ʹ���������������', '��Ա�����Ա��ʺ�Ψһ��½��ʽ', 2206, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�Ա������ʻ��������ɶ��ٸ��ַ���ɣ�( )(ѡ��һ��)', '6-16���ַ�   ', '5-15���ַ� ', '8-16���ַ�', '6-16���ַ�', 2207, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������Ҫ����ָ��������( )(ѡ��һ��)', '����ͼƬ����', '����֧��������', 'ͼƬ֧��������', '����֧��������', 2208, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'һ�������м���������Ŀ��( )(ѡ��һ��)', '1��', '5��     ', '10��', '���� ', 2209, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�Ա�������������ô�Ʒֵģ�( )(ѡ��һ��)', 'һ���ü�1�֣��������Ʒ֣�������1��', 'һ���ü�1�֣�������1�֣�������2��', 'һ���ü�2�֣�����1�֣����������', 'һ���ü�1�֣��������Ʒ֣�������2��', 2210, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '�������������߱��Ϸ������( )(ѡ������)', '��ʵ����', '7���������˻���', '������Ʒ���緢��', '�˻��˷���', 2211, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '�������ڽ���״̬����( )(ѡ������)', '����Ѹ���ȴ����ҷ���', '�ȴ���Ҹ���', '�����ѷ���', '���δ����', 2212, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '����ƭ�Ӿ�����ȡ��Щ��ʽ����ƭ��( )(ѡ������)', '���ʹ���ľ���ͼƬ  ', '���͵�����վ����', 'ʹ�������˺�����ƭ', 'Ҫ��ʹ��֧�������н���', 2213, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '�����˻������ĸ������Ǵ���ģ���  ��(ѡ�����)', '��������˻����������յ�������֧�����涨��ʱ����������롣', '���������˻������Ҿܾ������˻�����֧�����Ὣ�������֧�������', '�����˻������������Ľ��������෴', 'Ϊȷ����ȫ����ҿ���Ҫ���������˿����˻�', 2214, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '֧������֤��Ϊ������֤���̼���֤�����֣��̼���֤��Ҫ�ύ������Щ��Ϣ��( )(ѡ�����)', '���֤  ', 'Ӫҵִ��', '��˾�˺�  ', '˰��Ǽ�֤', 2215, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '֧������˾�ӽ�����ʼ����ʲô��Ϊ��Ʒ�ͷ���ĺ��ģ�( )(ѡ��һ��)', '��ȫ ', '����   ', '��', '��Ч', 2216, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�޸����۵���������( )(ѡ��һ��)', '���۹��� ', 'άȨ����  ', 'Ǯ�ƹ�', '���׹���', 2217, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '����������Щ�ǿ����޸ĵģ�( )(ѡ�����)', '˫���໥���� ', '��һ��������������', 'һ��������������', '�����������۳���6����', 2218, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���̵ĵ������ߴ��Ƕ��٣�( )(ѡ��һ��)', '950*150', '750*120 ', '860*135', '850*150', 2219, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����ȷ���˿��������������һ����( )(ѡ��һ��)', '֧������¼����   ', '֧����֧������', '�Ա���Ա��¼����', '��������', 2220, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '֧�����˺�����ʲô��������( )(ѡ�����)', '���ּ�Ӣ��  ', '����   ', '��������   ', '�ֻ�����', 2221, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD ', '֧�������Ա�Ψһ�����߸��ʽ����������Щ�ֶ���ȷ���˻��İ�ȫ�ԣ�( )(ѡ������)', '����֤��', '���', '֧����  ', '�ֻ���̬����', 2222, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����c#���룺' || chr(10) || 'using System.Threading;' || chr(10) || 'class App' || chr(10) || '{' || chr(10) || '    public static void Main()' || chr(10) || '    {' || chr(10) || '        Timer timer = new Timer(new TimerCallback(CheckSatus), null, 0, 2000);' || chr(10) || '        Console.Read();' || chr(10) || '    }' || chr(10) || '    static void CheckSatus(Object state)' || chr(10) || '    {' || chr(10) || '        Console.WriteLine("���ڽ��м��...");' || chr(10) || '    }' || chr(10) || '}' || chr(10) || '��ʹ�ô��봴����ʱ�������ʱ��ͬʱָ���˶�ʱ�����¼�������ʱ��ÿ�������ӡһ�С��������м��...������ˣ�TimerCallback��һ����ѡһ�', '����', 'ί��', '�ṹ', '����', 2223, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������C#���룬���ж�����һ����ϣ����ѧ����ѧ�źͳɼ������ڣ�Ϊ�˱�������ʱ����ѧ���ظ��������������ظ����󣬲����û�����������ȷ��ѧ�ţ��������������ߵĵط��ֱ����Ĵ����ǣ�ѡһ�' || chr(10) || 'class Class1{' || chr(10) || '    static void Main(string[]args){' || chr(10) || '        Hashtable scores = new Hashtable();' || chr(10) || '        string sid;' || chr(10) || '        int score;' || chr(10) || '        do{' || chr(10) || '        Console.Write("����ѧ��ѧ�ţ�");' || chr(10) || '        sid = Console.ReadLine();' || chr(10) || '        score=int.Parse(Sonsole.ReadLine());' || chr(10) || '        if(__________)//�ڴ˴���д����' || chr(10) || '        {' || chr(10) || '             Console.WriteLine("ѧ�������ظ��ˣ����������롣");' || chr(10) || '             __________//�˴���д����' || chr(10) || '        }' || chr(10) || '        else ' || chr(10) || '        {' || chr(10) || '            score.Add(sid,score);' || chr(10) || '        }' || chr(10) || '    }while(sid!="xxxx");' || chr(10) || '    Console.WriteLine("�������");' || chr(10) || '    }' || chr(10) || '}', 'score.ContainsValue(sid)��continue;', 'scores.ContainKey(sid)��continue;', 'scores.ContainKey(sid)��break;', 'scores.Contains(sid)��continue;', 2224, 203);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'JavaScript����ͨ������__���Ƕ�뵽HTML�ĵ��ġ���ѡһ�', 'JavaScript', 'Language', 'alert', 'script', 2225, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�����дһ�������������������ص�ǰ��վ�ķ���������ò���JSP�е�(  )���󡣣�ѡһ�', 'page��', 'session', 'request��', 'application', 2226, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���п�����ȷ��ȡ��ǰWeb��������·���ķ���Ϊ��ѡһ�', 'request.getRealPath(��/��)��', 'request.getFile(��/��)', 'response.getRealPath(��/��)��', 'response.getFile(��/��)', 2227, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���´���ִ��Ч��Ϊ��ѡһ�' || chr(10) || '<c:forEach var = "i" begin = "1" end = "5">' || chr(10) || '' || chr(9) || '<c:out value="${i}"/>' || chr(10) || '</c:forEach>', '1 2 3 4 5', 'i i i i i', '15', '�������', 2228, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��JSP�У���������JSP����Ƭ�Σ����н���ǣ�ѡһ�' || chr(10) || '<%  int x=5;  %>' || chr(10) || '<% !  int x=7;  %>' || chr(10) || '<%!' || chr(10) || 'int getX(){  return x; }' || chr(10) || '%>' || chr(10) || '<%  out.print("X1=" + x);       %>' || chr(10) || '<%  out.print("X2=" + getX());   %>', 'X1=5  X2=7', 'X1=5  X2=5', 'X1=7  X2=7', 'X1=7  X2=5', 2229, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���¹���AndroidӦ�ó����Ŀ¼�ṹ�����У�����ȷ����(ѡ��һ��)', 'srcĿ¼��Ӧ�ó������ҪĿ¼����Java���ļ��ļ����', 'assetsĿ¼��ԭʼ��ԴĿ¼����Ŀ¼�е����ݽ����ᱻR��������', 'resĿ¼��Ӧ����ԴĿ¼����Ŀ¼�е�������Դ���ݶ��ᱻR��������', 'AndroidManifest.xml�ļ���Ӧ�ó���Ŀ¼�嵥�ļ������ļ���ADT�Զ����ɣ�����Ҫ����Ա�ֶ��޸� ', 2230, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������һ��ѡ�����Android��Ԥ����Ĳ��ַ�ʽ(ѡ��һ��)', 'TabLayout', 'RelativeLayout', 'AbsoluteLayout', 'LinearLayout', 2231, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������һ��ѡ�����AdapterView�����ѡ�Gallery  ListView  Spinner  GridView(ѡ��һ��)', 'ListView', 'Spinner', 'GridView', 'ScrollView ', 2232, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������һ���ƶ��豸���ص���Androidƽ̨��(ѡ��һ��)', 'NOKIA�ֻ�', 'С���ֻ�', 'iPhone�ֻ�', 'iPad', 2233, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���й���ListViewʹ�õ������У�����ȷ���ǣ�(ѡ��һ��)', ' Ҫʹ��ListView������Ϊ��ListViewʹ��Adpater��ʽ��������', 'Ҫʹ��ListView���ò����ļ���Ӧ��Activity����̳�ListActivity', 'ListView��ÿһ�����ͼ���ּȿ���ʹ�����õĲ��֣�Ҳ����ʹ���Զ���Ĳ��ַ�ʽ', ' ListView��ÿһ�ѡ��ʱ�����ᴥ��ListView�����ItemClick�¼�', 2234, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��������SAX����xml�ļ����ŵ���ǣ�(ѡ��һ��)', '�������ĵ����洢���ڴ��У����ڲ�����֧��ɾ�����޸ģ��������еȶ��ֹ���', 'ָ��ҳԪ�ص�λ�ã������ұ߿���±߿�ľ���', '�����ĵ������ڴ棬�˷�ʱ��Ϳռ�', '���ǳ���פ�����ڴ棬���ݲ��ǳ־õģ��¼�������û�б������ݣ����ݾͻ���ʧ', 2235, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '��android ��ʹ��Menu ʱ������Ҫ��д�ķ����У�(ѡ������)', 'onOptionsItemSelected() ', 'onCreateOptionsMenu() ', 'onItemSelected()', 'onCreateMenu()', 2236, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���й����ڴ���յ�˵�����ĸ�����ȷ�ģ�(ѡ��һ��)', '����Ա���봴��һ���߳����ͷ��ڴ�', '�ڴ���ճ����������Աֱ���ͷ��ڴ�', '�ڴ���ճ������ͷ������ڴ�', '�ڴ���ճ��������ָ����ʱ���ͷ��ڴ����', 2237, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Math.round(11.5)���ڶ���(). Math.round(-11.5)���ڶ��٣�(ѡ��һ��)', '11 ,-11', '11 ,-12', '12 ,-11', '12 ,-12', 2238, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���г���Σ�void complicatedexpression_r(){int x=20, y=30;boolean b;b=x>50&&y>60||x>50&&y60||x(ѡ��һ��)', '1', '0', 'TRUE', 'FALSE', 2239, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '��android��ʹ��SQLiteOpenHelper���������ʱ����������һ�����ݿ⣬�����Զ����ݿ�汾���й���ķ��������ǣ�(ѡ������)', 'getDatabase()', 'getWriteableDatabase()', 'getReadableDatabase()', 'getAbleDatabase()', 2240, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ѡ���в�����GLSurFaceView���Ե��ǣ�(ѡ��һ��)', '����һ��surface�����surface����һ��������ڴ棬��ֱ���Ű浽android����ͼview�ϡ�', '����һ��EGL display��������opengl��������Ⱦ��������surface�ϡ�', '����Ⱦ���ڶ������߳�����������UI�̷߳��롣', '����ֱ�Ӵ��ڴ����DMA��Ӳ���ӿ�ȡ��ͼ������', 2241, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����strlen����I am a student�����Ľ���ǣ���(ѡ��һ��)', '11', '12', '13', '14', 2242, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��������ִ����ϣ�ҳ���ϵ���ʾ������ʲô?( )(ѡ��һ��)' || chr(10) || '<?           ' || chr(10) || '  $a=��I am����' || chr(10) || '   $b=��a sudent����' || chr(10) || '   $a=��24ooo 7��+8��' || chr(10) || '   echo $a;' || chr(10) || '?>' || chr(10) || '', '24ooo 15', '32', '15', '���϶�����ȷ', 2243, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', 'php�еı����������������¼��֣�������(bool)������(integer)��������(float)���ַ���(string),���в�����(bool)�ķ���ֵ�ǣ���(ѡ��2��)', '0', '1', 'true   ', 'FALSE', 2244, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����html���룬<input type=��________�� name=��gender�� >,�ں����������ĸ�ֵ���Ŵ������ʾһ����ѡ��ť������(ѡ��һ��)', 'text   ', 'submit', 'checkbox', 'radio', 2245, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Ƿ�title�Ƿ��ڱ�Ƿ�ʲô֮���(ѡ��һ��)', 'html��html ', 'head��head      ', 'body��body      ', 'head��body', 2246, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ʹ��CSS���ı��������Σ���ʹ�ı���˸��text-decoration��ȡֵΪ(ѡ��һ��)', 'none         ', 'underline         ', 'overline         ', 'blink', 2247, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��img����Ƿ�������ͼƬ�Ĳ����ǣ�(ѡ��һ��)', 'href     ', 'src       ', 'type     ', 'align', 2248, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������ʽ���ļ�����չ���ǣ�(ѡ��һ��)', 'html      ', 'css        ', 'xml       ', 'dib', 2249, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'HTML�����е�ת�б����(ѡ��һ��)', 'html      ', 'br       ', 'title         ', 'p', 2250, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����Ǹ����������ݲ������ԣ�(ѡ��һ��)', 'select', 'insert', 'delete', 'update', 2251, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����mysql_select_db����ֵ��ȷ���ǣ�(ѡ��һ��)', ' �ɹ���������1��ʧ�ܷ���0', '�ɹ���������һ�����ӱ�ʶ��ʧ�ܷ���false', ' �ɹ���������True,ʧ�ܷ���False', '������������True,ʧ�ܷ���һ�������', 2252, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�뿴���룬���ݿ�ر�ָ��ر��ĸ����ӱ�ʶ��(ѡ��һ��)<?' || chr(10) || '$link1 =mysql_connect("localhost","root","");' || chr(10) || '$link2 =mysql_connect("localhost","root","");' || chr(10) || 'mysql_close();' || chr(10) || '?>' || chr(10) || '', '$link1', '$link2', 'ȫ���ر�', '����', 2253, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', ' mysql_data_seek(��ѯ���ָ�룬����¼λ��)�����У����ϼ�¼λ�õ�ֵ�ǴӶ��ٿ�ʼ�ģ�(ѡ��һ��)', '1', '2', '3', '0', 2254, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', ' ȡ���������Ľ�����еļ�¼�����ĺ����ǣ�(ѡ��һ��)', 'mysql_fetch_row', 'mysql_rowid', 'mysql_num_rows', 'mysql_fetch_array', 2255, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����mysql_pconnect˵����ȷ���ǣ�(ѡ��һ��)', '�����ݿ���ж�����', ' ��mysql_connect������ͬ', '���mysql_connect������ͬ', ' �����ݿ⽨���־�����', 2256, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'ÿ�����е��ƶ�����֤�鶼���Լ������ƣ����У����������ṩ���ƶ�����֤���ʲô��( )(ѡ��һ��)', '֧����', 'K��  ', '��KEY ', 'U��', 2257, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '������Щ�ǶԵּ�ȯʹ�ù���Ĵ�����⣿( )(ѡ�����)', '�ּ�ȯ����ʹ����֧����Ӧ���ּ�ȯ����Ʒ��', '�ּ�ȯ�����������Ż�ͬʱʹ��', 'һ�ʽ�����ּ�ȯ�����ۼ�ʹ��', '�ּ�ȯ��������˿������벹��', 2258, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����ĸ������ܹ�����������������ʱ���ӵ���Ӧ�֣������Ƭ������( )(ѡ��һ��)', '��Ӱ�� ', '�����', '������', '���϶���', 2259, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ż���������Ʒ��Ƭʱ�����������ǣ�  ��(ѡ��һ��)', '���˫�֣��������� ', '��ǿ�ȶ��ԣ���ֹ��Ƭģ��', '��������Ƭ��Ư��', '�����ĳ�רҵ�������Ƭ', 2260, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Ϊ�˷�ֹ���ǵ�ͼƬ�����ã�ͬʱΪ����ǿͼƬ�����۶Ⱥ�Ȩ���ԣ����ǿ���( )', '���ͼƬ�߿�', '��Ʒ�Ա߷���װ����', 'ͼƬ���ˮӡ', 'ͼƬ��ȡ��Ϊ����', 2261, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ֱͨ�����շѷ�ʽ��ʲô��( )', '��չʾʱ���շ�', '��չʾλ���շ� ', '��ʵ�ʵ���շ�', '��չʾ�����շ�', 2262, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'վ���ƹ㹤�ߡ�ֱͨ����ÿ����Ʒ����������༸���ؼ��ʣ�( )', '100��', '200��  ', '300��', '400��', 2263, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ȳɽ��󸶷ѵ����Ա���ʲô�ƹ�ģʽ��( )', '��̳���λ', 'ֱͨ��   ', '�Ա���', '��ʯչλ', 2264, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ƹ��Ӫ����������ͬ����ҵ�ʻ㣬����˵������ġ��ƹ㡱�͡�Ӫ�����ֱ��ܶԹ˿���ʲô���ã�( )(ѡ��һ��)', '֪�����ǣ�ѡ������', 'ѡ�����ǣ�֪������', '������������ܾ���', 'ѡ�����ǣ��������', 2265, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', 'ֱͨ����������������Щ���ݣ���  ��(ѡ������)', 'Ͷ��ʱ��', 'Ͷ������ ', '�����Ľ��', '�շ�����', 2266, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '�����ڼ��������߱��Ϸ�����Ŀ����������( )(ѡ�����)', '�Ա���ע���û�      ', '��������ƽ̨�������', '�������ñ�����һ������', '�û����Һ�������97%���ϣ�����97%��', 2267, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����ͻ���ʽ�в����Ŷ����ͻ�����( )(ѡ��һ��)', '�ʾ�', '���  ', '��·����', '���ʻ���', 2268, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��������ǳ���Һ�����ӵģ�Ӧ��ѡ�������ĸ���װ��( )(ѡ��һ��)', 'ֽ��  ', '��ݴ�  ', 'ľ����', '��Ƥ��', 2269, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�й��˷�ģ��������д������( )(ѡ��һ��)', '���԰��ճ��������ʷ�', '���԰��յ��������ʷ�', '���԰���������ʽ�����ʷ�', '�ܹ��������ҽ�Լʱ��', 2270, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '�߱������������ʿ���������פ�̳ǣ�( )(ѡ�����)', 'Ʒ���̻���', '�����̻� ', '������', null, 2271, 412);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'C#�н��ַ���ת��Ϊbyte[]���͵ķ����ǣ� ����ѡһ�', 'Encoding.Default.GetChars()', 'Encoding.Default.GetBytes()', 'Encoding.Default.GetString()', 'Encoding.Default.GetByteCount()', 2272, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'C#��Ҫ��ʱѭ��ִ��ĳһ�������õ��Ŀؼ��ǣ� ����ѡһ�', 'listBox', 'timer', 'ComboBox', 'DataSet', 2273, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'C#�����ڶ������������ǣ� ����ѡһ�', 'int', 'char', 'IntPtr', 'Byte', 2274, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��֧��Servlet�淶��Web�������У�URL http��//localhost��8080/HllowordWeb/helloword��Ϊһ��Servlet�����������յ�5��ͬ����Servlet����' || chr(10) || 'http��//localhost��8080/HllowordWeb/helloword��userName=��one��' || chr(10) || 'http��//localhost��8080/HllowordWeb/helloword��userName=��two��' || chr(10) || 'http��//localhost��8080/HllowordWeb/helloword��userName=��three��' || chr(10) || 'http��//localhost��8080/HllowordWeb/helloword��userName=��four��' || chr(10) || 'http��//localhost��8080/HllowordWeb/helloword��userName=��five��' || chr(10) || 'ʱ������������ѡһ�', '����5��hellowordʵ����5���̣߳�ÿ���̷߳���һ��ʵ��', '����5��hellowordʵ����5�����̣�ÿ�ν��̷���һ��ʵ��', '����1��hellowordʵ����5���̣߳�5���߳�ͬʱ���ʸ�ʵ��', '����1��hellowordʵ����5���̣߳�5������ͬʱ���ʸ�ʵ��', 2275, 204);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���й��ڲ�������Ե�˵����������ǣ�ѡһ�', '���������Ҫ��ͨ��ĳ���ֶ��ҳ�����е�ȱ��', 'һ���Ƚ��е��Ժ���в���', '���������Ҫ��ͨ����������Ϻ͸�������ķ�Ǳ�ڴ���', '���Թᴩ���������������', 2276, 205);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������µ�XML�ĵ�ʵ��Ƭ��:' || chr(10) || '<studentlist>' || chr(10) || ' <student>' || chr(10) || '  <name>a</name>' || chr(10) || '  <sex>male</sex>' || chr(10) || '  <age>20</age>' || chr(10) || ' </student>' || chr(10) || ' <student>' || chr(10) || '  <name>b</name>' || chr(10) || '  <sex>female</sex>' || chr(10) || '  <age>21</age>' || chr(10) || ' </student>' || chr(10) || '</studentlist>' || chr(10) || '��ôXPath ���ʽ/studentlist/student/name ƥ��Ľ���ǣ�ѡһ�', '<name>a</name>', '<name>a</name>' || chr(13) || '' || chr(10) || '<name>b</name>', 'a', 'ab', 2277, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��HTML�У�����JavaScript�������н���ǣ�������ѡһ�' || chr(10) || 'var s = window.confirm("�Ƿ���ʾ���");' || chr(10) || 'if(s==true){' || chr(10) || '    showAdviesment();' || chr(10) || '}' || chr(10) || 'function showAdviesment(){' || chr(10) || '    window.open("���.htm","���","menubar=1,toolbar=0,status=yes,resizable=1");' || chr(10) || '}' || chr(10) || '</script>', '���ȵ���һ������ȷ����ȡ����ť�ĶԻ��򣬵��û����ȷ����ť����ʾ�����.htm��ҳ�棬��ҳ��û�й�����', '���ȵ���һ��ֻ����ȷ����ť�ĶԻ��򣬵��û����ȷ����ť����ʾ�����.htm��ҳ�棬��ҳ��û�й�����', '���ȵ���һ������ȷ����ȡ����ť�ĶԻ��򣬵��û����ȷ����ť����ʾ�����.htm��ҳ�棬��ҳ��û�в˵���', '����һ������ȷ����ȡ����ť�ĶԻ��򣬲��ܵ��û����ȷ����ť����ȡ����ť�󣬾�������ʾ�����.htm��ҳ��', 2278, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ADO.NET�е�DataView�ؼ���������ɸѡ���ݼ��е���������µĴ�������ѡ�����ݼ�������С��24��Ա����' || chr(10) || 'DataView  V = new DataView(mydataSet.Tables[0]);' || chr(10) || '(1)//�˴���д��ȷ�Ĵ���' || chr(10) || '��1����Ӧ����д����ȷ����Ϊ��ѡһ�', 'V.RowFilter = "Age < 24";', 'V.RowFilter = "Select Age From V Where Age < 24";', 'V.Excute("Select Age From V Where Age < 24");', 'V.Excute("Age < 24");', 2279, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '������ܹ���ʵ����������ǣ�ѡһ�', '���ݴ��ݵ�����', '��������', '��ʾ����', '�������ݿ�', 2280, 207);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Intent��������ʱ�����е������������ݲ����Ա����ݣ�(ѡ��һ��)', 'Serializable', 'JSON����', 'Bundle', 'charsequence', 2281, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���Ƕ�֪��Hanlder���߳���Activityͨ�ŵ�����,����̴߳���������Ļ����ͻ���Խ������ô�߳����ٵķ����ǣ�(ѡ��һ��)', 'onDestroy() ', 'onClear()', 'onFinish()', 'onStop()', 2282, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����ĸ��� AbsoluteLayout(���Բ���) �����е����ԣ�(ѡ��һ��)', 'android:layout_height', 'android:layout_x', 'android:layout_above', 'android:layout_toRightOf', 2283, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'RatingBar ����в���������ֱ�����õ��ǣ�' || chr(10) || 'ѡ��һ�(ѡ��һ��)' || chr(10) || '', '����Ǹ���', '��ǰ����', '����������', '����ǵ�ɫ��', 2284, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���ֻ������г��õ����ݿ��ǣ�(ѡ��һ��)', 'SQLite', 'Oracle', 'Sql Server', 'MySQL', 2285, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'android �µĵ�Ԫ����Ҫ����,����˵������ȷ���ǣ�(ѡ��һ��)', '��Ҫ�� manifest.xml �嵥�ļ� application �ڵ�������instrumentation', ' ��Ҫ�� manifest.xml �嵥�ļ� manifest �ڵ�������instrumentation', '��Ҫ�� manifest.xml �嵥�ļ� application �ڵ������� uses-library', '��Ҫ�ò�����̳� AndroidTestCase ��', 2286, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '�� android ��ʹ�� SQLiteOpenHelper ���������ʱ����Щ������������һ�����ݿ⣿(ѡ������)', 'getReadableDatabase() ', 'getWriteableDatabase() ', 'getAbleDatabase()', 'getDatabase()', 2287, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'android �������֯ Activity �ģ�(ѡ��һ��)', '��ջ�ķ�ʽ��ʽ Activity', '�Զ��еķ�ʽ��֯ Activity', '�����η�ʽ��֯ Activity', '����ʽ��ʽ��֯ Activity', 2288, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'onPause ʲôʱ����ã�(ѡ��һ��)', '����������ʱ', '�� onCreate ������ִ��֮��', '�����汻����ʱ', '������������ʾʱ', 2289, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�ڱ�񲼾��У�android:collapseColumns="1,2"�ĺ����ǣ�(ѡ��һ��)', '����Ļ�У�������������ʾ��ʱ����ʾ 1��2 ��', '����Ļ�У�����������ʾ����ʱ���۵�', '����Ļ�У������Ƿ��ܶ���ʾ�꣬�۵� 1��2 ��', '����Ļ��,��̬�����Ƿ���ʾ���', 2290, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���Բ����У�android:layout_x �ĺ����ǣ�' || chr(10) || 'ѡ��һ�' || chr(10) || '', '���ֻ�����Ϊԭ�㣬�����ʾ����Ļ�еĺ�������ֵ��', '���ֻ�����Ϊԭ�㣬�����ʾ����Ļ�еĺ�������ֵ��', '���ֻ�����Ϊԭ�㣬�����ʾ����Ļ�еĺ�������ֵ��', '���ֻ�����Ϊԭ�㣬�����ʾ����Ļ�еĺ�������ֵ��', 2291, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ScrollView �У�����ֱ�Ӱ������ٸ������(ѡ��һ��)', '3��', '2��', '1��', '������', 2292, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'TabHost.newTabSpec("tab1")�������ǣ�(ѡ��һ��)', 'Ϊ tab ҳ��������Ϊ tab1', 'Ϊ tab ҳ���� ID Ϊ tab1', 'Ϊ tab ҳ��������', 'Ϊ tab ҳ�����¿ո�', 2293, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', ' mysql_ping()�����������Լ�����ֵ��������ȷ���ǣ�(ѡ��һ��)', '������ݿ�ϵͳ��״̬������������ֵ', '������ݿ�ϵͳ��״̬������ֵΪ������', '��鵽�������������Ƿ�����������������ֵ', '��鵽�������������Ƿ�����������ֵΪ������', 2294, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����mysql_db_query��mysql_query˵����ȷ���ǣ�(ѡ��һ��)', 'mysql_db_query��mysql_query��ִ��sql����ķ���ֵ��һ���ģ��ɹ�������Դ�ţ�ʧ�ܷ���FALSE', ' ������mysql_query������ʱ����һ�����ݿ���ִ��sql��䣬��mysql_db_query����', 'mysql_db_query�����л�����ǰ���ӵ������ݿ�', 'mysql_query�ڹ����ϵ���mysql_select_db() +mysql_db_query()', 2295, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'mysql_connect( )��@mysql_connect( )��������( ) (ѡ��һ��)', ' @mysql_connect( )������Դ���,��������ʾ���ͻ���', ' mysql_connect( )������Դ���,��������ʾ���ͻ���', 'û������', '���ܲ�ͬ���������� ', 2296, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���for($k=0;$k=1;$k++);�����for($k=0;$k==1;$k++);ִ�еĴ����ֱ���: (ѡ��һ��)', '���޺�0', '0������', '��������', '����0 ', 2297, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ȡpost�������ݵı�Ԫ��ֵ�ķ�����:(ѡ��һ��)', '$_post["����"]', ' $_POST["����"]', '$post["����"]', ' $POST["����"] ', 2298, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'php������У����ȼ��Ӹߵ��ͷֱ��ǣ� ��(ѡ��һ��)', '��ϵ��������߼�����������������', '�������������ϵ��������߼������', '�߼���������������������ϵ�����', '��ϵ�������������������߼������ ', 2299, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Ҫ�鿴һ����������������,��ʹ�ú���( )(ѡ��һ��)', 'type()', 'gettype()', 'GetType()', 'Type() ', 2300, 405);
commit;
prompt 2300 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�ַ����ıȽϣ��ǰ������������бȽϡ�(ѡ��һ��) ', 'ƴ��˳��', 'ASCII��ֵ', '���', '�Ⱥ�˳�� ', 2301, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ѡ���type����ֵ��( ) (ѡ��һ��)', 'checkbox', 'radio', 'select', 'check ', 2302, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����ȡ�����һ����ѯ����Ϣ,Ӧ��ʹ���ĸ�����( )(ѡ��һ��)', ' mysql_info', 'mysql_stat', 'mysql_insert_id( )', 'mysql_free_result ' || chr(10) || '' || chr(10) || '', 2303, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����ĸ�˵���Ǵ����( ) (ѡ��һ��)', 'gettype( )�ǲ鿴�������͵�', 'û�б���ֵ�ı�����0', 'unset( )�Ǳ���ΪNULL', '˫�����ַ�������Ҫ��һ�������еı������ᱻ����ֵ��� ', 2304, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'strtolower( )�����Ĺ����ǣ�����(ѡ��һ��) ', '���������ַ���ȫ��ת��ΪСд��ĸ', '���������ַ���ȫ��ת��Ϊ��д��ĸ', '���������ַ�������ĸת��ΪСд��ĸ', '���������ַ�������ĸת��Ϊ��д��ĸ ', 2305, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'HTML��,���Ԫ���"ֵ"�Ǵ洢��( )��ǩ��(ѡ��һ��) ', '< body>', '< td>', '<tr>', '<table> ', 2306, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'php���ַ���������������ǣ� ��(ѡ��һ��)', '-����', '+����', '&', '.', 2307, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'php������֧�ֵĹ�����(ѡ��һ��)', '�ɱ�Ĳ�������', 'ͨ�����ô��ݲ���', 'ͨ��ָ�봫�ݲ���', 'ʵ�ֵݹ麯�� ', 2308, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'C/S�ܹ��ге��е������Ӹ��ָ�֪�豸���Լ�������ͨ�ŵĹ��ܵ��ǣ� ����ѡһ�', 'Client��', 'Server��', 'RFID��', '�����', 2309, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'EPCSDK.dll���д򿪴��ڵĺ����ǣ� ����ѡһ�', 'ResumeReading', 'IdentifySingleTag', 'ReadTag', 'OpenComm', 2310, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'EPC����洢�ڣ� ����ѡһ�', '��д���洢оƬ', '����Э��', 'Ӧ�ó���', 'RFID��ǩ��΢��оƬ', 2311, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'EPC�������ɣ� ����ɣ�ѡһ�', '�ɱ�ͷ������ʶ����롢���������롢���к�', '�����кš�����ʶ����롢���������롢��Ʒ����', '�ɱ�ͷ���������롢���������롢���к�', '�����кš�����ʶ����롢��Ʒ���롢��������', 2312, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'EPC��ǩ��ÿ����ַ���Դ洢�������ǣ� ���ֽڣ�ѡһ�', '1', '2', '3', '4', 2313, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'FastWriteTag������EPCSDK.dll�ṩ�Ŀ���д���ǩ�ĺ�������������пհ״�Ӧ����Ĵ����ǣ� ����ѡһ�' || chr(10) || 'byte[] data = Encoding.Default.GetBytes("�������");' || chr(10) || 'if (EPCSDKHelper.FastWriteTag(_handle, 0x03, 0x00, _______,_______, 0))' || chr(10) || '{' || chr(10) || '    MessageBox.Show("д���û����ɹ�");' || chr(10) || '}' || chr(10) || 'else' || chr(10) || '{' || chr(10) || '    MessageBox.Show("д���û���ʧ��"', 'data,4', '4,data', 'data,8', '8,data', 2314, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'JT6220��д������������ʹ�����棨 ��������ѡһ�', 'SetReaderParameters', 'GetReaderParameters', 'ReadByEpcID', 'InitializeTag', 2315, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'JT6220��д���Ĳ�����ȡʹ�����棨 ��������ѡһ�', 'SetReaderParameters', 'GetReaderParameters', 'ReadByEpcID', 'InitializeTag', 2316, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'RFID��д���ϵ�֮�󲻹�������Ҫ����乩���Ƿ����������Դ�������Ľ����繩���ѹӦ�ڣ� ����ѡһ�', '220V����', '7.5V����', '100-240V֮��', '7-9V֮��', 2317, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', 'RFID�豸ѡ�͵�����ԭ���ǣ� ����ѡ���', '���Ϲ��ұ�׼', '����м���֧��', '�ʺ�Ӧ�û���', '������ϵͳ�Ľ��', 2318, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'RFID�豸�����������еģ� ���㣨ѡһ�', '��֪��', 'Ӧ�ò�', '�����', '�����', 2319, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����������������ⲿ������ʹ�õ����η��ǣ� ����ѡһ�', 'static', 'struct', 'extern', 'internal', 2320, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ǩ�ķ���������ࣨ ��λ16��������ѡһ�', '4', '6', '8', '16', 2321, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��׼RS-232���ڵ�������ֻ�ǲ��þ�о�еģ� ���������ӣ�ѡһ�', '4��5��8', '1��2��3', '2��3��5', '2��3��4', 2322, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����IdentifyUploadedMultiTags����ʶ���ǩ��һ�����ʶ�� ������ǩ��ѡһ�', '50', '100', '150', '200', 2323, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ƵRFIDЭ�������£� ��һ�֣���ѡһ�', 'ISO18000-6C', '14443a', 'ISO15693', 'ISO/IEC14443', 2324, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����Ƶ��д��ʶ����ӱ�ǩ���õ�ԭ���ǣ� ����ѡһ�', '������', '������', '�������', '��ŷ���ɢ�����', 2325, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '<?xml version="1.0" encoding="gb2312" ?>' || chr(10) || '<?xml:stylesheet type="text/xsl" href="stud.xsl" ?>' || chr(10) || '<roster>' || chr(10) || '' || chr(9) || '<student ID="s101">' || chr(10) || '' || chr(9) || '' || chr(9) || '<name>�</name>' || chr(10) || '' || chr(9) || '' || chr(9) || '<sex>��</sex>' || chr(10) || '' || chr(9) || '' || chr(9) || '<birthday>1978.9.12</birthday>' || chr(10) || '' || chr(9) || '' || chr(9) || '<score>92</score>' || chr(10) || '' || chr(9) || '</student>' || chr(10) || '</roster>' || chr(10) || '�������XML�ļ���������stud.xsl ��' || chr(10) || '<?xml version="1.0" encoding="gb2312"?>' || chr(10) || '<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">' || chr(10) || '' || chr(9) || '<xsl:template match="/">' || chr(10) || '' || chr(9) || '' || chr(9) || '<xsl:value-of select="student/name"/>' || chr(10) || '' || chr(9) || '</xsl:template>' || chr(10) || '</xsl:stylesheet>' || chr(10) || '��XML��IE�е�����ǣ�ѡһ�', '�', 'IE���������Ϣ', '�����', '<name>�</name>', 2326, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', 'Report.xml�а���subject Ԫ�أ���Ԫ�ؿ��԰���ĳ HTML ��ǣ����£�' || chr(10) || '<subject>' || chr(10) || '   <b>2008��</b> <i>�������˻�</i>չ�� ' || chr(10) || '</subject>' || chr(10) || '����Ҫ��дһ��XML schema�������xml�ĵ����ݵĽṹ�����µ�schemaƬ���У���������ʹReport.xmlͨ����Ч����֤��ѡ���', '<xsd:element name="subject">' || chr(13) || '' || chr(10) || '  <xsd:complexType mixed="true">' || chr(13) || '' || chr(10) || '     <xsd:all>' || chr(13) || '' || chr(10) || '       <xsd:element name="i" minOccurs="0" maxOccurs="unbounded" ' || chr(13) || '' || chr(10) || '            type="xsd:string" />' || chr(13) || '' || chr(10) || '<xsd:element name="b" minOccurs="0" maxOccurs="unbounded" ' || chr(13) || '' || chr(10) || '            ty', '<xsd:element name="subject" type="xsd:string" />', '<xsd:element name="subject" type="xsd:anyType" />', '<xsd:element name="subject">' || chr(13) || '' || chr(10) || '  <xsd:complexType mixed="true">' || chr(13) || '' || chr(10) || '     <xsd:sequence>' || chr(13) || '' || chr(10) || '       <xsd:element name="i" minOccurs="0" maxOccurs="unbounded" ' || chr(13) || '' || chr(10) || '            type="xsd:string" />' || chr(13) || '' || chr(10) || '<xsd:element name="b" minOccurs="0" maxOccurs="unbounded"', 2327, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������JavaScript���룺' || chr(10) || 'var today = new Date();' || chr(10) || 'document.write("����ʱ����:" + today.getHours() + ":" + today.getMinutes());������ʵ��ҳʱ�����������ʽ��ȷ���ǣ�ѡһ�', '����ʱ���ǣ�2008-02-20-15:54', '����ʱ���ǣ�15:54', '00:00', '����ʱ���ǣ�+15+: +54', 2328, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������JavaScript����Σ�' || chr(10) || 'a = new Array("100","2111","41111");' || chr(10) || 'for(var i = 0;i < a.length;i++ ){' || chr(10) || '    document.write(a[i] + " ");' || chr(10) || '}' || chr(10) || '�������ǣ�ѡһ�', '100 2111 41111', '1 2 3', '0 1 2', '1 2 4', 2329, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������2006��5��8������һ,��������JavaScript������ҳ���ϵ��������ǣ�ѡһ�' || chr(10) || 'var time = new Date();' || chr(10) || 'document.write(time.getDay());', '2006', '8', '5', '1', 2330, 206);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Oracle�У�ʹ��������䴴����ͼ��' || chr(10) || 'CREATE OR REPLACE VIEW pen_view' || chr(10) || 'AS SELECT * FROM order_master' || chr(10) || 'WHERE ostatus = ��p�� WITH CHECK OPTION;' || chr(10) || '���û���ͼִ���������:' || chr(10) || 'UPDATE pen_view SET ostatus = ��d�� WHERE ostatus=��p��;' || chr(10) || '����������ȷ���ǣ�ѡһ�', 'Oracle��ostatus�޸�Ϊd������ʾ�κδ���', 'Oracle��ִ�и��²����������ش�����Ϣ', 'Oracle��ostatus�޸�Ϊd��ͬʱ���ش�����Ϣ', 'Oracle��ִ�и��²�����Ҳ����ʾ�κδ���', 2331, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������������˵����ȷ���ǣ�(ѡ��һ��)', '����Ҫ�������洢����', '����Ҫ���������ݰ󶨵������', '����Ҫ������������', '����Ҫ�����洢 xml ����', 2332, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Matrix ��������ǣ�(ѡ��һ��)', '���Դ洢��С��Ŵ����', '�洢�ļ��е�ͼƬ��Ϣ', '�洢��Դ�е�ͼƬ��Ϣ', '�洢�ڴ��е�ͼƬ��Ϣ', 2333, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'android:completionThreshold=1 ���ĸ���������ԣ�(ѡ��һ��)', 'ImageButton', 'EditText', 'TextView', 'AutoCompleteTextView', 2334, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����˳�Activity����ķ����ǣ�(ѡ��һ��)', ' finish()', 'System.exit() ', 'onStop()', '���쳣ǿ���˳�', 2335, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���� Activity ˵�ķ�����ȷ���ǣ�(ѡ��һ��)', 'ͨ���ѵ�ǰ actvity ���󴫵ݸ� service ����', 'ͨ���� Activity ���͹㲥��', 'ͨ�� Context ������� Act]ivity ����Ԫ�� ', '������ service �У����� Activity �ķ���ʵ�ָ��Ľ���Ԫ�ء�', 2336, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���� android ���̣�˵������ȷ���ǣ�' || chr(10) || 'ѡ��һ�' || chr(10) || '', '����������ڵĽ��̣����� androidmanifest.xml ������������ָ������������� �ĸ����̡�', '�������ڴ�ʱ��android ��������ȹر���Щ���еĽ���', '���������ǲ�Ϊ�û������� Activity�����ǻ����п��ܱ��û����������������� ��ɱ��', '���ӽ���һ�㲻�᲻��ϵͳ��ɱ��', 2337, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����onsubmit�¼��������ǣ�(ѡ��һ��)', '�����е�һ����ť�����ʱ��ִ�е�JavaScript�¼���', '���û��ύһ����ʱ��ִ�е�JavaScript�¼���', '��������ʱ��ִ�е�JavaScript�¼���', ' ��ҳ��������ʱ��ִ�е�JavaScript�¼���', 2338, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�� Activity �����������У������ӿɼ�״̬ת���͸��״̬ʱ�������ĸ��������뱻���ã�(ѡ��һ��)', 'onStop����', 'onPause����', 'onRestart����', 'onStart����', 2339, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���� BroadcastReceiver ��˵������ȷ���ǣ�(ѡ��һ��)', '���������չ㲥 Intent ��', 'һ���㲥 Intent ֻ�ܱ�һ�������˴˹㲥�� BroadcastReceiver ������ ', '������㲥��ϵͳ����ݽ��������������ȼ���˳�����ִ�н�����', '���������������ȼ����ڵ� android:priority ��������������ֵԽ�� ���ȼ���Խ��', 2340, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�� android ��ʹ�� RadioButton ʱ��Ҫ��ʵ�ֻ����ѡ����Ҫ�õ������ ��(ѡ��һ��)', 'ButtonGroup', 'RadioButtons', 'CheckBox', 'RadioGroup ', 2341, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ڶ��Ӧ���ж�ȡ����洢����ʱ�� ��Ҫ�õ��ĸ������ query ������(ѡ��һ��)', ' ContentResolver ', ' ContentProvider', ' Cursor', 'SQLiteHelper', 2342, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'DDMS �� Log ��Ϣ��Ϊ��������(ѡ��һ��)', '3', '4', '5', '7', 2343, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������һ�����android�Ķ������ͣ�' || chr(10) || 'ѡ��һ�(ѡ��һ��)' || chr(10) || '', 'Tween', 'Alpha', 'Frame', 'Animation ', 2344, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����Ӳ˵��ķ����ǣ�(ѡ��һ��)' || chr(10) || '' || chr(10) || '', 'add', ' addSubMenu', 'createSubMenu', 'createMenu', 2345, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'MediaPlayer ������Դǰ����Ҫ�����ĸ��������׼��������(ѡ��һ��)' || chr(10) || '' || chr(10) || '', 'setDataSource', 'prepare ', 'begin', 'pause', 2346, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�ļ����type����ֵ��( )(ѡ��һ��)', 'text', 'hidden', 'textarea', 'checkbox', 2347, 405);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������Ӫ���ļ����(��ѡ��', 'SEO', 'SEM', 'SEC', 'SERP', 2348, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Google�Ͱٶ��ĸ���ץȡIframe�������(��ѡ��', 'Google', '�ٶ�', '����', '������', 2349, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���¶���վ����û��̫��Ӱ���������(��ѡ��', '�������ȶ���', 'Title��ǩ', 'Keywords��ǩ', '��վ���ݺ͸���Ƶ��', 2350, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������ӷ��棬PR��ѡ��Ӧ������ѡ�������Ϊ(��ѡ��', 'PR�ߣ�����Ե�', 'PR�ͣ�����Ը� C', 'PR�ߣ�����Ե�', 'RP�ߣ�����Ը�', 2351, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'һ����׼�ؼ��ʵġ��������ȡ�������(��ѡ��', '��ض�', '���ж�', '������', '���ƶ�', 2352, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'һ����Ů�Է�װ��������վ����õĹؼ���ѡ����(��ѡ��', 'Ůװ����', '��װ����', 'Ů�Է�װ', 'Ů�Է�װ������վ', 2353, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����ĸ�HTTP״̬�����������淵�ص�ץȡ������״̬��(��ѡ��', '500', '301', '200', '404', 2354, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����URL��SEO���Ѻõ���(��ѡ��', 'seo/index.html', 'seo/', 'seo.aspx', 'seo.php?id=21', 2355, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'robots.txt��֧�ֵĴ���Ϊ(��ѡ��', 'Allow', 'Disallow', 'Crawl-delay', 'noindex', 2356, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������һ�����PRֵ����Ϊ��Google ��Ϊ��������Ϊ(��ѡ��', '��ܶ����վ����������', '����ܶ���վĿ¼վ������վ', '��PRֵ�ߵ�վ�㹺������', '����������Ϣ�����з�������', 2357, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'SEOָ����(��ѡ��', '���������Ż�', '��������Ӫ�� ', '�����������', '�������濪��', 2358, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Ŀǰ�����������У���ȫ��������ռ���г��ݶ���������������(��ѡ��', 'ASK', 'Yahoo!', 'Google ', 'AOL ', 2359, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'link�����������(��ѡ��', '���վ����¼���', '��鷴������', '�������', '������', 2360, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����״̬���ʾ�ض������(��ѡ��', '403', '404', '301', '500', 2361, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������湫˾�ٶ����ɣ�         ��������(��ѡ��', '����', 'ʷ���� ', '�����', '����Զ', 2362, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'slurp���ĸ����������֩��(��ѡ��', '�ٶ�', '��������', 'Bing', 'Yahoo', 2363, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'Wordpress�������������Ż���Ա����(��ѡ��', '������̳', '�������ݹ���ϵͳ', '��������', '������վ', 2364, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��лҪ��һ��Ů�Է�װ����������վ�������������ۣ��������л��Ӧ��ѡ���ĸ��ؼ��ʽ����ƹ�(��ѡ��', 'Ůװ', 'Ůװ��վ', 'Ůװ����  ', '��װ����', 2365, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Sitemap�Ŀ�ʼ�ͽ��������(��ѡ��', '<urlset></urlset>', '<url></url>', '<loc></loc> ', '<add></add>', 2366, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������Ӫ���У�PPCָ����(��ѡ��', 'Points Per Click', 'Pay Per Click', 'Person Per Click', 'Page Per Click', 2367, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��ͨ�ŷ�ʽ�����֣����У� �������ڶ�д���ĳ�������ģʽ��ѡһ�', '����ǩģʽ', '��ʱģʽ', '����ģʽ', '����ģʽ', 2368, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��RFIDӦ��ϵͳ����Ҫͬʱʹ�ö�̨��д�����б�ǩʶ��ʱ��Ӧ��ʹ�����У� ����������ÿ̨��д����ʶ����п��ƣ���ѡһ�', '�洢����', '���߳�', '�����ļ�', 'ί��', 2369, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '��SQL Server���ݿ⾭����ΪC/S�ܹ��еķ�����ϵͳ�����ĵ�¼��ʽ�������£� ����ѡ���', 'Windows�����֤', '�����˻������֤', 'Զ���˻������֤', 'SQL Server�����֤', 2370, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ڲ�������ʱ��������������������ǣ� ����ѡһ�', '��Ҫ����д���Ƿ����ISO18000-6B/CЭ��', '��Ҫ����д���Ĳ������Ƿ�������ȷ', '�鿴ѡ���COM���ǲ��Ǹ���д����PC���ӵ������', '���ڵ����Ƿ�������ȷ������δ���ӻ����Ӳ��ο��ᵼ��PC����������·�����д��', 2371, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���ԵĴ��д���ӿ�һ��ֻ�ܴ��䣨 �����ݣ�ѡһ�', '1 byte', '1 int', '1 bit', '1 char', 2372, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���ӱ�ǩ�ı����������ڴ�ţ� ��������ѡһ�', 'EPC����', '�û�����', '��������', 'Ψһ���', 2373, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��д����Ƶ��LF, HF, UHF�ֱ��Ӧ�ڣ� ����ѡһ�', '��Ƶ������Ƶ��΢��', '��Ƶ����Ƶ����Ƶ', '��Ƶ����Ƶ������Ƶ', '��Ƶ����Ƶ������Ƶ', 2374, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���̵߳������ռ��ǣ� ����ѡһ�', 'System.Threading;', 'System.Configuration;', 'System.Collections.Generic;', 'System.Runtime.InteropServices;', 2375, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '�����ڶ�д������ӱ�ǩ֮����Ƶ�źŵ�������ͷ�Ϊ�� ����ѡ���', '������', '������', '�������', '��ŷ���ɢ�����', 2376, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ڴ���ͨѶ��������������ǣ� ����ѡһ�', '����Ҳ���Գ�ΪCOM��', 'RS-232����Ϊ��׼���ڣ�Ҳ����õ�һ�ִ���ͨѶ�ӿ�', '���ڲ�֧���Ȳ�Σ��Ҵ������ʽϵ�', '����ͨѶ��֧��ȫ˫��ģʽ', 2377, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���ڶ�̬���ӿ���������������ǣ�����ѡһ�', '��̬���ӿ�Ӣ��ΪDLL����Dynamic Link Library ����д��ʽ', 'DLL��һ����ִ���ļ�', 'DLL��һ���������ɶ������ͬʱʹ�õĴ�������ݵĿ�', 'DLL ����һ�������ѱ����롢���Ӳ���ʹ�����ǵĽ��̷ֿ��洢�ĺ���', 2378, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BC', '�����¼�����������ȷ���ǣ� ����ѡ���', '�¼���WinForm�ж��еĻ���', '�¼����Կ�����һ�������ί��', '�¼��Ƕ�ί�е�һ�ַ�װ������ʽ', '�¼����������滻ί��', 2379, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������б���������������ǣ� ����ѡһ�', '�����б���ʱ��Խ������ͬһ��ǩʶ�𵽵ļ���ԽС', '���������б���Ҫ��������������', '�����б�ֻ�����ڶ�ʱģʽ��', '' || chr(9) || '�����б���ʱ������Ϊ0�Ļ���ʾ�����������б�', 2380, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������뱣���ڣ� ����ѡһ�', 'TID���ĵ�ַ2-5', 'EPC���ĵ�ַ2-7', '�������ĵ�ַ0-1', '�������ĵ�ַ2-3', 2381, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�ܹ����ٶ�ȡ��ǩ��EPC����ĺ����ǣ� ����ѡһ�', 'FastWriteTagID', 'ReadTag', 'IdentifySingleTag', 'InitializeTag', 2382, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��һ����д�����ֽڵĺ����ǣ� ����ѡһ�', 'WriteTagSingleWord', 'FastWriteTag', 'FastWriteTagID', 'InitializeTag', 2383, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��stud.dtd�ļ�����:' || chr(10) || '<?xml version="1.0" encoding="gb2312" ?>' || chr(10) || '<!ELEMENT roster (student )>' || chr(10) || '<!ELEMENT student (name)>' || chr(10) || '<!ELEMENT name (#PCDATA)>' || chr(10) || '<!ATTLIST student school CDATA #REQUIRED>' || chr(10) || '<!ENTITY is "Elementary School">' || chr(10) || '��stud.xml�ļ�����:' || chr(10) || '<?xml version="1.0" encoding="gb2312" ?>' || chr(10) || '<!DOCTYPE roster SYSTEM "stud.dtd" >' || chr(10) || '<roster>' || chr(10) || '' || chr(9) || '<student school="&is;" >' || chr(10) || '' || chr(9) || '' || chr(9) || '<name>Jake</name>' || chr(10) || '' || chr(9) || '</student>' || chr(10) || '</roster>' || chr(10) || '����˵����ȷ���ǣ�ѡһ�', 'stud.xml������stud.dtd����Ч��Ҫ��', 'IE�����stud.xml ʱ,����', 'IE�����stud.xml ʱ,����ʾ:' || chr(13) || '' || chr(10) || '<roster>' || chr(13) || '' || chr(10) || '<student school="Elementary School">' || chr(13) || '' || chr(10) || '<name>Jake</name>' || chr(13) || '' || chr(10) || '</student>' || chr(13) || '' || chr(10) || '</roster>', 'IE�����stud.xml ʱ,����ʾ:' || chr(13) || '' || chr(10) || '<roster>' || chr(13) || '' || chr(10) || '<student>' || chr(13) || '' || chr(10) || '<name>Jake</name> ' || chr(13) || '' || chr(10) || '</student>' || chr(13) || '' || chr(10) || '</roster>', 2384, 301);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���ϣ��ִ��ĳ����ʱ���ò�����ִ�У�����ִ����һ����������ô����ʹ��ʲô��ʽ����ɣ�ѡһ�', 'before������', 'after������', 'instead of������', 'undo������', 2385, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Ҫ����û�ִ�е�create,drop,��alter��ddl��䣬Ӧ����(  )����������ѡһ�', '�м�', '��伶', 'ģʽ', '���ݿ�', 2386, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '����ͼ�����������������(   )�׶Ρ�' || chr(13) || '', '��������Ͳ���' || chr(13) || '', '���' || chr(13) || '', '����' || chr(13) || '', '����' || chr(13) || '', 2387, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������ķ���������У����У� ����������֮��Ĺ�ϵ��', '����', '����', '����', '��̬', 2388, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values (null, '���������ķ���������У����й��ڹؼ������˵�����������(  )��' || chr(13) || '', '�ؼ�����ǿ����ϵͳ����йص�ʵ��' || chr(13) || '', '�ؼ�����ĳ�����Խ��Խ��' || chr(13) || '', '�ؼ������ų�ϵͳ�ⲿ���ڵ�ʵ��' || chr(13) || '', '�ؼ����󽫳�Ϊ����ģ���е���' || chr(13) || '', 2389, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '( )��ǩ���cookie��header��name��parameter�� property����֮һָ���ı����Ƿ���Ӧ�õķ�Χ�ڣ�ѡһ�', 'messagePresent', 'messageNotPresent', 'present', 'notPresent', 2390, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���������������ActionServlet�Ĵ��룬����˵���Ǵ���ģ�ѡһ�' || chr(10) || '<servlet>' || chr(10) || '    <servlet-name>action</servlet-name>' || chr(10) || '    <servlet-class>org.apache.struts.action.ActionServlet</servlet-class>' || chr(10) || '    <init-param>' || chr(10) || '       <param-name>config</param-name>' || chr(10) || '       <param-value>/WEB-INF/myconfig.xml</param-value>' || chr(10) || '    </init-param>' || chr(10) || '     <load-on-startup>2</load-on-startup>' || chr(10) || '</servlet>' || chr(10) || '' || chr(10) || '<!-- Standard Action Servlet Mapping -->' || chr(10) || '<servlet-mapping>' || chr(10) || '    <servlet-name>action</servlet-name>' || chr(10) || '    <url-pattern>*.do<', 'Servlet����������StrutsӦ��ʱ�����ʼ�����ActionServlet��', '��������URL���ԡ�.do����β��HTTP���󣬶���ActionServlet����', '��δ���λ��struts-config.xml�С�', '��δ���λ��web.xml�С�', 2391, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����˵�����¼��ķ�����������(ѡ��һ��)' || chr(10) || '' || chr(10) || '', 'ʹ��onOptionsItemSelected(MenuItem item)��Ӧ', 'ʹ��onMenuItemSelected(int featureId ,MenuItem item)��Ӧ', 'ʹ��onMenuItemClick(MenuItem item)��Ӧ', 'ʹ�� onCreateOptionsMenu(Menu menu)��Ӧ ', 2392, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʹ�� AIDL ���Զ�� service ������������˵������ȷ���ǣ�(ѡ��һ��)' || chr(10) || '' || chr(10) || '', 'aidl ��Ӧ�Ľӿ����Ʋ����� aidl �ļ�����ͬ', 'aidl ���ļ����������� java ����', '����һ�� Service�����񣩣��ڷ���� onBind(Intent intent)�����з���ʵ���� aidl �ӿڵĶ���', ' aidl ��Ӧ�Ľӿڵķ���ǰ�治�ܼӷ���Ȩ�����η�', 2393, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '"android ���ļ�����ģʽ�б�ʾֻ�ܱ���Ӧ��ʹ�ã� д���ļ��Ḳ �ǵ��ǣ�"(ѡ��һ��)' || chr(10) || '' || chr(10) || '', 'MODE_APPEND', 'MODE_WORLD_READABLE', 'MODE_WORLD_WRITEABLE', 'MODE_PRIVATE ', 2394, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���������ĸ����������ý�������С��ʽ�ģ�' || chr(10) || '' || chr(10) || '', 'android:secondaryProgress', 'android:progress', 'android:max', 'style', 2395, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����������ʾһϵ��ͼ����ǣ�(ѡ��һ��)' || chr(10) || '' || chr(10) || '', 'ImageView', 'Gallery ', ' ImageSwitcher', 'GridView', 2396, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����˵��������ǣ�(ѡ��һ��)' || chr(10) || '' || chr(10) || '', ' Button ����ͨ��ť����������⻹�������İ�ť���', 'TextView ����ʾ�ı��������TextView �� EditText �ĸ���', 'EditText �Ǳ༭�ı������������ʹ�� EditText �����ض����ַ�', 'ImageView ����ʾͼƬ�����������ͨ��������ʾ�ֲ�ͼƬ ', 2397, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���й������ʹ�� Notification������ȷ���ǣ�' || chr(10) || '(ѡ��һ��)' || chr(10) || '', 'notification ��ҪNotificatinManager ������', 'ʹ�� NotificationManager �� notify ������ʾ notification ��Ϣ', '����ʾ Notification ʱ��������֪ͨʱ��Ĭ�Ϸ������𶯵�', 'Notification �д��ڿ��������Ϣ�ķ���', 2398, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'Android��Ŀ���������assetsĿ¼��������ʲô��(ѡ��һ��)' || chr(10) || '' || chr(10) || '', '��Ҫ���ö�ý��������ļ�', '�����ַ�������ɫ������ȳ�������', '����һЩ��UI��Ӧ�Ĳ����ļ�������xml�ļ�', '��תӦ�ó�����ʹ�õ�ͼƬ��Դ', 2399, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Java�Ǵӣ������ԸĽ��������(ѡ��һ��)' || chr(10) || '' || chr(10) || '', 'Ada', 'C++', 'Pascal', 'BASIC', 2400, 401);
commit;
prompt 2400 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���������һ����ȷ()' || chr(10) || '(ѡ��һ��)' || chr(10) || '', 'Java���򾭱��������machine code', 'Java���򾭱��������byte code', 'Java���򾭱��������DLL', '���϶�����ȷ', 2401, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����˵����ȷ���У���' || chr(10) || '(ѡ��һ��)', 'class�е�constructor����ʡ��', 'constructor������classͬ����������������classͬ��', 'constructor��һ������newʱִ�� ', 'һ��classֻ�ܶ���һ��constructor', 2402, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����������Ϸ����ǣ���(ѡ��һ��)' || chr(10) || '' || chr(10) || '', '&& ', '<>', ' if', ':=', 2403, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '"ִ�����³������ a=0;c=0; do{ --c; a=a-1; }while(a>0); ��C��ֵ�ǣ���"(ѡ��һ��)' || chr(10) || '' || chr(10) || '', '0', '1', '-1', '��ѭ��', 2404, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���������ȷ���ǣ���' || chr(10) || '(ѡ��һ��)' || chr(10) || '', '��ʽ�����ɱ���Ϊlocal variable', '��ʽ�����ɱ��ֶ����η�����', '��ʽ����Ϊ����������ʱ�����������ݵĲ���', '��ʽ�����������Ƕ���', 2405, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ո�����һ���µ�վ�㣬Ϊ��������������¼����õ�������(��ѡ��', '�ѱ����ø���������', '  ����ظ�������Ȩ����վ�����ӵ���վ', '��ڿ͹�������ķ�����޹ص�����', '��һЩflash������վ����ҳ��', 2406, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������վ��İ棬��õ�������(��ѡ��', '���������URL  ', ' ���ı������URL�����·ḻ�������', '��Ҫ�ٴ��ύ����������   ', '������Ʒ����ͷ����', 2407, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'PageRank�ǣ�           ����˾��ר���㷨(��ѡ��', '�ٶ� ', '�Ż�', '�ȸ� ', '��������', 2408, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��лҪ��һ������SEO��ѵ����վ��ѡ�����Ͼ�������SEO��ѵ��������ѧϰ��Ҫ���ˣ��������л��Ӧ��ѡ���ĸ��ؼ��ʽ����ƹ�(��ѡ��', ' �Ͼ�SEO', 'SEO��ѵ��վ', '�Ͼ�SEOѧϰ', '�Ͼ�SEO��ѵ', 2409, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��лҪ���䲩��վ����иİ棬Ϊ�˱��ֺ��������������һ�����ܸı����(��ѡ��', '�����URL  ', 'keyword��ǩ', 'description����', 'ҳ���ϵ�����', 2410, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����������ͬ���͵���վ��(��ѡ��', '����', '�ſ�', 'è��', '�ϼ�', 2411, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������վ����վ����̳����(��ѡ��', '5173', 'A5 ', '163', 'PLU', 2412, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���˲���ÿ���д����ƪ��־(��ѡ��', '5', '10', '20', '����20', 2413, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��������в��������������͵���(��ѡ��', 'Dreamweaver', 'Flash', 'Firework', 'Access', 2414, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������չ���в�����ͼƬ��ʽ����(��ѡ��', 'jpg', 'swf ', 'gif', 'jpeg', 2415, 406);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AC', '�ڿ���������һ����Ҫ�����Ӧ���Ե�___________��___________��(ѡ������)', 'setter����', 'as����', 'getter����', 'is����', 2416, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��������Ҫ��___________�����ļ��н������á�(ѡ��һ��)', 'web.xml', 'struts.xml', 'struts2.xml', 'webwork.xml', 2417, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������Struts 2����ǩ�����___________(ѡ��һ��)', '<s: textfield >', '<s: textarea >', '<s: submit >', '<select>', 2418, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Դ�ļ��ĺ�׺��Ϊ___________��(ѡ��һ��)', 'txt', 'doc', 'property', 'Properties', 2419, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���¹���struts�������У�����ȷ���ǣ���(ѡ��һ��)', 'struts ��һ������JAVA EE��MVC', 'struts2�Ŀ�������ļ���struts-config.xml', 'struts2�Ŀ����齨���İ������Ŀ��ƺ�ҵ�������', '��struts�н�������������ͨ���޸�struts��I18n��encoding��ֵΪGBK��ʵ��', 2420, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '������Struts2�Ķ�����ĳ�������ֵ����()(ѡ��һ��)', 'success', 'input', 'never', 'login', 2421, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���²�����Struts2����ִ�еĽ�������ǣ���(ѡ��һ��)', 'action', 'redirect', 'redirectAction', 'dispatcher', 2422, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���濪���У���ʹ��struts2ʱ����Actionʹ�����ַ�ʽ������(ѡ��һ��)', 'ֱ�Ӷ���Action�ࡣ', '��ActionSupport�̳С�', '��Action�̳С�', 'ʵ��Action�ӿڡ�', 2423, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����EPC�����Ŀ���ǣ� ����ѡһ�', '��Ӳ���豸���й���', '��������������Ψһ��ʶ', '�����ݽ���Ψһ��ʶ', 'һ���ź�Э��', 2424, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����ί�еĹؼ����ǣ� ����ѡһ�', 'extern', 'DllImport', 'delegate', 'Event', 2425, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ACD', '��������������Ҫ�����ǣ�����ѡ���', 'ȫ���֪', '��������', '�ɿ�����', '���ܴ���', 2426, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���У� ��������RFIDϵͳ����ɲ��֣�ѡһ�', '�Ķ���', '����', '��ǩ', '������', 2427, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���У� ����������ݲ���Ҫ����Ҳ�����޸ģ�ѡһ�', '������', 'EPC��', 'TID��', '�û���', 2428, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���У� ���Ǳ���Command�����Ǵ洢���̵����ͣ�ѡһ�', 'CommandType.Text', 'CommandType.TableDirect', 'CommandType.StoredProcedure', 'CommandType.Parameters', 2429, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���У� ���ֹ���Ƶ�ʲ��ǲ��õĵ����ϣ�ѡһ�', '125kHz', '225kHz', '13.56MHz', '443MHz', 2430, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '���й��ڵ��ӱ�ǩ�ı�����������ȷ���ǣ� ����ѡ���', '�������ķ��ʱ�־��0x02', '�������ĵ�ַ��Χ��0-8', '�������ĵ�ַ0-1�洢����8λ16���Ƶ��������', '�������ĵ�ַ2-3�洢����8λ16���Ƶķ�������', 2431, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������������Ȳ��ܶ�ȡҲ�����޸ĵ��ǣ� ����ѡһ�', '������', 'EPC��', 'TID��', '�û���', 2432, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���棨 ����׼��Э�鱻��Ϊ��׼���ڣ�ѡһ�', 'RS-458', 'RS-422', 'RJ45', 'RS-232', 2433, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���棨 ����������������ϵͳ�ܹ���ѡһ�', '���ݲ�', 'Ӧ�ò�', '��֪��', '�����', 2434, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�������������EPCSDK.dll�еĴ򿪺͹رմ��ڵĺ�������ָ����������� ��������ѡһ�' || chr(10) || '--[DllImport(��EPCSDK.dll��)]' || chr(10) || '--public static extern IntPtr OpenComm(int portNo);' || chr(10) || '--[DllImport(��EPCSDK.dll��)]' || chr(10) || '--public static extern void CloseComm();', '1', '2', '3', '4', 2435, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��������ж�ȡ���ǣ� ���������ݣ�ѡһ�' || chr(10) || 'byte[] data=new byte[2];' || chr(10) || 'if(EPCSDKHelper.ReadTag(_handle,0x03,0x00,1,data,0))' || chr(10) || '{' || chr(10) || '' || chr(9) || 'String str=Encoding.Default.GetString(data);' || chr(10) || '' || chr(9) || 'MessageBox.Show(str);' || chr(10) || '} ', '������', 'EPC��', 'TID��', '�û���', 2436, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�������Demo�������������������ǣ� ����ѡһ�', 'Demo����������ڵ���RFID��д��', '���Խ���Demo��������ö�д���Ĳ���', 'Demo���������������ǩ״��', 'Demo����ǿ���RFIDϵͳӦ�ñر��Ĺ���', 2437, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������ڶ��̵߳�����������ǣ� ����ѡһ�', '�߳��ǽ����е�һ��ִ�е�Ԫ���ǲ���ϵͳ����CPUʱ��Ļ�����Ԫ��', 'IsAlive���Ի�õ�ǰ�̵߳�ִ��״̬', '�½�һ���̱߳���Ҫ��ʵ����һ��Thread����', 'Thread����Ĺ��췽������Ҫʹ��ThreadStartί��', 2438, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��Oracle�У���������䶨����һ�����̣�' || chr(10) || 'CREATE PROCEDURE proc(value1 IN VARCHAR2,value2 OUT NUMBER,value3 IN OUT VARCHAR2)' || chr(10) || 'IS' || chr(10) || 'BEGIN' || chr(10) || '����' || chr(10) || 'END;' || chr(10) || '�ٶ�ʹ�õı������Ѷ��壬����Թ���proc�ĵ����﷨��ȷ���ǣ�ѡһ�', 'proc(''tt'',10,v3)', 'proc(''tt'',v2,v3)', 'proc(v1,v2,v3)', 'proc(''tt'',10,''dd'')', 2439, 302);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('undefined', 'OOAD����������������ƣ������������Ŀ�����ȱ������Ĺ����������й�OOAD˵���У���ȷ���ǣ� ����', '��OOA�У����ݶ�Ӧ����ʵ���������ģ�ͻ�����', 'OOA������OOD��ϸ��', 'OOD�׶β����ǰ������Э��������֯�������', 'OOD�׶λ���Ҫ������ݿ⣬��Ӧ�ù淶������', 2440, 303);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��ʹ��struts��ܹ���Ӧ��ϵͳʱ������һ����UserBean��������userName�����Լ�' || chr(10) || '��Ӧ��setter��getter���������⽨��һ��Action�࣬����execute����������Ƭ�Σ�' || chr(10) || '//======================' || chr(10) || 'UserBean user=new UserBean();' || chr(10) || 'user.setUserName("rose");' || chr(10) || 'request.setAttribute("user",user);' || chr(10) || 'return (actionMapping.findForward("success"));' || chr(10) || '//=======================' || chr(10) || '����success��Ӧ��jspҳ��Ϊsuccess.jsp����Ҫʹsuccess.jsp�ܹ����user�����е�����ֵ�����´���Ƭ����ȷ���ǣ�ѡ��һ�', '<logic:equal name="user">' || chr(13) || '' || chr(10) || '  ' || chr(9) || '  <bean:write name="user" property="userName"/>' || chr(13) || '' || chr(10) || '</logic:equal>', '<logic:equal name="user">' || chr(13) || '' || chr(10) || '    <bean:message name="user" property="userName"/>' || chr(13) || '' || chr(10) || '</logic:equal>', '<logic:notEmpty name="user">' || chr(13) || '' || chr(10) || '    <bean:write name="user" property="userName"/>' || chr(13) || '' || chr(10) || '</logic:notEmpty>', '<logic:notEmpty name="user">' || chr(13) || '' || chr(10) || '   <bean:message name="user" property="userName"/>' || chr(13) || '' || chr(10) || ' </logic:notEmpty>', 2441, 314);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '����ĳ���ִ�к�û�б����������ܱ��治�����ݿ⣬����ܵ�ԭ���ǣ�ѡһ�' || chr(10) || 'public static void imain(String[] args){' || chr(10) || '    SessionFactory sf=new Configration().configure().buildSessionFactory();' || chr(10) || '    Session session=sf.openSession();' || chr(10) || '    Medal medal = new Medal();' || chr(10) || '    medal.setOwner("totong");' || chr(10) || '    medal.setType("Gold medal");' || chr(10) || '    session.save(user);' || chr(10) || '    session.close();' || chr(10) || '}', '�����ļ���������', 'û���������ļ��а�����ӳ���ļ�������', 'û�жԳ־û�������׽�쳣', 'û�п�������', 2442, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�����ĸ�Hibernate�������ɲ�����ʵ����������ֵ˳������ģ�ѡһ�', 'increment', 'identity', 'sequence', 'native', 2443, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ʹ����Hibernate��ϵͳ�У�Ҫ����ɾ��ĳ���ͻ����ݵ�ͬʱɾ���ÿͻ���Ӧ�����ж������ݣ����淽�����е��ǣ�ѡһ�', '���ÿͻ��Ͷ���������cascade����Ϊsave-update' || chr(13) || '', '���ÿͻ��Ͷ���������cascade����Ϊall' || chr(13) || '', '���ö��һ������inverse����Ϊtrue' || chr(13) || '', '���ö��һ������inverse����Ϊfalse' || chr(13) || '', 2444, 315);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���¹���BeanFactory˵����ȷ���ǣ�ѡһ�', 'BeanFactory��һ���ӿ�', 'BeanFactory��һ��������', 'BeanFactory��һ����ʵ�ֵ���', 'ApplicationContext����BeanFactory��ʵ��', 2445, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��������˵������ȷ�ģ���(ѡ��һ��)' || chr(10) || '' || chr(10) || '', 'ʵ��������ֱ�ӵ��ó����ʵ������', 'ʵ��������ֱ�ӵ��ó�����෽��', 'ʵ��������ֱ�ӵ����������ʵ������', 'ʵ��������ֱ�ӵ��ñ�����෽�� ', 2446, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', 'Java����������У���' || chr(10) || '(ѡ������)' || chr(10) || '', 'Servlet ', 'Applet ', 'Application', '�ࣨClass��', 2447, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����res/rawĿ¼˵����ȷ���ǣ�(ѡ��һ��)' || chr(10) || '' || chr(10) || '', '������ļ���ԭ�ⲻ���Ĵ洢���豸�ϻ�ת��Ϊ�����Ƶĸ�ʽ', '������ļ������Զ����Ƶĸ�ʽ�洢��ָ���İ���', '������ļ���ԭ�ⲻ���Ĵ洢���豸�ϲ���ת��Ϊ�����Ƶĸ�ʽ', '������ļ����ղ����Զ����Ƶĸ�ʽ�洢��ָ���İ���', 2448, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '����˵����ȷ���У���' || chr(10) || '(ѡ������)' || chr(10) || '', 'javac.exe ��ָ��������Ҫ�����ĸ�Ŀ¼��directory��', '�ڱ������ʱ������ָ���Ļ�������������class path ', 'javac һ�ο�ͬʱ��������java Դ�ļ�', '�����������ڱ���source codeʱָ��', 2449, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '���б�ʶ�����Ϸ����У���(ѡ������)', '$Usdollars', 'new ', '1234', 'car.taxi', 2450, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '����˵��������У���(ѡ������)', 'int number=[]={31,23,33,43,35,63} ', '����Ĵ�С��������ı� ', '������һ�ֶ���', '��������һ��ԭ���� ', 2451, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABC', '������������interface ���У���(ѡ������)', ' protected', 'private', 'static', ' public', 2452, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '����˵��������У���(ѡ������)', 'Java�����еķ����ض�������ĳһ�ࣨ���󣩣����÷�������̻�����ͬ', 'Java������������������Ĺ��̺ͺ�������', 'Java������������������ķ�������', 'Java�����еķ���������ĳ�Ա��member��', 2453, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '����˵��������У���(ѡ������)', 'J2SDK����Java API ', 'Appletviewer.exe������jar ѡ������.jar �ļ� ', '�ܱ�java.exe �ɹ����е�java.class �ļ�������main()����', '�ܱ�Appletviewer�ɹ����е�java.class �ļ�������main()���� ', 2454, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�� Activity ������ʱ����α�����ԭ����״̬����(ѡ��һ��)', 'ʵ�� Activity �� onSaveInstanceState��������', 'ʵ�� Activity �� onSaveInstance��������', 'ʵ�� Activity �� onInstanceState��������', 'ʵ�� Activity �� onSaveState��������', 2455, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���� Intent ����˵��������ǣ���(ѡ��һ��)', ' �� android �У�Intent����������������Ϣ��', ' Intent ������԰�ֵ���ݸ��㲥�� Activity', '���� Intent ��ֵʱ�����Դ���һ����ֵ����', '���� Intent ��ֵʱ������ key ֵ�����Ƕ���', 2456, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '�� android �У�ArrayAdapter �������ڣ���(ѡ��һ��)', '���ڰ����ݰ󶨵������', '���ܰ�������ʾ�� Activity ��', '���ܰ����ݴ��ݸ��㲥', '���ܰ����ݴ��ݸ�����', 2457, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʹ������������ϵͳ��ʽ�ǣ���(ѡ��һ��)', 'android:style/Widget.ProgressBar.Horizontal', 'android:style/ProgressBar.Horizontal', 'style/Widget.ProgressBar.Horizontal', 'style/ProgressBar.Horizontal', 2458, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'struts�ṩ��Action�ӿڶ�����5����׼�ַ������������������У���(ѡ��һ��)', 'SUCCESS', 'NONE', 'REG', 'LOGIN', 2459, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����������ĸ�����Struts2�����ƣ�ѡ��һ�', '������ʽ���', '����ʽ���', '�ṩ��������', '�ṩ������ת����', 2460, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���в�����MVC���ģʽ���ǣ�ѡ��һ�', 'ģ�Ͳ�', '���Ʋ�', '���ݲ�', '��ͼ��', 2461, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', 'Struts2��ܵĺ�������ǣ���ѡ��һ�', 'xwork-core-.jar', 'ognl-.jar', 'freemarker-.jar', 'struts2-core-.jar', 2462, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'StrutsPrepareAndExecuteFilter������Ӧ�����ĸ��ļ��в���ѡ��һ�', 'validators.xml', 'struts.xml', 'web.xml', 'index.jsp', 2463, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2����Jar���追�����ĸ�Ŀ¼��ѡ��һ�', 'WEB-INF/lib', 'WEB-INF', 'WebRoot', '����˵��������ȷ', 2464, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������session�д�����Ϊusername�����ԣ�ͨ��OGNL���ʸ����ԣ���ȷ�Ĵ����ǣ�ѡ��һ�', '#username', '#session.username', 'username', '$username', 2465, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���´���˵����ȷ����(ѡ��һ��)' || chr(10) || '<s:iterator id="book" value="#arr.booklist" status="st">' || chr(10) || ' <s:if test="st.odd">' || chr(10) || '  <tr bgcolor="yellow"></tr>' || chr(10) || ' <s:if>' || chr(10) || ' <s:else>' || chr(10) || '  <tr bgcolor="red"></tr>' || chr(10) || ' </s:else>' || chr(10) || '</s:iterator>', '������Ϊ��ɫ', '������Ϊ��ɫ', 'ż����Ϊ��ɫ', 'ż����Ϊ��ɫ', 2466, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���²����ڿ���struts2��ҵ�������Action�ķ������ǣ�ѡ��һ�', 'POJO', 'ʵ��Action�ӿ�', '�̳�ActionSupport��', 'ʵ��Validator�ӿ�', 2467, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Ϊ��ʵ�ֻ���ģ�͵�������Action�������ʵ��ModelDriver�ӿڣ�ͬʱʵ��ModelDriver�ӿ��е�(ѡ��һ��)����', 'getUser', 'getModel', 'execute', 'setUser', 2468, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��Ҫ��Action�з���session����Ϣ��Ҫʵ�֣����ӿڣ�ѡ��һ�', 'RequestAware', 'ApplicationAware', 'ParameterAware', 'SessionAware', 2469, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������struts2�Ŀ���������ǣ�ѡ��һ�', 'Action', 'ActionForm ', 'ActionServlet', 'dispatchAction', 2470, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '��������struts2����ϵ�ṹ���ǣ�ѡ�����', 'struts2���������', 'struts2�����ļ�', 'FilterDispathcer', 'Action', 2471, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '��������struts2�����ļ��е�����Ԫ���ǣ�ѡ�����', '<package>', '<action>', '<form-beans> ', '<action-mappings>', 2472, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����struts1��struts2�Աȵ�˵����ȷ���ǣ�ѡ��һ�', 'struts1Ҫ��Action��̳�struts1����е�Action���࣬struts2����һ����Ҫ�̳У�������POJO��', 'struts1�е�Action�����̰߳�ȫ�ģ���struts2�е�Action���̰߳�ȫ��', 'struts1��struts2�ж�ʹ��ActionForm�����װ�û�����������', 'struts1ʹ��OGNL���ʽ������֧��ҳ��Ч����struts2ͨ��ValueStack����ʹ��ǩ�����ֵ', 2473, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '����������������ļ��ڵ������Ӧ��������ǣ� ����ѡһ�' || chr(10) || 'Configuration cf = ConfigurationManager.OpenExeConfiguration(�������ļ�");' || chr(10) || 'cf.AppSettings.Settings.Add(��color��, ��red��);      //����appSettings�ڵ�' || chr(10) || '____________________;', 'ConfigurationManager.RefreshSection(��appSettings��)', 'cf.Save()', 'return cf', 'cf.AppSettings.Settings["color"].Value = status', 2474, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������δ�����EPCSDK.dll�е���ǩ��ȡ���������ã����пհ״�Ӧ���루 ����ѡһ�' || chr(10) || 'byte[] data = new byte[12];' || chr(10) || 'if (EPCSDKHelper.IdentifySingleTag(hCom, data, null, 0))' || chr(10) || '{' || chr(10) || '    StringBuilder sb = new StringBuilder(__________);' || chr(10) || '    foreach (byte b in data)' || chr(10) || '       sb.Append(Convert.ToString(b, 16', 'data', 'data.length', 'data.Length * 2', 'data.Length * 3', 2475, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '������δ���ִ�к�д�뵽��ǩ��������ǣ� ����ѡһ�' || chr(10) || 'byte[] data = new byte[12];' || chr(10) || 'data = Encoding.Default.GetBytes("0123456789ABCDEF");' || chr(10) || 'if (EPCSDKHelper.FastWriteTagID(_handle, 12, data, 0))' || chr(10) || '{' || chr(10) || '    MessageBox.Show("д��EPC����ɹ�");' || chr(10) || '}' || chr(10) || 'else' || chr(10) || '{' || chr(10) || '    MessageBox.Show("д��EPCʧ��");' || chr(10) || '}', '0123456789ABCDEF', '0123456789AB', '0123456789', '012345', 2476, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����һ�ײ�ͣ���շ�ϵͳ�����RFID�����Գ�������ʶ��Ӧ���ã� ����ǩ��ѡһ�', '��Ƭ���ǩ', '��ǩ���ǩ', 'ע���࿹������ǩ', '��˺��ǩ', 2477, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '�� C#��Ҫ�����ⲿʵ�ֵ�API����ʱ��Ҫ����������ռ��ǣ� ����ѡһ�', 'System.Threading;', 'System.Configuration;', 'System.Collections.Generic;', 'System.Runtime.InteropServices;', 2478, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��C#�н��ֽ����н���Ϊ�ַ����ķ����ǣ� ����ѡһ�', 'Encoding.Default.GetBytes()', 'Encoding.Default.GetEncoder()', 'Encoding.Default.GetString()', 'Encoding.Default.GetByteCount()', 2479, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��C#��Ҫ��ȡ�����ļ�����Ҫ���루 �������ռ䣨ѡһ�', 'System.Threading;', 'System.Configuration;', 'System.Collections.Generic;', 'System.Runtime.InteropServices;', 2480, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��EPCSDK.dll�ṩ�ĺ������ܹ��Ա�ǩ����������ж�ȡ���ǣ� ����ѡһ�', 'IdentifySingleTag', 'ReadFirmwareVersion', 'ReadTag', 'IdentifyUploadedMultiTags', 2481, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��WinForms�Ĵ���̳��и�����ؼ��еģ� �����Կ��Կ����Ƿ���Ա��Ӵ����޸ģ�ѡһ�', 'Modifiers', 'Locked', 'TopMost', 'Enabled', 2482, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��WinForms��Ҫʵ�ִ���Ķ���Ч������Ҫ������ ����̬���API������ѡһ�', 'mpr.dll', 'EPCSDK.dll', 'kernel32.dll', 'user32.dll', 2483, 413);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���緢����һ����ΪASP.NET��Ӧ��ϵͳ������ΪMy_web.com��������IP��ַ��202.163.45.68������ļ��ַ�ʽ��һ���ǿ��Է������ϵͳ�ģ�ѡһ�', '�ڱ�����http://127.0.0.1/aspnet', '�ھ������ڵ������������ http://127.0.0.1/aspnet', '���������ϵ������������ http://127.0.0.1/aspnet', '�ڱ������', 2484, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��Spring����У���������(AOP) ��Ŀ�����ڣ�ѡһ�', '��д����ʱ���ù��������������ʵ��', '���������漰�Ĺ������⼯�н��', '��װ JDBC �������ݿ�Ĵ��룬�����ݷ��ʲ���ظ��Դ���', 'ʵ��ҳ��ġ���ˢ�¡�', 2485, 316);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ASP.NET�����ļ�����չ��Ϊ��ѡһ�', 'aspx', 'ascx', 'Inc', 'Html', 2486, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'response�����(  )����������ҳ�ص�����һ����ַ����ѡһ�', 'transfer', 'link', 'redirect', 'execute', 2487, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '��ASP.NET�У��ı���ؼ�TextBox�����������ģʽ���������С����к���������ģʽ������ͨ�������䣨�����������ֵġ���ѡһ�', 'Style', 'TextMode', 'Type', 'Input', 2488, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'ĳ����ASP.Net������������վӵ�д������������������վ������Ϊ�������ڴ�ռ���ʹ��߶�ͣ������Ϊ����վ�ļ�����Ա������ϸ����˸���վϵͳ�������ڴ�ռ���ʹ�������Ϊÿ���û����д������ݱ�����Session�У�Ϊ�˽������������ý��У�   ��������ѡһ�', '��������Session�е����ݱ�����Application��', '��������Session�е����ݱ�����Cookie��', '��Session�а�ȫ��Ҫ�󲻸ߵ����ݱ�����Cookie�У�������ʹ�õ����ݱ��������ݿ���', '��Session�ж԰�ȫ��Ҫ�󲻸ߵ����ݱ�����Application�У�������ʹ�õ����ݱ��������ݿ���', 2489, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�����ĸ��������ؼ�����WEB�������������֤��ѡһ�', 'Button', 'LinkButton', 'HyperLink', 'ImageButton', 2490, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�������Ϊһ��ASP.NET WebӦ�ó���Global.asax�ļ��еĲ��ִ��룬��ĳ���û���һ�η���Ӧ�ó���ĵ�һ��ҳ��ʱ��ҳ���������ѡһ�' || chr(10) || 'void Session_Start(Object sender,EventArgs e)' || chr(10) || '{    Response.Write("1");  }' || chr(10) || 'void Application_BeginRequest(Object sender,EventArgs e)' || chr(10) || '{    Response.Write("3");  }' || chr(10) || 'void Application_EndRequest(Object sender,EventArgs e)' || chr(10) || '{    Response.Write("4");  }', '34', '341', '314', '1', 2491, 324);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '���ṩ���ݲ�ȫ������ǣ���(ѡ��һ��)', ' EditText', 'DatePicker', 'TimePicker', 'TimePicker', 2492, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('ABD', '�������� Activity ��״̬��()(ѡ������)', '��ͣ״̬', '����״̬', ' ˯��״̬', 'ֹͣ״̬ ', 2493, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���� Handler ��˵����ȷ����(��(ѡ��һ��)', '��ʵ�ֲ�ͬ�̼߳�ͨ�ŵ�һ�ֻ���', '�����������̲߳��� UI ���', '������ջ�ķ�ʽ����֯�����', '����������һ���µ��߳�' || chr(10) || ' ' || chr(10) || '', 2494, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('CD', '���ڹ㲥�����ã���ȷ��˵���ǣ���(ѡ������)', '�����ý���ϵͳ������һЩ��Ϣ��', '�����԰��� service�޸��û�����', '����������һ�� Service ', '����������һ�� Activity', 2495, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '�������� View ��������ǣ���(ѡ������)', 'ViewGroup', 'TextView', 'Activity', 'Service', 2496, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', '�� main.xml �У�����һ�����ʱ�����������Ա���д����(ѡ������)', 'android:text', 'android:layout_height ', 'android:id="@+id/start"', 'android:layout_width ', 2497, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���� Sqlite ���ݿ⣬����ȷ��˵���ǣ���(ѡ��һ��)', 'SqliteOpenHelper����Ҫ�������������ݿ�͸������ݿ�', 'SqliteDatabase ���������������ݿ��', '�� ÿ �� �� �� SqliteDatabase ��getWritableDatabase() �� �� ʱ �� �� ִ �� SqliteOpenHelper ��onCreate ������', '�����ݿ�汾�����仯ʱ�������Զ��������ݿ�ṹ', 2498, 401);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '������Ϣ������������Ϣ��������־�� ����ѡ��', '����������Ϣ ', '���ڹ�����Ϣ', '������ᾭ����Ϣ ', '���ڿռ���Ϣ ', 2499, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��3S������ָ���ǣ���ѡ��', 'GIS��RS��GPS ', 'GIS��DSS��GPS', 'GIS��GPS��OS ', 'GIS��DSS��RS', 2500, 402);
commit;
prompt 2500 records committed...
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʸ���ṹ���ص��ǣ���ѡ��', ' ��λ���ԡ���������', '��λ���ԡ���������', '��λ�������������� ', '��λ��������������', 2501, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������ʵ�屾��λ�á���״�ʹ�С�ȵ�����Ϊ����ѡ��', ' ��������', '�������� ', '��ϵ����', 'ͳ������', 2502, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����ϵ�һ��������Ϣϵͳ�ǣ���ѡ��', '����������Ϣϵͳ ', '���ô������Ϣϵͳ', '�ձ�������Ϣϵͳ ', '�µ���������Ϣϵͳ', 2503, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��GIS�����У��ѷǿռ����ݳ�Ϊ����ѡ��', '��������', '��ϵ����', '��������', 'ͳ������', 2504, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '��������һ����е��������������ǣ���ѡ��', '�ռ�����������������ʱ������', '�ռ�����������������ʱ������', ' ��������������������ʱ������', '�ռ�������������������������', 2505, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'GIS������������Ϣϵͳ��һ��������־�ǣ���ѡ��', '�ռ���� ', '��������', '���Է���', 'ͳ�Ʒ���', 2506, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', 'GIS�����ƹ�Ӧ�ý׶���20���ͣ���ѡ��', '60��� ', '70���', '80���', '90���', 2507, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '���ֵ�����������1998���ɣ���ѡ��', '��������', '���ֶ������', '��ʲ�����', '�����������', 2508, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('D', '��GIS�У���ȷ����ռ�ṹ��ϵ����ѧ������Ϊ����ѡ��', ' �ڽӹ�ϵ', '������ϵ', '������ϵ', '���˹�ϵ', 2509, 402);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '����struts2�����ļ�˵����ȷ���ǣ�ѡ��һ�', '������WEB-INF/classesĿ¼��', '���ֱ���Ϊstruts.xml', '����Actionʱ���������ð���Ϣ', 'ʹ��<forward>Ԫ������ת��', 2510, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BCD', '����struts2����˵����ȷ���ǣ�ѡ�����', 'struts2���ʹ�ð���������', 'struts2��ܶ����ʱ����ָ��name����', 'struts2��������ð�ʱ������̳���struts-default��������ᱨ��', 'struts2�����ʹ�ð�������Action', 2511, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'struts2��̬���õĸ�ʽΪ��ѡ��һ�', 'ActionName?methodName.action', 'ActionName! methodName.action', 'ActionName*methodName.action', 'ActionName@mathodName.action', 2512, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '���Ҫʵ��struts2������У�鹦�ܣ�ѡ��һ�', '��ͨAction�����ʵ��', '�̳���Action�ӿڿ���ʵ��', '�̳���ActionSupport�����ʵ��', '�̳���ActionValidate�����ʵ��', 2513, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '���Ҫʵ���Զ��崦��������̳��Ǹ��ࣨѡ��һ�', 'Dispathcer', 'StrutsResultSupport', 'Support', 'Action', 2514, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'ʵ�ֶ�̬���ؽ����������<result>Ԫ��ʱʹ�ã���ָ����ͼ��Դ��ѡ��һ�', '${������} ', null, '${''������''}', '${"������"}', 2515, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', '����ʵ�ֹ��ʻ���struts2��ǩ�ǣ�ѡ��һ�', '<s:text>', '<s:message>', '<s:textfield> ', '<s:resource>', 2516, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('A', 'struts2Ĭ�ϵĴ����������ǣ�ѡ��һ�', 'dispatcher', 'redirect', 'chain', 'forward', 2517, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�Զ���ת�����̳еĳ������ǣ�ѡ��һ�', 'Converter ', 'TypeConverter', 'StrutsTypeConverter', 'converts', 2518, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '�Զ���ת������ע�᷽ʽ�У�ѡ��һ�', 'ֻ��ȫ��ע�᷽ʽ', 'ֻ�оֲ�ע�᷽ʽ ', 'ֻ��ȫ�ֺ;ֲ�ע�᷽ʽ', '����˵��������', 2519, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AD', '�Զ�����������ķ�ʽ�У�ѡ�����', 'ʵ��Interceptor�ӿ�', 'ʵ��AbstractInterceptor�ӿ�', '�̳�Interceptor��', '�̳�AbstractInterceptor��', 2520, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('C', '��OGNL�У��������������ǣ�ѡ��һ�', 'ȡ������ѡ���߼��ĵ�һ��Ԫ��', 'ȡ������ѡ���߼������һ��Ԫ��', 'ȡ������ѡ���߼�������Ԫ��', '����˵��������', 2521, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('AB', '��������struts2��ǩ���ǣ�ѡ�����', 'Ajax��ǩ', '���ݷ��ʱ�ǩ', 'logic��ǩ', 'bean��ǩ', 2522, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', '�����ĸ���ǩ��struts2�е�����ѭ��������ѡ��һ�', '<s:property> ', '<s:iterator>', '<s:logic>', '<s:foreach>', 2523, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('B', 'Struts2��Ҫ���Ĺ������ɣ�  ��ʵ�֣�ѡ��һ�', ' ������', '������', ' ����ת����', '�����ļ�', 2524, 407);
insert into SUBJECT (resulter, subjecttext, subjecta, subjectb, subjectc, subjectd, subjectid, classid)
values ('BD', 'Struts2����ɣ�  ���ͣ�  ����ܷ�չ�����ģ�ѡ����', 'Hibernate', 'Struts', 'Spring', 'WebWork', 2525, 407);
commit;
prompt 2525 records loaded
set feedback on
set define on
prompt Done.
