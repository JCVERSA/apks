.class public Lcom/hunantv/media/player/statistic/FlowDataStatistic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final tag:Ljava/lang/String; = "FlowDataStatistic"


# instance fields
.field private volatile mBindPlayerLifecycle:Z

.field private volatile mLastDataBytes:J

.field private mLocker:Ljava/lang/Object;

.field private volatile mLogTag:Ljava/lang/String;

.field private volatile mStaticIntervalBytes:J

.field private volatile mTotalDataBytes:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mLocker:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mBindPlayerLifecycle:Z

    const-string v0, "FlowDataStatistic"

    iput-object v0, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mLogTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addBytes(J)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mTotalDataBytes:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mTotalDataBytes:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bindPlayerLifecycle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mBindPlayerLifecycle:Z

    return-void
.end method

.method public getDynamicIntervalBytes()J
    .locals 5

    iget-object v0, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mTotalDataBytes:J

    iget-wide v3, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mLastDataBytes:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mStaticIntervalBytes:J

    iget-wide v1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mTotalDataBytes:J

    iput-wide v1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mLastDataBytes:J

    iget-wide v1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mStaticIntervalBytes:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLastStaticIntervalBytes()J
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mStaticIntervalBytes:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTotalBytes()J
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mTotalDataBytes:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isBindPlayerLifecycle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mBindPlayerLifecycle:Z

    return p0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    iput-wide v1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mTotalDataBytes:J

    iput-wide v1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mLastDataBytes:J

    iput-wide v1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mStaticIntervalBytes:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLogTag(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mLogTag:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTotalDataBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->mTotalDataBytes:J

    return-void
.end method
