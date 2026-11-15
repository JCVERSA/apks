.class Lcom/google/android/exoplayer2/offline/SegmentDownloader$1;
.super Lcom/google/android/exoplayer2/util/RunnableFutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
        "Lkv3;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/offline/SegmentDownloader;

.field final synthetic val$dataSource:Lcom/google/android/exoplayer2/upstream/a;

.field final synthetic val$dataSpec:Lcom/google/android/exoplayer2/upstream/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/SegmentDownloader;Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/upstream/b;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$1;->val$dataSource:Lcom/google/android/exoplayer2/upstream/a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$1;->val$dataSpec:Lcom/google/android/exoplayer2/upstream/b;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doWork()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$1;->doWork()Lkv3;

    const/4 p0, 0x0

    return-object p0
.end method

.method public doWork()Lkv3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkv3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$1;->val$dataSource:Lcom/google/android/exoplayer2/upstream/a;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->a(Lcom/google/android/exoplayer2/offline/SegmentDownloader;)Lcom/google/android/exoplayer2/upstream/g$a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$1;->val$dataSpec:Lcom/google/android/exoplayer2/upstream/b;

    const/4 v2, 0x4

    invoke-static {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/upstream/g;->b(Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/upstream/g$a;Lcom/google/android/exoplayer2/upstream/b;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    return-object v1
.end method
