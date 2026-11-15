.class public Lcom/transsion/http/b/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/transsion/http/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lel/b;

.field final b:Lcom/transsion/http/impl/DownloadCallback;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Lfl/e;

.field private final g:Ljava/lang/Object;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Z

.field private k:Lil/f;

.field private volatile l:Z

.field private final m:Lel/c;

.field private n:Lcom/transsion/http/b/a;

.field private o:J


# direct methods
.method public constructor <init>(Lel/b;Lcom/transsion/http/impl/DownloadCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    new-instance v0, Lfl/e;

    .line 12
    .line 13
    invoke-direct {v0}, Lfl/e;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/http/b/c;->f:Lfl/e;

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/transsion/http/b/c;->o:J

    .line 21
    .line 22
    iput-object p1, p0, Lcom/transsion/http/b/c;->a:Lel/b;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    .line 25
    .line 26
    invoke-virtual {p1}, Lel/b;->c()Lil/e;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lil/e;->k()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iput-boolean p2, p0, Lcom/transsion/http/b/c;->j:Z

    .line 35
    .line 36
    invoke-virtual {p1}, Lel/b;->c()Lil/e;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lil/e;->m()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/transsion/http/b/c;->g:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {p1}, Lel/b;->c()Lil/e;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Lil/e;->i()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/transsion/http/b/c;->c:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1}, Lel/b;->c()Lil/e;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lil/e;->n()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;

    .line 65
    .line 66
    new-instance p2, Lel/c;

    .line 67
    .line 68
    invoke-direct {p2, p1}, Lel/c;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Lcom/transsion/http/b/c;->m:Lel/c;

    .line 72
    .line 73
    return-void
.end method

.method static synthetic a(Lcom/transsion/http/b/c;)Lil/f;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/http/b/c;->k:Lil/f;

    return-object p0
.end method

.method private a(Lil/f;)Ljava/io/File;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/transsion/http/b/c;->f:Lfl/e;

    iget-object v2, v0, Lcom/transsion/http/b/c;->m:Lel/c;

    invoke-virtual {v1, v2}, Lfl/e;->a(Lel/e;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/transsion/http/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/http/b/c;->d:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/transsion/http/b/c;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not create dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_1
    iget-boolean v2, v0, Lcom/transsion/http/b/c;->j:Z

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/http/b/c;->o:J

    .line 12
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/transsion/http/b/c;->a:Lel/b;

    invoke-virtual {v1}, Lel/b;->c()Lil/e;

    move-result-object v1

    invoke-virtual {v1}, Lil/e;->f()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/transsion/http/b/c;->o:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RANGE"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    return-object v2

    .line 14
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lil/f;->i()V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lil/f;->b()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/transsion/http/b/c;->i:J

    .line 16
    invoke-virtual/range {p1 .. p1}, Lil/f;->c()Ljava/io/InputStream;

    move-result-object v1

    .line 17
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/transsion/http/b/c;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    iget-boolean v4, v0, Lcom/transsion/http/b/c;->j:Z

    if-eqz v4, :cond_4

    .line 19
    iget-wide v4, v0, Lcom/transsion/http/b/c;->o:J

    .line 20
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_1

    .line 21
    :cond_4
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v4, 0x0

    .line 22
    :goto_1
    iget-wide v7, v0, Lcom/transsion/http/b/c;->i:J

    add-long v16, v7, v4

    .line 23
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-direct {v14, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_4

    .line 26
    :cond_5
    iget-object v7, v0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    if-eqz v7, :cond_6

    .line 27
    iget-object v8, v0, Lcom/transsion/http/b/c;->k:Lil/f;

    invoke-virtual {v8}, Lil/f;->g()I

    move-result v8

    iget-object v9, v0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;

    move-wide v10, v4

    move-wide/from16 v12, v16

    invoke-virtual/range {v7 .. v13}, Lcom/transsion/http/impl/DownloadCallback;->y(ILjava/lang/String;JJ)V

    :cond_6
    const/16 v7, 0x1000

    .line 28
    new-array v7, v7, [B

    .line 29
    :goto_2
    invoke-virtual {v14, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a

    .line 30
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    .line 31
    invoke-virtual {v1, v7, v9, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_4

    .line 33
    :cond_7
    iget-object v9, v0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    if-eqz v9, :cond_8

    .line 34
    iget-object v8, v0, Lcom/transsion/http/b/c;->k:Lil/f;

    invoke-virtual {v8}, Lil/f;->g()I

    move-result v10

    iget-object v11, v0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;

    move-wide v12, v4

    move-object v8, v14

    move-wide/from16 v14, v16

    invoke-virtual/range {v9 .. v15}, Lcom/transsion/http/impl/DownloadCallback;->y(ILjava/lang/String;JJ)V

    goto :goto_3

    :cond_8
    move-object v8, v14

    :goto_3
    move-object v14, v8

    goto :goto_2

    :cond_9
    move-object v8, v14

    .line 35
    invoke-static {v8}, Lkl/d;->a(Ljava/io/Closeable;)V

    .line 36
    invoke-static {v1}, Lkl/d;->a(Ljava/io/Closeable;)V

    .line 37
    invoke-static {v6}, Lkl/d;->a(Ljava/io/Closeable;)V

    .line 38
    iget-object v1, v0, Lcom/transsion/http/b/c;->f:Lfl/e;

    iget-object v2, v0, Lcom/transsion/http/b/c;->m:Lel/c;

    invoke-virtual {v1, v2}, Lfl/e;->b(Lel/e;)V

    .line 39
    new-instance v1, Ljava/io/IOException;

    const-string v2, "parent be deleted!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object v8, v14

    .line 40
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 41
    invoke-static {v8}, Lkl/d;->a(Ljava/io/Closeable;)V

    .line 42
    invoke-static {v1}, Lkl/d;->a(Ljava/io/Closeable;)V

    .line 43
    iget-object v1, v0, Lcom/transsion/http/b/c;->f:Lfl/e;

    iget-object v2, v0, Lcom/transsion/http/b/c;->m:Lel/c;

    invoke-virtual {v1, v2}, Lfl/e;->b(Lel/e;)V

    .line 44
    iget-object v1, v0, Lcom/transsion/http/b/c;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/http/b/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 45
    new-instance v2, Ljava/io/File;

    iget-object v1, v0, Lcom/transsion/http/b/c;->c:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    move-object v2, v3

    :goto_4
    return-object v2
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/http/b/c;->k:Lil/f;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Thread;

    .line 16
    .line 17
    new-instance v1, Lcom/transsion/http/b/b;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/transsion/http/b/b;-><init>(Lcom/transsion/http/b/c;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/transsion/http/b/c;->k:Lil/f;

    .line 30
    .line 31
    invoke-virtual {v0}, Lil/f;->a()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized f()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/http/b/c;->l:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/http/impl/q;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method private declared-synchronized g()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/http/b/c;->l:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/http/impl/q;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method


# virtual methods
.method public a(Lcom/transsion/http/b/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a()Z
    .locals 3

    .line 47
    sget-object v0, Ljl/a;->a:Ljl/c;

    const-string v1, "book"

    const-string v2, "cancel by tag"

    invoke-interface {v0, v1, v2}, Ljl/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    invoke-direct {p0}, Lcom/transsion/http/b/c;->f()V

    .line 50
    invoke-direct {p0}, Lcom/transsion/http/b/c;->e()V

    .line 51
    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/http/b/c;->g:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/transsion/http/b/c;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/http/b/c;->e()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/http/b/c;->g()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return v0
.end method

.method public run()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/http/impl/q;->a()V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/transsion/http/b/c;->a:Lel/b;

    .line 17
    .line 18
    invoke-virtual {v0}, Lel/b;->d()Lil/f;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/transsion/http/b/c;->k:Lil/f;

    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/http/b/c;->a(Lil/f;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    cmp-long v4, v4, v1

    .line 43
    .line 44
    if-lez v4, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_2
    iget-object v4, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    .line 55
    .line 56
    if-eqz v4, :cond_8

    .line 57
    .line 58
    invoke-virtual {v0}, Lil/f;->g()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    iget-object v6, p0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v4, v5, v6, v3}, Lcom/transsion/http/impl/DownloadCallback;->A(ILjava/lang/String;Ljava/io/File;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v3

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    iget-object v3, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    .line 78
    .line 79
    if-eqz v3, :cond_8

    .line 80
    .line 81
    invoke-virtual {v0}, Lil/f;->g()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    iget-object v5, p0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    const-string v6, "file is null"

    .line 88
    .line 89
    :try_start_1
    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/http/impl/DownloadCallback;->w(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :goto_0
    :try_start_2
    new-instance v4, Ljava/io/File;

    .line 94
    .line 95
    iget-object v5, p0, Lcom/transsion/http/b/c;->c:Ljava/lang/String;

    .line 96
    .line 97
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_6

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 107
    .line 108
    .line 109
    move-result-wide v5

    .line 110
    cmp-long v1, v5, v1

    .line 111
    .line 112
    if-lez v1, :cond_6

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    iget-object v1, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    .line 122
    .line 123
    if-eqz v1, :cond_8

    .line 124
    .line 125
    invoke-virtual {v0}, Lil/f;->g()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    iget-object v3, p0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/http/impl/DownloadCallback;->A(ILjava/lang/String;Ljava/io/File;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catchall_1
    move-exception v1

    .line 136
    goto :goto_3

    .line 137
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_7
    iget-object v1, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    .line 145
    .line 146
    if-eqz v1, :cond_8

    .line 147
    .line 148
    invoke-virtual {v0}, Lil/f;->g()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    iget-object v4, p0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v1, v2, v4, v3}, Lcom/transsion/http/impl/DownloadCallback;->w(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    .line 160
    .line 161
    :cond_8
    :goto_1
    invoke-virtual {v0}, Lil/f;->a()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_9

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_9
    iget-object v0, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    .line 172
    .line 173
    if-eqz v0, :cond_a

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/transsion/http/impl/q;->b()V

    .line 176
    .line 177
    .line 178
    :cond_a
    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/transsion/http/b/c;->l:Z

    .line 180
    .line 181
    :goto_2
    return-void

    .line 182
    :goto_3
    invoke-virtual {v0}, Lil/f;->a()V

    .line 183
    .line 184
    .line 185
    throw v1
.end method
