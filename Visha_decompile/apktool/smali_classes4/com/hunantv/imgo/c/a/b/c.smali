.class Lcom/hunantv/imgo/c/a/b/c;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/imgo/c/a/b/a;


# instance fields
.field private final a:Lcom/hunantv/imgo/c/a/b/e;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/c/a/b/b$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    new-instance v0, Lcom/hunantv/imgo/c/a/b/e;

    invoke-direct {v0, p1}, Lcom/hunantv/imgo/c/a/b/e;-><init>(Lcom/hunantv/imgo/c/a/b/b$b;)V

    iput-object v0, p0, Lcom/hunantv/imgo/c/a/b/c;->a:Lcom/hunantv/imgo/c/a/b/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    return-object p0
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    iget-object p0, p0, Lcom/hunantv/imgo/c/a/b/c;->a:Lcom/hunantv/imgo/c/a/b/e;

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/c/a/b/e;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/hunantv/imgo/c/a/b/c;->a:Lcom/hunantv/imgo/c/a/b/e;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hunantv/imgo/c/a/b/e;->a(Ljava/lang/Runnable;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/hunantv/imgo/c/a/b/c;->a:Lcom/hunantv/imgo/c/a/b/e;

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/c/a/b/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa

    const-string v2, ""

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/hunantv/imgo/c/a/b/c;->a(Ljava/lang/Runnable;Ljava/lang/String;II)V

    return-void
.end method

.method public isShutdown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTerminated()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
