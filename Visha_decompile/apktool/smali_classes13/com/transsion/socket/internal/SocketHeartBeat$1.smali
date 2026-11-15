.class Lcom/transsion/socket/internal/SocketHeartBeat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/socket/internal/SocketHeartBeat;-><init>(Lcom/transsion/socket/SocketClient;JLcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/socket/internal/SocketHeartBeat;


# direct methods
.method public constructor <init>(Lcom/transsion/socket/internal/SocketHeartBeat;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/internal/SocketHeartBeat$1;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTimeOut()Z
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/socket/internal/SocketHeartBeat$1;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    iget-wide v3, v2, Lcom/transsion/socket/internal/SocketHeartBeat;->mTimeOut:J

    sub-long/2addr v0, v3

    iget-object v2, v2, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatTimeList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/transsion/socket/internal/SocketHeartBeat$1;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    iget-object v3, v3, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatTimeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    iget-object v5, p0, Lcom/transsion/socket/internal/SocketHeartBeat$1;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    iget-object v5, v5, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatTimeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/transsion/socket/internal/SocketHeartBeat$1;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    iget-object v5, v5, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatTimeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/socket/internal/SocketHeartBeat$1;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    iget-object p0, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatTimeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    monitor-exit v2

    return v4

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCallHeartBeat()V
    .locals 3

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_HEARTBEAT:Z

    const-string v1, "SocketHeartBeat"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SocketHeartBeat==count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/socket/internal/SocketHeartBeat$1;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    iget-object v2, v2, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatTimeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/socket/internal/SocketHeartBeat$1;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    iget-object p0, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mSocketClient:Lcom/transsion/socket/SocketClient;

    invoke-virtual {p0}, Lcom/transsion/socket/SocketClient;->getHeatBeatTransferChannel()Lcom/transsion/socket/SocketTransferChannel;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "SocketHeartBeat==socketTransferChannel is null "

    invoke-static {v1, p0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/socket/internal/SocketStream$SocketPackage;->HEART_BEAT_PACKAGE:Lcom/transsion/socket/internal/SocketStream$SocketPackage;

    invoke-virtual {p0, v0}, Lcom/transsion/socket/SocketTransferChannel;->sendSocketPackage(Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V

    return-void
.end method

.method public onTimeOut()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/socket/internal/SocketHeartBeat$1;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    iget-object v1, v0, Lcom/transsion/socket/internal/SocketHeartBeat;->mSocketHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/transsion/socket/internal/SocketHeartBeat;->mSocketClient:Lcom/transsion/socket/SocketClient;

    invoke-interface {v1, v0}, Lcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;->onSocketTimeout(Lcom/transsion/socket/SocketClient;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/socket/internal/SocketHeartBeat$1;->this$0:Lcom/transsion/socket/internal/SocketHeartBeat;

    invoke-virtual {p0}, Lcom/transsion/socket/internal/SocketHeartBeat;->quit()V

    return-void
.end method
