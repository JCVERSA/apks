.class public Lcom/hisavana/common/utils/RunTimer;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RunTimer"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field private scheduleTime:I

.field private timeOutCallback:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0xea60

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/hisavana/common/utils/RunTimer;->scheduleTime:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic access$000(Lcom/hisavana/common/utils/RunTimer;)Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/utils/RunTimer;->timeOutCallback:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public cancelTimeTask()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->timeOutCallback:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/hisavana/common/utils/RunTimer;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    :cond_0
    iput-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    return-void
.end method

.method public runTimerTask()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lcom/hisavana/common/utils/RunTimer$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/hisavana/common/utils/RunTimer$1;-><init>(Lcom/hisavana/common/utils/RunTimer;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 26
    .line 27
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/hisavana/common/utils/RunTimer;->handler:Landroid/os/Handler;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/hisavana/common/utils/RunTimer;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 30
    .line 31
    iget v2, p0, Lcom/hisavana/common/utils/RunTimer;->scheduleTime:I

    .line 32
    .line 33
    int-to-long v2, v2

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "RunTimer"

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public setScheduleTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/common/utils/RunTimer;->scheduleTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setTimeOutCallback(Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/utils/RunTimer;->timeOutCallback:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    .line 2
    .line 3
    return-void
.end method
