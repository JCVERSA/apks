.class public Lcom/hisavana/admoblibrary/excuter/AdmobBanner;
.super Lcom/hisavana/common/base/BaseBanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/base/BaseBanner<",
        "Lcom/google/android/gms/ads/AdView;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/ads/AdView;

.field public b:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

.field public final c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    iput p3, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->c:I

    iput p4, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->d:I

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bannerSize:="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AdmobBanner"

    invoke-virtual {p1, p2, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->d:I

    return p0
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)Lcom/hisavana/admoblibrary/check/ExistsCheck$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->b:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    return-object p1
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;->setMediatorInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;)Lcom/google/android/gms/ads/AdView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method

.method public static synthetic c(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/AdSize;
    .locals 5

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 6
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 8
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_5

    .line 9
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    .line 11
    :cond_2
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 13
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    .line 14
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-lez v4, :cond_4

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_3

    goto :goto_1

    :cond_3
    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 15
    invoke-static {p0, v1}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    goto :goto_2

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_6

    move-object v0, p0

    :cond_6
    :goto_3
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/ads/AdValue;)V
    .locals 6

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    move-result-wide v0

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    move-result p1

    .line 19
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPaidEvent valueMicros "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",currencyCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",precisionType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdmobBanner"

    invoke-virtual {v3, v5, v4}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    long-to-float v3, v0

    .line 20
    invoke-virtual {p0, v3, v2, p1}, Lcom/hisavana/common/base/BaseAd;->admobShowPriceTracking(FLjava/lang/String;I)V

    .line 21
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/hisavana/common/base/BaseAd;->onAdditionalShowed(JLjava/lang/String;I)V

    return-void
.end method

.method public destroyFoldAd()Z
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseBanner;->destroyFoldAd()Z

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyFoldAd mBannerType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdmobBanner"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->d:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->destroyAd()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBanner()Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->getBanner()Lcom/google/android/gms/ads/AdView;

    move-result-object p0

    return-object p0
.end method

.method public getBanner()Lcom/google/android/gms/ads/AdView;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 4
    iget-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v1, :cond_6

    .line 5
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->d:I

    .line 7
    :cond_1
    iget v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->d:I

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    .line 9
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 10
    iget v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->c:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 11
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/hisavana/admoblibrary/excuter/AdmobBanner$a;

    invoke-direct {v1, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobBanner$a;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 16
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lo8;

    invoke-direct {v1, p0}, Lo8;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 17
    :cond_6
    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    return-object p0

    .line 18
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method

.method public isCollapsible()Z
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->isCollapsible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBannerDestroy()V
    .locals 4

    const-string v0, "AdmobBanner"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object v2, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/BaseAdView;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    iget-object v2, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/BaseAdView;->destroy()V

    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->b:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "banner destroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBannerLoad()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner$b;

    invoke-direct {v0, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobBanner$b;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;)V

    iput-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->b:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->b:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a(Landroid/content/Context;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7533

    invoke-direct {v1, v2, v0}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_0
    return-void
.end method

.method public showBanner()V
    .locals 1

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public supportTimer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
