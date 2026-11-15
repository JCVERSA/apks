.class public Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile internalClient:Lokhttp3/Call$Factory;


# instance fields
.field private final client:Lokhttp3/Call$Factory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->getInternalClient()Lokhttp3/Call$Factory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;-><init>(Lokhttp3/Call$Factory;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 0
    .param p1    # Lokhttp3/Call$Factory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->client:Lokhttp3/Call$Factory;

    return-void
.end method

.method private static getInternalClient()Lokhttp3/Call$Factory;
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->internalClient:Lokhttp3/Call$Factory;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->internalClient:Lokhttp3/Call$Factory;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lokhttp3/OkHttpClient;

    .line 13
    .line 14
    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->internalClient:Lokhttp3/Call$Factory;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->internalClient:Lokhttp3/Call$Factory;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;->client:Lokhttp3/Call$Factory;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader;-><init>(Lokhttp3/Call$Factory;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public teardown()V
    .locals 0

    .line 1
    return-void
.end method
