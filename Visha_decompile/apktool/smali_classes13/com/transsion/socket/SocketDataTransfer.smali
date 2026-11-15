.class public Lcom/transsion/socket/SocketDataTransfer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_CHECK_HEART_TIME:I = 0xfa0

.field static final DEFAULT_TIME_OUT:I = 0x2710

.field static final TAG:Ljava/lang/String; = "SocketDataTransfer"


# instance fields
.field isHeartBeat:Z

.field mIsSocketServer:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/socket/SocketDataTransfer;->mIsSocketServer:Z

    invoke-virtual {p0}, Lcom/transsion/socket/SocketDataTransfer;->isHeartBeat()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/socket/SocketDataTransfer;->isHeartBeat:Z

    return-void
.end method


# virtual methods
.method public C_handleSockConnectData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V
    .locals 1

    iget-byte p0, p2, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/socket/pkgdata/SocketConnectData;->isSignalRight()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/socket/pkgdata/SocketConnectData;->responseSYNData()Lcom/transsion/socket/pkgdata/SocketConnectData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->notifyChannelReady()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->notifyConnectFail()V

    return-void
.end method

.method public S_handleSockConnectData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V
    .locals 1

    iget-byte p0, p2, Lcom/transsion/socket/pkgdata/SocketConnectData;->mStatus:B

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->notifyConnectFail()V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/socket/pkgdata/SocketConnectData;->isSignalRight()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->notifyChannelReady()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/socket/pkgdata/SocketConnectData;->isNeedHeat()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-boolean p0, p2, Lcom/transsion/socket/pkgdata/SocketConnectData;->isHeartReq:Z

    invoke-virtual {p1, p0}, Lcom/transsion/socket/SocketTransferChannel;->setHeartBeat(Z)V

    :cond_3
    invoke-virtual {p1, p2}, Lcom/transsion/socket/SocketTransferChannel;->notifyConnectReq(Lcom/transsion/socket/pkgdata/SocketConnectData;)V

    return-void
.end method

.method public beforeThreadCreate(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    return-void
.end method

.method public final beginReceiveSocketData(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketDataTransfer;->onBeginReceiveSocketData(Lcom/transsion/socket/SocketTransferChannel;)V

    return-void
.end method

.method public final endReceiveOneSocketData(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketDataTransfer;->onEndReceiveOneSocketData(Lcom/transsion/socket/SocketTransferChannel;)V

    return-void
.end method

.method public getConnectData(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/pkgdata/SocketConnectData;
    .locals 1

    new-instance p1, Lcom/transsion/socket/pkgdata/SocketConnectData;

    invoke-direct {p1}, Lcom/transsion/socket/pkgdata/SocketConnectData;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/socket/SocketDataTransfer;->isHeartBeat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketDataTransfer;->getVersion()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/socket/pkgdata/SocketConnectData;->setVersion(I)Lcom/transsion/socket/pkgdata/SocketConnectData;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/socket/pkgdata/SocketConnectData;->setHeartReq(Z)Lcom/transsion/socket/pkgdata/SocketConnectData;

    :cond_0
    return-object p1
.end method

.method public getVersion()I
    .locals 0

    invoke-static {}, Lcom/transsion/socket/SocketMain;->getSocketVersion()I

    move-result p0

    return p0
.end method

.method public handleSocketClientBlockData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketBlockData;)V
    .locals 1

    iget-byte p0, p2, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->checkBlockDataRefAndQuit()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/socket/pkgdata/SocketBlockData;->requestBlockData()Lcom/transsion/socket/pkgdata/SocketBlockData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    :goto_0
    return-void
.end method

.method public handleSocketServerBlockData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketBlockData;)V
    .locals 1

    iget-byte p0, p2, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/socket/pkgdata/SocketBlockData;->responseFinish()Lcom/transsion/socket/pkgdata/SocketBlockData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/socket/pkgdata/SocketBlockData;->responseInitRequest()Lcom/transsion/socket/pkgdata/SocketBlockData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    :goto_0
    return-void
.end method

.method public isHeartBeat()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBeginReceiveSocketData(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    return-void
.end method

.method public onEndReceiveOneSocketData(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    return-void
.end method

.method public onReadySendSocketData(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    return-void
.end method

.method public onReceiveEmptyPackageData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V
    .locals 0

    sget-boolean p0, Lcom/transsion/socket/SocketMain;->DEBUG_DATA_TRANSFER:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "receiveEmptyPackageData mClazzType:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p2, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mClazzType:B

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mSize:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SocketDataTransfer"

    invoke-static {p1, p0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceiveErrorCodePackageData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketCodeData;)V
    .locals 0

    sget-boolean p0, Lcom/transsion/socket/SocketMain;->DEBUG_DATA_TRANSFER:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onReceiveErrorCodePackageData type:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/transsion/socket/pkgdata/SocketCodeData;->mCode:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SocketDataTransfer"

    invoke-static {p1, p0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceiveFinish()V
    .locals 0

    return-void
.end method

.method public onReceiveSocketData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketData;)V
    .locals 0

    return-void
.end method

.method public onSocketHeartBeatTimeOut(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    sget-boolean p0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_HEARTBEAT:Z

    if-eqz p0, :cond_0

    const-string p0, "SocketDataTransfer"

    const-string p1, "onSocketHeartBeatTimeOut channel:"

    invoke-static {p0, p1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSocketTransferCompleted(Lcom/transsion/socket/SocketTransferChannel;Z)V
    .locals 0

    return-void
.end method

.method public onSupportAsyncSendData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final receiveSocketData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->toSocketData()Lcom/transsion/socket/pkgdata/SocketData;

    move-result-object v0

    .line 2
    iget-byte v1, p2, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mClazzType:B

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/transsion/socket/SocketDataTransfer;->mIsSocketServer:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x7f

    if-ne v1, v0, :cond_0

    .line 4
    sget-object p0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->HEART_BEAT_PACKAGE:Lcom/transsion/socket/internal/SocketStream$SocketPackage;

    invoke-virtual {p1, p0}, Lcom/transsion/socket/SocketTransferChannel;->sendSocketPackage(Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/socket/SocketDataTransfer;->onReceiveEmptyPackageData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/socket/SocketDataTransfer;->receiveSocketData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketData;)V

    return-void
.end method

.method public final receiveSocketData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketData;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " receiveSocketData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocketDataTransfer"

    invoke-static {v1, v0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/transsion/socket/pkgdata/SocketData;->onClazzType()B

    move-result v0

    const/16 v1, -0x7d

    if-ne v0, v1, :cond_2

    .line 9
    check-cast p2, Lcom/transsion/socket/pkgdata/SocketConnectData;

    .line 10
    iget-boolean v0, p0, Lcom/transsion/socket/SocketDataTransfer;->mIsSocketServer:Z

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/transsion/socket/SocketDataTransfer;->S_handleSockConnectData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/socket/SocketDataTransfer;->C_handleSockConnectData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V

    :goto_0
    return-void

    .line 13
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/socket/pkgdata/SocketData;->isBlockData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    check-cast p2, Lcom/transsion/socket/pkgdata/SocketBlockData;

    .line 15
    iget-boolean v0, p0, Lcom/transsion/socket/SocketDataTransfer;->mIsSocketServer:Z

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/transsion/socket/SocketDataTransfer;->handleSocketServerBlockData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketBlockData;)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/socket/SocketDataTransfer;->handleSocketClientBlockData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketBlockData;)V

    :goto_1
    return-void

    .line 18
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/socket/pkgdata/SocketData;->onClazzType()B

    move-result v0

    const/16 v1, -0x73

    if-ne v0, v1, :cond_5

    .line 19
    check-cast p2, Lcom/transsion/socket/pkgdata/SocketCodeData;

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/transsion/socket/SocketDataTransfer;->onReceiveErrorCodePackageData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketCodeData;)V

    return-void

    .line 21
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/socket/pkgdata/SocketData;->onClazzType()B

    move-result v0

    const/16 v1, -0x80

    if-ne v0, v1, :cond_8

    .line 22
    check-cast p2, Lcom/transsion/socket/pkgdata/SocketEndData;

    .line 23
    iget-byte v0, p2, Lcom/transsion/socket/pkgdata/SocketEndData;->mFlag:B

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 24
    iput-byte v1, p2, Lcom/transsion/socket/pkgdata/SocketEndData;->mFlag:B

    .line 25
    invoke-virtual {p1, p2}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    .line 26
    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->flagWaitingSocketEnd()V

    return-void

    :cond_6
    if-ne v0, v1, :cond_7

    const/4 v0, 0x2

    .line 27
    iput-byte v0, p2, Lcom/transsion/socket/pkgdata/SocketEndData;->mFlag:B

    .line 28
    invoke-virtual {p1, p2}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    .line 29
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/socket/SocketDataTransfer;->onReceiveFinish()V

    return-void

    .line 30
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/transsion/socket/SocketDataTransfer;->onReceiveSocketData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketData;)V

    return-void
.end method

.method public serverCheckHeartBeatTime()I
    .locals 0

    const/16 p0, 0xfa0

    return p0
.end method

.method public socketTimeOut()I
    .locals 0

    const/16 p0, 0x2710

    return p0
.end method
