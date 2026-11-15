.class public Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b$a;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;->a(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;


# direct methods
.method public constructor <init>(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;

    iget-object v0, v0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->a(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial is adClosed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;

    iget-object v2, v2, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdmobInterstitia"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;

    invoke-static {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->b(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;)V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;

    iget-object v0, v0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->a(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v0}, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->d(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method

.method public onAdImpression()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial is onAdImpression"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;

    iget-object v2, v2, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdmobInterstitia"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial is onAdShowedFullScreenContent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AdmobInterstitia"

    invoke-virtual {v0, v1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
