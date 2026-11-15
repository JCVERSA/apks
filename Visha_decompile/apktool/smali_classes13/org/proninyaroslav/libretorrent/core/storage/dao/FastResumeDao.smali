.class public interface abstract Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract add(Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract getByTorrentId(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM FastResume WHERE torrentId = :torrentId"
    .end annotation
.end method
