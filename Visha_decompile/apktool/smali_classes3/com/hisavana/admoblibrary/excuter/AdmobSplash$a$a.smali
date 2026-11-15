.class public Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a$a;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;->a(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;


# direct methods
.method public constructor <init>(Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;

    iget-object v0, v0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash;

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->access$400(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;)V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;

    iget-object v0, v0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->access$002(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->access$302(Z)Z

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "admob splashview onAdClicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AdmobSplash"

    invoke-virtual {v0, v1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;

    iget-object v0, v0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->access$200(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "admob splashview show fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdmobSplash"

    invoke-virtual {v0, p1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdImpression()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "AdmobSplash"

    const-string v1, "onAdImpression"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;

    iget-object v0, v0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->access$302(Z)Z

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "admob splashview onAdShow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobSplash;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AdmobSplash"

    invoke-virtual {v0, v1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
