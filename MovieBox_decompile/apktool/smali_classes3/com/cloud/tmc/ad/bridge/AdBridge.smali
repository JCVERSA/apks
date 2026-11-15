.class public final Lcom/cloud/tmc/ad/bridge/AdBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0001\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J,\u0010\n\u001a\u00020\u000b2\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\u001c\u0010\u0011\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u0010H\u0007JP\u0010\u0013\u001a\u00020\u000b2\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J \u0010\u0017\u001a\u00020\u000b2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J,\u0010\u0018\u001a\u00020\u000b2\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007JH\u0010\u0019\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u00042\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0001\u0010\r\u001a\u00020\u000e2\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J,\u0010\u001d\u001a\u00020\u000b2\n\u0008\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\u0008\u0010\u001f\u001a\u00020\u000bH\u0016J\u0008\u0010 \u001a\u00020\u000bH\u0016J\n\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0014\u0010#\u001a\u00020\u000b2\n\u0008\u0001\u0010$\u001a\u0004\u0018\u00010\u0004H\u0007J=\u0010%\u001a\u00020\u000b2\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\'\u001a\u0004\u0018\u00010(2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007\u00a2\u0006\u0002\u0010)J8\u0010*\u001a\u00020\u000b2\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u000e\u0010\t\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/bridge/AdBridge;",
        "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
        "()V",
        "EVENT_AD_CLICK",
        "",
        "getEVENT_AD_CLICK",
        "()Ljava/lang/String;",
        "EVENT_AD_SHOW",
        "getEVENT_AD_SHOW",
        "TAG",
        "closeAd",
        "",
        "triggerId",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "encryptAESBase64",
        "data",
        "fillingInterstitial",
        "adsDTO",
        "mainImgPath",
        "logoImgPath",
        "getAdArguments",
        "getPersonalization",
        "getServerUrls",
        "tag",
        "trigger_id",
        "pointData",
        "isAppInstalled",
        "packageName",
        "onFinalized",
        "onInitialized",
        "permit",
        "",
        "responseCallback",
        "responseData",
        "saveAdFrameworkVersion",
        "adSdkVersion",
        "adSdkVersionInt",
        "",
        "(Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V",
        "showInterstitial",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final EVENT_AD_CLICK:Ljava/lang/String;

.field private final EVENT_AD_SHOW:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AdBridge"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "ad_show"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->EVENT_AD_SHOW:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "ad_click"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->EVENT_AD_CLICK:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/tmc/ad/bridge/AdBridge;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final closeAd(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "trigger_id"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "errMsg"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "closeAd"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-class v1, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 27
    .line 28
    invoke-interface {v1, p1, p2}, Lcom/cloud/tmc/ad/IAdManagerProxy;->close(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;)V

    .line 29
    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 34
    .line 35
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "trigger_id"

    .line 39
    .line 40
    invoke-virtual {p2, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p3, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string p2, "closeAd -> trigger_id\u4e0d\u80fd\u4e3a\u7a7a"

    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    if-eqz p3, :cond_1

    .line 57
    .line 58
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 59
    .line 60
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string p2, "trigger_id\u4e0d\u80fd\u4e3a\u7a7a"

    .line 64
    .line 65
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :goto_0
    if-eqz p3, :cond_1

    .line 73
    .line 74
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 75
    .line 76
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "E:"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, "!!"

    .line 93
    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p2, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p3, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    :goto_1
    return-void
.end method

.method public final encryptAESBase64(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "data"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "errMsg"

    .line 2
    .line 3
    const-string v1, "data"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "callback"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 20
    .line 21
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "data is empty!!"

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    sget-object v2, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 48
    .line 49
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    new-array p1, p1, [B

    .line 56
    .line 57
    :cond_2
    const/4 v2, 0x2

    .line 58
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 69
    .line 70
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "encrypt data is empty!!"

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 83
    .line 84
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v2, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p2, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :goto_0
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 99
    .line 100
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v3, "E:"

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, "!!"

    .line 117
    .line 118
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v1, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {p2, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 129
    .line 130
    .line 131
    :goto_1
    return-void
.end method

.method public final fillingInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "trigger_id"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "adsDTO"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "mainImgPath"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "logoImgPath"
            }
        .end annotation
    .end param
    .param p5    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    const-string v10, "\u7cfb\u7edf\u9519\u8bef"

    .line 9
    .line 10
    const/4 v11, 0x2

    .line 11
    const-string v12, "filling_result"

    .line 12
    .line 13
    const-string v13, "trigger_id"

    .line 14
    .line 15
    const-string v14, "errMsg"

    .line 16
    .line 17
    if-eqz p5, :cond_4

    .line 18
    .line 19
    if-eqz v8, :cond_3

    .line 20
    .line 21
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_3

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    const-class v2, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 36
    .line 37
    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    move-object v3, v1

    .line 42
    check-cast v3, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    const-class v1, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 53
    .line 54
    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object/from16 v4, p3

    .line 59
    .line 60
    invoke-interface {v1, v4, v2}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/4 v4, 0x0

    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    move-object v5, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move-object v5, v4

    .line 74
    :goto_0
    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    move-object/from16 v6, p4

    .line 79
    .line 80
    invoke-interface {v1, v6, v2}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    move-object v6, v1

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    move-object v6, v4

    .line 93
    :goto_1
    const-class v1, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 100
    .line 101
    new-instance v7, Lcom/cloud/tmc/ad/bridge/AdBridge$fillingInterstitial$1$1;

    .line 102
    .line 103
    invoke-direct {v7, p0, v9}, Lcom/cloud/tmc/ad/bridge/AdBridge$fillingInterstitial$1$1;-><init>(Lcom/cloud/tmc/ad/bridge/AdBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 104
    .line 105
    .line 106
    move-object/from16 v2, p1

    .line 107
    .line 108
    move-object v4, v5

    .line 109
    move-object v5, v6

    .line 110
    move-object/from16 v6, p5

    .line 111
    .line 112
    invoke-interface/range {v1 .. v7}, Lcom/cloud/tmc/ad/IAdManagerProxy;->fillingInterstitial(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/ad/interface/AdFillingEventListener;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_2
    if-eqz v9, :cond_5

    .line 117
    .line 118
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 119
    .line 120
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v2, v0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    const-string v3, "fillingInterstitial -> adsDTO\u89e3\u6790\u5931\u8d25"

    .line 126
    .line 127
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v2, "adsDTO\u89e3\u6790\u5931\u8d25"

    .line 131
    .line 132
    invoke-virtual {v1, v14, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v13, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v1, v12, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v9, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    iget-object v1, v0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 150
    .line 151
    const-string v2, "fillingInterstitial -> trigger_id\u6216adsDTO\u4e0d\u80fd\u4e3a\u7a7a"

    .line 152
    .line 153
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    if-eqz v9, :cond_5

    .line 157
    .line 158
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 159
    .line 160
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v2, "trigger_id\u6216adsDTO\u4e0d\u80fd\u4e3a\u7a7a"

    .line 164
    .line 165
    invoke-virtual {v1, v14, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v13, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, v12, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v9, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    iget-object v1, v0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 183
    .line 184
    const-string v2, "fillingInterstitial -> \u7cfb\u7edf\u9519\u8bef"

    .line 185
    .line 186
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    if-eqz v9, :cond_5

    .line 190
    .line 191
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 192
    .line 193
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v14, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v13, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v1, v12, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v9, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :catchall_0
    if-eqz v9, :cond_5

    .line 214
    .line 215
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 216
    .line 217
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v14, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v13, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v1, v12, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v9, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 234
    .line 235
    .line 236
    :cond_5
    :goto_2
    return-void
.end method

.method public final getAdArguments(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 4
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    :try_start_0
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "type"

    .line 7
    .line 8
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getType()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "brand"

    .line 20
    .line 21
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getBrand()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "model"

    .line 29
    .line 30
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getModel()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "maker"

    .line 38
    .line 39
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getMake()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "osType"

    .line 47
    .line 48
    const-string v1, "1"

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "osVersion"

    .line 54
    .line 55
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getOsVersion()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v0, "networkConnectionType"

    .line 63
    .line 64
    sget-object v1, Lcom/cloud/tmc/ad/utils/MitNetUtil;->INSTANCE:Lcom/cloud/tmc/ad/utils/MitNetUtil;

    .line 65
    .line 66
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/ad/utils/MitNetUtil;->getNetworkType(Landroid/content/Context;)Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getMcc()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const-string v1, "operatorType"

    .line 90
    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    :try_start_1
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getMnc()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    .line 99
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getMcc()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getMnc()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catchall_0
    move-exception p1

    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_0
    const-string v0, ""

    .line 130
    .line 131
    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_0
    const-string v0, "ipAddress"

    .line 135
    .line 136
    sget-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIp()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v0, "gaid"

    .line 146
    .line 147
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {p1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v0, "screenWidth"

    .line 155
    .line 156
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getScreenWidth()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {p1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 165
    .line 166
    .line 167
    const-string v0, "screenHeight"

    .line 168
    .line 169
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getScreenHeight()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {p1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 178
    .line 179
    .line 180
    const-string v0, "screenDensity"

    .line 181
    .line 182
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getScreenDensity()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {p1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 191
    .line 192
    .line 193
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 194
    .line 195
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v2, "baseStation"

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGsmCellLocation()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v1, "latitude"

    .line 208
    .line 209
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->getLatitude()D

    .line 210
    .line 211
    .line 212
    move-result-wide v2

    .line 213
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 218
    .line 219
    .line 220
    const-string v1, "longitude"

    .line 221
    .line 222
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->getLongitude()D

    .line 223
    .line 224
    .line 225
    move-result-wide v2

    .line 226
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 231
    .line 232
    .line 233
    const-string v1, "coordTime"

    .line 234
    .line 235
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->getCoordTime()J

    .line 236
    .line 237
    .line 238
    move-result-wide v2

    .line 239
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 244
    .line 245
    .line 246
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 247
    .line 248
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v2, "installTime"

    .line 252
    .line 253
    invoke-static {}, Lcom/cloud/tmc/integration/utils/ApplicationUtil;->getInstallTime()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const-string v2, "userAgent"

    .line 261
    .line 262
    invoke-static {}, Lcom/cloud/tmc/ad/athena/PostConstant;->getUserAgent()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    if-eqz p2, :cond_1

    .line 270
    .line 271
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 272
    .line 273
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v3, "device"

    .line 277
    .line 278
    invoke-virtual {v2, v3, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 279
    .line 280
    .line 281
    const-string p1, "user"

    .line 282
    .line 283
    invoke-virtual {v2, p1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 284
    .line 285
    .line 286
    const-string p1, "application"

    .line 287
    .line 288
    invoke-virtual {v2, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 289
    .line 290
    .line 291
    invoke-interface {p2, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    .line 293
    .line 294
    goto :goto_2

    .line 295
    :goto_1
    if-eqz p2, :cond_1

    .line 296
    .line 297
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 298
    .line 299
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 300
    .line 301
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v2, "E:"

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string p1, "!!"

    .line 316
    .line 317
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    const-string v1, "errMsg"

    .line 325
    .line 326
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 330
    .line 331
    .line 332
    :cond_1
    :goto_2
    return-void
.end method

.method public final getEVENT_AD_CLICK()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->EVENT_AD_CLICK:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEVENT_AD_SHOW()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->EVENT_AD_SHOW:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPersonalization(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "trigger_id"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string p2, "errMsg"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "getPersonalization"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGaidStatus()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "turnOffPerAds"

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "trigger_id"

    .line 41
    .line 42
    invoke-virtual {v1, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p3, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string v0, "getPersonalization -> trigger_id\u4e0d\u80fd\u4e3a\u7a7a"

    .line 54
    .line 55
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-eqz p3, :cond_1

    .line 59
    .line 60
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 61
    .line 62
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v0, "trigger_id\u4e0d\u80fd\u4e3a\u7a7a"

    .line 66
    .line 67
    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :goto_0
    if-eqz p3, :cond_1

    .line 75
    .line 76
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v2, "E: "

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, "!!"

    .line 95
    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    :goto_1
    return-void
.end method

.method public final getServerUrls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "tag"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "adsDTO"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "trigger_id"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "pointData"
            }
        .end annotation
    .end param
    .param p5    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    const-string v5, "tag"

    .line 12
    .line 13
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v5, "adsDTO"

    .line 17
    .line 18
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v5, "trigger_id"

    .line 22
    .line 23
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v5, "app"

    .line 27
    .line 28
    move-object/from16 v6, p5

    .line 29
    .line 30
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const-string v7, "errMsg"

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    iget-object v0, v1, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "tag is empty"

    .line 44
    .line 45
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 51
    .line 52
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v7, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v4, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void

    .line 62
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    iget-object v0, v1, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    const-string v2, "adsDTO is empty"

    .line 71
    .line 72
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 78
    .line 79
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v7, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v4, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void

    .line 89
    :cond_3
    :try_start_0
    iget-object v5, v1, Lcom/cloud/tmc/ad/bridge/AdBridge;->EVENT_AD_SHOW:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const-string v8, "get(\n                   \u2026             ).sdkVersion"

    .line 96
    .line 97
    const-class v9, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 98
    .line 99
    const/4 v10, 0x0

    .line 100
    const-string v11, "app.appId"

    .line 101
    .line 102
    const-class v12, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 103
    .line 104
    if-eqz v5, :cond_5

    .line 105
    .line 106
    :try_start_1
    invoke-static {v2, v12}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->setClickid(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v2, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getImageWidth()Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    const-string v5, "it.imageWidth"

    .line 124
    .line 125
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v17

    .line 132
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getImageHeight()Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    const-string v5, "it.imageHeight"

    .line 137
    .line 138
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result v18

    .line 145
    const/4 v13, 0x0

    .line 146
    const/4 v14, 0x0

    .line 147
    const/4 v15, 0x0

    .line 148
    const/16 v16, 0x0

    .line 149
    .line 150
    move-object v12, v2

    .line 151
    invoke-direct/range {v12 .. v18}, Lcom/cloud/tmc/ad/bean/DownUpPointBean;-><init>(FFFFII)V

    .line 152
    .line 153
    .line 154
    new-instance v3, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_4

    .line 168
    .line 169
    sget-object v3, Lcom/cloud/tmc/ad/TrackingManager;->INSTANCE:Lcom/cloud/tmc/ad/TrackingManager;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getShowTrackingUrls()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    new-instance v12, Lcom/cloud/tmc/ad/bean/AdExtraBean;

    .line 176
    .line 177
    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    check-cast v9, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 189
    .line 190
    invoke-interface {v9}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getSDKVersion()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {v12, v6, v10, v9}, Lcom/cloud/tmc/ad/bean/AdExtraBean;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v5, v0, v12, v2}, Lcom/cloud/tmc/ad/TrackingManager;->createPicExposureServerUrls(Ljava/util/List;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Lcom/cloud/tmc/ad/bean/AdExtraBean;Lcom/cloud/tmc/ad/bean/DownUpPointBean;)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    goto/16 :goto_1

    .line 207
    .line 208
    :cond_4
    sget-object v2, Lcom/cloud/tmc/ad/TrackingManager;->INSTANCE:Lcom/cloud/tmc/ad/TrackingManager;

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getShowTrackingUrls()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/ad/TrackingManager;->createAdmExposureServerUrls(Ljava/util/List;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    :goto_0
    if-eqz v4, :cond_6

    .line 219
    .line 220
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 221
    .line 222
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v3, "ad_show"

    .line 226
    .line 227
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v4, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :cond_5
    iget-object v5, v1, Lcom/cloud/tmc/ad/bridge/AdBridge;->EVENT_AD_CLICK:Ljava/lang/String;

    .line 240
    .line 241
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_6

    .line 246
    .line 247
    invoke-static {v2, v12}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    move-object v14, v0

    .line 252
    check-cast v14, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 253
    .line 254
    if-eqz v14, :cond_6

    .line 255
    .line 256
    invoke-virtual {v14, v3}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->setClickid(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v14}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_6

    .line 268
    .line 269
    sget-object v12, Lcom/cloud/tmc/ad/TrackingManager;->INSTANCE:Lcom/cloud/tmc/ad/TrackingManager;

    .line 270
    .line 271
    invoke-virtual {v14}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getClickTrackingUrls()Ljava/util/ArrayList;

    .line 272
    .line 273
    .line 274
    move-result-object v13

    .line 275
    new-instance v15, Lcom/cloud/tmc/ad/bean/AdExtraBean;

    .line 276
    .line 277
    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    check-cast v2, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 289
    .line 290
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getSDKVersion()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-direct {v15, v0, v10, v2}, Lcom/cloud/tmc/ad/bean/AdExtraBean;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v14}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getClickid()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v16

    .line 304
    const-class v0, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 305
    .line 306
    move-object/from16 v2, p4

    .line 307
    .line 308
    invoke-static {v2, v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    move-object/from16 v17, v0

    .line 313
    .line 314
    check-cast v17, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 315
    .line 316
    invoke-virtual/range {v12 .. v17}, Lcom/cloud/tmc/ad/TrackingManager;->createPicClickServerUrls(Ljava/util/List;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Lcom/cloud/tmc/ad/bean/AdExtraBean;Ljava/lang/String;Lcom/cloud/tmc/ad/bean/DownUpPointBean;)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    if-eqz v4, :cond_6

    .line 321
    .line 322
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 323
    .line 324
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string v3, "ad_click"

    .line 328
    .line 329
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-interface {v4, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    .line 338
    .line 339
    goto :goto_2

    .line 340
    :goto_1
    iget-object v2, v1, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 341
    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v5, "reportAdLog  parse data fail: "

    .line 348
    .line 349
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    if-eqz v4, :cond_6

    .line 363
    .line 364
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 365
    .line 366
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 367
    .line 368
    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v2, v7, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v4, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 388
    .line 389
    .line 390
    :cond_6
    :goto_2
    return-void
.end method

.method public final isAppInstalled(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "packageName"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "popularize_app_install_status"

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string p2, "1"

    .line 17
    .line 18
    invoke-virtual {p1, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v2, v0

    .line 40
    :goto_0
    const-string v3, "-1"

    .line 41
    .line 42
    if-nez v2, :cond_4

    .line 43
    .line 44
    if-eqz p3, :cond_3

    .line 45
    .line 46
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 47
    .line 48
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void

    .line 58
    :cond_4
    :try_start_0
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-eqz p2, :cond_5

    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_5
    if-nez v0, :cond_6

    .line 87
    .line 88
    if-eqz p3, :cond_7

    .line 89
    .line 90
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 91
    .line 92
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string p2, "3"

    .line 96
    .line 97
    invoke-virtual {p1, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    if-eqz p3, :cond_7

    .line 105
    .line 106
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 107
    .line 108
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string p2, "2"

    .line 112
    .line 113
    invoke-virtual {p1, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catch_0
    if-eqz p3, :cond_7

    .line 121
    .line 122
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 123
    .line 124
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 131
    .line 132
    .line 133
    :cond_7
    :goto_1
    return-void
.end method

.method public onFinalized()V
    .locals 0

    .line 1
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bridge/AdBridge;->permit()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/security/Permission;

    return-object v0
.end method

.method public permit()Ljava/lang/Void;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final responseCallback(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "responseData"
            }
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    const-class v0, Lcom/cloud/tmc/ad/bean/response/DataDTO;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/cloud/tmc/ad/bean/response/DataDTO;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v0, "fromJson(it, DataDTO::class.java)"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/cloud/tmc/ad/utils/ServicesTimeUtil;->saveServicesTime(Lcom/cloud/tmc/ad/bean/response/DataDTO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "responseCallback parse responseData fail: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    return-void
.end method

.method public final saveAdFrameworkVersion(Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "ad_sdk_version"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "ad_sdk_version_int"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string p3, "errMsg"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "saveAdFrameworkVersion"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->INSTANCE:Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->getInstance()Lcom/transsion/core/utils/f;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "ad_sdk_version"

    .line 27
    .line 28
    invoke-virtual {v1, v2, p1}, Lcom/transsion/core/utils/f;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->getInstance()Lcom/transsion/core/utils/f;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "ad_sdk_version_int"

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    if-eqz p4, :cond_1

    .line 45
    .line 46
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p2, "saveAdFrameworkVersion -> ad_sdk_version/ad_sdk_version_int\u4e0d\u80fd\u4e3a\u7a7a"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-eqz p4, :cond_1

    .line 60
    .line 61
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string p2, "ad_sdk_version/ad_sdk_version_int\u4e0d\u80fd\u4e3a\u7a7a"

    .line 67
    .line 68
    invoke-virtual {p1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p4, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :goto_0
    if-eqz p4, :cond_1

    .line 76
    .line 77
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 78
    .line 79
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "E:"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, "!!"

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p2, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p4, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    :goto_1
    return-void
.end method

.method public final showInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "trigger_id"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "adsDTO"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "errMsg"

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    const-class v1, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 22
    .line 23
    invoke-static {p2, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    const-class v1, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 38
    .line 39
    new-instance v2, Lcom/cloud/tmc/ad/bridge/AdBridge$showInterstitial$1$1;

    .line 40
    .line 41
    invoke-direct {v2, p0, p4}, Lcom/cloud/tmc/ad/bridge/AdBridge$showInterstitial$1$1;-><init>(Lcom/cloud/tmc/ad/bridge/AdBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, p1, p3, p2, v2}, Lcom/cloud/tmc/ad/IAdManagerProxy;->showInterstitial(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Lcom/cloud/tmc/ad/interface/AdShowEventListener;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    if-eqz p4, :cond_2

    .line 51
    .line 52
    iget-object p2, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p3, "showInterstitial -> adsDTO\u89e3\u6790\u5931\u8d25"

    .line 55
    .line 56
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 60
    .line 61
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p3, "adsDTO\u89e3\u6790\u5931\u8d25"

    .line 65
    .line 66
    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p3, "trigger_id"

    .line 70
    .line 71
    invoke-virtual {p2, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p4, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/ad/bridge/AdBridge;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    const-string p2, "showInterstitial -> trigger_id\u6216adsDTO\u4e0d\u80fd\u4e3a\u7a7a"

    .line 84
    .line 85
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    if-eqz p4, :cond_2

    .line 89
    .line 90
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 91
    .line 92
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string p2, "trigger_id\u6216adsDTO\u4e0d\u80fd\u4e3a\u7a7a"

    .line 96
    .line 97
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p4, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :goto_0
    if-eqz p4, :cond_2

    .line 108
    .line 109
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 110
    .line 111
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance p3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v1, "E:"

    .line 120
    .line 121
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p1, "!!"

    .line 128
    .line 129
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p2, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {p4, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 143
    .line 144
    .line 145
    :cond_2
    :goto_1
    return-void
.end method
