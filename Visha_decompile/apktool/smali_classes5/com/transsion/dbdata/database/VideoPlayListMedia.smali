.class public Lcom/transsion/dbdata/database/VideoPlayListMedia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "video_media_playList"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3fd11a527ad3c767L


# instance fields
.field public _data:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_data"
        typeAffinity = 0x2
    .end annotation
.end field

.field public id:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "id"
        typeAffinity = 0x3
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public media_id:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "media_id"
        typeAffinity = 0x3
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "name"
        typeAffinity = 0x2
    .end annotation
.end field

.field public play_count:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "play_count"
        typeAffinity = 0x3
    .end annotation
.end field

.field public playlistFlag:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "playlistFlag"
        typeAffinity = 0x3
    .end annotation
.end field

.field public playlist_id:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "playlist_id"
        typeAffinity = 0x3
    .end annotation
.end field

.field public record_time:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "record_time"
        typeAffinity = 0x3
    .end annotation
.end field

.field public sort:I
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
