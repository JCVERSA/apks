.class public final Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;
    }
.end annotation


# static fields
.field public static final ALL:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

.field public static final AUTO:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

.field public static final NONE:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;


# instance fields
.field private mCacheSize:I

.field private mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->noCache()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->build()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->NONE:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 15
    .line 16
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheAuto()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->build()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->AUTO:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 30
    .line 31
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheAll()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->build()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->ALL:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 45
    .line 46
    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->access$000(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;)Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->access$100(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->mCacheSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;)V

    return-void
.end method


# virtual methods
.method public cacheAll()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 2
    .line 3
    sget-object v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->CACHE_ALL:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public cacheAuto()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 2
    .line 3
    sget-object v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->CACHE_AUTO:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public getCacheControl()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->mCacheSize:I

    .line 2
    .line 3
    return v0
.end method

.method public noCache()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 2
    .line 3
    sget-object v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->CACHE_NONE:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method
