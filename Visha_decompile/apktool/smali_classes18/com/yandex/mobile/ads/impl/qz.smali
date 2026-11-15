.class public final Lcom/yandex/mobile/ads/impl/qz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/c40;


# static fields
.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/yandex/mobile/ads/impl/b40;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wm$a;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :try_start_0
    const-string v1, "com.monetization.ads.exo.source.dash.offline.DashDownloader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/qz;->a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v1, "com.monetization.ads.exo.source.hls.offline.HlsDownloader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/qz;->a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v1, "com.monetization.ads.exo.source.smoothstreaming.offline.SsDownloader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/qz;->a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/yandex/mobile/ads/impl/qz;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wm$a;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/wm$a;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qz;->a:Lcom/yandex/mobile/ads/impl/wm$a;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qz;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/yandex/mobile/ads/impl/b40;",
            ">;"
        }
    .end annotation

    .line 22
    :try_start_0
    const-class v0, Lcom/yandex/mobile/ads/impl/b40;

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/yandex/mobile/ads/impl/jw0;

    const-class v1, Lcom/yandex/mobile/ads/impl/wm$a;

    const-class v2, Ljava/util/concurrent/Executor;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Downloader constructor missing"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/a40;)Lcom/yandex/mobile/ads/impl/b40;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/a40;->c:Landroid/net/Uri;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/a40;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/f92;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/cm1;

    new-instance v1, Lcom/yandex/mobile/ads/impl/jw0$a;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/jw0$a;-><init>()V

    iget-object v2, p1, Lcom/yandex/mobile/ads/impl/a40;->c:Landroid/net/Uri;

    .line 3
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/jw0$a;->a(Landroid/net/Uri;)Lcom/yandex/mobile/ads/impl/jw0$a;

    move-result-object v1

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/a40;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/jw0$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jw0$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/jw0$a;->a()Lcom/yandex/mobile/ads/impl/jw0;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qz;->a:Lcom/yandex/mobile/ads/impl/wm$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qz;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1, p0}, Lcom/yandex/mobile/ads/impl/cm1;-><init>(Lcom/yandex/mobile/ads/impl/jw0;Lcom/yandex/mobile/ads/impl/wm$a;Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 7
    const-string p1, "Unsupported type: "

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/oe;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    sget-object v1, Lcom/yandex/mobile/ads/impl/qz;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_2

    .line 10
    new-instance v2, Lcom/yandex/mobile/ads/impl/jw0$a;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/jw0$a;-><init>()V

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/a40;->c:Landroid/net/Uri;

    .line 11
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/jw0$a;->a(Landroid/net/Uri;)Lcom/yandex/mobile/ads/impl/jw0$a;

    move-result-object v2

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/a40;->e:Ljava/util/List;

    .line 12
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/jw0$a;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/jw0$a;

    move-result-object v2

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/a40;->g:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/jw0$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jw0$a;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/jw0$a;->a()Lcom/yandex/mobile/ads/impl/jw0;

    move-result-object p1

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/qz;->a:Lcom/yandex/mobile/ads/impl/wm$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qz;->b:Ljava/util/concurrent/Executor;

    filled-new-array {p1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/b40;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 16
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    const-string p1, "Failed to instantiate downloader for content type "

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/oe;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 20
    const-string p1, "Module missing for content type "

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/oe;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
