.class public final Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2$1$fileMessage$1;
.super Lcom/transsion/vishatransfer/socket/TransferMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "com/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2$1$fileMessage$1",
        "Lcom/transsion/vishatransfer/socket/TransferMessage;",
        "",
        "position",
        "Lzfb;",
        "progress",
        "(J)V",
        "complete",
        "()V",
        "beforeSend",
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
.field final synthetic $socketData:Lcom/transsion/socket/pkgdata/SocketFileData;


# direct methods
.method public constructor <init>(Lcom/transsion/socket/pkgdata/SocketFileData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2$1$fileMessage$1;->$socketData:Lcom/transsion/socket/pkgdata/SocketFileData;

    invoke-direct {p0}, Lcom/transsion/vishatransfer/socket/TransferMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeSend()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$setCurrentFileSize$p(J)V

    return-void
.end method

.method public complete()V
    .locals 8

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getSocketClientListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->getPhase()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->getType()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager$sendFileDataToServer$1$2$1$fileMessage$1;->$socketData:Lcom/transsion/socket/pkgdata/SocketFileData;

    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onReceived(IILcom/transsion/socket/pkgdata/SocketData;)V

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$setCurrentFileSize$p(J)V

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getFileNum()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->setFileNum(I)V

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getSocketClientListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getCurrentFileSize$p()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onProgress(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getSendFileSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getTotalFileSize()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getFileNum()I

    move-result v4

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getTotalNum()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConnectClientManager_sendFileDataToServer_complete sendFileSize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " totalFileSize "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " fileNum "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " totalNum"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "socket_debug"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getFileNum()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getTotalNum()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->resetPercent()V

    :cond_2
    return-void
.end method

.method public progress(J)V
    .locals 5

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getCurrentFileSize$p()J

    move-result-wide v0

    sub-long v0, p1, v0

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getSendFileSize()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->setSendFileSize(J)V

    invoke-static {p1, p2}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$setCurrentFileSize$p(J)V

    invoke-static {}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->access$getSocketClientListenerCallback$p()Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onProgress(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getSendFileSize()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getTotalFileSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getFileNum()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getTotalNum()I

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectClientManager_sendFileDataToServer_progress sendFileSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " totalFileSize "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " fileNum "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " totalNum"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "socket_debug"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
