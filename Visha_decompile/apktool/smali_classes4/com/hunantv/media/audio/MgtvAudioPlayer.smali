.class public Lcom/hunantv/media/audio/MgtvAudioPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private mAutoPlay:Z

.field mBufferTimeoutMs:I

.field mConnectTimeOut:I

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mCurrentUri:Landroid/net/Uri;

.field private mEnableLiveMode:Z

.field private mErrorMsg:Ljava/lang/String;

.field mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

.field mLeftVolume:F

.field private mLiveStartIndex:I

.field private mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

.field private mOnCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

.field private mOnErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

.field private mOnInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

.field private mOnPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

.field private mOnPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

.field private mOnStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

.field mReciveDataTimeOut:I

.field mReportParams:Lcom/hunantv/media/report/ReportParams;

.field mRightVolume:F

.field private mSeekWhenPrepared:I

.field private mTargetState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mTargetState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    iput-boolean v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mAutoPlay:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mErrorMsg:Ljava/lang/String;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mLeftVolume:F

    iput v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mRightVolume:F

    new-instance v1, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v1}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    iput-boolean v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mEnableLiveMode:Z

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mLiveStartIndex:I

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/app/Activity;

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hunantv/media/audio/MgtvAudioPlayer;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mEnableLiveMode:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/audio/MgtvAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onPreparedImpl()V

    return-void
.end method

.method public static synthetic access$100(Lcom/hunantv/media/audio/MgtvAudioPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onErrorImpl(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/hunantv/media/audio/MgtvAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onCompletionImpl(II)V

    return-void
.end method

.method public static synthetic access$300(Lcom/hunantv/media/audio/MgtvAudioPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onInfoImpl(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/hunantv/media/audio/MgtvAudioPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onBufferingTimeoutImpl(II)Z

    move-result p0

    return p0
.end method

.method private configPlayer()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mConnectTimeOut:I

    iget v2, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mReciveDataTimeOut:I

    iget v3, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mBufferTimeoutMs:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setTimeout(III)V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    iget v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mLeftVolume:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mRightVolume:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1, v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setVolume(FF)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setFlowDataStatistic(Lcom/hunantv/media/player/statistic/FlowDataStatistic;)V

    iget-boolean v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mEnableLiveMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_LIVE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setEnablePlayerMode(Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_NORMAL:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mLiveStartIndex:I

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setLiveStartIndex(I)V

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configPlayer mEnableLiveMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mEnableLiveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mLiveStartIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mLiveStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->setLogTag(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isInPlaybackState()Z
    .locals 1

    iget p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onBufferingTimeoutImpl(II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onErrorImpl(II)Z

    const/4 p0, 0x1

    return p0
.end method

.method private onCompletionImpl(II)V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mTargetState:I

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mOnCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;->onCompletion(II)V

    :cond_0
    return-void
.end method

.method private onErrorImpl(II)Z
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorImpl what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mTargetState:I

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mOnErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private onInfoImpl(II)Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mOnInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;->onInfo(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private onPreparedImpl()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I

    iget-boolean v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mAutoPlay:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mTargetState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->play()V

    :cond_1
    iget v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mSeekWhenPrepared:I

    if-lez v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->seekTo(I)V

    :cond_2
    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mOnPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;->onPrepared()V

    :cond_3
    return-void
.end method

.method private openPlayer()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->reset()V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BUNDLE_KEY_LOG_TAG_KEY"

    invoke-virtual {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTagKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_KEY_BOOLEAN_AUDIO_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v3, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;-><init>(ILandroid/content/Context;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const v0, 0xc02c0fb

    invoke-virtual {v1, v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setConfig(II)V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v1, Lcom/hunantv/media/audio/MgtvAudioPlayer$1;

    invoke-direct {v1, p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer$1;-><init>(Lcom/hunantv/media/audio/MgtvAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnPreparedListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;)V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v1, Lcom/hunantv/media/audio/MgtvAudioPlayer$2;

    invoke-direct {v1, p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer$2;-><init>(Lcom/hunantv/media/audio/MgtvAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnErrorListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;)V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v1, Lcom/hunantv/media/audio/MgtvAudioPlayer$3;

    invoke-direct {v1, p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer$3;-><init>(Lcom/hunantv/media/audio/MgtvAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnCompletionListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;)V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v1, Lcom/hunantv/media/audio/MgtvAudioPlayer$4;

    invoke-direct {v1, p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer$4;-><init>(Lcom/hunantv/media/audio/MgtvAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnInfoListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;)V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v1, Lcom/hunantv/media/audio/MgtvAudioPlayer$5;

    invoke-direct {v1, p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer$5;-><init>(Lcom/hunantv/media/audio/MgtvAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnBufferingTimeoutListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;)V

    return-void
.end method

.method private resetData()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mSeekWhenPrepared:I

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->isBindPlayerLifecycle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-virtual {p0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->reset()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBufferingPercentage()I
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getBufferingPercent()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentStatus()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I

    return p0
.end method

.method public getDLSpeedB()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurDLSpeed()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDLSpeedFormat()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurDLSpeed()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB/S"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getFlowDataStatistic()Lcom/hunantv/media/player/statistic/FlowDataStatistic;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    return-object p0
.end method

.method public getLogTagKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlaybackSpeed()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getPlayerExtraInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayerExtraInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "MGTV_1.25.3"

    return-object p0
.end method

.method public getTotalBuffering()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getBufferedPercentage()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isCompletion()Z
    .locals 1

    iget p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrepared()Z
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->isInPlaybackState()Z

    move-result p0

    return p0
.end method

.method public isRendered()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pause"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->pause()V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mOnPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;->onPause()V

    :cond_0
    iput v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I

    :cond_1
    iput v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mTargetState:I

    return-void
.end method

.method public play()V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->start()V

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "play"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mOnStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;->onStart()V

    :cond_0
    iput v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I

    :cond_1
    iput v1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mTargetState:I

    return-void
.end method

.method public prepare(Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "Unable to open content: "

    const-string v1, "details:"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    iput-boolean p2, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mAutoPlay:Z

    const p2, 0x6acfca

    const v2, 0x6acfc3

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->openPlayer()V

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->configPlayer()V

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepare path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v5, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setAudioStreamType(I)V

    iget-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->prepareAsync()V

    iput v3, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/hunantv/media/player/loader/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto/16 :goto_3

    :catch_3
    move-exception p1

    goto/16 :goto_4

    :catch_4
    move-exception p1

    goto/16 :goto_5

    :catch_5
    move-exception p1

    goto/16 :goto_6

    :catch_6
    move-exception p1

    goto/16 :goto_7

    :catch_7
    move-exception p1

    goto/16 :goto_8

    :goto_0
    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throwable: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onErrorImpl(II)Z

    return-void

    :goto_1
    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsatisfiedLinkError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onErrorImpl(II)Z

    return-void

    :goto_2
    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LibLoaderError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",extra:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/player/loader/c;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hunantv/media/player/loader/c;->a()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onErrorImpl(II)Z

    return-void

    :goto_3
    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mErrorMsg:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onErrorImpl(II)Z

    return-void

    :goto_4
    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NullPointerException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mErrorMsg:Ljava/lang/String;

    const p1, 0x6acfc5

    invoke-direct {p0, p1, v4}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onErrorImpl(II)Z

    return-void

    :goto_5
    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mErrorMsg:Ljava/lang/String;

    const p1, 0x6acfc4

    invoke-direct {p0, p1, v4}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onErrorImpl(II)Z

    return-void

    :goto_6
    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mErrorMsg:Ljava/lang/String;

    const p1, 0x6acfc2

    invoke-direct {p0, p1, v4}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onErrorImpl(II)Z

    return-void

    :goto_7
    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mErrorMsg:Ljava/lang/String;

    const p1, 0x6acfc1

    invoke-direct {p0, p1, v4}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onErrorImpl(II)Z

    return-void

    :goto_8
    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mErrorMsg:Ljava/lang/String;

    const p1, 0x6ad3ac

    invoke-direct {p0, p1, v4}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->onErrorImpl(II)Z

    return-void
.end method

.method public release()V
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mTargetState:I

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->resetData()V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->reset()Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mCurrentState:I

    iput v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mTargetState:I

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo msec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->seekTo(I)V

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mSeekWhenPrepared:I

    return-void
.end method

.method public setBufferTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mBufferTimeoutMs:I

    return-void
.end method

.method public setFlowDataStatistic(Lcom/hunantv/media/player/statistic/FlowDataStatistic;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    return-void
.end method

.method public setLiveMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mEnableLiveMode:Z

    return-void
.end method

.method public setLiveReopen()V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mEnableLiveMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setLiveReopen()V

    :cond_0
    return-void
.end method

.method public setLiveStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mLiveStartIndex:I

    return-void
.end method

.method public setOnCompletionListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mOnCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mOnErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mOnInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    return-void
.end method

.method public setOnPauseListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mOnPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mOnPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    return-void
.end method

.method public setOnStartListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mOnStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlaybackSpeed(F)V

    :cond_0
    return-void
.end method

.method public setReportParams(Lcom/hunantv/media/report/ReportParams;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    :cond_0
    return-void
.end method

.method public setTimeout(II)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mConnectTimeOut:I

    iput p2, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mReciveDataTimeOut:I

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mLeftVolume:F

    iput p2, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mRightVolume:F

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_0
    return-void
.end method
