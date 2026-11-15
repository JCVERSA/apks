.class public Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder;


# static fields
.field private static final MAX_FRAME_BITMAP_CACHE_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WebpDecoder"


# instance fields
.field private downsampledHeight:I

.field private downsampledWidth:I

.field private mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

.field private final mFrameBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameDurations:[I

.field private final mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

.field private mFramePointer:I

.field private final mTransparentFillPaint:Landroid/graphics/Paint;

.field private mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

.field private rawData:Ljava/nio/ByteBuffer;

.field private sampleSize:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/integration/webp/WebpImage;Ljava/nio/ByteBuffer;I)V
    .locals 6

    .line 1
    sget-object v5, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->NONE:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/integration/webp/WebpImage;Ljava/nio/ByteBuffer;ILcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/integration/webp/WebpImage;Ljava/nio/ByteBuffer;ILcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFramePointer:I

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 7
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameDurations()[I

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameDurations:[I

    .line 8
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    move-result p1

    new-array p1, p1, [Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    const/4 p1, 0x0

    move v0, p1

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameInfo(I)Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    move-result-object v2

    aput-object v2, v1, v0

    .line 11
    const-string v1, "WebpDecoder"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrameInfos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iput-object p5, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 14
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5}, Landroid/graphics/Paint;-><init>()V

    iput-object p5, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mTransparentFillPaint:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 18
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    invoke-virtual {p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->cacheAll()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    move-result p1

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    invoke-virtual {p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->getCacheSize()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 21
    :goto_1
    new-instance p2, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder$1;

    invoke-direct {p2, p0, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder$1;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;I)V

    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameBitmapCache:Landroid/util/LruCache;

    .line 22
    new-instance p1, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p1}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    invoke-virtual {p0, p1, p3, p4}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;)Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method private cacheFrameBitmap(ILandroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameBitmapCache:Landroid/util/LruCache;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getDensity()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Landroid/graphics/Canvas;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .line 43
    .line 44
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 45
    .line 46
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v2, p2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameBitmapCache:Landroid/util/LruCache;

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private disposeToBackground(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V
    .locals 9

    .line 1
    iget v0, p2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->xOffset:I

    .line 2
    .line 3
    iget v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->sampleSize:I

    .line 4
    .line 5
    div-int v2, v0, v1

    .line 6
    .line 7
    int-to-float v4, v2

    .line 8
    iget v2, p2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->yOffset:I

    .line 9
    .line 10
    div-int v3, v2, v1

    .line 11
    .line 12
    int-to-float v5, v3

    .line 13
    iget v3, p2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->width:I

    .line 14
    .line 15
    add-int/2addr v0, v3

    .line 16
    div-int/2addr v0, v1

    .line 17
    int-to-float v6, v0

    .line 18
    iget p2, p2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->height:I

    .line 19
    .line 20
    add-int/2addr v2, p2

    .line 21
    div-int/2addr v2, v1

    .line 22
    int-to-float v7, v2

    .line 23
    iget-object v8, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mTransparentFillPaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    move-object v3, p1

    .line 26
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private isFullFrame(Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->xOffset:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->yOffset:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->width:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget p1, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->height:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ne p1, v0, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method

.method private isKeyFrame(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 6
    .line 7
    aget-object v2, v1, p1

    .line 8
    .line 9
    sub-int/2addr p1, v0

    .line 10
    aget-object p1, v1, p1

    .line 11
    .line 12
    iget-boolean v1, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->blendPreviousFrame:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-direct {p0, v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->isFullFrame(Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    iget-boolean v1, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->isFullFrame(Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method private prepareCanvasWithBlending(ILandroid/graphics/Canvas;)I
    .locals 4

    .line 1
    :goto_0
    if-ltz p1, :cond_5

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 4
    .line 5
    aget-object v0, v0, p1

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->isFullFrame(Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    return p1

    .line 21
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameBitmapCache:Landroid/util/LruCache;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/graphics/Bitmap;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getDensity()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p2, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v1, v0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-direct {p0, p2, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->disposeToBackground(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 61
    .line 62
    return p1

    .line 63
    :cond_3
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->isKeyFrame(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    return p1

    .line 70
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    const/4 p1, 0x0

    .line 74
    return p1
.end method

.method private renderFrame(ILandroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    iget v1, v0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->width:I

    .line 6
    .line 7
    iget v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->sampleSize:I

    .line 8
    .line 9
    div-int/2addr v1, v2

    .line 10
    iget v3, v0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->height:I

    .line 11
    .line 12
    div-int/2addr v3, v2

    .line 13
    iget v4, v0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->xOffset:I

    .line 14
    .line 15
    div-int/2addr v4, v2

    .line 16
    iget v0, v0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->yOffset:I

    .line 17
    .line 18
    div-int/2addr v0, v2

    .line 19
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrame(I)Lcom/bumptech/glide/integration/webp/WebpFrame;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :try_start_0
    iget-object v5, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 28
    .line 29
    invoke-interface {v5, v1, v3, v6}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getDensity()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1, v3, v5}, Lcom/bumptech/glide/integration/webp/WebpFrame;->renderFrame(IILandroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    int-to-float v1, v4

    .line 48
    int-to-float v0, v0

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p2, v5, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 54
    .line 55
    invoke-interface {p2, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {v2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->dispose()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    :catch_0
    :try_start_1
    const-string p2, "WebpDecoder"

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "Rendering of frame failed. Frame number: "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :goto_1
    return-void

    .line 88
    :goto_2
    invoke-virtual {v2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->dispose()V

    .line 89
    .line 90
    .line 91
    throw p1
.end method


# virtual methods
.method public advance()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFramePointer:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    rem-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFramePointer:I

    .line 13
    .line 14
    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->dispose()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameBitmapCache:Landroid/util/LruCache;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    return-void
.end method

.method public getByteSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getSizeInBytes()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCacheStrategy()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFramePointer:I

    .line 2
    .line 3
    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDelay(I)I
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameDurations:[I

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-ge p1, v1, :cond_0

    .line 7
    .line 8
    aget p1, v0, p1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, -0x1

    .line 12
    :goto_0
    return p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLoopCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getLoopCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getNetscapeLoopCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getLoopCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameDurations:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFramePointer:I

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getDelay(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getCurrentFrameIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 6
    .line 7
    iget v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->downsampledWidth:I

    .line 8
    .line 9
    iget v3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->downsampledHeight:I

    .line 10
    .line 11
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12
    .line 13
    invoke-interface {v1, v2, v3, v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 19
    .line 20
    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v4, 0x18

    .line 24
    .line 25
    if-lt v3, v4, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lcom/bumptech/glide/integration/webp/decoder/a;->a()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance v3, Landroid/graphics/Canvas;

    .line 35
    .line 36
    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 37
    .line 38
    .line 39
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 40
    .line 41
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->noCache()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v4, 0x3

    .line 51
    const-string v5, "WebpDecoder"

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameBitmapCache:Landroid/util/LruCache;

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v2, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/graphics/Bitmap;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v5, "hit frame bitmap from memory cache, frameNumber="

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getDensity()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-virtual {v3, v2, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_2
    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->isKeyFrame(I)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_3

    .line 106
    .line 107
    add-int/lit8 v2, v0, -0x1

    .line 108
    .line 109
    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->prepareCanvasWithBlending(ILandroid/graphics/Canvas;)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    move v2, v0

    .line 115
    :goto_0
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_4

    .line 120
    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v7, "frameNumber="

    .line 127
    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v7, ", nextIndex="

    .line 135
    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_1
    const-string v6, ", dispose="

    .line 143
    .line 144
    const-string v7, ", blend="

    .line 145
    .line 146
    const-string v8, "renderFrame, index="

    .line 147
    .line 148
    if-ge v2, v0, :cond_8

    .line 149
    .line 150
    iget-object v9, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 151
    .line 152
    aget-object v9, v9, v2

    .line 153
    .line 154
    iget-boolean v10, v9, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->blendPreviousFrame:Z

    .line 155
    .line 156
    if-nez v10, :cond_5

    .line 157
    .line 158
    invoke-direct {p0, v3, v9}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->disposeToBackground(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->renderFrame(ILandroid/graphics/Canvas;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-eqz v10, :cond_6

    .line 169
    .line 170
    new-instance v10, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-boolean v7, v9, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->blendPreviousFrame:Z

    .line 185
    .line 186
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-boolean v6, v9, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    .line 193
    .line 194
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    :cond_6
    iget-boolean v6, v9, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    .line 198
    .line 199
    if-eqz v6, :cond_7

    .line 200
    .line 201
    invoke-direct {p0, v3, v9}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->disposeToBackground(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V

    .line 202
    .line 203
    .line 204
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_8
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 208
    .line 209
    aget-object v2, v2, v0

    .line 210
    .line 211
    iget-boolean v9, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->blendPreviousFrame:Z

    .line 212
    .line 213
    if-nez v9, :cond_9

    .line 214
    .line 215
    invoke-direct {p0, v3, v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->disposeToBackground(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V

    .line 216
    .line 217
    .line 218
    :cond_9
    invoke-direct {p0, v0, v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->renderFrame(ILandroid/graphics/Canvas;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_a

    .line 226
    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-boolean v4, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->blendPreviousFrame:Z

    .line 242
    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-boolean v2, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    .line 250
    .line 251
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->cacheFrameBitmap(ILandroid/graphics/Bitmap;)V

    .line 255
    .line 256
    .line 257
    return-object v1
.end method

.method public getStatus()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getTotalIterationCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getLoopCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getLoopCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public read(Ljava/io/InputStream;I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public read([B)I
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public resetFrameIndex()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFramePointer:I

    .line 3
    .line 4
    return-void
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 1

    if-lez p3, :cond_0

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->rawData:Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->sampleSize:I

    .line 7
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getWidth()I

    move-result p2

    div-int/2addr p2, p1

    iput p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->downsampledWidth:I

    .line 8
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getHeight()I

    move-result p2

    div-int/2addr p2, p1

    iput p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->downsampledHeight:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sample size must be >=0, not: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 4

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "Unsupported format: "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ", must be one of "

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method
