.class Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener$1;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;->g()Lhb1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener$1;->c:Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener$1;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorrentFinished(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener$1;->b:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onTorrentRemoved(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener$1;->b:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onTorrentStateChanged(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;)V
    .locals 0

    sget-object p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->DOWNLOADING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-ne p3, p2, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener$1;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
