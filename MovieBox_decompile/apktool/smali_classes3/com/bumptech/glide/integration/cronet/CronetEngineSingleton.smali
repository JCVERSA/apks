.class public final Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile cronetEngineSingleton:Lorg/chromium/net/CronetEngine;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static createEngine(Landroid/content/Context;)Lorg/chromium/net/CronetEngine;
    .locals 3

    .line 1
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Lorg/chromium/net/CronetEngine$Builder;->enableHttpCache(IJ)Lorg/chromium/net/CronetEngine$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;->enableHttp2(Z)Lorg/chromium/net/CronetEngine$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Lorg/chromium/net/CronetEngine$Builder;->enableQuic(Z)Lorg/chromium/net/CronetEngine$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static getSingleton(Landroid/content/Context;)Lorg/chromium/net/CronetEngine;
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;->cronetEngineSingleton:Lorg/chromium/net/CronetEngine;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;->cronetEngineSingleton:Lorg/chromium/net/CronetEngine;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;->createEngine(Landroid/content/Context;)Lorg/chromium/net/CronetEngine;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sput-object p0, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;->cronetEngineSingleton:Lorg/chromium/net/CronetEngine;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    goto :goto_2

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0

    .line 25
    :cond_1
    :goto_2
    sget-object p0, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;->cronetEngineSingleton:Lorg/chromium/net/CronetEngine;

    .line 26
    .line 27
    return-object p0
.end method
