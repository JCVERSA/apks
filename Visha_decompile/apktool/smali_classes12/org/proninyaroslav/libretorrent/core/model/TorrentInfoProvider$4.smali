.class Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$4;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Lt14;


# virtual methods
.method public onSessionStats(Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;

    invoke-virtual {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$4;->b:Lt14;

    invoke-interface {v0}, Lt14;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$4;->b:Lt14;

    invoke-interface {p0, p1}, Lk93;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
