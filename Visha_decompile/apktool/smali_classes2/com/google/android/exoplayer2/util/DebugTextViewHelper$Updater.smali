.class final Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/t$d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/DebugTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Updater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/util/DebugTextViewHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/util/DebugTextViewHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/DebugTextViewHelper;Lcom/google/android/exoplayer2/util/DebugTextViewHelper$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/DebugTextViewHelper$Updater;-><init>(Lcom/google/android/exoplayer2/util/DebugTextViewHelper;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/a;)V

    return-void
.end method

.method public bridge synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onAudioSessionIdChanged(I)V

    return-void
.end method

.method public bridge synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/t$b;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/t$b;)V

    return-void
.end method

.method public bridge synthetic onCues(Ljava/util/List;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onCues(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCues(Lqm1;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onCues(Lqm1;)V

    return-void
.end method

.method public bridge synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/h;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/h;)V

    return-void
.end method

.method public bridge synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method public bridge synthetic onEvents(Lcom/google/android/exoplayer2/t;Lcom/google/android/exoplayer2/t$c;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onEvents(Lcom/google/android/exoplayer2/t;Lcom/google/android/exoplayer2/t$c;)V

    return-void
.end method

.method public bridge synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onIsLoadingChanged(Z)V

    return-void
.end method

.method public bridge synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onIsPlayingChanged(Z)V

    return-void
.end method

.method public bridge synthetic onLoadingChanged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onLoadingChanged(Z)V

    return-void
.end method

.method public bridge synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onMaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method public bridge synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/n;I)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onMediaItemTransition(Lcom/google/android/exoplayer2/n;I)V

    return-void
.end method

.method public bridge synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/o;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/o;)V

    return-void
.end method

.method public bridge synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/s;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/s;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method public bridge synthetic onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public bridge synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public bridge synthetic onPlayerStateChanged(ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public bridge synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/o;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/o;)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onPositionDiscontinuity(I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;I)V
    .locals 0

    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public bridge synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/exoplayer2/t$d;->onRenderedFirstFrame()V

    return-void
.end method

.method public bridge synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onRepeatModeChanged(I)V

    return-void
.end method

.method public bridge synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onSeekBackIncrementChanged(J)V

    return-void
.end method

.method public bridge synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onSeekForwardIncrementChanged(J)V

    return-void
.end method

.method public bridge synthetic onSeekProcessed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Lcom/google/android/exoplayer2/t$d;->onSeekProcessed()V

    return-void
.end method

.method public bridge synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method public bridge synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public bridge synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method public bridge synthetic onTimelineChanged(Lcom/google/android/exoplayer2/a0;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/t$d;->onTimelineChanged(Lcom/google/android/exoplayer2/a0;I)V

    return-void
.end method

.method public bridge synthetic onTrackSelectionParametersChanged(Lpva;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onTrackSelectionParametersChanged(Lpva;)V

    return-void
.end method

.method public bridge synthetic onTracksChanged(Lcom/google/android/exoplayer2/b0;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onTracksChanged(Lcom/google/android/exoplayer2/b0;)V

    return-void
.end method

.method public bridge synthetic onVideoSizeChanged(Lf7c;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onVideoSizeChanged(Lf7c;)V

    return-void
.end method

.method public bridge synthetic onVolumeChanged(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/t$d;->onVolumeChanged(F)V

    return-void
.end method

.method public run()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
