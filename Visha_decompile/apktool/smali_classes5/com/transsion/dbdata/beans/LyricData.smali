.class public Lcom/transsion/dbdata/beans/LyricData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "lyric_data"
.end annotation


# instance fields
.field public _data:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_data"
        typeAffinity = 0x2
    .end annotation
.end field

.field public media_id:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "media_id"
        typeAffinity = 0x3
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field public offset:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "delay"
        typeAffinity = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
