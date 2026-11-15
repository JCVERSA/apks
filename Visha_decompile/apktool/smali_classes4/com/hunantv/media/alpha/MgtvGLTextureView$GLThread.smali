.class Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/alpha/MgtvGLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/alpha/MgtvGLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/alpha/MgtvGLTextureView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mWidth:I

    iput v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHeight:I

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRequestRender:Z

    iput v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRenderMode:I

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$1102(Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;

    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglContext:Z

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglSurface:Z

    move v4, v0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    const/4 v3, 0x0

    :goto_0
    const/4 v14, 0x0

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->stopEglContextLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_9

    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Runnable;

    move-object/from16 v17, v3

    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_1
    iget-boolean v2, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mPaused:Z

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_2

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mPaused:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const-string v2, "GLThread"

    move/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string v3, "mPaused is now "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mPaused:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " tid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v16, 0x0

    :goto_3
    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v0, :cond_3

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because asked to tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v11, 0x1

    :cond_3
    if-eqz v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v7, 0x0

    :cond_4
    if-eqz v16, :cond_5

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_5

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL surface because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_5
    if-eqz v16, :cond_7

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/alpha/MgtvGLTextureView;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$900(Lcom/hunantv/media/alpha/MgtvGLTextureView;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->stopEglContextLocked()V

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v16, :cond_8

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;->finish()V

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminating EGL because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_a

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_a

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface lost tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_b

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_b

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface acquired tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mWaitingForSurface:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_b
    if-eqz v10, :cond_c

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending render notification tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->readyToDraw()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1d

    :try_start_4
    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglContext:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-nez v0, :cond_e

    if-eqz v11, :cond_d

    move/from16 v4, v18

    const/4 v11, 0x0

    goto :goto_4

    :cond_d
    :try_start_5
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_e

    :try_start_6
    iget-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;->start()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglContext:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_e
    move/from16 v4, v18

    :goto_4
    :try_start_8
    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglContext:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v0, :cond_f

    :try_start_9
    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglSurface:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    :cond_f
    :try_start_a
    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mSizeChanged:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v0, :cond_10

    :try_start_b
    iget v12, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mWidth:I

    iget v13, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHeight:I

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticing that we want render notification tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mSizeChanged:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    :goto_5
    :try_start_c
    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRequestRender:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :goto_6
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v14, :cond_11

    :try_start_d
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    move-object/from16 v3, v17

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_a

    :cond_11
    if-eqz v5, :cond_13

    const-string v2, "GLThread"

    const-string v3, "egl createSurface"

    invoke-static {v2, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;->createSurface()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const/4 v3, 0x1

    :try_start_e
    iput-boolean v3, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    move-object/from16 v3, v17

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v0

    :cond_12
    move v5, v0

    :cond_13
    if-eqz v6, :cond_14

    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    move v6, v0

    move-object v3, v2

    goto :goto_7

    :cond_14
    move-object/from16 v3, v17

    :goto_7
    if-eqz v4, :cond_16

    const-string v2, "GLThread"

    const-string v4, "onSurfaceCreated"

    invoke-static {v2, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/media/alpha/MgtvGLTextureView;

    if-eqz v2, :cond_15

    invoke-static {v2}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$1000(Lcom/hunantv/media/alpha/MgtvGLTextureView;)Lcom/hunantv/media/alpha/Renderer;

    move-result-object v2

    iget-object v4, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;

    iget-object v4, v4, Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4}, Lcom/hunantv/media/alpha/Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_15
    move v4, v0

    :cond_16
    if-eqz v8, :cond_18

    const-string v2, "GLThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSurfaceChanged("

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/media/alpha/MgtvGLTextureView;

    if-eqz v2, :cond_17

    invoke-static {v2}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$1000(Lcom/hunantv/media/alpha/MgtvGLTextureView;)Lcom/hunantv/media/alpha/Renderer;

    move-result-object v2

    invoke-interface {v2, v3, v12, v13}, Lcom/hunantv/media/alpha/Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_17
    move v8, v0

    :cond_18
    :try_start_10
    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/media/alpha/MgtvGLTextureView;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v2, :cond_19

    :try_start_11
    invoke-static {v2}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$1000(Lcom/hunantv/media/alpha/MgtvGLTextureView;)Lcom/hunantv/media/alpha/Renderer;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/hunantv/media/alpha/Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :cond_19
    :try_start_12
    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;->swap()I

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    const/16 v15, 0x3000

    if-eq v2, v15, :cond_1b

    const/16 v15, 0x300e

    if-eq v2, v15, :cond_1a

    :try_start_13
    const-string v15, "GLThread"

    const-string v0, "eglSwapBuffers"

    invoke-static {v15, v0, v2}, Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    const/4 v0, 0x1

    :try_start_14
    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_8

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :cond_1a
    const/4 v0, 0x1

    :try_start_16
    const-string v2, "GLThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "egl context lost tid="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    const/4 v7, 0x1

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_a

    :cond_1b
    :goto_8
    if-eqz v9, :cond_1c

    const/4 v10, 0x1

    :cond_1c
    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_1

    :catchall_6
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_9

    :cond_1d
    move/from16 v4, v18

    :cond_1e
    :try_start_17
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mHaveEglContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    move-object/from16 v2, p0

    :try_start_18
    iget-boolean v3, v2, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglContext:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHaveEglSurface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglSurface:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mPaused: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mPaused:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHasSurface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHasSurface:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSurfaceIsBad: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mWaitingForSurface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mWaitingForSurface:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mWidth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mHeight: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRequestRender: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRequestRender:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mRenderMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRenderMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    move-object v1, v2

    move-object/from16 v3, v17

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_7
    move-exception v0

    :goto_9
    monitor-exit v15
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :catchall_8
    move-exception v0

    :goto_a
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_1a
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->stopEglContextLocked()V

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRequestRender:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRenderMode:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private stopEglContextLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglContext:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglSurface:Z

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->readyToDraw()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRenderMode()I
    .locals 1

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRenderMode:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPause()V
    .locals 5

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRequestPaused:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onPause waiting for mPaused."

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onResume()V
    .locals 5

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRequestRender:Z

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onResume waiting for !mPaused."

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onWindowResize(II)V
    .locals 3

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mWidth:I

    iput p2, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mSizeChanged:Z

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mExited:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mPaused:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->ableToDraw()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Main thread"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowResize waiting for render complete from tid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "r must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestExitAndWait()V
    .locals 2

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mShouldExit:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mShouldReleaseEglContext:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRequestRender:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->threadExiting(Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->threadExiting(Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;)V

    throw v0

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mRenderMode:I

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "renderMode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public surfaceCreated()V
    .locals 5

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreated tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHasSurface:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public surfaceDestroyed()V
    .locals 5

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceDestroyed tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mHasSurface:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
