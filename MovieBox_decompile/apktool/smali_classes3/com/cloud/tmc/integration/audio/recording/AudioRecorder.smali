.class public final Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;
.implements Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/audio/recording/AudioRecorder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 $2\u00020\u00012\u00020\u0002:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0014H\u0016J\u0008\u0010\u0018\u001a\u00020\u0014H\u0016J\u0012\u0010\u0019\u001a\u00020\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000eH\u0016J0\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u001fH\u0016J\u0008\u0010#\u001a\u00020\u0014H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0006R\u0014\u0010\u0008\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$Recorder;",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;",
        "()V",
        "isPaused",
        "",
        "()Z",
        "isRecording",
        "isStopped",
        "recordFile",
        "Ljava/io/File;",
        "recorder",
        "Landroid/media/MediaRecorder;",
        "recorderCallback",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;",
        "recorderState",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "timer",
        "Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;",
        "onTick",
        "",
        "elapsedTime",
        "",
        "pauseRecording",
        "resumeRecording",
        "setRecorderCallback",
        "callback",
        "startRecording",
        "outputFile",
        "",
        "audioSource",
        "",
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


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/audio/recording/AudioRecorder$Companion;

.field private static final ERROR_MSG_1:Ljava/lang/String; = "recorder init failed"

.field private static final STATE_PAUSED:I = 0x2

.field private static final STATE_RECORDING:I = 0x1

.field private static final STATE_STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioRecorder"


# instance fields
.field private recordFile:Ljava/io/File;

.field private recorder:Landroid/media/MediaRecorder;

.field private recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

.field private final recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->Companion:Lcom/cloud/tmc/integration/audio/recording/AudioRecorder$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->setTimerListener(Lcom/cloud/tmc/integration/audio/recording/RecorderTimer$TimerListener;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public isPaused()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public isRecording()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method public isStopped()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public onTick(J)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-interface {v0, p1, p2, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onRecordProgress(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    const-string p2, "AudioRecorder"

    .line 24
    .line 25
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    return-void
.end method

.method public pauseRecording()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->isRecording()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "pauseRecording isRecording: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "AudioRecorder"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x18

    .line 30
    .line 31
    if-lt v0, v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->isRecording()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-static {v0}, Lcom/cloud/tmc/integration/audio/recording/b;->a(Landroid/media/MediaRecorder;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->pause()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onPauseRecord()V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    .line 63
    const/4 v2, 0x2

    .line 64
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :goto_1
    const-string v2, "pauseRecording() failed"

    .line 69
    .line 70
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    const/4 v1, 0x3

    .line 78
    const-string v2, "recorder init failed"

    .line 79
    .line 80
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onError(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_2
    return-void
.end method

.method public resumeRecording()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->isPaused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "resumeRecording isPaused: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "AudioRecorder"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x18

    .line 30
    .line 31
    if-lt v0, v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->isPaused()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-static {v0}, Lcom/cloud/tmc/integration/audio/recording/a;->a(Landroid/media/MediaRecorder;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->resume()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onResumeRecord()V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :goto_1
    const-string v2, "unpauseRecording() failed"

    .line 69
    .line 70
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    const/4 v1, 0x3

    .line 78
    const-string v2, "recorder init failed"

    .line 79
    .line 80
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onError(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_2
    return-void
.end method

.method public setRecorderCallback(Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    .line 2
    .line 3
    return-void
.end method

.method public startRecording(Ljava/lang/String;IIII)V
    .locals 3

    .line 1
    const-string v0, "outputFile"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "startRecording file: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "AudioRecorder"

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    if-eqz p1, :cond_9

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v2, 0x1

    .line 45
    if-ne p1, v2, :cond_9

    .line 46
    .line 47
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    .line 48
    .line 49
    if-eqz p1, :cond_9

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ne p1, v2, :cond_9

    .line 56
    .line 57
    new-instance p1, Landroid/media/MediaRecorder;

    .line 58
    .line 59
    invoke-direct {p1}, Landroid/media/MediaRecorder;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 68
    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 75
    .line 76
    const/4 p2, 0x3

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    invoke-virtual {p1, p3}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1, p4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    invoke-virtual {p1, p5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 101
    .line 102
    .line 103
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 104
    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    const/4 p3, -0x1

    .line 108
    invoke-virtual {p1, p3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 109
    .line 110
    .line 111
    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 112
    .line 113
    if-eqz p1, :cond_6

    .line 114
    .line 115
    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    .line 116
    .line 117
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-virtual {p1, p3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 128
    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    goto :goto_1

    .line 137
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 138
    .line 139
    if-eqz p1, :cond_8

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 142
    .line 143
    .line 144
    :cond_8
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->start()V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 150
    .line 151
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    .line 155
    .line 156
    if-eqz p1, :cond_a

    .line 157
    .line 158
    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    .line 159
    .line 160
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p1, p3}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onStartRecord(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :goto_1
    const-string p3, "prepare() failed"

    .line 168
    .line 169
    invoke-static {v0, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    .line 173
    .line 174
    if-eqz p1, :cond_a

    .line 175
    .line 176
    const-string p3, "recorder init failed"

    .line 177
    .line 178
    invoke-interface {p1, p2, p3}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onError(ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_9
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    .line 183
    .line 184
    if-eqz p1, :cond_a

    .line 185
    .line 186
    const-string p2, "invalid output file"

    .line 187
    .line 188
    invoke-interface {p1, v1, p2}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onError(ILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_a
    :goto_2
    return-void
.end method

.method public stopRecording()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->isStopped()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "stopRecording isStopped: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "AudioRecorder"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->isStopped()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    const-string v2, "stopRecording() problems"

    .line 52
    .line 53
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderCallback:Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->getElapsedTime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/audio/recording/RecorderContract$RecorderCallback;->onStopRecord(Ljava/io/File;J)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->timer:Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderTimer;->reset()V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recordFile:Ljava/io/File;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorderState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/cloud/tmc/integration/audio/recording/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    const-string v0, "Recording has already stopped or hasn\'t started"

    .line 89
    .line 90
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_3
    return-void
.end method
