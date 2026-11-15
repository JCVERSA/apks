.class public final Lcom/transsion/vishatransfer/connection/ConnectServerManager$socketServerListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishatransfer/connection/ConnectServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J)\u0010\u0011\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "com/transsion/vishatransfer/connection/ConnectServerManager$socketServerListener$1",
        "Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;",
        "Lzfb;",
        "onCreateSuccess",
        "()V",
        "onCreateFail",
        "onAccept",
        "",
        "code",
        "onError",
        "(I)V",
        "onDisconnected",
        "onReceiveFinish",
        "phase",
        "type",
        "Lcom/transsion/socket/pkgdata/SocketData;",
        "data",
        "onReceived",
        "(IILcom/transsion/socket/pkgdata/SocketData;)V",
        "",
        "position",
        "onProgress",
        "(J)V",
        "vishatransferlib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$getSocketServerListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onAccept()V

    :cond_0
    const-string p0, "socket_debug"

    const-string v0, "ConnectServerManager_socketServerListener_onAccept"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateFail()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$getSocketServerListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onCreateFail()V

    :cond_0
    const-string p0, "socket_debug"

    const-string v0, "ConnectServerManager_socketServerListener_onCreateFail"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateSuccess()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$getSocketServerListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onCreateSuccess()V

    :cond_0
    const-string p0, "socket_debug"

    const-string v0, "ConnectServerManager_socketServerListener_onCreateSuccess"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$getSocketServerListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onDisconnected()V

    :cond_0
    const-string p0, "socket_debug"

    const-string v0, "ConnectServerManager_socketServerListener_onDisconnected"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(I)V
    .locals 0

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$isReceiveFinished$p()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$getSocketServerListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onError(I)V

    :cond_1
    const-string p0, "socket_debug"

    const-string p1, "ConnectServerManager_socketServerListener_onError"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgress(J)V
    .locals 7

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$getSocketServerListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onProgress(J)V

    :cond_0
    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$getCurrentFileSize$p()J

    move-result-wide v0

    sub-long v0, p1, v0

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getReceiveFileSize()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->setReceiveFileSize(J)V

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getReceiveFileSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getTotalFileSize()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getFileNum()I

    move-result v4

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getTotalNum()I

    move-result p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectServerManager_onProgress_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " totalFileSize "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " fileNum "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " totalNum "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "socket_debug"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$setCurrentFileSize$p(J)V

    return-void
.end method

.method public onReceiveFinish()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$getSocketServerListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onReceiveFinish()V

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$setReceiveFinished$p(Z)V

    const-string p0, "socket_debug"

    const-string v0, "ConnectServerManager_socketServerListener_onReceiveFinish"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceived(IILcom/transsion/socket/pkgdata/SocketData;)V
    .locals 5

    const/16 p0, 0xa

    if-eq p1, p0, :cond_3

    const/16 p0, 0x32

    if-eq p1, p0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$getSocketServerListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onReceived(IILcom/transsion/socket/pkgdata/SocketData;)V

    :cond_1
    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$setCurrentFileSize$p(J)V

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getFileNum()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->setFileNum(I)V

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$getSocketServerListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$getCurrentFileSize$p()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onProgress(J)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getReceiveFileSize()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getTotalFileSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getFileNum()I

    move-result p3

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getTotalNum()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectServerManager_onReceived_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " totalFileSize "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " fileNum "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " totalNum "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "socket_debug"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getFileNum()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getTotalNum()I

    move-result p2

    if-ne p1, p2, :cond_5

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->sendSocketEndData()V

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->resetPercent()V

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    const-string p1, "null cannot be cast to non-null type com.transsion.socket.pkgdata.SocketStringData"

    invoke-static {p3, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/transsion/socket/pkgdata/SocketStringData;

    invoke-virtual {p3}, Lcom/transsion/socket/pkgdata/SocketStringData;->getValue()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/transsion/vishatransfer/data/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/data/Conversation;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/data/Conversation;->getType()I

    move-result p1

    const p2, 0x186ac

    if-ne p1, p2, :cond_4

    sget-object p1, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getTotalFileSize()J

    move-result-wide p2

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/data/Conversation;->getTotalFileSize()J

    move-result-wide v0

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->setTotalFileSize(J)V

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getTotalNum()I

    move-result p2

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/data/Conversation;->getTotalNum()I

    move-result p0

    add-int/2addr p2, p0

    invoke-virtual {p1, p2}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->setTotalNum(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->access$getSocketServerListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;->onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method
