.class public interface abstract Lav5;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract insert(Lcom/transsion/dbdata/beans/LyricData;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract queryLyricData(I)Lcom/transsion/dbdata/beans/LyricData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM lyric_data WHERE media_id = :media_id"
    .end annotation
.end method
