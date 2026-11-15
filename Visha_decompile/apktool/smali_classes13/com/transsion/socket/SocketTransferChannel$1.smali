.class Lcom/transsion/socket/SocketTransferChannel$1;
.super Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/socket/SocketTransferChannel;->createReceiverHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/socket/SocketTransferChannel;


# direct methods
.method public constructor <init>(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$1;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-direct {p0}, Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    new-instance v0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;

    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel$1;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    iget-object v2, v1, Lcom/transsion/socket/SocketTransferChannel;->mSocket:Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;-><init>(Lcom/transsion/socket/SocketTransferChannel;Ljava/net/Socket;)V

    const-string v1, "openReadSocket start received data..."

    const-string v2, "SocketTransferChannel"

    invoke-static {v2, v1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel$1;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v1}, Lcom/transsion/socket/SocketTransferChannel;->h(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/internal/SocketInputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/socket/internal/SocketStream;->readSocket(Ljava/io/DataInputStream;Lcom/transsion/socket/internal/SocketStream$ISocketPackage;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$1;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->g(Lcom/transsion/socket/SocketTransferChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$1;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->o(Lcom/transsion/socket/SocketTransferChannel;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/socket/SocketTransferChannel;->socketReceiverError(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$1;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    iget-object v0, v0, Lcom/transsion/socket/SocketTransferChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$1;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    iget-object v0, v0, Lcom/transsion/socket/SocketTransferChannel;->mSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openReadSocket mSocket.isClosed():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel$1;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
