.class public Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "music_video"
.end annotation


# instance fields
.field public albumId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "albumId"
    .end annotation
.end field

.field public albumName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "albumName"
    .end annotation
.end field

.field public artistId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "artistId"
    .end annotation
.end field

.field public artistName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "artistName"
    .end annotation
.end field

.field public bucketDisplayName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "bucketDisplayName"
    .end annotation
.end field

.field public bucketId:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "bucketId"
    .end annotation
.end field

.field public data:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "data"
    .end annotation
.end field

.field public dateAdd:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "dateAdd"
    .end annotation
.end field

.field public dateModified:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "dateModified"
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "displayName"
    .end annotation
.end field

.field public duration:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "duration"
    .end annotation
.end field

.field public id:I
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = false
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public mineType:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "mineType"
    .end annotation
.end field

.field public parentPath:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "parentPath"
    .end annotation
.end field

.field public size:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "size"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "title"
    .end annotation
.end field

.field public uri:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "uri"
    .end annotation
.end field

.field public year:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "year"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;JJILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->id:I

    move-object v1, p2

    iput-object v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->parentPath:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->bucketId:J

    move-object v1, p5

    iput-object v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->title:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->displayName:Ljava/lang/String;

    move v1, p7

    iput v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->year:I

    move-object v1, p8

    iput-object v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->mineType:Ljava/lang/String;

    move-wide v1, p9

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->duration:J

    move-object v1, p11

    iput-object v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->data:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->dateAdd:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->dateModified:J

    move/from16 v1, p16

    iput v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->albumId:I

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->albumName:Ljava/lang/String;

    move/from16 v1, p18

    iput v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->artistId:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->artistName:Ljava/lang/String;

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->size:J

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->uri:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->bucketDisplayName:Ljava/lang/String;

    return-void
.end method
