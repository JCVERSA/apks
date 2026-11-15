.class public Lp8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/admoblibrary/check/ExistsCheck$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp8;->onVideoStartLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp8;


# direct methods
.method public constructor <init>(Lp8;)V
    .locals 0

    iput-object p1, p0, Lp8$b;->a:Lp8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lp8$b;->a:Lp8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp8;->b(Lp8;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    iget-object v0, p0, Lp8$b;->a:Lp8;

    invoke-static {v0}, Lp8;->i(Lp8;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp8$b;->a:Lp8;

    invoke-static {v0}, Lp8;->k(Lp8;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lp8$b;->a:Lp8;

    invoke-static {v0}, Lp8;->m(Lp8;)Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lp8$b;->a:Lp8;

    invoke-static {v1}, Lp8;->n(Lp8;)Lcom/hisavana/common/bean/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hisavana/admoblibrary/util/PlatformUtil;->a()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    iget-object p0, p0, Lp8$b;->a:Lp8;

    invoke-static {p0}, Lp8;->m(Lp8;)Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lp8$b;->a:Lp8;

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x7533

    const-string v2, "rewardedAdLoadCallback or codeSeatId is null"

    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v0}, Lp8;->j(Lp8;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lp8$b;->a:Lp8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp8;->b(Lp8;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    iget-object p0, p0, Lp8$b;->a:Lp8;

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SOURCE_INIT_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-static {p0, v0}, Lp8;->l(Lp8;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
