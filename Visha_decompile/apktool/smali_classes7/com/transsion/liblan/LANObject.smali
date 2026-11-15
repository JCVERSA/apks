.class abstract Lcom/transsion/liblan/LANObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranLANObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/liblan/interfaces/ITranLANObject<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mEventListener:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field final mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

.field private mInstance:J

.field private mNativeRefCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/transsion/liblan/LANObject;->mEventListener:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;

    .line 15
    iput-object v0, p0, Lcom/transsion/liblan/LANObject;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/transsion/liblan/LANObject;->mNativeRefCount:I

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lcom/transsion/liblan/LANObject;->mInstance:J

    .line 18
    iput-object v0, p0, Lcom/transsion/liblan/LANObject;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLANObject;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/transsion/liblan/LANObject;->mEventListener:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;

    .line 9
    iput-object v0, p0, Lcom/transsion/liblan/LANObject;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/transsion/liblan/LANObject;->mNativeRefCount:I

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/transsion/liblan/LANObject;->mInstance:J

    .line 12
    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/LANObject;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/liblan/LANObject;->mEventListener:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;

    .line 3
    iput-object v0, p0, Lcom/transsion/liblan/LANObject;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/transsion/liblan/LANObject;->mNativeRefCount:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/transsion/liblan/LANObject;->mInstance:J

    .line 6
    iput-object p1, p0, Lcom/transsion/liblan/LANObject;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    return-void
.end method

.method private declared-synchronized dispatchEventFromNative(IJJFLjava/lang/String;)V
    .locals 1
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/liblan/LANObject;->isReleased()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p7}, Lcom/transsion/liblan/LANObject;->onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/transsion/liblan/LANObject;->mEventListener:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/transsion/liblan/LANObject;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_1

    new-instance p4, Lcom/transsion/liblan/LANObject$1EventRunnable;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p2, p1, p5}, Lcom/transsion/liblan/LANObject$1EventRunnable;-><init>(Lcom/transsion/liblan/LANObject;Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;Lzh5;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
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

.method private native nativeDetachEvents()V
.end method


# virtual methods
.method public declared-synchronized finalize()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/liblan/LANObject;->isReleased()Z

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

    const-string v2, "LANObject ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") finalized but not natively released ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/liblan/LANObject;->mNativeRefCount:I

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

.method public native getInstance()J
.end method

.method public getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/LANObject;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    return-object p0
.end method

.method public declared-synchronized isReleased()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/liblan/LANObject;->mNativeRefCount:I
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

.method public abstract onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJF",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract onReleaseNativeItem()V
.end method

.method public release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/liblan/LANObject;->mNativeRefCount:I

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/liblan/LANObject;->mNativeRefCount:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/transsion/liblan/LANObject;->setEventListener(Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/liblan/LANObject;->nativeDetachEvents()V

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/liblan/LANObject;->onReleaseNativeItem()V

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

.method public final declared-synchronized retain()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/transsion/liblan/LANObject;->mNativeRefCount:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/liblan/LANObject;->mNativeRefCount:I
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

.method public declared-synchronized setEventListener(Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/liblan/LANObject;->setEventListener(Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;Landroid/os/Handler;)V
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

.method public declared-synchronized setEventListener(Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/transsion/liblan/LANObject;->mHandler:Landroid/os/Handler;

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
    iput-object p1, p0, Lcom/transsion/liblan/LANObject;->mEventListener:Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;

    if-nez p1, :cond_1

    .line 6
    iput-object v1, p0, Lcom/transsion/liblan/LANObject;->mHandler:Landroid/os/Handler;

    goto :goto_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/transsion/liblan/LANObject;->mHandler:Landroid/os/Handler;

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
    iput-object p2, p0, Lcom/transsion/liblan/LANObject;->mHandler:Landroid/os/Handler;
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
