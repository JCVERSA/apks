.class Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;
.super Lcom/transsion/socket/SocketDataTransfer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishatransfer/socket/TransferSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientSocketDataTransfer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/socket/SocketDataTransfer;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onReadySendSocketData(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/socket/SocketDataTransfer;->onReadySendSocketData(Lcom/transsion/socket/SocketTransferChannel;)V

    return-void
.end method

.method public onReceiveFinish()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {v0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onReceiveFinish()V

    return-void
.end method

.method public onReceiveSocketData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketData;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/socket/SocketDataTransfer;->onReceiveSocketData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketData;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->d(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)I

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    return-void

    :cond_1
    const-class p1, Lcom/transsion/socket/pkgdata/SocketFileData;

    goto :goto_0

    :cond_2
    const-class p1, Lcom/transsion/socket/pkgdata/SocketStringData;

    goto :goto_0

    :cond_3
    const-class p1, Lcom/transsion/socket/pkgdata/SocketCodeData;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {v0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->c(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {v1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->d(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)I

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onReceived(IILcom/transsion/socket/pkgdata/SocketData;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onError(I)V

    :goto_1
    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->j(Lcom/transsion/vishatransfer/socket/TransferSocketClient;I)V

    return-void

    :cond_5
    instance-of p1, p2, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    check-cast p2, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;

    invoke-virtual {p2}, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;->getType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->j(Lcom/transsion/vishatransfer/socket/TransferSocketClient;I)V

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-virtual {p2}, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;->getPhase()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->i(Lcom/transsion/vishatransfer/socket/TransferSocketClient;I)V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onError(I)V

    :goto_2
    return-void
.end method

.method public onSocketTransferCompleted(Lcom/transsion/socket/SocketTransferChannel;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/socket/SocketDataTransfer;->onSocketTransferCompleted(Lcom/transsion/socket/SocketTransferChannel;Z)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onError(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onDisconnected()V

    :goto_0
    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->release()V

    return-void
.end method

.method public onSupportAsyncSendData()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
