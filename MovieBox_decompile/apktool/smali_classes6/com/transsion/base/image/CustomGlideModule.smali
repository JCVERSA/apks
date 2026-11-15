.class public final Lcom/transsion/base/image/CustomGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "source.java"


# annotations
.annotation build Lcom/bumptech/glide/annotation/GlideModule;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0011\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0018R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/base/image/CustomGlideModule;",
        "Lcom/bumptech/glide/module/AppGlideModule;",
        "<init>",
        "()V",
        "Lokhttp3/OkHttpClient;",
        "b",
        "()Lokhttp3/OkHttpClient;",
        "Lokhttp3/Interceptor;",
        "a",
        "()Lokhttp3/Interceptor;",
        "Landroid/content/Context;",
        "context",
        "Lcom/bumptech/glide/Glide;",
        "glide",
        "Lcom/bumptech/glide/Registry;",
        "registry",
        "",
        "registerComponents",
        "(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V",
        "Lcom/bumptech/glide/GlideBuilder;",
        "builder",
        "applyOptions",
        "(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V",
        "Lcom/bumptech/glide/request/RequestOptions;",
        "Lcom/bumptech/glide/request/RequestOptions;",
        "requestOptions",
        "Lokhttp3/OkHttpClient;",
        "okHttpClientForGlide",
        "image_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/request/RequestOptions;

.field private b:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/base/image/CustomGlideModule;->a:Lcom/bumptech/glide/request/RequestOptions;

    .line 10
    .line 11
    return-void
.end method

.method private final a()Lokhttp3/Interceptor;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;->enableQuic(Z)Lorg/chromium/net/CronetEngine$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lorg/chromium/net/CronetEngine$Builder;->enableBrotli(Z)Lorg/chromium/net/CronetEngine$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "pacdn.aoneroom.com"

    .line 20
    .line 21
    const/16 v3, 0x1bb

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "build(...)"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/a;->j(Lorg/chromium/net/CronetEngine;)Lcom/google/net/cronet/okhttptransport/a$b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/net/cronet/okhttptransport/a$b;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lokhttp3/Interceptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    return-object v0

    .line 46
    :catchall_0
    const/4 v0, 0x0

    .line 47
    return-object v0
.end method

.method private final b()Lokhttp3/OkHttpClient;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/base/image/CustomGlideModule;->b:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 7
    .line 8
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Loi/a;->a:Loi/a$a;

    .line 12
    .line 13
    invoke-virtual {v1}, Loi/a$a;->a()Ljavax/net/ssl/SSLSocketFactory;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Loi/a;

    .line 18
    .line 19
    invoke-direct {v2}, Loi/a;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Loi/b;

    .line 27
    .line 28
    invoke-direct {v2}, Loi/b;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 32
    .line 33
    .line 34
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    const-wide/16 v2, 0x28

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-wide/16 v2, 0x14

    .line 43
    .line 44
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p0}, Lcom/transsion/base/image/CustomGlideModule;->a()Lokhttp3/Interceptor;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/transsion/base/image/CustomGlideModule;->b:Lokhttp3/OkHttpClient;

    .line 66
    .line 67
    return-object v0
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "builder"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "activity"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Landroid/app/ActivityManager;

    .line 23
    .line 24
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 30
    .line 31
    .line 32
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 33
    .line 34
    long-to-float v0, v0

    .line 35
    const/high16 v1, 0x4e800000

    .line 36
    .line 37
    div-float/2addr v0, v1

    .line 38
    const/high16 v1, 0x40800000    # 4.0f

    .line 39
    .line 40
    cmpg-float v0, v0, v1

    .line 41
    .line 42
    if-gez v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/base/image/CustomGlideModule;->a:Lcom/bumptech/glide/request/RequestOptions;

    .line 45
    .line 46
    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GlideBuilder;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/GlideBuilder;

    .line 55
    .line 56
    .line 57
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->build()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    int-to-long v0, p1

    .line 71
    new-instance p1, Lmj/a;

    .line 72
    .line 73
    invoke-direct {p1, v0, v1}, Lmj/a;-><init>(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/GlideBuilder;->setBitmapPool(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GlideBuilder;

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "glide"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "registry"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    const/4 v4, 0x4

    .line 19
    const/4 v5, 0x0

    .line 20
    const-string v1, "CustomGlideModule"

    .line 21
    .line 22
    const-string v2, "glide http replace okhttp client with cronet"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/transsion/base/image/CustomGlideModule;->b()Lokhttp3/OkHttpClient;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    new-instance p2, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;

    .line 35
    .line 36
    invoke-direct {p2, p1}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;-><init>(Lokhttp3/Call$Factory;)V

    .line 37
    .line 38
    .line 39
    const-class p1, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 40
    .line 41
    const-class v0, Ljava/io/InputStream;

    .line 42
    .line 43
    invoke-virtual {p3, p1, v0, p2}, Lcom/bumptech/glide/Registry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
