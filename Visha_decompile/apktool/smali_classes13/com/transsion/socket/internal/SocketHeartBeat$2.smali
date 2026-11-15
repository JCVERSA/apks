.class Lcom/transsion/socket/internal/SocketHeartBeat$2;
.super Lcom/transsion/socket/SocketDataTransfer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/socket/internal/SocketHeartBeat;->getHeartSocketDataTransfer()Lcom/transsion/socket/SocketDataTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/socket/internal/SocketHeartBeat;


# direct methods
.method public constructor <init>(Lcom/transsion/socket/internal/SocketHeartBeat;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/internal/SocketHeartBeat$2;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    invoke-direct {p0, p2}, Lcom/transsion/socket/SocketDataTransfer;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public isHeartBeat()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onReceiveEmptyPackageData(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V
    .locals 2

    sget-boolean p1, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_HEARTBEAT:Z

    if-eqz p1, :cond_0

    const-string p1, "SocketHeartBeat"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiveSocketData=========mClazzType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p2, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mClazzType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-byte p1, p2, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->mClazzType:B

    const/16 p2, -0x7f

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/transsion/socket/internal/SocketHeartBeat$2;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    iget-object p1, p1, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatTimeList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/socket/internal/SocketHeartBeat$2;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    iget-object p0, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatTimeList:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public onSocketTransferCompleted(Lcom/transsion/socket/SocketTransferChannel;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/socket/internal/SocketHeartBeat$2;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/socket/internal/SocketHeartBeat;->notifySocketError(I)V

    :cond_0
    return-void
.end method
