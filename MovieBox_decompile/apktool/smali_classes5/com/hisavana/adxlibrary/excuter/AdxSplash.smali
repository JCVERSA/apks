.class public Lcom/hisavana/adxlibrary/excuter/AdxSplash;
.super Lcom/hisavana/common/base/BaseSplash;
.source "source.java"


# instance fields
.field public a:Lb7/e;

.field public b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)Lb7/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onSkipClick()V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/adxlibrary/excuter/AdxSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic d(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onTimeReach()V

    return-void
.end method

.method public static synthetic d(Lcom/hisavana/adxlibrary/excuter/AdxSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic e(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onSkipClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onTimeReach()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)Lcom/cloud/hisavana/sdk/api/adx/TSplashView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lb7/e;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb7/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 5
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc7/b;->b:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;

    invoke-direct {v0, p0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V

    .line 7
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    invoke-static {}, Ld7/a;->a()Ld7/a$b;

    move-result-object v2

    invoke-virtual {v2}, Ld7/a$b;->a()Ld7/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb7/a;->r(Ld7/a;)V

    .line 8
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    invoke-virtual {v1, v0}, Lb7/a;->p(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    .line 9
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    new-instance v1, Lcom/hisavana/adxlibrary/excuter/AdxSplash$b;

    invoke-direct {v1, p0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash$b;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V

    invoke-virtual {v0, v1}, Lb7/e;->x(Lcom/cloud/hisavana/sdk/api/listener/g;)V

    .line 10
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Landroid/view/View;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 5
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc7/b;->b:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$c;

    invoke-direct {v0, p0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash$c;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V

    .line 7
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    invoke-static {}, Ld7/a;->a()Ld7/a$b;

    move-result-object v2

    invoke-virtual {v2}, Ld7/a$b;->a()Ld7/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setRequest(Ld7/a;)V

    .line 8
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setListener(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    .line 9
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lcom/hisavana/adxlibrary/excuter/AdxSplash$d;

    invoke-direct {v1, p0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash$d;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->setSkipListener(Lcom/cloud/hisavana/sdk/api/listener/g;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    return-object v0
.end method

.method public canShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isReady()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseSplash;->canShow()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public checkNeedAddLogo()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public destroyAd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseSplash;->destroyAd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lb7/e;->c()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->destroy()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 22
    .line 23
    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "destroy"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "AdxSplash"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public getSplash()Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public isAdxAd()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v3, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lb7/a;->d()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    move v1, v3

    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdSource()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ne v0, v2, :cond_2

    .line 29
    .line 30
    move v1, v3

    .line 31
    :cond_2
    return v1
.end method

.method public isEwAd()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lb7/a;->d()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    :cond_0
    return v1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdSource()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ne v0, v2, :cond_2

    .line 28
    .line 29
    move v1, v2

    .line 30
    :cond_2
    return v1
.end method

.method public isExpired()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lb7/a;->k()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isReady()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 34
    :cond_3
    :goto_1
    return v0
.end method

.method public isInternalAd()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lb7/a;->h()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    :cond_0
    return v1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isDefaultAd()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    move v1, v2

    .line 30
    :cond_2
    return v1
.end method

.method public isMatchVulgarBrand()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lb7/a;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    :cond_0
    return v1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isMatchVulgarBrand()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    move v1, v2

    .line 30
    :cond_2
    return v1
.end method

.method public isOfflineAd()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lb7/a;->f()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    :cond_0
    return v1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getFillAdType()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ne v0, v2, :cond_2

    .line 28
    .line 29
    move v1, v2

    .line 30
    :cond_2
    return v1
.end method

.method public onSplashShow()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-string v4, "show splash failed"

    .line 7
    .line 8
    const-string v5, "AdxSplash"

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v5, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-wide v4, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    .line 25
    .line 26
    cmpl-double v1, v4, v2

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lb7/a;->g()Ld7/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 37
    .line 38
    invoke-virtual {v0}, Lb7/a;->g()Ld7/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-wide v1, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Ld7/a;->h(D)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lb7/a;->r(Ld7/a;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    iget-object v1, p0, Lcom/hisavana/common/base/BaseSplash;->mLogoLayoutHeightRatio:Ljava/lang/Float;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lb7/e;->w(Ljava/lang/Float;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->getLogoLayout()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lb7/e;->v(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 71
    .line 72
    invoke-virtual {v0}, Lb7/e;->y()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 77
    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v5, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    iget-wide v4, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    .line 89
    .line 90
    cmpl-double v1, v4, v2

    .line 91
    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Ld7/a;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Ld7/a;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-wide v1, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Ld7/a;->h(D)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setRequest(Ld7/a;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 117
    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->show()V

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_0
    return-void
.end method

.method public onSplashStartLoad()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "hisa-"

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lb7/a;->g()Ld7/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 19
    .line 20
    invoke-virtual {v0}, Lb7/a;->g()Ld7/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ld7/a;->k(I)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ld7/a;->l(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ld7/a;->j(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lb7/a;->r(Ld7/a;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 75
    .line 76
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lb7/a;->m(Z)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2, v3}, Lb7/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 93
    .line 94
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->mCurrActivityFullscreen:Z

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lb7/a;->n(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lb7/e;

    .line 100
    .line 101
    invoke-virtual {v0}, Lb7/e;->t()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 106
    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Ld7/a;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Ld7/a;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ld7/a;->k(I)V

    .line 124
    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ld7/a;->l(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ld7/a;->j(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 167
    .line 168
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setRequest(Ld7/a;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 172
    .line 173
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setContainVulgarContent(Z)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 179
    .line 180
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    .line 183
    .line 184
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    .line 185
    .line 186
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 190
    .line 191
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->mCurrActivityFullscreen:Z

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setCurrActivityFullscreen(Z)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->loadAd()V

    .line 199
    .line 200
    .line 201
    :cond_1
    :goto_0
    return-void
.end method
