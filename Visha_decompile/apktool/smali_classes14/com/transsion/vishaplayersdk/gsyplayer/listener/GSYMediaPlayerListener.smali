.class public interface abstract Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onAdComplete(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
.end method

.method public abstract onAdCountdown(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;I)V
.end method

.method public abstract onAdPrepared(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
.end method

.method public abstract onAdStartPlaying(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
.end method

.method public abstract onAuthorizeResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onAutoCompletion()V
.end method

.method public abstract onBackFullscreen()V
.end method

.method public abstract onBufferingUpdate(I)V
.end method

.method public abstract onCompletion()V
.end method

.method public abstract onError(II)V
.end method

.method public abstract onInfo(II)V
.end method

.method public abstract onPlayerInitResult(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;)V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onSeekComplete()V
.end method

.method public abstract onSetSubtitlesFailed(Ljava/lang/String;)V
.end method

.method public abstract onSetSubtitlesSuccess(Ljava/lang/String;)V
.end method

.method public abstract onSubtitlesAvailable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVideoFirstFrameShow()V
.end method

.method public abstract onVideoPause()V
.end method

.method public abstract onVideoResume()V
.end method

.method public abstract onVideoResume(Z)V
.end method

.method public abstract onVideoSizeChanged()V
.end method

.method public abstract onVideoStart()V
.end method
