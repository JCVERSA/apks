.class public final Lcom/yandex/mobile/ads/impl/h7;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h7;->a:Lcom/yandex/mobile/ads/impl/d7;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;)Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;
    .locals 3

    const-string v0, "status"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;

    invoke-virtual {v0}, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;->getVerifiedAd()Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;

    move-result-object v1

    invoke-interface {v1}, Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;->getVerificationResultStateFlow()Lgx9;

    move-result-object v1

    invoke-interface {v1}, Lgx9;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/monetization/ads/quality/base/state/AdQualityVerificationState$Error;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h7;->a:Lcom/yandex/mobile/ads/impl/d7;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/d7;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;

    new-instance p0, Lcom/yandex/mobile/ads/impl/g7;

    invoke-virtual {v0}, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;->getVerifiedAd()Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;

    move-result-object v1

    invoke-virtual {v0}, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;->getVerifiedAd()Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;->getVerificationResultStateFlow()Lgx9;

    move-result-object v0

    invoke-interface {v0}, Lgx9;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.monetization.ads.quality.base.state.AdQualityVerificationState.Error"

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/monetization/ads/quality/base/state/AdQualityVerificationState$Error;

    invoke-virtual {v0}, Lcom/monetization/ads/quality/base/state/AdQualityVerificationState$Error;->getError()Lcom/monetization/ads/quality/base/model/AdQualityVerificationError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/monetization/ads/quality/base/model/AdQualityVerificationError;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/g7;-><init>(Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;-><init>(Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;)V

    :cond_0
    return-object p1
.end method
