.class public abstract Landroidx/media3/effect/SingleInputVideoGraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/VideoGraph;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final debugViewProvider:Landroidx/media3/common/DebugViewProvider;

.field private volatile hasProducedFrameWithTimestampZero:Z

.field private final initialTimestampOffsetUs:J

.field private inputIndex:I

.field private final listener:Landroidx/media3/common/VideoGraph$Listener;

.field private final listenerExecutor:Ljava/util/concurrent/Executor;

.field private final outputColorInfo:Landroidx/media3/common/ColorInfo;

.field private outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private released:Z

.field private final renderFramesAutomatically:Z

.field private videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/VideoGraph$Listener;Landroidx/media3/common/DebugViewProvider;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoCompositorSettings;ZJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/common/VideoCompositorSettings;->DEFAULT:Landroidx/media3/common/VideoCompositorSettings;

    invoke-virtual {v0, p7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p7

    const-string v0, "SingleInputVideoGraph does not use VideoCompositor, and therefore cannot apply VideoCompositorSettings"

    invoke-static {p7, v0}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/effect/SingleInputVideoGraph;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/effect/SingleInputVideoGraph;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    iput-object p3, p0, Landroidx/media3/effect/SingleInputVideoGraph;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    iput-object p4, p0, Landroidx/media3/effect/SingleInputVideoGraph;->listener:Landroidx/media3/common/VideoGraph$Listener;

    iput-object p5, p0, Landroidx/media3/effect/SingleInputVideoGraph;->debugViewProvider:Landroidx/media3/common/DebugViewProvider;

    iput-object p6, p0, Landroidx/media3/effect/SingleInputVideoGraph;->listenerExecutor:Ljava/util/concurrent/Executor;

    iput-boolean p8, p0, Landroidx/media3/effect/SingleInputVideoGraph;->renderFramesAutomatically:Z

    iput-wide p9, p0, Landroidx/media3/effect/SingleInputVideoGraph;->initialTimestampOffsetUs:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/effect/SingleInputVideoGraph;->inputIndex:I

    return-void
.end method

.method public static synthetic access$000(Landroidx/media3/effect/SingleInputVideoGraph;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->listenerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic access$102(Landroidx/media3/effect/SingleInputVideoGraph;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/effect/SingleInputVideoGraph;->hasProducedFrameWithTimestampZero:Z

    return p1
.end method

.method public static synthetic access$200(Landroidx/media3/effect/SingleInputVideoGraph;)Landroidx/media3/common/VideoGraph$Listener;
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->listener:Landroidx/media3/common/VideoGraph$Listener;

    return-object p0
.end method


# virtual methods
.method public getInitialTimestampOffsetUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->initialTimestampOffsetUs:J

    return-wide v0
.end method

.method public getInputIndex()I
    .locals 0

    iget p0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->inputIndex:I

    return p0
.end method

.method public getProcessor(I)Landroidx/media3/common/VideoFrameProcessor;
    .locals 2

    iget v0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->inputIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object p0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/VideoFrameProcessor;

    return-object p0
.end method

.method public hasProducedFrameWithTimestampZero()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->hasProducedFrameWithTimestampZero:Z

    return p0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public registerInput(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->released:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->inputIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "This VideoGraph supports only one input."

    invoke-static {v1, v0}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    iput p1, p0, Landroidx/media3/effect/SingleInputVideoGraph;->inputIndex:I

    iget-object v2, p0, Landroidx/media3/effect/SingleInputVideoGraph;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    iget-object v3, p0, Landroidx/media3/effect/SingleInputVideoGraph;->context:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media3/effect/SingleInputVideoGraph;->debugViewProvider:Landroidx/media3/common/DebugViewProvider;

    iget-object v5, p0, Landroidx/media3/effect/SingleInputVideoGraph;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    iget-boolean v6, p0, Landroidx/media3/effect/SingleInputVideoGraph;->renderFramesAutomatically:Z

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Landroidx/media3/effect/SingleInputVideoGraph$1;

    invoke-direct {v8, p0}, Landroidx/media3/effect/SingleInputVideoGraph$1;-><init>(Landroidx/media3/effect/SingleInputVideoGraph;)V

    invoke-interface/range {v2 .. v8}, Landroidx/media3/common/VideoFrameProcessor$Factory;->create(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLjava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)Landroidx/media3/common/VideoFrameProcessor;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/effect/SingleInputVideoGraph;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    iget-object p0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, Landroidx/media3/common/VideoFrameProcessor;->setOutputSurfaceInfo(Landroidx/media3/common/SurfaceInfo;)V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/VideoFrameProcessor;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->released:Z

    return-void
.end method

.method public setOutputSurfaceInfo(Landroidx/media3/common/SurfaceInfo;)V
    .locals 0
    .param p1    # Landroidx/media3/common/SurfaceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/media3/effect/SingleInputVideoGraph;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    iget-object p0, p0, Landroidx/media3/effect/SingleInputVideoGraph;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/media3/common/VideoFrameProcessor;->setOutputSurfaceInfo(Landroidx/media3/common/SurfaceInfo;)V

    :cond_0
    return-void
.end method
