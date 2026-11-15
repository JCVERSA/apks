.class public Lcom/transsion/http/download/DownLoaderTask;
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
        "Lcom/transsion/http/download/DownLoaderTask;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lct8;

.field final b:Lky2;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Labd;

.field private final g:Ljava/lang/Object;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Z

.field private k:Lkod;

.field private volatile l:Z

.field private final m:Lx7d;

.field private n:Lxx2;

.field private o:J


# direct methods
.method public constructor <init>(Lct8;Lky2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/transsion/http/download/DownLoaderTask;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Labd;

    invoke-direct {p2}, Labd;-><init>()V

    iput-object p2, p0, Lcom/transsion/http/download/DownLoaderTask;->f:Labd;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/http/download/DownLoaderTask;->o:J

    iput-object p1, p0, Lcom/transsion/http/download/DownLoaderTask;->a:Lct8;

    invoke-virtual {p1}, Lct8;->c()Lhnd;

    move-result-object p2

    invoke-virtual {p2}, Lhnd;->k()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/http/download/DownLoaderTask;->j:Z

    invoke-virtual {p1}, Lct8;->c()Lhnd;

    move-result-object p2

    invoke-virtual {p2}, Lhnd;->m()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/http/download/DownLoaderTask;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Lct8;->c()Lhnd;

    move-result-object p2

    invoke-virtual {p2}, Lhnd;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/http/download/DownLoaderTask;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lct8;->c()Lhnd;

    move-result-object p1

    invoke-virtual {p1}, Lhnd;->n()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/http/download/DownLoaderTask;->h:Ljava/lang/String;

    new-instance p2, Lx7d;

    invoke-direct {p2, p1}, Lx7d;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/http/download/DownLoaderTask;->m:Lx7d;

    return-void
.end method

.method private a(Lkod;)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/http/download/DownLoaderTask;->f:Labd;

    iget-object v1, p0, Lcom/transsion/http/download/DownLoaderTask;->m:Lx7d;

    invoke-virtual {v0, v1}, Labd;->a(Lzad;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/http/download/DownLoaderTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/http/download/DownLoaderTask;->d:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/http/download/DownLoaderTask;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not create dir: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/http/download/DownLoaderTask;->j:Z

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/http/download/DownLoaderTask;->o:J

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/http/download/DownLoaderTask;->a:Lct8;

    invoke-virtual {v0}, Lct8;->c()Lhnd;

    move-result-object v0

    invoke-virtual {v0}, Lhnd;->f()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/http/download/DownLoaderTask;->o:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RANGE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    return-object v1

    .line 13
    :cond_3
    invoke-virtual {p1}, Lkod;->h()V

    .line 14
    invoke-virtual {p1}, Lkod;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/http/download/DownLoaderTask;->i:J

    .line 15
    invoke-virtual {p1}, Lkod;->d()Ljava/io/InputStream;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/http/download/DownLoaderTask;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    iget-boolean v2, p0, Lcom/transsion/http/download/DownLoaderTask;->j:Z

    if-eqz v2, :cond_4

    .line 18
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_1

    .line 19
    :cond_4
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 20
    :goto_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 22
    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    const/16 v4, 0x1000

    .line 23
    new-array v4, v4, [B

    .line 24
    :cond_6
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    .line 26
    invoke-virtual {p1, v4, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 27
    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    .line 28
    :cond_7
    invoke-static {v3}, Llv4;->a(Ljava/io/Closeable;)V

    .line 29
    invoke-static {p1}, Llv4;->a(Ljava/io/Closeable;)V

    .line 30
    invoke-static {v2}, Llv4;->a(Ljava/io/Closeable;)V

    .line 31
    iget-object p1, p0, Lcom/transsion/http/download/DownLoaderTask;->f:Labd;

    iget-object p0, p0, Lcom/transsion/http/download/DownLoaderTask;->m:Lx7d;

    invoke-virtual {p1, p0}, Labd;->b(Lzad;)V

    .line 32
    new-instance p0, Ljava/io/IOException;

    const-string p1, "parent be deleted!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_8
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 34
    invoke-static {v3}, Llv4;->a(Ljava/io/Closeable;)V

    .line 35
    invoke-static {p1}, Llv4;->a(Ljava/io/Closeable;)V

    .line 36
    iget-object p1, p0, Lcom/transsion/http/download/DownLoaderTask;->f:Labd;

    iget-object v1, p0, Lcom/transsion/http/download/DownLoaderTask;->m:Lx7d;

    invoke-virtual {p1, v1}, Labd;->b(Lzad;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/transsion/http/download/DownLoaderTask;->autoRename(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public static synthetic a(Lcom/transsion/http/download/DownLoaderTask;)Lkod;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/http/download/DownLoaderTask;->k:Lkod;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/transsion/http/download/DownLoaderTask;->k:Lkod;

    if-eqz v0, :cond_1

    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/transsion/http/download/a;

    invoke-direct {v1, p0}, Lcom/transsion/http/download/a;-><init>(Lcom/transsion/http/download/DownLoaderTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/transsion/http/download/DownLoaderTask;->k:Lkod;

    invoke-virtual {p0}, Lkod;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/http/download/DownLoaderTask;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/http/download/DownLoaderTask;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
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

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/http/download/DownLoaderTask;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/http/download/DownLoaderTask;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
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
.method public autoRename(Ljava/io/File;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/transsion/http/download/DownLoaderTask;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/http/download/DownLoaderTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/http/download/DownLoaderTask;->c:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public cancel()Z
    .locals 3

    sget-object v0, Lhf1;->a:Lup5;

    const-string v1, "book"

    const-string v2, "cancel by tag"

    invoke-interface {v0, v1, v2}, Lup5;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/http/download/DownLoaderTask;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/transsion/http/download/DownLoaderTask;->b()V

    invoke-direct {p0}, Lcom/transsion/http/download/DownLoaderTask;->a()V

    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public compareTo(Lcom/transsion/http/download/DownLoaderTask;)I
    .locals 0
    .param p1    # Lcom/transsion/http/download/DownLoaderTask;
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
    check-cast p1, Lcom/transsion/http/download/DownLoaderTask;

    invoke-virtual {p0, p1}, Lcom/transsion/http/download/DownLoaderTask;->compareTo(Lcom/transsion/http/download/DownLoaderTask;)I

    move-result p0

    return p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/http/download/DownLoaderTask;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/http/download/DownLoaderTask;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isDone()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/http/download/DownLoaderTask;->l:Z

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

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/http/download/DownLoaderTask;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/http/download/DownLoaderTask;->c()V

    :cond_0
    return v0
.end method

.method public pause()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/http/download/DownLoaderTask;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/transsion/http/download/DownLoaderTask;->a()V

    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->isPaused()Z

    move-result p0

    return p0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->startLoad()V

    return-void
.end method

.method public setListener(Lxx2;)V
    .locals 0

    return-void
.end method

.method public startLoad()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/http/download/DownLoaderTask;->a:Lct8;

    invoke-virtual {v0}, Lct8;->d()Lkod;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/http/download/DownLoaderTask;->k:Lkod;

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/http/download/DownLoaderTask;->a(Lkod;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->isCancelled()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/transsion/http/download/DownLoaderTask;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->isCancelled()Z

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-virtual {v0}, Lkod;->a()V

    invoke-virtual {p0}, Lcom/transsion/http/download/DownLoaderTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/http/download/DownLoaderTask;->l:Z

    return-void

    :goto_1
    invoke-virtual {v0}, Lkod;->a()V

    throw p0
.end method
