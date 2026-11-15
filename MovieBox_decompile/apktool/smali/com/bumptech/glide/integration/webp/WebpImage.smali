.class public Lcom/bumptech/glide/integration/webp/WebpImage;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mDurationMs:I

.field private mFrameCount:I

.field private mFrameDurations:[I

.field private mHeigth:I

.field private mLoopCount:I

.field private mNativePtr:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "glide-webp"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method constructor <init>(JIIII[III)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput p3, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mWidth:I

    .line 11
    .line 12
    iput p4, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mHeigth:I

    .line 13
    .line 14
    iput p5, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mFrameCount:I

    .line 15
    .line 16
    iput p6, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mDurationMs:I

    .line 17
    .line 18
    iput-object p7, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mFrameDurations:[I

    .line 19
    .line 20
    iput p8, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mLoopCount:I

    .line 21
    .line 22
    invoke-direct {p0, p7}, Lcom/bumptech/glide/integration/webp/WebpImage;->fixFrameDurations([I)V

    .line 23
    .line 24
    .line 25
    iput p9, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mBackgroundColor:I

    .line 26
    .line 27
    iput-wide p1, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mNativePtr:J

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    const-string p2, "internal error: native WebpImage is 0"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public static create([B)Lcom/bumptech/glide/integration/webp/WebpImage;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    array-length v0, p0

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private fixFrameDurations([I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    aget v1, p1, v0

    .line 6
    .line 7
    const/16 v2, 0x14

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    aput v1, p1, v0

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return-void
.end method

.method private static native nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/integration/webp/WebpImage;
.end method

.method private native nativeDispose()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetFrame(I)Lcom/bumptech/glide/integration/webp/WebpFrame;
.end method

.method private native nativeGetSizeInBytes()I
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/WebpImage;->nativeDispose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/WebpImage;->nativeFinalize()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mBackgroundColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mDurationMs:I

    .line 2
    .line 3
    return v0
.end method

.method public getFrame(I)Lcom/bumptech/glide/integration/webp/WebpFrame;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/webp/WebpImage;->nativeGetFrame(I)Lcom/bumptech/glide/integration/webp/WebpFrame;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mFrameCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getFrameDurations()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mFrameDurations:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrameInfo(I)Lcom/bumptech/glide/integration/webp/WebpFrameInfo;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrame(I)Lcom/bumptech/glide/integration/webp/WebpFrame;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    new-instance v1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 6
    .line 7
    invoke-direct {v1, p1, v0}, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;-><init>(ILcom/bumptech/glide/integration/webp/WebpFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpFrame;->dispose()V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpFrame;->dispose()V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mHeigth:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mLoopCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/WebpImage;->nativeGetSizeInBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpImage;->mWidth:I

    .line 2
    .line 3
    return v0
.end method
