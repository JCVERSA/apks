.class public final Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u0006J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018J\u0018\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018J\u0018\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018J\u0016\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018J\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001eJ\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001eJ\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001eJ\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001eJ\u000e\u0010\"\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010#\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u0016\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0006J\u0010\u0010(\u001a\u00020)2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u0018\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u0006\u00a8\u0006,"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;",
        "",
        "()V",
        "checkAudioSources",
        "",
        "key",
        "",
        "checkChannels",
        "channels",
        "",
        "checkEncodeBitRate",
        "sampleRate",
        "encodeBitRate",
        "checkRecordingFormat",
        "recordingFormat",
        "checkSampleRate",
        "convertKeyToAudioSource",
        "createAudioClient",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderClient;",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "dispatchOnErrorListener",
        "",
        "jsonObject",
        "Lcom/google/gson/JsonObject;",
        "dispatchOnPauseListener",
        "dispatchOnResumeListener",
        "dispatchOnStartListener",
        "dispatchOnStopListener",
        "getAvailableAudioSources",
        "",
        "getAvailableChannels",
        "getAvailableRecordingFormat",
        "getAvailableSampleRate",
        "getEncodeBitRateMax",
        "getEncodeBitRateMin",
        "isGranted",
        "context",
        "Landroid/content/Context;",
        "permission",
        "provideAudioRecorder",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;",
        "provideRecordFile",
        "Ljava/io/File;",
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


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic dispatchOnPauseListener$default(Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnPauseListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic dispatchOnResumeListener$default(Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnResumeListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic dispatchOnStartListener$default(Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnStartListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final provideAudioRecorder(Ljava/lang/String;)Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const-string v0, "aac"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "m4a"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :goto_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;

    .line 20
    .line 21
    invoke-direct {p1}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "Unknown recording format"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method


# virtual methods
.method public final checkAudioSources(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getAvailableAudioSources()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final checkChannels(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getAvailableChannels()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final checkEncodeBitRate(II)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getEncodeBitRateMin(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getEncodeBitRateMax(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-gt p2, p1, :cond_0

    .line 11
    .line 12
    if-gt v0, p2, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
.end method

.method public final checkRecordingFormat(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "recordingFormat"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getAvailableRecordingFormat()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final checkSampleRate(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->getAvailableSampleRate()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final convertKeyToAudioSource(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "camcorder"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x5

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    :goto_0
    return p1
.end method

.method public final createAudioClient(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Lcom/cloud/tmc/integration/audio/recording/RecorderClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "recordingFormat"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->provideAudioRecorder(Ljava/lang/String;)Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;-><init>(Lcom/cloud/tmc/integration/structure/App;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->setRecorder(Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jsonObject"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnErrors()Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final dispatchOnPauseListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jsonObject"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnPauses()Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final dispatchOnResumeListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jsonObject"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnResumes()Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final dispatchOnStartListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jsonObject"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnStarts()Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final dispatchOnStopListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jsonObject"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getOnStops()Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final getAvailableAudioSources()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "mic"

    .line 2
    .line 3
    const-string v1, "camcorder"

    .line 4
    .line 5
    const-string v2, "auto"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final getAvailableChannels()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-array v2, v2, [Ljava/lang/Integer;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v1, v2, v4

    .line 15
    .line 16
    aput-object v3, v2, v0

    .line 17
    .line 18
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final getAvailableRecordingFormat()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "aac"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final getAvailableSampleRate()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x1f40

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x2b11

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v2, 0x2ee0

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/16 v3, 0x3e80

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/16 v4, 0x5622

    .line 26
    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/16 v5, 0x5dc0

    .line 32
    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/16 v6, 0x7d00

    .line 38
    .line 39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const v7, 0xac44

    .line 44
    .line 45
    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const v8, 0xbb80

    .line 51
    .line 52
    .line 53
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    const/16 v9, 0x9

    .line 58
    .line 59
    new-array v9, v9, [Ljava/lang/Integer;

    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    aput-object v0, v9, v10

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    aput-object v1, v9, v0

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    aput-object v2, v9, v0

    .line 69
    .line 70
    const/4 v0, 0x3

    .line 71
    aput-object v3, v9, v0

    .line 72
    .line 73
    const/4 v0, 0x4

    .line 74
    aput-object v4, v9, v0

    .line 75
    .line 76
    const/4 v0, 0x5

    .line 77
    aput-object v5, v9, v0

    .line 78
    .line 79
    const/4 v0, 0x6

    .line 80
    aput-object v6, v9, v0

    .line 81
    .line 82
    const/4 v0, 0x7

    .line 83
    aput-object v7, v9, v0

    .line 84
    .line 85
    const/16 v0, 0x8

    .line 86
    .line 87
    aput-object v8, v9, v0

    .line 88
    .line 89
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method

.method public final getEncodeBitRateMax(I)I
    .locals 3

    .line 1
    const/16 v0, 0x1f40

    .line 2
    .line 3
    const v1, 0xbb80

    .line 4
    .line 5
    .line 6
    if-eq p1, v0, :cond_4

    .line 7
    .line 8
    const/16 v0, 0x2b11

    .line 9
    .line 10
    if-eq p1, v0, :cond_4

    .line 11
    .line 12
    const/16 v0, 0x2ee0

    .line 13
    .line 14
    if-eq p1, v0, :cond_3

    .line 15
    .line 16
    const/16 v0, 0x3e80

    .line 17
    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    const/16 v0, 0x5622

    .line 21
    .line 22
    const v2, 0x1f400

    .line 23
    .line 24
    .line 25
    if-eq p1, v0, :cond_0

    .line 26
    .line 27
    const/16 v0, 0x5dc0

    .line 28
    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    const/16 v0, 0x7d00

    .line 32
    .line 33
    if-eq p1, v0, :cond_1

    .line 34
    .line 35
    const v0, 0xac44

    .line 36
    .line 37
    .line 38
    const v2, 0x4e200

    .line 39
    .line 40
    .line 41
    if-eq p1, v0, :cond_0

    .line 42
    .line 43
    if-eq p1, v1, :cond_0

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v1, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const v1, 0x2ee00

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const v1, 0x17700

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const v1, 0xfa00

    .line 58
    .line 59
    .line 60
    :cond_4
    :goto_0
    return v1
.end method

.method public final getEncodeBitRateMin(I)I
    .locals 3

    .line 1
    const/16 v0, 0x1f40

    .line 2
    .line 3
    const/16 v1, 0x3e80

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0x2b11

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0x2ee0

    .line 12
    .line 13
    const/16 v2, 0x5dc0

    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x5622

    .line 20
    .line 21
    const/16 v1, 0x7d00

    .line 22
    .line 23
    if-eq p1, v0, :cond_2

    .line 24
    .line 25
    if-eq p1, v2, :cond_2

    .line 26
    .line 27
    const v0, 0xbb80

    .line 28
    .line 29
    .line 30
    if-eq p1, v1, :cond_1

    .line 31
    .line 32
    const v1, 0xac44

    .line 33
    .line 34
    .line 35
    const v2, 0xfa00

    .line 36
    .line 37
    .line 38
    if-eq p1, v1, :cond_0

    .line 39
    .line 40
    if-eq p1, v0, :cond_0

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v1, v0

    .line 47
    :cond_2
    :goto_0
    return v1
.end method

.method public final isGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "permission"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final provideRecordFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "recordingFormat"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "aac"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "m4a"

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    :goto_0
    if-eqz p2, :cond_2

    .line 28
    .line 29
    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateNameMills()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->addExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "recorder"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createFileByDeleteOldFile(Ljava/io/File;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string p1, "app.appId"

    .line 74
    .line 75
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/16 v4, 0x8

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    const/4 v1, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    move-object v2, p2

    .line 84
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/utils/FileUtil;->notifyNewFileGenerateVUrl$default(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    return-object p2

    .line 88
    :cond_1
    const/4 p1, 0x0

    .line 89
    return-object p1

    .line 90
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p2, "Unknown recording format"

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method
