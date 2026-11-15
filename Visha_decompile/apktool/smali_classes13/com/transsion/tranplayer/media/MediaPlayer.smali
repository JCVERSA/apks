.class public Lcom/transsion/tranplayer/media/MediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/media/MediaPlayer$OnInfoListener;,
        Lcom/transsion/tranplayer/media/MediaPlayer$OnErrorListener;,
        Lcom/transsion/tranplayer/media/MediaPlayer$OnTimedTextListener;,
        Lcom/transsion/tranplayer/media/MediaPlayer$OnVideoSizeChangedListener;,
        Lcom/transsion/tranplayer/media/MediaPlayer$OnSeekCompleteListener;,
        Lcom/transsion/tranplayer/media/MediaPlayer$OnBufferingUpdateListener;,
        Lcom/transsion/tranplayer/media/MediaPlayer$OnCompletionListener;,
        Lcom/transsion/tranplayer/media/MediaPlayer$OnPreparedListener;,
        Lcom/transsion/tranplayer/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private mCurrentMedia:Lcom/transsion/tranplayer/Media;

.field private mLength:J

.field private final mLibVLC:Lcom/transsion/tranplayer/LibVLC;

.field private mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

.field private mOffset:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    new-instance v1, Lcom/transsion/tranplayer/LibVLC;

    invoke-direct {v1, v0}, Lcom/transsion/tranplayer/LibVLC;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    new-instance v0, Lcom/transsion/tranplayer/MediaPlayer;

    invoke-direct {v0, v1}, Lcom/transsion/tranplayer/MediaPlayer;-><init>(Lcom/transsion/tranplayer/LibVLC;)V

    iput-object v0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mOffset:J

    iput-wide v0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mLength:J

    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/transsion/tranplayer/media/MediaPlayer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p1, v0, v1}, Lcom/transsion/tranplayer/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Lcom/transsion/tranplayer/media/MediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Lcom/transsion/tranplayer/media/MediaPlayer;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Lcom/transsion/tranplayer/media/MediaPlayer;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/transsion/tranplayer/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lcom/transsion/tranplayer/media/MediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lcom/transsion/tranplayer/media/MediaPlayer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, p2, v0, v1}, Lcom/transsion/tranplayer/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Lcom/transsion/tranplayer/media/MediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Lcom/transsion/tranplayer/media/MediaPlayer;
    .locals 0

    .line 4
    new-instance p0, Lcom/transsion/tranplayer/media/MediaPlayer;

    invoke-direct {p0}, Lcom/transsion/tranplayer/media/MediaPlayer;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p1}, Lcom/transsion/tranplayer/MediaPlayer;->addSlave(ILandroid/net/Uri;Z)Z

    return-void
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2}, Lcom/transsion/tranplayer/MediaPlayer;->addSlave(ILjava/lang/String;Z)Z

    return-void
.end method

.method public attachAuxEffect(I)V
    .locals 0

    return-void
.end method

.method public deselectTrack(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public finalize()V
    .locals 0

    return-void
.end method

.method public getAudioSessionId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getTime()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getDuration()I
    .locals 2

    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getLength()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getSelectedTrack(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getTrackInfo()[Lcom/transsion/tranplayer/media/MediaPlayer$TrackInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/transsion/tranplayer/media/MediaPlayer$TrackInfo;

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isLooping()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->isPlaying()Z

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

    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->pause()V

    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public prepareAsync()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    const-string v1, ":video-paused"

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/Media;->addOption(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->play()V

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public seekTo(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public selectTrack(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 0

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/tranplayer/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    new-instance p1, Lcom/transsion/tranplayer/Media;

    iget-object p3, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    invoke-direct {p1, p3, p2}, Lcom/transsion/tranplayer/Media;-><init>(Lcom/transsion/tranplayer/LibVLC;Landroid/net/Uri;)V

    iput-object p1, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    .line 3
    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setMedia(Lcom/transsion/tranplayer/Media;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 6
    new-instance v7, Lcom/transsion/tranplayer/Media;

    iget-object v1, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    iget-wide v3, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mOffset:J

    iget-wide v5, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mLength:J

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/tranplayer/Media;-><init>(Lcom/transsion/tranplayer/LibVLC;Ljava/io/FileDescriptor;JJ)V

    iput-object v7, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    .line 7
    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0, v7}, Lcom/transsion/tranplayer/MediaPlayer;->setMedia(Lcom/transsion/tranplayer/Media;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 8
    iput-wide p2, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mOffset:J

    .line 9
    iput-wide p4, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mLength:J

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/transsion/tranplayer/Media;

    iget-object v1, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    invoke-direct {v0, v1, p1}, Lcom/transsion/tranplayer/Media;-><init>(Lcom/transsion/tranplayer/LibVLC;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    .line 5
    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/transsion/tranplayer/MediaPlayer;->setMedia(Lcom/transsion/tranplayer/Media;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object p0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/transsion/tranplayer/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    return-void
.end method

.method public setNextMediaPlayer(Lcom/transsion/tranplayer/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/transsion/tranplayer/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    return-void
.end method

.method public setOnCompletionListener(Lcom/transsion/tranplayer/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    return-void
.end method

.method public setOnErrorListener(Lcom/transsion/tranplayer/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    return-void
.end method

.method public setOnInfoListener(Lcom/transsion/tranplayer/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    return-void
.end method

.method public setOnPreparedListener(Lcom/transsion/tranplayer/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/transsion/tranplayer/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    return-void
.end method

.method public setOnTimedTextListener(Lcom/transsion/tranplayer/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/transsion/tranplayer/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/tranplayer/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 0

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    add-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setVolume(I)I

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->play()V

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/tranplayer/media/MediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->stop()V

    return-void
.end method
