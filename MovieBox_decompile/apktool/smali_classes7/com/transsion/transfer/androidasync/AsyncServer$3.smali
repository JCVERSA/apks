.class Lcom/transsion/transfer/androidasync/AsyncServer$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncServer;->k(Ljava/net/InetSocketAddress;Lst/b;Lst/h;)Lcom/transsion/transfer/androidasync/AsyncServer$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

.field final synthetic val$address:Ljava/net/InetSocketAddress;

.field final synthetic val$callback:Lst/b;

.field final synthetic val$cancel:Lcom/transsion/transfer/androidasync/AsyncServer$b;

.field final synthetic val$createCallback:Lst/h;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/AsyncServer$b;Lst/b;Lst/h;Ljava/net/InetSocketAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$3;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$3;->val$cancel:Lcom/transsion/transfer/androidasync/AsyncServer$b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$3;->val$callback:Lst/b;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/AsyncServer$3;->val$address:Ljava/net/InetSocketAddress;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$3;->val$cancel:Lcom/transsion/transfer/androidasync/AsyncServer$b;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/future/n;->isCancelled()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$3;->val$cancel:Lcom/transsion/transfer/androidasync/AsyncServer$b;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$3;->val$callback:Lst/b;

    .line 14
    .line 15
    iput-object v2, v1, Lcom/transsion/transfer/androidasync/AsyncServer$b;->g:Lst/b;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iput-object v3, v1, Lcom/transsion/transfer/androidasync/AsyncServer$b;->f:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$3;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->e(Lcom/transsion/transfer/androidasync/AsyncServer;)Lcom/transsion/transfer/androidasync/x;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/x;->d()Ljava/nio/channels/Selector;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/16 v4, 0x8

    .line 38
    .line 39
    invoke-virtual {v3, v1, v4}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$3;->val$cancel:Lcom/transsion/transfer/androidasync/AsyncServer$b;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$3;->val$address:Ljava/net/InetSocketAddress;

    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    goto :goto_0

    .line 56
    :catchall_1
    move-exception v1

    .line 57
    move-object v3, v2

    .line 58
    :goto_0
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 61
    .line 62
    .line 63
    :cond_1
    const/4 v2, 0x1

    .line 64
    new-array v2, v2, [Ljava/io/Closeable;

    .line 65
    .line 66
    aput-object v3, v2, v0

    .line 67
    .line 68
    invoke-static {v2}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$3;->val$cancel:Lcom/transsion/transfer/androidasync/AsyncServer$b;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/RuntimeException;

    .line 74
    .line 75
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    .line 79
    .line 80
    .line 81
    :goto_1
    return-void
.end method
