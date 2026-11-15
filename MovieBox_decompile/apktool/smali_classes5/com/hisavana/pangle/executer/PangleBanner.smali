.class public Lcom/hisavana/pangle/executer/PangleBanner;
.super Lcom/hisavana/common/base/BaseBanner;
.source "source.java"


# instance fields
.field private d:Landroid/view/View;

.field private e:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

.field private f:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;

.field private g:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

.field private h:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/hisavana/pangle/executer/PangleBanner$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/hisavana/pangle/executer/PangleBanner$1;-><init>(Lcom/hisavana/pangle/executer/PangleBanner;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->e:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    .line 10
    .line 11
    new-instance p1, Lcom/hisavana/pangle/executer/PangleBanner$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/hisavana/pangle/executer/PangleBanner$2;-><init>(Lcom/hisavana/pangle/executer/PangleBanner;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->f:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    const/16 p2, 0x140

    .line 20
    .line 21
    if-eq p3, p1, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    if-eq p3, p1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x3

    .line 27
    if-eq p3, p1, :cond_0

    .line 28
    .line 29
    sget-object p1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->BANNER_W_320_H_50:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 33
    .line 34
    const/16 p3, 0x5a

    .line 35
    .line 36
    invoke-direct {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;-><init>(II)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->BANNER_W_300_H_250:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 44
    .line 45
    const/16 p3, 0x64

    .line 46
    .line 47
    invoke-direct {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;-><init>(II)V

    .line 48
    .line 49
    .line 50
    :goto_0
    new-instance p2, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    .line 51
    .line 52
    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/hisavana/pangle/executer/PangleBanner;->h:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    .line 56
    .line 57
    return-void
.end method

.method static synthetic a(Lcom/hisavana/pangle/executer/PangleBanner;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic b(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->g:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/hisavana/pangle/executer/PangleBanner;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->g:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lcom/hisavana/pangle/executer/PangleBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->h:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/hisavana/pangle/executer/PangleBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->f:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/hisavana/pangle/executer/PangleBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/hisavana/pangle/executer/PangleBanner;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->e:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/hisavana/pangle/executer/PangleBanner;)Lcom/hisavana/common/bean/Network;
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
    invoke-super {p0}, Lcom/hisavana/common/base/BaseBanner;->destroyAd()V

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

.method protected getBanner()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "getBanner "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "pangle_log"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/content/Context;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    new-instance v0, Landroid/view/View;

    .line 56
    .line 57
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    .line 67
    .line 68
    return-object v0
.end method

.method protected onBannerDestroy()V
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
    const-string v2, "onBannerDestroy"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iput-object v1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->g:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;->destroy()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iput-object v1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->f:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->e:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    .line 29
    .line 30
    return-void
.end method

.method protected onBannerLoad()V
    .locals 4

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
    const-string v2, "onBannerLoad"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 17
    .line 18
    const/16 v1, 0x7533

    .line 19
    .line 20
    const-string v2, "Pangle Ads failed to load ad error with mNetwork == null"

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v3, Lcom/hisavana/pangle/executer/PangleBanner$3;

    .line 40
    .line 41
    invoke-direct {v3, p0, v0, v1}, Lcom/hisavana/pangle/executer/PangleBanner$3;-><init>(Lcom/hisavana/pangle/executer/PangleBanner;J)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v3}, Lcom/hisavana/pangle/check/ExistsCheck;->initAdSource(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "showBanner"

    .line 6
    .line 7
    const-string v2, "pangle_log"

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p2, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    instance-of p2, p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    move-object p2, p1

    .line 40
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 41
    .line 42
    const/16 p3, 0xd

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleBanner;->d:Landroid/view/View;

    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, "showBanner show error,adView is null"

    .line 69
    .line 70
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method protected showBanner()V
    .locals 0

    .line 1
    return-void
.end method
