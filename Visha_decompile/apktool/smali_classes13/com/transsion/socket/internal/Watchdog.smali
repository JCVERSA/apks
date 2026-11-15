.class public Lcom/transsion/socket/internal/Watchdog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;
    }
.end annotation


# instance fields
.field private mHeartBeatInternal:J

.field private mQuit:Z

.field mSocketWatchdog:Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;

.field private mTimeOutQuit:Z


# direct methods
.method public constructor <init>(JLcom/transsion/socket/internal/Watchdog$ISocketWatchdog;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lcom/transsion/socket/internal/Watchdog;->mTimeOutQuit:Z

    const-wide/16 v0, 0x1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/socket/internal/Watchdog;->mHeartBeatInternal:J

    if-nez p3, :cond_0

    new-instance p3, Lcom/transsion/socket/internal/Watchdog$1;

    invoke-direct {p3, p0}, Lcom/transsion/socket/internal/Watchdog$1;-><init>(Lcom/transsion/socket/internal/Watchdog;)V

    :cond_0
    iput-object p3, p0, Lcom/transsion/socket/internal/Watchdog;->mSocketWatchdog:Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/socket/internal/Watchdog;->mQuit:Z

    return-void
.end method

.method public run()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/transsion/socket/internal/Watchdog;->mQuit:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/socket/internal/Watchdog;->mSocketWatchdog:Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;

    invoke-interface {v2}, Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;->onCallHeartBeat()V

    iget-wide v2, p0, Lcom/transsion/socket/internal/Watchdog;->mHeartBeatInternal:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/transsion/socket/internal/Watchdog;->waitTime(J)V

    iget-wide v2, p0, Lcom/transsion/socket/internal/Watchdog;->mHeartBeatInternal:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/transsion/socket/internal/Watchdog;->mSocketWatchdog:Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;

    invoke-interface {v2}, Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/socket/internal/Watchdog;->mSocketWatchdog:Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;

    invoke-interface {v2}, Lcom/transsion/socket/internal/Watchdog$ISocketWatchdog;->onTimeOut()V

    iget-boolean v2, p0, Lcom/transsion/socket/internal/Watchdog;->mTimeOutQuit:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/internal/Watchdog;->quit()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public waitTime(J)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sub-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    return-void

    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
