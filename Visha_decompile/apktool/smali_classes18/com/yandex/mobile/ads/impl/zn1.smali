.class public final Lcom/yandex/mobile/ads/impl/zn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/nn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/zn1$a;,
        Lcom/yandex/mobile/ads/impl/zn1$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/fe1;

.field private final b:Lcom/yandex/mobile/ads/impl/vp1;

.field private final c:Z

.field private final d:Lcom/yandex/mobile/ads/impl/co1;

.field private final e:Lcom/yandex/mobile/ads/impl/w50;

.field private final f:Lcom/yandex/mobile/ads/impl/zn1$c;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/lang/Object;

.field private i:Lcom/yandex/mobile/ads/impl/d60;

.field private j:Lcom/yandex/mobile/ads/impl/ao1;

.field private k:Z

.field private l:Lcom/yandex/mobile/ads/impl/b60;

.field private m:Z

.field private n:Z

.field private o:Z

.field private volatile p:Z

.field private volatile q:Lcom/yandex/mobile/ads/impl/b60;

.field private volatile r:Lcom/yandex/mobile/ads/impl/ao1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fe1;Lcom/yandex/mobile/ads/impl/vp1;Z)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalRequest"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zn1;->b:Lcom/yandex/mobile/ads/impl/vp1;

    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/zn1;->c:Z

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fe1;->f()Lcom/yandex/mobile/ads/impl/pr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/pr;->a()Lcom/yandex/mobile/ads/impl/co1;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zn1;->d:Lcom/yandex/mobile/ads/impl/co1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fe1;->k()Lcom/yandex/mobile/ads/impl/w50$b;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/w50$b;->a(Lcom/yandex/mobile/ads/impl/nn;)Lcom/yandex/mobile/ads/impl/w50;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->e:Lcom/yandex/mobile/ads/impl/w50;

    new-instance p1, Lcom/yandex/mobile/ads/impl/zn1$c;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/zn1$c;-><init>(Lcom/yandex/mobile/ads/impl/zn1;)V

    const/4 p2, 0x0

    int-to-long p2, p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->f:Lcom/yandex/mobile/ads/impl/zn1$c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->o:Z

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/zn1;)Lcom/yandex/mobile/ads/impl/zn1$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->f:Lcom/yandex/mobile/ads/impl/zn1$c;

    return-object p0
.end method

.method private final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 101
    sget-boolean v0, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST NOT hold lock on "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 103
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->j:Lcom/yandex/mobile/ads/impl/ao1;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_3

    .line 104
    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 105
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " MUST NOT hold lock on "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 106
    :cond_3
    :goto_1
    monitor-enter v1

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zn1;->l()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v1

    .line 109
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zn1;->j:Lcom/yandex/mobile/ads/impl/ao1;

    if-nez v2, :cond_5

    if-eqz v0, :cond_4

    .line 110
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/net/Socket;)V

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->e:Lcom/yandex/mobile/ads/impl/w50;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/impl/w50;->a(Lcom/yandex/mobile/ads/impl/nn;Lcom/yandex/mobile/ads/impl/ao1;)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    goto :goto_2

    .line 112
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 113
    monitor-exit v1

    throw p0

    .line 114
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->k:Z

    if-eqz v0, :cond_8

    goto :goto_3

    .line 115
    :cond_8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->f:Lcom/yandex/mobile/ads/impl/zn1$c;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_3
    move-object v0, p1

    goto :goto_4

    .line 116
    :cond_9
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_a
    :goto_4
    if-eqz p1, :cond_b

    .line 118
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->e:Lcom/yandex/mobile/ads/impl/w50;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/w50;->a(Lcom/yandex/mobile/ads/impl/nn;Ljava/io/IOException;)V

    goto :goto_5

    .line 119
    :cond_b
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->e:Lcom/yandex/mobile/ads/impl/w50;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/w50;->a(Lcom/yandex/mobile/ads/impl/nn;)V

    :goto_5
    return-object v0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/zn1;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/zn1;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final o()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "canceled "

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->b:Lcom/yandex/mobile/ads/impl/vp1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gi0;->j()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/do1;)Lcom/yandex/mobile/ads/impl/b60;
    .locals 3

    .line 63
    const-string v0, "chain"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->o:Z

    if-eqz v0, :cond_3

    .line 66
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->n:Z

    if-nez v0, :cond_2

    .line 67
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->m:Z

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    monitor-exit p0

    .line 70
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->i:Lcom/yandex/mobile/ads/impl/d60;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/d60;->a(Lcom/yandex/mobile/ads/impl/fe1;Lcom/yandex/mobile/ads/impl/do1;)Lcom/yandex/mobile/ads/impl/c60;

    move-result-object p1

    .line 72
    new-instance v1, Lcom/yandex/mobile/ads/impl/b60;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zn1;->e:Lcom/yandex/mobile/ads/impl/w50;

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/yandex/mobile/ads/impl/b60;-><init>(Lcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;Lcom/yandex/mobile/ads/impl/d60;Lcom/yandex/mobile/ads/impl/c60;)V

    .line 73
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->l:Lcom/yandex/mobile/ads/impl/b60;

    .line 74
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->q:Lcom/yandex/mobile/ads/impl/b60;

    .line 75
    monitor-enter p0

    const/4 p1, 0x1

    .line 76
    :try_start_1
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->m:Z

    .line 77
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->p:Z

    if-nez p0, :cond_0

    return-object v1

    .line 80
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    .line 81
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_0

    .line 82
    :cond_1
    :try_start_2
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/b60;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(",
            "Lcom/yandex/mobile/ads/impl/b60;",
            "ZZTE;)TE;"
        }
    .end annotation

    .line 86
    const-string v0, "exchange"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->q:Lcom/yandex/mobile/ads/impl/b60;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p4

    .line 88
    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->m:Z

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    .line 90
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->n:Z

    if-eqz v0, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    .line 91
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->m:Z

    :cond_3
    if-eqz p3, :cond_4

    .line 92
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->n:Z

    .line 93
    :cond_4
    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/zn1;->m:Z

    const/4 p3, 0x1

    if-nez p2, :cond_5

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->n:Z

    if-nez v0, :cond_5

    move v0, p3

    goto :goto_1

    :cond_5
    move v0, p1

    :goto_1
    if-nez p2, :cond_6

    .line 94
    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/zn1;->n:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/zn1;->o:Z

    if-nez p2, :cond_6

    move p1, p3

    :cond_6
    move p2, p1

    move p1, v0

    goto :goto_2

    :cond_7
    move p2, p1

    .line 95
    :goto_2
    sget-object p3, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->q:Lcom/yandex/mobile/ads/impl/b60;

    .line 98
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->j:Lcom/yandex/mobile/ads/impl/ao1;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ao1;->g()V

    :cond_8
    if-eqz p2, :cond_9

    .line 99
    invoke-direct {p0, p4}, Lcom/yandex/mobile/ads/impl/zn1;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p4

    .line 100
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final a()V
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->p:Z

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->q:Lcom/yandex/mobile/ads/impl/b60;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->a()V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->r:Lcom/yandex/mobile/ads/impl/ao1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ao1;->a()V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->e:Lcom/yandex/mobile/ads/impl/w50;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string v0, "call"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ao1;)V
    .locals 3

    .line 2
    const-string v0, "connection"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-boolean v0, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
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

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->j:Lcom/yandex/mobile/ads/impl/ao1;

    if-nez v0, :cond_2

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->j:Lcom/yandex/mobile/ads/impl/ao1;

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ao1;->b()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lcom/yandex/mobile/ads/impl/zn1$b;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->h:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/zn1$b;-><init>(Lcom/yandex/mobile/ads/impl/zn1;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vn;)V
    .locals 3

    .line 15
    const-string v0, "responseCallback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh1;->a()Lcom/yandex/mobile/ads/impl/rh1;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rh1;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->h:Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->e:Lcom/yandex/mobile/ads/impl/w50;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string v0, "call"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->i()Lcom/yandex/mobile/ads/impl/s10;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/zn1$a;

    invoke-direct {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/zn1$a;-><init>(Lcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/vn;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/s10;->a(Lcom/yandex/mobile/ads/impl/zn1$a;)V

    return-void

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already Executed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vp1;Z)V
    .locals 17

    move-object/from16 v1, p0

    .line 23
    const-string v0, "request"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/zn1;->l:Lcom/yandex/mobile/ads/impl/b60;

    if-nez v0, :cond_4

    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget-boolean v0, v1, Lcom/yandex/mobile/ads/impl/zn1;->n:Z

    if-nez v0, :cond_3

    .line 27
    iget-boolean v0, v1, Lcom/yandex/mobile/ads/impl/zn1;->m:Z

    if-nez v0, :cond_2

    .line 28
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    if-eqz p2, :cond_1

    .line 30
    new-instance v0, Lcom/yandex/mobile/ads/impl/d60;

    .line 31
    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/zn1;->d:Lcom/yandex/mobile/ads/impl/co1;

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gi0;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/fe1;->x()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 35
    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/fe1;->o()Lcom/yandex/mobile/ads/impl/ee1;

    move-result-object v5

    .line 36
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/fe1;->d()Lcom/yandex/mobile/ads/impl/fo;

    move-result-object v6

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object v10, v4

    move-object v11, v10

    move-object v12, v11

    .line 37
    :goto_0
    new-instance v4, Lcom/yandex/mobile/ads/impl/ab;

    .line 38
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v7

    .line 40
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/fe1;->j()Lcom/yandex/mobile/ads/impl/q30;

    move-result-object v8

    .line 41
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/fe1;->w()Ljavax/net/SocketFactory;

    move-result-object v9

    .line 42
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/fe1;->s()Lcom/yandex/mobile/ads/impl/ci;

    move-result-object v13

    .line 43
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/fe1;->r()Ljava/util/List;

    move-result-object v14

    .line 45
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/fe1;->g()Ljava/util/List;

    move-result-object v15

    .line 46
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/fe1;->t()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v5, v4

    .line 47
    invoke-direct/range {v5 .. v16}, Lcom/yandex/mobile/ads/impl/ab;-><init>(Ljava/lang/String;ILcom/yandex/mobile/ads/impl/q30;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Lcom/yandex/mobile/ads/impl/ee1;Lcom/yandex/mobile/ads/impl/fo;Lcom/yandex/mobile/ads/impl/ci;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 48
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/zn1;->e:Lcom/yandex/mobile/ads/impl/w50;

    .line 49
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/yandex/mobile/ads/impl/d60;-><init>(Lcom/yandex/mobile/ads/impl/co1;Lcom/yandex/mobile/ads/impl/ab;Lcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V

    iput-object v0, v1, Lcom/yandex/mobile/ads/impl/zn1;->i:Lcom/yandex/mobile/ads/impl/d60;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 50
    :cond_2
    :try_start_1
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_3
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 52
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_1
    monitor-exit p0

    throw v0

    .line 54
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->o:Z

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->q:Lcom/yandex/mobile/ads/impl/b60;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/b60;->b()V

    :cond_0
    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->l:Lcom/yandex/mobile/ads/impl/b60;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 61
    :cond_1
    :try_start_1
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/vq1;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->f:Lcom/yandex/mobile/ads/impl/zn1$c;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 4
    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh1;->a()Lcom/yandex/mobile/ads/impl/rh1;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rh1;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->h:Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->e:Lcom/yandex/mobile/ads/impl/w50;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    const-string v0, "call"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->i()Lcom/yandex/mobile/ads/impl/s10;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/s10;->a(Lcom/yandex/mobile/ads/impl/zn1;)V

    .line 9
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zn1;->i()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/fe1;->i()Lcom/yandex/mobile/ads/impl/s10;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/s10;->b(Lcom/yandex/mobile/ads/impl/zn1;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/fe1;->i()Lcom/yandex/mobile/ads/impl/s10;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/s10;->b(Lcom/yandex/mobile/ads/impl/zn1;)V

    throw v0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->o:Z

    .line 16
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->n:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    if-eqz v1, :cond_1

    .line 19
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/zn1;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1

    .line 20
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/ao1;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zn1;->r:Lcom/yandex/mobile/ads/impl/ao1;

    return-void
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/fe1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/yandex/mobile/ads/impl/zn1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zn1;->b:Lcom/yandex/mobile/ads/impl/vp1;

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->c:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/zn1;-><init>(Lcom/yandex/mobile/ads/impl/fe1;Lcom/yandex/mobile/ads/impl/vp1;Z)V

    return-object v0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/ao1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->j:Lcom/yandex/mobile/ads/impl/ao1;

    return-object p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/w50;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->e:Lcom/yandex/mobile/ads/impl/w50;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->c:Z

    return p0
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/b60;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->l:Lcom/yandex/mobile/ads/impl/b60;

    return-object p0
.end method

.method public final h()Lcom/yandex/mobile/ads/impl/vp1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->b:Lcom/yandex/mobile/ads/impl/vp1;

    return-object p0
.end method

.method public final i()Lcom/yandex/mobile/ads/impl/vq1;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    new-instance v0, Lcom/yandex/mobile/ads/impl/mr1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/mr1;-><init>(Lcom/yandex/mobile/ads/impl/fe1;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/yandex/mobile/ads/impl/dm;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/fe1;->h()Lcom/yandex/mobile/ads/impl/qs;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/dm;-><init>(Lcom/yandex/mobile/ads/impl/qs;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/yandex/mobile/ads/impl/dn;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/dn;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/yandex/mobile/ads/impl/nr;->a:Lcom/yandex/mobile/ads/impl/nr;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->q()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/on;

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/zn1;->c:Z

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/on;-><init>(Z)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/yandex/mobile/ads/impl/do1;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/zn1;->b:Lcom/yandex/mobile/ads/impl/vp1;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->e()I

    move-result v6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->u()I

    move-result v7

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->a:Lcom/yandex/mobile/ads/impl/fe1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->z()I

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/do1;-><init>(Lcom/yandex/mobile/ads/impl/zn1;Ljava/util/List;ILcom/yandex/mobile/ads/impl/b60;Lcom/yandex/mobile/ads/impl/vp1;III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zn1;->b:Lcom/yandex/mobile/ads/impl/vp1;

    invoke-virtual {v9, v2}, Lcom/yandex/mobile/ads/impl/do1;->a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yandex/mobile/ads/impl/zn1;->p:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/zn1;->b(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v2

    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/io/Closeable;)V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/zn1;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-static {v1, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    move v10, v2

    move-object v2, v1

    move v1, v10

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/zn1;->b(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_2
    throw v2
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->p:Z

    return p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->b:Lcom/yandex/mobile/ads/impl/vp1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gi0;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ljava/net/Socket;
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->j:Lcom/yandex/mobile/ads/impl/ao1;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    sget-boolean v1, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST hold lock on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ao1;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_2
    if-eq v3, v5, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/zn1;->j:Lcom/yandex/mobile/ads/impl/ao1;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/yandex/mobile/ads/impl/ao1;->a(J)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->d:Lcom/yandex/mobile/ads/impl/co1;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/co1;->a(Lcom/yandex/mobile/ads/impl/ao1;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ao1;->m()Ljava/net/Socket;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->i:Lcom/yandex/mobile/ads/impl/d60;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/d60;->b()Z

    move-result p0

    return p0
.end method

.method public final n()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zn1;->k:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zn1;->f:Lcom/yandex/mobile/ads/impl/zn1$c;

    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
