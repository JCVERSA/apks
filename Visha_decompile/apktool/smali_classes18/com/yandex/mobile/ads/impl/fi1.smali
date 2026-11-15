.class public final Lcom/yandex/mobile/ads/impl/fi1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o5;

.field private final b:Lcom/yandex/mobile/ads/impl/qi1;

.field private final c:Lcom/yandex/mobile/ads/impl/is0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/tj1;Lcom/yandex/mobile/ads/impl/oe2;Lcom/yandex/mobile/ads/impl/qi1;Lcom/yandex/mobile/ads/impl/is0;)V
    .locals 1

    const-string v0, "adPlaybackStateController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionProviderHolder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoDurationHolder"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playerStateChangedListener"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "loadingAdGroupIndexProvider"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fi1;->a:Lcom/yandex/mobile/ads/impl/o5;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/fi1;->b:Lcom/yandex/mobile/ads/impl/qi1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/fi1;->c:Lcom/yandex/mobile/ads/impl/is0;

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media3/common/Player;)V
    .locals 3

    const-string v0, "player"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-interface {p2}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fi1;->a:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o5;->a()Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fi1;->c:Lcom/yandex/mobile/ads/impl/is0;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/is0;->a(Landroidx/media3/common/AdPlaybackState;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    const-string v1, "getAdGroup(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fi1;->b:Lcom/yandex/mobile/ads/impl/qi1;

    invoke-interface {p2}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/qi1;->a(ZI)V

    :cond_3
    :goto_1
    return-void
.end method
