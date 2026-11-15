.class public Lcom/transsion/socket/internal/SocketHeartBeat;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;,
        Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SocketHeartBeat"


# instance fields
.field final STEP_INTERNAL:I

.field mHeartBeatSocketDataTransfer:Lcom/transsion/socket/SocketDataTransfer;

.field mHeartBeatTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSocketClient:Lcom/transsion/socket/SocketClient;

.field mSocketHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;

.field mSocketWatchdog:Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;

.field mTimeOut:J

.field mWatchdog:Lcom/transsion/socket/internal/Watchdog;


# direct methods
.method public constructor <init>(Lcom/transsion/socket/SocketClient;JLcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->STEP_INTERNAL:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatTimeList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mSocketHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;

    iput-object p1, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mSocketClient:Lcom/transsion/socket/SocketClient;

    iput-wide p2, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mTimeOut:J

    new-instance p1, Lcom/transsion/socket/internal/SocketHeartBeat$1;

    invoke-direct {p1, p0}, Lcom/transsion/socket/internal/SocketHeartBeat$1;-><init>(Lcom/transsion/socket/internal/SocketHeartBeat;)V

    iput-object p1, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mSocketWatchdog:Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;

    new-instance p4, Lcom/transsion/socket/internal/Watchdog;

    const-wide/16 v0, 0x5

    div-long/2addr p2, v0

    const/4 v0, 0x1

    invoke-direct {p4, p2, p3, p1, v0}, Lcom/transsion/socket/internal/Watchdog;-><init>(JLcom/transsion/socket/internal/Watchdog$ISocketWatchdog;Z)V

    iput-object p4, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mWatchdog:Lcom/transsion/socket/internal/Watchdog;

    return-void
.end method


# virtual methods
.method public getHeartSocketDataTransfer()Lcom/transsion/socket/SocketDataTransfer;
    .locals 2

    iget-object v0, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatSocketDataTransfer:Lcom/transsion/socket/SocketDataTransfer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/socket/internal/SocketHeartBeat$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/socket/internal/SocketHeartBeat$2;-><init>(Lcom/transsion/socket/internal/SocketHeartBeat;Z)V

    iput-object v0, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatSocketDataTransfer:Lcom/transsion/socket/SocketDataTransfer;

    :cond_0
    iget-object p0, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatSocketDataTransfer:Lcom/transsion/socket/SocketDataTransfer;

    return-object p0
.end method

.method public notifySocketError(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mSocketHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mSocketClient:Lcom/transsion/socket/SocketClient;

    invoke-interface {v0, v1, p1}, Lcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;->onSocketError(Lcom/transsion/socket/SocketClient;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/socket/internal/SocketHeartBeat;->quit()V

    return-void
.end method

.method public quit()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mWatchdog:Lcom/transsion/socket/internal/Watchdog;

    invoke-virtual {p0}, Lcom/transsion/socket/internal/Watchdog;->quit()V

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatTimeList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mHeartBeatTimeList:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/socket/internal/SocketHeartBeat;->mWatchdog:Lcom/transsion/socket/internal/Watchdog;

    invoke-virtual {p0}, Lcom/transsion/socket/internal/Watchdog;->run()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
