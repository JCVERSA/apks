.class public Lcom/lzy/okserver/upload/UploadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lohb;",
            ">;"
        }
    .end annotation
.end field

.field private priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

.field public progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "progress == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    .line 14
    invoke-static {}, Lje7;->a()Lje7;

    move-result-object p1

    invoke-virtual {p1}, Lje7;->c()Lyhb;

    move-result-object p1

    invoke-virtual {p1}, Lyhb;->a()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->listeners:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lzy/okgo/request/base/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
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

    iput-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    .line 4
    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Lcom/lzy/okgo/request/base/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v0, 0x0

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 8
    iput-object p2, p1, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    .line 9
    invoke-static {}, Lje7;->a()Lje7;

    move-result-object p1

    invoke-virtual {p1}, Lje7;->c()Lyhb;

    move-result-object p1

    invoke-virtual {p1}, Lyhb;->a()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadTask;->listeners:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->postLoading(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method private postLoading(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/upload/UploadTask$5;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/upload/UploadTask$5;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

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

    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance p2, Lcom/lzy/okserver/upload/UploadTask$6;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okserver/upload/UploadTask$6;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {p2}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Progress;",
            "TT;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/4 v0, 0x5

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/upload/UploadTask$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/lzy/okserver/upload/UploadTask$7;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;Ljava/lang/Object;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnRemove(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/upload/UploadTask$8;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/upload/UploadTask$8;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnStart(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x0

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/upload/UploadTask$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/upload/UploadTask$2;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postPause(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x3

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/upload/UploadTask$4;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/upload/UploadTask$4;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postWaiting(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x1

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-direct {p0, p1}, Lcom/lzy/okserver/upload/UploadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/upload/UploadTask$3;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/upload/UploadTask$3;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDatabase(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    invoke-static {p1}, Lcom/lzy/okgo/model/Progress;->buildUpdateContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;

    move-result-object p0

    invoke-static {}, Lphb;->q()Lphb;

    move-result-object v0

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lphb;->t(Landroid/content/ContentValues;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public extra1(Ljava/io/Serializable;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            ")",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    return-object p0
.end method

.method public extra2(Ljava/io/Serializable;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            ")",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra2:Ljava/io/Serializable;

    return-object p0
.end method

.method public extra3(Ljava/io/Serializable;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            ")",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra3:Ljava/io/Serializable;

    return-object p0
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/lzy/okserver/upload/UploadTask;->postPause(Lcom/lzy/okgo/model/Progress;)V

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

    iget-object p0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p0, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lie7;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public priority(I)Lcom/lzy/okserver/upload/UploadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput p1, v0, Lcom/lzy/okgo/model/Progress;->priority:I

    return-object p0
.end method

.method public register(Lohb;)Lcom/lzy/okserver/upload/UploadTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lohb;",
            ")",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public remove()Lcom/lzy/okserver/upload/UploadTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lzy/okserver/upload/UploadTask;->pause()V

    invoke-static {}, Lphb;->q()Lphb;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lphb;->n(Ljava/lang/String;)V

    invoke-static {}, Lje7;->a()Lje7;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lje7;->d(Ljava/lang/String;)Lcom/lzy/okserver/upload/UploadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1}, Lcom/lzy/okserver/upload/UploadTask;->postOnRemove(Lcom/lzy/okgo/model/Progress;)V

    return-object v0
.end method

.method public restart()V
    .locals 4

    invoke-virtual {p0}, Lcom/lzy/okserver/upload/UploadTask;->pause()V

    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    const/4 v3, 0x0

    iput v3, v0, Lcom/lzy/okgo/model/Progress;->fraction:F

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->speed:J

    invoke-static {}, Lphb;->q()Lphb;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, v1}, Lt90;->k(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/lzy/okserver/upload/UploadTask;->start()Lcom/lzy/okserver/upload/UploadTask;

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v1, 0x2

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-direct {p0, v0}, Lcom/lzy/okserver/upload/UploadTask;->postLoading(Lcom/lzy/okgo/model/Progress;)V

    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getRawCall()Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/lzy/okserver/upload/UploadTask$a;

    invoke-direct {v2, p0, v1}, Lcom/lzy/okserver/upload/UploadTask$a;-><init>(Lcom/lzy/okserver/upload/UploadTask;Lokhttp3/Call;)V

    invoke-virtual {v0, v2}, Lcom/lzy/okgo/request/base/Request;->uploadInterceptor(Lcom/lzy/okgo/request/base/ProgressRequestBody$b;)Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->adapt()Lkq0;

    move-result-object v0

    invoke-interface {v0}, Lkq0;->execute()Lhu8;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lhu8;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0}, Lhu8;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/upload/UploadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0}, Lhu8;->d()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/upload/UploadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1, v0}, Lcom/lzy/okserver/upload/UploadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void
.end method

.method public save()Lcom/lzy/okserver/upload/UploadTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lphb;->q()Lphb;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, v1}, Lt90;->k(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public start()Lcom/lzy/okserver/upload/UploadTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okserver/upload/UploadTask<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lje7;->a()Lje7;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lje7;->b(Ljava/lang/String;)Lcom/lzy/okserver/upload/UploadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lphb;->q()Lphb;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lphb;->o(Ljava/lang/String;)Lcom/lzy/okgo/model/Progress;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/lzy/okserver/upload/UploadTask;->postOnStart(Lcom/lzy/okgo/model/Progress;)V

    iget-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0}, Lcom/lzy/okserver/upload/UploadTask;->postWaiting(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/task/PriorityRunnable;

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-direct {v0, v1, p0}, Lcom/lzy/okserver/task/PriorityRunnable;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lzy/okserver/upload/UploadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the task with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already in the upload queue, current task status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okserver/upload/UploadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lie7;->c(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "you must call UploadTask#save() before UploadTask#start()\uff01"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegister(Ljava/lang/String;)V
    .locals 1

    .line 3
    const-string v0, "tag == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/lzy/okserver/upload/UploadTask;->listeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unRegister(Lohb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lohb;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p0, "listener == null"

    invoke-static {p1, p0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 2
    throw p0
.end method
