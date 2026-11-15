.class public final Lcom/squareup/okhttp/internal/framed/FramedConnection;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/FramedConnection$b;,
        Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;,
        Lcom/squareup/okhttp/internal/framed/FramedConnection$a;
    }
.end annotation


# static fields
.field private static final x:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Lcom/squareup/okhttp/Protocol;

.field final b:Z

.field private final c:Lcom/squareup/okhttp/internal/framed/FramedConnection$b;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private final j:Ljava/util/concurrent/ExecutorService;

.field private k:Ljava/util/Map;

.field private final l:Lcom/squareup/okhttp/internal/framed/PushObserver;

.field private m:I

.field n:J

.field o:J

.field p:Lcom/squareup/okhttp/internal/framed/h;

.field final q:Lcom/squareup/okhttp/internal/framed/h;

.field private r:Z

.field final s:Lcom/squareup/okhttp/internal/framed/Variant;

.field final t:Ljava/net/Socket;

.field final u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

.field final v:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

.field private final w:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    .line 6
    .line 7
    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "OkHttp FramedConnection"

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/g;->s(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    const/4 v1, 0x0

    .line 18
    const v2, 0x7fffffff

    .line 19
    .line 20
    .line 21
    const-wide/16 v3, 0x3c

    .line 22
    .line 23
    move-object v0, v8

    .line 24
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 25
    .line 26
    .line 27
    sput-object v8, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x:Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)V
    .locals 18

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->i:J

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->n:J

    .line 6
    new-instance v1, Lcom/squareup/okhttp/internal/framed/h;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/framed/h;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p:Lcom/squareup/okhttp/internal/framed/h;

    .line 7
    new-instance v1, Lcom/squareup/okhttp/internal/framed/h;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/framed/h;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->r:Z

    .line 9
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->w:Ljava/util/Set;

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->a(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Lcom/squareup/okhttp/Protocol;

    move-result-object v3

    iput-object v3, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->a:Lcom/squareup/okhttp/Protocol;

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->b(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Lcom/squareup/okhttp/internal/framed/PushObserver;

    move-result-object v4

    iput-object v4, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->l:Lcom/squareup/okhttp/internal/framed/PushObserver;

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->c(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b:Z

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->d(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Lcom/squareup/okhttp/internal/framed/FramedConnection$b;

    move-result-object v5

    iput-object v5, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->c:Lcom/squareup/okhttp/internal/framed/FramedConnection$b;

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->c(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iput v5, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g:I

    .line 15
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->c(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v5, :cond_1

    .line 16
    iget v5, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g:I

    .line 17
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->c(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v7

    :cond_2
    iput v6, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->m:I

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->c(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_3

    .line 19
    iget-object v5, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p:Lcom/squareup/okhttp/internal/framed/h;

    const/high16 v8, 0x1000000

    invoke-virtual {v5, v6, v2, v8}, Lcom/squareup/okhttp/internal/framed/h;->l(III)Lcom/squareup/okhttp/internal/framed/h;

    .line 20
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->e(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    .line 21
    sget-object v8, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    const/4 v9, 0x0

    if-ne v3, v8, :cond_4

    .line 22
    new-instance v3, Lcom/squareup/okhttp/internal/framed/d;

    invoke-direct {v3}, Lcom/squareup/okhttp/internal/framed/d;-><init>()V

    iput-object v3, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s:Lcom/squareup/okhttp/internal/framed/Variant;

    .line 23
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v8, "OkHttp %s Push Observer"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v2

    .line 24
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/squareup/okhttp/internal/g;->s(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v17

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x3c

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j:Ljava/util/concurrent/ExecutorService;

    const v3, 0xffff

    .line 25
    invoke-virtual {v1, v6, v2, v3}, Lcom/squareup/okhttp/internal/framed/h;->l(III)Lcom/squareup/okhttp/internal/framed/h;

    const/4 v3, 0x5

    const/16 v5, 0x4000

    .line 26
    invoke-virtual {v1, v3, v2, v5}, Lcom/squareup/okhttp/internal/framed/h;->l(III)Lcom/squareup/okhttp/internal/framed/h;

    goto :goto_1

    .line 27
    :cond_4
    sget-object v2, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v2, :cond_5

    .line 28
    new-instance v2, Lcom/squareup/okhttp/internal/framed/i;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/framed/i;-><init>()V

    iput-object v2, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s:Lcom/squareup/okhttp/internal/framed/Variant;

    .line 29
    iput-object v9, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j:Ljava/util/concurrent/ExecutorService;

    :goto_1
    const/high16 v2, 0x10000

    .line 30
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/framed/h;->e(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->f(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t:Ljava/net/Socket;

    .line 32
    iget-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s:Lcom/squareup/okhttp/internal/framed/Variant;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->g(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/squareup/okhttp/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lcom/squareup/okhttp/internal/framed/FrameWriter;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 33
    new-instance v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v2, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s:Lcom/squareup/okhttp/internal/framed/Variant;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$a;->h(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)Lokio/BufferedSource;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lcom/squareup/okhttp/internal/framed/FrameReader;

    move-result-object v2

    invoke-direct {v1, v0, v2, v9}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/FrameReader;Lcom/squareup/okhttp/internal/framed/FramedConnection$1;)V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->v:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    .line 34
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    .line 35
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;Lcom/squareup/okhttp/internal/framed/FramedConnection$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$a;)V

    return-void
.end method

.method private B0(ZIILcom/squareup/okhttp/internal/framed/g;)V
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 2
    .line 3
    monitor-enter p4

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->ping(ZII)V

    .line 7
    .line 8
    .line 9
    monitor-exit p4

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method private D0(ZIILcom/squareup/okhttp/internal/framed/g;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v9, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x3

    .line 16
    new-array v4, v4, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    aput-object v1, v4, v5

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    aput-object v2, v4, v1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    aput-object v3, v4, v1

    .line 26
    .line 27
    const-string v3, "OkHttp %s ping %08x%08x"

    .line 28
    .line 29
    move-object v1, v9

    .line 30
    move-object v2, p0

    .line 31
    move v5, p1

    .line 32
    move v6, p2

    .line 33
    move v7, p3

    .line 34
    move-object v8, p4

    .line 35
    invoke-direct/range {v1 .. v8}, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/framed/g;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method static synthetic S(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->w:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic T(Lcom/squareup/okhttp/internal/framed/FramedConnection;ZIILcom/squareup/okhttp/internal/framed/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->B0(ZIILcom/squareup/okhttp/internal/framed/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private X(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->y0(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    move-object p1, v0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    :goto_0
    monitor-enter p0

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    new-array v3, v3, [Lcom/squareup/okhttp/internal/framed/a;

    .line 31
    .line 32
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, [Lcom/squareup/okhttp/internal/framed/a;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x0(Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_8

    .line 49
    :cond_0
    move-object v1, v0

    .line 50
    :goto_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->k:Ljava/util/Map;

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->k:Ljava/util/Map;

    .line 59
    .line 60
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    new-array v4, v4, [Lcom/squareup/okhttp/internal/framed/g;

    .line 65
    .line 66
    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, [Lcom/squareup/okhttp/internal/framed/g;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->k:Ljava/util/Map;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    move-object v3, v0

    .line 76
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    array-length v4, v1

    .line 80
    move v5, v2

    .line 81
    :goto_3
    if-ge v5, v4, :cond_3

    .line 82
    .line 83
    aget-object v6, v1, v5

    .line 84
    .line 85
    :try_start_2
    invoke-virtual {v6, p2}, Lcom/squareup/okhttp/internal/framed/a;->l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :catch_1
    move-exception v6

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    move-object p1, v6

    .line 93
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    if-eqz v3, :cond_5

    .line 97
    .line 98
    array-length p2, v3

    .line 99
    if-gtz p2, :cond_4

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_4
    aget-object p1, v3, v2

    .line 103
    .line 104
    throw v0

    .line 105
    :cond_5
    :goto_5
    :try_start_3
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 106
    .line 107
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 108
    .line 109
    .line 110
    goto :goto_6

    .line 111
    :catch_2
    move-exception p2

    .line 112
    if-nez p1, :cond_6

    .line 113
    .line 114
    move-object p1, p2

    .line 115
    :cond_6
    :goto_6
    :try_start_4
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t:Ljava/net/Socket;

    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 118
    .line 119
    .line 120
    goto :goto_7

    .line 121
    :catch_3
    move-exception p1

    .line 122
    :goto_7
    if-nez p1, :cond_7

    .line 123
    .line 124
    return-void

    .line 125
    :cond_7
    throw p1

    .line 126
    :goto_8
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    throw p1
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->X(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->r0(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private g0(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/a;
    .locals 10

    .line 1
    xor-int/lit8 v6, p3, 0x1

    .line 2
    .line 3
    xor-int/lit8 p4, p4, 0x1

    .line 4
    .line 5
    iget-object v7, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 6
    .line 7
    monitor-enter v7

    .line 8
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h:Z

    .line 10
    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    iget v8, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g:I

    .line 14
    .line 15
    add-int/lit8 v0, v8, 0x2

    .line 16
    .line 17
    iput v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g:I

    .line 18
    .line 19
    new-instance v9, Lcom/squareup/okhttp/internal/framed/a;

    .line 20
    .line 21
    move-object v0, v9

    .line 22
    move v1, v8

    .line 23
    move-object v2, p0

    .line 24
    move v3, v6

    .line 25
    move v4, p4

    .line 26
    move-object v5, p2

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/framed/a;-><init>(ILcom/squareup/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v9}, Lcom/squareup/okhttp/internal/framed/a;->t()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    .line 37
    .line 38
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x0(Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 56
    .line 57
    move v1, v6

    .line 58
    move v2, p4

    .line 59
    move v3, v8

    .line 60
    move v4, p1

    .line 61
    move-object v5, p2

    .line 62
    invoke-interface/range {v0 .. v5}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_1
    move-exception p1

    .line 67
    goto :goto_3

    .line 68
    :cond_1
    iget-boolean p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b:Z

    .line 69
    .line 70
    if-nez p4, :cond_3

    .line 71
    .line 72
    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 73
    .line 74
    invoke-interface {p4, p1, v8, p2}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    if-nez p3, :cond_2

    .line 79
    .line 80
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 81
    .line 82
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->flush()V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-object v9

    .line 86
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    const-string p2, "client streams shouldn\'t have associated stream IDs"

    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :cond_4
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    .line 95
    .line 96
    const-string p2, "shutdown"

    .line 97
    .line 98
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    :try_start_5
    throw p1

    .line 104
    :goto_3
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 105
    throw p1
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j0(ILokio/BufferedSource;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->l0(ILjava/util/List;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j0(ILokio/BufferedSource;IZ)V
    .locals 9

    .line 1
    new-instance v5, Lokio/Buffer;

    .line 2
    .line 3
    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 4
    .line 5
    .line 6
    int-to-long v0, p3

    .line 7
    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, v5, v0, v1}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    cmp-long p2, v2, v0

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j:Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    new-instance v8, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v3, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    aput-object v0, v3, v2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    aput-object v1, v3, v0

    .line 39
    .line 40
    const-string v2, "OkHttp %s Push Data[%s]"

    .line 41
    .line 42
    move-object v0, v8

    .line 43
    move-object v1, p0

    .line 44
    move v4, p1

    .line 45
    move v6, p3

    .line 46
    move v7, p4

    .line 47
    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p4, " != "

    .line 69
    .line 70
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method

.method static synthetic k(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/squareup/okhttp/internal/framed/FramedConnection;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h:Z

    .line 2
    .line 3
    return p1
.end method

.method private l0(ILjava/util/List;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v8, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v4, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v4, v3

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    aput-object v2, v4, v1

    .line 19
    .line 20
    const-string v3, "OkHttp %s Push Headers[%s]"

    .line 21
    .line 22
    move-object v1, v8

    .line 23
    move-object v2, p0

    .line 24
    move v5, p1

    .line 25
    move-object v6, p2

    .line 26
    move v7, p3

    .line 27
    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method static synthetic m(Lcom/squareup/okhttp/internal/framed/FramedConnection;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->f:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic o(Lcom/squareup/okhttp/internal/framed/FramedConnection;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g:I

    .line 2
    .line 3
    return p0
.end method

.method private o0(ILjava/util/List;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->w:Ljava/util/Set;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->G0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->w:Ljava/util/Set;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j:Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    new-instance v7, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;

    .line 36
    .line 37
    const-string v3, "OkHttp %s Push Request[%s]"

    .line 38
    .line 39
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v4, 0x2

    .line 46
    new-array v4, v4, [Ljava/lang/Object;

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    aput-object v1, v4, v5

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    aput-object v2, v4, v1

    .line 53
    .line 54
    move-object v1, v7

    .line 55
    move-object v2, p0

    .line 56
    move v5, p1

    .line 57
    move-object v6, p2

    .line 58
    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p1
.end method

.method static synthetic p(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method private p0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v7, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v4, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v4, v3

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    aput-object v2, v4, v1

    .line 19
    .line 20
    const-string v3, "OkHttp %s Push Reset[%s]"

    .line 21
    .line 22
    move-object v1, v7

    .line 23
    move-object v2, p0

    .line 24
    move v5, p1

    .line 25
    move-object v6, p2

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method static synthetic q(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/FramedConnection$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->c:Lcom/squareup/okhttp/internal/framed/FramedConnection$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method private r0(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->a:Lcom/squareup/okhttp/Protocol;

    .line 2
    .line 3
    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    and-int/2addr p1, v0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method static synthetic s(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private declared-synchronized s0(I)Lcom/squareup/okhttp/internal/framed/g;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->k:Ljava/util/Map;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method static synthetic t(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic u(Lcom/squareup/okhttp/internal/framed/FramedConnection;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic v(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Lcom/squareup/okhttp/internal/framed/g;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s0(I)Lcom/squareup/okhttp/internal/framed/g;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static synthetic w(Lcom/squareup/okhttp/internal/framed/FramedConnection;ZIILcom/squareup/okhttp/internal/framed/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->D0(ZIILcom/squareup/okhttp/internal/framed/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o0(ILjava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private declared-synchronized x0(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    :goto_0
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method static synthetic y(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/PushObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->l:Lcom/squareup/okhttp/internal/framed/PushObserver;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A0(IZLokio/Buffer;J)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p4, v0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 9
    .line 10
    invoke-interface {p4, p2, p1, p3, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    .line 15
    .line 16
    if-lez v2, :cond_4

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :goto_1
    :try_start_0
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    .line 20
    .line 21
    cmp-long v2, v4, v0

    .line 22
    .line 23
    if-gtz v2, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_3

    .line 43
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 44
    .line 45
    const-string p2, "stream closed"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_2
    :try_start_1
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    long-to-int v2, v4

    .line 56
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 57
    .line 58
    invoke-interface {v4}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    .line 67
    .line 68
    int-to-long v6, v2

    .line 69
    sub-long/2addr v4, v6

    .line 70
    iput-wide v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    .line 71
    .line 72
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    sub-long/2addr p4, v6

    .line 74
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 75
    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    cmp-long v5, p4, v0

    .line 79
    .line 80
    if-nez v5, :cond_3

    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v5, v3

    .line 85
    :goto_2
    invoke-interface {v4, v5, p1, p3, v2}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    throw p1

    .line 97
    :cond_4
    return-void
.end method

.method E0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method G0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v7, Lcom/squareup/okhttp/internal/framed/FramedConnection$1;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v4, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v4, v3

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    aput-object v2, v4, v1

    .line 19
    .line 20
    const-string v3, "OkHttp %s stream %d"

    .line 21
    .line 22
    move-object v1, v7

    .line 23
    move-object v2, p0

    .line 24
    move v5, p1

    .line 25
    move-object v6, p2

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection$1;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method H0(IJ)V
    .locals 9

    .line 1
    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v8, Lcom/squareup/okhttp/internal/framed/FramedConnection$2;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v4, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v4, v3

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    aput-object v2, v4, v1

    .line 19
    .line 20
    const-string v3, "OkHttp Window Update %s stream %d"

    .line 21
    .line 22
    move-object v1, v8

    .line 23
    move-object v2, p0

    .line 24
    move v5, p1

    .line 25
    move-wide v6, p2

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection$2;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method W(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long p1, p1, v0

    .line 9
    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 2
    .line 3
    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->X(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d0()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->a:Lcom/squareup/okhttp/Protocol;

    .line 2
    .line 3
    return-object v0
.end method

.method declared-synchronized e0(I)Lcom/squareup/okhttp/internal/framed/a;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/squareup/okhttp/internal/framed/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method

.method public declared-synchronized f0()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    .line 3
    .line 4
    const v1, 0x7fffffff

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/h;->f(I)I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h0(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g0(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method declared-synchronized t0(I)Lcom/squareup/okhttp/internal/framed/a;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/squareup/okhttp/internal/framed/a;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x0(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-object p1

    .line 36
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method public u0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->connectionPreface()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p:Lcom/squareup/okhttp/internal/framed/h;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->settings(Lcom/squareup/okhttp/internal/framed/h;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p:Lcom/squareup/okhttp/internal/framed/h;

    .line 14
    .line 15
    const/high16 v1, 0x10000

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/h;->e(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 24
    .line 25
    sub-int/2addr v0, v1

    .line 26
    int-to-long v0, v0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-interface {v2, v3, v0, v1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public y0(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :catchall_1
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    :try_start_3
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h:Z

    .line 18
    .line 19
    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->f:I

    .line 20
    .line 21
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22
    :try_start_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 23
    .line 24
    sget-object v3, Lcom/squareup/okhttp/internal/g;->a:[B

    .line 25
    .line 26
    invoke-interface {v2, v1, p1, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;[B)V

    .line 27
    .line 28
    .line 29
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    return-void

    .line 31
    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 32
    :try_start_6
    throw p1

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 34
    throw p1
.end method
