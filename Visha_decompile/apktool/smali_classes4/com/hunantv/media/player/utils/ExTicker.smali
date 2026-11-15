.class public Lcom/hunantv/media/player/utils/ExTicker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/utils/ExTicker$InternalHandler;,
        Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;,
        Lcom/hunantv/media/player/utils/ExTicker$onTickListener;,
        Lcom/hunantv/media/player/utils/ExTicker$Status;
    }
.end annotation


# static fields
.field private static final MIN_TICKTIME:I = 0xa

.field private static final MSG_UPDATE_TICK:I = 0x10000


# instance fields
.field private handler:Landroid/os/Handler;

.field private volatile mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

.field private mHostLogTag:Ljava/lang/String;

.field private mLocker:Ljava/lang/Object;

.field private mOnExTickListener:Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;

.field private mOnTickListener:Lcom/hunantv/media/player/utils/ExTicker$onTickListener;

.field private mSubTickCount:I

.field private mTickCount:I

.field private mTickTime:I

.field private mTypeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTickTime:I

    new-instance v1, Lcom/hunantv/media/player/utils/ExTicker$InternalHandler;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/utils/ExTicker$InternalHandler;-><init>(Lcom/hunantv/media/player/utils/ExTicker;)V

    iput-object v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_STOP:Lcom/hunantv/media/player/utils/ExTicker$Status;

    iput-object v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mLocker:Ljava/lang/Object;

    iput p1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTickTime:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTickTime:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    new-instance p2, Lcom/hunantv/media/player/utils/ExTicker$InternalHandler;

    invoke-direct {p2, p1, p0}, Lcom/hunantv/media/player/utils/ExTicker$InternalHandler;-><init>(Landroid/os/Looper;Lcom/hunantv/media/player/utils/ExTicker;)V

    iput-object p2, p0, Lcom/hunantv/media/player/utils/ExTicker;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/player/utils/ExTicker;)Lcom/hunantv/media/player/utils/ExTicker$Status;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/hunantv/media/player/utils/ExTicker;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTickCount:I

    return p0
.end method

.method public static synthetic access$108(Lcom/hunantv/media/player/utils/ExTicker;)I
    .locals 2

    iget v0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTickCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTickCount:I

    return v0
.end method

.method public static synthetic access$200(Lcom/hunantv/media/player/utils/ExTicker;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mSubTickCount:I

    return p0
.end method

.method public static synthetic access$208(Lcom/hunantv/media/player/utils/ExTicker;)I
    .locals 2

    iget v0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mSubTickCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mSubTickCount:I

    return v0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/player/utils/ExTicker;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/utils/ExTicker;->getLogTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/hunantv/media/player/utils/ExTicker;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTickTime:I

    return p0
.end method

.method public static synthetic access$500(Lcom/hunantv/media/player/utils/ExTicker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/hunantv/media/player/utils/ExTicker;)Lcom/hunantv/media/player/utils/ExTicker$onTickListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mOnTickListener:Lcom/hunantv/media/player/utils/ExTicker$onTickListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/hunantv/media/player/utils/ExTicker;)Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mOnExTickListener:Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;

    return-object p0
.end method

.method private callbackExTickPlayOrPause(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mOnExTickListener:Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;->onPlayOrPause(Z)V

    :cond_0
    return-void
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mHostLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-exTicker]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getTickCount()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTickCount:I

    return p0
.end method

.method public getTickTime()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTickTime:I

    return p0
.end method

.method public isPaused()Z
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    sget-object v0, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_PAUSE:Lcom/hunantv/media/player/utils/ExTicker$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTicking()Z
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    sget-object v0, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_START:Lcom/hunantv/media/player/utils/ExTicker$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pause()V
    .locals 5

    iget-object v0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    sget-object v2, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_START:Lcom/hunantv/media/player/utils/ExTicker$Status;

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mSubTickCount:I

    invoke-direct {p0}, Lcom/hunantv/media/player/utils/ExTicker;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExTicker pause.status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_PAUSE:Lcom/hunantv/media/player/utils/ExTicker$Status;

    iput-object v2, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    invoke-direct {p0, v1}, Lcom/hunantv/media/player/utils/ExTicker;->callbackExTickPlayOrPause(Z)V

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->handler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resume()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    sget-object v2, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_PAUSE:Lcom/hunantv/media/player/utils/ExTicker$Status;

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/utils/ExTicker;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExTicker resume.status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_START:Lcom/hunantv/media/player/utils/ExTicker$Status;

    iput-object v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/hunantv/media/player/utils/ExTicker;->callbackExTickPlayOrPause(Z)V

    iget-object v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->handler:Landroid/os/Handler;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public seekto(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTickCount:I

    return-void
.end method

.method public setCallback(Lcom/hunantv/media/player/utils/ExTicker$onTickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mOnTickListener:Lcom/hunantv/media/player/utils/ExTicker$onTickListener;

    return-void
.end method

.method public setExCallback(Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mOnExTickListener:Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;

    return-void
.end method

.method public setHostLogTag(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mHostLogTag:Ljava/lang/String;

    return-object p0
.end method

.method public setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTypeStr:Ljava/lang/String;

    return-object p0
.end method

.method public start()V
    .locals 4

    invoke-virtual {p0}, Lcom/hunantv/media/player/utils/ExTicker;->stop()V

    iget-object v0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTickCount:I

    iput v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mSubTickCount:I

    invoke-direct {p0}, Lcom/hunantv/media/player/utils/ExTicker;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExTicker start.status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_START:Lcom/hunantv/media/player/utils/ExTicker$Status;

    iput-object v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/hunantv/media/player/utils/ExTicker;->callbackExTickPlayOrPause(Z)V

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->handler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/player/utils/ExTicker;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    sget-object v2, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_STOP:Lcom/hunantv/media/player/utils/ExTicker$Status;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/utils/ExTicker;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ExTicker stop"

    invoke-static {v1, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/hunantv/media/player/utils/ExTicker;->mCurState:Lcom/hunantv/media/player/utils/ExTicker$Status;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/hunantv/media/player/utils/ExTicker;->callbackExTickPlayOrPause(Z)V

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker;->handler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateTickTime(I)V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/player/utils/ExTicker;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTickTime tickTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/hunantv/media/player/utils/ExTicker;->mTickTime:I

    return-void
.end method
