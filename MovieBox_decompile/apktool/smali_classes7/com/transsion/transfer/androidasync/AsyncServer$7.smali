.class Lcom/transsion/transfer/androidasync/AsyncServer$7;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

.field final synthetic val$handler:Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$socket:Ljava/nio/channels/DatagramChannel;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/String;ILcom/transsion/transfer/androidasync/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$7;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$7;->val$host:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$7;->val$port:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/AsyncServer$7;->val$handler:Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/AsyncServer$7;->val$socket:Ljava/nio/channels/DatagramChannel;

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
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$7;->val$host:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$7;->val$port:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$7;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$7;->val$handler:Lcom/transsion/transfer/androidasync/AsyncDatagramSocket;

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/transsion/transfer/androidasync/AsyncServer;->f(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$7;->val$socket:Ljava/nio/channels/DatagramChannel;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "NIO"

    .line 25
    .line 26
    const-string v2, "Datagram error"

    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$7;->val$socket:Ljava/nio/channels/DatagramChannel;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    new-array v1, v1, [Ljava/io/Closeable;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object v0, v1, v2

    .line 38
    .line 39
    invoke-static {v1}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method
