.class public interface abstract Ltuc;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getYoutubeData(Ljava/lang/String;)Lcom/transsion/dbdata/beans/YoutubeData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM youtube_video WHERE id = :id"
    .end annotation
.end method

.method public abstract insertYoutubeData(Lcom/transsion/dbdata/beans/YoutubeData;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
