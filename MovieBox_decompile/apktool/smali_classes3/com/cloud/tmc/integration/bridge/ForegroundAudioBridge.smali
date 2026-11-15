.class public final Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0007\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007JD\u0010\u0010\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0016J\u0014\u0010\u0014\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J8\u0010\u0015\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J8\u0010\u0018\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\u0014\u0010\u0019\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0014\u0010\u001a\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\u0007JB\u0010\u001b\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007JD\u0010\u001e\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010 2\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J8\u0010!\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J8\u0010\"\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J8\u0010#\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;",
        "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
        "()V",
        "mAppPlayerMap",
        "",
        "",
        "Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;",
        "destroyForegroundAudio",
        "",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "page",
        "Lcom/cloud/tmc/integration/structure/Page;",
        "audioPlayerID",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "getForegroundAudioOption",
        "optionName",
        "onFinalized",
        "onInitialized",
        "pauseAppAudio",
        "pauseForegroundAudio",
        "permit",
        "Lcom/cloud/tmc/kernel/security/Permission;",
        "playForegroundAudio",
        "releaseAppAudio",
        "restoreAppAudio",
        "seekForegroundAudio",
        "position",
        "",
        "setForegroundAudioOption",
        "params",
        "Lcom/google/gson/JsonObject;",
        "startMonitorForegroundAudio",
        "stopForegroundAudio",
        "stopMonitorForegroundAudio",
        "com.cloud.tmc.integration"
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
.field private final mAppPlayerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->pauseAppAudio$lambda$8(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->releaseAppAudio$lambda$4(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->restoreAppAudio$lambda$9(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final pauseAppAudio$lambda$8(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 1
    const-string v0, "$client"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->pauseAppAudio()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private static final releaseAppAudio$lambda$4(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)V
    .locals 1

    .line 1
    const-string v0, "$client"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->releaseAppAudio()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final restoreAppAudio$lambda$9(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)V
    .locals 1

    .line 1
    const-string v0, "$client"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->restoreAppAudio()V

    .line 7
    .line 8
    .line 9
    return-void
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

.method public final destroyForegroundAudio(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "audioPlayerID"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p3, :cond_4

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    if-eqz p4, :cond_2

    .line 42
    .line 43
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void

    .line 47
    :cond_3
    invoke-virtual {p1, p3, p4}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->destroy(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 52
    .line 53
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 54
    .line 55
    .line 56
    :cond_5
    return-void

    .line 57
    :cond_6
    :goto_1
    if-eqz p4, :cond_7

    .line 58
    .line 59
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 60
    .line 61
    .line 62
    :cond_7
    return-void
.end method

.method public final getForegroundAudioOption(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "audioPlayerID"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "optionName"
            }
        .end annotation
    .end param
    .param p5    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p3, :cond_4

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    if-eqz p5, :cond_2

    .line 42
    .line 43
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void

    .line 47
    :cond_3
    invoke-virtual {p1, p3, p4, p5}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->getAudioOption(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    :goto_0
    if-eqz p5, :cond_5

    .line 52
    .line 53
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 54
    .line 55
    .line 56
    :cond_5
    return-void

    .line 57
    :cond_6
    :goto_1
    if-eqz p5, :cond_7

    .line 58
    .line 59
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 60
    .line 61
    .line 62
    :cond_7
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

.method public final pauseAppAudio(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 5
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 21
    .line 22
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 26
    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    new-instance v3, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 41
    .line 42
    invoke-direct {v3, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;-><init>(Lcom/cloud/tmc/integration/structure/App;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 46
    .line 47
    const-string v4, "appId"

    .line 48
    .line 49
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    monitor-exit v2

    .line 61
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->setAppPause(Z)V

    .line 69
    .line 70
    .line 71
    :cond_2
    sget-object p1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 72
    .line 73
    new-instance v0, Lcom/cloud/tmc/integration/bridge/c;

    .line 74
    .line 75
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/bridge/c;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit v2

    .line 83
    throw p1

    .line 84
    :cond_3
    :goto_2
    return-void
.end method

.method public final pauseForegroundAudio(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "audioPlayerID"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p3, :cond_4

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    if-eqz p4, :cond_2

    .line 42
    .line 43
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void

    .line 47
    :cond_3
    invoke-virtual {p1, p3, p4}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->pause(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 52
    .line 53
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 54
    .line 55
    .line 56
    :cond_5
    return-void

    .line 57
    :cond_6
    :goto_1
    if-eqz p4, :cond_7

    .line 58
    .line 59
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 60
    .line 61
    .line 62
    :cond_7
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final playForegroundAudio(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "audioPlayerID"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p3, :cond_4

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    if-eqz p4, :cond_2

    .line 42
    .line 43
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void

    .line 47
    :cond_3
    invoke-virtual {p1, p3, p4}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->play(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 52
    .line 53
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 54
    .line 55
    .line 56
    :cond_5
    return-void

    .line 57
    :cond_6
    :goto_1
    if-eqz p4, :cond_7

    .line 58
    .line 59
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 60
    .line 61
    .line 62
    :cond_7
    return-void
.end method

.method public final releaseAppAudio(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 32
    .line 33
    new-instance v1, Lcom/cloud/tmc/integration/bridge/d;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/bridge/d;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public final restoreAppAudio(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 32
    .line 33
    new-instance v1, Lcom/cloud/tmc/integration/bridge/e;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/bridge/e;-><init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public final seekForegroundAudio(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;FLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "audioPlayerID"
            }
        .end annotation
    .end param
    .param p4    # F
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "position"
            }
        .end annotation
    .end param
    .param p5    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p3, :cond_4

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    if-eqz p5, :cond_2

    .line 42
    .line 43
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void

    .line 47
    :cond_3
    invoke-virtual {p1, p3, p4, p5}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->seek(Ljava/lang/String;FLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    :goto_0
    if-eqz p5, :cond_5

    .line 52
    .line 53
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 54
    .line 55
    .line 56
    :cond_5
    return-void

    .line 57
    :cond_6
    :goto_1
    if-eqz p5, :cond_7

    .line 58
    .line 59
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 60
    .line 61
    .line 62
    :cond_7
    return-void
.end method

.method public final setForegroundAudioOption(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "audioPlayerID"
            }
        .end annotation
    .end param
    .param p4    # Lcom/google/gson/JsonObject;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "option"
            }
        .end annotation
    .end param
    .param p5    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    if-eqz p3, :cond_4

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v2, v1

    .line 41
    check-cast v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    new-instance v1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 46
    .line 47
    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;-><init>(Lcom/cloud/tmc/integration/structure/App;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 51
    .line 52
    const-string v2, "appId"

    .line 53
    .line 54
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    monitor-exit v0

    .line 64
    check-cast v1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {v1, p3, p4, p5}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->setAudioOption(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void

    .line 72
    :goto_1
    monitor-exit v0

    .line 73
    throw p1

    .line 74
    :cond_4
    :goto_2
    if-eqz p5, :cond_5

    .line 75
    .line 76
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 77
    .line 78
    .line 79
    :cond_5
    return-void

    .line 80
    :cond_6
    :goto_3
    if-eqz p5, :cond_7

    .line 81
    .line 82
    invoke-interface {p5}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 83
    .line 84
    .line 85
    :cond_7
    return-void
.end method

.method public final startMonitorForegroundAudio(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "audioPlayerID"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p3, :cond_4

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    if-eqz p4, :cond_2

    .line 42
    .line 43
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void

    .line 47
    :cond_3
    invoke-virtual {p1, p3, p4}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->addMonitor(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 52
    .line 53
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 54
    .line 55
    .line 56
    :cond_5
    return-void

    .line 57
    :cond_6
    :goto_1
    if-eqz p4, :cond_7

    .line 58
    .line 59
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 60
    .line 61
    .line 62
    :cond_7
    return-void
.end method

.method public final stopForegroundAudio(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "audioPlayerID"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p3, :cond_4

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    if-eqz p4, :cond_2

    .line 42
    .line 43
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void

    .line 47
    :cond_3
    invoke-virtual {p1, p3, p4}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->stop(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 52
    .line 53
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 54
    .line 55
    .line 56
    :cond_5
    return-void

    .line 57
    :cond_6
    :goto_1
    if-eqz p4, :cond_7

    .line 58
    .line 59
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 60
    .line 61
    .line 62
    :cond_7
    return-void
.end method

.method public final stopMonitorForegroundAudio(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "audioPlayerID"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p3, :cond_4

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->mAppPlayerMap:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    if-eqz p4, :cond_2

    .line 42
    .line 43
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void

    .line 47
    :cond_3
    invoke-virtual {p1, p3, p4}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->removeMonitor(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 52
    .line 53
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 54
    .line 55
    .line 56
    :cond_5
    return-void

    .line 57
    :cond_6
    :goto_1
    if-eqz p4, :cond_7

    .line 58
    .line 59
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 60
    .line 61
    .line 62
    :cond_7
    return-void
.end method
