.class Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/socket/internal/SocketStream$ISocketPackage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/socket/SocketTransferChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocketPackageImpl"
.end annotation


# instance fields
.field mSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/transsion/socket/SocketTransferChannel;


# direct methods
.method public constructor <init>(Lcom/transsion/socket/SocketTransferChannel;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->mSocket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public mHandleSocketPackage(Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V
    .locals 2

    iget-byte v0, p1, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mClazzType:B

    const/16 v1, -0x7f

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->p(Lcom/transsion/socket/SocketTransferChannel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/transsion/socket/SocketTransferChannel;->n(Lcom/transsion/socket/SocketTransferChannel;J)V

    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {p1}, Lcom/transsion/socket/SocketTransferChannel;->r(Lcom/transsion/socket/SocketTransferChannel;)V

    sget-boolean p1, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_HEARTBEAT:Z

    if-eqz p1, :cond_0

    const-string p1, "SocketTransferChannel"

    const-string v0, "receive and reply heart "

    invoke-static {p1, v0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    sget-object p1, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->HEART_BEAT_PACKAGE:Lcom/transsion/socket/internal/SocketStream$SocketPackage;

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->sendSocketPackage(Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v0}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/socket/SocketDataTransfer;->receiveSocketData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V

    :cond_2
    return-void
.end method

.method public onHandleSocketData(SLjava/io/DataInputStream;)V
    .locals 5

    invoke-static {p1}, Lcom/transsion/socket/pkgdata/SocketData;->getSocketDataClass(S)Lcom/transsion/socket/pkgdata/SocketData;

    move-result-object v0

    const-string v1, "SocketTransferChannel"

    if-nez v0, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleSocketData - clazzType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/transsion/socket/SocketMain;->DEBUG_DATA_TRANSFER:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "::::"

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleSocketData - clazzType0:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v2}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v2}, Lcom/transsion/socket/SocketTransferChannel;->p(Lcom/transsion/socket/SocketTransferChannel;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/transsion/socket/pkgdata/SocketFileData;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {v2}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v2, v4}, Lcom/transsion/socket/SocketDataTransfer;->beginReceiveSocketData(Lcom/transsion/socket/SocketTransferChannel;)V

    :cond_2
    invoke-virtual {v0, p2}, Lcom/transsion/socket/pkgdata/SocketData;->readData(Ljava/io/DataInputStream;)V

    sget-boolean p2, Lcom/transsion/socket/SocketMain;->DEBUG_DATA_TRANSFER:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleSocketData - clazzType1:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->ismReady()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {p1}, Lcom/transsion/socket/SocketTransferChannel;->a(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of p1, v0, Lcom/transsion/socket/pkgdata/SocketFileData;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {p1}, Lcom/transsion/socket/SocketTransferChannel;->a(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;->OneDataTransferComplete()V

    :cond_4
    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {p1}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {p1}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/socket/SocketDataTransfer;->receiveSocketData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketData;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {p1}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {p1}, Lcom/transsion/socket/SocketTransferChannel;->p(Lcom/transsion/socket/SocketTransferChannel;)Z

    move-result p1

    if-nez p1, :cond_7

    instance-of p1, v0, Lcom/transsion/socket/pkgdata/SocketFileData;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {p1}, Lcom/transsion/socket/SocketTransferChannel;->k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {p1, p2}, Lcom/transsion/socket/SocketDataTransfer;->endReceiveOneSocketData(Lcom/transsion/socket/SocketTransferChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    sget-boolean p2, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_PRINT_TRACE:Z

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    iget-object p2, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/socket/SocketTransferChannel;->m(Lcom/transsion/socket/SocketTransferChannel;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "e-msg:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    invoke-static {p2}, Lcom/transsion/socket/SocketTransferChannel;->c(Lcom/transsion/socket/SocketTransferChannel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;->this$0:Lcom/transsion/socket/SocketTransferChannel;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->socketError(I)V

    :cond_7
    :goto_2
    return-void
.end method
