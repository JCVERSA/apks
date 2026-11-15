.class public final Lcom/yandex/mobile/ads/impl/ua1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/wc2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/wc2<",
        "Lcom/yandex/mobile/ads/impl/kb1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sa1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sa1;)V
    .locals 1

    const-string v0, "videoPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ua1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ua1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sa1;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/oc2;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ua1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sa1;->a(Lcom/yandex/mobile/ads/impl/yc2;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ua1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/kb1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sa1;->a(Lcom/yandex/mobile/ads/impl/kb1;)V

    return-void
.end method

.method public final b()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ua1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sa1;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ua1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sa1;->c()V

    return-void
.end method

.method public final getAdPosition()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ua1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sa1;->getAdPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVolume()F
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ua1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sa1;->getVolume()F

    move-result p0

    return p0
.end method

.method public final isPlayingAd()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ua1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sa1;->isPlayingAd()Z

    move-result p0

    return p0
.end method

.method public final pauseAd()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ua1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sa1;->pauseAd()V

    return-void
.end method

.method public final resumeAd()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ua1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sa1;->resumeAd()V

    return-void
.end method
