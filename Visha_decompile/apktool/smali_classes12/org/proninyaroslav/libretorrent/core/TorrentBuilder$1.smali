.class Lorg/proninyaroslav/libretorrent/core/TorrentBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/libtorrent4j/TorrentBuilder$Listener;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/TorrentBuilder;


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/TorrentBuilder$1;->a:Lorg/proninyaroslav/libretorrent/core/TorrentBuilder;

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/TorrentBuilder;->a(Lorg/proninyaroslav/libretorrent/core/TorrentBuilder;)Lie8;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/TorrentBuilder$1;->a:Lorg/proninyaroslav/libretorrent/core/TorrentBuilder;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/TorrentBuilder;->a(Lorg/proninyaroslav/libretorrent/core/TorrentBuilder;)Lie8;

    move-result-object p0

    invoke-interface {p0, p1}, Lie8;->test(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public progress(II)V
    .locals 1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/TorrentBuilder$1;->a:Lorg/proninyaroslav/libretorrent/core/TorrentBuilder;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/TorrentBuilder;->b(Lorg/proninyaroslav/libretorrent/core/TorrentBuilder;)Lzd0;

    move-result-object p0

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/TorrentBuilder$Progress;

    invoke-direct {v0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/TorrentBuilder$Progress;-><init>(II)V

    invoke-virtual {p0, v0}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method
