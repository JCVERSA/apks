.class public abstract Lpx9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;)Z
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->SEEDING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->FINISHED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;)Z
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->PAUSED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->STOPPED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
