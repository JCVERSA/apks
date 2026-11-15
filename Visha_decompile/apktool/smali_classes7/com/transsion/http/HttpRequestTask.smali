.class public Lcom/transsion/http/HttpRequestTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/transsion/http/HttpRequestTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ldv4;

.field private final b:Lkod;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lfkd;

.field private volatile e:Z

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z


# direct methods
.method public constructor <init>(Lct8;Ldv4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/transsion/http/HttpRequestTask;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/transsion/http/HttpRequestTask;->a:Ldv4;

    invoke-virtual {p1}, Lct8;->d()Lkod;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {p1}, Lct8;->b()Lfkd;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/http/HttpRequestTask;->d:Lfkd;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lkod;->e()Lhnd;

    move-result-object p2

    invoke-virtual {p2}, Lhnd;->m()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/http/HttpRequestTask;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lct8;->c()Lhnd;

    move-result-object p1

    invoke-virtual {p1}, Lhnd;->o()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/http/HttpRequestTask;->g:Z

    return-void
.end method

.method private a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v0}, Lkod;->h()V

    invoke-virtual {p0}, Lcom/transsion/http/HttpRequestTask;->isCancelled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {p0}, Lkod;->a()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v0}, Lkod;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljo0;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljo0;->d(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/http/HttpRequestTask;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/http/HttpRequestTask;->a:Ldv4;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v2}, Lkod;->f()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v3}, Lkod;->g()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Ldv4;->g(I[BLjava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v1}, Lkod;->e()Lhnd;

    move-result-object v1

    invoke-virtual {v1}, Lhnd;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/http/HttpRequestTask;->d:Lfkd;

    if-eqz v1, :cond_2

    new-instance v1, Lt2d;

    invoke-direct {v1}, Lt2d;-><init>()V

    new-instance v2, Lgnd;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lgnd;-><init>(Lt2d;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/http/HttpRequestTask;->d:Lfkd;

    new-instance v3, Lh9d;

    iget-object v4, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v4}, Lkod;->e()Lhnd;

    move-result-object v4

    invoke-virtual {v4}, Lhnd;->n()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lh9d;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v1, Lj6d;

    :try_start_2
    invoke-virtual {v1, v3, v2}, Lj6d;->b(Lzad;Lfkd$a;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-boolean v2, p0, Lcom/transsion/http/HttpRequestTask;->g:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/http/HttpRequestTask;->a:Ldv4;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v3}, Lkod;->f()I

    move-result v3

    invoke-interface {v2, v3, v0, v1}, Ldv4;->a(I[BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {p0}, Lkod;->a()V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {p0}, Lkod;->a()V

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/http/HttpRequestTask;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->a:Ldv4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldv4;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v0}, Lkod;->a()V

    invoke-virtual {p0}, Lcom/transsion/http/HttpRequestTask;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public compareTo(Lcom/transsion/http/HttpRequestTask;)I
    .locals 0
    .param p1    # Lcom/transsion/http/HttpRequestTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/transsion/http/HttpRequestTask;

    invoke-virtual {p0, p1}, Lcom/transsion/http/HttpRequestTask;->compareTo(Lcom/transsion/http/HttpRequestTask;)I

    move-result p0

    return p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/http/HttpRequestTask;->f:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/http/HttpRequestTask;->b()V

    :cond_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/http/HttpRequestTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/http/HttpRequestTask;->e:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public run()V
    .locals 6

    const-string v0, "image"

    sget-object v1, Lhf1;->a:Lup5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run Current Looper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    const-string v3, "Main Looper"

    goto :goto_0

    :cond_0
    const-string v3, "thread Looper"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "book"

    invoke-interface {v1, v3, v2}, Lup5;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/http/HttpRequestTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/http/HttpRequestTask;->a:Ldv4;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ldv4;->c()V

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v1}, Lkod;->e()Lhnd;

    move-result-object v1

    invoke-virtual {v1}, Lhnd;->p()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/transsion/http/HttpRequestTask;->d:Lfkd;

    if-eqz v1, :cond_7

    new-instance v2, Lh9d;

    iget-object v3, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v3}, Lkod;->e()Lhnd;

    move-result-object v3

    invoke-virtual {v3}, Lhnd;->n()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lh9d;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, Lj6d;

    :try_start_1
    invoke-virtual {v1, v2}, Lj6d;->a(Lzad;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    sget-object v2, Lhf1;->a:Lup5;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "image url:"

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v4}, Lkod;->e()Lhnd;

    move-result-object v4

    invoke-virtual {v4}, Lhnd;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lup5;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lhf1;->a:Lup5;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "image path:"

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lup5;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/http/HttpRequestTask;->isCancelled()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v0}, Lkod;->a()V

    iget-object p0, p0, Lcom/transsion/http/HttpRequestTask;->d:Lfkd;

    if-eqz p0, :cond_3

    check-cast p0, Lj6d;

    invoke-virtual {p0}, Lj6d;->c()V

    :cond_3
    return-void

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->a:Ldv4;

    if-eqz v0, :cond_9

    iget-boolean v2, p0, Lcom/transsion/http/HttpRequestTask;->g:Z

    const/16 v3, 0xfa

    if-eqz v2, :cond_5

    invoke-static {v1}, Ljo0;->a(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Ljo0;->d(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v2, v1}, Ldv4;->a(I[BLjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    invoke-static {v1}, Ljo0;->a(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Ljo0;->d(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ldv4;->b(I[B)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/transsion/http/HttpRequestTask;->a()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/transsion/http/HttpRequestTask;->a()V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/transsion/http/HttpRequestTask;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v0}, Lkod;->a()V

    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->d:Lfkd;

    if-eqz v0, :cond_b

    goto :goto_3

    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lcom/transsion/http/HttpRequestTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/transsion/http/HttpRequestTask;->a:Ldv4;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v2}, Lkod;->f()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Ldv4;->e(I[BLjava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v0}, Lkod;->a()V

    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->d:Lfkd;

    if-eqz v0, :cond_b

    :goto_3
    check-cast v0, Lj6d;

    invoke-virtual {v0}, Lj6d;->c()V

    :cond_b
    invoke-virtual {p0}, Lcom/transsion/http/HttpRequestTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/transsion/http/HttpRequestTask;->a:Ldv4;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ldv4;->d()V

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/http/HttpRequestTask;->e:Z

    return-void

    :goto_4
    iget-object v1, p0, Lcom/transsion/http/HttpRequestTask;->b:Lkod;

    invoke-virtual {v1}, Lkod;->a()V

    iget-object p0, p0, Lcom/transsion/http/HttpRequestTask;->d:Lfkd;

    if-eqz p0, :cond_e

    check-cast p0, Lj6d;

    invoke-virtual {p0}, Lj6d;->c()V

    :cond_e
    throw v0
.end method
