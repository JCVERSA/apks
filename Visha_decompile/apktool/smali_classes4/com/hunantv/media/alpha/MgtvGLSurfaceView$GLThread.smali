.class Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/alpha/MgtvGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;

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

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/alpha/MgtvGLSurfaceView;",
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

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/alpha/MgtvGLSurfaceView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWidth:I

    iput v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHeight:I

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRequestRender:Z

    iput v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRenderMode:I

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWantRenderNotification:Z

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$1102(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mExited:Z

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

    new-instance v0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;

    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglContext:Z

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglSurface:Z

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWantRenderNotification:Z

    move v3, v0

    move v4, v3

    move v5, v4

    move v8, v5

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v16

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    :try_start_1
    iget-boolean v2, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_0

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->stopEglContextLocked()V

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

    goto/16 :goto_c

    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/Runnable;

    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_1
    iget-boolean v2, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mPaused:Z

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_2

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mPaused:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-boolean v2, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v2, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_5
    if-eqz v0, :cond_7

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$900(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;)Z

    move-result v0

    :goto_3
    if-nez v0, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->stopEglContextLocked()V

    :cond_7
    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_9
    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWaitingForSurface:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    if-eqz v4, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    :cond_b
    iget-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    move-object v6, v0

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglContext:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_e

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_5

    :cond_d
    :try_start_4
    iget-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglContext:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v8, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;)V

    throw v0

    :cond_e
    :goto_5
    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglSurface:Z

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    :cond_f
    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_10

    iget v13, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWidth:I

    iget v14, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHeight:I

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mSizeChanged:Z

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x1

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRequestRender:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    iget-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWantRenderNotification:Z

    if-eqz v0, :cond_11

    const/4 v12, 0x1

    :cond_11
    :goto_7
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v15, :cond_13

    :try_start_6
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    move-object v15, v2

    :cond_12
    :goto_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    goto/16 :goto_d

    :cond_13
    if-eqz v9, :cond_15

    iget-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;->createSurface()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v9

    monitor-enter v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v9

    const/4 v9, 0x0

    goto :goto_9

    :catchall_3
    move-exception v0

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0

    :cond_14
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v16

    monitor-enter v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v16

    goto :goto_8

    :catchall_4
    move-exception v0

    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v0

    :cond_15
    :goto_9
    if-eqz v10, :cond_16

    iget-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v7, v0

    const/4 v10, 0x0

    :cond_16
    if-eqz v8, :cond_18

    iget-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;

    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$1000(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;)Lcom/hunantv/media/alpha/Renderer;

    move-result-object v0

    iget-object v8, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;

    iget-object v8, v8, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v7, v8}, Lcom/hunantv/media/alpha/Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_17
    const/4 v8, 0x0

    :cond_18
    if-eqz v11, :cond_1a

    iget-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$1000(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;)Lcom/hunantv/media/alpha/Renderer;

    move-result-object v0

    invoke-interface {v0, v7, v13, v14}, Lcom/hunantv/media/alpha/Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_19
    const/4 v11, 0x0

    :cond_1a
    iget-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;

    if-eqz v0, :cond_1b

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$1000(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;)Lcom/hunantv/media/alpha/Renderer;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/hunantv/media/alpha/Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    if-eqz v6, :cond_1b

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    move-object v6, v2

    :cond_1b
    iget-object v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;->swap()I

    move-result v0

    const/16 v2, 0x3000

    if-eq v0, v2, :cond_1d

    const/16 v2, 0x300e

    if-eq v0, v2, :cond_1c

    const-string v2, "GLThread"

    move/from16 v18, v3

    const-string v3, "eglSwapBuffers"

    invoke-static {v2, v3, v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, v1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_a

    :catchall_5
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_1c
    const/4 v0, 0x1

    move v3, v0

    goto :goto_b

    :cond_1d
    move/from16 v18, v3

    const/4 v0, 0x1

    :goto_a
    move/from16 v3, v18

    :goto_b
    if-eqz v12, :cond_12

    move v4, v0

    const/4 v12, 0x0

    goto/16 :goto_8

    :cond_1e
    if-eqz v6, :cond_1f

    :try_start_d
    const-string v0, "MgtvGLSurfaceView"

    const-string v2, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    const/4 v6, 0x0

    :cond_1f
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_1

    :goto_c
    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :goto_d
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->stopEglContextLocked()V

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRenderMode:I

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

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglContext:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglSurface:Z

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mEglHelper:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->readyToDraw()Z

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

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRenderMode:I

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
    .locals 2

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRequestPaused:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

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
    .locals 3

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRequestRender:Z

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

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
    .locals 1

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWidth:I

    iput p2, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mSizeChanged:Z

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p1, p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mExited:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mPaused:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->ableToDraw()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
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

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

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

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mShouldExit:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

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

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRequestRender:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

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

.method public requestRenderAndNotify(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWantRenderNotification:Z

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRenderComplete:Z

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :goto_0
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

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;->threadExiting(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;->threadExiting(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;)V

    throw v0

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mRenderMode:I

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

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
    .locals 2

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

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
    .locals 2

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mHasSurface:Z

    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

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
