.class public final Lcom/cloud/tmc/integration/bridge/AudioRecordBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0007\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\n\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u000b\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u000c\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\r\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u000e\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0008\u0010\u000f\u001a\u00020\u0004H\u0016J\u0008\u0010\u0010\u001a\u00020\u0004H\u0016J\u001e\u0010\u0011\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0012\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0013\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0014\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0015\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001e\u0010\u0018\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007JZ\u0010\u0019\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u001d2\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u001d2\u0008\u0008\u0001\u0010 \u001a\u00020!2\u0008\u0008\u0001\u0010\"\u001a\u00020!2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010#\u001a\u00020\u00042\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006%"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/bridge/AudioRecordBridge;",
        "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
        "()V",
        "getAvailableAudioSources",
        "",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "offError",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "offPause",
        "offResume",
        "offStart",
        "offStop",
        "onError",
        "onFinalized",
        "onInitialized",
        "onPause",
        "onResume",
        "onStart",
        "onStop",
        "pause",
        "permit",
        "Lcom/cloud/tmc/kernel/security/Permission;",
        "resume",
        "start",
        "duration",
        "",
        "sampleRate",
        "",
        "numberOfChannels",
        "encodeBitRate",
        "format",
        "",
        "audioSource",
        "stop",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$Companion;

.field private static final ERROR_MSG_A10001:Ljava/lang/String; = "Parameter error: A10001"

.field private static final ERROR_MSG_A10008:Ljava/lang/String; = "Audio is recording, don\'t start record again : A10008"

.field private static final ERROR_MSG_A10009:Ljava/lang/String; = "Audio is paused, pause record fail : A10009"

.field private static final ERROR_MSG_A10011:Ljava/lang/String; = "Audio failed with permission denied : A10011"

.field private static final ERROR_MSG_A10012:Ljava/lang/String; = "Audio is stop, don\'t stop record again : A10012"

.field private static final TAG:Ljava/lang/String; = "AudioRecordBridge"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge;->Companion:Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$Companion;

    .line 8
    .line 9
    return-void
.end method

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
.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getAvailableAudioSources(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 4
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/gson/JsonArray;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getAvailableAudioSources()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    const-string v2, "audioSources"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final offError(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
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
        value = "audioRecordOffError"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "errMsg"

    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnErrors()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final offPause(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
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
        value = "audioRecordOffPause"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "errMsg"

    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnPauses()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final offResume(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
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
        value = "audioRecordOffResume"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "errMsg"

    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnResumes()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final offStart(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
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
        value = "audioRecordOffStart"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "errMsg"

    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnStarts()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final offStop(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
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
        value = "audioRecordOffStop"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "errMsg"

    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnStops()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final onError(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "audioRecordOnError"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "errMsg"

    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnErrors()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnErrors()Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v1, "app.appId"

    .line 61
    .line 62
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onFinalized()V
    .locals 2

    .line 1
    const-string v0, "AudioRecordBridge"

    .line 2
    .line 3
    const-string v1, "onFinalized: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onInitialized()V
    .locals 2

    .line 1
    const-string v0, "AudioRecordBridge"

    .line 2
    .line 3
    const-string v1, "onInitialized: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onPause(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "audioRecordOnPause"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "errMsg"

    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnPauses()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnPauses()Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v1, "app.appId"

    .line 61
    .line 62
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final onResume(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "audioRecordOnResume"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "errMsg"

    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnResumes()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnResumes()Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v1, "app.appId"

    .line 61
    .line 62
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final onStart(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "audioRecordOnStart"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "errMsg"

    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnStarts()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnStarts()Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v1, "app.appId"

    .line 61
    .line 62
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final onStop(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "audioRecordOnStop"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "errMsg"

    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnStops()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnStops()Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v1, "app.appId"

    .line 61
    .line 62
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final pause(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
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
        value = "audioRecordPause"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errMsg"

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v1, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getRecorderClientCache()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isStopped()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isPaused()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 63
    .line 64
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v2, "Audio is paused, pause record fail : A10009"

    .line 68
    .line 69
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 73
    .line 74
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p2, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    const-string v0, "MICROPHONE"

    .line 82
    .line 83
    filled-new-array {v0}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v2, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$pause$6;

    .line 92
    .line 93
    invoke-direct {v2, v1, p2, p1}, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$pause$6;-><init>(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    :goto_0
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 105
    .line 106
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v2, "Audio is stop, don\'t stop record again : A10012"

    .line 110
    .line 111
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 115
    .line 116
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p2, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final resume(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
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
        value = "audioRecordResume"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errMsg"

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v1, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getRecorderClientCache()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isStopped()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isRecording()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 63
    .line 64
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v2, "Audio is recording, don\'t start record again : A10008"

    .line 68
    .line 69
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 73
    .line 74
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p2, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    const-string v0, "MICROPHONE"

    .line 82
    .line 83
    filled-new-array {v0}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v2, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$resume$6;

    .line 92
    .line 93
    invoke-direct {v2, v1, p2, p1}, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$resume$6;-><init>(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    :goto_0
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 105
    .line 106
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v2, "Audio is stop, don\'t stop record again : A10012"

    .line 110
    .line 111
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 115
    .line 116
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p2, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final start(Lcom/cloud/tmc/integration/structure/App;JIIILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 15
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            longDefault = 0xea60L
            value = {
                "duration"
            }
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            intDefault = 0x1f40
            value = {
                "sampleRate"
            }
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            intDefault = 0x2
            value = {
                "numberOfChannels"
            }
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            intDefault = 0xbb80
            value = {
                "encodeBitRate"
            }
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            stringDefault = "aac"
            value = {
                "format"
            }
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            stringDefault = "auto"
            value = {
                "audioSource"
            }
        .end annotation
    .end param
    .param p9    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "audioRecordStart"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v8, p1

    .line 2
    .line 3
    move-wide/from16 v0, p2

    .line 4
    .line 5
    move/from16 v5, p4

    .line 6
    .line 7
    move/from16 v4, p5

    .line 8
    .line 9
    move/from16 v6, p6

    .line 10
    .line 11
    move-object/from16 v2, p7

    .line 12
    .line 13
    move-object/from16 v3, p8

    .line 14
    .line 15
    move-object/from16 v7, p9

    .line 16
    .line 17
    const-string v9, "format"

    .line 18
    .line 19
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v9, "audioSource"

    .line 23
    .line 24
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v9, "callback"

    .line 28
    .line 29
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v9, "errMsg"

    .line 33
    .line 34
    if-nez v8, :cond_0

    .line 35
    .line 36
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "Parameter error: A10001"

    .line 42
    .line 43
    invoke-virtual {v0, v9, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v7, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    sget-object v10, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 51
    .line 52
    invoke-virtual {v10, v5}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->checkSampleRate(I)Z

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    if-nez v11, :cond_1

    .line 57
    .line 58
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v10}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getAvailableSampleRate()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "Invalid sampleRate \""

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, "\", sampleRate should be one of "

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ": A10002"

    .line 93
    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v9, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10, v8, v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v7, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_1
    invoke-virtual {v10, v4}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->checkChannels(I)Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-nez v11, :cond_2

    .line 116
    .line 117
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 118
    .line 119
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v10}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getAvailableChannels()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v3, "Invalid numberOfChannels \""

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v3, "\", numberOfChannels should be one of "

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, ": A10003"

    .line 152
    .line 153
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v9, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v10, v8, v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v7, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_2
    invoke-virtual {v10, v5, v6}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->checkEncodeBitRate(II)Z

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    if-nez v11, :cond_3

    .line 175
    .line 176
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 177
    .line 178
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v10, v5}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getEncodeBitRateMin(I)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-virtual {v10, v5}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getEncodeBitRateMax(I)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v4, "Invalid encodeBitRate \""

    .line 195
    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v4, "\", encodeBitRate should be greater than "

    .line 203
    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v1, " and less than "

    .line 211
    .line 212
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, " : A10004"

    .line 219
    .line 220
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v0, v9, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10, v8, v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v7, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_3
    invoke-virtual {v10, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->checkRecordingFormat(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    if-nez v11, :cond_4

    .line 242
    .line 243
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 244
    .line 245
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v10}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getAvailableRecordingFormat()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v4, "Invalid format \""

    .line 262
    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v2, "\", format should be one of "

    .line 270
    .line 271
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v1, " : A10005"

    .line 278
    .line 279
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v0, v9, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v10, v8, v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 290
    .line 291
    .line 292
    invoke-interface {v7, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_4
    invoke-virtual {v10, v3}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->checkAudioSources(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    if-nez v11, :cond_5

    .line 301
    .line 302
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 303
    .line 304
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v10}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getAvailableAudioSources()Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    const-string v4, "Invalid audioSource \""

    .line 321
    .line 322
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v3, "\", audioSource should be one of "

    .line 329
    .line 330
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v1, " : A10006"

    .line 337
    .line 338
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v0, v9, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v10, v8, v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 349
    .line 350
    .line 351
    invoke-interface {v7, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :cond_5
    const-wide/16 v11, 0x0

    .line 356
    .line 357
    cmp-long v11, v0, v11

    .line 358
    .line 359
    if-ltz v11, :cond_a

    .line 360
    .line 361
    const-wide/32 v11, 0x927c0

    .line 362
    .line 363
    .line 364
    cmp-long v11, v0, v11

    .line 365
    .line 366
    if-lez v11, :cond_6

    .line 367
    .line 368
    goto/16 :goto_0

    .line 369
    .line 370
    :cond_6
    const-class v11, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 371
    .line 372
    const/4 v12, 0x1

    .line 373
    invoke-interface {v8, v11, v12}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v11

    .line 377
    check-cast v11, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 378
    .line 379
    invoke-virtual {v11}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getRecorderClientCache()Ljava/util/HashMap;

    .line 380
    .line 381
    .line 382
    move-result-object v11

    .line 383
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v12

    .line 387
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v12

    .line 391
    check-cast v12, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 392
    .line 393
    if-nez v12, :cond_7

    .line 394
    .line 395
    invoke-virtual {v10, v8, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->createAudioClient(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 396
    .line 397
    .line 398
    move-result-object v12

    .line 399
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v13

    .line 403
    const-string v14, "app.appId"

    .line 404
    .line 405
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    :cond_7
    const-string v11, "recorderClientCache[app.\u2026 = this\n                }"

    .line 412
    .line 413
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v12, v0, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->setMaxDuration(J)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v12}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isStopped()Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-nez v0, :cond_8

    .line 424
    .line 425
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 426
    .line 427
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 428
    .line 429
    .line 430
    const-string v1, "Audio is recording, don\'t start record again : A10008"

    .line 431
    .line 432
    invoke-virtual {v0, v9, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v10, v8, v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 436
    .line 437
    .line 438
    invoke-interface {v7, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :cond_8
    invoke-virtual {v10, v8, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->provideRecordFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    if-nez v2, :cond_9

    .line 447
    .line 448
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 449
    .line 450
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 451
    .line 452
    .line 453
    const-string v1, "create record file fail : A10010"

    .line 454
    .line 455
    invoke-virtual {v0, v9, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v10, v8, v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 459
    .line 460
    .line 461
    invoke-interface {v7, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 462
    .line 463
    .line 464
    return-void

    .line 465
    :cond_9
    const-string v0, "MICROPHONE"

    .line 466
    .line 467
    filled-new-array {v0}, [Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 472
    .line 473
    .line 474
    move-result-object v9

    .line 475
    new-instance v10, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;

    .line 476
    .line 477
    move-object v0, v10

    .line 478
    move-object v1, v12

    .line 479
    move-object/from16 v3, p8

    .line 480
    .line 481
    move/from16 v4, p5

    .line 482
    .line 483
    move/from16 v5, p4

    .line 484
    .line 485
    move/from16 v6, p6

    .line 486
    .line 487
    move-object/from16 v7, p9

    .line 488
    .line 489
    move-object/from16 v8, p1

    .line 490
    .line 491
    invoke-direct/range {v0 .. v8}, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$start$16;-><init>(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Ljava/io/File;Ljava/lang/String;IIILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v9, v10}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    .line 499
    .line 500
    .line 501
    return-void

    .line 502
    :cond_a
    :goto_0
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 503
    .line 504
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 505
    .line 506
    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .line 511
    .line 512
    const-string v4, "Invalid duration "

    .line 513
    .line 514
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v0, ", duration should be between 0 and 600000 : A10007"

    .line 521
    .line 522
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-virtual {v2, v9, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v10, v8, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 533
    .line 534
    .line 535
    invoke-interface {v7, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 536
    .line 537
    .line 538
    return-void
.end method

.method public final stop(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
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
        value = "audioRecordStop"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errMsg"

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "Parameter error: A10001"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-class v1, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getRecorderClientCache()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isStopped()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "MICROPHONE"

    .line 57
    .line 58
    filled-new-array {v0}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v2, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$stop$4;

    .line 67
    .line 68
    invoke-direct {v2, v1, p2, p1}, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$stop$4;-><init>(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    :goto_0
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 80
    .line 81
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "Audio is stop, don\'t stop record again : A10012"

    .line 85
    .line 86
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 90
    .line 91
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p2, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
