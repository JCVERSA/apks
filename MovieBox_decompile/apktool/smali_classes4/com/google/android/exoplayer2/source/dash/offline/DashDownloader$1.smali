.class Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;
.super Lcom/google/android/exoplayer2/util/RunnableFutureTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->n(Lcom/google/android/exoplayer2/upstream/k;ILz9/j;Z)Ly9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
        "Li9/d;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$dataSource:Lcom/google/android/exoplayer2/upstream/k;

.field final synthetic val$representation:Lz9/j;

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;Lcom/google/android/exoplayer2/upstream/k;ILz9/j;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$dataSource:Lcom/google/android/exoplayer2/upstream/k;

    .line 2
    .line 3
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$trackType:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$representation:Lz9/j;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected doWork()Li9/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$dataSource:Lcom/google/android/exoplayer2/upstream/k;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$trackType:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$representation:Lz9/j;

    invoke-static {v0, v1, v2}, Ly9/f;->b(Lcom/google/android/exoplayer2/upstream/k;ILz9/j;)Li9/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->doWork()Li9/d;

    move-result-object v0

    return-object v0
.end method
