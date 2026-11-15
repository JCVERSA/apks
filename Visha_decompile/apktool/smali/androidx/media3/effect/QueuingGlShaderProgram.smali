.class final Landroidx/media3/effect/QueuingGlShaderProgram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/GlShaderProgram;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;,
        Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media3/effect/GlShaderProgram;"
    }
.end annotation


# static fields
.field private static final PROCESSING_TIMEOUT_MS:J = 0x7a120L

.field private static final TAG:Ljava/lang/String; = "QueuingGlShaderProgram"


# instance fields
.field private final concurrentEffect:Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect<",
            "TT;>;"
        }
    .end annotation
.end field

.field private errorListener:Landroidx/media3/effect/GlShaderProgram$ErrorListener;

.field private errorListenerExecutor:Ljava/util/concurrent/Executor;

.field private final frameQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private inputHeight:I

.field private inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

.field private inputWidth:I

.field private outputListener:Landroidx/media3/effect/GlShaderProgram$OutputListener;

.field private final outputTexturePool:Landroidx/media3/effect/TexturePool;


# direct methods
.method public constructor <init>(ZILandroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p3, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->concurrentEffect:Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;

    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p3, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->frameQueue:Ljava/util/Queue;

    new-instance p3, Landroidx/media3/effect/TexturePool;

    invoke-direct {p3, p1, p2}, Landroidx/media3/effect/TexturePool;-><init>(ZI)V

    iput-object p3, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    new-instance p1, Landroidx/media3/effect/QueuingGlShaderProgram$1;

    invoke-direct {p1, p0}, Landroidx/media3/effect/QueuingGlShaderProgram$1;-><init>(Landroidx/media3/effect/QueuingGlShaderProgram;)V

    iput-object p1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    new-instance p1, Landroidx/media3/effect/QueuingGlShaderProgram$2;

    invoke-direct {p1, p0}, Landroidx/media3/effect/QueuingGlShaderProgram$2;-><init>(Landroidx/media3/effect/QueuingGlShaderProgram;)V

    iput-object p1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputListener:Landroidx/media3/effect/GlShaderProgram$OutputListener;

    new-instance p1, Landroidx/media3/effect/a1;

    invoke-direct {p1}, Landroidx/media3/effect/a1;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->errorListener:Landroidx/media3/effect/GlShaderProgram$ErrorListener;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->errorListenerExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputWidth:I

    iput p1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputHeight:I

    return-void
.end method

.method public static synthetic a(Landroidx/media3/effect/QueuingGlShaderProgram;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/QueuingGlShaderProgram;->lambda$onError$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 0

    invoke-static {p0}, Landroidx/media3/effect/QueuingGlShaderProgram;->lambda$new$0(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method

.method private cancelProcessingOfPendingFrames()V
    .locals 2

    :goto_0
    iget-object v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->frameQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;->task:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$0(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 2

    const-string v0, "QueuingGlShaderProgram"

    const-string v1, "Exception caught by default QueuingGlShaderProgram errorListener."

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onError$1(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->errorListener:Landroidx/media3/effect/GlShaderProgram$ErrorListener;

    invoke-static {p1}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;)Landroidx/media3/common/VideoFrameProcessingException;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/effect/GlShaderProgram$ErrorListener;->onError(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->errorListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media3/effect/z0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/effect/z0;-><init>(Landroidx/media3/effect/QueuingGlShaderProgram;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private outputOneFrame()Z
    .locals 7

    iget-object v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->frameQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v2, v0, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;->task:Ljava/util/concurrent/Future;

    const-class v3, Landroidx/media3/common/VideoFrameProcessingException;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v5, 0x7a120

    invoke-static {v2, v3, v5, v6, v4}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;->textureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v4, v3, Landroidx/media3/common/GlTextureInfo;->fboId:I

    iget v5, v3, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v3, v3, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-static {v4, v5, v3}, Landroidx/media3/common/util/GlUtil;->focusFramebufferUsingCurrentContext(III)V

    iget-object v3, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->concurrentEffect:Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;

    iget-object v4, v0, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;->textureInfo:Landroidx/media3/common/GlTextureInfo;

    iget-wide v5, v0, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;->presentationTimeUs:J

    invoke-interface {v3, v4, v5, v6, v2}, Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;->finishProcessingAndBlend(Landroidx/media3/common/GlTextureInfo;JLjava/lang/Object;)V

    iget-object v2, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputListener:Landroidx/media3/effect/GlShaderProgram$OutputListener;

    iget-object v3, v0, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;->textureInfo:Landroidx/media3/common/GlTextureInfo;

    iget-wide v4, v0, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;->presentationTimeUs:J

    invoke-interface {v2, v3, v4, v5}, Landroidx/media3/effect/GlShaderProgram$OutputListener;->onOutputFrameAvailable(Landroidx/media3/common/GlTextureInfo;J)V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroidx/media3/effect/QueuingGlShaderProgram;->onError(Ljava/lang/Exception;)V

    return v1
.end method


# virtual methods
.method public flush()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->concurrentEffect:Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;

    invoke-interface {v0}, Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;->flush()V
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroidx/media3/effect/QueuingGlShaderProgram;->onError(Ljava/lang/Exception;)V

    :goto_0
    invoke-direct {p0}, Landroidx/media3/effect/QueuingGlShaderProgram;->cancelProcessingOfPendingFrames()V

    iget-object v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v0}, Landroidx/media3/effect/TexturePool;->freeAllTextures()V

    iget-object v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {v0}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onFlush()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v1}, Landroidx/media3/effect/TexturePool;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {v1}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onReadyToAcceptInputFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public queueInputFrame(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/common/GlTextureInfo;J)V
    .locals 7

    :try_start_0
    iget v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputWidth:I

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputHeight:I

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v0}, Landroidx/media3/effect/TexturePool;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/media3/effect/QueuingGlShaderProgram;->outputOneFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iput v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputWidth:I

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    iput v1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputHeight:I

    iget-object v2, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v2, p1, v0, v1}, Landroidx/media3/effect/TexturePool;->ensureConfigured(Landroidx/media3/common/GlObjectsProvider;II)V

    :cond_2
    iget-object v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v0}, Landroidx/media3/effect/TexturePool;->useTexture()Landroidx/media3/common/GlTextureInfo;

    move-result-object v0

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->fboId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->fboId:I

    new-instance v2, Landroidx/media3/common/util/GlRect;

    iget v3, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputWidth:I

    iget v4, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputHeight:I

    invoke-direct {v2, v3, v4}, Landroidx/media3/common/util/GlRect;-><init>(II)V

    iget v3, v0, Landroidx/media3/common/GlTextureInfo;->fboId:I

    new-instance v4, Landroidx/media3/common/util/GlRect;

    iget v5, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputWidth:I

    iget v6, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputHeight:I

    invoke-direct {v4, v5, v6}, Landroidx/media3/common/util/GlRect;-><init>(II)V

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/common/util/GlUtil;->blitFrameBuffer(ILandroidx/media3/common/util/GlRect;ILandroidx/media3/common/util/GlRect;)V

    iget-object v1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->concurrentEffect:Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;

    invoke-interface {v1, p1, v0, p3, p4}, Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;->queueInputFrame(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/common/GlTextureInfo;J)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->frameQueue:Ljava/util/Queue;

    new-instance v2, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;

    invoke-direct {v2, v0, p3, p4, p1}, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;-><init>(Landroidx/media3/common/GlTextureInfo;JLjava/util/concurrent/Future;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {p1, p2}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onInputFrameProcessed(Landroidx/media3/common/GlTextureInfo;)V

    iget-object p1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->frameQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    iget-object p2, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {p2}, Landroidx/media3/effect/TexturePool;->capacity()I

    move-result p2

    if-ne p1, p2, :cond_4

    invoke-direct {p0}, Landroidx/media3/effect/QueuingGlShaderProgram;->outputOneFrame()Z

    move-result p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-direct {p0, p1}, Landroidx/media3/effect/QueuingGlShaderProgram;->onError(Ljava/lang/Exception;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public release()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/effect/QueuingGlShaderProgram;->cancelProcessingOfPendingFrames()V

    iget-object v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->concurrentEffect:Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;

    invoke-interface {v0}, Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;->release()V

    iget-object p0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {p0}, Landroidx/media3/effect/TexturePool;->deleteAllTextures()V
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

    iget-object v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v0, p1}, Landroidx/media3/effect/TexturePool;->isUsingTexture(Landroidx/media3/common/GlTextureInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v0, p1}, Landroidx/media3/effect/TexturePool;->freeTexture(Landroidx/media3/common/GlTextureInfo;)V

    iget-object p0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    invoke-interface {p0}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onReadyToAcceptInputFrame()V

    return-void
.end method

.method public setErrorListener(Ljava/util/concurrent/Executor;Landroidx/media3/effect/GlShaderProgram$ErrorListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->errorListenerExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->errorListener:Landroidx/media3/effect/GlShaderProgram$ErrorListener;

    return-void
.end method

.method public setInputListener(Landroidx/media3/effect/GlShaderProgram$InputListener;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->inputListener:Landroidx/media3/effect/GlShaderProgram$InputListener;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputTexturePool:Landroidx/media3/effect/TexturePool;

    invoke-virtual {v1}, Landroidx/media3/effect/TexturePool;->freeTextureCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onReadyToAcceptInputFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOutputListener(Landroidx/media3/effect/GlShaderProgram$OutputListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputListener:Landroidx/media3/effect/GlShaderProgram$OutputListener;

    return-void
.end method

.method public signalEndOfCurrentInputStream()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->concurrentEffect:Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;

    invoke-interface {v0}, Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;->signalEndOfCurrentInputStream()V
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroidx/media3/effect/QueuingGlShaderProgram;->onError(Ljava/lang/Exception;)V

    :goto_0
    invoke-direct {p0}, Landroidx/media3/effect/QueuingGlShaderProgram;->outputOneFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/effect/QueuingGlShaderProgram;->outputListener:Landroidx/media3/effect/GlShaderProgram$OutputListener;

    invoke-interface {p0}, Landroidx/media3/effect/GlShaderProgram$OutputListener;->onCurrentOutputStreamEnded()V

    return-void
.end method
