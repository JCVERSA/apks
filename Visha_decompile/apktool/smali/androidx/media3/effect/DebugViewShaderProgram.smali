.class public final Landroidx/media3/effect/DebugViewShaderProgram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/GlShaderProgram;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/effect/DebugViewShaderProgram$SurfaceViewWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DebugViewShaderProgram"


# instance fields
.field private final context:Landroid/content/Context;

.field private debugSurfaceView:Landroid/view/SurfaceView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private debugSurfaceViewWrapper:Landroidx/media3/effect/DebugViewShaderProgram$SurfaceViewWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final debugViewProvider:Landroidx/media3/common/DebugViewProvider;

.field private defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private eglDisplay:Landroid/opengl/EGLDisplay;

.field private errorListener:Landroidx/media3/effect/GlShaderProgram$ErrorListener;

.field private errorListenerExecutor:Ljava/util/concurrent/Executor;

.field private inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

.field private final outputColorInfo:Landroidx/media3/common/ColorInfo;

.field private outputHeight:I

.field private outputListener:Landroidx/media3/effect/GlShaderProgram$OutputListener;

.field private outputWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputWidth:I

    iput v0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputHeight:I

    iput-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/effect/DebugViewShaderProgram;->debugViewProvider:Landroidx/media3/common/DebugViewProvider;

    iput-object p3, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    new-instance p1, Landroidx/media3/effect/DebugViewShaderProgram$1;

    invoke-direct {p1, p0}, Landroidx/media3/effect/DebugViewShaderProgram$1;-><init>(Landroidx/media3/effect/DebugViewShaderProgram;)V

    iput-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    new-instance p1, Landroidx/media3/effect/DebugViewShaderProgram$2;

    invoke-direct {p1, p0}, Landroidx/media3/effect/DebugViewShaderProgram$2;-><init>(Landroidx/media3/effect/DebugViewShaderProgram;)V

    iput-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputListener:Landroidx/media3/effect/GlShaderProgram$OutputListener;

    new-instance p1, Lst1;

    invoke-direct {p1}, Lst1;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->errorListener:Landroidx/media3/effect/GlShaderProgram$ErrorListener;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->errorListenerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/effect/DebugViewShaderProgram;Ljava/lang/Exception;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/effect/DebugViewShaderProgram;->lambda$queueInputFrame$2(Ljava/lang/Exception;J)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/effect/DefaultShaderProgram;Landroidx/media3/common/GlTextureInfo;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/effect/DebugViewShaderProgram;->lambda$queueInputFrame$1(Landroidx/media3/effect/DefaultShaderProgram;Landroidx/media3/common/GlTextureInfo;J)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 0

    invoke-static {p0}, Landroidx/media3/effect/DebugViewShaderProgram;->lambda$new$0(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method

.method private ensureConfigured(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->eglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->getDefaultEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->eglDisplay:Landroid/opengl/EGLDisplay;

    :cond_0
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->getCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget v1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputHeight:I

    if-ne v1, v2, :cond_2

    :cond_1
    iput p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputWidth:I

    iput p2, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputHeight:I

    :cond_2
    iget-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->debugViewProvider:Landroidx/media3/common/DebugViewProvider;

    iget p2, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputWidth:I

    iget v1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputHeight:I

    invoke-interface {p1, p2, v1}, Landroidx/media3/common/DebugViewProvider;->getDebugPreviewSurfaceView(II)Landroid/view/SurfaceView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Landroidx/media3/effect/DebugViewShaderProgram;->debugSurfaceView:Landroid/view/SurfaceView;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Landroidx/media3/effect/DebugViewShaderProgram$SurfaceViewWrapper;

    iget-object v1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    iget v2, v2, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    invoke-direct {p2, v1, v0, p1, v2}, Landroidx/media3/effect/DebugViewShaderProgram$SurfaceViewWrapper;-><init>(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/view/SurfaceView;I)V

    iput-object p2, p0, Landroidx/media3/effect/DebugViewShaderProgram;->debugSurfaceViewWrapper:Landroidx/media3/effect/DebugViewShaderProgram$SurfaceViewWrapper;

    :cond_3
    iput-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->debugSurfaceView:Landroid/view/SurfaceView;

    iget-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    if-nez p1, :cond_5

    new-instance p1, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {p1}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    iget p2, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputWidth:I

    iget v0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputHeight:I

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroidx/media3/effect/Presentation;->createForWidthAndHeight(III)Landroidx/media3/effect/Presentation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    iget-object p2, p0, Landroidx/media3/effect/DebugViewShaderProgram;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    iget v3, v2, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/4 v1, 0x2

    :cond_4
    invoke-static {p2, p1, v0, v2, v1}, Landroidx/media3/effect/DefaultShaderProgram;->createApplyingOetf(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroidx/media3/common/ColorInfo;I)Landroidx/media3/effect/DefaultShaderProgram;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    :cond_5
    return-void
.end method

.method private static synthetic lambda$new$0(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 2

    const-string v0, "DebugViewShaderProgram"

    const-string v1, "Exception caught by errorListener."

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$queueInputFrame$1(Landroidx/media3/effect/DefaultShaderProgram;Landroidx/media3/common/GlTextureInfo;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget p1, p1, Landroidx/media3/common/GlTextureInfo;->texId:I

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/effect/DefaultShaderProgram;->drawFrame(IJ)V

    return-void
.end method

.method private synthetic lambda$queueInputFrame$2(Ljava/lang/Exception;J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->errorListener:Landroidx/media3/effect/GlShaderProgram$ErrorListener;

    invoke-static {p1, p2, p3}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;J)Landroidx/media3/common/VideoFrameProcessingException;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/effect/GlShaderProgram$ErrorListener;->onError(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/effect/BaseGlShaderProgram;->flush()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {v0}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onFlush()V

    iget-object p0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {p0}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onReadyToAcceptInputFrame()V

    return-void
.end method

.method public queueInputFrame(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/common/GlTextureInfo;J)V
    .locals 3

    :try_start_0
    iget v0, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-direct {p0, v0, v1}, Landroidx/media3/effect/DebugViewShaderProgram;->ensureConfigured(II)V

    iget-object v0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/DefaultShaderProgram;

    iget-object v1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->debugSurfaceViewWrapper:Landroidx/media3/effect/DebugViewShaderProgram$SurfaceViewWrapper;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/effect/DebugViewShaderProgram$SurfaceViewWrapper;

    new-instance v2, Landroidx/media3/effect/h;

    invoke-direct {v2, v0, p2, p3, p4}, Landroidx/media3/effect/h;-><init>(Landroidx/media3/effect/DefaultShaderProgram;Landroidx/media3/common/GlTextureInfo;J)V

    invoke-virtual {v1, v2, p1}, Landroidx/media3/effect/DebugViewShaderProgram$SurfaceViewWrapper;->maybeRenderToSurfaceView(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;Landroidx/media3/common/GlObjectsProvider;)V

    iget-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputListener:Landroidx/media3/effect/GlShaderProgram$OutputListener;

    invoke-interface {p1, p2, p3, p4}, Landroidx/media3/effect/GlShaderProgram$OutputListener;->onOutputFrameAvailable(Landroidx/media3/common/GlTextureInfo;J)V
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Landroidx/media3/effect/DebugViewShaderProgram;->errorListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ltt1;

    invoke-direct {v0, p0, p1, p3, p4}, Ltt1;-><init>(Landroidx/media3/effect/DebugViewShaderProgram;Ljava/lang/Exception;J)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->defaultShaderProgram:Landroidx/media3/effect/DefaultShaderProgram;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/effect/DefaultShaderProgram;->release()V

    :cond_0
    :try_start_0
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
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {v0, p1}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onInputFrameProcessed(Landroidx/media3/common/GlTextureInfo;)V

    iget-object p0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {p0}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onReadyToAcceptInputFrame()V

    return-void
.end method

.method public setErrorListener(Ljava/util/concurrent/Executor;Landroidx/media3/effect/GlShaderProgram$ErrorListener;)V
    .locals 0

    iput-object p2, p0, Landroidx/media3/effect/DebugViewShaderProgram;->errorListener:Landroidx/media3/effect/GlShaderProgram$ErrorListener;

    iput-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->errorListenerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setInputListener(Landroidx/media3/effect/GlShaderProgram$InputListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {p1}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onReadyToAcceptInputFrame()V

    return-void
.end method

.method public setOutputListener(Landroidx/media3/effect/GlShaderProgram$OutputListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputListener:Landroidx/media3/effect/GlShaderProgram$OutputListener;

    return-void
.end method

.method public signalEndOfCurrentInputStream()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/DebugViewShaderProgram;->outputListener:Landroidx/media3/effect/GlShaderProgram$OutputListener;

    invoke-interface {p0}, Landroidx/media3/effect/GlShaderProgram$OutputListener;->onCurrentOutputStreamEnded()V

    return-void
.end method
