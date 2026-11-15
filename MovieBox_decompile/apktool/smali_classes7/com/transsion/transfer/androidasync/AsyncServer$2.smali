.class Lcom/transsion/transfer/androidasync/AsyncServer$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncServer;->y(Ljava/net/InetAddress;ILst/f;)Lcom/transsion/transfer/androidasync/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

.field final synthetic val$handler:Lst/f;

.field final synthetic val$holder:Lcom/transsion/transfer/androidasync/AsyncServer$d;

.field final synthetic val$host:Ljava/net/InetAddress;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/net/InetAddress;ILst/f;Lcom/transsion/transfer/androidasync/AsyncServer$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->val$host:Ljava/net/InetAddress;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->val$port:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->val$handler:Lst/f;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->val$holder:Lcom/transsion/transfer/androidasync/AsyncServer$d;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    .line 3
    .line 4
    .line 5
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    :try_start_1
    new-instance v2, Lcom/transsion/transfer/androidasync/y;

    .line 7
    .line 8
    invoke-direct {v2, v1}, Lcom/transsion/transfer/androidasync/y;-><init>(Ljava/nio/channels/ServerSocketChannel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    .line 10
    .line 11
    :try_start_2
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->val$host:Ljava/net/InetAddress;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 16
    .line 17
    iget v3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->val$port:I

    .line 18
    .line 19
    invoke-direct {v0, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->val$host:Ljava/net/InetAddress;

    .line 28
    .line 29
    iget v4, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->val$port:I

    .line 30
    .line 31
    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->e(Lcom/transsion/transfer/androidasync/AsyncServer;)Lcom/transsion/transfer/androidasync/x;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/x;->d()Ljava/nio/channels/Selector;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v2, v0}, Lcom/transsion/transfer/androidasync/y;->j(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->val$handler:Lst/f;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->val$handler:Lst/f;

    .line 61
    .line 62
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->val$holder:Lcom/transsion/transfer/androidasync/AsyncServer$d;

    .line 63
    .line 64
    new-instance v5, Lcom/transsion/transfer/androidasync/AsyncServer$2$a;

    .line 65
    .line 66
    invoke-direct {v5, p0, v1, v2, v0}, Lcom/transsion/transfer/androidasync/AsyncServer$2$a;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer$2;Ljava/nio/channels/ServerSocketChannel;Lcom/transsion/transfer/androidasync/y;Ljava/nio/channels/SelectionKey;)V

    .line 67
    .line 68
    .line 69
    iput-object v5, v4, Lcom/transsion/transfer/androidasync/AsyncServer$d;->a:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-interface {v3, v5}, Lst/f;->p(Lcom/transsion/transfer/androidasync/i;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catch_1
    move-exception v2

    .line 76
    move-object v6, v2

    .line 77
    move-object v2, v0

    .line 78
    move-object v0, v6

    .line 79
    goto :goto_1

    .line 80
    :catch_2
    move-exception v1

    .line 81
    move-object v2, v0

    .line 82
    move-object v0, v1

    .line 83
    move-object v1, v2

    .line 84
    :goto_1
    const-string v3, "NIO"

    .line 85
    .line 86
    const-string v4, "wtf"

    .line 87
    .line 88
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    const/4 v3, 0x2

    .line 92
    new-array v3, v3, [Ljava/io/Closeable;

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    aput-object v2, v3, v4

    .line 96
    .line 97
    const/4 v2, 0x1

    .line 98
    aput-object v1, v3, v2

    .line 99
    .line 100
    invoke-static {v3}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$2;->val$handler:Lst/f;

    .line 104
    .line 105
    invoke-interface {v1, v0}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 106
    .line 107
    .line 108
    :goto_2
    return-void
.end method
