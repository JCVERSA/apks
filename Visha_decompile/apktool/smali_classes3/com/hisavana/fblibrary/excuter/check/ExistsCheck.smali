.class public Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/common/interfacz/IBaseAdSummary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/fblibrary/excuter/check/ExistsCheck$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static c:Z

.field public static d:Z

.field public static final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/hisavana/fblibrary/excuter/check/ExistsCheck$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    sput-boolean v1, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->c:Z

    sput-boolean v1, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->d:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    sget-object v0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck$a;

    .line 3
    invoke-interface {v1}, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck$a;->a()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .line 5
    sget-object v0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v2, "FanExistsCheck"

    const-string v3, "start to initBiddingKit"

    invoke-virtual {v1, v2, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 9
    const-string v3, "timeout_ms"

    const/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    const-string v3, "auction"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/biddingkit/bridge/BiddingKit;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    sget-boolean p0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->c:Z

    invoke-static {p0}, Lcom/facebook/biddingkit/bridge/BiddingKit;->setDebugBuild(Z)V

    const/4 p0, 0x1

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fan bidding init error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "sdk_init"

    invoke-virtual {v0, v1, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/BidderTokenProvider;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hisavana/common/constant/ComConstants;->fbBidToken:Ljava/lang/String;

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "FanExistsCheck"

    const-string v1, "ExistsCheck -fb-> get fbtoken success!!!"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->d:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/facebook/ads/AdSettings;->setTestMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeFbBidToken error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "sdk_init"

    invoke-virtual {v0, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance p0, Luf3;

    invoke-direct {p0}, Luf3;-><init>()V

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public static initFan(Landroid/content/Context;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withInitListener(Lcom/facebook/ads/AudienceNetworkAds$InitListener;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p0

    invoke-interface {p0}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V

    return-void
.end method

.method public static isIsTestDevice()Z
    .locals 1

    sget-boolean v0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->d:Z

    return v0
.end method

.method public static takeFbBidToken(Landroid/content/Context;Lcom/hisavana/fblibrary/excuter/check/ExistsCheck$a;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck$a;->a()V

    return-void

    :cond_1
    sget-object v1, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "FanExistsCheck"

    const-string v1, "start to takeFbBidToken"

    invoke-virtual {p1, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lwf3;

    invoke-direct {v0, p0}, Lwf3;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getBanner(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/base/BaseBanner;
    .locals 0

    new-instance p0, Lcom/hisavana/fblibrary/excuter/FanBanner;

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/fblibrary/excuter/FanBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    invoke-static {p1, p2, p0}, Lcp3;->d(Landroid/content/Context;Lcom/hisavana/common/bean/Network;Lcom/hisavana/fblibrary/excuter/FanBanner;)Lcom/hisavana/fblibrary/excuter/FanBanner;

    move-result-object p0

    return-object p0
.end method

.method public getInterstitial(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitial;
    .locals 0

    new-instance p0, Lcom/hisavana/fblibrary/excuter/FanInterstitial;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/fblibrary/excuter/FanInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    invoke-static {p1, p2, p0}, Lcp3;->e(Landroid/content/Context;Lcom/hisavana/common/bean/Network;Lcom/hisavana/fblibrary/excuter/FanInterstitial;)Lcom/hisavana/fblibrary/excuter/FanInterstitial;

    move-result-object p0

    return-object p0
.end method

.method public getNative(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)Lcom/hisavana/common/base/BaseNative;
    .locals 0

    new-instance p0, Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/fblibrary/excuter/FanNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    invoke-static {p1, p2, p3, p0}, Lcp3;->a(Landroid/content/Context;Lcom/hisavana/common/bean/Network;ILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/base/BaseNative;

    move-result-object p0

    return-object p0
.end method

.method public getNativeViewHolder()Lcom/hisavana/common/base/BaseNativeViewHolder;
    .locals 0

    new-instance p0, Lcom/hisavana/fblibrary/excuter/holder/NativeAdViewHolder;

    invoke-direct {p0}, Lcom/hisavana/fblibrary/excuter/holder/NativeAdViewHolder;-><init>()V

    return-object p0
.end method

.method public getQueryPrice()Lcom/hisavana/common/base/BaseQueryPrice;
    .locals 0

    new-instance p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;

    invoke-direct {p0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;-><init>()V

    invoke-static {p0}, Lcp3;->b(Lcom/hisavana/common/base/BaseQueryPrice;)Lcom/hisavana/common/base/BaseQueryPrice;

    move-result-object p0

    return-object p0
.end method

.method public getSplash(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseSplash;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideo(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
    .locals 0

    new-instance p0, Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/fblibrary/excuter/FanVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    invoke-static {p1, p2, p0}, Lcp3;->c(Landroid/content/Context;Lcom/hisavana/common/bean/Network;Lcom/hisavana/common/base/BaseVideo;)Lcom/hisavana/common/base/BaseVideo;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/hisavana/common/bean/AdSourceConfig;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    iget-boolean p0, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isDebug:Z

    sput-boolean p0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->c:Z

    iget-boolean p0, p2, Lcom/hisavana/common/bean/AdSourceConfig;->testDevice:Z

    sput-boolean p0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->d:Z

    :cond_0
    sget-boolean p0, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->d:Z

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil;->addTestDevice(Landroid/content/Context;)V

    :cond_1
    sget-object p0, Lcom/hisavana/common/bean/AdSourceConfig;->handler:Landroid/os/Handler;

    sput-object p0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil;->handler:Landroid/os/Handler;

    return-void
.end method
