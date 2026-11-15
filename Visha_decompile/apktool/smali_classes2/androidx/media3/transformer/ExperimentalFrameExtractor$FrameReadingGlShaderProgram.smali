.class final Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;
.super Landroidx/media3/effect/PassthroughShaderProgram;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/ExperimentalFrameExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameReadingGlShaderProgram"
.end annotation


# static fields
.field private static final BYTES_PER_PIXEL:I = 0x4


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private glProgram:Landroidx/media3/common/util/GlProgram;

.field private hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

.field final synthetic this$0:Landroidx/media3/transformer/ExperimentalFrameExtractor;

.field private final useHdr:Z

.field private final visiblePolygon:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/ExperimentalFrameExtractor;Landroid/content/Context;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->this$0:Landroidx/media3/transformer/ExperimentalFrameExtractor;

    invoke-direct {p0}, Landroidx/media3/effect/PassthroughShaderProgram;-><init>()V

    const/4 p1, 0x4

    new-array v0, p1, [F

    fill-array-data v0, :array_0

    new-array v1, p1, [F

    fill-array-data v1, :array_1

    new-array v2, p1, [F

    fill-array-data v2, :array_2

    new-array v3, p1, [F

    fill-array-data v3, :array_3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    iput-boolean p3, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->useHdr:Z

    if-eqz p3, :cond_1

    sget p3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x22

    if-lt p3, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const-string/jumbo p3, "shaders/vertex_shader_transformation_es3.glsl"

    const-string/jumbo v1, "shaders/fragment_shader_oetf_es3.glsl"

    :try_start_0
    new-instance v2, Landroidx/media3/common/util/GlProgram;

    invoke-direct {v2, p2, p3, v1}, Landroidx/media3/common/util/GlProgram;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo p2, "uTexTransformationMatrix"

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroidx/media3/common/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    iget-object p2, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    const-string/jumbo p3, "uTransformationMatrix"

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroidx/media3/common/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    iget-object p2, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    const-string/jumbo p3, "uRgbMatrix"

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroidx/media3/common/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    iget-object p2, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    const-string/jumbo p3, "uOutputColorTransfer"

    const/4 v1, 0x7

    invoke-virtual {p2, p3, v1}, Landroidx/media3/common/util/GlProgram;->setIntUniform(Ljava/lang/String;I)V

    iget-object p0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->createVertexBuffer(Ljava/util/List;)[F

    move-result-object p2

    const-string p3, "aFramePosition"

    invoke-virtual {p0, p3, p2, p1}, Landroidx/media3/common/util/GlProgram;->setBufferAttribute(Ljava/lang/String;[FI)V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {p1, p0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private ensureConfigured(Landroidx/media3/common/GlObjectsProvider;II)V
    .locals 2

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-boolean v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->useHdr:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    if-eqz v0, :cond_1

    iget v1, v0, Landroidx/media3/common/GlTextureInfo;->width:I

    if-ne v1, p2, :cond_1

    iget v1, v0, Landroidx/media3/common/GlTextureInfo;->height:I

    if-eq v1, p3, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/common/GlTextureInfo;->release()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p2, p3}, Landroidx/media3/common/util/GlUtil;->createRgb10A2Texture(II)I

    move-result v0

    invoke-interface {p1, v0, p2, p3}, Landroidx/media3/common/GlObjectsProvider;->createBuffersForTexture(III)Landroidx/media3/common/GlTextureInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/media3/effect/PassthroughShaderProgram;->onError(Ljava/lang/Exception;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public queueInputFrame(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/common/GlTextureInfo;J)V
    .locals 9

    iget v0, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->ensureConfigured(Landroidx/media3/common/GlObjectsProvider;II)V

    iget-boolean p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->useHdr:Z

    if-eqz p1, :cond_2

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget v0, p1, Landroidx/media3/common/GlTextureInfo;->fboId:I

    iget v1, p1, Landroidx/media3/common/GlTextureInfo;->width:I

    iget p1, p1, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/GlUtil;->focusFramebufferUsingCurrentContext(III)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    iget-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p1}, Landroidx/media3/common/util/GlProgram;->use()V

    iget-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    const-string/jumbo v0, "uTexSampler"

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->texId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media3/common/util/GlProgram;->setSamplerTexIdUniform(Ljava/lang/String;II)V

    iget-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p1}, Landroidx/media3/common/util/GlProgram;->bindAttributesAndUniforms()V

    iget-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 v0, 0x6

    invoke-static {v0, v2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    iget-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v2, p1, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v3, p1, Landroidx/media3/common/GlTextureInfo;->height:I

    iget-object v6, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const v5, 0x8368

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v1, p1, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v2, p1, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-static {}, Lfj3;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {}, Lgj3;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/media3/effect/PassthroughShaderProgram;->onError(Ljava/lang/Exception;)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/4 p2, -0x2

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/effect/PassthroughShaderProgram;->onError(Ljava/lang/Exception;)V

    return-void

    :cond_2
    :try_start_1
    iget p1, p2, Landroidx/media3/common/GlTextureInfo;->fboId:I

    iget v0, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/GlUtil;->focusFramebufferUsingCurrentContext(III)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    iget v4, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v5, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    iget-object v8, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_1
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_1

    iget p1, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v0, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$FrameReadingGlShaderProgram;->this$0:Landroidx/media3/transformer/ExperimentalFrameExtractor;

    invoke-static {v0}, Landroidx/media3/transformer/ExperimentalFrameExtractor;->access$300(Landroidx/media3/transformer/ExperimentalFrameExtractor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p3

    invoke-direct {v2, p3, p4, p1, v1}, Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;-><init>(JLandroid/graphics/Bitmap;Landroidx/media3/transformer/ExperimentalFrameExtractor$1;)V

    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/media3/effect/PassthroughShaderProgram;->getInputListener()Landroidx/media3/effect/GlShaderProgram$InputListener;

    move-result-object p0

    invoke-interface {p0, p2}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onInputFrameProcessed(Landroidx/media3/common/GlTextureInfo;)V

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Landroidx/media3/effect/PassthroughShaderProgram;->onError(Ljava/lang/Exception;)V

    return-void
.end method
