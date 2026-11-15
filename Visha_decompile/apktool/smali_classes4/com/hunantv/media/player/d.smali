.class public interface abstract Lcom/hunantv/media/player/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/d$d;,
        Lcom/hunantv/media/player/d$f;,
        Lcom/hunantv/media/player/d$i;,
        Lcom/hunantv/media/player/d$l;,
        Lcom/hunantv/media/player/d$q;,
        Lcom/hunantv/media/player/d$j;,
        Lcom/hunantv/media/player/d$o;,
        Lcom/hunantv/media/player/d$p;,
        Lcom/hunantv/media/player/d$n;,
        Lcom/hunantv/media/player/d$r;,
        Lcom/hunantv/media/player/d$a;,
        Lcom/hunantv/media/player/d$h;,
        Lcom/hunantv/media/player/d$g;,
        Lcom/hunantv/media/player/d$e;,
        Lcom/hunantv/media/player/d$s;,
        Lcom/hunantv/media/player/d$m;,
        Lcom/hunantv/media/player/d$b;,
        Lcom/hunantv/media/player/d$c;,
        Lcom/hunantv/media/player/d$k;,
        Lcom/hunantv/media/player/d$t;
    }
.end annotation


# virtual methods
.method public abstract getBufferedPercentage()I
.end method

.method public abstract getBufferedPositionMs()J
.end method

.method public abstract getBufferingPercent()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public abstract getPlaybackSpeed()F
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoSarDen()I
.end method

.method public abstract getVideoSarNum()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract isMediaCodecSWRender()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract loopSwitchVideoSource(Ljava/lang/String;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method public abstract pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setAudioStreamType(I)V
.end method

.method public abstract setDataSource(Lcom/hunantv/media/player/libnative/IMediaDataSource;)V
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;I)V
.end method

.method public abstract setOnBufferingTimeoutListener(Lcom/hunantv/media/player/d$a;)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcom/hunantv/media/player/d$b;)V
.end method

.method public abstract setOnCompletionListener(Lcom/hunantv/media/player/d$c;)V
.end method

.method public abstract setOnDrmListener(Lcom/hunantv/media/player/d$d;)V
.end method

.method public abstract setOnErrorListener(Lcom/hunantv/media/player/d$e;)V
.end method

.method public abstract setOnGetFrameImageListener(Lcom/hunantv/media/player/d$f;)V
.end method

.method public abstract setOnInfoListener(Lcom/hunantv/media/player/d$g;)V
.end method

.method public abstract setOnInfoStringListener(Lcom/hunantv/media/player/d$h;)V
.end method

.method public abstract setOnLoopSwitchSourceListener(Lcom/hunantv/media/player/d$i;)V
.end method

.method public abstract setOnPlayerEventListener(Lcom/hunantv/media/player/d$j;)V
.end method

.method public abstract setOnPreparedListener(Lcom/hunantv/media/player/d$k;)V
.end method

.method public abstract setOnRecordVideoListener(Lcom/hunantv/media/player/d$l;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcom/hunantv/media/player/d$m;)V
.end method

.method public abstract setOnSmoothSwitchSourceListener(Lcom/hunantv/media/player/d$n;)V
.end method

.method public abstract setOnSourceFlowHandledListener(Lcom/hunantv/media/player/d$o;)V
.end method

.method public abstract setOnSourceNetHandledListener(Lcom/hunantv/media/player/d$p;)V
.end method

.method public abstract setOnStreamInfoListener(Lcom/hunantv/media/player/d$q;)V
.end method

.method public abstract setOnSwitchSourceListener(Lcom/hunantv/media/player/d$r;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcom/hunantv/media/player/d$s;)V
.end method

.method public abstract setPlaybackSpeed(F)V
.end method

.method public abstract setScreenOnWhilePlaying(Z)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setSurface(Landroid/view/Surface;I)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract smoothSwitchVideoSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;IIIILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method public abstract smoothSwitchVideoSource(Ljava/lang/String;IIIILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract switchVideoSource(Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
