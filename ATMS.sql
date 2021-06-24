create table BANKS  (
    idbank      char(3)     primary key ,
    namebank    varchar(50)
);

create table CARDS  (
    idcard      char(9)                 ,
    idaccount   char(9)                 ,
    startday    date                    ,
    endday      date                    ,
    idbank      char(3)                 ,
    typecard    varchar(10)             ,
    pin         char(6)                 ,
    primary key (idaccount)             ,
    foreign key (idbank) references BANKS (idbank)
);

create table USERS (
    ids         char(7)     primary key ,
    id          char(9)                 ,
    fullname    varchar(50)             ,
    birthday    date                    ,
    gender      int                     , --0: Nam, 1: Nữ
    nativeplace varchar(100)            ,
    telephone   char(10)                ,
    password    varchar(50)             ,
    account     char(9)                 ,
    balance     bigint                  ,
    role        int                     ,
    idbank      char(3)                 ,
    foreign key (account) references CARDS (idaccount) ,
    foreign key (idbank) references BANKS (idbank)
);

insert into BANKS
values ('SCB', 'Sacombank');
insert into BANKS
values ('BID', 'BIDV');
insert into BANKS
values ('TCB', 'Techcombank');
insert into BANKS
values ('ARB', 'Agribank');

SELECT * FROM BANKS;
SELECT * FROM USERS;
SELECT * FROM CARDS;





