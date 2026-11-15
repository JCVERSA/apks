.class public Lcom/transsion/tranplayer/TranMediaPlayer;
.super Lcom/transsion/tranplayer/AbstractMediaPlayer;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/IVLCVout$Callback;
.implements Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;
.implements Lcom/transsion/tranplayer/MediaPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;,
        Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;,
        Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;
    }
.end annotation


# static fields
.field public static final SOURCE_DIFF_TIME:I = 0xbb8

.field public static final SOURCE_TYPE_FILE:I = 0x3

.field public static final SOURCE_TYPE_PATH:I = 0x2

.field public static final SOURCE_TYPE_UNKNOWN:I = 0x0

.field public static final SOURCE_TYPE_URI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TranMediaPlayer"

.field private static final sResolverExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final sTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private bWillToSetSurface:Z

.field private mAOpensles:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioSessionId:I

.field private mAudioTracks:I

.field private mContext:Landroid/content/Context;

.field private mCurrentAudioTrack:I

.field private final mCurrentCancellationSignal:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/CancellationSignal;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMedia:Lcom/transsion/tranplayer/Media;

.field private mCurrentPosition:J

.field private mDuration:J

.field private mEofPaused:Z

.field private final mFadeGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFd:I

.field private mFile:Landroid/os/ParcelFileDescriptor;

.field private mFirstSetDataSource:Z

.field private mHadVideoCodec:Z

.field private mHasVideo:Z

.field private mIsBuffering:Z

.field private mIsFirstTimeChanged:Z

.field private mIsMediaCodec:Z

.field private mIsMute:Z

.field private mIsPlayingBeforeSeek:Z

.field private mIsPrepared:Z

.field private mIsReseting:Z

.field private final mIsVlcReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsprepareing:Z

.field private mLastSeekTime:J

.field private mLastVolume:I

.field private mLeftVolume:F

.field private mLength:J

.field private mLibVLC:Lcom/transsion/tranplayer/LibVLC;

.field private mListenVideo:Z

.field private mLivePhotoLongpress:Z

.field private mLock:Ljava/lang/Object;

.field private mLosePic_seek:Z

.field private mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

.field private mNeedseek:Z

.field private mNoSubAutodetect:Z

.field private mOffset:J

.field private mOpenError:Z

.field private mOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPIPVideoMode:Z

.field private mPath:Ljava/lang/String;

.field private mPausePosition:J

.field private mPaused:Z

.field private mPlayRequested:Z

.field private mPreferSoftDecoder:Z

.field private mReleaseMediaPlayer:Z

.field private mRenderedPicturePts:J

.field private mResolverFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mRightVolume:F

.field private mSarDen:I

.field private mSarNum:I

.field private mSeekCompleteConunt:J

.field private mSeekPosition:J

.field private mSourceType:I

.field private mSubtitleLoad:Z

.field private mSubtitlesTextureView:Landroid/view/TextureView;

.field private mSubtitlesView:Landroid/view/SurfaceView;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUri:Landroid/net/Uri;

.field private mVOpengl:Z

.field private mVersion:Ljava/lang/String;

.field private mVideoCodecDeleted:Z

.field private mVideoCodecName:Ljava/lang/String;

.field private mVideoFPS:F

.field private mVideoHeight:I

.field private mVideoSeekTime:J

.field private mVideoStartTime:J

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrxa;

    invoke-direct {v0}, Lrxa;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->sTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lsxa;

    invoke-direct {v0}, Lsxa;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->sResolverExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/tranplayer/AbstractMediaPlayer;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFadeGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentCancellationSignal:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsReseting:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsprepareing:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsPrepared:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsVlcReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitleLoad:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecDeleted:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mHadVideoCodec:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPaused:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->bWillToSetSurface:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLosePic_seek:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOpenError:Z

    sget-object v3, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "TranMediaPlayer {"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSourceType:I

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mDuration:J

    iput-wide v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentPosition:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSeekCompleteConunt:J

    iput-wide v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mRenderedPicturePts:J

    iput-wide v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOffset:J

    iput-wide v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLength:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoWidth:I

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoHeight:I

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSarNum:I

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSarDen:I

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFd:I

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsReseting:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsprepareing:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsPrepared:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsBuffering:Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsFirstTimeChanged:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mHasVideo:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mReleaseMediaPlayer:Z

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentAudioTrack:I

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result p1

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mAudioSessionId:I

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setAudioSessionId(I)V

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsPlayingBeforeSeek:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->bWillToSetSurface:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLeftVolume:F

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mRightVolume:F

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    iput-wide v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPausePosition:J

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPIPVideoMode:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    iput-wide v6, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoStartTime:J

    iput-wide v6, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoSeekTime:J

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoFPS:F

    iput-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMediaCodec:Z

    iput-wide v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSeekPosition:J

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFirstSetDataSource:Z

    const-string p1, "2026.08.17-0"

    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVersion:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOpenError:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLivePhotoLongpress:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TranMediaPlayer sdkVersion:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private ReleasePlayer()V
    .locals 4

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasePlayer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->setVolume(FF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x46

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    :cond_0
    move v1, v0

    :goto_0
    iget-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsprepareing:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsprepareing:Z

    :cond_1
    const-wide/16 v2, 0x32

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sget-object v2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "not Prepared"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->releaseMediaPlayer()V

    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "releasePlayer }"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lcom/transsion/tranplayer/TranMediaPlayer;[ILandroid/content/Context;Landroid/net/Uri;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/tranplayer/TranMediaPlayer;->lambda$openAssetFileDescriptorWithRetry$2([ILandroid/content/Context;Landroid/net/Uri;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/transsion/tranplayer/TranMediaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsVlcReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/transsion/tranplayer/TranMediaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFadeGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/transsion/tranplayer/TranMediaPlayer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/transsion/tranplayer/TranMediaPlayer;)Lcom/transsion/tranplayer/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/transsion/tranplayer/TranMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastSeekTime:J

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/transsion/tranplayer/TranMediaPlayer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/TranMediaPlayer;->fadedOutToSeek(J)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->lambda$static$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private cancelPendingResolverTask()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mResolverFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "cancelPendingResolverTask"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentCancellationSignal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mResolverFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mResolverFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method private fadedOutToSeek(J)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsVlcReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSeekPosition:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faded out, seek to time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/tranplayer/MediaPlayer;->setTime(JZ)J

    iput-wide p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentPosition:J

    :cond_0
    return-void
.end method

.method private getMediaSourcePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :try_start_1
    const-string p1, "_data"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object p1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_1
    move-object p0, v0

    goto :goto_1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, p0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private getUriExtension()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p0, "_display_name"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p0

    :catch_0
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method private initMediaPlayer(Z)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p1}, Lcom/transsion/tranplayer/MediaPlayer;->play()V

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setListenVideoMode(Z)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$openAssetFileDescriptorWithRetry$2([ILandroid/content/Context;Landroid/net/Uri;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Attempt "

    const-string v4, "ms"

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v0, v2

    if-ge v6, v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker cancelled before attempt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :try_start_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iget-object v9, v1, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentCancellationSignal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/transsion/tranplayer/TranMediaPlayer;->sTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v11, Ltxa;

    invoke-direct {v11, v0}, Ltxa;-><init>(Landroid/os/CancellationSignal;)V

    aget v12, v2, v6

    int-to-long v12, v12

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v10, v11, v12, v13, v14}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v11, 0x0

    :try_start_1
    const-string v12, "r"
    :try_end_1
    .catch Landroid/os/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v13, p3

    :try_start_2
    invoke-virtual {v9, v13, v12, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-interface {v10, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    if-eqz v0, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v14
    :try_end_2
    .catch Landroid/os/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-nez v9, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-object/from16 v9, p5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    move-object/from16 v9, p5

    :try_start_4
    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_1
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Success on attempt "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", took: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v7

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v10, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, v1, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentCancellationSignal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_9

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_2
    move-object/from16 v9, p5

    goto :goto_5

    :catch_3
    :goto_3
    move-object/from16 v9, p5

    goto :goto_6

    :cond_2
    move-object/from16 v9, p5

    invoke-interface {v10, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_4
    iget-object v0, v1, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentCancellationSignal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v13, p3

    goto :goto_2

    :goto_5
    :try_start_6
    sget-object v7, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " failed: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {v10, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_4

    :catch_5
    move-object/from16 v13, p3

    goto :goto_3

    :catch_6
    :goto_6
    :try_start_8
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " canceled after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-interface {v10, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    :goto_7
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_3

    const-wide/16 v7, 0x14

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :goto_8
    invoke-interface {v10, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v1, v1, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentCancellationSignal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Worker thread interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    :goto_9
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TranMP-Timeout"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static synthetic lambda$static$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TranMP-Resolver"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private openAssetFileDescriptorWithRetry(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    .locals 12

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mResolverFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "Cancelling previous resolver task"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentCancellationSignal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mResolverFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v2, 0x6

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    sget-object v10, Lcom/transsion/tranplayer/TranMediaPlayer;->sResolverExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Luxa;

    move-object v2, v11

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v0

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Luxa;-><init>(Lcom/transsion/tranplayer/TranMediaPlayer;[ILandroid/content/Context;Landroid/net/Uri;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mResolverFuture:Ljava/util/concurrent/Future;

    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "resolver timeout after 3 seconds"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentCancellationSignal:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/CancellationSignal;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_2
    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mResolverFuture:Ljava/util/concurrent/Future;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mResolverFuture:Ljava/util/concurrent/Future;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    :goto_0
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/AssetFileDescriptor;

    return-object p0

    :array_0
    .array-data 4
        0x64
        0xc8
        0x190
        0x1f4
        0x258
        0x2bc
    .end array-data
.end method

.method private parseHeader(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVOpengl:Z

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mAOpensles:Z

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPreferSoftDecoder:Z

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mNoSubAutodetect:Z

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_9

    const-string v3, "prefer-soft-decoder"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "1"

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    iput-boolean v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPreferSoftDecoder:Z

    :cond_0
    const-string v3, "codec-is-copyright"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v3, "start-time"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentPosition:J

    goto :goto_0

    :cond_2
    move-wide v6, v1

    :goto_0
    const-string v3, "prepare-paused"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    :cond_3
    const-string v3, "pause-after-eof"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    :cond_4
    const-string v3, "audio-track"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mAudioTracks:I

    :cond_5
    const-string v3, "vlc-video-opengl"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    iput-boolean v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVOpengl:Z

    :cond_6
    const-string v3, "no-sub-autodetect"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    iput-boolean v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mNoSubAutodetect:Z

    :cond_7
    const-string v3, "listen-video"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    iput-boolean v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    :cond_8
    const-string v3, "audio-setmute"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    iput-boolean v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    goto :goto_1

    :cond_9
    move-wide v6, v1

    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    if-nez p1, :cond_b

    new-instance p1, Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    :cond_b
    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_c
    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "-vv"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--network-caching=2000"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--file-caching=3000"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--audio-time-stretch"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--no-volume-save"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--android-display-chroma"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "YV12"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--sub-notify"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--demux"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "avformat,any"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "avcodec-hurry-up"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--codec"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPreferSoftDecoder:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "avcodec,all"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "mediacodec_jni,all"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mAOpensles:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--aout=opensles,none"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--aout=android_audiotrack,none"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVOpengl:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--vout=gles2,none"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--vout=android_display,none"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    iget-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--listen-video-mode"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    if-eqz v0, :cond_11

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v3, "--codec-is-copyright"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    cmp-long p1, v6, v1

    if-eqz p1, :cond_12

    long-to-float p1, v6

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--start-time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v0, "--start-paused"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mAudioTracks:I

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--audio-track="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mAudioTracks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getAudioSessionId()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--audiotrack-session-id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v0, "--play-and-pause"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mNoSubAutodetect:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string v0, "--no-sub-autodetect-file"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    const-string p1, "--audio-ismute"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method private preInitPlayer()V
    .locals 11

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "preInitPlayer into {"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->releaseMediaPlayer()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mReleaseMediaPlayer:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoStartTime:J

    new-instance v2, Lcom/transsion/tranplayer/LibVLC;

    iget-object v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOptions:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/transsion/tranplayer/LibVLC;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    new-instance v3, Lcom/transsion/tranplayer/MediaPlayer;

    invoke-direct {v3, v2}, Lcom/transsion/tranplayer/MediaPlayer;-><init>(Lcom/transsion/tranplayer/LibVLC;)V

    iput-object v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v3, p0}, Lcom/transsion/tranplayer/MediaPlayer;->setEventListener(Lcom/transsion/tranplayer/MediaPlayer$EventListener;)V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsVlcReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSourceType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const-string p0, "do not have a valid data source, please call setDataSource"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Lcom/transsion/tranplayer/Media;

    iget-object v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    iget v6, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFd:I

    iget-wide v7, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOffset:J

    iget-wide v9, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLength:J

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/transsion/tranplayer/Media;-><init>(Lcom/transsion/tranplayer/LibVLC;IJJ)V

    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/transsion/tranplayer/Media;

    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    iget-object v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPath:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lcom/transsion/tranplayer/Media;-><init>(Lcom/transsion/tranplayer/LibVLC;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/transsion/tranplayer/Media;

    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    iget-object v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Lcom/transsion/tranplayer/Media;-><init>(Lcom/transsion/tranplayer/LibVLC;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    :goto_0
    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    const-string v4, ":network-caching=2000"

    invoke-virtual {v2, v4}, Lcom/transsion/tranplayer/Media;->addOption(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    const-string v4, ":file-caching=3000"

    invoke-virtual {v2, v4}, Lcom/transsion/tranplayer/Media;->addOption(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPreferSoftDecoder:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    const-string v4, ":codec=avcodec,all"

    invoke-virtual {v2, v4}, Lcom/transsion/tranplayer/Media;->addOption(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    const-string v4, ":codec=mediacodec_jni,all"

    invoke-virtual {v2, v4}, Lcom/transsion/tranplayer/Media;->addOption(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;

    invoke-virtual {v2, v4}, Lcom/transsion/tranplayer/MediaPlayer;->setMedia(Lcom/transsion/tranplayer/Media;)V

    iget-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mAOpensles:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const-string v4, "opensles"

    invoke-virtual {v2, v4}, Lcom/transsion/tranplayer/MediaPlayer;->setAudioOutput(Ljava/lang/String;)Z

    :cond_4
    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitlesView:Landroid/view/SurfaceView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v2}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitlesView:Landroid/view/SurfaceView;

    invoke-interface {v2, v4}, Lcom/transsion/tranplayer/IVLCVout;->setSubtitlesView(Landroid/view/SurfaceView;)V

    :cond_5
    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitlesTextureView:Landroid/view/TextureView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v2}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitlesTextureView:Landroid/view/TextureView;

    invoke-interface {v2, v4}, Lcom/transsion/tranplayer/IVLCVout;->setSubtitlesView(Landroid/view/TextureView;)V

    :cond_6
    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v2}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurface:Landroid/view/Surface;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/transsion/tranplayer/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v2}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/transsion/tranplayer/IVLCVout;->addCallback(Lcom/transsion/tranplayer/IVLCVout$Callback;)V

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v2}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/transsion/tranplayer/IVLCVout;->attachViews(Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;)V

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v2, v3}, Lcom/transsion/tranplayer/MediaPlayer;->setSurface(Z)Z

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v2, v1}, Lcom/transsion/tranplayer/MediaPlayer;->setSurfaceDestroyed(Z)Z

    :cond_7
    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFirstSetDataSource:Z

    const-string p0, "preInitPlayer }"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 4

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "releaseMediaPlayer {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsVlcReleasing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "releaseMediaPlayer return  } "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFadeGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/tranplayer/IVLCVout;->areViewsAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/tranplayer/IVLCVout;->removeCallback(Lcom/transsion/tranplayer/IVLCVout$Callback;)V

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/tranplayer/IVLCVout;->detachViews()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "detachViews failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/MediaPlayer;->setEventListener(Lcom/transsion/tranplayer/MediaPlayer$EventListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "setEventListener(null) failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/tranplayer/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "MediaPlayer.released"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    goto/16 :goto_7

    :goto_3
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_a
    sget-object v2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "MediaPlayer.release failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    const-string v0, "MediaPlayer.released"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_5
    move-exception p0

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "MediaPlayer.released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v0, :cond_4

    :try_start_c
    invoke-virtual {v0}, Lcom/transsion/tranplayer/Media;->release()V

    iput-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentMedia:Lcom/transsion/tranplayer/Media;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "Media.released"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_5

    :catchall_6
    move-exception v0

    :try_start_e
    sget-object v2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "Media.release failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    const-string v0, "Media.released"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_7
    move-exception p0

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Media.released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v0, :cond_5

    :try_start_10
    invoke-virtual {v0}, Lcom/transsion/tranplayer/LibVLC;->release()V

    iput-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :try_start_11
    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "LibVLC.released"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_6

    :catchall_8
    move-exception p0

    :try_start_12
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "LibVLC.release failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :try_start_13
    const-string p0, "LibVLC.released"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_9
    move-exception p0

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "LibVLC.released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :cond_5
    :goto_6
    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "releaseMediaPlayer }"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_7
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "releaseMediaPlayer }"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method

.method private setVolumeFadeInOut(II)V
    .locals 4

    .line 10
    iget-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mDuration:J

    const-wide/16 v2, 0x2bc

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcom/transsion/tranplayer/util/AndroidUtil;->isRunningByMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    sget-object p1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVolumeFadeInOut. return : mDuration: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    .line 12
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setVolumeFadeInOut(IIJ)V

    return-void
.end method

.method private setVolumeFadeInOut(IIJ)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mDuration:J

    const-wide/16 v2, 0x2bc

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcom/transsion/tranplayer/util/AndroidUtil;->isRunningByMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setVolumeFadeInOut. return : mDuration: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mDuration:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeFadeInOut. current_volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " last_volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seekTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",mIsMute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVolume()I

    move-result v1

    if-eq p2, v1, :cond_1

    if-nez v1, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, p2

    :goto_0
    if-eq p1, v5, :cond_3

    .line 5
    iget-boolean p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    if-eqz p2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFadeGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v8

    .line 7
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/transsion/tranplayer/TranMediaPlayer$FadeRunnable;-><init>(Lcom/transsion/tranplayer/TranMediaPlayer;IIJI)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    .line 8
    :cond_3
    :goto_1
    const-string p1, "current_volume == last_volume return"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, -0x1

    cmp-long p1, p3, p1

    if-eqz p1, :cond_4

    .line 9
    invoke-direct {p0, p3, p4}, Lcom/transsion/tranplayer/TranMediaPlayer;->fadedOutToSeek(J)V

    :cond_4
    return-void
.end method

.method private shouldUseRetryForUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 10

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "shouldRetry_continue "

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/mnt/media_rw/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return p0

    :cond_2
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "media"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/external"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p1, "volume_name"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const-string p2, "external_primary"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    move p0, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p0

    :cond_4
    if-eqz v0, :cond_6

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0

    :catch_0
    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string p1, "shouldRetry_true content://media/external"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "com.android.externalstorage.documents"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/document/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string p1, "shouldRetry_true content://com.android.externalstorage.documents/document/"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    sget-object p1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldRetry_false "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private willToSetDisplay(Landroid/view/SurfaceHolder;)V
    .locals 10

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "willToSetDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/transsion/tranplayer/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/tranplayer/IVLCVout;->addCallback(Lcom/transsion/tranplayer/IVLCVout$Callback;)V

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/tranplayer/IVLCVout;->attachViews(Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;)V

    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/transsion/tranplayer/MediaPlayer;->setSurface(Z)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->bWillToSetSurface:Z

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v2, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setSurfaceDestroyed(Z)Z

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v2, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setListenVideoMode(Z)Z

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getDuration()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    if-nez v6, :cond_1

    sub-long v6, v4, v2

    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-gez v8, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0xbb8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", duration:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ". it\'s close to duration when resume playback"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v3, p1, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->seekTo(JZZ)V

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, p1, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->seekTo(JZZ)V

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p1}, Lcom/transsion/tranplayer/MediaPlayer;->play()V

    iget-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPaused:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p1, v1}, Lcom/transsion/tranplayer/MediaPlayer;->setRefreshFirstFrame(Z)Z

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0, v1}, Lcom/transsion/tranplayer/MediaPlayer;->setDropAudioFrames(Z)Z

    :cond_5
    const-string p0, "willToSetDisplay }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "addTimedTextSource {"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/tranplayer/MediaPlayer;->addSlave(ILjava/lang/String;Z)Z

    :cond_0
    const-string p0, "addTimedTextSource }"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deselectTrack(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "deselectTrack {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setVideoTrack(I)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setAudioTrack(I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setSpuTrack(I)Z

    :cond_2
    :goto_0
    const-string p0, "deselectTrack }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public finalize()V
    .locals 2

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "finalize {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mReleaseMediaPlayer:Z

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsReseting:Z

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->releaseMediaPlayer()V

    invoke-virtual {p0}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->resetListeners()V

    iput-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurface:Landroid/view/Surface;

    iput-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitlesView:Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitlesTextureView:Landroid/view/TextureView;

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFd:I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsprepareing:Z

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPaused:Z

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->bWillToSetSurface:Z

    iput-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "finalize }"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAudioSessionId()I
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getAudioSessionId {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioSessionId ---- mAudioSessionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mAudioSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mAudioSessionId:I

    return p0
.end method

.method public getAudioTrack()I
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getAudioTrack {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getAudioTrack()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioTrack   currentAudioTrack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getAudioTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getAudioTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    move-result-object p0

    return-object p0
.end method

.method public getAudioTracksCount()I
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getAudioTracksCount {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getAudioTracksCount()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioTracksCount   audioTracksCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getCurrentPosition()J
    .locals 6

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPaused:Z

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPausePosition:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    return-wide v3

    :cond_0
    iget-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    if-eqz v3, :cond_1

    iget-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mDuration:J

    return-wide v0

    :cond_1
    iget-wide v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSeekPosition:J

    cmp-long v3, v3, v1

    if-ltz v3, :cond_3

    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaPlayer;->getTime()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSeekPosition:J

    move-wide v1, v0

    goto :goto_0

    :cond_2
    move-wide v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaPlayer;->getTime()J

    move-result-wide v1

    :cond_4
    :goto_0
    return-wide v1
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getDataSource {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSourceType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFd:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v1, "getDataSource }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaPlayer;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mDuration:J

    :cond_0
    iget-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mDuration:J

    return-wide v0
.end method

.method public getIsVideoMediaCodec()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMediaCodec:Z

    return p0
.end method

.method public getListenVideoMode()Z
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getListenVideoMode {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getListenVideoMode  listenVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getMediaInfo()Lcom/transsion/tranplayer/MediaInfo;
    .locals 1

    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "getMediaInfo {"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getMediaInfo }"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedTrack(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getSelectedTrack {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getSpuTrack()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getVideoTrack()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getAudioTrack()I

    move-result p0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSelectedTrack "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getSpeed()F
    .locals 2

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getSpeed {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getRate()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    const-string v1, "getSpeed }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getSpuTrack()I
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getVideoTrack {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getSpuTrack()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoTrack   spuTrack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getSpuTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getSpuTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    move-result-object p0

    return-object p0
.end method

.method public getSpuTracksCount()I
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getVideoTracksCount {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getSpuTracksCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoTracksCount  spuTracksCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getTimedTextDelay()J
    .locals 4

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getTimedTextDelay {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getSpuDelay()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimedTextDelay delay:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " }"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public getTrackInfo()[Lcom/transsion/tranplayer/ITrackInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getTrackInfo {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v1, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVideoTracksCount()I

    move-result v1

    const-string v2, " name "

    const-string v3, "id "

    const/4 v4, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVideoTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v5, v1

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v1, v6

    iget v8, v7, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->id:I

    if-gez v8, :cond_0

    goto :goto_1

    :cond_0
    new-instance v8, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;

    invoke-direct {v8}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;-><init>()V

    iget-object v9, v7, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->setLanguage(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->setTrackType(I)V

    sget-object v9, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getAudioTracksCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getAudioTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v5, v1

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v1, v6

    iget v8, v7, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->id:I

    if-gez v8, :cond_2

    goto :goto_3

    :cond_2
    new-instance v8, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;

    invoke-direct {v8}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;-><init>()V

    iget-object v9, v7, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->setLanguage(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->setTrackType(I)V

    sget-object v9, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getSpuTracksCount()I

    move-result v1

    if-lez v1, :cond_5

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getSpuTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v1, p0

    :goto_4
    if-ge v4, v1, :cond_5

    aget-object v5, p0, v4

    iget v6, v5, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->id:I

    if-gez v6, :cond_4

    goto :goto_5

    :cond_4
    new-instance v6, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;

    invoke-direct {v6}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;-><init>()V

    iget-object v7, v5, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->setLanguage(Ljava/lang/String;)V

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->setTrackType(I)V

    sget-object v7, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getTrackInfo success }"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/tranplayer/ITrackInfo;

    return-object p0

    :cond_6
    const-string p0, "getTrackInfo failed }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoCodecName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecName:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoFPS()F
    .locals 0

    iget p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoFPS:F

    return p0
.end method

.method public getVideoHeight()I
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoHeight:I

    return p0
.end method

.method public getVideoSarDen()I
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoSarDen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSarDen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSarDen:I

    return p0
.end method

.method public getVideoSarNum()I
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoSarNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSarNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSarNum:I

    return p0
.end method

.method public getVideoTrack()I
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getVideoTrack {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getVideoTrack()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoTrack   currentVideoTrack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getVideoTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getVideoTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    move-result-object p0

    return-object p0
.end method

.method public getVideoTracksCount()I
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getVideoTracksCount {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getVideoTracksCount()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoTracksCount   videoTracksCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getVideoWidth()I
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoWidth:I

    return p0
.end method

.method public isLooping()Z
    .locals 2

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "isLooping {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->isLooping()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "isLooping }"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsReseting:Z

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaPlayer;->isPlaying()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onEvent(Lcom/transsion/tranplayer/MediaPlayer$Event;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget v2, v1, Lcom/transsion/tranplayer/VLCEvent;->type:I

    const/16 v4, -0x2779

    const-string v5, " duration "

    const-string v6, " currentposition "

    const-wide/16 v7, 0xbb8

    const-string v9, "http"

    const-string v10, " "

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    packed-switch v2, :pswitch_data_0

    .line 3
    :pswitch_0
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent unhandled event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/transsion/tranplayer/VLCEvent;->type:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getNotifyInfo()I

    move-result v1

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v14, v14}, Lcom/transsion/tranplayer/TranMediaPlayer;->seekTo(JZZ)V

    .line 7
    :cond_0
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent receive infotype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 8
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getUseMediaCodec()Z

    move-result v2

    iput-boolean v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMediaCodec:Z

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getVideoCodecName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecName:Ljava/lang/String;

    .line 10
    sget-object v2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEvent receive mIsMediaCodec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMediaCodec:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " codec: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getVideoCodecName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 11
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getVideoFPS()F

    move-result v1

    iput v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoFPS:F

    .line 12
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent receive mfps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoFPS:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 13
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getVideoCodecStatus()I

    move-result v1

    .line 14
    sget-object v2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEvent receive mVideoCodecDeleted codec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v13, :cond_3

    .line 15
    iput-boolean v13, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecDeleted:Z

    .line 16
    iput-boolean v14, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mHadVideoCodec:Z

    .line 17
    iget-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->bWillToSetSurface:Z

    if-eqz v1, :cond_1

    .line 18
    const-string v1, "onEvent receive  bWillToSetSurface "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 20
    :cond_1
    iget-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecDeleted:Z

    if-eqz v1, :cond_2

    .line 21
    const-string v1, "onEvent receive mVideoCodecDeleted notifyOnCodecDeleteComplete() "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnCodecDeleteComplete()V

    .line 23
    :cond_2
    iget-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPlayRequested:Z

    if-eqz v1, :cond_14

    const-wide/16 v1, 0x46

    .line 24
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onEvent receive playRequested"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->start()V

    goto/16 :goto_4

    .line 27
    :cond_3
    iput-boolean v13, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mHadVideoCodec:Z

    .line 28
    iput-boolean v14, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecDeleted:Z

    goto/16 :goto_4

    .line 29
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getSubtitleTypeId()I

    move-result v2

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getSubtitleType()I

    move-result v1

    .line 31
    sget-object v3, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvent receive spuid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnSubTitleTypeChanged(II)V

    goto/16 :goto_4

    .line 33
    :pswitch_6
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onEvent receive DisableAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x186aa

    .line 34
    invoke-virtual {v0, v1, v14}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_4

    .line 35
    :pswitch_7
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onEvent receive DisableVideo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x186a9

    .line 36
    invoke-virtual {v0, v1, v14}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_4

    .line 37
    :pswitch_8
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onEvent receive EofPaused"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getDuration()J

    move-result-wide v14

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    cmp-long v10, v14, v11

    if-lez v10, :cond_4

    sub-long v10, v14, v2

    cmp-long v7, v10, v7

    if-lez v7, :cond_5

    .line 40
    :cond_4
    iget-object v7, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mUri:Landroid/net/Uri;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v0, v13, v4}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnError(II)Z

    goto/16 :goto_4

    .line 43
    :cond_5
    iget-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsFirstTimeChanged:Z

    if-nez v1, :cond_6

    const-string v1, ".mng"

    invoke-direct/range {p0 .. p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getUriExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, -0x3f2

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnError(II)Z

    goto/16 :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 45
    iput-boolean v13, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    .line 46
    iget-object v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setVolume(I)I

    .line 47
    iput v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    .line 48
    iput-boolean v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsPlayingBeforeSeek:Z

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnCompletion()V

    goto/16 :goto_4

    .line 50
    :pswitch_9
    sget-object v3, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvent receive SubtitleLoad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getSubtitleLoadStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getSubtitleLoadStatus()I

    move-result v3

    if-ne v3, v13, :cond_7

    goto :goto_0

    :cond_7
    const/4 v13, 0x0

    :goto_0
    iput-boolean v13, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitleLoad:Z

    const v2, 0x186a4

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getSubtitleLoadStatus()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_4

    .line 53
    :pswitch_a
    sget-object v2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEvent receive Subtitle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getSubtitleStart()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getSubtitleDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getSubtitleText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v2, Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getSubtitleText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getSubtitleStart()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getSubtitleDuration()I

    move-result v1

    int-to-long v8, v1

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;-><init>(Ljava/lang/String;JJ)V

    .line 59
    invoke-virtual {v0, v2}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnTimedText(Lcom/transsion/tranplayer/ITimedText;)V

    goto/16 :goto_4

    .line 60
    :pswitch_b
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "onEvent receive Prepared"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 61
    iput-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsprepareing:Z

    .line 62
    iput-boolean v13, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsPrepared:Z

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnPrepared()V

    goto/16 :goto_4

    :pswitch_c
    move v1, v14

    .line 64
    sget-object v2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "onEvent receive Unsupported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x3f2

    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnError(II)Z

    goto/16 :goto_4

    :pswitch_d
    move v1, v14

    .line 66
    sget-object v2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "onEvent receive LosePicSerious"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x186a2

    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_4

    .line 68
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getVideoWidth()I

    move-result v2

    iput v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoWidth:I

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getVideoHeight()I

    move-result v2

    iput v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoHeight:I

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getVideoSarNum()I

    move-result v2

    iput v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSarNum:I

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getVideoSarDen()I

    move-result v1

    iput v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSarDen:I

    .line 72
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent receive VideoSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSarNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSarDen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoWidth:I

    iget v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoHeight:I

    iget v3, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSarNum:I

    iget v4, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSarDen:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    goto/16 :goto_4

    .line 74
    :pswitch_f
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "onEvent receive FirstPicDisplay"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-boolean v13, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsFirstTimeChanged:Z

    const/4 v2, 0x0

    .line 76
    iput-boolean v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecDeleted:Z

    .line 77
    iget-object v3, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v3, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setRefreshFirstFrame(Z)Z

    .line 78
    iget-wide v3, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoStartTime:J

    cmp-long v3, v3, v11

    if-lez v3, :cond_8

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoStartTime:J

    sub-long/2addr v3, v5

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEvent receive startvideotime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-wide v11, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoStartTime:J

    const v5, 0x186ab

    long-to-int v3, v3

    .line 82
    invoke-virtual {v0, v5, v3}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    .line 83
    :cond_8
    iget-wide v3, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoSeekTime:J

    cmp-long v3, v3, v11

    if-lez v3, :cond_9

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoSeekTime:J

    sub-long/2addr v3, v5

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEvent receive seektime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-wide v11, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoSeekTime:J

    const v5, 0x186ac

    long-to-int v3, v3

    .line 87
    invoke-virtual {v0, v5, v3}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    :cond_9
    const v3, 0x186a1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, v3, v2}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    .line 89
    iget-boolean v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsPlayingBeforeSeek:Z

    if-nez v2, :cond_14

    .line 90
    const-string v2, "mIsPlayingBeforeSeek pause "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->pause()V

    .line 92
    iput-boolean v13, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPaused:Z

    goto/16 :goto_4

    .line 93
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getEsChangedType()I

    move-result v3

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getEsChangedID()I

    move-result v1

    .line 95
    sget-object v4, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEvent receive ES "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v13, :cond_a

    const v3, 0x186a6

    .line 96
    invoke-virtual {v0, v3, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    if-ltz v1, :cond_14

    .line 97
    iget-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFirstSetDataSource:Z

    if-nez v1, :cond_14

    const-wide/16 v3, 0xa

    .line 98
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :catch_1
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1, v1}, Lcom/transsion/tranplayer/TranMediaPlayer;->seekTo(JZZ)V

    goto/16 :goto_4

    :cond_a
    if-nez v3, :cond_14

    const v2, 0x186a7

    .line 100
    invoke-virtual {v0, v2, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_4

    .line 101
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getVoutCount()I

    move-result v1

    .line 102
    iput-boolean v13, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mHasVideo:Z

    .line 103
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent receive Vout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 104
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getLengthChanged()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mDuration:J

    const v1, 0x186ad

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getAudioTracksCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    .line 106
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent receive LengthChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 107
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getPausable()Z

    move-result v0

    .line 108
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent receive PausableChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 109
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getSeekable()Z

    move-result v0

    .line 110
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent receive SeekableChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 111
    :pswitch_15
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getPositionChanged()F

    goto/16 :goto_4

    .line 112
    :pswitch_16
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getTimeChanged()J

    move-result-wide v3

    .line 113
    iget-wide v5, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentPosition:J

    cmp-long v1, v5, v11

    if-ltz v1, :cond_f

    iget-wide v5, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSeekCompleteConunt:J

    cmp-long v1, v5, v11

    if-lez v1, :cond_f

    .line 114
    iget-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mHasVideo:Z

    const-wide/16 v5, -0x1

    const/16 v7, 0x64

    if-eqz v1, :cond_c

    iget-boolean v8, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsFirstTimeChanged:Z

    if-eqz v8, :cond_c

    .line 115
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onEvent receive SeekComplete video "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-wide v5, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentPosition:J

    .line 117
    iget-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    if-nez v1, :cond_b

    iget-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPaused:Z

    if-nez v1, :cond_b

    .line 118
    iget v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    invoke-direct {v0, v7, v1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setVolumeFadeInOut(II)V

    .line 119
    iput v7, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    goto :goto_1

    .line 120
    :cond_b
    iget-object v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setVolume(I)I

    .line 121
    iput v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    .line 122
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnSeekComplete()V

    .line 123
    iget-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitleLoad:Z

    if-eqz v1, :cond_f

    .line 124
    new-instance v1, Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string v3, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTimedText;-><init>(Ljava/lang/String;JJ)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnTimedText(Lcom/transsion/tranplayer/ITimedText;)V

    goto :goto_3

    :cond_c
    if-eqz v1, :cond_d

    .line 126
    iget-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    if-eqz v1, :cond_f

    .line 127
    :cond_d
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onEvent receive SeekComplete audio "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-wide v5, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentPosition:J

    .line 129
    iget-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    if-nez v1, :cond_e

    .line 130
    iget v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    invoke-direct {v0, v7, v1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setVolumeFadeInOut(II)V

    .line 131
    iput v7, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    goto :goto_2

    .line 132
    :cond_e
    iget-object v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setVolume(I)I

    .line 133
    iput v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    .line 134
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnSeekComplete()V

    .line 135
    :cond_f
    :goto_3
    iget-wide v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSeekCompleteConunt:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSeekCompleteConunt:J

    goto/16 :goto_4

    .line 136
    :pswitch_17
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getErrorCode()I

    move-result v1

    .line 137
    sget-object v3, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvent receive EncounteredError "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 138
    iput-boolean v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsprepareing:Z

    .line 139
    iput-boolean v13, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOpenError:Z

    .line 140
    invoke-virtual {v0, v13, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnError(II)Z

    goto/16 :goto_4

    .line 141
    :pswitch_18
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onEvent receive EndReached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getDuration()J

    move-result-wide v2

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v14

    cmp-long v10, v2, v11

    if-lez v10, :cond_10

    sub-long v10, v2, v14

    cmp-long v7, v10, v7

    if-lez v7, :cond_11

    .line 144
    :cond_10
    iget-object v7, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mUri:Landroid/net/Uri;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v0, v13, v4}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnError(II)Z

    goto/16 :goto_4

    .line 147
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnCompletion()V

    goto/16 :goto_4

    .line 148
    :pswitch_19
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "onEvent receive Stopped event"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x389

    const/4 v2, 0x0

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_4

    :pswitch_1a
    move v2, v14

    .line 150
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "onEvent receive Paused event"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x388

    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_4

    :pswitch_1b
    move v2, v14

    .line 152
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "onEvent receive playing event"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x387

    .line 153
    invoke-virtual {v0, v1, v2}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    goto :goto_4

    :pswitch_1c
    move v2, v14

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;->getBuffering()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_12

    .line 155
    iget-boolean v1, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsBuffering:Z

    if-eqz v1, :cond_14

    .line 156
    iput-boolean v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsBuffering:Z

    const/16 v1, 0x2be

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    .line 158
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onEvent receive End Buffering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 159
    :cond_12
    iget-boolean v3, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsBuffering:Z

    if-nez v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 160
    sget-object v3, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "onEvent receive Start Buffering"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-boolean v13, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsBuffering:Z

    const/16 v3, 0x2bd

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v0, v3, v2}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    .line 163
    :cond_13
    iget-object v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/transsion/tranplayer/TranMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const v2, 0x186a3

    float-to-int v1, v1

    .line 164
    invoke-virtual {v0, v2, v1}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    goto :goto_4

    .line 165
    :pswitch_1d
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onEvent receive Opening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 166
    :pswitch_1e
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onEvent receive MediaChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1e
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onEvent(Lcom/transsion/tranplayer/VLCEvent;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->onEvent(Lcom/transsion/tranplayer/MediaPlayer$Event;)V

    return-void
.end method

.method public onNewVideoLayout(Lcom/transsion/tranplayer/IVLCVout;IIIIII)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p3, p6, p7}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public onSurfacesCreated(Lcom/transsion/tranplayer/IVLCVout;)V
    .locals 2

    sget-object p1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfacesCreated .  getListenVideoMode():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getListenVideoMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " . "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentAudioTrack:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfacesCreated  ---- Before setAudioTrack .  mCurrentAudioTrack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentAudioTrack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    iget p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentAudioTrack:I

    invoke-virtual {v0, p0}, Lcom/transsion/tranplayer/MediaPlayer;->setAudioTrack(I)Z

    :cond_0
    const-string p0, "onSurfacesCreated .  }"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfacesDestroyed(Lcom/transsion/tranplayer/IVLCVout;)V
    .locals 4

    sget-object p1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfacesDestroyed . getListenVideoMode():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getListenVideoMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " . "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/MediaPlayer;->setSurfaceDestroyed(Z)Z

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getListenVideoMode()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v0, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setVolume(I)I

    iput v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    invoke-virtual {p0, v2}, Lcom/transsion/tranplayer/TranMediaPlayer;->getSelectedTrack(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentAudioTrack:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfacesDestroyed  ---- Before setAudioTrack(-1) .  mCurrentAudioTrack:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentAudioTrack:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/MediaPlayer;->setAudioTrack(I)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/transsion/tranplayer/MediaPlayer;->setVideoTrack(I)Z

    iput-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFirstSetDataSource:Z

    :cond_1
    const-string p0, "onSurfacesDestroyed .  }"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pause()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVolume()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    iput v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mRightVolume:F

    iput v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLeftVolume:F

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v3}, Lcom/transsion/tranplayer/MediaPlayer;->setVolume(I)I

    iput v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->pause()V

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPausePosition:J

    iput-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLosePic_seek:Z

    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mNeedseek:Z

    :cond_0
    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPlayRequested:Z

    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsPlayingBeforeSeek:Z

    iput-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPaused:Z

    const-string p0, "pause }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "prepare {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsprepareing:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    invoke-direct {p0, v2}, Lcom/transsion/tranplayer/TranMediaPlayer;->initMediaPlayer(Z)V

    iget-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsPrepared:Z

    if-ne v3, v1, :cond_0

    iput-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsprepareing:Z

    invoke-virtual {p0}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnPrepared()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepareAsync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "prepareAsync {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsprepareing:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    invoke-direct {p0, v1}, Lcom/transsion/tranplayer/TranMediaPlayer;->initMediaPlayer(Z)V

    iget-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsPrepared:Z

    if-ne v3, v1, :cond_0

    iput-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsprepareing:Z

    invoke-virtual {p0}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnPrepared()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAsync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release()V
    .locals 7

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->cancelPendingResolverTask()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mReleaseMediaPlayer:Z

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->ReleasePlayer()V

    invoke-virtual {p0}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->resetListeners()V

    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurface:Landroid/view/Surface;

    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitlesView:Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitlesTextureView:Landroid/view/TextureView;

    :cond_0
    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFd:I

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPaused:Z

    iput v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mAudioSessionId:I

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->bWillToSetSurface:Z

    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x0

    iput v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLeftVolume:F

    iput v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mRightVolume:F

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPausePosition:J

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPIPVideoMode:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoStartTime:J

    iput-wide v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoSeekTime:J

    iput v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoFPS:F

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMediaCodec:Z

    iput-wide v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSeekPosition:J

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPlayRequested:Z

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsPrepared:Z

    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "release }"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 4

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->cancelPendingResolverTask()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsReseting:Z

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mReleaseMediaPlayer:Z

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/transsion/tranplayer/TranMediaPlayer;->setVolume(FF)V

    iput v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->ReleasePlayer()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFd:I

    :cond_1
    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPaused:Z

    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsReseting:Z

    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->bWillToSetSurface:Z

    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecDeleted:Z

    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPausePosition:J

    iput-wide v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSeekPosition:J

    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsPrepared:Z

    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "reset }"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public seekTo(JZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v1, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mDuration:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    cmp-long v6, p1, v4

    if-lez v6, :cond_1

    move-wide p1, v4

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-wide v6, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mDuration:J

    cmp-long v4, p1, v6

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    if-nez v4, :cond_2

    cmp-long v4, p1, v2

    if-eqz v4, :cond_2

    iput-boolean v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    :cond_2
    iput-wide p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPausePosition:J

    iput-wide p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSeekPosition:J

    iput-wide v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSeekCompleteConunt:J

    iput-boolean v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsFirstTimeChanged:Z

    iput-wide p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastSeekTime:J

    const-wide/16 v6, 0x3e8

    cmp-long v4, p1, v6

    if-lez v4, :cond_3

    iget-boolean v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPaused:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    if-nez v4, :cond_3

    if-eqz p4, :cond_3

    iget p4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    invoke-direct {p0, v5, p4, p1, p2}, Lcom/transsion/tranplayer/TranMediaPlayer;->setVolumeFadeInOut(IIJ)V

    iput v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    goto :goto_1

    :cond_3
    const/4 p4, 0x1

    invoke-virtual {v1, p1, p2, p4}, Lcom/transsion/tranplayer/MediaPlayer;->setTime(JZ)J

    iput-wide p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mCurrentPosition:J

    :goto_1
    iget-wide p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoSeekTime:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_4

    if-eqz p3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoSeekTime:J

    :cond_4
    const-string p0, "seekTo }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public selectTrack(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "selectTrack {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVideoTracksCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v3}, Lcom/transsion/tranplayer/MediaPlayer;->getAudioTracksCount()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v4}, Lcom/transsion/tranplayer/MediaPlayer;->getSpuTracksCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setVideoTrack(I)Z

    goto :goto_0

    :cond_0
    if-lt p1, v1, :cond_1

    add-int v5, v1, v3

    if-ge p1, v5, :cond_1

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setAudioTrack(I)Z

    goto :goto_0

    :cond_1
    add-int/2addr v1, v3

    if-lt p1, v1, :cond_2

    add-int/2addr v1, v4

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setSpuTrack(I)Z

    goto :goto_0

    :cond_2
    const-string p1, "unknown track index"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastSeekTime:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v2, p1, p1}, Lcom/transsion/tranplayer/TranMediaPlayer;->seekTo(JZZ)V

    goto :goto_1

    :cond_4
    iput-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mNeedseek:Z

    :cond_5
    :goto_1
    const-string p0, "selectTrack }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string p1, "setAudioAttributes {"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "setAudioAttributes }"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 2

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setAudioSessionId {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mAudioSessionId:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioSessionId ---- mAudioSessionId:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " }"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string p1, "setAudioStreamType {"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "setAudioStreamType }"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAudioTrack(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getAudioTrack()I

    move-result v2

    if-ne p1, v2, :cond_0

    return v0

    :cond_0
    sget-object v2, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAudioTrack  index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v2, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setAudioTrack(I)Z

    move-result v2

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v0, v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->seekTo(JZZ)V

    :cond_1
    return v2
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
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 8
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

    if-eqz p1, :cond_a

    .line 2
    iput-object p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mUri:Landroid/net/Uri;

    .line 3
    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    .line 5
    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    if-eqz p3, :cond_0

    .line 6
    const-string v0, "listen-video"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 10
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 12
    :cond_1
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "settings"

    .line 13
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result p2

    .line 15
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Failed to resolve default ringtone"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/TranMediaPlayer;->openAssetFileDescriptorWithRetry(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_4

    .line 18
    sget-object p1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setDataSource fd is null, falling back to uri"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    .line 19
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    .line 20
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_7

    .line 21
    iget-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    if-eqz p1, :cond_6

    .line 22
    invoke-direct {p0, p2}, Lcom/transsion/tranplayer/TranMediaPlayer;->getMediaSourcePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 23
    invoke-virtual {p0, p1, p3}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 24
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;Ljava/util/Map;)V

    goto :goto_2

    .line 25
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;Ljava/util/Map;)V

    goto :goto_2

    .line 26
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    move-object v1, p0

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJLjava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void

    .line 28
    :goto_3
    :try_start_2
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource IOException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    goto :goto_1

    .line 29
    :goto_4
    sget-object v1, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource SecurityException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 30
    :cond_8
    :goto_5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :goto_6
    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 32
    :cond_9
    throw p0

    .line 33
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context param can not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataSource(Lcom/transsion/tranplayer/IMediaDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 66
    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string p1, "interface setDataSource with IMediaDataSource is not implement, please use other setDataSource instead"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 50
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJLjava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "JJ",
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
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p6}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;Ljava/util/Map;)V

    .line 52
    iput-wide p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOffset:J

    .line 53
    iput-wide p4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLength:J

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
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
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource fd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0, p2}, Lcom/transsion/tranplayer/TranMediaPlayer;->parseHeader(Ljava/util/Map;)V

    const/4 p2, 0x3

    .line 57
    iput p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSourceType:I

    .line 58
    iget-object p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    if-eqz p2, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p2, 0x0

    .line 60
    iput-object p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    const/4 p2, -0x1

    .line 61
    iput p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFd:I

    .line 62
    :cond_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFile:Landroid/os/ParcelFileDescriptor;

    .line 63
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p1

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFd:I

    .line 64
    invoke-direct {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->preInitPlayer()V

    .line 65
    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string p1, "setDataSource }"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
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

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/transsion/tranplayer/TranMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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

    .line 34
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0, p2}, Lcom/transsion/tranplayer/TranMediaPlayer;->parseHeader(Ljava/util/Map;)V

    .line 36
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 38
    iput v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSourceType:I

    .line 39
    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 40
    :cond_0
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "rtsp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    iput v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSourceType:I

    .line 42
    const-string p2, "file://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 43
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 44
    :cond_2
    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x1

    .line 45
    iput p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSourceType:I

    .line 46
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mUri:Landroid/net/Uri;

    .line 47
    :goto_1
    invoke-direct {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->preInitPlayer()V

    .line 48
    const-string p0, "setDataSource }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 14

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mVideoCodecDeleted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecDeleted:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " libvlc {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_7

    iget-object v6, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/tranplayer/IVLCVout;->areViewsAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/tranplayer/IVLCVout;->removeCallback(Lcom/transsion/tranplayer/IVLCVout$Callback;)V

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/tranplayer/IVLCVout;->detachViews()V

    :cond_0
    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecDeleted:Z

    if-nez v1, :cond_1

    iput-boolean v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->bWillToSetSurface:Z

    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const-string v1, "setDisplay goto bWillToSetSurface "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurface:Landroid/view/Surface;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v5}, Lcom/transsion/tranplayer/MediaPlayer;->setSurfaceDestroyed(Z)Z

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-interface {v1, v6, p1}, Lcom/transsion/tranplayer/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/tranplayer/IVLCVout;->addCallback(Lcom/transsion/tranplayer/IVLCVout$Callback;)V

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/tranplayer/IVLCVout;->attachViews(Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;)V

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v4}, Lcom/transsion/tranplayer/MediaPlayer;->setSurface(Z)Z

    iput-boolean v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->bWillToSetSurface:Z

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v5}, Lcom/transsion/tranplayer/MediaPlayer;->setListenVideoMode(Z)Z

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getDuration()J

    move-result-wide v8

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    iget-boolean v10, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPIPVideoMode:Z

    invoke-virtual {v1, v10}, Lcom/transsion/tranplayer/MediaPlayer;->setPinPVideoMode(Z)V

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    if-nez v1, :cond_2

    sub-long v10, v8, v6

    const-wide/16 v12, 0x3e8

    cmp-long v1, v10, v12

    if-gez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFirstSetDataSource:Z

    if-nez v1, :cond_3

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7, v5, v5}, Lcom/transsion/tranplayer/TranMediaPlayer;->seekTo(JZZ)V

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    if-eqz v1, :cond_4

    iput-boolean v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    goto :goto_0

    :cond_3
    sub-long v10, v8, v6

    const-wide/16 v12, 0xbb8

    cmp-long v1, v10, v12

    if-gez v1, :cond_4

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFirstSetDataSource:Z

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "now:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", duration:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ". it\'s close to duration when resume playback"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6, v7, v5, v5}, Lcom/transsion/tranplayer/TranMediaPlayer;->seekTo(JZZ)V

    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPaused:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->play()V

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v4}, Lcom/transsion/tranplayer/MediaPlayer;->setRefreshFirstFrame(Z)Z

    :cond_6
    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v4}, Lcom/transsion/tranplayer/MediaPlayer;->setDropAudioFrames(Z)Z

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSourceType:I

    if-ne v1, v4, :cond_8

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsprepareing:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->stop()V

    const/16 v1, 0x38a

    invoke-virtual {p0, v1, v5}, Lcom/transsion/tranplayer/AbstractMediaPlayer;->notifyOnInfo(II)Z

    const-string v1, "lose focus before internet prepared "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput-boolean v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->bWillToSetSurface:Z

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v4}, Lcom/transsion/tranplayer/MediaPlayer;->setSurfaceDestroyed(Z)Z

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/transsion/tranplayer/MediaPlayer;->setVideoTrack(I)Z

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v5}, Lcom/transsion/tranplayer/MediaPlayer;->setSurface(Z)Z

    iput-object v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-boolean v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFirstSetDataSource:Z

    :cond_9
    :goto_1
    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v1, :cond_a

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    :cond_a
    iput-object v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurface:Landroid/view/Surface;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setListenVideoMode(Z)V
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListenVideoMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    const-string p0, "setListenVideoMode }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLivePhotoLongpress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLivePhotoLongpress:Z

    return-void
.end method

.method public setLooping(Z)V
    .locals 2

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setLooping {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setLooping(Z)Z

    :cond_0
    const-string p0, "setLooping }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMute(Z)V
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setAudioMute(Z)Z

    :cond_0
    const-string p0, "setMute }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnPause(Z)V
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnPause paused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mMediaPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPIPVideoMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPIPVideoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/tranplayer/util/AndroidUtil;->isRunningByMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOpenError:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monkey mode setOnPause paused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setSurfaceDestroyed(Z)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPIPVideoMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mOpenError:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normal mode setOnPause paused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setSurfaceDestroyed(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setPictureInPictureMode(Z)V
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPictureInPictureMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPIPVideoMode:Z

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setPinPVideoMode(Z)V

    :cond_0
    const-string p0, "setPictureInPictureMode }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    sget-object p0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string p1, "setScreenOnWhilePlaying {"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "setScreenOnWhilePlaying }"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSpeed(F)V
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setRate(F)V

    :cond_0
    const-string p0, "setSpeed }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSpuTrack(I)Z
    .locals 6

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpuTrack  index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, p1}, Lcom/transsion/tranplayer/MediaPlayer;->setSpuTrack(I)Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastSeekTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->isPlaying()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v3, v3}, Lcom/transsion/tranplayer/TranMediaPlayer;->seekTo(JZZ)V

    goto :goto_1

    :cond_1
    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mNeedseek:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFirstSetDataSource:Z

    if-eqz p1, :cond_3

    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFirstSetDataSource:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpuTrack mFirstSetDataSource: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFirstSetDataSource:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v1
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/tranplayer/IVLCVout;->areViewsAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/tranplayer/IVLCVout;->removeCallback(Lcom/transsion/tranplayer/IVLCVout$Callback;)V

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/tranplayer/IVLCVout;->detachViews()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/transsion/tranplayer/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/tranplayer/IVLCVout;->addCallback(Lcom/transsion/tranplayer/IVLCVout$Callback;)V

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/tranplayer/IVLCVout;->attachViews(Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;)V

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setSurface(Z)Z

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setSurfaceDestroyed(Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/tranplayer/IVLCVout;->removeCallback(Lcom/transsion/tranplayer/IVLCVout$Callback;)V

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/tranplayer/IVLCVout;->detachViews()V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurface:Landroid/view/Surface;

    const-string p0, "setSurface }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTimedTextDelay(J)V
    .locals 3

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimedTextDelay  delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tranplayer/MediaPlayer;->setSpuDelay(J)Z

    :cond_0
    const-string p0, "setTimedTextDelay }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTimedTextView(Landroid/view/SurfaceView;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimedTextView surfaceView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitlesView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/tranplayer/IVLCVout;->setSubtitlesView(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitlesView:Landroid/view/SurfaceView;

    .line 6
    :cond_1
    :goto_0
    const-string p0, "setTimedTextView }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTimedTextView(Landroid/view/TextureView;)V
    .locals 3

    .line 7
    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimedTextView textureView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitlesTextureView:Landroid/view/TextureView;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->getVLCVout()Lcom/transsion/tranplayer/IVLCVout;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/tranplayer/IVLCVout;->setSubtitlesView(Landroid/view/TextureView;)V

    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSubtitlesTextureView:Landroid/view/TextureView;

    .line 12
    :cond_1
    :goto_0
    const-string p0, "setTimedTextView }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVolume(FF)V
    .locals 4

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-float v2, p1, p2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v1, :cond_0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/transsion/tranplayer/MediaPlayer;->setVolume(I)I

    :cond_0
    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLeftVolume:F

    iput p2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mRightVolume:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    cmpl-float p1, p2, v1

    if-lez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    :cond_2
    const-string p0, "setVolume }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start mVideoCodecDeleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecDeleted:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mHadVideoCodec:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mHadVideoCodec:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  sdkVersion: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mReleaseMediaPlayer:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReleaseMediaPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mReleaseMediaPlayer:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " start }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Lcom/transsion/tranplayer/MediaPlayer;->setRefreshFirstFrame(Z)Z

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1, v3}, Lcom/transsion/tranplayer/MediaPlayer;->setDropAudioFrames(Z)Z

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mHadVideoCodec:Z

    const-string v4, "}"

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecDeleted:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->bWillToSetSurface:Z

    if-eqz v1, :cond_1

    iput-boolean v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPlayRequested:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mVideoCodecDeleted:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_2

    iput-boolean v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPlayRequested:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start mListenVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mListenVideo:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mEofPaused:Z

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/transsion/tranplayer/TranMediaPlayer;->seekTo(JZZ)V

    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mNeedseek:Z

    :cond_3
    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPlayRequested:Z

    iput-boolean v5, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsPlayingBeforeSeek:Z

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->play()V

    iget v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLeftVolume:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mRightVolume:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mRightVolume:F

    iput v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLeftVolume:F

    :cond_5
    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mNeedseek:Z

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mNeedseek:Z

    iget-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFirstSetDataSource:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/transsion/tranplayer/TranMediaPlayer;->seekTo(JZZ)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLeftVolume:F

    cmpl-float v4, v1, v2

    if-gtz v4, :cond_7

    iget v4, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mRightVolume:F

    cmpl-float v2, v4, v2

    if-lez v2, :cond_8

    :cond_7
    iget-boolean v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mIsMute:Z

    if-nez v2, :cond_8

    iget v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mRightVolume:F

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    invoke-direct {p0, v1, v2}, Lcom/transsion/tranplayer/TranMediaPlayer;->setVolumeFadeInOut(II)V

    iget v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLeftVolume:F

    iget v2, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mRightVolume:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mLastVolume:I

    :cond_8
    :goto_0
    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPaused:Z

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer;->getListenVideoMode()Z

    move-result v1

    if-eqz v1, :cond_9

    iput-boolean v3, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mFirstSetDataSource:Z

    :cond_9
    const-string p0, "start}"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/tranplayer/TranMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stop {"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mMediaPlayer:Lcom/transsion/tranplayer/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/tranplayer/MediaPlayer;->stop()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer;->mPlayRequested:Z

    :cond_0
    const-string p0, "stop }"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
