.class final Landroidx/media3/effect/ExternalTextureManager;
.super Landroidx/media3/effect/TextureManager;
.source "SourceFile"


# static fields
.field private static final ADDITIONAL_CANDIDATE_BUFFER_SIZE_GUESSES:[I

.field private static final EPSILON:F = 1.0E-9f

.field private static final SURFACE_TEXTURE_TIMEOUT_MS:J

.field private static final TAG:Ljava/lang/String; = "ExtTexMgr"

.field private static final TIMER_THREAD_NAME:Ljava/lang/String; = "ExtTexMgr:Timer"

.field private static final TRANSFORMATION_MATRIX_EXPECTED_ZERO_INDICES:[I


# instance fields
.field private automaticReregistration:Z

.field private availableFrameCount:I

.field private currentFrame:Landroidx/media3/common/FrameInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentInputStreamEnded:Z

.field private final experimentalAdjustSurfaceTextureTransformationMatrix:Z

.field private externalShaderProgram:Landroidx/media3/effect/ExternalShaderProgram;

.field private externalShaderProgramInputCapacity:I

.field private final externalTexId:I

.field private forceSignalEndOfStreamFuture:Ljava/util/concurrent/Future;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

.field private lastRegisteredFrame:Landroidx/media3/common/FrameInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pendingFrames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/common/FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile releaseAllFramesException:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private releaseAllFramesLatch:Ljava/util/concurrent/CountDownLatch;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile shouldRejectIncomingFrames:Z

.field private final surface:Landroid/view/Surface;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final textureTransformMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/effect/ExternalTextureManager;->TRANSFORMATION_MATRIX_EXPECTED_ZERO_INDICES:[I

    const/16 v0, 0x780

    const/16 v1, 0x440

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/effect/ExternalTextureManager;->ADDITIONAL_CANDIDATE_BUFFER_SIZE_GUESSES:[I

    invoke-static {}, Landroidx/media3/common/util/Util;->isRunningOnEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4e20

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    :goto_0
    sput-wide v0, Landroidx/media3/effect/ExternalTextureManager;->SURFACE_TEXTURE_TIMEOUT_MS:J

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x6
        0x7
        0x8
        0x9
        0xb
        0xe
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    invoke-direct {p0, p2}, Landroidx/media3/effect/TextureManager;-><init>(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;)V

    iput-object p1, p0, Landroidx/media3/effect/ExternalTextureManager;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    iput-boolean p3, p0, Landroidx/media3/effect/ExternalTextureManager;->automaticReregistration:Z

    iput-boolean p4, p0, Landroidx/media3/effect/ExternalTextureManager;->experimentalAdjustSurfaceTextureTransformationMatrix:Z

    :try_start_0
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->createExternalTexture()I

    move-result p1

    iput p1, p0, Landroidx/media3/effect/ExternalTextureManager;->externalTexId:I
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p3, Landroid/graphics/SurfaceTexture;

    invoke-direct {p3, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p3, p0, Landroidx/media3/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/media3/effect/ExternalTextureManager;->textureTransformMatrix:[F

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    const-string p1, "ExtTexMgr:Timer"

    invoke-static {p1}, Landroidx/media3/common/util/Util;->newSingleThreadScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/effect/ExternalTextureManager;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Landroidx/media3/effect/e0;

    invoke-direct {p1, p0, p2}, Landroidx/media3/effect/e0;-><init>(Landroidx/media3/effect/ExternalTextureManager;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;)V

    invoke-virtual {p3, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1, p3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Landroidx/media3/effect/ExternalTextureManager;->surface:Landroid/view/Surface;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {p1, p0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic a(Landroidx/media3/effect/ExternalTextureManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->lambda$onInputFrameProcessed$4()V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/effect/ExternalTextureManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->lambda$registerInputFrame$5()V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/effect/ExternalTextureManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->lambda$signalEndOfCurrentInputStream$6()V

    return-void
.end method

.method private cancelForceSignalEndOfStreamTimer()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->forceSignalEndOfStreamFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->forceSignalEndOfStreamFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static synthetic d(Landroidx/media3/effect/ExternalTextureManager;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/effect/ExternalTextureManager;->lambda$new$1(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/effect/ExternalTextureManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->lambda$onReadyToAcceptInputFrame$3()V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/effect/ExternalTextureManager;Landroidx/media3/effect/GlShaderProgram;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/ExternalTextureManager;->lambda$setSamplingGlShaderProgram$2(Landroidx/media3/effect/GlShaderProgram;)V

    return-void
.end method

.method private forceSignalEndOfStream()V
    .locals 3

    iget v0, p0, Landroidx/media3/effect/ExternalTextureManager;->availableFrameCount:I

    iget-object v1, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-wide v1, Landroidx/media3/effect/ExternalTextureManager;->SURFACE_TEXTURE_TIMEOUT_MS:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroidx/media3/effect/ExternalTextureManager;->availableFrameCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Forcing EOS after missing %d frames for %d ms, with available frame count: %d"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTexMgr"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/effect/ExternalTextureManager;->currentInputStreamEnded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->currentFrame:Landroidx/media3/common/FrameInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/effect/ExternalTextureManager;->shouldRejectIncomingFrames:Z

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->removeAllSurfaceTextureFrames()V

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    invoke-virtual {p0}, Landroidx/media3/effect/ExternalTextureManager;->signalEndOfCurrentInputStream()V

    return-void
.end method

.method public static synthetic g(Landroidx/media3/effect/ExternalTextureManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->lambda$restartForceSignalEndOfStreamTimer$8()V

    return-void
.end method

.method private static guessScaleWithoutSurfaceTextureTrim(FI)F
    .locals 7

    const/4 v0, 0x2

    move v1, p1

    :goto_0
    const/16 v2, 0x100

    if-gt v0, v2, :cond_1

    add-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    invoke-static {v2, p0, p1}, Landroidx/media3/effect/ExternalTextureManager;->scoreForCandidateBufferSize(IFI)F

    move-result v3

    invoke-static {v1, p0, p1}, Landroidx/media3/effect/ExternalTextureManager;->scoreForCandidateBufferSize(IFI)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/media3/effect/ExternalTextureManager;->ADDITIONAL_CANDIDATE_BUFFER_SIZE_GUESSES:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget v4, v0, v3

    if-ge v4, p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v4, p0, p1}, Landroidx/media3/effect/ExternalTextureManager;->scoreForCandidateBufferSize(IFI)F

    move-result v5

    invoke-static {v1, p0, p1}, Landroidx/media3/effect/ExternalTextureManager;->scoreForCandidateBufferSize(IFI)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    move v1, v4

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v1, p0, p1}, Landroidx/media3/effect/ExternalTextureManager;->scoreForCandidateBufferSize(IFI)F

    move-result v0

    const v2, 0x3089705f    # 1.0E-9f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    return p0

    :cond_5
    int-to-float p0, p1

    int-to-float p1, v1

    div-float/2addr p0, p1

    return p0
.end method

.method public static synthetic h(Landroidx/media3/effect/ExternalTextureManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->lambda$releaseAllRegisteredFrames$7()V

    return-void
.end method

.method public static synthetic i(Landroidx/media3/effect/ExternalTextureManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->forceSignalEndOfStream()V

    return-void
.end method

.method public static synthetic j(Landroidx/media3/effect/ExternalTextureManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const-string v0, "SurfaceTextureInput"

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-string v3, "VideoFrameProcessor"

    invoke-static {v3, v0, v1, v2}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;J)V

    iget-boolean v0, p0, Landroidx/media3/effect/ExternalTextureManager;->automaticReregistration:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    iget-object v1, p0, Landroidx/media3/effect/ExternalTextureManager;->lastRegisteredFrame:Landroidx/media3/common/FrameInfo;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/FrameInfo;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/effect/ExternalTextureManager;->shouldRejectIncomingFrames:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->releaseAllFramesLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/media3/effect/ExternalTextureManager;->releaseAllFramesLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Landroidx/media3/effect/ExternalTextureManager;->currentInputStreamEnded:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->restartForceSignalEndOfStreamTimer()V

    :cond_3
    iget v0, p0, Landroidx/media3/effect/ExternalTextureManager;->availableFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/effect/ExternalTextureManager;->availableFrameCount:I

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->maybeQueueFrameToExternalShaderProgram()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    new-instance p2, Landroidx/media3/effect/j0;

    invoke-direct {p2, p0}, Landroidx/media3/effect/j0;-><init>(Landroidx/media3/effect/ExternalTextureManager;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submit(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;Z)V

    return-void
.end method

.method private synthetic lambda$onInputFrameProcessed$4()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->currentFrame:Landroidx/media3/common/FrameInfo;

    iget-boolean v0, p0, Landroidx/media3/effect/ExternalTextureManager;->currentInputStreamEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/effect/ExternalTextureManager;->currentInputStreamEnded:Z

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->externalShaderProgram:Landroidx/media3/effect/ExternalShaderProgram;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/ExternalShaderProgram;

    invoke-interface {v0}, Landroidx/media3/effect/GlShaderProgram;->signalEndOfCurrentInputStream()V

    const-string v0, "SignalEOS"

    const-wide/high16 v1, -0x8000000000000000L

    const-string v3, "ExternalTextureManager"

    invoke-static {v3, v0, v1, v2}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->cancelForceSignalEndOfStreamTimer()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->maybeQueueFrameToExternalShaderProgram()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onReadyToAcceptInputFrame$3()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget v0, p0, Landroidx/media3/effect/ExternalTextureManager;->externalShaderProgramInputCapacity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/effect/ExternalTextureManager;->externalShaderProgramInputCapacity:I

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->maybeQueueFrameToExternalShaderProgram()V

    return-void
.end method

.method private synthetic lambda$registerInputFrame$5()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/effect/ExternalTextureManager;->shouldRejectIncomingFrames:Z

    return-void
.end method

.method private synthetic lambda$releaseAllRegisteredFrames$7()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->removeAllSurfaceTextureFrames()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->releaseAllFramesException:Ljava/lang/RuntimeException;

    const-string v1, "ExtTexMgr"

    const-string v2, "Failed to remove texture frames"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->releaseAllFramesLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/effect/ExternalTextureManager;->releaseAllFramesLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$restartForceSignalEndOfStreamTimer$8()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/TextureManager;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance v1, Landroidx/media3/effect/i0;

    invoke-direct {v1, p0}, Landroidx/media3/effect/i0;-><init>(Landroidx/media3/effect/ExternalTextureManager;)V

    invoke-virtual {v0, v1}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submit(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    return-void
.end method

.method private synthetic lambda$setSamplingGlShaderProgram$2(Landroidx/media3/effect/GlShaderProgram;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/effect/ExternalTextureManager;->externalShaderProgramInputCapacity:I

    check-cast p1, Landroidx/media3/effect/ExternalShaderProgram;

    iput-object p1, p0, Landroidx/media3/effect/ExternalTextureManager;->externalShaderProgram:Landroidx/media3/effect/ExternalShaderProgram;

    return-void
.end method

.method private synthetic lambda$signalEndOfCurrentInputStream$6()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/effect/ExternalTextureManager;->automaticReregistration:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/media3/effect/ExternalTextureManager;->shouldRejectIncomingFrames:Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->currentFrame:Landroidx/media3/common/FrameInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->externalShaderProgram:Landroidx/media3/effect/ExternalShaderProgram;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/ExternalShaderProgram;

    invoke-interface {v0}, Landroidx/media3/effect/GlShaderProgram;->signalEndOfCurrentInputStream()V

    const-string v0, "SignalEOS"

    const-wide/high16 v1, -0x8000000000000000L

    const-string v3, "ExternalTextureManager"

    invoke-static {v3, v0, v1, v2}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->cancelForceSignalEndOfStreamTimer()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/effect/ExternalTextureManager;->currentInputStreamEnded:Z

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->restartForceSignalEndOfStreamTimer()V

    :goto_0
    return-void
.end method

.method private maybeQueueFrameToExternalShaderProgram()V
    .locals 12

    iget v0, p0, Landroidx/media3/effect/ExternalTextureManager;->externalShaderProgramInputCapacity:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media3/effect/ExternalTextureManager;->availableFrameCount:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->currentFrame:Landroidx/media3/common/FrameInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget v0, p0, Landroidx/media3/effect/ExternalTextureManager;->availableFrameCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/effect/ExternalTextureManager;->availableFrameCount:I

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/FrameInfo;

    iput-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->currentFrame:Landroidx/media3/common/FrameInfo;

    iget v1, p0, Landroidx/media3/effect/ExternalTextureManager;->externalShaderProgramInputCapacity:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/media3/effect/ExternalTextureManager;->externalShaderProgramInputCapacity:I

    iget-object v1, p0, Landroidx/media3/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Landroidx/media3/effect/ExternalTextureManager;->textureTransformMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v1, p0, Landroidx/media3/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    iget-wide v3, v0, Landroidx/media3/common/FrameInfo;->offsetToAddUs:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    add-long/2addr v1, v3

    iget-boolean v3, p0, Landroidx/media3/effect/ExternalTextureManager;->experimentalAdjustSurfaceTextureTransformationMatrix:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/media3/effect/ExternalTextureManager;->textureTransformMatrix:[F

    iget-object v4, v0, Landroidx/media3/common/FrameInfo;->format:Landroidx/media3/common/Format;

    iget v5, v4, Landroidx/media3/common/Format;->width:I

    iget v4, v4, Landroidx/media3/common/Format;->height:I

    invoke-static {v3, v1, v2, v5, v4}, Landroidx/media3/effect/ExternalTextureManager;->removeSurfaceTextureScaleFromTransformMatrix([FJII)V

    :cond_1
    iget-object v3, p0, Landroidx/media3/effect/ExternalTextureManager;->externalShaderProgram:Landroidx/media3/effect/ExternalShaderProgram;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/effect/ExternalShaderProgram;

    iget-object v4, p0, Landroidx/media3/effect/ExternalTextureManager;->textureTransformMatrix:[F

    invoke-interface {v3, v4}, Landroidx/media3/effect/ExternalShaderProgram;->setTextureTransformMatrix([F)V

    iget-object v3, p0, Landroidx/media3/effect/ExternalTextureManager;->externalShaderProgram:Landroidx/media3/effect/ExternalShaderProgram;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/effect/ExternalShaderProgram;

    iget-object v4, p0, Landroidx/media3/effect/ExternalTextureManager;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    new-instance v11, Landroidx/media3/common/GlTextureInfo;

    iget v6, p0, Landroidx/media3/effect/ExternalTextureManager;->externalTexId:I

    iget-object v0, v0, Landroidx/media3/common/FrameInfo;->format:Landroidx/media3/common/Format;

    iget v9, v0, Landroidx/media3/common/Format;->width:I

    iget v10, v0, Landroidx/media3/common/Format;->height:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Landroidx/media3/common/GlTextureInfo;-><init>(IIIII)V

    invoke-interface {v3, v4, v11, v1, v2}, Landroidx/media3/effect/GlShaderProgram;->queueInputFrame(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/common/GlTextureInfo;J)V

    iget-object p0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/FrameInfo;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "VideoFrameProcessor"

    const-string v0, "QueueFrame"

    invoke-static {p0, v0, v1, v2}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private removeAllSurfaceTextureFrames()V
    .locals 1

    :goto_0
    iget v0, p0, Landroidx/media3/effect/ExternalTextureManager;->availableFrameCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/effect/ExternalTextureManager;->availableFrameCount:I

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->releaseAllFramesLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/media3/effect/ExternalTextureManager;->releaseAllFramesLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method

.method private static removeSurfaceTextureScaleFromTransformMatrix([FJII)V
    .locals 19

    move-object/from16 v0, p0

    array-length v1, v0

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    sget-object v2, Landroidx/media3/effect/ExternalTextureManager;->TRANSFORMATION_MATRIX_EXPECTED_ZERO_INDICES:[I

    array-length v5, v2

    move v6, v4

    :goto_1
    const v7, 0x3089705f    # 1.0E-9f

    if-ge v6, v5, :cond_2

    aget v8, v2, v6

    aget v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v8, v7

    if-lez v7, :cond_1

    move v7, v3

    goto :goto_2

    :cond_1
    move v7, v4

    :goto_2
    or-int/2addr v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0xa

    aget v2, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    or-int/2addr v1, v2

    const/16 v2, 0xf

    aget v2, v0, v2

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    move v2, v4

    :goto_4
    or-int/2addr v1, v2

    aget v2, v0, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    const/16 v6, 0xd

    const/16 v8, 0xc

    const/4 v9, 0x4

    const/4 v10, 0x5

    if-lez v2, :cond_7

    aget v2, v0, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_7

    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    move v2, v4

    :goto_5
    or-int/2addr v1, v2

    aget v2, v0, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_6

    goto :goto_6

    :cond_6
    move v3, v4

    :goto_6
    or-int/2addr v3, v1

    move v1, v6

    move v9, v10

    move v6, v4

    goto :goto_9

    :cond_7
    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_a

    aget v2, v0, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_a

    aget v2, v0, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_8

    move v2, v3

    goto :goto_7

    :cond_8
    move v2, v4

    :goto_7
    or-int/2addr v1, v2

    aget v2, v0, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_9

    move v2, v3

    goto :goto_8

    :cond_9
    move v2, v4

    :goto_8
    or-int/2addr v1, v2

    move/from16 v18, v3

    move v3, v1

    move v1, v8

    move v8, v6

    move/from16 v6, v18

    goto :goto_9

    :cond_a
    const/4 v6, -0x1

    move v1, v6

    move v8, v1

    move v9, v8

    :goto_9
    if-eqz v3, :cond_b

    const-string v14, "Unable to apply SurfaceTexture fix"

    new-array v15, v4, [Ljava/lang/Object;

    const-string v10, "ExternalTextureManager"

    const-string v11, "SurfaceTextureTransformFix"

    move-wide/from16 v12, p1

    invoke-static/range {v10 .. v15}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b
    aget v2, v0, v6

    aget v3, v0, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v10, v7

    cmpg-float v10, v10, v5

    const/high16 v11, 0x3f000000    # 0.5f

    if-gez v10, :cond_c

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move/from16 v12, p3

    invoke-static {v10, v12}, Landroidx/media3/effect/ExternalTextureManager;->guessScaleWithoutSurfaceTextureTrim(FI)F

    move-result v10

    invoke-static {v10, v2}, Ljava/lang/Math;->copySign(FF)F

    move-result v10

    sub-float/2addr v2, v10

    mul-float/2addr v2, v11

    add-float/2addr v2, v3

    const-string v16, "Width scale adjusted."

    new-array v3, v4, [Ljava/lang/Object;

    const-string v12, "ExternalTextureManager"

    const-string v13, "SurfaceTextureTransformFix"

    move-wide/from16 v14, p1

    move-object/from16 v17, v3

    invoke-static/range {v12 .. v17}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    aput v10, v0, v6

    aput v2, v0, v8

    :cond_c
    aget v2, v0, v9

    aget v3, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v6, v7

    cmpg-float v5, v6, v5

    if-gez v5, :cond_d

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move/from16 v6, p4

    invoke-static {v5, v6}, Landroidx/media3/effect/ExternalTextureManager;->guessScaleWithoutSurfaceTextureTrim(FI)F

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->copySign(FF)F

    move-result v5

    sub-float/2addr v2, v5

    mul-float/2addr v2, v11

    add-float/2addr v2, v3

    const-string v14, "Height scale adjusted."

    new-array v15, v4, [Ljava/lang/Object;

    const-string v10, "ExternalTextureManager"

    const-string v11, "SurfaceTextureTransformFix"

    move-wide/from16 v12, p1

    invoke-static/range {v10 .. v15}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    aput v5, v0, v9

    aput v2, v0, v1

    :cond_d
    return-void
.end method

.method private restartForceSignalEndOfStreamTimer()V
    .locals 5

    invoke-direct {p0}, Landroidx/media3/effect/ExternalTextureManager;->cancelForceSignalEndOfStreamTimer()V

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Landroidx/media3/effect/f0;

    invoke-direct {v1, p0}, Landroidx/media3/effect/f0;-><init>(Landroidx/media3/effect/ExternalTextureManager;)V

    sget-wide v2, Landroidx/media3/effect/ExternalTextureManager;->SURFACE_TEXTURE_TIMEOUT_MS:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->forceSignalEndOfStreamFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method private static scoreForCandidateBufferSize(IFI)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    int-to-float v2, p2

    int-to-float v3, v1

    sub-float/2addr v2, v3

    int-to-float v3, p0

    div-float/2addr v2, v3

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public dropIncomingRegisteredFrames()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/effect/ExternalTextureManager;->shouldRejectIncomingFrames:Z

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/effect/ExternalTextureManager;->externalShaderProgramInputCapacity:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->currentFrame:Landroidx/media3/common/FrameInfo;

    iget-object v1, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iput-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->lastRegisteredFrame:Landroidx/media3/common/FrameInfo;

    invoke-super {p0}, Landroidx/media3/effect/TextureManager;->flush()V

    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/ExternalTextureManager;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public getPendingFrameCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public onInputFrameProcessed(Landroidx/media3/common/GlTextureInfo;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/effect/TextureManager;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance v0, Landroidx/media3/effect/h0;

    invoke-direct {v0, p0}, Landroidx/media3/effect/h0;-><init>(Landroidx/media3/effect/ExternalTextureManager;)V

    invoke-virtual {p1, v0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submit(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    return-void
.end method

.method public onReadyToAcceptInputFrame()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/TextureManager;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance v1, Landroidx/media3/effect/k0;

    invoke-direct {v1, p0}, Landroidx/media3/effect/k0;-><init>(Landroidx/media3/effect/ExternalTextureManager;)V

    invoke-virtual {v0, v1}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submit(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    return-void
.end method

.method public registerInputFrame(Landroidx/media3/common/FrameInfo;)V
    .locals 1

    iput-object p1, p0, Landroidx/media3/effect/ExternalTextureManager;->lastRegisteredFrame:Landroidx/media3/common/FrameInfo;

    iget-boolean v0, p0, Landroidx/media3/effect/ExternalTextureManager;->automaticReregistration:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Landroidx/media3/effect/TextureManager;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance v0, Landroidx/media3/effect/d0;

    invoke-direct {v0, p0}, Landroidx/media3/effect/d0;-><init>(Landroidx/media3/effect/ExternalTextureManager;)V

    invoke-virtual {p1, v0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submit(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object p0, p0, Landroidx/media3/effect/ExternalTextureManager;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public releaseAllRegisteredFrames()V
    .locals 5

    const-string v0, "ExtTexMgr"

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/effect/ExternalTextureManager;->releaseAllFramesLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Landroidx/media3/effect/TextureManager;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance v3, Landroidx/media3/effect/g0;

    invoke-direct {v3, p0}, Landroidx/media3/effect/g0;-><init>(Landroidx/media3/effect/ExternalTextureManager;)V

    invoke-virtual {v2, v3}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submit(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    :try_start_0
    sget-wide v2, Landroidx/media3/effect/ExternalTextureManager;->SURFACE_TEXTURE_TIMEOUT_MS:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Timeout reached while waiting for latch to be unblocked."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "Interrupted when waiting for MediaCodec frames to arrive."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->releaseAllFramesLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Landroidx/media3/effect/ExternalTextureManager;->releaseAllFramesException:Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/media3/effect/ExternalTextureManager;->releaseAllFramesException:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public setDefaultBufferSize(II)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    return-void
.end method

.method public setInputFrameInfo(Landroidx/media3/common/FrameInfo;Z)V
    .locals 0

    iput-boolean p2, p0, Landroidx/media3/effect/ExternalTextureManager;->automaticReregistration:Z

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroidx/media3/effect/ExternalTextureManager;->lastRegisteredFrame:Landroidx/media3/common/FrameInfo;

    iget-object p0, p0, Landroidx/media3/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p1, p1, Landroidx/media3/common/FrameInfo;->format:Landroidx/media3/common/Format;

    iget p2, p1, Landroidx/media3/common/Format;->width:I

    iget p1, p1, Landroidx/media3/common/Format;->height:I

    invoke-virtual {p0, p2, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    return-void
.end method

.method public setSamplingGlShaderProgram(Landroidx/media3/effect/GlShaderProgram;)V
    .locals 2

    instance-of v0, p1, Landroidx/media3/effect/ExternalShaderProgram;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/effect/TextureManager;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance v1, Landroidx/media3/effect/b0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/effect/b0;-><init>(Landroidx/media3/effect/ExternalTextureManager;Landroidx/media3/effect/GlShaderProgram;)V

    invoke-virtual {v0, v1}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submit(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    return-void
.end method

.method public signalEndOfCurrentInputStream()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/TextureManager;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance v1, Landroidx/media3/effect/c0;

    invoke-direct {v1, p0}, Landroidx/media3/effect/c0;-><init>(Landroidx/media3/effect/ExternalTextureManager;)V

    invoke-virtual {v0, v1}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submit(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    return-void
.end method
