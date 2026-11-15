.class public Lcom/hisavana/pangle/check/ExistsCheck;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/hisavana/common/interfacz/IBaseAdSummary;


# static fields
.field public static final PANGLE_TAG:Ljava/lang/String; = "pangle_log"

.field private static a:I

.field private static b:Z


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

.method private static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-boolean v0, Lcom/hisavana/pangle/check/ExistsCheck;->b:Z

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->debugLog(Z)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget v0, Lcom/hisavana/pangle/check/ExistsCheck;->a:I

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->appIcon(I)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-boolean v1, Lcom/hisavana/common/bean/AppStartInfo;->userConsent:Z

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->setGDPRConsent(I)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-boolean v1, Lcom/hisavana/common/bean/AppStartInfo;->ageRestrictedUser:Z

    .line 34
    .line 35
    xor-int/2addr v0, v1

    .line 36
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->setPAConsent(I)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static initAdSource(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V
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
    const-string v2, "initAdSource"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->isInitSuccess()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;->success()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/hisavana/pangle/check/ExistsCheck;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "sdk_init"

    .line 42
    .line 43
    const-string v2, "ExistsCheck --> Pangle--> initialize exception"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/16 v0, 0x7531

    .line 53
    .line 54
    invoke-interface {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;->fail(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method


# virtual methods
.method public getBanner(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/base/BaseBanner;
    .locals 0

    .line 1
    new-instance p4, Lcom/hisavana/pangle/executer/PangleBanner;

    .line 2
    .line 3
    invoke-direct {p4, p1, p2, p3}, Lcom/hisavana/pangle/executer/PangleBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    .line 4
    .line 5
    .line 6
    return-object p4
.end method

.method public getInterstitial(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitial;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/pangle/executer/PangleInterstitial;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/hisavana/pangle/executer/PangleInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getNative(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)Lcom/hisavana/common/base/BaseNative;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/pangle/executer/PangleNative;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/hisavana/pangle/executer/PangleNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getNativeViewHolder()Lcom/hisavana/common/base/BaseNativeViewHolder;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/pangle/holder/NativeAdViewHolder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hisavana/pangle/holder/NativeAdViewHolder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getQueryPrice()Lcom/hisavana/common/base/BaseQueryPrice;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getSplash(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseSplash;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/pangle/executer/PangleSplash;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/hisavana/pangle/executer/PangleSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getVideo(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/pangle/executer/PangleVideo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/hisavana/pangle/executer/PangleVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/hisavana/common/bean/AdSourceConfig;)V
    .locals 3

    .line 1
    const-string v0, "pangle_log"

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean p1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isDebug:Z

    .line 9
    .line 10
    sput-boolean p1, Lcom/hisavana/pangle/check/ExistsCheck;->b:Z

    .line 11
    .line 12
    iget p1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->appIconId:I

    .line 13
    .line 14
    sput p1, Lcom/hisavana/pangle/check/ExistsCheck;->a:I

    .line 15
    .line 16
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Pangle initialize, appId = "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p2, Lcom/hisavana/common/bean/AdSourceConfig;->pangleAppId:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ", isClosePangleWebFileLock = "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v2, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isClosePangleWebFileLock:Z

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-boolean p1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isClosePangleWebFileLock:Z

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v1, "close Pangle Web File Lock"

    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->closeMultiWebViewFileLock()V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object p1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->pangleAppId:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v2, "init Pangle in advance, pangleAppID = "

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v2, p2, Lcom/hisavana/common/bean/AdSourceConfig;->pangleAppId:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->pangleAppId:Ljava/lang/String;

    .line 103
    .line 104
    const/4 p2, 0x0

    .line 105
    invoke-static {p1, p2}, Lcom/hisavana/pangle/check/ExistsCheck;->initAdSource(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void

    .line 109
    :cond_3
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string p2, "Pangle initialize exception"

    .line 114
    .line 115
    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method
