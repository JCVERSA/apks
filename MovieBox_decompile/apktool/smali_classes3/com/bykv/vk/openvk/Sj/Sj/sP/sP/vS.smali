.class public Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$b;
    }
.end annotation


# static fields
.field private static volatile i:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;


# instance fields
.field private volatile a:Ljava/net/ServerSocket;

.field private volatile b:I

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

.field private final e:Landroid/util/SparseArray;

.field private final f:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->e:Landroid/util/SparseArray;

    .line 19
    .line 20
    new-instance v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$a;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$a;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->f:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

    .line 26
    .line 27
    new-instance v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->g:Ljava/lang/Runnable;

    .line 33
    .line 34
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    new-instance v2, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    .line 2
    .line 3
    return-object p0
.end method

.method private b()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->a:Ljava/net/ServerSocket;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/16 v1, 0x7d0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/io/BufferedReader;

    .line 14
    .line 15
    new-instance v2, Ljava/io/InputStreamReader;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "Ping"

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "OK\n"

    .line 44
    .line 45
    sget-object v3, Lh6/a;->b:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    goto :goto_2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    invoke-static {v0}, Lh6/a;->q(Ljava/net/Socket;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_1
    :try_start_1
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lh6/a;->q(Ljava/net/Socket;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :goto_2
    invoke-static {v0}, Lh6/a;->q(Ljava/net/Socket;)V

    .line 74
    .line 75
    .line 76
    throw v1
.end method

.method static synthetic c(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->a:Ljava/net/ServerSocket;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->b:I

    .line 2
    .line 3
    return p0
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->a:Ljava/net/ServerSocket;

    .line 21
    .line 22
    invoke-static {v0}, Lh6/a;->p(Ljava/net/ServerSocket;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->t()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method private g()Z
    .locals 4

    .line 1
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->s()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->b:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$b;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/bytedance/sdk/component/Dq/Jcg;

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/Dq/Jcg;-><init>(Ljava/util/concurrent/Callable;II)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->TKC()Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->b()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    const-string v1, "ProxyServer"

    .line 43
    .line 44
    const-string v2, "Ping error"

    .line 45
    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->e()V

    .line 50
    .line 51
    .line 52
    return v0

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    return v3

    .line 58
    :goto_0
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->e()V

    .line 62
    .line 63
    .line 64
    return v0
.end method

.method static synthetic h(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->b:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public static j()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;
    .locals 2

    .line 1
    sget-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->i:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->i:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->i:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->i:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 27
    .line 28
    return-object v0
.end method

.method static synthetic k(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->a:Ljava/net/ServerSocket;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method static synthetic o(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->s()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic r(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->f:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

    .line 2
    .line 3
    return-object p0
.end method

.method private s()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "MTI3LjAuMC4x"

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method private t()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->e:Landroid/util/SparseArray;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->e:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_1

    .line 17
    .line 18
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->e:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/util/Set;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj()V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    return-void

    .line 66
    :goto_3
    monitor-exit v1

    .line 67
    throw v0
.end method

.method static synthetic u(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->g()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method m(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->e:Landroid/util/SparseArray;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->e:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/Set;

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v2, v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    monitor-exit v1

    .line 50
    return v0

    .line 51
    :goto_0
    monitor-exit v1

    .line 52
    throw p1
.end method

.method n()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method p()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
