.class public Lcom/cicada/player/utils/VsyncTimer;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VsyncTimer"

.field private static WHAT_DESTROY:I = 0x2713

.field private static WHAT_INIT:I = 0x2710

.field private static WHAT_PAUSE:I = 0x2712

.field private static WHAT_START:I = 0x2711


# instance fields
.field private final lockObj:Ljava/lang/Object;

.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mNativePtr:J

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->lockObj:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/cicada/player/utils/VsyncTimer$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/cicada/player/utils/VsyncTimer$1;-><init>(Lcom/cicada/player/utils/VsyncTimer;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/cicada/player/utils/VsyncTimer;->mNativePtr:J

    .line 19
    .line 20
    new-instance p1, Landroid/os/HandlerThread;

    .line 21
    .line 22
    sget-object p2, Lcom/cicada/player/utils/VsyncTimer;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerThread:Landroid/os/HandlerThread;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lcom/cicada/player/utils/VsyncTimer$2;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerThread:Landroid/os/HandlerThread;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p0, p2}, Lcom/cicada/player/utils/VsyncTimer$2;-><init>(Lcom/cicada/player/utils/VsyncTimer;Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    .line 44
    .line 45
    sget p2, Lcom/cicada/player/utils/VsyncTimer;->WHAT_INIT:I

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/cicada/player/utils/VsyncTimer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mNativePtr:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$002(Lcom/cicada/player/utils/VsyncTimer;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cicada/player/utils/VsyncTimer;->mNativePtr:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$100(Lcom/cicada/player/utils/VsyncTimer;JJ)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cicada/player/utils/VsyncTimer;->onVsync(JJ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1000(Lcom/cicada/player/utils/VsyncTimer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cicada/player/utils/VsyncTimer;->lockObj:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 1
    sget v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_INIT:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$300(Lcom/cicada/player/utils/VsyncTimer;J)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cicada/player/utils/VsyncTimer;->onInit(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 1
    sget v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_START:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$500(Lcom/cicada/player/utils/VsyncTimer;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cicada/player/utils/VsyncTimer;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 1
    sget v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_PAUSE:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 1
    sget v0, Lcom/cicada/player/utils/VsyncTimer;->WHAT_DESTROY:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$800(Lcom/cicada/player/utils/VsyncTimer;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cicada/player/utils/VsyncTimer;->onDestroy(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/cicada/player/utils/VsyncTimer;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    return-object p0
.end method

.method private native onDestroy(J)V
.end method

.method private native onInit(J)I
.end method

.method private native onVsync(JJ)I
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->lockObj:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    .line 5
    .line 6
    sget v2, Lcom/cicada/player/utils/VsyncTimer;->WHAT_DESTROY:I

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer;->lockObj:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-exception v1

    .line 20
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw v1
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    .line 2
    .line 3
    sget v1, Lcom/cicada/player/utils/VsyncTimer;->WHAT_PAUSE:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer;->mTimerHandler:Landroid/os/Handler;

    .line 2
    .line 3
    sget v1, Lcom/cicada/player/utils/VsyncTimer;->WHAT_START:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
