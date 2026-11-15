.class public Lcom/cloud/tmc/integration/audio/PlayerInstance;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;,
        Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;
    }
.end annotation


# static fields
.field private static final KEY_AUDIO_PLAYER_ID:Ljava/lang/String; = "audioPlayerID"

.field private static final TAG:Ljava/lang/String; = "PlayerInstance"


# instance fields
.field private volatile autoPlay:Z

.field private bufferedProgress:I

.field public isAppPause:Z

.field private isCompleted:Z

.field private loop:Z

.field public final mApp:Lcom/cloud/tmc/integration/structure/App;

.field private mPlayCallback:Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private paused:Z

.field public pausedBack:Z

.field private playerId:Ljava/lang/String;

.field private shouldIgnoreWhenPlayAgain:Z

.field private src:Ljava/lang/String;

.field private startTime:I

.field private volume:F


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isCompleted:Z

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->volume:F

    .line 14
    .line 15
    iput v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->bufferedProgress:I

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isAppPause:Z

    .line 18
    .line 19
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mPlayCallback:Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->shouldIgnoreWhenPlayAgain:Z

    .line 27
    .line 28
    new-instance p1, Landroid/media/MediaPlayer;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 34
    .line 35
    const/4 p2, 0x3

    .line 36
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mPlayCallback:Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, p1, v2, v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;->onDispatchEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    const-string v0, "PlayerInstance"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private getLocalPathIfNecessary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFileFromAllProcessors(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, ""

    .line 17
    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    const-string v0, "https://"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    const-string v0, "http://"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-object v1

    .line 62
    :cond_4
    :goto_0
    return-object p1

    .line 63
    :cond_5
    :goto_1
    return-object v1

    .line 64
    :cond_6
    :goto_2
    return-object p1
.end method

.method public static notifyInvalidParam(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    const-string v2, "success"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "errMsg"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private notifySuccess(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    const-string v2, "success"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "audioPlayerID"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public addMonitors()V
    .locals 2

    .line 1
    const-string v0, "PlayerInstance"

    .line 2
    .line 3
    const-string v1, "addMonitors"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public getAutoPlay()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getAutoPlay:### id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "PlayerInstance"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->autoPlay:Z

    .line 26
    .line 27
    return v0
.end method

.method public getBufferedProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->bufferedProgress:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getLoop()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getLoop:### id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "PlayerInstance"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->loop:Z

    .line 26
    .line 27
    return v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getSrc:### id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "PlayerInstance"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->src:Ljava/lang/String;

    .line 26
    .line 27
    return-object v0
.end method

.method public getStartTime()F
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getStartTime:### id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "PlayerInstance"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->startTime:I

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 29
    .line 30
    div-float/2addr v0, v1

    .line 31
    return v0
.end method

.method public getVolume()F
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getVolume:### id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "PlayerInstance"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->volume:F

    .line 26
    .line 27
    return v0
.end method

.method public isPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onBufferingUpdate i="

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "PlayerInstance"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput p2, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->bufferedProgress:I

    .line 24
    .line 25
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isCompleted:Z

    .line 3
    .line 4
    sget-object p1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_ENDED:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    const-string p1, "UNKNOWN_ERROR"

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p1, "SERVER_DIED"

    .line 8
    .line 9
    :goto_0
    const/16 v0, -0x3f2

    .line 10
    .line 11
    if-eq p3, v0, :cond_4

    .line 12
    .line 13
    const/16 v0, -0x3ef

    .line 14
    .line 15
    if-eq p3, v0, :cond_3

    .line 16
    .line 17
    const/16 v0, -0x3ec

    .line 18
    .line 19
    if-eq p3, v0, :cond_2

    .line 20
    .line 21
    const/16 v0, -0x6e

    .line 22
    .line 23
    if-eq p3, v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "error code , what is : "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, "   extra is :"

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string p2, "TIMED_OUT_ERROR"

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-string p2, "IO_ERROR"

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const-string p2, "ERROR_MALFORMED"

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    const-string p2, "ERROR_UNSUPPORTED"

    .line 61
    .line 62
    :goto_1
    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mPlayCallback:Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;

    .line 63
    .line 64
    sget-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_ERROR:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, "\t"

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object p2, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {p3, v0, p1, p2}, Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;->onDispatchEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_CAN_PLAY:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_PLAY:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isAppPause:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    .line 25
    .line 26
    sget-object p1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_PAUSE:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_SEEKED:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pause()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isPlaying()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 12
    .line 13
    .line 14
    iput-boolean v2, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isCompleted:Z

    .line 17
    .line 18
    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_PAUSE:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 19
    .line 20
    invoke-direct {p0, v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    move v0, v2

    .line 27
    goto :goto_2

    .line 28
    :goto_1
    const-string v2, "PlayerInstance"

    .line 29
    .line 30
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_2
    return v0
.end method

.method public play()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isPlaying()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->shouldIgnoreWhenPlayAgain:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 16
    .line 17
    .line 18
    iput-boolean v2, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    goto :goto_3

    .line 23
    :cond_0
    :goto_0
    return v2

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 25
    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    iget-boolean v3, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    .line 29
    .line 30
    if-nez v3, :cond_3

    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isCompleted:Z

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isCompleted:Z

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_WAITING:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 43
    .line 44
    invoke-direct {p0, v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_PLAY:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 52
    .line 53
    invoke-direct {p0, v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    :cond_4
    move v0, v2

    .line 59
    goto :goto_4

    .line 60
    :goto_3
    const-string v2, "PlayerInstance"

    .line 61
    .line 62
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_4
    return v0
.end method

.method public releaseMediaPlayer()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public removeMonitors()V
    .locals 2

    .line 1
    const-string v0, "PlayerInstance"

    .line 2
    .line 3
    const-string v1, "removeMonitors"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public seek(F)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 7
    .line 8
    mul-float/2addr p1, v2

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    sget-object p1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_SEEKING:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    return v0
.end method

.method public setAutoPlay(Z)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setAutoPlay:### id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "### autoPlay="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "PlayerInstance"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->autoPlay:Z

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->src:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isPlaying()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->play()Z

    .line 52
    .line 53
    .line 54
    :cond_0
    const/4 p1, 0x1

    .line 55
    return p1
.end method

.method public setLoop(Z)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setLoop:### id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", loop="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "PlayerInstance"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->loop:Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1
.end method

.method public setSrc(Ljava/lang/String;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setSrc:### id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "PlayerInstance"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->src:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "must not set mutli src ### src="

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->getLocalPathIfNecessary(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v4, "setSrc Error:### id="

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v1, v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v3, "setSrc: param is invaild ### src="

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->src:Ljava/lang/String;

    .line 111
    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->autoPlay:Z

    .line 118
    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v3, "OnAutoPlay true,call play when setSrc = "

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 144
    .line 145
    .line 146
    sget-object p1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_WAITING:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 147
    .line 148
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catch_0
    move-exception p1

    .line 153
    goto :goto_2

    .line 154
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 155
    return p1

    .line 156
    :goto_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object p1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_ERROR:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 164
    .line 165
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V

    .line 166
    .line 167
    .line 168
    return v2
.end method

.method public setStartTime(I)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setStartTime:### id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", startTime="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "PlayerInstance"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    mul-int/lit16 p1, p1, 0x3e8

    .line 34
    .line 35
    iput p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->startTime:I

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1
.end method

.method public setVolume(F)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setVolume:### id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->playerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", volume="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "PlayerInstance"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    cmpg-float v0, p1, v0

    .line 35
    .line 36
    if-ltz v0, :cond_1

    .line 37
    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    .line 40
    cmpl-float v0, p1, v0

    .line 41
    .line 42
    if-lez v0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 46
    .line 47
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 48
    .line 49
    .line 50
    iput p1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->volume:F

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :cond_1
    :goto_0
    const-string p1, "setVolume invalid param."

    .line 55
    .line 56
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    return p1
.end method

.method public stop()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 7
    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->paused:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->pausedBack:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/audio/PlayerInstance;->isCompleted:Z

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_STOP:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/cloud/tmc/integration/audio/PlayerInstance;->broadcastEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return v0
.end method
