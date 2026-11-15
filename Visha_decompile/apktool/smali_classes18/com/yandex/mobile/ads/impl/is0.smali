.class public final Lcom/yandex/mobile/ads/impl/is0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tj1;

.field private final b:Lcom/yandex/mobile/ads/impl/oe2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tj1;Lcom/yandex/mobile/ads/impl/oe2;)V
    .locals 1

    const-string v0, "positionProviderHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDurationHolder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/is0;->a:Lcom/yandex/mobile/ads/impl/tj1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/is0;->b:Lcom/yandex/mobile/ads/impl/oe2;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/AdPlaybackState;)I
    .locals 6

    const-string v0, "adPlaybackState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/is0;->a:Lcom/yandex/mobile/ads/impl/tj1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tj1;->b()Lcom/yandex/mobile/ads/impl/oi1;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/is0;->b:Lcom/yandex/mobile/ads/impl/oe2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oe2;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/rj1;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5, v2, v3}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result p0

    if-ne p0, v1, :cond_0

    invoke-virtual {p1, v4, v5, v2, v3}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexAfterPositionUs(JJ)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p0

    :cond_1
    :goto_0
    return v1
.end method
