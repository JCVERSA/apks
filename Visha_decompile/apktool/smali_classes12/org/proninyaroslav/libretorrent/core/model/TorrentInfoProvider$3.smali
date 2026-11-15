.class Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$3;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lt14;


# virtual methods
.method public onTorrentRemoved(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$3;->a:Lt14;

    invoke-interface {v0}, Lt14;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider$3;->a:Lt14;

    invoke-interface {p0, p1}, Lk93;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
