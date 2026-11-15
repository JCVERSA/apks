.class Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$3;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lt14;

.field public final synthetic c:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;


# virtual methods
.method public onTorrentMetadataLoaded(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$3;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$3;->b:Lt14;

    invoke-interface {p1}, Lt14;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$3;->c:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$3;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->X(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$3;->b:Lt14;

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {p0, p1}, Lk93;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$3;->b:Lt14;

    invoke-interface {p0, p1}, Lk93;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$3;->b:Lt14;

    invoke-interface {p0, p2}, Lk93;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method
