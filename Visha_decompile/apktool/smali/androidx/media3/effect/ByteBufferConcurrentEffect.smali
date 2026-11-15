.class Landroidx/media3/effect/ByteBufferConcurrentEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;,
        Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;,
        Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media3/effect/QueuingGlShaderProgram$ConcurrentEffect<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BYTES_PER_PIXEL:I = 0x4


# instance fields
.field private effectInputTexture:Landroidx/media3/common/GlTextureInfo;

.field private inputHeight:I

.field private inputWidth:I

.field private final mappedPixelBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingPixelBufferQueueSize:I

.field private final pixelBufferObjectProvider:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;

.field private final processor:Landroidx/media3/effect/ByteBufferGlEffect$Processor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/effect/ByteBufferGlEffect$Processor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final unmappedPixelBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroidx/media3/effect/ByteBufferGlEffect$Processor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/effect/ByteBufferGlEffect$Processor<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->processor:Landroidx/media3/effect/ByteBufferGlEffect$Processor;

    iput p1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->pendingPixelBufferQueueSize:I

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->unmappedPixelBuffers:Ljava/util/Queue;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->mappedPixelBuffers:Ljava/util/Queue;

    new-instance p1, Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;

    invoke-direct {p1}, Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->pixelBufferObjectProvider:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->inputWidth:I

    iput p1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->inputHeight:I

    return-void
.end method

.method public static synthetic a(Landroidx/media3/effect/ByteBufferConcurrentEffect;JLandroidx/media3/effect/ByteBufferGlEffect$Image;)Lim5;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/effect/ByteBufferConcurrentEffect;->lambda$queueInputFrame$0(JLandroidx/media3/effect/ByteBufferGlEffect$Image;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Landroidx/media3/common/GlTextureInfo;)I
    .locals 0

    invoke-static {p0}, Landroidx/media3/effect/ByteBufferConcurrentEffect;->texturePixelBufferSize(Landroidx/media3/common/GlTextureInfo;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$queueInputFrame$0(JLandroidx/media3/effect/ByteBufferGlEffect$Image;)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->processor:Landroidx/media3/effect/ByteBufferGlEffect$Processor;

    invoke-interface {p0, p3, p1, p2}, Landroidx/media3/effect/ByteBufferGlEffect$Processor;->processImage(Landroidx/media3/effect/ByteBufferGlEffect$Image;J)Lim5;

    move-result-object p0

    return-object p0
.end method

.method private mapOnePixelBuffer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->unmappedPixelBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->map()V

    iget-object p0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->mappedPixelBuffers:Ljava/util/Queue;

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private static texturePixelBufferSize(Landroidx/media3/common/GlTextureInfo;)I
    .locals 1

    iget v0, p0, Landroidx/media3/common/GlTextureInfo;->width:I

    iget p0, p0, Landroidx/media3/common/GlTextureInfo;->height:I

    mul-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private unmapAndRecyclePixelBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->unmappedPixelBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->pixelBufferObjectProvider:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;

    invoke-virtual {v0, v1}, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->unmapAndRecycle(Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;)V

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->mappedPixelBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->pixelBufferObjectProvider:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;

    invoke-virtual {v0, v1}, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->unmapAndRecycle(Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public finishProcessingAndBlend(Landroidx/media3/common/GlTextureInfo;JLjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/GlTextureInfo;",
            "JTT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->mappedPixelBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;

    iget-object v1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->pixelBufferObjectProvider:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;

    invoke-virtual {v0, v1}, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->unmapAndRecycle(Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;)V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->processor:Landroidx/media3/effect/ByteBufferGlEffect$Processor;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/effect/ByteBufferGlEffect$Processor;->finishProcessingAndBlend(Landroidx/media3/common/GlTextureInfo;JLjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {p1, p0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/effect/ByteBufferConcurrentEffect;->unmapAndRecyclePixelBuffers()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {v0, p0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public queueInputFrame(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/common/GlTextureInfo;J)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/GlObjectsProvider;",
            "Landroidx/media3/common/GlTextureInfo;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->unmappedPixelBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->pendingPixelBufferQueueSize:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/effect/ByteBufferConcurrentEffect;->mapOnePixelBuffer()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->effectInputTexture:Landroidx/media3/common/GlTextureInfo;

    if-eqz v0, :cond_1

    iget v0, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->inputWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    iget v1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->inputHeight:I

    if-eq v0, v1, :cond_4

    :cond_1
    :goto_1
    invoke-direct {p0}, Landroidx/media3/effect/ByteBufferConcurrentEffect;->mapOnePixelBuffer()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iput v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->inputWidth:I

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    iput v1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->inputHeight:I

    iget-object v2, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->processor:Landroidx/media3/effect/ByteBufferGlEffect$Processor;

    invoke-interface {v2, v0, v1}, Landroidx/media3/effect/ByteBufferGlEffect$Processor;->configure(II)Landroidx/media3/common/util/Size;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->effectInputTexture:Landroidx/media3/common/GlTextureInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/media3/common/GlTextureInfo;->release()V

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/GlUtil;->createTexture(IIZ)I

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v0

    invoke-interface {p1, v1, v2, v0}, Landroidx/media3/common/GlObjectsProvider;->createBuffersForTexture(III)Landroidx/media3/common/GlTextureInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->effectInputTexture:Landroidx/media3/common/GlTextureInfo;

    :cond_4
    iget p1, p2, Landroidx/media3/common/GlTextureInfo;->fboId:I

    iget-object p2, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->processor:Landroidx/media3/effect/ByteBufferGlEffect$Processor;

    invoke-interface {p2, p3, p4}, Landroidx/media3/effect/ByteBufferGlEffect$Processor;->getScaledRegion(J)Landroidx/media3/common/util/GlRect;

    move-result-object p2

    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->effectInputTexture:Landroidx/media3/common/GlTextureInfo;

    iget v1, v0, Landroidx/media3/common/GlTextureInfo;->fboId:I

    new-instance v2, Landroidx/media3/common/util/GlRect;

    iget v3, v0, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v0, v0, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-direct {v2, v3, v0}, Landroidx/media3/common/util/GlRect;-><init>(II)V

    invoke-static {p1, p2, v1, v2}, Landroidx/media3/common/util/GlUtil;->blitFrameBuffer(ILandroidx/media3/common/util/GlRect;ILandroidx/media3/common/util/GlRect;)V

    new-instance p1, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;

    iget-object p2, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->effectInputTexture:Landroidx/media3/common/GlTextureInfo;

    invoke-direct {p1, p2}, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;-><init>(Landroidx/media3/common/GlTextureInfo;)V

    iget-object p2, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->pixelBufferObjectProvider:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;

    invoke-virtual {p1, p2}, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->schedulePixelBufferRead(Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;)V

    iget-object p2, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->unmappedPixelBuffers:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->imageSettableFuture:Lcom/google/common/util/concurrent/g;

    new-instance p2, Landroidx/media3/effect/e;

    invoke-direct {p2, p0, p3, p4}, Landroidx/media3/effect/e;-><init>(Landroidx/media3/effect/ByteBufferConcurrentEffect;J)V

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lim5;Lgj;)Lim5;

    move-result-object p0
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/effect/ByteBufferConcurrentEffect;->unmapAndRecyclePixelBuffers()V

    iget-object p0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect;->pixelBufferObjectProvider:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;

    invoke-virtual {p0}, Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;->release()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {v0, p0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public signalEndOfCurrentInputStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/effect/ByteBufferConcurrentEffect;->mapOnePixelBuffer()Z

    move-result v0
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {v0, p0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
