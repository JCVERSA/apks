.class public final Lcom/yandex/mobile/ads/impl/co1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Lcom/yandex/mobile/ads/impl/k42;

.field private final d:Lcom/yandex/mobile/ads/impl/bo1;

.field private final e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/yandex/mobile/ads/impl/ao1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/l42;Ljava/util/concurrent/TimeUnit;)V
    .locals 2

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeUnit"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/yandex/mobile/ads/impl/co1;->a:I

    const-wide/16 v0, 0x5

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/co1;->b:J

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/l42;->e()Lcom/yandex/mobile/ads/impl/k42;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/co1;->c:Lcom/yandex/mobile/ads/impl/k42;

    sget-object p1, Lcom/yandex/mobile/ads/impl/g92;->g:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ConnectionPool"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/yandex/mobile/ads/impl/bo1;

    invoke-direct {p2, p0, p1}, Lcom/yandex/mobile/ads/impl/bo1;-><init>(Lcom/yandex/mobile/ads/impl/co1;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/co1;->d:Lcom/yandex/mobile/ads/impl/bo1;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/co1;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/ao1;J)I
    .locals 7

    .line 36
    sget-boolean v0, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " MUST hold lock on "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ao1;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 39
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 41
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    :cond_3
    const-string v4, "null cannot be cast to non-null type com.monetization.ads.embedded.okhttp.src.main.kotlin.okhttp3.internal.connection.RealCall.CallReference"

    invoke-static {v3, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/yandex/mobile/ads/impl/zn1$b;

    .line 43
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ao1;->k()Lcom/yandex/mobile/ads/impl/vs1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 44
    sget v5, Lcom/yandex/mobile/ads/impl/rh1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh1$a;->a()Lcom/yandex/mobile/ads/impl/rh1;

    move-result-object v5

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/zn1$b;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Lcom/yandex/mobile/ads/impl/rh1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ao1;->l()V

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/co1;->b:J

    sub-long/2addr p2, v2

    invoke-virtual {p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ao1;->a(J)V

    return v1

    .line 49
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(J)J
    .locals 10

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co1;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    move-wide v4, v3

    move-object v3, v2

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/ao1;

    .line 11
    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    monitor-enter v6

    .line 12
    :try_start_0
    invoke-direct {p0, v6, p1, p2}, Lcom/yandex/mobile/ads/impl/co1;->a(Lcom/yandex/mobile/ads/impl/ao1;J)I

    move-result v7

    if-lez v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 13
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ao1;->c()J

    move-result-wide v7

    sub-long v7, p1, v7

    cmp-long v9, v7, v4

    if-lez v9, :cond_1

    move-object v3, v6

    move-wide v4, v7

    .line 14
    :cond_1
    sget-object v7, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :goto_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v6

    throw p0

    .line 16
    :cond_2
    iget-wide v6, p0, Lcom/yandex/mobile/ads/impl/co1;->b:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_6

    .line 17
    iget v0, p0, Lcom/yandex/mobile/ads/impl/co1;->a:I

    if-le v1, v0, :cond_3

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    sub-long/2addr v6, v4

    return-wide v6

    :cond_4
    if-lez v2, :cond_5

    return-wide v6

    :cond_5
    const-wide/16 p0, -0x1

    return-wide p0

    .line 18
    :cond_6
    :goto_2
    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    .line 19
    monitor-enter v3

    .line 20
    :try_start_1
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ao1;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    monitor-exit v3

    return-wide v1

    .line 21
    :cond_7
    :try_start_2
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ao1;->c()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-long/2addr v6, v4

    cmp-long p1, v6, p1

    if-eqz p1, :cond_8

    monitor-exit v3

    return-wide v1

    .line 22
    :cond_8
    :try_start_3
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ao1;->l()V

    .line 23
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/co1;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    monitor-exit v3

    .line 25
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ao1;->m()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/net/Socket;)V

    .line 26
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/co1;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co1;->c:Lcom/yandex/mobile/ads/impl/k42;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k42;->a()V

    :cond_9
    return-wide v1

    :catchall_1
    move-exception p0

    .line 27
    monitor-exit v3

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ab;Lcom/yandex/mobile/ads/impl/zn1;Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ab;",
            "Lcom/yandex/mobile/ads/impl/zn1;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/vs1;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    const-string v0, "address"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co1;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ao1;

    .line 3
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    monitor-enter v0

    if-eqz p4, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ao1;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 5
    :cond_0
    :goto_1
    invoke-virtual {v0, p1, p3}, Lcom/yandex/mobile/ads/impl/ao1;->a(Lcom/yandex/mobile/ads/impl/ab;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/zn1;->a(Lcom/yandex/mobile/ads/impl/ao1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 8
    :cond_1
    :try_start_1
    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit v0

    goto :goto_0

    :goto_2
    monitor-exit v0

    throw p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ao1;)Z
    .locals 3

    .line 28
    const-string v0, "connection"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-boolean v0, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST hold lock on "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ao1;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/yandex/mobile/ads/impl/co1;->a:I

    if-nez v0, :cond_2

    goto :goto_1

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/co1;->c:Lcom/yandex/mobile/ads/impl/k42;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co1;->d:Lcom/yandex/mobile/ads/impl/bo1;

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/k42;Lcom/yandex/mobile/ads/impl/bo1;)V

    const/4 p0, 0x0

    goto :goto_2

    .line 33
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ao1;->l()V

    .line 34
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co1;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/co1;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co1;->c:Lcom/yandex/mobile/ads/impl/k42;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k42;->a()V

    :cond_4
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/ao1;)V
    .locals 3

    const-string v0, "connection"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST hold lock on "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co1;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/co1;->c:Lcom/yandex/mobile/ads/impl/k42;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co1;->d:Lcom/yandex/mobile/ads/impl/bo1;

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/k42;Lcom/yandex/mobile/ads/impl/bo1;)V

    return-void
.end method
