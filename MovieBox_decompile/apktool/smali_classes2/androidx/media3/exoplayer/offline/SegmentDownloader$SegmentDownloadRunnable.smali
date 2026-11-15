.class final Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
.super Landroidx/media3/common/util/RunnableFutureTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SegmentDownloadRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/common/util/RunnableFutureTask<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheWriter:Landroidx/media3/datasource/cache/i;

.field public final dataSource:Landroidx/media3/datasource/cache/a;

.field private final progressNotifier:Landroidx/media3/exoplayer/offline/SegmentDownloader$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final segment:Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

.field public final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/offline/SegmentDownloader$b;Landroidx/media3/datasource/cache/a;Landroidx/media3/exoplayer/offline/SegmentDownloader$a;[B)V
    .locals 1
    .param p3    # Landroidx/media3/exoplayer/offline/SegmentDownloader$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/util/RunnableFutureTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Landroidx/media3/datasource/cache/a;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->progressNotifier:Landroidx/media3/exoplayer/offline/SegmentDownloader$a;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/datasource/cache/i;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    .line 15
    .line 16
    invoke-direct {v0, p2, p1, p4, p3}, Landroidx/media3/datasource/cache/i;-><init>(Landroidx/media3/datasource/cache/a;Lw1/h;[BLandroidx/media3/datasource/cache/i$a;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Landroidx/media3/datasource/cache/i;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method protected cancelWork()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Landroidx/media3/datasource/cache/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/i;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->doWork()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doWork()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Landroidx/media3/datasource/cache/i;

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/i;->a()V

    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->progressNotifier:Landroidx/media3/exoplayer/offline/SegmentDownloader$a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->c()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
