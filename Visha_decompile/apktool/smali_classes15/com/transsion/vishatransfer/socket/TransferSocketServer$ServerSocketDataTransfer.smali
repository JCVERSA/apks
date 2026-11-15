.class Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;
.super Lcom/transsion/socket/SocketDataTransfer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishatransfer/socket/TransferSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerSocketDataTransfer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/socket/SocketDataTransfer;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onBeginReceiveSocketData(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/socket/SocketDataTransfer;->onBeginReceiveSocketData(Lcom/transsion/socket/SocketTransferChannel;)V

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->g(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/socket/SocketTrafficStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTrafficStats;->startTrafficStats()V

    return-void
.end method

.method public onEndReceiveOneSocketData(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/socket/SocketDataTransfer;->onEndReceiveOneSocketData(Lcom/transsion/socket/SocketTransferChannel;)V

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->g(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/socket/SocketTrafficStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTrafficStats;->stopTrafficStats()V

    return-void
.end method

.method public onReadySendSocketData(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {v0, p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->n(Lcom/transsion/vishatransfer/socket/TransferSocketServer;Lcom/transsion/socket/SocketTransferChannel;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onAccept()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->g(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/socket/SocketTrafficStats;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->h(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/socket/SocketTransferChannel;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/socket/SocketTrafficStats;->addSocketTransferChannel(Lcom/transsion/socket/SocketTransferChannel;)V

    return-void
.end method

.method public onReceiveFinish()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {v0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onReceiveFinish()V

    :cond_0
    return-void
.end method

.method public onReceiveSocketData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketData;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/transsion/socket/SocketDataTransfer;->onReceiveSocketData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketData;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->e(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x3

    if-eqz p1, :cond_7

    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->c(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Z

    move-result p1

    if-nez p1, :cond_3

    move-object p1, p2

    check-cast p1, Lcom/transsion/socket/pkgdata/SocketFileData;

    iget-object v2, p1, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    iget-object p1, p1, Lcom/transsion/socket/pkgdata/SocketFileData;->mSendFile:Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object p1, p1, Lcom/transsion/socket/pkgdata/SocketFileData;->mReceiveDir:Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onProgress(J)V

    :cond_3
    const-class p1, Lcom/transsion/socket/pkgdata/SocketFileData;

    goto :goto_1

    :cond_4
    const-class p1, Lcom/transsion/socket/pkgdata/SocketStringData;

    goto :goto_1

    :cond_5
    const-class p1, Lcom/transsion/socket/pkgdata/SocketCodeData;

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {v1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->d(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {v2}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->e(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)I

    move-result v2

    invoke-interface {p1, v1, v2, p2}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onReceived(IILcom/transsion/socket/pkgdata/SocketData;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onError(I)V

    :goto_2
    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->l(Lcom/transsion/vishatransfer/socket/TransferSocketServer;I)V

    return-void

    :cond_7
    instance-of p1, p2, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    check-cast p2, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;

    invoke-virtual {p2}, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;->getType()I

    move-result v1

    invoke-static {p1, v1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->l(Lcom/transsion/vishatransfer/socket/TransferSocketServer;I)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-virtual {p2}, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;->getPhase()I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->k(Lcom/transsion/vishatransfer/socket/TransferSocketServer;I)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->e(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)I

    move-result p1

    if-ne p1, v2, :cond_9

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0, v0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->i(Lcom/transsion/vishatransfer/socket/TransferSocketServer;Z)V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onError(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onSocketTransferCompleted(Lcom/transsion/socket/SocketTransferChannel;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/socket/SocketDataTransfer;->onSocketTransferCompleted(Lcom/transsion/socket/SocketTransferChannel;Z)V

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-virtual {v0}, Lcom/transsion/socket/SocketServer;->quit()V

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {v0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onDisconnected()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p2}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->g(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/socket/SocketTrafficStats;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p2}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->g(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/socket/SocketTrafficStats;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/socket/SocketTrafficStats;->stopTrafficStats()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;->this$0:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->getErrorCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onError(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSupportAsyncSendData()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public socketTimeOut()I
    .locals 0

    const/16 p0, 0x2710

    return p0
.end method
