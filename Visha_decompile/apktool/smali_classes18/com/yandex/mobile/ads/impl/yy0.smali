.class public final Lcom/yandex/mobile/ads/impl/yy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dc1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/dc1;

.field private final b:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

.field private final c:Lcom/yandex/mobile/ads/impl/xy0;

.field private final d:Lcom/yandex/mobile/ads/impl/l7;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/dc1;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/xy0;Lcom/yandex/mobile/ads/impl/l7;)V
    .locals 1

    const-string v0, "nativeAdViewRenderer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedNativeAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedNativeRenderingTracker"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adQualityVerifierController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yy0;->a:Lcom/yandex/mobile/ads/impl/dc1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yy0;->b:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yy0;->c:Lcom/yandex/mobile/ads/impl/xy0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/yy0;->d:Lcom/yandex/mobile/ads/impl/l7;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yy0;->a:Lcom/yandex/mobile/ads/impl/dc1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/dc1;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/g71;)V
    .locals 2

    .line 1
    const-string v0, "nativeAdViewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yy0;->a:Lcom/yandex/mobile/ads/impl/dc1;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/dc1;->a(Lcom/yandex/mobile/ads/impl/g71;)V

    .line 3
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/g71;->g()Lcom/yandex/mobile/ads/impl/q71;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/g71;->e()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v1, Lcom/yandex/mobile/ads/impl/uy0;

    invoke-direct {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/uy0;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/q71;)V

    .line 6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/yy0;->b:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

    invoke-interface {p1, v1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;->unbindNativeAd(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdViewProvider;)V

    .line 7
    :cond_0
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/yy0;->e:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yy0;->d:Lcom/yandex/mobile/ads/impl/l7;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/l7;->d()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/bp;)V
    .locals 2

    .line 9
    const-string v0, "nativeAdViewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListenerConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yy0;->a:Lcom/yandex/mobile/ads/impl/dc1;

    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/dc1;->a(Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/bp;)V

    .line 11
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/g71;->g()Lcom/yandex/mobile/ads/impl/q71;

    move-result-object p2

    .line 12
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/g71;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Lcom/yandex/mobile/ads/impl/uy0;

    invoke-direct {v1, v0, p2}, Lcom/yandex/mobile/ads/impl/uy0;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/q71;)V

    .line 14
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/yy0;->b:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

    invoke-interface {p2, v1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;->bindNativeAd(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdViewProvider;)V

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/yy0;->d:Lcom/yandex/mobile/ads/impl/l7;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/l7;->c()V

    .line 16
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/g71;->e()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 17
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/yy0;->e:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/yy0;->e:Z

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yy0;->c:Lcom/yandex/mobile/ads/impl/xy0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/xy0;->a()V

    :cond_1
    return-void
.end method
