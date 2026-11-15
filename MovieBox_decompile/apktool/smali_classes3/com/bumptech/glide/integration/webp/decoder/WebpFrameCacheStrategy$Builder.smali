.class public final Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cacheControl:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

.field private cacheSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;)Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheControl:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheSize:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public cacheAll()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->CACHE_ALL:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheControl:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 4
    .line 5
    return-object p0
.end method

.method public cacheAuto()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->CACHE_AUTO:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheControl:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 4
    .line 5
    return-object p0
.end method

.method public cacheControl(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;)Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheControl:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public cacheLimited()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->CACHE_LIMITED:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheControl:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 4
    .line 5
    return-object p0
.end method

.method public cacheSize(I)Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;
    .locals 1

    .line 1
    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheSize:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->CACHE_NONE:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheControl:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const v0, 0x7fffffff

    .line 11
    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    sget-object p1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->CACHE_ALL:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheControl:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget-object p1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->CACHE_LIMITED:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheControl:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public noCache()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->CACHE_NONE:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheControl:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 4
    .line 5
    return-object p0
.end method
