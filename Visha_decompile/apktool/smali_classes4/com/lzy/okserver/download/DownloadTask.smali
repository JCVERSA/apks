.class public Lcom/lzy/okserver/download/DownloadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Luz2;",
            ">;"
        }
    .end annotation
.end field

.field private priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

.field public progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "progress == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    .line 15
    invoke-static {}, Lee7;->b()Lee7;

    move-result-object p1

    invoke-virtual {p1}, Lee7;->d()Lt13;

    move-result-object p1

    invoke-virtual {p1}, Lt13;->a()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->listeners:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lzy/okgo/request/base/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lzy/okgo/request/base/Request<",
            "Ljava/io/File;",
            "+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "tag == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Progress;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    .line 4
    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    .line 5
    invoke-static {}, Lee7;->b()Lee7;

    move-result-object p1

    invoke-virtual {p1}, Lee7;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p2}, Lcom/lzy/okgo/request/base/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v0, 0x0

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 9
    iput-object p2, p1, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    .line 10
    invoke-static {}, Lee7;->b()Lee7;

    move-result-object p1

    invoke-virtual {p1}, Lee7;->d()Lt13;

    move-result-object p1

    invoke-virtual {p1}, Lt13;->a()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->listeners:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->postLoading(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method private download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/lzy/okgo/model/Progress;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v9, 0x2

    iput v9, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/16 v10, 0x2000

    new-array v11, v10, [B

    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-direct {v12, p1, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v12, v11, v3, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v5, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v5, v9, :cond_1

    invoke-virtual {v2, v11, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v4, v4

    iget-wide v6, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    new-instance v8, Lcom/lzy/okserver/download/DownloadTask$a;

    move-object v13, p0

    invoke-direct {v8, p0}, Lcom/lzy/okserver/download/DownloadTask$a;-><init>(Lcom/lzy/okserver/download/DownloadTask;)V

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v8}, Lcom/lzy/okgo/model/Progress;->changeProgress(Lcom/lzy/okgo/model/Progress;JJLcom/lzy/okgo/model/Progress$a;)Lcom/lzy/okgo/model/Progress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-static/range {p2 .. p2}, Lmv4;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lmv4;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lmv4;->a(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static/range {p2 .. p2}, Lmv4;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lmv4;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lmv4;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method private postLoading(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/download/DownloadTask$5;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/download/DownloadTask$5;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x4

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    iput-object p2, p1, Lcom/lzy/okgo/model/Progress;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance p2, Lcom/lzy/okserver/download/DownloadTask$6;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okserver/download/DownloadTask$6;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {p2}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/4 v0, 0x5

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/download/DownloadTask$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/lzy/okserver/download/DownloadTask$7;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnRemove(Lcom/lzy/okgo/model/Progress;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/download/DownloadTask$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/lzy/okserver/download/DownloadTask$8;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;Z)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnStart(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x0

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/download/DownloadTask$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/download/DownloadTask$2;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postPause(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x3

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/download/DownloadTask$4;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/download/DownloadTask$4;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postWaiting(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x1

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-direct {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/download/DownloadTask$3;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/download/DownloadTask$3;-><init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDatabase(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    invoke-static {p1}, Lcom/lzy/okgo/model/Progress;->buildUpdateContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;

    move-result-object p0

    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lr03;->v(Landroid/content/ContentValues;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public extra1(Ljava/io/Serializable;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    return-object p0
.end method

.method public extra2(Ljava/io/Serializable;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra2:Ljava/io/Serializable;

    return-object p0
.end method

.method public extra3(Ljava/io/Serializable;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra3:Ljava/io/Serializable;

    return-object p0
.end method

.method public fileName(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "fileName is null, ignored!"

    invoke-static {p1}, Lie7;->c(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public folder(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "folder is null, ignored!"

    invoke-static {p1}, Lie7;->c(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/lzy/okserver/download/DownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 p0, 0x3

    iput p0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "only the task with status WAITING(1) or LOADING(2) can pause, current status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p0, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lie7;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public priority(I)Lcom/lzy/okserver/download/DownloadTask;
    .locals 1

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput p1, v0, Lcom/lzy/okgo/model/Progress;->priority:I

    return-object p0
.end method

.method public register(Luz2;)Lcom/lzy/okserver/download/DownloadTask;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->listeners:Ljava/util/Map;

    iget-object v1, p1, Luz2;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public remove(Z)Lcom/lzy/okserver/download/DownloadTask;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/lzy/okserver/download/DownloadTask;->pause()V

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lmv4;->e(Ljava/lang/String;)Z

    .line 5
    :cond_2
    invoke-static {}, Lr03;->t()Lr03;

    move-result-object p1

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lr03;->n(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lee7;->b()Lee7;

    move-result-object p1

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lee7;->e(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnRemove(Lcom/lzy/okgo/model/Progress;Z)V

    return-object p1
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/lzy/okserver/download/DownloadTask;->remove(Z)Lcom/lzy/okserver/download/DownloadTask;

    return-void
.end method

.method public restart()V
    .locals 4

    invoke-virtual {p0}, Lcom/lzy/okserver/download/DownloadTask;->pause()V

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lmv4;->e(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    const/4 v3, 0x0

    iput v3, v0, Lcom/lzy/okgo/model/Progress;->fraction:F

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->speed:J

    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, v1}, Lt90;->k(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/lzy/okserver/download/DownloadTask;->start()V

    return-void
.end method

.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v1, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-lez v3, :cond_1

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_NOT_EXIST()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    const-string v4, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->execute()Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0x194

    if-eq v4, v5, :cond_10

    const/16 v5, 0x1f4

    if-lt v4, v5, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Lcom/lzy/okgo/exception/HttpException;

    const-string v2, "response body is null"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-object v5, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v6, v5, Lcom/lzy/okgo/model/Progress;->totalSize:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/lzy/okgo/model/Progress;->totalSize:J

    :cond_4
    iget-object v5, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v5, v5, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v5, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v5, v5, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v0, v5}, Lut4;->h(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object v5, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-static {v0}, Lmv4;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/StorageException;->NOT_AVAILABLE()Lcom/lzy/okgo/exception/StorageException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v6, v6, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-direct {v0, v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v5, v5, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    if-lez v3, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_8
    iget-object v5, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v6, v5, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v6, v1, v6

    if-lez v6, :cond_9

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_9
    if-nez v3, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v0}, Lmv4;->d(Ljava/io/File;)Z

    :cond_a
    iget-object v5, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v5, v5, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v5, v1, v5

    if-nez v5, :cond_c

    if-lez v3, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_c
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v3, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v5, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-wide v1, v5, Lcom/lzy/okgo/model/Progress;->currentSize:J

    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v1, v2}, Lt90;->k(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1, v3, v2}, Lcom/lzy/okserver/download/DownloadTask;->download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/lzy/okgo/model/Progress;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v2, v1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    invoke-direct {p0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_1

    :cond_d
    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v4, v3, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_e

    invoke-direct {p0, v3, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    goto :goto_1

    :cond_e
    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->UNKNOWN()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_10
    :goto_4
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/HttpException;->NET_ERROR()Lcom/lzy/okgo/exception/HttpException;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void
.end method

.method public save()Lcom/lzy/okserver/download/DownloadTask;
    .locals 4

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v2, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, v1}, Lt90;->k(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public start()V
    .locals 6

    invoke-static {}, Lee7;->b()Lee7;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lee7;->c(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr03;->o(Ljava/lang/String;)Lcom/lzy/okgo/model/Progress;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    const-string v2, " may be invalid or damaged, please call the method restart() to download again\uff01"

    if-nez v1, :cond_1

    new-instance v1, Lcom/lzy/okgo/exception/StorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the file of the task with tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzy/okgo/exception/StorageException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v3, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v4, v3, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Lcom/lzy/okgo/exception/StorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzy/okgo/exception/StorageException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/lzy/okserver/download/DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the task with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already in the download queue, current task status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p0, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lie7;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/lzy/okserver/download/DownloadTask;->postOnStart(Lcom/lzy/okgo/model/Progress;)V

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0}, Lcom/lzy/okserver/download/DownloadTask;->postWaiting(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/task/PriorityRunnable;

    iget-object v1, p0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-direct {v0, v1, p0}, Lcom/lzy/okserver/task/PriorityRunnable;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lzy/okserver/download/DownloadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    iget-object p0, p0, Lcom/lzy/okserver/download/DownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "you must call DownloadTask#save() before DownloadTask#start()\uff01"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegister(Ljava/lang/String;)V
    .locals 1

    .line 3
    const-string v0, "tag == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/lzy/okserver/download/DownloadTask;->listeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unRegister(Luz2;)V
    .locals 1

    .line 1
    const-string v0, "listener == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Lcom/lzy/okserver/download/DownloadTask;->listeners:Ljava/util/Map;

    iget-object p1, p1, Luz2;->a:Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
