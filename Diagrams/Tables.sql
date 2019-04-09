/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     4/10/2019 12:24:50 AM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIA') and o.name = 'FK_GIA_GIA_THUCUONG')
alter table GIA
   drop constraint FK_GIA_GIA_THUCUONG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIA') and o.name = 'FK_GIA_GIA2_NGAY')
alter table GIA
   drop constraint FK_GIA_GIA2_NGAY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADON') and o.name = 'FK_HOADON_DATMON_BAN')
alter table HOADON
   drop constraint FK_HOADON_DATMON_BAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADON') and o.name = 'FK_HOADON_NHAP_NHANVIEN')
alter table HOADON
   drop constraint FK_HOADON_NHAP_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADONCHITIET') and o.name = 'FK_HOADONCH_HOADONCHI_THUCUONG')
alter table HOADONCHITIET
   drop constraint FK_HOADONCH_HOADONCHI_THUCUONG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADONCHITIET') and o.name = 'FK_HOADONCH_HOADONCHI_HOADON')
alter table HOADONCHITIET
   drop constraint FK_HOADONCH_HOADONCHI_HOADON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_GIU_CHUCVU')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_GIU_CHUCVU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THUCUONG') and o.name = 'FK_THUCUONG_GIAMGIA_KHUYENMA')
alter table THUCUONG
   drop constraint FK_THUCUONG_GIAMGIA_KHUYENMA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THUCUONG') and o.name = 'FK_THUCUONG_THUOC_LOAISP')
alter table THUCUONG
   drop constraint FK_THUCUONG_THUOC_LOAISP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TIENLUONG') and o.name = 'FK_TIENLUON_LANH_NHANVIEN')
alter table TIENLUONG
   drop constraint FK_TIENLUON_LANH_NHANVIEN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BAN')
            and   type = 'U')
   drop table BAN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHUCVU')
            and   type = 'U')
   drop table CHUCVU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIA')
            and   name  = 'GIA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIA.GIA2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIA')
            and   name  = 'GIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIA.GIA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GIA')
            and   type = 'U')
   drop table GIA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADON')
            and   name  = 'DATMON_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADON.DATMON_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADON')
            and   name  = 'NHAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADON.NHAP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOADON')
            and   type = 'U')
   drop table HOADON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADONCHITIET')
            and   name  = 'HOADONCHITIET2_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADONCHITIET.HOADONCHITIET2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADONCHITIET')
            and   name  = 'HOADONCHITIET_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADONCHITIET.HOADONCHITIET_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOADONCHITIET')
            and   type = 'U')
   drop table HOADONCHITIET
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHUYENMAI')
            and   type = 'U')
   drop table KHUYENMAI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAISP')
            and   type = 'U')
   drop table LOAISP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NGAY')
            and   type = 'U')
   drop table NGAY
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'GIU_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.GIU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHANVIEN')
            and   type = 'U')
   drop table NHANVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THUCUONG')
            and   name  = 'GIAMGIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index THUCUONG.GIAMGIA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THUCUONG')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index THUCUONG.THUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THUCUONG')
            and   type = 'U')
   drop table THUCUONG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TIENLUONG')
            and   name  = 'LANH_FK'
            and   indid > 0
            and   indid < 255)
   drop index TIENLUONG.LANH_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIENLUONG')
            and   type = 'U')
   drop table TIENLUONG
go

/*==============================================================*/
/* Table: BAN                                                   */
/*==============================================================*/
create table BAN (
   MSBAN                nvarchar(10)         not null,
   TENBAN               nvarchar(50)         not null,
   TRANGTHAI            bit                  not null,
   constraint PK_BAN primary key nonclustered (MSBAN)
)
go

/*==============================================================*/
/* Table: CHUCVU                                                */
/*==============================================================*/
create table CHUCVU (
   MSCHUCVU             nvarchar(10)         not null,
   TENCHUCVU            nvarchar(50)         not null,
   MUCLUONG             float                not null,
   constraint PK_CHUCVU primary key nonclustered (MSCHUCVU)
)
go

/*==============================================================*/
/* Table: GIA                                                   */
/*==============================================================*/
create table GIA (
   MSTU                 nvarchar(10)         not null,
   NGAY                 float                not null,
   GIATIEN              float                null,
   constraint PK_GIA primary key (MSTU, NGAY)
)
go

/*==============================================================*/
/* Index: GIA_FK                                                */
/*==============================================================*/
create index GIA_FK on GIA (
MSTU ASC
)
go

/*==============================================================*/
/* Index: GIA2_FK                                               */
/*==============================================================*/
create index GIA2_FK on GIA (
NGAY ASC
)
go

/*==============================================================*/
/* Table: HOADON                                                */
/*==============================================================*/
create table HOADON (
   MSHD                 nvarchar(10)         not null,
   MSBAN                nvarchar(10)         not null,
   MSNV                 nvarchar(10)         null,
   THOIGIANVAO          datetime             not null,
   THOIGIANRA           datetime             null,
   constraint PK_HOADON primary key nonclustered (MSHD)
)
go

/*==============================================================*/
/* Index: NHAP_FK                                               */
/*==============================================================*/
create index NHAP_FK on HOADON (
MSNV ASC
)
go

/*==============================================================*/
/* Index: DATMON_FK                                             */
/*==============================================================*/
create index DATMON_FK on HOADON (
MSBAN ASC
)
go

/*==============================================================*/
/* Table: HOADONCHITIET                                         */
/*==============================================================*/
create table HOADONCHITIET (
   MAHDCT               nvarchar(10)         not null,
   MSTU                 nvarchar(10)         not null,
   MSHD                 nvarchar(10)         not null,
   SOLUONG              int                  null,
   constraint PK_HOADONCHITIET primary key (MAHDCT)
)
go

/*==============================================================*/
/* Index: HOADONCHITIET_FK                                      */
/*==============================================================*/
create index HOADONCHITIET_FK on HOADONCHITIET (
MSTU ASC
)
go

/*==============================================================*/
/* Index: HOADONCHITIET2_FK                                     */
/*==============================================================*/
create index HOADONCHITIET2_FK on HOADONCHITIET (
MSHD ASC
)
go

/*==============================================================*/
/* Table: KHUYENMAI                                             */
/*==============================================================*/
create table KHUYENMAI (
   MSKM                 nvarchar(10)         not null,
   TENKM                nvarchar(100)        null,
   GIATRI               float                null,
   MOTA                 text                 null,
   constraint PK_KHUYENMAI primary key nonclustered (MSKM)
)
go

/*==============================================================*/
/* Table: LOAISP                                                */
/*==============================================================*/
create table LOAISP (
   MSLOAI               nvarchar(10)         not null,
   TENLOAI              nvarchar(50)         not null,
   constraint PK_LOAISP primary key nonclustered (MSLOAI)
)
go

/*==============================================================*/
/* Table: NGAY                                                  */
/*==============================================================*/
create table NGAY (
   NGAY                 float                not null,
   constraint PK_NGAY primary key nonclustered (NGAY)
)
go

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN (
   MSNV                 nvarchar(10)         not null,
   MSCHUCVU             nvarchar(10)         not null,
   HOTENNV              nvarchar(50)         not null,
   DIACHI               nvarchar(100)        not null,
   NGAYSINH             datetime             not null,
   GIOITINH             bit                  not null,
   SDT                  nvarchar(11)         not null,
   constraint PK_NHANVIEN primary key nonclustered (MSNV)
)
go

/*==============================================================*/
/* Index: GIU_FK                                                */
/*==============================================================*/
create index GIU_FK on NHANVIEN (
MSCHUCVU ASC
)
go

/*==============================================================*/
/* Table: THUCUONG                                              */
/*==============================================================*/
create table THUCUONG (
   MSTU                 nvarchar(10)         not null,
   MSKM                 nvarchar(10)         null,
   MSLOAI               nvarchar(10)         not null,
   TENTU                nvarchar(50)         not null,
   constraint PK_THUCUONG primary key nonclustered (MSTU)
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on THUCUONG (
MSLOAI ASC
)
go

/*==============================================================*/
/* Index: GIAMGIA_FK                                            */
/*==============================================================*/
create index GIAMGIA_FK on THUCUONG (
MSKM ASC
)
go

/*==============================================================*/
/* Table: TIENLUONG                                             */
/*==============================================================*/
create table TIENLUONG (
   MSNV                 nvarchar(10)         not null,
   THANG                datetime             not null,
   NGAYCONG             int                  null,
   TONGLUONG            float                null,
   constraint PK_TIENLUONG primary key nonclustered (THANG, MSNV)
)
go

/*==============================================================*/
/* Index: LANH_FK                                               */
/*==============================================================*/
create index LANH_FK on TIENLUONG (
MSNV ASC
)
go

alter table GIA
   add constraint FK_GIA_GIA_THUCUONG foreign key (MSTU)
      references THUCUONG (MSTU)
go

alter table GIA
   add constraint FK_GIA_GIA2_NGAY foreign key (NGAY)
      references NGAY (NGAY)
go

alter table HOADON
   add constraint FK_HOADON_DATMON_BAN foreign key (MSBAN)
      references BAN (MSBAN)
go

alter table HOADON
   add constraint FK_HOADON_NHAP_NHANVIEN foreign key (MSNV)
      references NHANVIEN (MSNV)
go

alter table HOADONCHITIET
   add constraint FK_HOADONCH_HOADONCHI_THUCUONG foreign key (MSTU)
      references THUCUONG (MSTU)
go

alter table HOADONCHITIET
   add constraint FK_HOADONCH_HOADONCHI_HOADON foreign key (MSHD)
      references HOADON (MSHD)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_GIU_CHUCVU foreign key (MSCHUCVU)
      references CHUCVU (MSCHUCVU)
go

alter table THUCUONG
   add constraint FK_THUCUONG_GIAMGIA_KHUYENMA foreign key (MSKM)
      references KHUYENMAI (MSKM)
go

alter table THUCUONG
   add constraint FK_THUCUONG_THUOC_LOAISP foreign key (MSLOAI)
      references LOAISP (MSLOAI)
go

alter table TIENLUONG
   add constraint FK_TIENLUON_LANH_NHANVIEN foreign key (MSNV)
      references NHANVIEN (MSNV)
go

