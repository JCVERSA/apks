.class Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lzf1;

.field public final synthetic b:Lt14;

.field public final synthetic c:Ljava/lang/String;


# virtual methods
.method public onRestoreSessionError(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->a:Lzf1;

    invoke-interface {v0, p1}, Lzf1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->b:Lt14;

    invoke-interface {v0}, Lt14;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->b:Lt14;

    invoke-interface {p0, p1}, Lk93;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSessionStats(Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->a:Lzf1;

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lzf1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->b:Lt14;

    invoke-interface {v0}, Lt14;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->b:Lt14;

    invoke-interface {p0, p1}, Lk93;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTorrentError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    :try_start_0
    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->a:Lzf1;

    invoke-interface {p2, p1}, Lzf1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->b:Lt14;

    invoke-interface {p2}, Lt14;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->b:Lt14;

    invoke-interface {p0, p1}, Lk93;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTorrentPaused(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->a:Lzf1;

    invoke-interface {v0, p1}, Lzf1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->b:Lt14;

    invoke-interface {v0}, Lt14;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->b:Lt14;

    invoke-interface {p0, p1}, Lk93;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTorrentStateChanged(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;)V
    .locals 0

    :try_start_0
    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->a:Lzf1;

    invoke-interface {p2, p1}, Lzf1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->b:Lt14;

    invoke-interface {p2}, Lt14;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$1;->b:Lt14;

    invoke-interface {p0, p1}, Lk93;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
