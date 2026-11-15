.class Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    return-void
.end method

.method public static synthetic a(Llb1;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;->d(Llb1;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic b(Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;Llb1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;->f(Llb1;)V

    return-void
.end method

.method public static synthetic c(Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;->e(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public static synthetic d(Llb1;Ljava/util/ArrayList;)V
    .locals 1

    invoke-interface {p0}, Llb1;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Llb1;->onComplete()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic e(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->A0(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public final synthetic f(Llb1;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/b;

    invoke-direct {v1, p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/b;-><init>(Llb1;Ljava/util/ArrayList;)V

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener$1;-><init>(Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-interface {p1}, Llb1;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {v0, v2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->C(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/c;

    invoke-direct {v0, p0, v2}, Lorg/proninyaroslav/libretorrent/core/model/c;-><init>(Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    invoke-static {v0}, Lio/reactivex/disposables/a;->c(Ld5;)Lrc2;

    move-result-object p0

    invoke-interface {p1, p0}, Llb1;->setDisposable(Lrc2;)V

    :cond_0
    return-void
.end method

.method public g()Lhb1;
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/a;

    invoke-direct {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/a;-><init>(Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;)V

    invoke-static {v0}, Lhb1;->b(Lrb1;)Lhb1;

    move-result-object p0

    return-object p0
.end method
