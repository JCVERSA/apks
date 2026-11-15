.class public Lcom/hunantv/media/player/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d;


# instance fields
.field protected a:Lcom/hunantv/media/player/d;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/hunantv/media/player/d;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    return-object p0
.end method

.method public getBufferedPercentage()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->getBufferedPercentage()I

    move-result p0

    return p0
.end method

.method public getBufferedPositionMs()J
    .locals 2

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->getBufferedPositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferingPercent()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->getBufferingPercent()I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {v1}, Lcom/hunantv/media/player/d;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->getPlaybackSpeed()F

    move-result p0

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->getVideoHeight()I

    move-result p0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->getVideoSarDen()I

    move-result p0

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->getVideoSarNum()I

    move-result p0

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->getVideoWidth()I

    move-result p0

    return p0
.end method

.method public isMediaCodecSWRender()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->isMediaCodecSWRender()Z

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public loopSwitchVideoSource(Ljava/lang/String;III)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/d;->loopSwitchVideoSource(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->pause()V

    return-void
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->release()V

    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->reset()V

    return-void
.end method

.method public seekTo(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/d;->seekTo(J)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setAudioStreamType(I)V

    return-void
.end method

.method public setDataSource(Lcom/hunantv/media/player/libnative/IMediaDataSource;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setDataSource(Lcom/hunantv/media/player/libnative/IMediaDataSource;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/d;->setDisplay(Landroid/view/SurfaceHolder;I)V

    return-void
.end method

.method public setOnBufferingTimeoutListener(Lcom/hunantv/media/player/d$a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$14;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$14;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$a;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnBufferingTimeoutListener(Lcom/hunantv/media/player/d$a;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnPreparedListener(Lcom/hunantv/media/player/d$k;)V

    :goto_0
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/hunantv/media/player/d$b;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$8;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$8;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$b;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnBufferingUpdateListener(Lcom/hunantv/media/player/d$b;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnBufferingUpdateListener(Lcom/hunantv/media/player/d$b;)V

    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/hunantv/media/player/d$c;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$7;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$7;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$c;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnCompletionListener(Lcom/hunantv/media/player/d$c;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnCompletionListener(Lcom/hunantv/media/player/d$c;)V

    :goto_0
    return-void
.end method

.method public setOnDrmListener(Lcom/hunantv/media/player/d$d;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$6;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$6;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$d;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnDrmListener(Lcom/hunantv/media/player/d$d;)V

    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/hunantv/media/player/d$e;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$11;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$11;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$e;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnErrorListener(Lcom/hunantv/media/player/d$e;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnErrorListener(Lcom/hunantv/media/player/d$e;)V

    :goto_0
    return-void
.end method

.method public setOnGetFrameImageListener(Lcom/hunantv/media/player/d$f;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$5;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$5;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$f;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnGetFrameImageListener(Lcom/hunantv/media/player/d$f;)V

    :cond_0
    return-void
.end method

.method public setOnInfoListener(Lcom/hunantv/media/player/d$g;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$12;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$12;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$g;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnInfoListener(Lcom/hunantv/media/player/d$g;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnInfoListener(Lcom/hunantv/media/player/d$g;)V

    :goto_0
    return-void
.end method

.method public setOnInfoStringListener(Lcom/hunantv/media/player/d$h;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$13;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$13;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$h;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnInfoStringListener(Lcom/hunantv/media/player/d$h;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnInfoStringListener(Lcom/hunantv/media/player/d$h;)V

    :goto_0
    return-void
.end method

.method public setOnLoopSwitchSourceListener(Lcom/hunantv/media/player/d$i;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$4;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$4;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$i;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnLoopSwitchSourceListener(Lcom/hunantv/media/player/d$i;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnPreparedListener(Lcom/hunantv/media/player/d$k;)V

    :goto_0
    return-void
.end method

.method public setOnPlayerEventListener(Lcom/hunantv/media/player/d$j;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnPlayerEventListener(Lcom/hunantv/media/player/d$j;)V

    return-void
.end method

.method public setOnPreparedListener(Lcom/hunantv/media/player/d$k;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$1;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$1;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$k;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnPreparedListener(Lcom/hunantv/media/player/d$k;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnPreparedListener(Lcom/hunantv/media/player/d$k;)V

    :goto_0
    return-void
.end method

.method public setOnRecordVideoListener(Lcom/hunantv/media/player/d$l;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnRecordVideoListener(Lcom/hunantv/media/player/d$l;)V

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/hunantv/media/player/d$m;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$9;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$9;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$m;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnSeekCompleteListener(Lcom/hunantv/media/player/d$m;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnSeekCompleteListener(Lcom/hunantv/media/player/d$m;)V

    :goto_0
    return-void
.end method

.method public setOnSmoothSwitchSourceListener(Lcom/hunantv/media/player/d$n;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$3;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$3;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$n;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnSmoothSwitchSourceListener(Lcom/hunantv/media/player/d$n;)V

    :cond_0
    return-void
.end method

.method public setOnSourceFlowHandledListener(Lcom/hunantv/media/player/d$o;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnSourceFlowHandledListener(Lcom/hunantv/media/player/d$o;)V

    return-void
.end method

.method public setOnSourceNetHandledListener(Lcom/hunantv/media/player/d$p;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnSourceNetHandledListener(Lcom/hunantv/media/player/d$p;)V

    return-void
.end method

.method public setOnStreamInfoListener(Lcom/hunantv/media/player/d$q;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnStreamInfoListener(Lcom/hunantv/media/player/d$q;)V

    return-void
.end method

.method public setOnSwitchSourceListener(Lcom/hunantv/media/player/d$r;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$2;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$2;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$r;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnSwitchSourceListener(Lcom/hunantv/media/player/d$r;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnPreparedListener(Lcom/hunantv/media/player/d$k;)V

    :goto_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/hunantv/media/player/d$s;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    new-instance v1, Lcom/hunantv/media/player/i$10;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/player/i$10;-><init>(Lcom/hunantv/media/player/i;Lcom/hunantv/media/player/d$s;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/d;->setOnVideoSizeChangedListener(Lcom/hunantv/media/player/d$s;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setOnVideoSizeChangedListener(Lcom/hunantv/media/player/d$s;)V

    :goto_0
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/d;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/d;->setSurface(Landroid/view/Surface;I)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/d;->setVolume(FF)V

    return-void
.end method

.method public smoothSwitchVideoSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;IIIILjava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/hunantv/media/player/d;->smoothSwitchVideoSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;IIIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public smoothSwitchVideoSource(Ljava/lang/String;IIIILjava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/hunantv/media/player/d;->smoothSwitchVideoSource(Ljava/lang/String;IIIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->start()V

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0}, Lcom/hunantv/media/player/d;->stop()V

    return-void
.end method

.method public switchVideoSource(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/i;->a:Lcom/hunantv/media/player/d;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/d;->switchVideoSource(Ljava/lang/String;III)V

    return-void
.end method
