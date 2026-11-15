.class public final Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/audio/recording/RecorderClient;-><init>(Lcom/cloud/tmc/integration/structure/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u000bH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "com/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;",
        "onError",
        "",
        "errorCode",
        "",
        "errorMsg",
        "",
        "onPauseRecord",
        "onRecordProgress",
        "mills",
        "",
        "amp",
        "onResumeRecord",
        "onStartRecord",
        "output",
        "Ljava/io/File;",
        "onStopRecord",
        "durationMills",
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


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Recorder onError: errorCode: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " errorMsg: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "RecorderClient"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 32
    .line 33
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$onRecordingError(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "errMsg"

    .line 50
    .line 51
    invoke-virtual {v1, v2, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onPauseRecord()V
    .locals 4

    .line 1
    const-string v0, "RecorderClient"

    .line 2
    .line 3
    const-string v1, "Recorder onPauseRecord"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$onRecordingPaused(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-static {v0, v1, v2, v3, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnPauseListener$default(Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onRecordProgress(JI)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Recording onRecordProgress: mills: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " amp: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    const-string v0, "RecorderClient"

    .line 27
    .line 28
    invoke-static {v0, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 32
    .line 33
    invoke-static {p3}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$getMaxDuration$p(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    cmp-long p3, p1, v1

    .line 38
    .line 39
    if-ltz p3, :cond_0

    .line 40
    .line 41
    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 42
    .line 43
    invoke-static {p3}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$getMaxDuration$p(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "Recording mills >= maxDuration: mills: "

    .line 53
    .line 54
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, " maxDuration: "

    .line 61
    .line 62
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->stopRecording()V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method public onResumeRecord()V
    .locals 4

    .line 1
    const-string v0, "RecorderClient"

    .line 2
    .line 3
    const-string v1, "Recorder onResumeRecord"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$onRecordingResumed(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-static {v0, v1, v2, v3, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnResumeListener$default(Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onStartRecord(Ljava/io/File;)V
    .locals 3

    .line 1
    const-string v0, "output"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "RecorderClient"

    .line 7
    .line 8
    const-string v1, "Recorder onStartRecord"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$onRecordingStarted(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Ljava/io/File;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-static {p1, v0, v1, v2, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnStartListener$default(Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onStopRecord(Ljava/io/File;J)V
    .locals 11

    .line 1
    const-string v0, "RecorderClient"

    .line 2
    .line 3
    const-string v1, "Recorder onStopRecord"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->access$onRecordingStopped(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/cloud/tmc/integration/audio/recording/RecorderClient$recorderCallback$1;->this$0:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const-string v3, "app.appId"

    .line 40
    .line 41
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/16 v9, 0x8

    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    move-object v7, p1

    .line 50
    invoke-static/range {v5 .. v10}, Lcom/cloud/tmc/integration/utils/FileUtil;->notifyNewFileGenerateVUrl$default(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v3, v4

    .line 56
    :goto_0
    const-string v5, "tempFilePath"

    .line 57
    .line 58
    invoke-virtual {v2, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const-string p3, "duration"

    .line 66
    .line 67
    invoke-virtual {v2, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 68
    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getTotalSize(Ljava/io/File;)J

    .line 73
    .line 74
    .line 75
    move-result-wide p1

    .line 76
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    :cond_1
    const-string p1, "fileSize"

    .line 81
    .line 82
    invoke-virtual {v2, p1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnStopListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
