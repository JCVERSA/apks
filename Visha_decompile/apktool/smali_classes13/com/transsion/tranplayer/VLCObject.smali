.class abstract Lcom/transsion/tranplayer/VLCObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/tranplayer/VLCEvent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mEventListener:Lcom/transsion/tranplayer/VLCEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/tranplayer/VLCEvent$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInstance:J

.field final mLibVLC:Lcom/transsion/tranplayer/LibVLC;

.field private mNativeRefCount:I

.field private mPiPMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/transsion/tranplayer/VLCObject;->mEventListener:Lcom/transsion/tranplayer/VLCEvent$Listener;

    .line 17
    iput-object v0, p0, Lcom/transsion/tranplayer/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 18
    iput v1, p0, Lcom/transsion/tranplayer/VLCObject;->mNativeRefCount:I

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/transsion/tranplayer/VLCObject;->mPiPMode:Z

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lcom/transsion/tranplayer/VLCObject;->mInstance:J

    .line 21
    iput-object v0, p0, Lcom/transsion/tranplayer/VLCObject;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/tranplayer/LibVLC;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/tranplayer/VLCObject;->mEventListener:Lcom/transsion/tranplayer/VLCEvent$Listener;

    .line 3
    iput-object v0, p0, Lcom/transsion/tranplayer/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/transsion/tranplayer/VLCObject;->mNativeRefCount:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/tranplayer/VLCObject;->mPiPMode:Z

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/transsion/tranplayer/VLCObject;->mInstance:J

    .line 7
    iput-object p1, p0, Lcom/transsion/tranplayer/VLCObject;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/tranplayer/VLCObject;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/tranplayer/VLCObject;->mEventListener:Lcom/transsion/tranplayer/VLCEvent$Listener;

    .line 10
    iput-object v0, p0, Lcom/transsion/tranplayer/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/transsion/tranplayer/VLCObject;->mNativeRefCount:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/transsion/tranplayer/VLCObject;->mPiPMode:Z

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/transsion/tranplayer/VLCObject;->mInstance:J

    .line 14
    iget-object p1, p1, Lcom/transsion/tranplayer/VLCObject;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    iput-object p1, p0, Lcom/transsion/tranplayer/VLCObject;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    return-void
.end method

.method private declared-synchronized dispatchEventFromNative(IJJJJFLjava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/tranplayer/VLCObject;->isReleased()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p11}, Lcom/transsion/tranplayer/VLCObject;->onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/VLCEvent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/tranplayer/VLCObject;->mPiPMode:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x116

    if-ne p1, v1, :cond_1

    const-wide/16 v1, 0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, 0x104

    if-eq p1, v1, :cond_2

    const/16 v1, 0x105

    if-eq p1, v1, :cond_2

    const/16 v1, 0x106

    if-ne p1, v1, :cond_3

    :cond_2
    const-string v1, "TranMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchEventFromNative eventType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rg1:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " arg2: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " arg3: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " arg4: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " argf1: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " argstr: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/transsion/tranplayer/VLCObject;->mEventListener:Lcom/transsion/tranplayer/VLCEvent$Listener;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/transsion/tranplayer/VLCObject;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_4

    invoke-interface {p1, v0}, Lcom/transsion/tranplayer/VLCEvent$Listener;->onEvent(Lcom/transsion/tranplayer/VLCEvent;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/transsion/tranplayer/VLCObject;->mEventListener:Lcom/transsion/tranplayer/VLCEvent$Listener;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/transsion/tranplayer/VLCObject;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_4

    new-instance p3, Lcom/transsion/tranplayer/VLCObject$1EventRunnable;

    invoke-direct {p3, p0, p1, v0}, Lcom/transsion/tranplayer/VLCObject$1EventRunnable;-><init>(Lcom/transsion/tranplayer/VLCObject;Lcom/transsion/tranplayer/VLCEvent$Listener;Lcom/transsion/tranplayer/VLCEvent;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static dispatchEventFromWeakNative(Ljava/lang/Object;IJJJJFLjava/lang/String;)V
    .locals 13

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/tranplayer/VLCObject;

    if-eqz v1, :cond_0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/transsion/tranplayer/VLCObject;->dispatchEventFromNative(IJJJJFLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getWeakReference()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private native nativeDetachEvents()V
.end method


# virtual methods
.method public declared-synchronized finalize()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/tranplayer/VLCObject;->isReleased()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VLCObject ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") finalized but not natively released ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/tranplayer/VLCObject;->mNativeRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " refs)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isReleased()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/tranplayer/VLCObject;->mNativeRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/VLCEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJF",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract onReleaseNative()V
.end method

.method public release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/tranplayer/VLCObject;->mNativeRefCount:I

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/tranplayer/VLCObject;->mNativeRefCount:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/transsion/tranplayer/VLCObject;->setEventListener(Lcom/transsion/tranplayer/VLCEvent$Listener;)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/tranplayer/VLCObject;->nativeDetachEvents()V

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/tranplayer/VLCObject;->onReleaseNative()V

    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_3
    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized retain()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/tranplayer/VLCObject;->mNativeRefCount:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/tranplayer/VLCObject;->mNativeRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setEventListener(Lcom/transsion/tranplayer/VLCEvent$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/tranplayer/VLCEvent$Listener<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/tranplayer/VLCObject;->setEventListener(Lcom/transsion/tranplayer/VLCEvent$Listener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setEventListener(Lcom/transsion/tranplayer/VLCEvent$Listener;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/tranplayer/VLCEvent$Listener<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/transsion/tranplayer/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 5
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/transsion/tranplayer/VLCObject;->mEventListener:Lcom/transsion/tranplayer/VLCEvent$Listener;

    if-nez p1, :cond_1

    .line 6
    iput-object v1, p0, Lcom/transsion/tranplayer/VLCObject;->mHandler:Landroid/os/Handler;

    goto :goto_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/transsion/tranplayer/VLCObject;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_1
    iput-object p2, p0, Lcom/transsion/tranplayer/VLCObject;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPinPVideoMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tranplayer/VLCObject;->mPiPMode:Z

    return-void
.end method
