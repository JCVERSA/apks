.class final Landroidx/media3/effect/FinalShaderProgramWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/GlShaderProgram;
.implements Landroidx/media3/effect/GlTextureProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;
    }
.end annotation


# static fields
.field private static final SURFACE_INPUT_CAPACITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FinalShaderWrapper"


# instance fields
.field private final availableFrames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Landroidx/media3/common/GlTextureInfo;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final eglContext:Landroid/opengl/EGLContext;

.field private final eglDisplay:Landroid/opengl/EGLDisplay;

.field private inputHeight:I

.field private inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

.field private inputWidth:I

.field private isInputStreamEndedWithPendingAvailableFrames:Z

.field private final matrixTransformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/effect/GlMatrixTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private matrixTransformationsChanged:Z

.field private onInputStreamProcessedListener:Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final outputColorInfo:Landroidx/media3/common/ColorInfo;

.field private outputEglSurface:Landroid/opengl/EGLSurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputSizeBeforeSurfaceTransformation:Landroidx/media3/common/util/Size;

.field private outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputSurfaceInfoChanged:Z

.field private final outputTexturePool:Landroidx/media3/effect/TexturePool;

.field private final outputTextureTimestamps:Landroidx/media3/common/util/LongArrayQueue;

.field private final placeholderSurface:Landroid/opengl/EGLSurface;

.field private final renderFramesAutomatically:Z

.field private final rgbMatrices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/effect/RgbMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private final sdrWorkingColorSpace:I

.field private final syncObjects:Landroidx/media3/common/util/LongArrayQueue;

.field private final textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

.field private final videoFrameProcessorListener:Landroidx/media3/common/VideoFrameProcessor$Listener;

.field private final videoFrameProcessorListenerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;Landroidx/media3/common/ColorInfo;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;Landroidx/media3/effect/GlTextureProducer$Listener;IIZ)V
    .locals 0
    .param p9    # Landroidx/media3/effect/GlTextureProducer$Listener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->matrixTransformations:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->rgbMatrices:Ljava/util/List;

    iput-object p2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iput-object p3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->eglContext:Landroid/opengl/EGLContext;

    iput-object p4, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->placeholderSurface:Landroid/opengl/EGLSurface;

    iput-object p5, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    iput-object p6, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    iput-object p7, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessorListenerExecutor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessorListener:Landroidx/media3/common/VideoFrameProcessor$Listener;

    iput-object p9, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    iput p11, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->sdrWorkingColorSpace:I

    iput-boolean p12, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->renderFramesAutomatically:Z

    new-instance p1, Landroidx/media3/effect/FinalShaderProgramWrapper$1;

    invoke-direct {p1, p0}, Landroidx/media3/effect/FinalShaderProgramWrapper$1;-><init>(Landroidx/media3/effect/FinalShaderProgramWrapper;)V

    iput-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->availableFrames:Ljava/util/Queue;

    invoke-static {p5}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result p1

    new-instance p2, Landroidx/media3/effect/TexturePool;

    invoke-direct {p2, p1, p10}, Landroidx/media3/effect/TexturePool;-><init>(ZI)V

    iput-object p2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    new-instance p1, Landroidx/media3/common/util/LongArrayQueue;

    invoke-direct {p1, p10}, Landroidx/media3/common/util/LongArrayQueue;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTextureTimestamps:Landroidx/media3/common/util/LongArrayQueue;

    new-instance p1, Landroidx/media3/common/util/LongArrayQueue;

    invoke-direct {p1, p10}, Landroidx/media3/common/util/LongArrayQueue;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->syncObjects:Landroidx/media3/common/util/LongArrayQueue;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/common/util/Size;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/FinalShaderProgramWrapper;->lambda$ensureConfigured$6(Landroidx/media3/common/util/Size;)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/effect/FinalShaderProgramWrapper;Ljava/lang/InterruptedException;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/FinalShaderProgramWrapper;->lambda$setOutputSurfaceInfo$3(Ljava/lang/InterruptedException;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/effect/FinalShaderProgramWrapper;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/effect/FinalShaderProgramWrapper;->lambda$queueInputFrame$1(J)V

    return-void
.end method

.method private createDefaultShaderProgram(III)Landroidx/media3/effect/DefaultShaderProgram;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    iget-object v1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->matrixTransformations:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Landroidx/media3/effect/ScaleAndRotateTransformation$Builder;

    invoke-direct {v1}, Landroidx/media3/effect/ScaleAndRotateTransformation$Builder;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroidx/media3/effect/ScaleAndRotateTransformation$Builder;->setRotationDegrees(F)Landroidx/media3/effect/ScaleAndRotateTransformation$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/effect/ScaleAndRotateTransformation$Builder;->build()Landroidx/media3/effect/ScaleAndRotateTransformation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :cond_0
    const/4 p1, 0x0

    invoke-static {p2, p3, p1}, Landroidx/media3/effect/Presentation;->createForWidthAndHeight(III)Landroidx/media3/effect/Presentation;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    iget-object p3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->context:Landroid/content/Context;

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->rgbMatrices:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    iget v2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->sdrWorkingColorSpace:I

    invoke-static {p3, p2, v0, v1, v2}, Landroidx/media3/effect/DefaultShaderProgram;->createApplyingOetf(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroidx/media3/common/ColorInfo;I)Landroidx/media3/effect/DefaultShaderProgram;

    move-result-object p2

    iget p3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputWidth:I

    iget v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputHeight:I

    invoke-virtual {p2, p3, v0}, Landroidx/media3/effect/DefaultShaderProgram;->configure(II)Landroidx/media3/common/util/Size;

    move-result-object p3

    iget-object p0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    if-eqz p0, :cond_3

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/SurfaceInfo;

    invoke-virtual {p3}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v0

    iget v1, p0, Landroidx/media3/common/SurfaceInfo;->width:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-virtual {p3}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result p3

    iget p0, p0, Landroidx/media3/common/SurfaceInfo;->height:I

    if-ne p3, p0, :cond_2

    move p1, v2

    :cond_2
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    :cond_3
    return-object p2
.end method

.method public static synthetic d(Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/common/util/GlUtil$GlException;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/FinalShaderProgramWrapper;->lambda$destroyOutputEglSurface$4(Landroidx/media3/common/util/GlUtil$GlException;)V

    return-void
.end method

.method private destroyOutputEglSurface()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->eglContext:Landroid/opengl/EGLContext;

    iget-object v3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->placeholderSurface:Landroid/opengl/EGLSurface;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v4}, Landroidx/media3/common/util/GlUtil;->focusEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;II)V

    iget-object v1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroidx/media3/common/util/GlUtil;->destroyEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessorListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media3/effect/q0;

    invoke-direct {v3, p0, v1}, Landroidx/media3/effect/q0;-><init>(Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/common/util/GlUtil$GlException;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;

    throw v1
.end method

.method public static synthetic e(Landroidx/media3/effect/FinalShaderProgramWrapper;Ljava/lang/Exception;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/effect/FinalShaderProgramWrapper;->lambda$renderFrame$5(Ljava/lang/Exception;J)V

    return-void
.end method

.method private ensureConfigured(Landroidx/media3/common/GlObjectsProvider;II)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_1

    iget v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputHeight:I

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSizeBeforeSurfaceTransformation:Landroidx/media3/common/util/Size;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iput p2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputWidth:I

    iput p3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputHeight:I

    iget-object v3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->matrixTransformations:Ljava/util/List;

    invoke-static {p2, p3, v3}, Landroidx/media3/effect/MatrixUtils;->configureAndGetOutputSize(IILjava/util/List;)Landroidx/media3/common/util/Size;

    move-result-object p2

    iget-object p3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSizeBeforeSurfaceTransformation:Landroidx/media3/common/util/Size;

    invoke-static {p3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iput-object p2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSizeBeforeSurfaceTransformation:Landroidx/media3/common/util/Size;

    iget-object p3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessorListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media3/effect/m0;

    invoke-direct {v3, p0, p2}, Landroidx/media3/effect/m0;-><init>(Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/common/util/Size;)V

    invoke-interface {p3, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSizeBeforeSurfaceTransformation:Landroidx/media3/common/util/Size;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    const/4 p3, 0x0

    if-nez p2, :cond_5

    iget-object v3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    if-nez v3, :cond_5

    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/media3/effect/DefaultShaderProgram;->release()V

    iput-object p3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    :cond_4
    const-string p0, "FinalShaderWrapper"

    const-string p1, "Output surface and size not set, dropping frame."

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    if-nez p2, :cond_6

    iget-object p2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSizeBeforeSurfaceTransformation:Landroidx/media3/common/util/Size;

    invoke-virtual {p2}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result p2

    goto :goto_3

    :cond_6
    iget p2, p2, Landroidx/media3/common/SurfaceInfo;->width:I

    :goto_3
    iget-object v3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    if-nez v3, :cond_7

    iget-object v3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSizeBeforeSurfaceTransformation:Landroidx/media3/common/util/Size;

    invoke-virtual {v3}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v3

    goto :goto_4

    :cond_7
    iget v3, v3, Landroidx/media3/common/SurfaceInfo;->height:I

    :goto_4
    iget-object v4, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    if-eqz v4, :cond_8

    iget-object v5, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;

    if-nez v5, :cond_8

    iget-object v5, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, v4, Landroidx/media3/common/SurfaceInfo;->surface:Landroid/view/Surface;

    iget-object v7, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    iget v7, v7, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    iget-boolean v4, v4, Landroidx/media3/common/SurfaceInfo;->isEncoderInputSurface:Z

    invoke-interface {p1, v5, v6, v7, v4}, Landroidx/media3/common/GlObjectsProvider;->createEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;IZ)Landroid/opengl/EGLSurface;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;

    :cond_8
    iget-object v4, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v4, p1, p2, v3}, Landroidx/media3/effect/TexturePool;->ensureConfigured(Landroidx/media3/common/GlObjectsProvider;II)V

    :cond_9
    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    if-eqz p1, :cond_b

    iget-boolean v4, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfoChanged:Z

    if-nez v4, :cond_a

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->matrixTransformationsChanged:Z

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p1}, Landroidx/media3/effect/DefaultShaderProgram;->release()V

    iput-object p3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    iput-boolean v2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfoChanged:Z

    iput-boolean v2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->matrixTransformationsChanged:Z

    :cond_b
    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    if-nez p1, :cond_d

    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    if-nez p1, :cond_c

    move p1, v2

    goto :goto_5

    :cond_c
    iget p1, p1, Landroidx/media3/common/SurfaceInfo;->orientationDegrees:I

    :goto_5
    invoke-direct {p0, p1, p2, v3}, Landroidx/media3/effect/FinalShaderProgramWrapper;->createDefaultShaderProgram(III)Landroidx/media3/effect/DefaultShaderProgram;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    iput-boolean v2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfoChanged:Z

    :cond_d
    return v1
.end method

.method public static synthetic f(Landroidx/media3/effect/FinalShaderProgramWrapper;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/effect/FinalShaderProgramWrapper;->lambda$releaseOutputTexture$0(J)V

    return-void
.end method

.method public static synthetic g(Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/common/SurfaceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/FinalShaderProgramWrapper;->lambda$setOutputSurfaceInfo$2(Landroidx/media3/common/SurfaceInfo;)V

    return-void
.end method

.method private getInputCapacity()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {p0}, Landroidx/media3/effect/TexturePool;->freeTextureCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method private synthetic lambda$destroyOutputEglSurface$4(Landroidx/media3/common/util/GlUtil$GlException;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessorListener:Landroidx/media3/common/VideoFrameProcessor$Listener;

    invoke-static {p1}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;)Landroidx/media3/common/VideoFrameProcessingException;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/common/VideoFrameProcessor$Listener;->onError(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method

.method private synthetic lambda$ensureConfigured$6(Landroidx/media3/common/util/Size;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessorListener:Landroidx/media3/common/VideoFrameProcessor$Listener;

    invoke-virtual {p1}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result p1

    invoke-interface {p0, v0, p1}, Landroidx/media3/common/VideoFrameProcessor$Listener;->onOutputSizeChanged(II)V

    return-void
.end method

.method private synthetic lambda$queueInputFrame$1(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessorListener:Landroidx/media3/common/VideoFrameProcessor$Listener;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/VideoFrameProcessor$Listener;->onOutputFrameAvailableForRendering(J)V

    return-void
.end method

.method private synthetic lambda$releaseOutputTexture$0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/media3/effect/FinalShaderProgramWrapper;->releaseOutputTextureInternal(J)V

    return-void
.end method

.method private synthetic lambda$renderFrame$5(Ljava/lang/Exception;J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessorListener:Landroidx/media3/common/VideoFrameProcessor$Listener;

    invoke-static {p1, p2, p3}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;J)Landroidx/media3/common/VideoFrameProcessingException;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/common/VideoFrameProcessor$Listener;->onError(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method

.method private synthetic lambda$setOutputSurfaceInfo$2(Landroidx/media3/common/SurfaceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/media3/effect/FinalShaderProgramWrapper;->setOutputSurfaceInfoInternal(Landroidx/media3/common/SurfaceInfo;)V

    return-void
.end method

.method private synthetic lambda$setOutputSurfaceInfo$3(Ljava/lang/InterruptedException;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessorListener:Landroidx/media3/common/VideoFrameProcessor$Listener;

    invoke-static {p1}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;)Landroidx/media3/common/VideoFrameProcessingException;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/common/VideoFrameProcessor$Listener;->onError(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method

.method private releaseOutputTextureInternal(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    :goto_1
    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v0}, Landroidx/media3/effect/TexturePool;->freeTextureCount()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v1}, Landroidx/media3/effect/TexturePool;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTextureTimestamps:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArrayQueue;->element()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v0}, Landroidx/media3/effect/TexturePool;->freeTexture()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTextureTimestamps:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArrayQueue;->remove()J

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->syncObjects:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArrayQueue;->remove()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/GlUtil;->deleteSyncObject(J)V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {v0}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onReadyToAcceptInputFrame()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private renderFrame(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/common/GlTextureInfo;JJ)V
    .locals 6

    const-wide/16 v0, -0x2

    cmp-long v0, p5, v0

    if-eqz v0, :cond_2

    :try_start_0
    iget v0, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/effect/FinalShaderProgramWrapper;->ensureConfigured(Landroidx/media3/common/GlObjectsProvider;II)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    if-eqz p1, :cond_1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media3/effect/FinalShaderProgramWrapper;->renderFrameToOutputSurface(Landroidx/media3/common/GlTextureInfo;JJ)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    if-eqz p1, :cond_3

    invoke-direct {p0, p2, p3, p4}, Landroidx/media3/effect/FinalShaderProgramWrapper;->renderFrameToOutputTexture(Landroidx/media3/common/GlTextureInfo;J)V

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {p1, p2}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onInputFrameProcessed(Landroidx/media3/common/GlTextureInfo;)V
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object p5, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessorListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance p6, Landroidx/media3/effect/l0;

    invoke-direct {p6, p0, p1, p3, p4}, Landroidx/media3/effect/l0;-><init>(Landroidx/media3/effect/FinalShaderProgramWrapper;Ljava/lang/Exception;J)V

    invoke-interface {p5, p6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    iget-object p0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {p0, p2}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onInputFrameProcessed(Landroidx/media3/common/GlTextureInfo;)V

    return-void
.end method

.method private renderFrameToOutputSurface(Landroidx/media3/common/GlTextureInfo;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/EGLSurface;

    iget-object v1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/SurfaceInfo;

    iget-object v2, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/effect/DefaultShaderProgram;

    iget-object v3, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->eglContext:Landroid/opengl/EGLContext;

    iget v5, v1, Landroidx/media3/common/SurfaceInfo;->width:I

    iget v1, v1, Landroidx/media3/common/SurfaceInfo;->height:I

    invoke-static {v3, v4, v0, v5, v1}, Landroidx/media3/common/util/GlUtil;->focusEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;II)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->clearFocusedBuffers()V

    iget p1, p1, Landroidx/media3/common/GlTextureInfo;->texId:I

    invoke-virtual {v2, p1, p2, p3}, Landroidx/media3/effect/DefaultShaderProgram;->drawFrame(IJ)V

    const-wide/16 v1, -0x1

    cmp-long p1, p4, v1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p4

    goto :goto_1

    :cond_0
    const-wide/16 v1, -0x3

    cmp-long p1, p4, v1

    if-nez p1, :cond_2

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const-wide/16 p4, 0x3e8

    mul-long/2addr p4, p2

    :cond_2
    :goto_1
    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1, v0, p4, p5}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    iget-object p0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p0, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    const-string p0, "VideoFrameProcessor"

    const-string p1, "RenderedToOutputSurface"

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private renderFrameToOutputTexture(Landroidx/media3/common/GlTextureInfo;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;,
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v0}, Landroidx/media3/effect/TexturePool;->useTexture()Landroidx/media3/common/GlTextureInfo;

    move-result-object v3

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTextureTimestamps:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/util/LongArrayQueue;->add(J)V

    iget v0, v3, Landroidx/media3/common/GlTextureInfo;->fboId:I

    iget v1, v3, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v2, v3, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/GlUtil;->focusFramebufferUsingCurrentContext(III)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->clearFocusedBuffers()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/DefaultShaderProgram;

    iget p1, p1, Landroidx/media3/common/GlTextureInfo;->texId:I

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/effect/DefaultShaderProgram;->drawFrame(IJ)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->createGlSyncFence()J

    move-result-wide v6

    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->syncObjects:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {p1, v6, v7}, Landroidx/media3/common/util/LongArrayQueue;->add(J)V

    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/media3/effect/GlTextureProducer$Listener;

    move-object v2, p0

    move-wide v4, p2

    invoke-interface/range {v1 .. v7}, Landroidx/media3/effect/GlTextureProducer$Listener;->onTextureRendered(Landroidx/media3/effect/GlTextureProducer;Landroidx/media3/common/GlTextureInfo;JJ)V

    return-void
.end method

.method private setOutputSurfaceInfoInternal(Landroidx/media3/common/SurfaceInfo;)V
    .locals 3
    .param p1    # Landroidx/media3/common/SurfaceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, v0, Landroidx/media3/common/SurfaceInfo;->surface:Landroid/view/Surface;

    iget-object v1, p1, Landroidx/media3/common/SurfaceInfo;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Landroidx/media3/effect/FinalShaderProgramWrapper;->destroyOutputEglSurface()V

    :cond_3
    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iget v1, v0, Landroidx/media3/common/SurfaceInfo;->width:I

    iget v2, p1, Landroidx/media3/common/SurfaceInfo;->width:I

    if-ne v1, v2, :cond_5

    iget v1, v0, Landroidx/media3/common/SurfaceInfo;->height:I

    iget v2, p1, Landroidx/media3/common/SurfaceInfo;->height:I

    if-ne v1, v2, :cond_5

    iget v0, v0, Landroidx/media3/common/SurfaceInfo;->orientationDegrees:I

    iget v1, p1, Landroidx/media3/common/SurfaceInfo;->orientationDegrees:I

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfoChanged:Z

    iput-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    invoke-virtual {v0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->verifyVideoFrameProcessingThread()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v0}, Landroidx/media3/effect/TexturePool;->freeAllTextures()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTextureTimestamps:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArrayQueue;->clear()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->syncObjects:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArrayQueue;->clear()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->availableFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->isInputStreamEndedWithPendingAvailableFrames:Z

    iget-object v1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/media3/effect/BaseGlShaderProgram;->flush()V

    :cond_1
    iget-object v1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {v1}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onFlush()V

    :goto_0
    invoke-direct {p0}, Landroidx/media3/effect/FinalShaderProgramWrapper;->getInputCapacity()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {v1}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onReadyToAcceptInputFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public queueInputFrame(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/common/GlTextureInfo;J)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    invoke-virtual {v0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->verifyVideoFrameProcessingThread()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessorListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media3/effect/p0;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media3/effect/p0;-><init>(Landroidx/media3/effect/FinalShaderProgramWrapper;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->renderFramesAutomatically:Z

    if-eqz v0, :cond_0

    mul-long v8, p3, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v3 .. v9}, Landroidx/media3/effect/FinalShaderProgramWrapper;->renderFrame(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/common/GlTextureInfo;JJ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->availableFrames:Ljava/util/Queue;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {p0}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onReadyToAcceptInputFrame()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v0}, Landroidx/media3/effect/TexturePool;->freeTextureCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    mul-long v8, p3, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v3 .. v9}, Landroidx/media3/effect/FinalShaderProgramWrapper;->renderFrame(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/common/GlTextureInfo;JJ)V

    :goto_2
    return-void
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    invoke-virtual {v0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->verifyVideoFrameProcessingThread()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/effect/DefaultShaderProgram;->release()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v0}, Landroidx/media3/effect/TexturePool;->deleteAllTextures()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->outputEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, p0}, Landroidx/media3/common/util/GlUtil;->destroyEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {v0, p0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public releaseOutputFrame(Landroidx/media3/common/GlTextureInfo;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public releaseOutputTexture(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance v1, Landroidx/media3/effect/r0;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/effect/r0;-><init>(Landroidx/media3/effect/FinalShaderProgramWrapper;J)V

    invoke-virtual {v0, v1}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submit(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    return-void
.end method

.method public renderOutputFrame(Landroidx/media3/common/GlObjectsProvider;J)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    invoke-virtual {v0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->verifyVideoFrameProcessingThread()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->renderFramesAutomatically:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->availableFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroidx/media3/common/GlTextureInfo;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p2

    invoke-direct/range {v2 .. v8}, Landroidx/media3/effect/FinalShaderProgramWrapper;->renderFrame(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/common/GlTextureInfo;JJ)V

    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->availableFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->isInputStreamEndedWithPendingAvailableFrames:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->onInputStreamProcessedListener:Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;

    invoke-interface {p1}, Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;->onInputStreamProcessed()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->isInputStreamEndedWithPendingAvailableFrames:Z

    :cond_1
    return-void
.end method

.method public setErrorListener(Ljava/util/concurrent/Executor;Landroidx/media3/effect/GlShaderProgram$ErrorListener;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setInputListener(Landroidx/media3/effect/GlShaderProgram$InputListener;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    invoke-virtual {v0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->verifyVideoFrameProcessingThread()V

    iput-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Landroidx/media3/effect/FinalShaderProgramWrapper;->getInputCapacity()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onReadyToAcceptInputFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMatrixTransformations(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/effect/GlMatrixTransformation;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/effect/RgbMatrix;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    invoke-virtual {v0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->verifyVideoFrameProcessingThread()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->matrixTransformations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->matrixTransformations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->rgbMatrices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->rgbMatrices:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->matrixTransformationsChanged:Z

    return-void
.end method

.method public setOnInputStreamProcessedListener(Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;)V
    .locals 1
    .param p1    # Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    invoke-virtual {v0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->verifyVideoFrameProcessingThread()V

    iput-object p1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->onInputStreamProcessedListener:Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;

    return-void
.end method

.method public setOutputListener(Landroidx/media3/effect/GlShaderProgram$OutputListener;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setOutputSurfaceInfo(Landroidx/media3/common/SurfaceInfo;)V
    .locals 2
    .param p1    # Landroidx/media3/common/SurfaceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance v1, Landroidx/media3/effect/n0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/effect/n0;-><init>(Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/common/SurfaceInfo;)V

    invoke-virtual {v0, v1}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->invoke(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessorListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media3/effect/o0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/effect/o0;-><init>(Landroidx/media3/effect/FinalShaderProgramWrapper;Ljava/lang/InterruptedException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public signalEndOfCurrentInputStream()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    invoke-virtual {v0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->verifyVideoFrameProcessingThread()V

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->availableFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->onInputStreamProcessedListener:Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;

    invoke-interface {v0}, Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;->onInputStreamProcessed()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->isInputStreamEndedWithPendingAvailableFrames:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->renderFramesAutomatically:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Landroidx/media3/effect/FinalShaderProgramWrapper;->isInputStreamEndedWithPendingAvailableFrames:Z

    :goto_0
    return-void
.end method
