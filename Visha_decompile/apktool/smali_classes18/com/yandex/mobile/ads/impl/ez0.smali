.class public final Lcom/yandex/mobile/ads/impl/ez0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ec1;


# instance fields
.field private final a:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

.field private final b:Lcom/yandex/mobile/ads/impl/xy0;

.field private final c:Lcom/yandex/mobile/ads/impl/l7;

.field private final d:Lcom/yandex/mobile/ads/impl/ec1;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/xy0;Lcom/yandex/mobile/ads/impl/l7;Lcom/yandex/mobile/ads/impl/ec1;)V
    .locals 1

    const-string v0, "mediatedNativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedNativeRenderingTracker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adQualityVerifierController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkAdFactory"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ez0;->a:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ez0;->b:Lcom/yandex/mobile/ads/impl/xy0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ez0;->c:Lcom/yandex/mobile/ads/impl/l7;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ez0;->d:Lcom/yandex/mobile/ads/impl/ec1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/g41;)Lcom/yandex/mobile/ads/impl/dc1;
    .locals 3

    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ez0;->d:Lcom/yandex/mobile/ads/impl/ec1;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/ec1;->a(Lcom/yandex/mobile/ads/impl/g41;)Lcom/yandex/mobile/ads/impl/dc1;

    move-result-object p1

    new-instance v0, Lcom/yandex/mobile/ads/impl/yy0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ez0;->a:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ez0;->b:Lcom/yandex/mobile/ads/impl/xy0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez0;->c:Lcom/yandex/mobile/ads/impl/l7;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/yy0;-><init>(Lcom/yandex/mobile/ads/impl/dc1;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/xy0;Lcom/yandex/mobile/ads/impl/l7;)V

    return-object v0
.end method
