.class public Lcom/hisavana/mintegral/check/ExistsCheck;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/hisavana/common/interfacz/IBaseAdSummary;


# static fields
.field public static final MINTEGRAL_TAG:Ljava/lang/String; = "mintegral_log"

.field public static isDebug:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static initAdSource(Ljava/lang/String;Ljava/lang/String;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    .locals 10

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
    const-string v2, "initAdSource\uff0cmintegralAppID\uff1a"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "\uff0cmintegralAppKey\uff1a"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "mintegral_log"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-static {}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->getInstance()Lcom/hisavana/mintegral/check/MBridgeSDKManager;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    sget-boolean v7, Lcom/hisavana/mintegral/check/ExistsCheck;->isDebug:Z

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    move-object v5, p1

    .line 47
    move-object v6, p0

    .line 48
    move-object v9, p2

    .line 49
    invoke-virtual/range {v3 .. v9}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v0, "sdk_init"

    .line 59
    .line 60
    const-string v1, "ExistsCheck --> Mintegral--> initialize exception"

    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-interface {p2, p0}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;->onInitializeFailure(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method


# virtual methods
.method public getBanner(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/base/BaseBanner;
    .locals 0

    .line 1
    new-instance p4, Lcom/hisavana/mintegral/executer/MintegralBanner;

    .line 2
    .line 3
    invoke-direct {p4, p1, p2, p3}, Lcom/hisavana/mintegral/executer/MintegralBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    .line 4
    .line 5
    .line 6
    return-object p4
.end method

.method public getInterstitial(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitial;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/hisavana/mintegral/executer/MintegralInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getNative(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)Lcom/hisavana/common/base/BaseNative;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/hisavana/mintegral/executer/MintegralNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getNativeViewHolder()Lcom/hisavana/common/base/BaseNativeViewHolder;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getQueryPrice()Lcom/hisavana/common/base/BaseQueryPrice;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/mintegral/bidding/MintegralBidding;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hisavana/mintegral/bidding/MintegralBidding;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getSplash(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseSplash;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/mintegral/executer/MintegralSplash;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/hisavana/mintegral/executer/MintegralSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getVideo(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/mintegral/executer/MintegralVideo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/hisavana/mintegral/executer/MintegralVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/hisavana/common/bean/AdSourceConfig;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean p1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isDebug:Z

    .line 7
    .line 8
    sput-boolean p1, Lcom/hisavana/mintegral/check/ExistsCheck;->isDebug:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "mintegral_log"

    .line 16
    .line 17
    const-string v0, "mintegral initialize exception"

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
