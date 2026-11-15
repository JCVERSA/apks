.class public final Lcom/yandex/mobile/ads/impl/n7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/d7;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/d7;)V
    .locals 1

    const-string v0, "verificationPolicy"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n7;->a:Lcom/yandex/mobile/ads/impl/d7;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerificationAdConfiguration;)Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;
    .locals 5

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerificationAdConfiguration;->getVerifiableAdNetwork()Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifiableNetwork;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n7;->a:Lcom/yandex/mobile/ads/impl/d7;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/d7;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/m7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m7;->b()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n7;->a:Lcom/yandex/mobile/ads/impl/d7;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/d7;->e()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m7;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n7;->a:Lcom/yandex/mobile/ads/impl/d7;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/d7;->c()Z

    move-result v0

    :goto_1
    invoke-virtual {p1}, Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerificationAdConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/n7;->a:Lcom/yandex/mobile/ads/impl/d7;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/d7;->d()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n7;->a:Lcom/yandex/mobile/ads/impl/d7;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/d7;->d()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    sget-object p0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/16 p1, 0x64

    invoke-virtual {p0, v3, p1}, Lkotlin/random/Random$Default;->nextInt(II)I

    move-result p0

    if-ge p0, v1, :cond_6

    const/4 p0, 0x0

    goto :goto_4

    :cond_6
    new-instance p0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;

    new-instance p1, Lcom/monetization/ads/quality/base/model/AdQualityVerificationError$LowUsagePercent;

    invoke-direct {p1}, Lcom/monetization/ads/quality/base/model/AdQualityVerificationError$LowUsagePercent;-><init>()V

    invoke-direct {p0, p1}, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;-><init>(Lcom/monetization/ads/quality/base/model/AdQualityVerificationError;)V

    goto :goto_4

    :cond_7
    :goto_3
    new-instance p0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;

    new-instance p1, Lcom/monetization/ads/quality/base/model/AdQualityVerificationError$DisabledError;

    invoke-direct {p1}, Lcom/monetization/ads/quality/base/model/AdQualityVerificationError$DisabledError;-><init>()V

    invoke-direct {p0, p1}, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;-><init>(Lcom/monetization/ads/quality/base/model/AdQualityVerificationError;)V

    :goto_4
    return-object p0
.end method
