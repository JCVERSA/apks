.class public Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/j;


# instance fields
.field a:Ljava/net/InetSocketAddress;

.field private b:Lcom/transsion/transfer/androidasync/o;

.field private c:Ljava/nio/channels/SelectionKey;

.field private d:Lcom/transsion/transfer/androidasync/AsyncServer;

.field private e:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field f:Lcom/transsion/transfer/androidasync/util/a;

.field g:Z

.field h:Lst/j;

.field i:Lst/d;

.field j:Lst/a;

.field k:Z

.field l:Ljava/lang/Exception;

.field private m:Lst/a;

.field n:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->e:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    .line 13
    .line 14
    return-void
.end method

.method private E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->e:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->e:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/transsion/transfer/androidasync/a0;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/o;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method private m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    or-int/lit8 v0, v0, 0x4

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    and-int/lit8 v0, v0, -0x5

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 36
    .line 37
    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method


# virtual methods
.method public B(Lst/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->h:Lst/j;

    .line 2
    .line 3
    return-void
.end method

.method C(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    .line 4
    .line 5
    return-void
.end method

.method public F(Lst/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->i:Lst/d;

    .line 2
    .line 3
    return-void
.end method

.method public G()Lst/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->i:Lst/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public a()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->g()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->r(Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/o;->l()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method f(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->a:Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    new-instance p2, Lcom/transsion/transfer/androidasync/util/a;

    .line 4
    .line 5
    invoke-direct {p2}, Lcom/transsion/transfer/androidasync/util/a;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->f:Lcom/transsion/transfer/androidasync/util/a;

    .line 9
    .line 10
    new-instance p2, Lcom/transsion/transfer/androidasync/z;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Lcom/transsion/transfer/androidasync/z;-><init>(Ljava/nio/channels/SocketChannel;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    .line 16
    .line 17
    return-void
.end method

.method public h(Lst/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->m:Lst/a;

    .line 2
    .line 3
    return-void
.end method

.method public i(Lst/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->j:Lst/a;

    .line 2
    .line 3
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/o;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public k()Lst/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->h:Lst/j;

    .line 2
    .line 3
    return-object v0
.end method

.method l()Lcom/transsion/transfer/androidasync/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->o()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 14
    .line 15
    new-instance v1, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$1;-><init>(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->H(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/o;->h()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->k()[Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lcom/transsion/transfer/androidasync/o;->m([Ljava/nio/ByteBuffer;)I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->b([Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-direct {p0, v1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->m(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    sub-int/2addr v0, p1

    .line 63
    invoke-virtual {v1, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->C(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->g()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->v(Ljava/lang/Exception;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->r(Ljava/lang/Exception;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/o;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit8 v1, v1, -0x5

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->h:Lst/j;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lst/j;->a()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method p()I
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->E()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->f:Lcom/transsion/transfer/androidasync/util/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/a;->a()Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->b:Lcom/transsion/transfer/androidasync/o;

    .line 17
    .line 18
    invoke-interface {v2, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 19
    .line 20
    .line 21
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    int-to-long v2, v2

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v2

    .line 25
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->g()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->v(Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->r(Ljava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v2, -0x1

    .line 35
    .line 36
    :goto_0
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    cmp-long v4, v2, v4

    .line 39
    .line 40
    if-gez v4, :cond_1

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->g()V

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    move v7, v5

    .line 47
    move v5, v1

    .line 48
    move v1, v7

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    int-to-long v5, v1

    .line 51
    add-long/2addr v5, v2

    .line 52
    long-to-int v5, v5

    .line 53
    :goto_1
    if-lez v4, :cond_2

    .line 54
    .line 55
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->f:Lcom/transsion/transfer/androidasync/util/a;

    .line 56
    .line 57
    invoke-virtual {v4, v2, v3}, Lcom/transsion/transfer/androidasync/util/a;->e(J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->e:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->e:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 69
    .line 70
    invoke-static {p0, v0}, Lcom/transsion/transfer/androidasync/a0;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    if-eqz v1, :cond_3

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->v(Ljava/lang/Exception;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->r(Ljava/lang/Exception;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    return v5
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->o()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 14
    .line 15
    new-instance v1, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$2;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$2;-><init>(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->H(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    .line 31
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    and-int/lit8 v1, v1, -0x2

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    return-void
.end method

.method protected r(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->g:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->j:Lst/a;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->j:Lst/a;

    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->o()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->d:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 14
    .line 15
    new-instance v1, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$3;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket$3;-><init>(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->H(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->n:Z

    .line 31
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->c:Ljava/nio/channels/SelectionKey;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    or-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->E()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->isOpen()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->l:Ljava/lang/Exception;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->v(Ljava/lang/Exception;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method t(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->k:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->m:Lst/a;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-eqz p1, :cond_2

    .line 18
    .line 19
    const-string v0, "NIO"

    .line 20
    .line 21
    const-string v1, "Unhandled exception"

    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method v(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->e:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->l:Ljava/lang/Exception;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->t(Ljava/lang/Exception;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
