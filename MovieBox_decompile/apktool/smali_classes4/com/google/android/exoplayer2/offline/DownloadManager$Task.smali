.class Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
.super Ljava/lang/Thread;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field private contentLength:J

.field private final downloadProgress:Lcom/google/android/exoplayer2/offline/a;

.field private final downloader:Lcom/google/android/exoplayer2/offline/b;

.field private finalException:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile isCanceled:Z

.field private final isRemove:Z

.field private final minRetryCount:I

.field private final request:Lcom/google/android/exoplayer2/offline/DownloadRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/b;Lcom/google/android/exoplayer2/offline/a;ZILcom/google/android/exoplayer2/offline/DownloadManager$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/b;

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/a;

    .line 6
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z

    .line 7
    iput p5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->minRetryCount:I

    const-wide/16 p1, -0x1

    .line 8
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/b;Lcom/google/android/exoplayer2/offline/a;ZILcom/google/android/exoplayer2/offline/DownloadManager$b;Lcom/google/android/exoplayer2/offline/DownloadManager$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/b;Lcom/google/android/exoplayer2/offline/a;ZILcom/google/android/exoplayer2/offline/DownloadManager$b;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Ljava/lang/Exception;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->finalException:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object p0
.end method

.method private static getRetryDelayMillis(I)I
    .locals 1

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    mul-int/lit16 p0, p0, 0x3e8

    .line 4
    .line 5
    const/16 v0, 0x1388

    .line 6
    .line 7
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/b;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/exoplayer2/offline/b;->cancel()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onProgress(JJF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/a;

    .line 2
    .line 3
    iput-wide p3, v0, Lcom/google/android/exoplayer2/offline/a;->a:J

    .line 4
    .line 5
    iget-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/a;

    .line 6
    .line 7
    iput p5, p3, Lcom/google/android/exoplayer2/offline/a;->b:F

    .line 8
    .line 9
    iget-wide p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    .line 10
    .line 11
    cmp-long p3, p1, p3

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->contentLength:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isRemove:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/b;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/b;->remove()V

    .line 8
    .line 9
    .line 10
    goto :goto_2

    .line 11
    :catch_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    const-wide/16 v1, -0x1

    .line 15
    .line 16
    move v3, v0

    .line 17
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    if-nez v4, :cond_4

    .line 20
    .line 21
    :try_start_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/b;

    .line 22
    .line 23
    invoke-interface {v4, p0}, Lcom/google/android/exoplayer2/offline/b;->a(Lcom/google/android/exoplayer2/offline/b$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :catch_1
    move-exception v4

    .line 28
    :try_start_2
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isCanceled:Z

    .line 29
    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadProgress:Lcom/google/android/exoplayer2/offline/a;

    .line 33
    .line 34
    iget-wide v5, v5, Lcom/google/android/exoplayer2/offline/a;->a:J

    .line 35
    .line 36
    cmp-long v7, v5, v1

    .line 37
    .line 38
    if-eqz v7, :cond_2

    .line 39
    .line 40
    move v3, v0

    .line 41
    move-wide v1, v5

    .line 42
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    iget v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->minRetryCount:I

    .line 45
    .line 46
    if-gt v3, v5, :cond_3

    .line 47
    .line 48
    invoke-static {v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getRetryDelayMillis(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    int-to-long v4, v4

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->finalException:Ljava/lang/Exception;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_2
    return-void
.end method
