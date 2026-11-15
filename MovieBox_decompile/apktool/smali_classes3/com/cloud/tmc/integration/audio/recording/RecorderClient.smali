.class public final Lcom/cloud/tmc/integration/audio/recording/RecorderClient;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/audio/recording/RecorderClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0017\u0018\u0000 32\u00020\u0001:\u00013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u0019\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0017J\u001a\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000fH\u0002J\u0008\u0010\u001f\u001a\u00020\u0013H\u0002J\u0008\u0010 \u001a\u00020\u0013H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u0015H\u0002J\u0012\u0010#\u001a\u00020\u00132\u0008\u0010$\u001a\u0004\u0018\u00010\u0015H\u0002J\u0006\u0010%\u001a\u00020\u0013J\u0006\u0010&\u001a\u00020\u0013J\u0010\u0010\'\u001a\u00020\u00132\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010(\u001a\u00020\u0013J\u000e\u0010)\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010*\u001a\u00020\u00132\u0008\u0010+\u001a\u0004\u0018\u00010\u0008J.\u0010,\u001a\u00020\u00132\u0006\u0010-\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\u001d2\u0006\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u0006\u00102\u001a\u00020\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/audio/recording/RecorderClient;",
        "",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "(Lcom/cloud/tmc/integration/structure/App;)V",
        "getApp",
        "()Lcom/cloud/tmc/integration/structure/App;",
        "audioRecorder",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;",
        "callbacks",
        "",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;",
        "maxDuration",
        "",
        "recordFilePath",
        "",
        "recorderCallback",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;",
        "addRecordingCallback",
        "",
        "getRecordFile",
        "Ljava/io/File;",
        "isGranted",
        "",
        "isPaused",
        "isRecording",
        "isStopped",
        "onRecordingError",
        "errorCode",
        "",
        "errorMsg",
        "onRecordingPaused",
        "onRecordingResumed",
        "onRecordingStarted",
        "output",
        "onRecordingStopped",
        "file",
        "pauseRecording",
        "release",
        "removeRecordingCallback",
        "resumeRecording",
        "setMaxDuration",
        "setRecorder",
        "recorder",
        "startRecording",
        "filePath",
        "audioSource",
        "channelCount",
        "sampleRate",
        "bitrate",
        "stopRecording",
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
.field public static final Companion:Lcom/cloud/tmc/integration/audio/recording/RecorderClient$Companion;

.field private static final TAG:Ljava/lang/String; = "RecorderClient"


# instance fields
.field private final app:Lcom/cloud/tmc/integration/structure/App;

.field private audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;",
            ">;"
        }
    .end annotation
.end field

.field private maxDuration:J

.field private recordFilePath:Ljava/lang/String;

.field private recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->Companion:Lcom/cloud/tmc/integration/audio/recording/RecorderClient$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 2

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 17
    .line 18
    const-wide/32 v0, 0x927c0

    .line 19
    .line 20
    .line 21
    iput-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->maxDuration:J

    .line 22
    .line 23
    new-instance p1, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;-><init>(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic access$getMaxDuration$p(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->maxDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$onRecordingError(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->onRecordingError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onRecordingPaused(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->onRecordingPaused()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onRecordingResumed(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->onRecordingResumed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onRecordingStarted(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->onRecordingStarted(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onRecordingStopped(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->onRecordingStopped(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final isGranted()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_1
    sget-object v1, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 20
    .line 21
    const-string v2, "android.permission.RECORD_AUDIO"

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const-string v1, "granted"

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const-string v1, "denied"

    .line 33
    .line 34
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "Recording audio permission is "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "RecorderClient"

    .line 52
    .line 53
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v0
.end method

.method private final onRecordingError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;

    .line 30
    .line 31
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;->onError(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-gez v1, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    return-void
.end method

.method private final onRecordingPaused()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;->onRecordingPaused()V

    .line 32
    .line 33
    .line 34
    if-gez v1, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    return-void
.end method

.method private final onRecordingResumed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;->onRecordingResumed()V

    .line 32
    .line 33
    .line 34
    if-gez v1, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    return-void
.end method

.method private final onRecordingStarted(Ljava/io/File;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;->onRecordingStarted(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    if-gez v1, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    return-void
.end method

.method private final onRecordingStopped(Ljava/io/File;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;->onRecordingStopped(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    if-gez v1, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final addRecordingCallback(Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final getApp()Lcom/cloud/tmc/integration/structure/App;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRecordFile()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->recordFilePath:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return-object v1
.end method

.method public final isPaused()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->isPaused()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1
.end method

.method public final isRecording()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->isRecording()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1
.end method

.method public final isStopped()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->isStopped()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1
.end method

.method public final declared-synchronized pauseRecording()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isGranted()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "RecorderClient"

    .line 9
    .line 10
    const-string v1, "pauseRecording: permission denied"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isRecording()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->pauseRecording()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    throw v0
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->stopRecording()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final removeRecordingCallback(Lcom/cloud/tmc/integration/audio/recording/RecorderClientCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->callbacks:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final declared-synchronized resumeRecording()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isGranted()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "RecorderClient"

    .line 9
    .line 10
    const-string v1, "resumeRecording: permission denied"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isPaused()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->resumeRecording()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    throw v0
.end method

.method public final setMaxDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->maxDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setRecorder(Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->setRecorderCallback(Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final declared-synchronized startRecording(Ljava/lang/String;IIII)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "filePath"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isGranted()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p1, "RecorderClient"

    .line 14
    .line 15
    const-string p2, "startRecording: permission denied"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isStopped()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->recordFilePath:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    move-object v2, p1

    .line 37
    move v3, p2

    .line 38
    move v4, p3

    .line 39
    move v5, p4

    .line 40
    move v6, p5

    .line 41
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->startRecording(Ljava/lang/String;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :cond_1
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw p1
.end method

.method public final declared-synchronized stopRecording()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isGranted()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "RecorderClient"

    .line 9
    .line 10
    const-string v1, "stopRecording: permission denied"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isStopped()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->audioRecorder:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;->stopRecording()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    throw v0
.end method
