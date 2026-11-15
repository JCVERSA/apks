.class public final Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;
.super Lcom/hunantv/media/player/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;,
        Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnMediaCodecSelectListener;,
        Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnNativeInvokeListener;,
        Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;
    }
.end annotation


# static fields
.field public static final FFP_PROPV_DECODER_AVCODEC:I = 0x1

.field public static final FFP_PROPV_DECODER_MEDIACODEC:I = 0x2

.field public static final FFP_PROPV_DECODER_UNKNOWN:I = 0x0

.field public static final FFP_PROPV_DECODER_VIDEOTOOLBOX:I = 0x3

.field public static final FFP_PROP_FLOAT_AUDIO_LATENCY:I = 0x2717

.field public static final FFP_PROP_FLOAT_AVDELAY:I = 0x2714

.field public static final FFP_PROP_FLOAT_AVDIFF:I = 0x2715

.field public static final FFP_PROP_FLOAT_FILE_START_TIME:I = 0x2716

.field public static final FFP_PROP_FLOAT_PLAYBACK_RATE:I = 0x2713

.field public static final FFP_PROP_FLOAT_VIDEO_DECODE_FRAMES_PER_SECOND:I = 0x2711

.field public static final FFP_PROP_FLOAT_VIDEO_OUTPUT_FRAMES_PER_SECOND:I = 0x2712

.field public static final FFP_PROP_INT64_ASYNC_STATISTIC_BUF_BACKWARDS:I = 0x4ee9

.field public static final FFP_PROP_INT64_ASYNC_STATISTIC_BUF_CAPACITY:I = 0x4eeb

.field public static final FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS:I = 0x4eea

.field public static final FFP_PROP_INT64_AUDIO_CACHED_BYTES:I = 0x4e28

.field public static final FFP_PROP_INT64_AUDIO_CACHED_DURATION:I = 0x4e26

.field public static final FFP_PROP_INT64_AUDIO_CACHED_PACKETS:I = 0x4e2a

.field public static final FFP_PROP_INT64_AUDIO_DECODER:I = 0x4e24

.field public static final FFP_PROP_INT64_AUDIO_TIMESTAMP_POS:I = 0x4fc5

.field public static final FFP_PROP_INT64_AUDIO_TIMESTAMP_STATUS:I = 0x13895

.field public static final FFP_PROP_INT64_AV_CACHED_BYTES:I = 0x4e85

.field public static final FFP_PROP_INT64_AV_CACHED_TIMEMS:I = 0x4e86

.field public static final FFP_PROP_INT64_BIT_RATE:I = 0x4e84

.field public static final FFP_PROP_INT64_CLOCK_NOTIFY:I = 0x13881

.field public static final FFP_PROP_INT64_CLOCK_VPTS_NOTIFY_END:I = 0x13883

.field public static final FFP_PROP_INT64_CLOCK_VPTS_NOTIFY_START:I = 0x13882

.field public static final FFP_PROP_INT64_CRASH_TEST:I = 0x15f91

.field public static final FFP_PROP_INT64_DECODER_PLAY_NOTIFY:I = 0x15f93

.field public static final FFP_PROP_INT64_DRM_PREPEARED_STATUE:I = 0x4fc4

.field public static final FFP_PROP_INT64_FRAME_PTS_NOTIFY:I = 0x15f92

.field public static final FFP_PROP_INT64_GETFRAMETIME_DF:I = 0x5019

.field public static final FFP_PROP_INT64_GETFRAMETIME_DROP_NUM:I = 0x501e

.field public static final FFP_PROP_INT64_GETFRAMETIME_FIN:I = 0x5020

.field public static final FFP_PROP_INT64_GETFRAMETIME_GEN_NUM:I = 0x501f

.field public static final FFP_PROP_INT64_GETFRAMETIME_T1:I = 0x5015

.field public static final FFP_PROP_INT64_GETFRAMETIME_T2:I = 0x5016

.field public static final FFP_PROP_INT64_GETFRAMETIME_T3:I = 0x5017

.field public static final FFP_PROP_INT64_GETFRAMETIME_T4:I = 0x5018

.field public static final FFP_PROP_INT64_GETFRAMETIME_TD:I = 0x501a

.field public static final FFP_PROP_INT64_GETFRAMETIME_TE:I = 0x501c

.field public static final FFP_PROP_INT64_GETFRAMETIME_TF:I = 0x501d

.field public static final FFP_PROP_INT64_GETFRAMETIME_TS:I = 0x501b

.field public static final FFP_PROP_INT64_IS_CODEC_SW_RENDER:I = 0x13897

.field public static final FFP_PROP_INT64_IS_SUPPORT_SNAPSHOT:I = 0x13896

.field public static final FFP_PROP_INT64_LATEST_SEEK_LOAD_DURATION:I = 0x4f4c

.field public static final FFP_PROP_INT64_LOOPAB_TARGET_POS:I = 0x1388a

.field public static final FFP_PROP_INT64_LOOP_SEEK:I = 0x13894

.field public static final FFP_PROP_INT64_NET_BROKEN:I = 0x15f9c

.field public static final FFP_PROP_INT64_OPPOOSIE_ENALBE:I = 0x15fa5

.field public static final FFP_PROP_INT64_OPPOSR_ENALBE:I = 0x15fa4

.field public static final FFP_PROP_INT64_P2P_SMOOTH_FAIL:I = 0x15f9a

.field public static final FFP_PROP_INT64_SELECTED_AUDIO_STREAM:I = 0x4e22

.field public static final FFP_PROP_INT64_SELECTED_TIMEDTEXT_STREAM:I = 0x4e2b

.field public static final FFP_PROP_INT64_SELECTED_VIDEO_STREAM:I = 0x4e21

.field public static final FFP_PROP_INT64_SMOOTH_ACCSEEK:I = 0x15f9b

.field public static final FFP_PROP_INT64_STEP_PLAYBACK:I = 0x7531

.field public static final FFP_PROP_INT64_TCP_SPEED:I = 0x4ee8

.field public static final FFP_PROP_INT64_TRAFFIC_STATISTIC_BYTE_COUNT:I = 0x4eec

.field public static final FFP_PROP_INT64_VIDEO_CACHED_BYTES:I = 0x4e27

.field public static final FFP_PROP_INT64_VIDEO_CACHED_DURATION:I = 0x4e25

.field public static final FFP_PROP_INT64_VIDEO_CACHED_PACKETS:I = 0x4e29

.field public static final FFP_PROP_INT64_VIDEO_DECODER:I = 0x4e23

.field public static final FFP_PROP_INT64_VSRTIME_AVG:I = 0x4fbb

.field public static final FFP_PROP_INT64_VSRTIME_COUNT:I = 0x4fba

.field public static final FFP_PROP_INT64_VSRTIME_MAX:I = 0x4fbd

.field public static final FFP_PROP_INT64_VSRTIME_MIN:I = 0x4fbc

.field public static final FFP_PROP_INT64_VSR_RUN_EANBLE:I = 0x15f9d

.field public static final FFP_PROP_INT64_VVTTIME_DLPT:I = 0x4fb9

.field public static final FFP_PROP_INT64_VVTTIME_T1:I = 0x4fb1

.field public static final FFP_PROP_INT64_VVTTIME_T2:I = 0x4fb2

.field public static final FFP_PROP_INT64_VVTTIME_T3:I = 0x4fb3

.field public static final FFP_PROP_INT64_VVTTIME_T4:I = 0x4fb4

.field public static final FFP_PROP_INT64_VVTTIME_T5:I = 0x4fb5

.field public static final FFP_PROP_INT64_VVTTIME_T6:I = 0x4fb6

.field public static final FFP_PROP_INT64_VVTTIME_VVBT:I = 0x4fb8

.field public static final FFP_PROP_INT64_VVTTIME_VVT:I = 0x4fb7

.field public static final FFP_PROP_INT64_WANOS_AUDIO_EFFECT:I = 0x7532

.field private static final MEDIA_BUFFERING_TIMEOUT:I = 0x12c

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field private static final MEDIA_GET_FRAME_IMG_INFO:I = 0x2bd

.field private static final MEDIA_GET_FRAME_IMG_STATUE:I = 0x2bc

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_INFO_DRM:I = 0xd2

.field private static final MEDIA_INFO_STRING:I = 0xc9

.field private static final MEDIA_LOOPSWITCH_SOURCE_COMPLETE:I = 0x259

.field private static final MEDIA_LOOPSWITCH_SOURCE_FAILED:I = 0x25a

.field private static final MEDIA_LOOPSWITCH_SOURCE_INFO:I = 0x258

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_RECORD_VIDEO_ERR:I = 0x1f5

.field private static final MEDIA_RECORD_VIDEO_INFO:I = 0x1f4

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field protected static final MEDIA_SET_VIDEO_DAR:I = 0x2712

.field protected static final MEDIA_SET_VIDEO_PAR:I = 0x2713

.field protected static final MEDIA_SET_VIDEO_SAR:I = 0x2711

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SMOOTH_SWITCH_SOURCE_COMPLETE:I = 0x25c

.field private static final MEDIA_SMOOTH_SWITCH_SOURCE_FAILED:I = 0x25d

.field private static final MEDIA_SMOOTH_SWITCH_SOURCE_INFO:I = 0x25b

.field private static final MEDIA_SWITCH_SOURCE_COMPLETE:I = 0x191

.field private static final MEDIA_SWITCH_SOURCE_FAILED:I = 0x192

.field private static final MEDIA_SWITCH_SOURCE_INFO:I = 0x190

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final OPPO_FUNC_OSIE:I = 0x2

.field public static final OPPO_FUNC_SR:I = 0x1

.field public static final OPT_CATEGORY_CODEC:I = 0x2

.field public static final OPT_CATEGORY_FORMAT:I = 0x1

.field public static final OPT_CATEGORY_PLAYER:I = 0x4

.field public static final OPT_CATEGORY_SWS:I = 0x3

.field public static final SDL_FCC_RV16:I = 0x36315652

.field public static final SDL_FCC_RV32:I = 0x32335652

.field public static final SDL_FCC_YV12:I = 0x32315659

.field public static final SDL_FCC__OPENGLES:I = 0x53454c47

.field private static final TAG:Ljava/lang/String; = "ImgoMediaPlayerLib"

.field private static volatile mIsNativeInitialized:Z = false

.field private static mPackageName:Ljava/lang/String; = "com.hunantv.imgo.activity"


# instance fields
.field private mBufferedPercent:I

.field private mBufferedPositionMs:J

.field private mContext:Landroid/content/Context;

.field private mCurBufferingPercent:I

.field private mCurrentRecFile:Ljava/lang/String;

.field private mDataSource:Ljava/lang/String;

.field private mEventHandler:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;

.field private mIsReleased:Z

.field private mListenerContext:I

.field private mNativeMGTVMediaDataSource:J

.field private mNativeMGTVSMediaDataSource:J

.field private mNativeMediaDataSource:J

.field private mNativeMediaPlayer:J

.field private mNativeSurfaceTexture:I

.field private mOnMediaCodecSelectListener:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnMediaCodecSelectListener;

.field private mOnNativeInvokeListener:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnNativeInvokeListener;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoDarDen:I

.field private mVideoDarNum:I

.field private mVideoHeight:I

.field private mVideoParDen:I

.field private mVideoParNum:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWeakImgoPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/hunantv/media/player/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mIsReleased:Z

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->initPlayer(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/a;-><init>(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mIsReleased:Z

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->initPlayer(Landroid/content/Context;)V

    return-void
.end method

.method private native _getAudioCodecInfo()Ljava/lang/String;
.end method

.method private static final native _getColorFormatName(I)Ljava/lang/String;
.end method

.method private native _getLoopCount()I
.end method

.method private native _getMediaMeta()Landroid/os/Bundle;
.end method

.method private native _getPicture32(II[I)I
.end method

.method private native _getPropertyFloat(IF)F
.end method

.method private native _getPropertyLong(IJ)J
.end method

.method private static final native _getSupportRecVideoformat()Ljava/lang/String;
.end method

.method private native _getVideoCodecInfo()Ljava/lang/String;
.end method

.method private native _isAbortRequest()I
.end method

.method private native _isVideoRecording()Z
.end method

.method private native _loopswitchSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method private native _loopswitchSource(Ljava/lang/String;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _pauseLoadData(I)V
.end method

.method private native _recordVideo(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset(Ljava/lang/Object;)V
.end method

.method private native _seekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _seekTo2(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Lcom/hunantv/media/player/libnative/IMediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSourceFd(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDrmLicensePrepared(I)V
.end method

.method private native _setDrmLicensePrepared(ILandroid/media/MediaCrypto;)V
.end method

.method private native _setFrameImageAtTime(Ljava/lang/String;JJIII)V
.end method

.method private native _setLoopCount(I)V
.end method

.method private native _setOption(ILjava/lang/String;J)V
.end method

.method private native _setOption(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native _setPropertyFloat(IF)V
.end method

.method private native _setPropertyLong(IJ)V
.end method

.method private native _setPropertyLongab(IJJ)V
.end method

.method private native _setStreamSelected(IZ)V
.end method

.method private native _setVideoKeyFrameInfo([B)I
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _setVideoSurfaceKey(Landroid/view/Surface;I)V
.end method

.method private native _setWanosAudioEffectConfig([B)I
.end method

.method private native _smoothswitchSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;IIIILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method private native _smoothswitchSource(Ljava/lang/String;IIIILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _switchSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _switchSource(Ljava/lang/String;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static synthetic access$000(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mNativeMediaPlayer:J

    return-wide v0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoWidth:I

    return p0
.end method

.method public static synthetic access$1002(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoWidth:I

    return p1
.end method

.method public static synthetic access$1100(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoHeight:I

    return p0
.end method

.method public static synthetic access$1102(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoHeight:I

    return p1
.end method

.method public static synthetic access$1200(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoSarNum:I

    return p0
.end method

.method public static synthetic access$1202(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoSarNum:I

    return p1
.end method

.method public static synthetic access$1300(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoSarDen:I

    return p0
.end method

.method public static synthetic access$1302(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoSarDen:I

    return p1
.end method

.method public static synthetic access$1400(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/a;->notifyOnVideoSizeChanged(IIII)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnError(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnCompletion(II)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnInfo(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1800(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/a;->notifyOnVideoSizeChanged(IIII)V

    return-void
.end method

.method public static synthetic access$1902(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoDarNum:I

    return p1
.end method

.method public static synthetic access$200(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->notifyOnPrepared()V

    return-void
.end method

.method public static synthetic access$2002(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoDarDen:I

    return p1
.end method

.method public static synthetic access$2102(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoParNum:I

    return p1
.end method

.method public static synthetic access$2202(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoParDen:I

    return p1
.end method

.method public static synthetic access$2300(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnBufferingTimeout(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2400(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/a;->notifyOnSwitchSourceInfo(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/a;->notifyOnSwitchSourceComplete(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/a;->notifyOnSwitchSourceFailed(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnRecordVideoInfo(II)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnRecordVideoErr(II)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/a;->notifyOnLoopSwitchSourceInfo(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic access$300(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnCompletion(II)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/a;->notifyOnLoopSwitchSourceComplete(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/a;->notifyOnLoopSwitchSourceFail(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;IILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/a;->notifyOnSmoothSwitchSourceInfo(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3300(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;IILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/a;->notifyOnSmoothSwitchSourceComplete(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3400(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;IILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/a;->notifyOnSmoothSwitchSourceFailed(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3500(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;ILjava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnInfoString(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3600(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/a;->notifyOnDrmPsshMap(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic access$3700(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/a;->notifyOnMaskDrmInit([B)V

    return-void
.end method

.method public static synthetic access$3800(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnGetFrameImageStatus(II)V

    return-void
.end method

.method public static synthetic access$3900(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;IILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/a;->notifyOnGetFrameImageInfo(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->stayAwake(Z)V

    return-void
.end method

.method public static synthetic access$500(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mCurBufferingPercent:I

    return p0
.end method

.method public static synthetic access$502(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mCurBufferingPercent:I

    return p1
.end method

.method public static synthetic access$600(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/a;->notifyOnBufferingUpdate(I)V

    return-void
.end method

.method public static synthetic access$702(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mBufferedPercent:I

    return p1
.end method

.method public static synthetic access$802(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;J)J
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mBufferedPositionMs:J

    return-wide p1
.end method

.method public static synthetic access$900(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnSeekComplete(II)V

    return-void
.end method

.method public static defaultValue(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/hunantv/media/player/utils/PreferencesUtil;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/utils/PreferencesUtil;-><init>(Landroid/content/Context;)V

    const-string p0, "prekey_h264_support_base"

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->removeKey(Ljava/lang/String;)V

    const-string p0, "prekey_h264_support_main"

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->removeKey(Ljava/lang/String;)V

    const-string p0, "prekey_h264_support_high"

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->removeKey(Ljava/lang/String;)V

    const-string p0, "prekey_h265_support"

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method private enableUpdateAudioTimestamp()V
    .locals 4

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isAudioTimestampEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const v1, 0x13895

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUpdateAudioTimestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getAppPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getColorFormatName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getColorFormatName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDlopenStatus()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->native_getDlopenStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportRecVideoformat()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getSupportRecVideoformat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTinkerNumber()I
    .locals 1

    invoke-static {}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->native_getTinkerNumber()I

    move-result v0

    return v0
.end method

.method private static initNativeOnce()V
    .locals 3

    const-class v0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mIsNativeInitialized:Z

    if-nez v1, :cond_0

    sget v1, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_report_level:I

    sget v2, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_log_level:I

    invoke-static {v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->native_init(II)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mIsNativeInitialized:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initPlayer(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    iput-object p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->syncTryLoadAllLibraries(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->defaultValue(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->initNativeOnce()V

    invoke-static {p1}, Lcom/hunantv/media/report/c/h;->i(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;

    invoke-direct {v0, p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;-><init>(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Landroid/os/Looper;)V

    :goto_0
    iput-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mEventHandler:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;

    invoke-direct {v0, p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;-><init>(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Landroid/os/Looper;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mEventHandler:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;

    :goto_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWeakImgoPlayer:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->native_setup(Ljava/lang/Object;)V

    return-void
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_getDlopenStatus()Ljava/lang/String;
.end method

.method private static final native native_getTinkerNumber()I
.end method

.method private static final native native_init(II)V
.end method

.method private final native native_message_loop(Ljava/lang/Object;)V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static onCodecIsAdaptive(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;

    if-nez p0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mOnMediaCodecSelectListener:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnMediaCodecSelectListener;

    if-nez v0, :cond_2

    sget-object v0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;->sInstance:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;

    :cond_2
    invoke-interface {v0, p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnMediaCodecSelectListener;->onCodecIsAdaptive(Lcom/hunantv/media/player/d;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static onNativeInvoke(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 2

    if-eqz p0, :cond_2

    instance-of v0, p0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;

    if-eqz p0, :cond_1

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const/16 v0, 0x51

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    return v1

    :sswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnPlayerEvent(ILandroid/os/Bundle;)V

    return v1

    :pswitch_0
    :sswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnSourceNetCtrl(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnSourceFlowInfoEvent(ILandroid/os/Bundle;)V

    return v1

    :pswitch_1
    :sswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnSourceNetEvent(ILandroid/os/Bundle;)V

    return v1

    :cond_0
    :sswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/a;->notifyOnStreamInfoEvent(ILandroid/os/Bundle;)V

    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "<null weakPlayer>.onNativeInvoke()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "<null weakThiz>.onNativeInvoke()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_3
        0x29 -> :sswitch_4
        0x40 -> :sswitch_4
        0x12204 -> :sswitch_4
        0x13301 -> :sswitch_2
        0x20009 -> :sswitch_1
        0x20020 -> :sswitch_1
        0x20030 -> :sswitch_1
        0x20050 -> :sswitch_0
        0x20070 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x13201
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20001
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x20010
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static onSelectCodec(Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    instance-of v1, p0, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mOnMediaCodecSelectListener:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnMediaCodecSelectListener;

    if-nez v0, :cond_2

    sget-object v0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;->sInstance:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$DefaultMediaCodecSelector;

    :cond_2
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnMediaCodecSelectListener;->onMediaCodecSelect(Lcom/hunantv/media/player/d;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->start()V

    :cond_2
    if-ne p1, v0, :cond_3

    const/16 v0, 0x2712

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtainmsg Info ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mEventHandler:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mEventHandler:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method private setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private stayAwake(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mStayAwake:Z

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->updateSurfaceScreenOn()V

    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mStayAwake:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSurfaceScreenOn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public native _prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public deselectTrack(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setStreamSelected(IZ)V

    return-void
.end method

.method public enableFramePTSNotify(Z)V
    .locals 3

    const v0, 0x15f92

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V

    return-void
.end method

.method public enableOppoFunc(IZ)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x15fa4

    :goto_0
    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const p1, 0x15fa5

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public enableP2PSmoothFailMode(Z)V
    .locals 3

    const v0, 0x15f9a

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V

    return-void
.end method

.method public enableSmoothAccSeek(Z)V
    .locals 3

    const v0, 0x15f9b

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V

    return-void
.end method

.method public finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize mIsReleased:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mIsReleased:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAVCachedBytes()J
    .locals 3

    const/16 v0, 0x4e85

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAVCachedTimeMs()J
    .locals 3

    const/16 v0, 0x4e86

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAVDelay()F
    .locals 2

    const/16 v0, 0x2714

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyFloat(IF)F

    move-result p0

    return p0
.end method

.method public getAVDiff()F
    .locals 2

    const/16 v0, 0x2715

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyFloat(IF)F

    move-result p0

    return p0
.end method

.method public getAsyncStatisticBufBackwards()J
    .locals 3

    const/16 v0, 0x4ee9

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsyncStatisticBufCapacity()J
    .locals 3

    const/16 v0, 0x4eeb

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsyncStatisticBufForwards()J
    .locals 3

    const/16 v0, 0x4eea

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioCachedBytes()J
    .locals 3

    const/16 v0, 0x4e28

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioCachedDuration()J
    .locals 3

    const/16 v0, 0x4e26

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioCachedPackets()J
    .locals 3

    const/16 v0, 0x4e2a

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public native getAudioSessionId()I
.end method

.method public getBitRate()J
    .locals 3

    const/16 v0, 0x4e84

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferedPercentage()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mBufferedPercent:I

    return p0
.end method

.method public getBufferedPositionMs()J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mBufferedPositionMs:J

    return-wide v0
.end method

.method public getBufferingPercent()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mCurBufferingPercent:I

    return p0
.end method

.method public native getCurrentPosition()J
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mDataSource:Ljava/lang/String;

    return-object p0
.end method

.method public getDrmPreparedStatus()J
    .locals 3

    const/16 v0, 0x4fc4

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public native getDuration()J
.end method

.method public getFileStartTime()F
    .locals 2

    const/16 v0, 0x2716

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyFloat(IF)F

    move-result p0

    return p0
.end method

.method public getGenframetimeStatisticDecodeFirstFrame()J
    .locals 3

    const/16 v0, 0x5019

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenframetimeStatisticDropFrameNum()J
    .locals 3

    const/16 v0, 0x501e

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenframetimeStatisticGenFinishTotalTime()J
    .locals 3

    const/16 v0, 0x5020

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenframetimeStatisticGenImageNum()J
    .locals 3

    const/16 v0, 0x501f

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenframetimeStatisticT1()J
    .locals 3

    const/16 v0, 0x5015

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenframetimeStatisticT2()J
    .locals 3

    const/16 v0, 0x5016

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenframetimeStatisticT3()J
    .locals 3

    const/16 v0, 0x5017

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenframetimeStatisticT4()J
    .locals 3

    const/16 v0, 0x5018

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenframetimeStatisticTotalDecodeTime()J
    .locals 3

    const/16 v0, 0x501a

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenframetimeStatisticTotalEncodeTime()J
    .locals 3

    const/16 v0, 0x501c

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenframetimeStatisticTotalSaveFile()J
    .locals 3

    const/16 v0, 0x501d

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenframetimeStatisticTotalScaleTime()J
    .locals 3

    const/16 v0, 0x501b

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()Lcom/hunantv/media/player/f;
    .locals 8

    new-instance v0, Lcom/hunantv/media/player/f;

    invoke-direct {v0}, Lcom/hunantv/media/player/f;-><init>()V

    const-string v1, "Imgoplayer"

    iput-object v1, v0, Lcom/hunantv/media/player/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getVideoCodecInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    const/4 v4, 0x2

    const-string v5, ","

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lt v2, v4, :cond_0

    aget-object v2, v1, v7

    iput-object v2, v0, Lcom/hunantv/media/player/f;->b:Ljava/lang/String;

    aget-object v1, v1, v6

    iput-object v1, v0, Lcom/hunantv/media/player/f;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    array-length v2, v1

    if-lt v2, v6, :cond_1

    aget-object v1, v1, v7

    iput-object v1, v0, Lcom/hunantv/media/player/f;->b:Ljava/lang/String;

    iput-object v3, v0, Lcom/hunantv/media/player/f;->c:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getAudioCodecInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lt v2, v4, :cond_2

    aget-object v2, v1, v7

    iput-object v2, v0, Lcom/hunantv/media/player/f;->d:Ljava/lang/String;

    aget-object v1, v1, v6

    iput-object v1, v0, Lcom/hunantv/media/player/f;->e:Ljava/lang/String;

    goto :goto_1

    :cond_2
    array-length v2, v1

    if-lt v2, v6, :cond_3

    aget-object v1, v1, v7

    iput-object v1, v0, Lcom/hunantv/media/player/f;->d:Ljava/lang/String;

    iput-object v3, v0, Lcom/hunantv/media/player/f;->e:Ljava/lang/String;

    :cond_3
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/media/player/g;->a(Landroid/os/Bundle;)Lcom/hunantv/media/player/g;

    move-result-object p0

    iput-object p0, v0, Lcom/hunantv/media/player/f;->f:Lcom/hunantv/media/player/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public getMediaMeta()Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getPImgoVsrExeInfo(IJ)J
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPicture32(II[I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPicture32(II[I)I

    move-result p0

    return p0
.end method

.method public getPlaybackSpeed()F
    .locals 2

    const/16 v0, 0x2713

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyFloat(IF)F

    move-result p0

    return p0
.end method

.method public getPropertyFloat(IF)F
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyFloat(IF)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catch_0
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p2
.end method

.method public getPropertyLong(IJ)J
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catch_0
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide p2
.end method

.method public getSelectedTrack(I)I
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p1, 0x4e2b

    :goto_0
    invoke-direct {p0, p1, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_1
    const/16 p1, 0x4e22

    goto :goto_0

    :cond_2
    const/16 p1, 0x4e21

    goto :goto_0
.end method

.method public getTcpDownloadSpeed()J
    .locals 3

    const/16 v0, 0x4ee8

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTrackInfo()[Lcom/hunantv/media/player/c/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getTrackInfo()[Lcom/hunantv/media/player/c/b;

    move-result-object p0

    return-object p0
.end method

.method public getTrackInfo()[Lcom/hunantv/media/player/c/b;
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getMediaMeta()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/hunantv/media/player/g;->a(Landroid/os/Bundle;)Lcom/hunantv/media/player/g;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object v1, p0, Lcom/hunantv/media/player/g;->f:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/hunantv/media/player/g;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/player/g$a;

    new-instance v2, Lcom/hunantv/media/player/c/b;

    invoke-direct {v2, v1}, Lcom/hunantv/media/player/c/b;-><init>(Lcom/hunantv/media/player/g$a;)V

    iget-object v3, v1, Lcom/hunantv/media/player/g$a;->c:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/hunantv/media/player/c/b;->a(I)V

    goto :goto_2

    :cond_2
    iget-object v3, v1, Lcom/hunantv/media/player/g$a;->c:Ljava/lang/String;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/hunantv/media/player/g$a;->c:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/hunantv/media/player/c/b;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/hunantv/media/player/c/b;

    return-object p0

    :cond_6
    :goto_3
    return-object v0
.end method

.method public getTrafficStatisticByteCount()J
    .locals 3

    const/16 v0, 0x4eec

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVVTimeStatisticDLPT()J
    .locals 3

    const/16 v0, 0x4fb9

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVVTimeStatisticT1()J
    .locals 3

    const/16 v0, 0x4fb1

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVVTimeStatisticT2()J
    .locals 3

    const/16 v0, 0x4fb2

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVVTimeStatisticT3()J
    .locals 3

    const/16 v0, 0x4fb3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVVTimeStatisticT4()J
    .locals 3

    const/16 v0, 0x4fb4

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVVTimeStatisticT5()J
    .locals 3

    const/16 v0, 0x4fb5

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVVTimeStatisticT6()J
    .locals 3

    const/16 v0, 0x4fb6

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVVTimeStatisticVVBT()J
    .locals 3

    const/16 v0, 0x4fb8

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVVTimeStatisticVVT()J
    .locals 3

    const/16 v0, 0x4fb7

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoCachedBytes()J
    .locals 3

    const/16 v0, 0x4e27

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoCachedDuration()J
    .locals 3

    const/16 v0, 0x4e25

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoCachedPackets()J
    .locals 3

    const/16 v0, 0x4e29

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoDarDen()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoDarDen:I

    return p0
.end method

.method public getVideoDarNum()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoDarNum:I

    return p0
.end method

.method public getVideoDecodeFramesPerSecond()F
    .locals 2

    const/16 v0, 0x2711

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyFloat(IF)F

    move-result p0

    return p0
.end method

.method public getVideoDecoder()I
    .locals 3

    const/16 v0, 0x4e23

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoHeight:I

    return p0
.end method

.method public getVideoOutputFramesPerSecond()F
    .locals 2

    const/16 v0, 0x2712

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyFloat(IF)F

    move-result p0

    return p0
.end method

.method public getVideoParDen()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoParDen:I

    return p0
.end method

.method public getVideoParNum()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoParNum:I

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoSarDen:I

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoSarNum:I

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoWidth:I

    return p0
.end method

.method public getWanosAudioEffectChoice()I
    .locals 3

    const/16 v0, 0x7532

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public isAbortRequest()Z
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_isAbortRequest()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLooping()Z
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getLoopCount()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMediaCodecSWRender()Z
    .locals 4

    const v0, 0x13897

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPlayable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public native isPlaying()Z
.end method

.method public isSupportedSnapshot()Z
    .locals 4

    const v0, 0x13896

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_getPropertyLong(IJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVideoRecording()Z
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_isVideoRecording()Z

    move-result p0

    return p0
.end method

.method public loopSwitchVideoSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;III)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_loopswitchSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;III)I

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

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_loopswitchSource(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public maybeUpdateAudioTimestamp()V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->enableUpdateAudioTimestamp()V

    return-void
.end method

.method public nativeCrashTest(I)V
    .locals 3

    const v0, 0x15f91

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V

    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->stayAwake(Z)V

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_pause()V

    return-void
.end method

.method public pauseLoadData(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_pauseLoadData(I)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mIsReleased:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mCurBufferingPercent:I

    iput v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mBufferedPercent:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mBufferedPositionMs:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mCurrentRecFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->stayAwake(Z)V

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->updateSurfaceScreenOn()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->resetListeners()V

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mCurBufferingPercent:I

    iput v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mBufferedPercent:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mBufferedPositionMs:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mCurrentRecFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->stayAwake(Z)V

    iget-object v2, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWeakImgoPlayer:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_reset(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mEventHandler:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoWidth:I

    iput v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mVideoHeight:I

    return-void
.end method

.method public resetListeners()V
    .locals 1

    invoke-super {p0}, Lcom/hunantv/media/player/a;->resetListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mOnMediaCodecSelectListener:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnMediaCodecSelectListener;

    return-void
.end method

.method public seekTo(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_seekTo(J)V

    return-void
.end method

.method public seekTo(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_seekTo2(JI)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setStreamSelected(IZ)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public native setCrashRecordPath(Ljava/lang/String;)V
.end method

.method public setDataSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setDataSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;I)V

    return-void
.end method

.method public setDataSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setDataSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;I)V

    return-void
.end method

.method public setDataSource(Lcom/hunantv/media/player/libnative/IMediaDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setDataSource(Lcom/hunantv/media/player/libnative/IMediaDataSource;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setDataSourceFd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    throw p0
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

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mCurBufferingPercent:I

    iput v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mBufferedPercent:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mBufferedPositionMs:J

    iput-object p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mDataSource:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setVideoSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->updateSurfaceScreenOn()V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setVideoSurfaceKey(Landroid/view/Surface;I)V

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->updateSurfaceScreenOn()V

    return-void
.end method

.method public setDrmLicensePrepared(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setDrmLicensePrepared(I)V

    return-void
.end method

.method public setDrmLicensePrepared(Landroid/media/MediaCrypto;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setDrmLicensePrepared(ILandroid/media/MediaCrypto;)V

    return-void
.end method

.method public setFrameImageAtTime(Ljava/lang/String;JJIII)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setFrameImageAtTime(Ljava/lang/String;JJIII)V

    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    return-void
.end method

.method public setKeyFrameInfoFileBuf([B)I
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setVideoKeyFrameInfo([B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p0, -0x20

    return p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p0, -0x1f

    return p0
.end method

.method public setLogEnabled(Z)V
    .locals 0

    return-void
.end method

.method public native setLogReport(II)V
.end method

.method public setLoopABPlay(ZJJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoopABPlay enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",aPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",bPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide p2, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide p4, v0

    :goto_1
    const p1, 0x1388a

    invoke-direct/range {p0 .. p5}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLongab(IJJ)V

    return-void
.end method

.method public setLoopSeekPlay(ZJ)V
    .locals 8

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    const v3, 0x13894

    move-object v2, p0

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLongab(IJJ)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 4

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "loop"

    int-to-long v1, p1

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->setOption(ILjava/lang/String;J)V

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setLoopCount(I)V

    return-void
.end method

.method public setNETIsBroken(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const p1, 0x15f9c

    invoke-direct {p0, p1, v0, v1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V

    return-void
.end method

.method public setOnMediaCodecSelectListener(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnMediaCodecSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mOnMediaCodecSelectListener:Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnMediaCodecSelectListener;

    return-void
.end method

.method public setOption(ILjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setOption(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setOption(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p1, v0

    const/16 v1, 0x2713

    if-ltz v0, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyFloat(IF)V

    goto :goto_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setPlaybackStep(I)V
    .locals 3

    const/16 v0, 0x7531

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V

    return-void
.end method

.method public setPropertyLong(IJ)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mScreenOnWhilePlaying:Z

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->updateSurfaceScreenOn()V

    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setVideoSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->updateSurfaceScreenOn()V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;I)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setVideoSurfaceKey(Landroid/view/Surface;I)V

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->updateSurfaceScreenOn()V

    return-void
.end method

.method public setVideoFrameTimeClockNotify(JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->setVideoFrameTimePTSClockNotify(JJ)V

    return-void
.end method

.method public setVideoFrameTimeMsClockNotify(J)V
    .locals 1

    const v0, 0x13881

    invoke-direct {p0, v0, p1, p2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V

    return-void
.end method

.method public setVideoFrameTimePTSClockNotify(JJ)V
    .locals 1

    const v0, 0x13882

    invoke-direct {p0, v0, p1, p2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V

    const p1, 0x13883

    invoke-direct {p0, p1, p3, p4}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V

    return-void
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/high16 v2, 0x20000000

    or-int/2addr p2, v2

    const-class v2, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method public setWanosAudioEffectChoice(I)V
    .locals 3

    const/16 v0, 0x7532

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setPropertyLong(IJ)V

    return-void
.end method

.method public setWanosAudioEffectConfig([B)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_setWanosAudioEffectConfig([B)I

    move-result p0

    return p0
.end method

.method public smoothSwitchVideoSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;IIIILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smoothSwitchVideoSource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",switch_mod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",is_smooth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",arg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_smoothswitchSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;IIIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public smoothSwitchVideoSource(Ljava/lang/String;IIIILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smoothSwitchVideoSource key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",switch_mod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",is_smooth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",arg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p6}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_smoothswitchSource(Ljava/lang/String;IIIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->stayAwake(Z)V

    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_start()V

    return-void
.end method

.method public startRecordVideo(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_recordVideo(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mCurrentRecFile:Ljava/lang/String;

    :cond_0
    return v0
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mCurBufferingPercent:I

    iput v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mBufferedPercent:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mBufferedPositionMs:J

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->stayAwake(Z)V

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopRecordVideo()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->mCurrentRecFile:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_recordVideo(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public switchVideoSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_switchSource(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;Ljava/lang/String;III)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p1, -0x4

    if-eq p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "player object VideoState is NULL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "imgo data source obj is NULL or not enable imgods"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->_switchSource(Ljava/lang/String;III)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p1, -0x4

    if-eq p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "player object VideoState is NULL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "imgo data source obj is NULL or not enable imgods"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
