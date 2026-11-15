.class public Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$OnEveryFrameListener;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;
    }
.end annotation


# static fields
.field public static final FRAME_CACHE_STRATEGY:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

.field private firstFrame:Landroid/graphics/Bitmap;

.field private firstFrameSize:I

.field private final handler:Landroid/os/Handler;

.field private height:I

.field private isCleared:Z

.field private isLoadPending:Z

.field private isRunning:Z

.field private next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

.field private onEveryFrameListener:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$OnEveryFrameListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

.field private requestBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final requestManager:Lcom/bumptech/glide/RequestManager;

.field private startFromFirstFrame:Z

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "com.bumptech.glide.integration.webp.decoder.WebpFrameLoader.CacheStrategy"

    .line 2
    .line 3
    sget-object v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->AUTO:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->FRAME_CACHE_STRATEGY:Lcom/bumptech/glide/load/Option;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;IILcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;",
            "II",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getRequestBuilder(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;Landroid/os/Handler;Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;Landroid/os/Handler;Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/RequestManager;",
            "Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    .line 8
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isLoadPending:Z

    .line 9
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    .line 10
    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    if-nez p4, :cond_0

    .line 11
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 13
    iput-object p4, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    .line 14
    iput-object p5, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 15
    iput-object p3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 16
    invoke-virtual {p0, p6, p7}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private getFrameSignature(I)Lcom/bumptech/glide/load/Key;
    .locals 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;

    .line 2
    .line 3
    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;-><init>(Lcom/bumptech/glide/load/Key;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private static getRequestBuilder(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestManager;",
            "II)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private loadNextFrame()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isLoadPending:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v2

    .line 23
    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    .line 24
    .line 25
    invoke-static {v0, v3}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->resetFrameIndex()V

    .line 31
    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->onFrameReady(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    iput-boolean v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isLoadPending:Z

    .line 47
    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getNextDelay()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    int-to-long v3, v0

    .line 59
    add-long/2addr v1, v3

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->advance()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getCurrentFrameIndex()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    new-instance v3, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 72
    .line 73
    iget-object v4, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    .line 74
    .line 75
    invoke-direct {v3, v4, v0, v1, v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;-><init>(Landroid/os/Handler;IJ)V

    .line 76
    .line 77
    .line 78
    iput-object v3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getCacheStrategy()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getFrameSignature(I)Lcom/bumptech/glide/load/Key;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->noCache()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_1
    return-void
.end method

.method private recycleFirstFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private start()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isCleared:Z

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->loadNextFrame()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private stop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->recycleFirstFrame()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->stop()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->clear()V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isCleared:Z

    .line 53
    .line 54
    return-void
.end method

.method getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getData()Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method

.method getCurrentIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;->index:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    :goto_0
    return v0
.end method

.method getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method getFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getFrameCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method getFrameTransformation()Lcom/bumptech/glide/load/Transformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 2
    .line 3
    return-object v0
.end method

.method getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->height:I

    .line 2
    .line 3
    return v0
.end method

.method getLoopCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getTotalIterationCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method getSize()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getByteSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrameSize:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->width:I

    .line 2
    .line 3
    return v0
.end method

.method onFrameReady(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->onEveryFrameListener:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$OnEveryFrameListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$OnEveryFrameListener;->onFrameReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isLoadPending:Z

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isCleared:Z

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_3
    invoke-virtual {p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->recycleFirstFrame()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    add-int/lit8 p1, p1, -0x1

    .line 67
    .line 68
    :goto_1
    if-ltz p1, :cond_4

    .line 69
    .line 70
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;

    .line 77
    .line 78
    invoke-interface {v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;->onFrameReady()V

    .line 79
    .line 80
    .line 81
    add-int/lit8 p1, p1, -0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    if-eqz v0, :cond_5

    .line 85
    .line 86
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->loadNextFrame()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/graphics/Bitmap;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 18
    .line 19
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrameSize:I

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->width:I

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->height:I

    .line 51
    .line 52
    return-void
.end method

.method setNextStartFromFirstFrame()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "Can\'t restart a running animation"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method setOnEveryFrameReadyListener(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$OnEveryFrameListener;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$OnEveryFrameListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->onEveryFrameListener:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$OnEveryFrameListener;

    .line 2
    .line 3
    return-void
.end method

.method subscribe(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isCleared:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->start()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Cannot subscribe twice in a row"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v0, "Cannot subscribe to a cleared frame loader"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method unsubscribe(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->stop()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
