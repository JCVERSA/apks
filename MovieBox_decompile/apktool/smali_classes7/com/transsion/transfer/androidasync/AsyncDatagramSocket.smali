.class public Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;
.super Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public H(Ljava/lang/String;ILjava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->o()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$1;-><init>(Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->H(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->l()Lcom/transsion/transfer/androidasync/o;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    throw p1

    .line 37
    :catch_0
    return-void
.end method

.method public J(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->o()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$2;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/transfer/androidasync/AsyncDatagramSocket$2;-><init>(Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->H(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->l()Lcom/transsion/transfer/androidasync/o;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    throw p1

    .line 37
    :catch_0
    return-void
.end method
