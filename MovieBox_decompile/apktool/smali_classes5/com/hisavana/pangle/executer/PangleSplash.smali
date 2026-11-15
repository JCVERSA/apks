.class public Lcom/hisavana/pangle/executer/PangleSplash;
.super Lcom/hisavana/common/base/BaseSplash;
.source "source.java"


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

.field private e:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;

.field private f:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/hisavana/pangle/executer/PangleSplash$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/hisavana/pangle/executer/PangleSplash$1;-><init>(Lcom/hisavana/pangle/executer/PangleSplash;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleSplash;->d:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    .line 10
    .line 11
    new-instance p1, Lcom/hisavana/pangle/executer/PangleSplash$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/hisavana/pangle/executer/PangleSplash$2;-><init>(Lcom/hisavana/pangle/executer/PangleSplash;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleSplash;->e:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic a(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleSplash;->f:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/hisavana/pangle/executer/PangleSplash;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleSplash;->f:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/hisavana/pangle/executer/PangleSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleSplash;->e:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/hisavana/pangle/executer/PangleSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/hisavana/pangle/executer/PangleSplash;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/hisavana/pangle/executer/PangleSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleSplash;->d:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/hisavana/common/bean/Network;
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
    invoke-super {p0}, Lcom/hisavana/common/base/BaseSplash;->destroyAd()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "destroy"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "pangle_log"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected getSplash()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle_log"

    .line 6
    .line 7
    const-string v2, "onSplashLoad"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/view/View;

    .line 19
    .line 20
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method protected onSplashShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash;->f:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/m;->h()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash;->f:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    .line 12
    .line 13
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/m;->h()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;->show(Landroid/app/Activity;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "pangle_log"

    .line 31
    .line 32
    const-string v2, "onSplashShow show error,ad is null or no main activity"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method protected onSplashStartLoad()V
    .locals 4

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
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lcom/hisavana/pangle/executer/PangleSplash$3;

    .line 29
    .line 30
    invoke-direct {v3, p0, v0, v1}, Lcom/hisavana/pangle/executer/PangleSplash$3;-><init>(Lcom/hisavana/pangle/executer/PangleSplash;J)V

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3}, Lcom/hisavana/pangle/check/ExistsCheck;->initAdSource(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
