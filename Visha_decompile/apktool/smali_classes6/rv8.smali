.class public abstract Lrv8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILjava/lang/String;Ljava/lang/String;IIIJ)Lcom/transsion/dbdata/database/PlayListMedia;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/database/PlayListMedia;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/PlayListMedia;-><init>()V

    iput-object p1, v0, Lcom/transsion/dbdata/database/PlayListMedia;->name:Ljava/lang/String;

    iput-wide p6, v0, Lcom/transsion/dbdata/database/PlayListMedia;->record_time:J

    iput p3, v0, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    iput p4, v0, Lcom/transsion/dbdata/database/PlayListMedia;->playlistFlag:I

    iput-object p2, v0, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    iput p5, v0, Lcom/transsion/dbdata/database/PlayListMedia;->play_count:I

    iput p0, v0, Lcom/transsion/dbdata/database/PlayListMedia;->playlist_id:I

    return-object v0
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/dbdata/database/PlayListMedia;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/database/PlayListMedia;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/PlayListMedia;-><init>()V

    iput-object p1, v0, Lcom/transsion/dbdata/database/PlayListMedia;->name:Ljava/lang/String;

    iput-wide p4, v0, Lcom/transsion/dbdata/database/PlayListMedia;->record_time:J

    iput p3, v0, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    const/4 p1, 0x0

    iput p1, v0, Lcom/transsion/dbdata/database/PlayListMedia;->playlistFlag:I

    iput-object p2, v0, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    iput p1, v0, Lcom/transsion/dbdata/database/PlayListMedia;->play_count:I

    iput p0, v0, Lcom/transsion/dbdata/database/PlayListMedia;->playlist_id:I

    return-object v0
.end method

.method public static c(Ljava/lang/String;IIIJ)Lcom/transsion/dbdata/database/PlayListMedia;
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/database/PlayListMedia;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/PlayListMedia;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/transsion/dbdata/database/PlayListMedia;->name:Ljava/lang/String;

    iput-wide p4, v0, Lcom/transsion/dbdata/database/PlayListMedia;->record_time:J

    iput p1, v0, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    iput p2, v0, Lcom/transsion/dbdata/database/PlayListMedia;->playlistFlag:I

    iput-object p0, v0, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    iput p3, v0, Lcom/transsion/dbdata/database/PlayListMedia;->play_count:I

    const/4 p0, 0x0

    iput p0, v0, Lcom/transsion/dbdata/database/PlayListMedia;->playlist_id:I

    return-object v0
.end method

.method public static d(ILjava/lang/String;IJ)Lcom/transsion/dbdata/database/VideoPlayListMedia;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/VideoPlayListMedia;-><init>()V

    iput-wide p3, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->record_time:J

    iput p2, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->media_id:I

    iput p0, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->playlistFlag:I

    iput-object p1, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->_data:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->play_count:I

    iput p0, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->playlist_id:I

    return-object v0
.end method

.method public static e(ILjava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/dbdata/database/VideoPlayListMedia;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/VideoPlayListMedia;-><init>()V

    iput-object p1, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->name:Ljava/lang/String;

    iput-wide p4, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->record_time:J

    iput p3, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->media_id:I

    const/4 p1, 0x0

    iput p1, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->playlistFlag:I

    iput-object p2, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->_data:Ljava/lang/String;

    iput p1, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->play_count:I

    iput p0, v0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->playlist_id:I

    return-object v0
.end method
