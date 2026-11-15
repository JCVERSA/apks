.class public interface abstract Lcom/transsion/tranplayer/IMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/IMediaPlayer$OnCodecDeleteCompleteListener;,
        Lcom/transsion/tranplayer/IMediaPlayer$OnSubTitleTypeListener;,
        Lcom/transsion/tranplayer/IMediaPlayer$OnTimedTextListener;,
        Lcom/transsion/tranplayer/IMediaPlayer$OnInfoListener;,
        Lcom/transsion/tranplayer/IMediaPlayer$OnErrorListener;,
        Lcom/transsion/tranplayer/IMediaPlayer$OnVideoSizeChangedListener;,
        Lcom/transsion/tranplayer/IMediaPlayer$OnSeekCompleteListener;,
        Lcom/transsion/tranplayer/IMediaPlayer$OnBufferingUpdateListener;,
        Lcom/transsion/tranplayer/IMediaPlayer$OnCompletionListener;,
        Lcom/transsion/tranplayer/IMediaPlayer$OnPreparedListener;
    }
.end annotation


# static fields
.field public static final KPI_MEDIA_VIDEO_SEEK_TIME:I = 0x186ac

.field public static final KPI_MEDIA_VIDEO_START_TIME:I = 0x186ab

.field public static final MEDIA_AUDIO_TRACK_COUNT:I = 0x186ad

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final MEDIA_INFO_AUDIO_DECODED_START:I = 0x2713

.field public static final MEDIA_INFO_AUDIO_ES_CHANGED:I = 0x186a7

.field public static final MEDIA_INFO_AUDIO_RENDERING_START:I = 0x2712

.field public static final MEDIA_INFO_AUDIO_SEEK_RENDERING_START:I = 0x2719

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_PERCENTAGE:I = 0x186a3

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_COMPONENT_OPEN:I = 0x2717

.field public static final MEDIA_INFO_DISABLE_AUDIO:I = 0x186aa

.field public static final MEDIA_INFO_DISABLE_VIDEO:I = 0x186a9

.field public static final MEDIA_INFO_FIND_STREAM_INFO:I = 0x2716

.field public static final MEDIA_INFO_FIRST_PIC_DISPLAY:I = 0x186a1

.field public static final MEDIA_INFO_LOSE_PIC_SERIOUS:I = 0x186a2

.field public static final MEDIA_INFO_MEDIA_ACCURATE_SEEK_COMPLETE:I = 0x2774

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_OFFSCREEN_NETWORK_NOT_PREPARED:I = 0x38a

.field public static final MEDIA_INFO_OPEN_INPUT:I = 0x2715

.field public static final MEDIA_INFO_PLAYER_PAUSED:I = 0x388

.field public static final MEDIA_INFO_PLAYER_PLAYING:I = 0x387

.field public static final MEDIA_INFO_PLAYER_STOPPED:I = 0x389

.field public static final MEDIA_INFO_REPLAY:I = 0x186a5

.field public static final MEDIA_INFO_SNAP_SHOT:I = 0x186a8

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_LOAD_STATUS:I = 0x186a4

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_DECODED_START:I = 0x2714

.field public static final MEDIA_INFO_VIDEO_ES_CHANGED:I = 0x186a6

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_ROTATION_CHANGED:I = 0x2711

.field public static final MEDIA_INFO_VIDEO_SEEK_RENDERING_START:I = 0x2718

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc


# virtual methods
.method public abstract addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract deselectTrack(I)V
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDataSource()Ljava/lang/String;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getListenVideoMode()Z
.end method

.method public abstract getMediaInfo()Lcom/transsion/tranplayer/MediaInfo;
.end method

.method public abstract getSelectedTrack(I)I
.end method

.method public abstract getSpeed()F
.end method

.method public abstract getTimedTextDelay()J
.end method

.method public abstract getTrackInfo()[Lcom/transsion/tranplayer/ITrackInfo;
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoSarDen()I
.end method

.method public abstract getVideoSarNum()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract isLooping()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
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

.method public abstract seekTo(JZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract selectTrack(I)V
.end method

.method public abstract setAudioStreamType(I)V
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

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
.end method

.method public abstract setDataSource(Lcom/transsion/tranplayer/IMediaDataSource;)V
.end method

.method public abstract setDataSource(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
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

.method public abstract setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setListenVideoMode(Z)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcom/transsion/tranplayer/IMediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Lcom/transsion/tranplayer/IMediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/transsion/tranplayer/IMediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Lcom/transsion/tranplayer/IMediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/transsion/tranplayer/IMediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcom/transsion/tranplayer/IMediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setOnTimedTextListener(Lcom/transsion/tranplayer/IMediaPlayer$OnTimedTextListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcom/transsion/tranplayer/IMediaPlayer$OnVideoSizeChangedListener;)V
.end method

.method public abstract setScreenOnWhilePlaying(Z)V
.end method

.method public abstract setSpeed(F)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setTimedTextDelay(J)V
.end method

.method public abstract setVolume(FF)V
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
