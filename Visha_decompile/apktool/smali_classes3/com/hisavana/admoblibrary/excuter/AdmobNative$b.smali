.class public Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/admoblibrary/excuter/AdmobNative;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/hisavana/admoblibrary/excuter/AdmobNative;


# direct methods
.method public constructor <init>(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;->b:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;->b:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->e(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Lcom/hisavana/common/bean/AdNativeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;->b:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->f(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad load failed, error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AdmobNative"

    invoke-virtual {v0, v3, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;->b:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->c(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;->b:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->isIconAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;->b:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->c(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;->b:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, " adLoader load fail"

    invoke-virtual {p0, v3, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;->b:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->d(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;->b:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    goto :goto_1

    :cond_4
    const/16 v1, 0x7533

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, " adLoader isLoading"

    invoke-virtual {p0, v3, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onAdImpression()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdmobNative"

    const-string v2, "ad impression"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;->b:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->e(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Lcom/hisavana/common/bean/AdNativeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method
