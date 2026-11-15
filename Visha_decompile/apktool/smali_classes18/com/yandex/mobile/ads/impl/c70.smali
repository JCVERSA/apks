.class public final Lcom/yandex/mobile/ads/impl/c70;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/r10;

.field private final b:Lcom/yandex/mobile/ads/impl/ny1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/r10;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/r10;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/ny1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/ny1;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/c70;-><init>(Lcom/yandex/mobile/ads/impl/r10;Lcom/yandex/mobile/ads/impl/ny1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/r10;Lcom/yandex/mobile/ads/impl/ny1;)V
    .locals 1

    .line 4
    const-string v0, "diskCacheProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simpleCacheFactory"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c70;->a:Lcom/yandex/mobile/ads/impl/r10;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/c70;->b:Lcom/yandex/mobile/ads/impl/ny1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/my1;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/c70;->a:Lcom/yandex/mobile/ads/impl/r10;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "mobileads-video-cache"

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/r10;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->B()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->B()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x3200000

    :goto_0
    const-wide/32 v3, 0x2800000

    invoke-static {p1, v3, v4, v1, v2}, Lcom/yandex/mobile/ads/impl/j01$a;->a(Landroid/content/Context;JJ)J

    move-result-wide v1

    new-instance v3, Lcom/yandex/mobile/ads/impl/or0;

    invoke-direct {v3, v1, v2}, Lcom/yandex/mobile/ads/impl/or0;-><init>(J)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/k60;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/k60;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c70;->b:Lcom/yandex/mobile/ads/impl/ny1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "cacheDir"

    invoke-static {v0, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cacheEvictor"

    invoke-static {v3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "databaseProvider"

    invoke-static {v1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/my1;

    invoke-direct {p0, v0, v3, v1}, Lcom/yandex/mobile/ads/impl/my1;-><init>(Ljava/io/File;Lcom/yandex/mobile/ads/impl/or0;Lcom/yandex/mobile/ads/impl/k60;)V

    return-object p0
.end method
