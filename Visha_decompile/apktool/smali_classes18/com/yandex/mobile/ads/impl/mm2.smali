.class public final Lcom/yandex/mobile/ads/impl/mm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/interstitial/InterstitialAd;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/nt;

.field private final b:Lcom/yandex/mobile/ads/impl/jl2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/nt;Lcom/yandex/mobile/ads/impl/jl2;)V
    .locals 1

    const-string v0, "coreInterstitialAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfoConverter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mm2;->a:Lcom/yandex/mobile/ads/impl/nt;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mm2;->b:Lcom/yandex/mobile/ads/impl/jl2;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/mm2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/mm2;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/mm2;->a:Lcom/yandex/mobile/ads/impl/nt;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mm2;->a:Lcom/yandex/mobile/ads/impl/nt;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getInfo()Lcom/yandex/mobile/ads/common/AdInfo;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mm2;->b:Lcom/yandex/mobile/ads/impl/jl2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mm2;->a:Lcom/yandex/mobile/ads/impl/nt;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nt;->getInfo()Lcom/yandex/mobile/ads/impl/ss;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/jl2;->a(Lcom/yandex/mobile/ads/impl/ss;)Lcom/yandex/mobile/ads/common/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mm2;->a:Lcom/yandex/mobile/ads/impl/nt;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final setAdEventListener(Lcom/yandex/mobile/ads/interstitial/InterstitialAdEventListener;)V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/nm2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/nm2;-><init>(Lcom/yandex/mobile/ads/interstitial/InterstitialAdEventListener;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mm2;->a:Lcom/yandex/mobile/ads/impl/nt;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/nt;->a(Lcom/yandex/mobile/ads/impl/nm2;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mm2;->a:Lcom/yandex/mobile/ads/impl/nt;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/nt;->show(Landroid/app/Activity;)V

    return-void
.end method
