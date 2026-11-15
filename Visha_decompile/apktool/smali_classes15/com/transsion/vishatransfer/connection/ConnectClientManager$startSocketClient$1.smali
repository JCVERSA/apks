.class public final Lcom/transsion/vishatransfer/connection/ConnectClientManager$startSocketClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/connection/ConnectClientManager;->startSocketClient(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004J)\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "com/transsion/vishatransfer/connection/ConnectClientManager$startSocketClient$1",
        "Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;",
        "Lzfb;",
        "onCreateSuccess",
        "()V",
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


# instance fields
.field final synthetic $ipAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$startSocketClient$1;->$ipAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateSuccess()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getSocketClientListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onCreateSuccess()V

    :cond_0
    invoke-static {}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->getInstance()Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$startSocketClient$1;->$ipAddress:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->openHeartBeat(Ljava/lang/String;)V

    const-string p0, "socket_debug"

    const-string v0, "ConnectClientManager_startSocketClient_onCreateSuccess"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getSocketClientListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onDisconnected()V

    :cond_0
    const-string p0, "socket_debug"

    const-string v0, "ConnectClientManager_startSocketClient_onDisconnected"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(I)V
    .locals 0

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$isReceiveFinished$p()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getSocketClientListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onError(I)V

    :cond_1
    const-string p0, "socket_debug"

    const-string p1, "ConnectClientManager_startSocketClient_onError"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgress(J)V
    .locals 0

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getSocketClientListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onProgress(J)V

    :cond_0
    return-void
.end method

.method public onReceiveFinish()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getSocketClientListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onReceiveFinish()V

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$setReceiveFinished$p(Z)V

    const-string p0, "socket_debug"

    const-string v0, "ConnectClientManager_startSocketClient_onReceiveFinish"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceived(IILcom/transsion/socket/pkgdata/SocketData;)V
    .locals 0

    const/16 p0, 0xa

    if-ne p1, p0, :cond_0

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

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getSocketClientListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;->onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
