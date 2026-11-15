.class public final Lcom/yandex/mobile/ads/impl/c6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/d4;

.field private final b:Lcom/yandex/mobile/ads/impl/bo0;

.field private final c:Lcom/yandex/mobile/ads/impl/z4;

.field private final d:Lcom/yandex/mobile/ads/impl/o5;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o9;Lcom/yandex/mobile/ads/impl/d4;Lcom/yandex/mobile/ads/impl/bo0;)V
    .locals 1

    const-string v0, "adStateDataController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adGroupIndexProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamSourceUrlProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/c6;->a:Lcom/yandex/mobile/ads/impl/d4;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/c6;->b:Lcom/yandex/mobile/ads/impl/bo0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o9;->a()Lcom/yandex/mobile/ads/impl/z4;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/c6;->c:Lcom/yandex/mobile/ads/impl/z4;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o9;->c()Lcom/yandex/mobile/ads/impl/o5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c6;->d:Lcom/yandex/mobile/ads/impl/o5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 6

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/go0;->g()Lcom/yandex/mobile/ads/impl/xn0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/xn0;->a()Lcom/yandex/mobile/ads/impl/ht;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/c6;->a:Lcom/yandex/mobile/ads/impl/d4;

    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/d4;->a(Lcom/yandex/mobile/ads/impl/ht;)I

    move-result v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/u4;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/go0;->b()Lcom/yandex/mobile/ads/impl/zc2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/zc2;->a()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v2, v4}, Lcom/yandex/mobile/ads/impl/u4;-><init>(II)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/c6;->c:Lcom/yandex/mobile/ads/impl/z4;

    invoke-virtual {v2, v3, p1}, Lcom/yandex/mobile/ads/impl/z4;->a(Lcom/yandex/mobile/ads/impl/u4;Lcom/yandex/mobile/ads/impl/go0;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/c6;->d:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o5;->a()Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/u4;->a()I

    move-result v4

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/u4;->b()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroidx/media3/common/AdPlaybackState;->isAdInErrorState(II)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/u4;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/go0;->b()Lcom/yandex/mobile/ads/impl/zc2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/zc2;->b()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroidx/media3/common/AdPlaybackState;->withAdCount(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    const-string v4, "withAdCount(...)"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/c6;->b:Lcom/yandex/mobile/ads/impl/bo0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "mediaFile"

    invoke-static {v1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/xn0;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/u4;->a()I

    move-result v0

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/u4;->b()I

    move-result v1

    invoke-static {p1}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-virtual {v2, v0, v1, p1}, Landroidx/media3/common/AdPlaybackState;->withAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    const-string v0, "withAvailableAdMediaItem(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c6;->d:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/o5;->a(Landroidx/media3/common/AdPlaybackState;)V

    :cond_0
    return-void
.end method
