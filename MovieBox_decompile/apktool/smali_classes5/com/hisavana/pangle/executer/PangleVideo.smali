.class public Lcom/hisavana/pangle/executer/PangleVideo;
.super Lcom/hisavana/common/base/BaseVideo;
.source "source.java"


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

.field private e:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;

.field private f:Z

.field private g:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/hisavana/pangle/executer/PangleVideo;->f:Z

    .line 6
    .line 7
    return-void
.end method

.method static synthetic a(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->g:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/hisavana/pangle/executer/PangleVideo;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleVideo;->g:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/hisavana/pangle/executer/PangleVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/hisavana/pangle/executer/PangleVideo;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/pangle/executer/PangleVideo;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->e:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/hisavana/pangle/executer/PangleVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/hisavana/pangle/executer/PangleVideo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->onReward()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/hisavana/pangle/executer/PangleVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/hisavana/pangle/executer/PangleVideo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->d:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseVideo;->destroyAd()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->d:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->e:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->g:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->f:Z

    .line 13
    .line 14
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "destroy"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "pangle_log"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method protected initVideo()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/pangle/executer/PangleVideo$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/hisavana/pangle/executer/PangleVideo$1;-><init>(Lcom/hisavana/pangle/executer/PangleVideo;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->d:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    .line 7
    .line 8
    new-instance v0, Lcom/hisavana/pangle/executer/PangleVideo$2;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/hisavana/pangle/executer/PangleVideo$2;-><init>(Lcom/hisavana/pangle/executer/PangleVideo;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->e:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;

    .line 14
    .line 15
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onVideoShow(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo;->g:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;->show(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 12
    .line 13
    const v0, 0xc351

    .line 14
    .line 15
    .line 16
    const-string v1, "Pangle Ads failed to show,activity or pageRewardedAd is null"

    .line 17
    .line 18
    invoke-direct {p1, v0, v1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "pangle_log"

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method protected onVideoStartLoad()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 6
    .line 7
    const/16 v1, 0x7533

    .line 8
    .line 9
    const-string v2, "Pangle Ads failed to load ad error with mNetwork == null"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/hisavana/pangle/executer/PangleVideo$3;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/hisavana/pangle/executer/PangleVideo$3;-><init>(Lcom/hisavana/pangle/executer/PangleVideo;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/hisavana/pangle/check/ExistsCheck;->initAdSource(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
