.class public Lcom/transsion/socket/SocketTrafficStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;


# static fields
.field public static final STATS_ALL:I = 0x7

.field public static final STATS_RECEIVE_CHANNEL:I = 0x2

.field public static final STATS_SEND_CHANNEL:I = 0x1

.field public static final STATS_SEND_PLUS_RECEIVE_CHANNEL:I = 0x4

.field static final TAG:Ljava/lang/String; = "SocketTrafficStats"


# instance fields
.field private LOCK:Ljava/lang/Object;

.field private final MILLIS_SECONDS:J

.field protected mFirstReceiveTraffic:J

.field protected mFirstSendTraffic:J

.field protected mFirstTrafficTime:J

.field public mInternalRun:Ljava/lang/Runnable;

.field private final mIntervalDuration:J

.field private mIntervalReceiveTraffic:J

.field private mIntervalSendTraffic:J

.field private mIntervalTrafficTime:J

.field protected mStarting:Z

.field private final mStatsType:I

.field private mTemp:[J

.field private mTransferChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/socket/SocketTransferChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/socket/SocketTrafficStats;->mTransferChannels:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/socket/SocketTrafficStats;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTrafficStats;->mStarting:Z

    new-instance v0, Lur9;

    invoke-direct {v0, p0}, Lur9;-><init>(Lcom/transsion/socket/SocketTrafficStats;)V

    iput-object v0, p0, Lcom/transsion/socket/SocketTrafficStats;->mInternalRun:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/transsion/socket/SocketTrafficStats;->mTemp:[J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/transsion/socket/SocketTrafficStats;->MILLIS_SECONDS:J

    iput-wide p1, p0, Lcom/transsion/socket/SocketTrafficStats;->mIntervalDuration:J

    iput p3, p0, Lcom/transsion/socket/SocketTrafficStats;->mStatsType:I

    return-void
.end method

.method public static synthetic a(Lcom/transsion/socket/SocketTrafficStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/socket/SocketTrafficStats;->lambda$new$1()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/socket/SocketTrafficStats;Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/socket/SocketTrafficStats;->lambda$addSocketTransferChannel$0(Lcom/transsion/socket/SocketTransferChannel;)V

    return-void
.end method

.method private synthetic lambda$addSocketTransferChannel$0(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/socket/SocketTrafficStats;->mTransferChannels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/transsion/socket/SocketTransferChannel;->setDataCallback(Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;)V

    iget-object p0, p0, Lcom/transsion/socket/SocketTrafficStats;->mTransferChannels:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTrafficStats;->doCalc()V

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTrafficStats;->doInterval()V

    return-void
.end method

.method private resetReceiveTraffic()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/socket/SocketTrafficStats;->mTransferChannels:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v0}, Lcom/transsion/socket/SocketTransferChannel;->resetReceiveTraffic()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetSendTraffic()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/socket/SocketTrafficStats;->mTransferChannels:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v0}, Lcom/transsion/socket/SocketTransferChannel;->resetSendTraffic()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toKB(J)J
    .locals 2

    const-wide/16 v0, 0x400

    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public OneDataTransferComplete()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTrafficStats;->doCalc()V

    return-void
.end method

.method public addSocketTransferChannel(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/socket/SocketMain;->SOCKET_HELP_EXECUTOR:Lcom/transsion/socket/internal/LooperExecutor;

    new-instance v1, Lvr9;

    invoke-direct {v1, p0, p1}, Lvr9;-><init>(Lcom/transsion/socket/SocketTrafficStats;Lcom/transsion/socket/SocketTransferChannel;)V

    invoke-virtual {v0, v1}, Lcom/transsion/socket/internal/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public doCalc()V
    .locals 22

    move-object/from16 v7, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mIntervalTrafficTime:J

    sub-long v0, v8, v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget-wide v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mFirstTrafficTime:J

    sub-long v0, v8, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iget v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mStatsType:I

    and-int/lit8 v0, v0, 0x5

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/socket/SocketTrafficStats;->getCurrentChannelsSendTraffic()J

    move-result-wide v3

    move-wide v14, v3

    goto :goto_0

    :cond_0
    move-wide v14, v1

    :goto_0
    iget v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mStatsType:I

    and-int/lit8 v0, v0, 0x6

    if-lez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/socket/SocketTrafficStats;->getCurrentChannelsReceiveTraffic()J

    move-result-wide v1

    :cond_1
    move-wide v5, v1

    iget v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mStatsType:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const-wide/16 v16, 0x3e8

    if-ne v0, v1, :cond_2

    iget-wide v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mIntervalSendTraffic:J

    sub-long v0, v14, v0

    mul-long v0, v0, v16

    div-long v1, v0, v10

    iget-wide v3, v7, Lcom/transsion/socket/SocketTrafficStats;->mFirstSendTraffic:J

    sub-long v18, v14, v3

    mul-long v3, v18, v16

    div-long/2addr v3, v12

    move-object/from16 v0, p0

    move-wide/from16 v20, v8

    move-wide v8, v5

    move-wide/from16 v5, v18

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/socket/SocketTrafficStats;->onSendSpeedUpdate(JJJ)V

    goto :goto_1

    :cond_2
    move-wide/from16 v20, v8

    move-wide v8, v5

    :goto_1
    iget v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mStatsType:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-wide v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mIntervalReceiveTraffic:J

    sub-long v5, v8, v0

    mul-long v5, v5, v16

    div-long v1, v5, v10

    iget-wide v3, v7, Lcom/transsion/socket/SocketTrafficStats;->mFirstReceiveTraffic:J

    sub-long v5, v8, v3

    mul-long v3, v5, v16

    div-long/2addr v3, v12

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/socket/SocketTrafficStats;->onReceiveSpeedUpdate(JJJ)V

    :cond_3
    iget v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mStatsType:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    add-long v5, v14, v8

    iget-wide v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mIntervalSendTraffic:J

    iget-wide v2, v7, Lcom/transsion/socket/SocketTrafficStats;->mIntervalReceiveTraffic:J

    add-long/2addr v0, v2

    iget-wide v2, v7, Lcom/transsion/socket/SocketTrafficStats;->mFirstReceiveTraffic:J

    move-wide/from16 v18, v8

    iget-wide v8, v7, Lcom/transsion/socket/SocketTrafficStats;->mFirstSendTraffic:J

    add-long/2addr v2, v8

    sub-long v0, v5, v0

    mul-long v0, v0, v16

    div-long v8, v0, v10

    sub-long/2addr v5, v2

    mul-long v16, v16, v5

    div-long v3, v16, v12

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/socket/SocketTrafficStats;->onSendPlusReceiveSpeedUpdate(JJJ)V

    goto :goto_2

    :cond_4
    move-wide/from16 v18, v8

    :goto_2
    iget-wide v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mIntervalSendTraffic:J

    cmp-long v0, v0, v14

    if-eqz v0, :cond_5

    iput-wide v14, v7, Lcom/transsion/socket/SocketTrafficStats;->mIntervalSendTraffic:J

    :cond_5
    iget-wide v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mIntervalReceiveTraffic:J

    cmp-long v0, v0, v18

    if-eqz v0, :cond_6

    move-wide/from16 v1, v18

    iput-wide v1, v7, Lcom/transsion/socket/SocketTrafficStats;->mIntervalReceiveTraffic:J

    :cond_6
    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/transsion/socket/SocketTrafficStats;->mIntervalTrafficTime:J

    return-void
.end method

.method public doInterval()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/socket/SocketTrafficStats;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/socket/SocketTrafficStats;->mStarting:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/transsion/socket/SocketMain;->SOCKET_HELP_EXECUTOR:Lcom/transsion/socket/internal/LooperExecutor;

    iget-object v2, p0, Lcom/transsion/socket/SocketTrafficStats;->mInternalRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/transsion/socket/internal/LooperExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/transsion/socket/SocketTrafficStats;->mInternalRun:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/transsion/socket/SocketTrafficStats;->mIntervalDuration:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/socket/internal/LooperExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentChannelsReceiveTraffic()J
    .locals 4

    iget-object p0, p0, Lcom/transsion/socket/SocketTrafficStats;->mTransferChannels:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v2}, Lcom/transsion/socket/SocketTransferChannel;->getCurrentReceiveTraffic()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getCurrentChannelsSendTraffic()J
    .locals 4

    iget-object p0, p0, Lcom/transsion/socket/SocketTrafficStats;->mTransferChannels:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v2}, Lcom/transsion/socket/SocketTransferChannel;->getCurrentSendTraffic()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getReceiveTrafficBytes()J
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTrafficStats;->getCurrentChannelsReceiveTraffic()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/socket/SocketTrafficStats;->mFirstReceiveTraffic:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSendTrafficBytes()J
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTrafficStats;->getCurrentChannelsSendTraffic()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/socket/SocketTrafficStats;->mFirstSendTraffic:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public onReceiveSpeedUpdate(JJJ)V
    .locals 1

    sget-boolean p0, Lcom/transsion/socket/SocketMain;->DEBUG_TRANSFER_SPEED:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceiveSpeedUpdate:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",averageSpeedPerSecond:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", totalTrafficBytes:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SocketTrafficStats"

    invoke-static {p1, p0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSendPlusReceiveSpeedUpdate(JJJ)V
    .locals 1

    sget-boolean p0, Lcom/transsion/socket/SocketMain;->DEBUG_TRANSFER_SPEED:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSendPlusReceiveSpeedUpdate:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",averageSpeedPerSecond:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", totalTrafficBytes:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SocketTrafficStats"

    invoke-static {p1, p0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSendSpeedUpdate(JJJ)V
    .locals 1

    sget-boolean p0, Lcom/transsion/socket/SocketMain;->DEBUG_TRANSFER_SPEED:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSendSpeedUpdate:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",averageSpeedPerSecond:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", totalTrafficBytes:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SocketTrafficStats"

    invoke-static {p1, p0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startTrafficStats()V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/socket/SocketTrafficStats;->resetReceiveTraffic()V

    invoke-direct {p0}, Lcom/transsion/socket/SocketTrafficStats;->resetSendTraffic()V

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTrafficStats;->getCurrentChannelsReceiveTraffic()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/socket/SocketTrafficStats;->mFirstReceiveTraffic:J

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTrafficStats;->getCurrentChannelsSendTraffic()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/socket/SocketTrafficStats;->mFirstSendTraffic:J

    iget-wide v2, p0, Lcom/transsion/socket/SocketTrafficStats;->mFirstReceiveTraffic:J

    iput-wide v2, p0, Lcom/transsion/socket/SocketTrafficStats;->mIntervalReceiveTraffic:J

    iput-wide v0, p0, Lcom/transsion/socket/SocketTrafficStats;->mIntervalSendTraffic:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/socket/SocketTrafficStats;->mFirstTrafficTime:J

    iput-wide v0, p0, Lcom/transsion/socket/SocketTrafficStats;->mIntervalTrafficTime:J

    const-string v0, "SocketTrafficStats"

    const-string v1, " startTrafficStats: mIntervalReceiveTraffic = %s , mFirstTrafficTime = %s "

    iget-wide v2, p0, Lcom/transsion/socket/SocketTrafficStats;->mIntervalReceiveTraffic:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/transsion/socket/SocketTrafficStats;->mFirstTrafficTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/socket/SocketTrafficStats;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/socket/SocketTrafficStats;->mStarting:Z

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTrafficStats;->doInterval()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopTrafficStats()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/socket/SocketTrafficStats;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/socket/SocketTrafficStats;->mStarting:Z

    sget-object v1, Lcom/transsion/socket/SocketMain;->SOCKET_HELP_EXECUTOR:Lcom/transsion/socket/internal/LooperExecutor;

    iget-object p0, p0, Lcom/transsion/socket/SocketTrafficStats;->mInternalRun:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Lcom/transsion/socket/internal/LooperExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "SocketTrafficStats"

    const-string v0, "stopTrafficStats: "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
