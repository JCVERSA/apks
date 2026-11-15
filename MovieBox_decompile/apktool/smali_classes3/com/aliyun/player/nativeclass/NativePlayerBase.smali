.class public Lcom/aliyun/player/nativeclass/NativePlayerBase;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativePlayerBase"

.field private static final UPDATE_CURRENT_POSITION:I = 0x3e8

.field private static final VIDEO_TYPE_FAIRPLAY:I = 0x10

.field private static final VIDEO_TYPE_HDR10:I = 0x2

.field private static final VIDEO_TYPE_NONE:I = 0x0

.field private static final VIDEO_TYPE_SDR:I = 0x1

.field private static final VIDEO_TYPE_WIDEVINE_L1:I = 0x4

.field private static final VIDEO_TYPE_WIDEVINE_L3:I = 0x8

.field private static libPath:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;


# instance fields
.field private mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

.field private mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

.field private mDirectRender:Z

.field private mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

.field private mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

.field private mEnableTunnelMode:Z

.field private mNativeContext:J

.field private mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

.field private mOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

.field private mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

.field private mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

.field private mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private mOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

.field private mOnSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

.field private mOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

.field private mOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

.field private mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private mOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

.field private mOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

.field private mOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

.field private mOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

.field private mOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

.field private mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

.field private mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

.field private mSurfaceFromUser:Z

.field private mVideoType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mSurfaceFromUser:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mEnableTunnelMode:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 51
    .line 52
    iput v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mVideoType:I

    .line 53
    .line 54
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 57
    .line 58
    sput-object p1, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    .line 61
    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    invoke-static {p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getUserNativeLibPath(Landroid/content/Context;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetLibPath(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->loadPlugins()V

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-static {p1}, Lcom/aliyun/utils/DeviceInfoUtils;->setSDKContext(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 80
    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-direct {v0, p0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/os/Looper;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 89
    .line 90
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->construct(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/DisplayViewHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnTrackReadyListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnTrackChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSeiDataListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnStateChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1500(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1800(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1900(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/view/Surface;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setSurfaceInner(Landroid/view/Surface;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSnapShotListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnPreparedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnCompletionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnInfoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnErrorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnRenderingStartListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nConstruct()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetSdkVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static getUserNativeLibPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "/data/data/"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "/lib/"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v3, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 42
    .line 43
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    new-instance v2, Ljava/io/File;

    .line 56
    .line 57
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-nez v2, :cond_1

    .line 71
    .line 72
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 86
    .line 87
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p0, "/"

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :catch_1
    :cond_1
    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/aliyun/player/bean/InfoBean;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/aliyun/player/bean/InfoBean;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/InfoBean;->setCode(Lcom/aliyun/player/bean/InfoCode;)V

    .line 19
    .line 20
    .line 21
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 22
    .line 23
    int-to-long v1, p1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/aliyun/player/bean/InfoBean;->setExtraValue(J)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer$OnInfoListener;->onInfo(Lcom/aliyun/player/bean/InfoBean;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public static loadClass()V
    .locals 0

    .line 1
    return-void
.end method

.method private loadPlugins()V
    .locals 6

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    sget-object v1, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    array-length v1, v0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v1, :cond_4

    .line 37
    .line 38
    aget-object v3, v0, v2

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "cicada_plugin_"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const-string v4, "lib"

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const-string v5, ".so"

    .line 60
    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    add-int/lit8 v4, v4, 0x3

    .line 66
    .line 67
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    :try_start_0
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception v3

    .line 76
    const-string v4, "NativePlayerBase"

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v4, v3}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    :goto_2
    return-void
.end method

.method protected static nConvertURLCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Lcom/aliyun/player/IPlayer$ConvertURLCallback;->convertURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method protected static native nGetSdkVersion()Ljava/lang/String;
.end method

.method protected static native nSetBlackType(I)V
.end method

.method private nUpdateViewCallback(I)Z
    .locals 5
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "nUpdateViewCallback videoType = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 25
    .line 26
    iput p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mVideoType:I

    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mSurfaceFromUser:Z

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    iget-boolean v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mEnableTunnelMode:Z

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 36
    .line 37
    sget-object v2, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->Either:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 38
    .line 39
    and-int/lit8 v3, p1, 0x2

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    if-eq v3, v4, :cond_1

    .line 43
    .line 44
    and-int/lit8 v3, p1, 0x4

    .line 45
    .line 46
    const/4 v4, 0x4

    .line 47
    if-eq v3, v4, :cond_1

    .line 48
    .line 49
    const/16 v3, 0x8

    .line 50
    .line 51
    and-int/2addr p1, v3

    .line 52
    if-ne p1, v3, :cond_2

    .line 53
    .line 54
    :cond_1
    sget-object v2, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->SurfaceView:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 58
    .line 59
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "mDirectRender  = "

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean v3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 82
    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    const-string p1, "nCreateViewCallback but view is null"

    .line 86
    .line 87
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v1

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->needUpdateView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 98
    .line 99
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;

    .line 100
    .line 101
    invoke-direct {v1, p0, v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    return p1
.end method

.method private native_onEventReport(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnReportEventListener;->onEventParam(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private native_onPreRenderFrameCallback(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/cicada/player/utils/FrameInfo;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;->onPreRenderFrame(Lcom/cicada/player/utils/FrameInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method private native_onRenderFrameCallback(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/cicada/player/utils/FrameInfo;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;->onRenderFrame(Lcom/cicada/player/utils/FrameInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public static setBlackType(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetBlackType(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setConvertURLCb(Lcom/aliyun/player/IPlayer$ConvertURLCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;

    .line 2
    .line 3
    return-void
.end method

.method private setSurfaceInner(Landroid/view/Surface;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "set surface not at main thread"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-boolean p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mSurfaceFromUser:Z

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetSurface(Landroid/view/Surface;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public addExtSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nAddExtSubtitle(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized clearScreen()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nClearScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method protected clearScreenIfNeed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mClearFrameWhenStop:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->clearScreen()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public declared-synchronized enableHardwareDecoder(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nEnableHardwareDecoder(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw p1
.end method

.method public declared-synchronized getBufferedPosition()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetBufferedPosition()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-wide v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetConfig()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/aliyun/player/nativeclass/PlayerConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    monitor-exit p0

    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method public declared-synchronized getCurrentPosition()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetCurrentPosition()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-wide v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public declared-synchronized getCurrentTrackInfo(I)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetCurrentStreamInfo(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Lcom/aliyun/player/nativeclass/TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public declared-synchronized getDuration()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetDuration()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-wide v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public declared-synchronized getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetMirrorMode()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    sget-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    .line 9
    .line 10
    .line 11
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_1
    sget-object v2, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_HORIZONTAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    if-ne v0, v3, :cond_1

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v2

    .line 26
    :cond_1
    :try_start_2
    sget-object v2, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_VERTICAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    if-ne v0, v3, :cond_2

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-object v2

    .line 36
    :cond_2
    monitor-exit p0

    .line 37
    return-object v1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    throw v0
.end method

.method public getNativeContext()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mNativeContext:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public declared-synchronized getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$Option;->getValue()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetOption(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    :try_start_1
    sget-object v1, Lcom/aliyun/player/IPlayer$Option;->RenderFPS:Lcom/aliyun/player/IPlayer$Option;

    .line 16
    .line 17
    if-eq p1, v1, :cond_2

    .line 18
    .line 19
    sget-object v1, Lcom/aliyun/player/IPlayer$Option;->DownloadBitrate:Lcom/aliyun/player/IPlayer$Option;

    .line 20
    .line 21
    if-eq p1, v1, :cond_2

    .line 22
    .line 23
    sget-object v1, Lcom/aliyun/player/IPlayer$Option;->VideoBitrate:Lcom/aliyun/player/IPlayer$Option;

    .line 24
    .line 25
    if-eq p1, v1, :cond_2

    .line 26
    .line 27
    sget-object v1, Lcom/aliyun/player/IPlayer$Option;->AudioBitrate:Lcom/aliyun/player/IPlayer$Option;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    if-ne p1, v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    return-object v0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    monitor-exit p0

    .line 41
    return-object p1

    .line 42
    :catch_0
    :try_start_3
    const-string p1, "0"

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    monitor-exit p0

    .line 49
    return-object p1

    .line 50
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    throw p1
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetPlayerName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public declared-synchronized getPropertyString(I)Ljava/lang/String;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetPropertyString(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-object p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p1
.end method

.method public declared-synchronized getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetRotateMode()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    .line 9
    .line 10
    .line 11
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_1
    sget-object v2, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_90:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    if-ne v0, v3, :cond_1

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v2

    .line 26
    :cond_1
    :try_start_2
    sget-object v2, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_180:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    if-ne v0, v3, :cond_2

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-object v2

    .line 36
    :cond_2
    :try_start_3
    sget-object v2, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_270:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    .line 39
    .line 40
    .line 41
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    if-ne v0, v3, :cond_3

    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-object v2

    .line 46
    :cond_3
    monitor-exit p0

    .line 47
    return-object v1

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 50
    throw v0
.end method

.method public declared-synchronized getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetScaleMode()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$ScaleMode;->getValue()I

    .line 9
    .line 10
    .line 11
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_1
    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$ScaleMode;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    if-ne v0, v3, :cond_1

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v2

    .line 26
    :cond_1
    :try_start_2
    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/aliyun/player/IPlayer$ScaleMode;->getValue()I

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    if-ne v0, v3, :cond_2

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-object v2

    .line 36
    :cond_2
    monitor-exit p0

    .line 37
    return-object v1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    throw v0
.end method

.method public declared-synchronized getSpeed()F
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetSpeed()F

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public declared-synchronized getVideoHeight()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoHeight()I

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public declared-synchronized getVideoRotation()F
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoRotation()I

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    int-to-float v0, v0

    .line 7
    monitor-exit p0

    .line 8
    return v0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public declared-synchronized getVideoWidth()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoWidth()I

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public declared-synchronized getVolume()F
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVolume()F

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public invokeComponent(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nInvokeComponent(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public declared-synchronized isAutoPlay()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nIsAutoPlay()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public declared-synchronized isLoop()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nIsLoop()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public declared-synchronized isMuted()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nIsMuted()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method protected native nAddExtSubtitle(Ljava/lang/String;)V
.end method

.method protected native nClearScreen()V
.end method

.method protected native nConstruct()V
.end method

.method protected native nEnableFrameCb(Z)V
.end method

.method protected native nEnableHardwareDecoder(Z)V
.end method

.method protected native nEnablePreFrameCb(Z)V
.end method

.method protected native nEnableVideoRenderedCallback(Z)V
.end method

.method protected native nGetBufferedPosition()J
.end method

.method protected native nGetCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected native nGetCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method protected native nGetConfig()Ljava/lang/Object;
.end method

.method protected native nGetCurrentPosition()J
.end method

.method protected native nGetCurrentStreamInfo(I)Ljava/lang/Object;
.end method

.method protected native nGetDuration()J
.end method

.method protected native nGetMirrorMode()I
.end method

.method protected native nGetOption(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected native nGetPlayerName()Ljava/lang/String;
.end method

.method protected native nGetPropertyString(I)Ljava/lang/String;
.end method

.method protected native nGetRotateMode()I
.end method

.method protected native nGetScaleMode()I
.end method

.method protected native nGetSpeed()F
.end method

.method protected native nGetVideoHeight()I
.end method

.method protected native nGetVideoRotation()I
.end method

.method protected native nGetVideoWidth()I
.end method

.method protected native nGetVolume()F
.end method

.method protected native nInvokeComponent(Ljava/lang/String;)I
.end method

.method protected native nIsAutoPlay()Z
.end method

.method protected native nIsLoop()Z
.end method

.method protected native nIsMuted()Z
.end method

.method protected native nPause()V
.end method

.method protected native nPrepare()V
.end method

.method protected native nRelease()V
.end method

.method protected native nReload()V
.end method

.method protected native nSeekTo(JI)V
.end method

.method protected native nSelectExtSubtitle(IZ)V
.end method

.method protected native nSelectTrack(I)V
.end method

.method protected native nSelectTrackA(IZ)V
.end method

.method protected native nSendCustomEvent(Ljava/lang/String;)V
.end method

.method protected native nSetAutoPlay(Z)V
.end method

.method protected native nSetCacheConfig(Ljava/lang/Object;)V
.end method

.method protected native nSetConfig(Ljava/lang/Object;)V
.end method

.method protected native nSetConnectivityManager(Ljava/lang/Object;)V
.end method

.method protected native nSetDefaultBandWidth(I)V
.end method

.method protected native nSetFastStart(Z)V
.end method

.method protected native nSetFilterConfig(Ljava/lang/String;)V
.end method

.method protected native nSetFilterInvalid(Ljava/lang/String;Z)V
.end method

.method protected native nSetFrameCbConfig(ZZ)V
.end method

.method protected native nSetIPResolveType(I)V
.end method

.method protected native nSetLibPath(Ljava/lang/String;)V
.end method

.method protected native nSetLoop(Z)V
.end method

.method protected native nSetMaxAccurateSeekDelta(I)V
.end method

.method protected native nSetMirrorMode(I)V
.end method

.method protected native nSetMute(Z)V
.end method

.method protected native nSetOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected native nSetPreferPlayerName(Ljava/lang/String;)V
.end method

.method protected native nSetRotateMode(I)V
.end method

.method protected native nSetScaleMode(I)V
.end method

.method protected native nSetSpeed(F)V
.end method

.method protected native nSetStreamDelayTime(II)V
.end method

.method protected native nSetSurface(Landroid/view/Surface;)V
.end method

.method protected native nSetTraceID(Ljava/lang/String;)V
.end method

.method protected native nSetVideoBackgroundColor(I)V
.end method

.method protected native nSetVideoTag([I)V
.end method

.method protected native nSetVolume(F)V
.end method

.method protected native nSnapShot()V
.end method

.method protected native nStart()V
.end method

.method protected native nStop()V
.end method

.method protected native nSurfaceChanged()V
.end method

.method protected native nUpdateFilterConfig(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected onAutoPlayStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$6;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$6;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onBufferedPositionUpdate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$17;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$17;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onCaptureScreen(II[B)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    if-lez p2, :cond_0

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    array-length v1, p3

    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12
    .line 13
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {v0, p3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_0
    iget-object p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 25
    .line 26
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;

    .line 27
    .line 28
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/graphics/Bitmap;II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;->onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method

.method protected onCircleStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$5;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$5;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onCompletion()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$4;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onCurrentDownloadSpeed(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$20;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$20;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onCurrentPositionUpdate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    long-to-int p1, p1

    .line 4
    const/4 p2, 0x0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected onError(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object p3, Lcom/aliyun/player/bean/ErrorCode;->ERROR_UNKNOWN:Lcom/aliyun/player/bean/ErrorCode;

    .line 2
    .line 3
    invoke-static {}, Lcom/aliyun/player/bean/ErrorCode;->values()[Lcom/aliyun/player/bean/ErrorCode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ne v4, p1, :cond_0

    .line 18
    .line 19
    move-object p3, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 25
    .line 26
    new-instance v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;

    .line 27
    .line 28
    invoke-direct {v0, p0, p3, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/ErrorCode;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected onEvent(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object p3, Lcom/aliyun/player/bean/InfoCode;->Unknown:Lcom/aliyun/player/bean/InfoCode;

    .line 2
    .line 3
    invoke-static {}, Lcom/aliyun/player/bean/InfoCode;->values()[Lcom/aliyun/player/bean/InfoCode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/aliyun/player/bean/InfoCode;->getValue()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ne v4, p1, :cond_0

    .line 18
    .line 19
    move-object p3, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 25
    .line 26
    new-instance v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;

    .line 27
    .line 28
    invoke-direct {v0, p0, p3, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/InfoCode;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected onFirstFrameShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->firstFrameRender(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 20
    .line 21
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$9;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$9;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method protected onHideSubtitle(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;IJ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onLoadingEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$23;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$23;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onLoadingProgress(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$19;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$19;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;F)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onLoadingStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$18;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$18;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onLocalCacheLoad(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$22;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$22;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onPrepared()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$3;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$3;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onSeekEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$24;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$24;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onSeiDataCallback(I[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;I[B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onShowSubtitle(IJLjava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object p5, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v6, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;

    .line 4
    .line 5
    move-object v0, v6

    .line 6
    move-object v1, p0

    .line 7
    move v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-object v5, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;IJLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onStatusChanged(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$16;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$16;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onStreamInfoGet(Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$12;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$12;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onSubtitleExtAdded(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$26;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$26;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onSubtitleHeader(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onSwitchStreamFail(Lcom/aliyun/player/nativeclass/TrackInfo;ILjava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_UNKNOWN:Lcom/aliyun/player/bean/ErrorCode;

    .line 2
    .line 3
    invoke-static {}, Lcom/aliyun/player/bean/ErrorCode;->values()[Lcom/aliyun/player/bean/ErrorCode;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v2, :cond_1

    .line 10
    .line 11
    aget-object v4, v1, v3

    .line 12
    .line 13
    invoke-virtual {v4}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-ne v5, p2, :cond_0

    .line 18
    .line 19
    move-object v6, v4

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v6, v0

    .line 25
    :goto_1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 26
    .line 27
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;

    .line 28
    .line 29
    move-object v4, v1

    .line 30
    move-object v5, p0

    .line 31
    move v7, p2

    .line 32
    move-object v8, p3

    .line 33
    move-object v9, p1

    .line 34
    invoke-direct/range {v4 .. v9}, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/ErrorCode;ILjava/lang/String;Lcom/aliyun/player/nativeclass/TrackInfo;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method protected onSwitchStreamSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$13;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$13;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/nativeclass/TrackInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onUtcTimeUpdate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$21;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$21;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onVideoRendered(JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v7, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-wide v3, p1

    .line 8
    move-wide v5, p3

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;JJ)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected onVideoSizeChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public declared-synchronized pause()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public declared-synchronized prepare()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nPrepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nRelease()V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public declared-synchronized reload()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nReload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method protected requestKey(Ljava/lang/String;[B)[B
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/cicada/player/utils/media/DrmCallback;->requestKey(Ljava/lang/String;[B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method protected requestProvision(Ljava/lang/String;[B)[B
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/cicada/player/utils/media/DrmCallback;->requestProvision(Ljava/lang/String;[B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public declared-synchronized seekTo(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x10

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSeekTo(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized seekTo(JI)V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSeekTo(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public selectExtSubtitle(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSelectExtSubtitle(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized selectTrack(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSelectTrack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized selectTrack(IZ)V
    .locals 0

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSelectTrackA(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendCustomEvent(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSendCustomEvent(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized setAutoPlay(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetAutoPlay(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw p1
.end method

.method public declared-synchronized setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetCacheConfig(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw p1
.end method

.method public declared-synchronized setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mEnableVideoTunnelRender:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mEnableTunnelMode:Z

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetConfig(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method public declared-synchronized setDefaultBandWidth(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetDefaultBandWidth(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw p1
.end method

.method public setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/videoview/AliDisplayView;->getDisplayViewHelper()Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 14
    .line 15
    new-instance v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$31;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$31;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoWidth()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-gtz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoHeight()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-lez p1, :cond_2

    .line 34
    .line 35
    :cond_1
    iget p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mVideoType:I

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nUpdateViewCallback(I)Z

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public setDrmCallback(Lcom/cicada/player/utils/media/DrmCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized setFastStart(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetFastStart(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw p1
.end method

.method public setFilterConfig(Lcom/aliyun/player/FilterConfig;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/FilterConfig;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetFilterConfig(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setFilterInvalid(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetFilterInvalid(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetIPResolveType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method public declared-synchronized setLoop(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetLoop(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw p1
.end method

.method public setMaxAccurateSeekDelta(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetMaxAccurateSeekDelta(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetMirrorMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public declared-synchronized setMute(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetMute(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw p1
.end method

.method protected setNativeContext(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mNativeContext:J

    .line 2
    .line 3
    return-void
.end method

.method public setOnChooseTrackIndexListener(Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnPreRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nEnablePreFrameCb(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nEnableFrameCb(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnReportEventListener(Lcom/aliyun/player/IPlayer$OnReportEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSeiDataListener(Lcom/aliyun/player/IPlayer$OnSeiDataListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSnapShotListener(Lcom/aliyun/player/IPlayer$OnSnapShotListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSubtitleDisplayListener(Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnTrackInfoGetListener(Lcom/aliyun/player/IPlayer$OnTrackReadyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnTrackSelectRetListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nEnableVideoRenderedCallback(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw p1
.end method

.method public setPreferPlayerName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetPreferPlayerName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setRenderFrameCallbackConfig(Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;->mVideoDataAddr:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-boolean p1, p1, Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;->mAudioDataAddr:Z

    .line 6
    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetFrameCbConfig(ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public declared-synchronized setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetRotateMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public declared-synchronized setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$1;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$1;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetScaleMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1
.end method

.method public declared-synchronized setSpeed(F)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetSpeed(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw p1
.end method

.method public setStreamDelayTime(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetStreamDelayTime(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_1
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setSurfaceInner(Landroid/view/Surface;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    throw p1
.end method

.method public declared-synchronized setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetTraceID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw p1
.end method

.method public declared-synchronized setVideoBackgroundColor(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setBackgroundColor(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetVideoBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method public setVideoTag([I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetVideoTag([I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized setVolume(F)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw p1
.end method

.method public declared-synchronized snapShot()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSnapShot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :goto_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method public declared-synchronized start()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->clearScreenIfNeed()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v0
.end method

.method public surfaceChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSurfaceChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public updateFilterConfig(Ljava/lang/String;Lcom/aliyun/player/FilterConfig$FilterOptions;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/aliyun/player/FilterConfig$FilterOptions;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nUpdateFilterConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
