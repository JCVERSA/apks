.class public final Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/audio/AudioEffectClient;->downloadAndLoad(Landroid/content/Context;Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J6\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\r\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J$\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1",
        "Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;",
        "onCancel",
        "",
        "url",
        "",
        "callbackId",
        "onFailed",
        "errorCode",
        "errorMsg",
        "e",
        "Ljava/io/IOException;",
        "onFinish",
        "onPrepare",
        "onProgress",
        "progress",
        "",
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
.field final synthetic $callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $downloadPath:Ljava/lang/String;

.field final synthetic $pc:Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

.field final synthetic $src:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/audio/AudioEffectClient;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Landroid/content/Context;Lcom/cloud/tmc/integration/audio/AudioEffectClient;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->this$0:Lcom/cloud/tmc/integration/audio/AudioEffectClient;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$src:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$downloadPath:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$pc:Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, " cancel request."

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "AudioEffectClient"

    .line 19
    .line 20
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "errorCode"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "e"

    .line 7
    .line 8
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "AudioEffectClient"

    .line 12
    .line 13
    invoke-static {p1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-class p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$context:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->this$0:Lcom/cloud/tmc/integration/audio/AudioEffectClient;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->getMAppId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$src:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$downloadPath:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$pc:Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->this$0:Lcom/cloud/tmc/integration/audio/AudioEffectClient;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->access$getMSoundPool$p(Lcom/cloud/tmc/integration/audio/AudioEffectClient;)Landroid/media/SoundPool;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$downloadPath:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$pc:Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getPriority()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p2, v0, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p2, 0x0

    .line 52
    :goto_0
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->setResId(Ljava/lang/Integer;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/kernel/proxy/network/a;->a(Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
