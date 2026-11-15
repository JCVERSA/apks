.class public Lcom/hisavana/admoblibrary/check/ExistsCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/common/interfacz/IBaseAdSummary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/admoblibrary/check/ExistsCheck$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hisavana/admoblibrary/check/ExistsCheck$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/hisavana/admoblibrary/check/ExistsCheck;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a(Z)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Admob_Init"

    .line 11
    :try_start_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v2, "Execute initialization method "

    invoke-virtual {v1, v0, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v1, Lvf3;

    invoke-direct {v1}, Lvf3;-><init>()V

    invoke-static {p0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 13
    sget-object v1, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 14
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v2, Lxf3;

    invoke-direct {v2}, Lxf3;-><init>()V

    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    .line 15
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "admob init error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "Admob_Init"

    const-string v2, "start to init admob"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/hisavana/admoblibrary/check/ExistsCheck$a;->a()V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 5
    sget-object p1, Lcom/hisavana/admoblibrary/check/ExistsCheck;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 8
    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lzf3;

    invoke-direct {v0, p0}, Lzf3;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, v2, :cond_4

    .line 10
    invoke-static {v1}, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 5

    .line 16
    sget-object v0, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 17
    invoke-interface {p0}, Lcom/google/android/gms/ads/initialization/InitializationStatus;->getAdapterStatusMap()Ljava/util/Map;

    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/initialization/AdapterStatus;

    invoke-interface {v4}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/initialization/AdapterStatus;

    invoke-interface {v0}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getLatency()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 22
    const-string v3, "Adapter name: %s, Description: %s, Latency: %d"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Admob_Init"

    invoke-virtual {v1, v2, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Lcom/hisavana/admoblibrary/check/ExistsCheck;->c()V

    .line 24
    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lyf3;

    invoke-direct {v0}, Lyf3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 26
    :goto_0
    sget-object v0, Lcom/hisavana/admoblibrary/check/ExistsCheck;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 28
    invoke-interface {v0}, Lcom/hisavana/admoblibrary/check/ExistsCheck$a;->a()V

    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {v0}, Lcom/hisavana/admoblibrary/check/ExistsCheck$a;->b()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic b()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a(Z)V

    return-void
.end method

.method public static c()V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/hisavana/common/bean/AdMuteStatus;->MUTE_ALL:Z

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setAppMuted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppVolume exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ADMOB_CHECK"

    invoke-virtual {v1, v2, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBanner(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/base/BaseBanner;
    .locals 0

    new-instance p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)V

    invoke-static {p1, p2, p0}, Lzk3;->a(Landroid/content/Context;Lcom/hisavana/common/bean/Network;Lcom/hisavana/admoblibrary/excuter/AdmobBanner;)Lcom/hisavana/admoblibrary/excuter/AdmobBanner;

    move-result-object p0

    return-object p0
.end method

.method public getInterstitial(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitial;
    .locals 0

    new-instance p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    invoke-static {p1, p2, p0}, Lzk3;->b(Landroid/content/Context;Lcom/hisavana/common/bean/Network;Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;)Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;

    move-result-object p0

    return-object p0
.end method

.method public getInterstitialRewarded(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitialRewardedVideo;
    .locals 0

    new-instance p0, Lp8;

    invoke-direct {p0, p1, p2}, Lp8;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object p0
.end method

.method public getNative(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)Lcom/hisavana/common/base/BaseNative;
    .locals 0

    new-instance p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    invoke-static {p1, p2, p3, p0}, Lzk3;->e(Landroid/content/Context;Lcom/hisavana/common/bean/Network;ILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/base/BaseNative;

    move-result-object p0

    return-object p0
.end method

.method public getNativeViewHolder()Lcom/hisavana/common/base/BaseNativeViewHolder;
    .locals 0

    new-instance p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;

    invoke-direct {p0}, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;-><init>()V

    return-object p0
.end method

.method public getQueryPrice()Lcom/hisavana/common/base/BaseQueryPrice;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSplash(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseSplash;
    .locals 0

    new-instance p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    invoke-static {p1, p2, p0}, Lzk3;->c(Landroid/content/Context;Lcom/hisavana/common/bean/Network;Lcom/hisavana/admoblibrary/excuter/AdmobSplash;)Lcom/hisavana/admoblibrary/excuter/AdmobSplash;

    move-result-object p0

    return-object p0
.end method

.method public getVideo(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
    .locals 0

    new-instance p0, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/admoblibrary/excuter/AdmobVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    invoke-static {p1, p2, p0}, Lzk3;->d(Landroid/content/Context;Lcom/hisavana/common/bean/Network;Lcom/hisavana/admoblibrary/excuter/AdmobVideo;)Lcom/hisavana/admoblibrary/excuter/AdmobVideo;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/hisavana/common/bean/AdSourceConfig;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-boolean p0, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isInitAdMob:Z

    iget-boolean p2, p2, Lcom/hisavana/common/bean/AdSourceConfig;->testDevice:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move p2, p0

    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "android_id"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/hisavana/admoblibrary/util/PlatformUtil;->b()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lfw5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    :cond_1
    sget-object p1, Lcom/hisavana/common/bean/AdSourceConfig;->handler:Landroid/os/Handler;

    sput-object p1, Lcom/hisavana/admoblibrary/util/PlatformUtil;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isInitAdmob == "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Admob ExistsCheck"

    invoke-virtual {p1, v0, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a(Landroid/content/Context;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)V

    :cond_2
    return-void
.end method
