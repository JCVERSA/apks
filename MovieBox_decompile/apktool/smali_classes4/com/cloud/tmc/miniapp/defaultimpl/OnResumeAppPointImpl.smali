.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OnResumeAppPointImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/point/OnResumeAppPoint;


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


# virtual methods
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

.method public onResume(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 2

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    :try_start_0
    const-string v0, "restoreAppAudio"

    .line 9
    .line 10
    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v1, v0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/bridge/ForegroundAudioBridge;->restoreAppAudio(Lcom/cloud/tmc/integration/structure/App;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    const-string v0, "restoreAppAudioEffect"

    .line 27
    .line 28
    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    instance-of v0, p2, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    check-cast p2, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/integration/bridge/AudioEffectBridge;->restoreAppAudioEffect(Lcom/cloud/tmc/integration/structure/App;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_1
    const-string p2, "OnResumeAppPoint"

    .line 43
    .line 44
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_2
    return-void
.end method
