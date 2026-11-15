.class public Lcom/hunantv/media/player/utils/SyncStateMachine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lock:Ljava/lang/Object;

.field private mEnable:Z

.field private mInitState:I

.field private volatile mState:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->mEnable:Z

    iput p1, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->mInitState:I

    iput p1, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->mState:I

    return-void
.end method


# virtual methods
.method public changeState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->mState:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public changeState(II)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->mState:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->mState:I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->mState:I

    return p0
.end method

.method public isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->mEnable:Z

    return p0
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->mInitState:I

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/utils/SyncStateMachine;->changeState(I)V

    return-void
.end method

.method public setEnable(Z)Lcom/hunantv/media/player/utils/SyncStateMachine;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/utils/SyncStateMachine;->mEnable:Z

    return-object p0
.end method
