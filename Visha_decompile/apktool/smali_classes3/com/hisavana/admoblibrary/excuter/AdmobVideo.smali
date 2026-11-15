.class public Lcom/hisavana/admoblibrary/excuter/AdmobVideo;
.super Lcom/hisavana/common/base/BaseVideo;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field public b:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

.field public c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-object p1
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)Lcom/hisavana/admoblibrary/check/ExistsCheck$a;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    return-object p1
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;JLjava/lang/String;I)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->onAdditionalShowed(JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;->setMediatorInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->onReward()V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic c(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic d(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic d(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic e(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;)Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->b:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    return-object p0
.end method

.method public static synthetic f(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 4

    invoke-super {p0}, Lcom/hisavana/common/base/BaseVideo;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdmobVideo --> destroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdmobVideo"

    invoke-virtual {v0, v3, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->b:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->b:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    :cond_1
    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    return-void
.end method

.method public initVideo()V
    .locals 1

    new-instance v0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo$a;

    invoke-direct {v0, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobVideo$a;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;)V

    iput-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->b:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    return-void
.end method

.method public isLoaded()Z
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onVideoShow(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "AdmobVideo"

    if-nez p1, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdmobVideo --> onVideoShow null == activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v2, Lcom/hisavana/admoblibrary/excuter/AdmobVideo$c;

    invoke-direct {v2, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobVideo$c;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " activity is finish ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v2, Lcom/hisavana/admoblibrary/excuter/AdmobVideo$d;

    invoke-direct {v2, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobVideo$d;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    iget-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v2, Lcom/hisavana/admoblibrary/excuter/AdmobVideo$e;

    invoke-direct {v2, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobVideo$e;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const v3, 0xc351

    invoke-direct {v1, v3, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdmobVideo --> onVideoShow \u5c55\u793a\u5f02\u5e38"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdmobVideo --> The rewarded ad wasn\'t ready yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onVideoStartLoad()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo$b;

    invoke-direct {v0, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobVideo$b;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobVideo;)V

    iput-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;->c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a(Landroid/content/Context;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7533

    invoke-direct {v1, v3, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoStartLoad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdmobVideo"

    invoke-virtual {p0, v1, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public supportTimer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
