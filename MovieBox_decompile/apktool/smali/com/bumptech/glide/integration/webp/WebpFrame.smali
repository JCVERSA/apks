.class public Lcom/bumptech/glide/integration/webp/WebpFrame;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field static final FRAME_DURATION_MS_FOR_MIN:I = 0x64

.field static final MIN_FRAME_DURATION_MS:I = 0x14


# instance fields
.field blendPreviousFrame:Z

.field delay:I

.field disposeBackgroundColor:Z

.field ih:I

.field iw:I

.field ix:I

.field iy:I

.field private mNativePtr:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method constructor <init>(JIIIIIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->mNativePtr:J

    .line 5
    .line 6
    iput p3, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->ix:I

    .line 7
    .line 8
    iput p4, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->iy:I

    .line 9
    .line 10
    iput p5, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->iw:I

    .line 11
    .line 12
    iput p6, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->ih:I

    .line 13
    .line 14
    iput p7, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->delay:I

    .line 15
    .line 16
    iput-boolean p8, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->blendPreviousFrame:Z

    .line 17
    .line 18
    iput-boolean p9, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->disposeBackgroundColor:Z

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/WebpFrame;->fixFrameDuration()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private fixFrameDuration()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->delay:I

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x64

    .line 8
    .line 9
    iput v0, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->delay:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private native nativeDispose()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeRenderFrame(IILandroid/graphics/Bitmap;)V
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/WebpFrame;->nativeDispose()V

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
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/WebpFrame;->nativeFinalize()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getDurationMs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->delay:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->ih:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->iw:I

    .line 2
    .line 3
    return v0
.end method

.method public getXOffest()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->ix:I

    .line 2
    .line 3
    return v0
.end method

.method public getYOffest()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->iy:I

    .line 2
    .line 3
    return v0
.end method

.method public isBlendWithPreviousFrame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->blendPreviousFrame:Z

    .line 2
    .line 3
    return v0
.end method

.method public renderFrame(IILandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/integration/webp/WebpFrame;->nativeRenderFrame(IILandroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public shouldDisposeToBackgroundColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/WebpFrame;->disposeBackgroundColor:Z

    .line 2
    .line 3
    return v0
.end method
