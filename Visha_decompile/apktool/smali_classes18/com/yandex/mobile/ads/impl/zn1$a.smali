.class public final Lcom/yandex/mobile/ads/impl/zn1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/zn1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/vn;

.field private volatile c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/zn1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/vn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/vn;",
            ")V"
        }
    .end annotation

    const-string v0, "responseCallback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->d:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->b:Lcom/yandex/mobile/ads/impl/vn;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/zn1;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->d:Lcom/yandex/mobile/ads/impl/zn1;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zn1$a;)V
    .locals 1

    .line 13
    const-string v0, "other"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/zn1$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    const-string v0, "executorService"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->d:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zn1;->c()Lcom/yandex/mobile/ads/impl/fe1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->i()Lcom/yandex/mobile/ads/impl/s10;

    move-result-object v0

    .line 3
    sget-boolean v1, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " MUST NOT hold lock on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->d:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/zn1;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 9
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->b:Lcom/yandex/mobile/ads/impl/vn;

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/vn;->a(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->d:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zn1;->c()Lcom/yandex/mobile/ads/impl/fe1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fe1;->i()Lcom/yandex/mobile/ads/impl/s10;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/s10;->b(Lcom/yandex/mobile/ads/impl/zn1$a;)V

    :goto_1
    return-void

    .line 11
    :goto_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->d:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zn1;->c()Lcom/yandex/mobile/ads/impl/fe1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->i()Lcom/yandex/mobile/ads/impl/s10;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/s10;->b(Lcom/yandex/mobile/ads/impl/zn1$a;)V

    throw p1
.end method

.method public final b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->d:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zn1;->h()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->d:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zn1;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkHttp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->d:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/zn1;->a(Lcom/yandex/mobile/ads/impl/zn1;)Lcom/yandex/mobile/ads/impl/zn1$c;

    move-result-object v0

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/zn1;->i()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v4, 0x1

    :try_start_2
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->b:Lcom/yandex/mobile/ads/impl/vn;

    invoke-interface {v5, v0}, Lcom/yandex/mobile/ads/impl/vn;->a(Lcom/yandex/mobile/ads/impl/vq1;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/zn1;->c()Lcom/yandex/mobile/ads/impl/fe1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->i()Lcom/yandex/mobile/ads/impl/s10;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :goto_0
    move v8, v4

    move-object v4, v0

    move v0, v8

    goto :goto_2

    :goto_1
    move v8, v4

    move-object v4, v0

    move v0, v8

    goto :goto_4

    :catchall_2
    move-exception v4

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/zn1;->a()V

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lue3;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->b:Lcom/yandex/mobile/ads/impl/vn;

    invoke-interface {v5, v0}, Lcom/yandex/mobile/ads/impl/vn;->a(Ljava/io/IOException;)V

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_0
    :goto_3
    throw v4

    :catch_1
    move-exception v4

    :goto_4
    if-eqz v0, :cond_1

    sget v0, Lcom/yandex/mobile/ads/impl/rh1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh1$a;->a()Lcom/yandex/mobile/ads/impl/rh1;

    move-result-object v0

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/zn1;->b(Lcom/yandex/mobile/ads/impl/zn1;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Callback failure for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    invoke-static {v0, v5, v4}, Lcom/yandex/mobile/ads/impl/rh1;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1$a;->b:Lcom/yandex/mobile/ads/impl/vn;

    invoke-interface {v0, v4}, Lcom/yandex/mobile/ads/impl/vn;->a(Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_5
    :try_start_5
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/zn1;->c()Lcom/yandex/mobile/ads/impl/fe1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->i()Lcom/yandex/mobile/ads/impl/s10;

    move-result-object v0

    :goto_6
    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/s10;->b(Lcom/yandex/mobile/ads/impl/zn1$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :goto_7
    :try_start_6
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/zn1;->c()Lcom/yandex/mobile/ads/impl/fe1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/fe1;->i()Lcom/yandex/mobile/ads/impl/s10;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/s10;->b(Lcom/yandex/mobile/ads/impl/zn1$a;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw p0
.end method
