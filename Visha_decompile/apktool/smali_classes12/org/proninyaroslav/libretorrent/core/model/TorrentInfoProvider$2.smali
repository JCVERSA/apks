.class Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$2;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# virtual methods
.method public onRestoreSessionError(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$2;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onSessionStats(Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$2;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTorrentError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$2;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTorrentPaused(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$2;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTorrentRemoved(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$2;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTorrentStateChanged(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$2;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
