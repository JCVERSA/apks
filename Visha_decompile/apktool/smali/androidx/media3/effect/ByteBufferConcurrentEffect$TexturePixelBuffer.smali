.class final Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/effect/ByteBufferConcurrentEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TexturePixelBuffer"
.end annotation


# instance fields
.field public final imageSettableFuture:Lcom/google/common/util/concurrent/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/g;"
        }
    .end annotation
.end field

.field private mapped:Z

.field private pixelBufferObjectInfo:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;

.field private final textureInfo:Landroidx/media3/common/GlTextureInfo;


# direct methods
.method public constructor <init>(Landroidx/media3/common/GlTextureInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->textureInfo:Landroidx/media3/common/GlTextureInfo;

    invoke-static {}, Lcom/google/common/util/concurrent/g;->o()Lcom/google/common/util/concurrent/g;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->imageSettableFuture:Lcom/google/common/util/concurrent/g;

    return-void
.end method


# virtual methods
.method public map()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->pixelBufferObjectInfo:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->pixelBufferObjectInfo:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;

    iget v1, v0, Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;->id:I

    iget v0, v0, Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;->size:I

    invoke-static {v1, v0}, Landroidx/media3/common/util/GlUtil;->mapPixelBufferObject(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->textureInfo:Landroidx/media3/common/GlTextureInfo;

    invoke-static {v0}, Landroidx/media3/effect/ByteBufferConcurrentEffect;->access$000(Landroidx/media3/common/GlTextureInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->textureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v2, v1, Landroidx/media3/common/GlTextureInfo;->fboId:I

    iget v3, v1, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v1, v1, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/GlUtil;->focusFramebufferUsingCurrentContext(III)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    iget-object v1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->textureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v3, v1, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v4, v1, Landroidx/media3/common/GlTextureInfo;->height:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    :goto_0
    iget-object v1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->imageSettableFuture:Lcom/google/common/util/concurrent/g;

    new-instance v2, Landroidx/media3/effect/ByteBufferGlEffect$Image;

    iget-object v3, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->textureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v4, v3, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v3, v3, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-direct {v2, v4, v3, v0}, Landroidx/media3/effect/ByteBufferGlEffect$Image;-><init>(IILjava/nio/ByteBuffer;)V

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/g;->set(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->mapped:Z

    return-void
.end method

.method public schedulePixelBufferRead(Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->textureInfo:Landroidx/media3/common/GlTextureInfo;

    invoke-static {v0}, Landroidx/media3/effect/ByteBufferConcurrentEffect;->access$000(Landroidx/media3/common/GlTextureInfo;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;->access$100(Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;I)Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->pixelBufferObjectInfo:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->textureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v0, p0, Landroidx/media3/common/GlTextureInfo;->fboId:I

    iget v1, p0, Landroidx/media3/common/GlTextureInfo;->width:I

    iget p0, p0, Landroidx/media3/common/GlTextureInfo;->height:I

    iget p1, p1, Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;->id:I

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/common/util/GlUtil;->schedulePixelBufferRead(IIII)V

    :cond_0
    return-void
.end method

.method public unmapAndRecycle(Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->pixelBufferObjectInfo:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->mapped:Z

    if-eqz v0, :cond_0

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->pixelBufferObjectInfo:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;

    iget v0, v0, Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;->id:I

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->unmapPixelBufferObject(I)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$TexturePixelBuffer;->pixelBufferObjectInfo:Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;

    invoke-static {p1, p0}, Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;->access$200(Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectProvider;Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;)V

    return-void
.end method
