.class public Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;
.super Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Landroidx/media3/exoplayer/analytics/AnalyticsListener;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static ON_POSITION_DISCOUNTINUITY:I = 0xa8e

.field private static final TAG:Ljava/lang/String; = "IjkExo2MediaPlayer"


# instance fields
.field protected audioSessionId:I

.field protected isBuffering:Z

.field protected isCache:Z

.field protected isLastReportedPlayWhenReady:Z

.field protected isLooping:Z

.field protected isPreparing:Z

.field protected isPreview:Z

.field protected lastReportedPlaybackState:I

.field protected mAppContext:Landroid/content/Context;

.field protected mCacheDir:Ljava/io/File;

.field protected mDataSource:Ljava/lang/String;

.field protected mEventLogger:Lcom/transsion/vishaplayersdk/exo2player/EventLogger;

.field protected mExoHelper:Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

.field protected mLoadControl:Landroidx/media3/exoplayer/LoadControl;

.field protected mMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

.field private mOverrideExtension:Ljava/lang/String;

.field protected mRendererFactory:Landroidx/media3/exoplayer/DefaultRenderersFactory;

.field protected mSpeedPlaybackParameters:Landroidx/media3/common/PlaybackParameters;

.field protected mSurface:Landroid/view/Surface;

.field protected mTrackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

.field protected mVideoHeight:I

.field protected mVideoWidth:I

.field private mbFirstStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mHeaders:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isPreparing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isBuffering:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isLooping:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isPreview:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isCache:Z

    iput v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->audioSessionId:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mAppContext:Landroid/content/Context;

    iput v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->lastReportedPlaybackState:I

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;->newInstance(Landroid/content/Context;Ljava/util/Map;)Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mExoHelper:Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;

    return-void
.end method

.method private getVideoRendererIndex()I
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getRendererCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/ExoPlayer;->getRendererType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getAudioSessionId()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->audioSessionId:I

    return p0
.end method

.method public getBufferedPercentage()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getBufferedPercentage()I

    move-result p0

    return p0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mCacheDir:Ljava/io/File;

    return-object p0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mDataSource:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExoHelper()Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mExoHelper:Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;

    return-object p0
.end method

.method public getLoadControl()Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mLoadControl:Landroidx/media3/exoplayer/LoadControl;

    return-object p0
.end method

.method public getMediaSource()Landroidx/media3/exoplayer/source/MediaSource;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    return-object p0
.end method

.method public getOverrideExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mOverrideExtension:Ljava/lang/String;

    return-object p0
.end method

.method public getRendererFactory()Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mRendererFactory:Landroidx/media3/exoplayer/DefaultRenderersFactory;

    return-object p0
.end method

.method public getSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/PlaybackParameters;->speed:F

    return p0
.end method

.method public getTrackInfo()[Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/ITrackInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTrackSelector()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mTrackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    return-object p0
.end method

.method public getVideoFormat()Landroidx/media3/common/Format;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoFormat()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mVideoHeight:I

    return p0
.end method

.method public getVideoRenderer()Landroidx/media3/exoplayer/Renderer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->getVideoRendererIndex()I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/ExoPlayer;->getRenderer(I)Landroidx/media3/exoplayer/Renderer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoSarDen()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mVideoWidth:I

    return p0
.end method

.method public isCache()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isCache:Z

    return p0
.end method

.method public isLooping()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isLooping:Z

    return p0
.end method

.method public isPlayable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPlaying()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result p0

    return p0
.end method

.method public isPreview()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isPreview:Z

    return p0
.end method

.method public onAudioDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->audioSessionId:I

    return-void
.end method

.method public onAudioUnderrun(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    return-void
.end method

.method public onBandwidthEstimate(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDrmKeysLoaded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    return-void
.end method

.method public onDrmKeysRemoved(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    return-void
.end method

.method public onDrmKeysRestored(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    return-void
.end method

.method public onDrmSessionManagerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onDroppedVideoFrames(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    return-void
.end method

.method public onIsLoadingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onMetadata(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;)V
    .locals 0

    .line 2
    return-void
.end method

.method public onPlayWhenReadyChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged: playWhenReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playbackState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IjkExo2MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isLastReportedPlayWhenReady:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->lastReportedPlaybackState:I

    if-eq v0, p2, :cond_7

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->getBufferedPercentage()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 6
    :goto_0
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isBuffering:Z

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eqz v2, :cond_3

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x2be

    .line 7
    invoke-virtual {p0, v2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnInfo(II)Z

    .line 8
    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isBuffering:Z

    .line 9
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isPreparing:Z

    if-eqz v2, :cond_4

    if-ne p2, v4, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnPrepared()V

    .line 11
    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isPreparing:Z

    :cond_4
    const/4 v1, 0x2

    if-eq p2, v1, :cond_6

    if-eq p2, v3, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnCompletion()V

    goto :goto_2

    :cond_6
    const/16 v1, 0x2bd

    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnInfo(II)Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isBuffering:Z

    .line 15
    :cond_7
    :goto_2
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isLastReportedPlayWhenReady:Z

    .line 16
    iput p2, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->lastReportedPlaybackState:I

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 2
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isLastReportedPlayWhenReady:Z

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 1
    .param p1    # Landroidx/media3/common/PlaybackException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnError(II)Z

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    sget p1, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->ON_POSITION_DISCOUNTINUITY:I

    invoke-virtual {p0, p1, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnInfo(II)Z

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnSeekComplete()V

    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRepeatModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 2
    return-void
.end method

.method public onShuffleModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .locals 2

    iget p1, p2, Landroidx/media3/common/VideoSize;->width:I

    int-to-float v0, p1

    iget v1, p2, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mVideoWidth:I

    iget v0, p2, Landroidx/media3/common/VideoSize;->height:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mVideoHeight:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnVideoSizeChanged(IIII)V

    iget p1, p2, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    if-lez p1, :cond_0

    const/16 p2, 0x2711

    invoke-virtual {p0, p2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnInfo(II)Z

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->prepareAsyncInternal()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t prepare a prepared player"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public prepareAsyncInternal()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer$1;-><init>(Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mEventLogger:Lcom/transsion/vishaplayersdk/exo2player/EventLogger;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mExoHelper:Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;->release()V

    :cond_1
    iput-object v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mSurface:Landroid/view/Surface;

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mDataSource:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mVideoWidth:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mVideoHeight:I

    return-void
.end method

.method public seekTo(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player;->seekTo(J)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isCache:Z

    return-void
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mCacheDir:Ljava/io/File;

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7

    .line 4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mDataSource:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mExoHelper:Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isPreview:Z

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isCache:Z

    iget-boolean v4, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isLooping:Z

    iget-object v5, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mCacheDir:Ljava/io/File;

    iget-object v6, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mOverrideExtension:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/vishaplayersdk/exo2player/ExoSourceManager;->getMediaSource(Ljava/lang/String;ZZZLjava/io/File;Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "no support"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    return-void
.end method

.method public setLoadControl(Landroidx/media3/exoplayer/LoadControl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mLoadControl:Landroidx/media3/exoplayer/LoadControl;

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isLooping:Z

    return-void
.end method

.method public setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    return-void
.end method

.method public setOverrideExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mOverrideExtension:Ljava/lang/String;

    return-void
.end method

.method public setPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->isPreview:Z

    return-void
.end method

.method public setRendererFactory(Landroidx/media3/exoplayer/DefaultRenderersFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mRendererFactory:Landroidx/media3/exoplayer/DefaultRenderersFactory;

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    return-void
.end method

.method public setSeekParameter(Landroidx/media3/exoplayer/SeekParameters;)V
    .locals 0
    .param p1    # Landroidx/media3/exoplayer/SeekParameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V

    return-void
.end method

.method public setSpeed(FF)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param

    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mSpeedPlaybackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mSurface:Landroid/view/Surface;

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->setVideoSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public setTrackSelector(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mTrackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p0, :cond_0

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mbFirstStart:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyStartPlay()V

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mbFirstStart:Z

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    return-void
.end method

.method public stopPlayback()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/exo2player/Exo2MediaPlayer;->mInternalPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p0}, Landroidx/media3/common/Player;->stop()V

    return-void
.end method
