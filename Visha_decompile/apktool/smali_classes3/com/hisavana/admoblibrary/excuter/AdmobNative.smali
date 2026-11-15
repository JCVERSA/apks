.class public Lcom/hisavana/admoblibrary/excuter/AdmobNative;
.super Lcom/hisavana/common/base/BaseNative;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/ads/AdLoader;

.field public b:Lcom/google/android/gms/ads/AdLoader$Builder;

.field public c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

.field public d:Landroid/os/Handler;

.field public e:Z

.field public f:Landroid/os/Handler;

.field public g:Lcom/hisavana/common/bean/AdNativeInfo;

.field public h:I

.field public i:I

.field public j:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/common/base/BaseNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->b:Lcom/google/android/gms/ads/AdLoader$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->e:Z

    const/4 p2, 0x1

    iput p2, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->h:I

    iput p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->i:I

    invoke-static {}, Lcom/hisavana/common/utils/AdmobInitUtil;->getHanderThread()Landroid/os/HandlerThread;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->j:Landroid/os/HandlerThread;

    invoke-static {}, Lcom/hisavana/common/utils/AdmobInitUtil;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->j:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->d:Landroid/os/Handler;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->f:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Lcom/google/android/gms/ads/AdLoader$Builder;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->b:Lcom/google/android/gms/ads/AdLoader$Builder;

    return-object p1
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)Lcom/hisavana/admoblibrary/check/ExistsCheck$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    return-object p1
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->e:Z

    return p0
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->e:Z

    return p1
.end method

.method public static synthetic b(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Lcom/google/android/gms/ads/AdLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a:Lcom/google/android/gms/ads/AdLoader;

    return-object p0
.end method

.method public static synthetic c(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic d(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->b()V

    return-void
.end method

.method public static synthetic e(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Lcom/hisavana/common/bean/AdNativeInfo;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->g:Lcom/hisavana/common/bean/AdNativeInfo;

    return-object p0
.end method

.method public static synthetic f(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static synthetic g(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic h(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic i(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic j(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a()V

    return-void
.end method

.method public static synthetic k(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 6
    new-instance v0, Lcom/google/android/gms/ads/VideoOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/VideoOptions$Builder;-><init>()V

    sget-boolean v1, Lcom/hisavana/common/bean/AdMuteStatus;->MUTE_ALL:Z

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setClickToExpandRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoOptions$Builder;->build()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    .line 10
    new-instance v2, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;-><init>()V

    .line 11
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    move-result-object v0

    .line 12
    iget v2, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->h:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    move-result-object v0

    iget v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->i:I

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setMediaAspectRatio(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->b:Lcom/google/android/gms/ads/AdLoader$Builder;

    new-instance v2, Lr8;

    invoke-direct {v2, p0}, Lr8;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p0

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    return-void
.end method

.method public final synthetic a(Lcom/google/android/gms/ads/AdValue;)V
    .locals 6

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    move-result-wide v0

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    move-result p1

    .line 45
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

    const-string v5, "AdmobNative"

    invoke-virtual {v3, v5, v4}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    long-to-float v3, v0

    .line 46
    invoke-virtual {p0, v3, v2, p1}, Lcom/hisavana/common/base/BaseAd;->admobShowPriceTracking(FLjava/lang/String;I)V

    .line 47
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/hisavana/common/base/BaseAd;->onAdditionalShowed(JLjava/lang/String;I)V

    return-void
.end method

.method public final synthetic a(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 6

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AdmobNative"

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/ResponseInfo;->getLoadedAdapterResponseInfo()Lcom/google/android/gms/ads/AdapterResponseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/ResponseInfo;->getLoadedAdapterResponseInfo()Lcom/google/android/gms/ads/AdapterResponseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceName()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNativeAdLoaded : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n----->> mediator source : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/hisavana/common/base/BaseAd;->setMediatorInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->e:Z

    if-eqz v0, :cond_1

    .line 23
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 24
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a:Lcom/google/android/gms/ads/AdLoader;

    if-eqz v0, :cond_4

    .line 26
    :try_start_1
    iget v0, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getTtl()I

    move-result v3

    invoke-static {p1, v0, v3, p0}, Lcom/hisavana/admoblibrary/util/PlatformUtil;->a(Ljava/lang/Object;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 27
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNativeAdLoaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_1
    new-instance v0, Lq8;

    invoke-direct {v0, p0}, Lq8;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 29
    invoke-virtual {p0, v1}, Lcom/hisavana/common/base/BaseNative;->filter(Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result p1

    if-nez p1, :cond_2

    .line 30
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_2
    invoke-static {v1}, Lcom/hisavana/common/utils/AdUtil;->release(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 32
    :goto_2
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a:Lcom/google/android/gms/ads/AdLoader;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_5

    .line 33
    invoke-virtual {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->b()V

    .line 34
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ad load finish =="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 36
    iget-object p1, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adLoaded(Ljava/util/List;)V

    goto :goto_4

    .line 37
    :cond_3
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v1, "adMob load failed filter"

    invoke-direct {v0, p1, v1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 38
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad not pass sensitive check or no icon or image filter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 39
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    .line 40
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "adLoader is null"

    invoke-virtual {p0, v2, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public final a(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a:Lcom/google/android/gms/ads/AdLoader;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object p1, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adLoaded(Ljava/util/List;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "AdmobNative"

    const-string v0, " adLoader isLoading"

    invoke-virtual {p0, p1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isIconAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->f:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->b:Lcom/google/android/gms/ads/AdLoader$Builder;

    new-instance v1, Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;

    invoke-direct {v1, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative$b;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a:Lcom/google/android/gms/ads/AdLoader;

    return-void
.end method

.method public final d()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->b:Lcom/google/android/gms/ads/AdLoader$Builder;

    const-string v1, "AdmobNative"

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "builder is null"

    invoke-virtual {p0, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a:Lcom/google/android/gms/ads/AdLoader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a:Lcom/google/android/gms/ads/AdLoader;

    invoke-static {}, Lcom/hisavana/admoblibrary/util/PlatformUtil;->a()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    iget v3, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/ads/AdLoader;->loadAds(Lcom/google/android/gms/ads/AdRequest;I)V

    .line 6
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isIconAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 8
    new-instance v2, Lcom/hisavana/admoblibrary/excuter/AdmobNative$1;

    invoke-direct {v2, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative$1;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a:Lcom/google/android/gms/ads/AdLoader;

    invoke-virtual {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->b()V

    iput-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->g:Lcom/hisavana/common/bean/AdNativeInfo;

    iput-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AdmobNative"

    invoke-virtual {v0, v1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initNative()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;

    invoke-direct {v0, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V

    iput-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a(Landroid/content/Context;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdmobNative"

    invoke-virtual {v1, v3, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7533

    invoke-direct {v1, v2, v0}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_0
    return-void
.end method

.method public isNativeBanner()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNativeAdStartLoad()V
    .locals 0

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/hisavana/common/bean/AdNativeInfo;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->g:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {p0, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    invoke-virtual {p0, p1, p3}, Lcom/hisavana/common/base/BaseNative;->setNativeCloseListener(Landroid/view/ViewGroup;Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public setAdmobMediaAspectRatio(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->i:I

    return-void
.end method

.method public setChoicesPosition(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->h:I

    return-void
.end method

.method public supportTimer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0
    .param p1    # Lcom/hisavana/common/bean/AdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
