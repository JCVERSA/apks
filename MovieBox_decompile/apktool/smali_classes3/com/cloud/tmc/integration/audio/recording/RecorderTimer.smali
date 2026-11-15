.class public final Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$Companion;,
        Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u0000 \u00152\u00020\u0001:\u0002\u0015\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u0008\u0010\u000f\u001a\u00020\rH\u0002J\u0006\u0010\u0010\u001a\u00020\rJ\u0008\u0010\u0011\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u0014\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;",
        "",
        "()V",
        "isPaused",
        "",
        "isStarted",
        "pausedTime",
        "",
        "startTime",
        "timerListener",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;",
        "getElapsedTime",
        "pause",
        "",
        "reset",
        "resetTimer",
        "resume",
        "scheduleTimer",
        "setTimerListener",
        "listener",
        "start",
        "Companion",
        "TimerListener",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$Companion;

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private isPaused:Z

.field private isStarted:Z

.field private pausedTime:J

.field private startTime:J

.field private timerListener:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->Companion:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$Companion;

    .line 8
    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getHandler$cp()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method private final resetTimer()V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final scheduleTimer()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->resetTimer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->timerListener:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v2, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$scheduleTimer$1$1;

    .line 11
    .line 12
    invoke-direct {v2, v0, p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$scheduleTimer$1$1;-><init>(Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public final getElapsedTime()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->pausedTime:J

    .line 10
    .line 11
    iget-wide v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    .line 12
    .line 13
    :goto_0
    sub-long/2addr v0, v2

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    :goto_1
    return-wide v0
.end method

.method public final pause()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->pausedTime:J

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->resetTimer()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->pausedTime:J

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isStarted:Z

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->resetTimer()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final resume()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-wide v4, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->pausedTime:J

    .line 16
    .line 17
    sub-long/2addr v2, v4

    .line 18
    add-long/2addr v0, v2

    .line 19
    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->scheduleTimer()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final setTimerListener(Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->timerListener:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;

    .line 2
    .line 3
    return-void
.end method

.method public final start()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isStarted:Z

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget-wide v4, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->pausedTime:J

    .line 26
    .line 27
    sub-long/2addr v2, v4

    .line 28
    add-long/2addr v0, v2

    .line 29
    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->startTime:J

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->isPaused:Z

    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->scheduleTimer()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
