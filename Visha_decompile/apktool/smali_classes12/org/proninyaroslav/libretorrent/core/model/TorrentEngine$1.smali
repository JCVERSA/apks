.class Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$1;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lt14;


# virtual methods
.method public onSessionStarted()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$1;->a:Lt14;

    invoke-interface {v0}, Lt14;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$1;->a:Lt14;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lk93;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSessionStopped()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$1;->a:Lt14;

    invoke-interface {v0}, Lt14;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$1;->a:Lt14;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lk93;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
