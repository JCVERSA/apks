.class public Lcom/hunantv/media/player/b;
.super Lcom/hunantv/media/player/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Lcom/hunantv/media/player/b$a;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hunantv/media/player/a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/hunantv/media/player/b;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/a;-><init>(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/hunantv/media/player/b;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/hunantv/media/player/b;->f:I

    return p1
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/player/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    new-instance v0, Lcom/hunantv/media/player/b$a;

    invoke-direct {v0, p0, p0}, Lcom/hunantv/media/player/b$a;-><init>(Lcom/hunantv/media/player/b;Lcom/hunantv/media/player/b;)V

    iput-object v0, p0, Lcom/hunantv/media/player/b;->b:Lcom/hunantv/media/player/b$a;

    invoke-direct {p0}, Lcom/hunantv/media/player/b;->b()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/player/b;->b:Lcom/hunantv/media/player/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/player/b;->b:Lcom/hunantv/media/player/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/player/b;->b:Lcom/hunantv/media/player/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/player/b;->b:Lcom/hunantv/media/player/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/player/b;->b:Lcom/hunantv/media/player/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/player/b;->b:Lcom/hunantv/media/player/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    iget-object p0, p0, Lcom/hunantv/media/player/b;->b:Lcom/hunantv/media/player/b$a;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method


# virtual methods
.method public getBufferedPercentage()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/b;->f:I

    return p0
.end method

.method public getBufferedPositionMs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBufferingPercent()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    return-wide v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/hunantv/media/player/pragma/DebugLog;->printStackTrace(Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    return-wide v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/hunantv/media/player/pragma/DebugLog;->printStackTrace(Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p0

    return p0
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

    iget-object p0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p0

    return p0
.end method

.method public isMediaCodecSWRender()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/hunantv/media/player/pragma/DebugLog;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    sget-object v0, Lcom/hunantv/media/player/d$t;->f:Lcom/hunantv/media/player/d$t;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0xb0e

    invoke-virtual {p0, v1, v0}, Lcom/hunantv/media/player/a;->notifyOnInfo(II)Z

    return-void
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/b;->e:Z

    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/b;->f:I

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->resetListeners()V

    invoke-direct {p0}, Lcom/hunantv/media/player/b;->b()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/b;->f:I

    return-void
.end method

.method public seekTo(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setDataSource(Lcom/hunantv/media/player/libnative/IMediaDataSource;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/player/b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/player/b;->f:I

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/hunantv/media/player/b;->e:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/b;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/b;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public smoothSwitchVideoSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;IIIILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public smoothSwitchVideoSource(Ljava/lang/String;IIIILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/hunantv/media/player/d$t;->e:Lcom/hunantv/media/player/d$t;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0xb0e

    invoke-virtual {p0, v1, v0}, Lcom/hunantv/media/player/a;->notifyOnInfo(II)Z

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/b;->f:I

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

    return-void
.end method
