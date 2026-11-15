.class public Lcom/transsion/tranplayer/MediaPlayer;
.super Lcom/transsion/tranplayer/VLCObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;,
        Lcom/transsion/tranplayer/MediaPlayer$Equalizer;,
        Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;,
        Lcom/transsion/tranplayer/MediaPlayer$Chapter;,
        Lcom/transsion/tranplayer/MediaPlayer$Title;,
        Lcom/transsion/tranplayer/MediaPlayer$Navigate;,
        Lcom/transsion/tranplayer/MediaPlayer$Position;,
        Lcom/transsion/tranplayer/MediaPlayer$EventListener;,
        Lcom/transsion/tranplayer/MediaPlayer$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/tranplayer/VLCObject<",
        "Lcom/transsion/tranplayer/MediaPlayer$Event;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field private mAudioDigitalOutputEnabled:Z

.field private mAudioOutput:Ljava/lang/String;

.field private mAudioOutputDevice:Ljava/lang/String;

.field private mAudioPlugOutputDevice:Ljava/lang/String;

.field private final mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioPlugRegistered:Z

.field private mAudioReset:Z

.field private mCanDoPassthrough:Z

.field private mGLRenderer:Lcom/transsion/tranplayer/GLRenderer;

.field private mListenAudioPlug:Z

.field private mMedia:Lcom/transsion/tranplayer/Media;

.field private mPlayRequested:Z

.field private mPlaying:Z

.field private final mSurfaceListener:Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;

.field private mVoutCount:I

.field private final mWindow:Lcom/transsion/tranplayer/AWindow;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/LibVLC;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/VLCObject;-><init>(Lcom/transsion/tranplayer/LibVLC;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mMedia:Lcom/transsion/tranplayer/Media;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mPlaying:Z

    .line 4
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mPlayRequested:Z

    .line 5
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mListenAudioPlug:Z

    .line 6
    iput v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mVoutCount:I

    .line 7
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioReset:Z

    .line 8
    const-string v2, "android_audiotrack"

    iput-object v2, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugRegistered:Z

    .line 11
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioDigitalOutputEnabled:Z

    .line 12
    const-string v1, "stereo"

    iput-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    .line 13
    new-instance v1, Lcom/transsion/tranplayer/MediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/transsion/tranplayer/MediaPlayer$1;-><init>(Lcom/transsion/tranplayer/MediaPlayer;)V

    iput-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mSurfaceListener:Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;

    .line 14
    new-instance v2, Lcom/transsion/tranplayer/AWindow;

    invoke-direct {v2, v1}, Lcom/transsion/tranplayer/AWindow;-><init>(Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;)V

    iput-object v2, p0, Lcom/transsion/tranplayer/MediaPlayer;->mWindow:Lcom/transsion/tranplayer/AWindow;

    .line 15
    iput-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mGLRenderer:Lcom/transsion/tranplayer/GLRenderer;

    .line 16
    sget-boolean v1, Lcom/transsion/tranplayer/util/AndroidUtil;->isLolliPopOrLater:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/transsion/tranplayer/util/AndroidUtil;->isMarshMallowOrLater:Z

    if-nez v1, :cond_0

    .line 17
    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->createAudioPlugReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    sget-boolean v1, Lcom/transsion/tranplayer/util/AndroidUtil;->isMarshMallowOrLater:Z

    if-eqz v1, :cond_1

    .line 19
    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 20
    invoke-direct {p0, p1, v2}, Lcom/transsion/tranplayer/MediaPlayer;->nativeNewFromLibVlc(Lcom/transsion/tranplayer/LibVLC;Lcom/transsion/tranplayer/AWindow;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/tranplayer/Media;)V
    .locals 3

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/VLCObject;-><init>(Lcom/transsion/tranplayer/VLCObject;)V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mMedia:Lcom/transsion/tranplayer/Media;

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mPlaying:Z

    .line 24
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mPlayRequested:Z

    .line 25
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mListenAudioPlug:Z

    .line 26
    iput v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mVoutCount:I

    .line 27
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioReset:Z

    .line 28
    const-string v2, "android_audiotrack"

    iput-object v2, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugRegistered:Z

    .line 31
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioDigitalOutputEnabled:Z

    .line 32
    const-string v1, "stereo"

    iput-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    .line 33
    new-instance v1, Lcom/transsion/tranplayer/MediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/transsion/tranplayer/MediaPlayer$1;-><init>(Lcom/transsion/tranplayer/MediaPlayer;)V

    iput-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mSurfaceListener:Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;

    .line 34
    new-instance v2, Lcom/transsion/tranplayer/AWindow;

    invoke-direct {v2, v1}, Lcom/transsion/tranplayer/AWindow;-><init>(Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;)V

    iput-object v2, p0, Lcom/transsion/tranplayer/MediaPlayer;->mWindow:Lcom/transsion/tranplayer/AWindow;

    .line 35
    iput-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mGLRenderer:Lcom/transsion/tranplayer/GLRenderer;

    .line 36
    sget-boolean v1, Lcom/transsion/tranplayer/util/AndroidUtil;->isLolliPopOrLater:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/transsion/tranplayer/util/AndroidUtil;->isMarshMallowOrLater:Z

    if-nez v1, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->createAudioPlugReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    sget-boolean v1, Lcom/transsion/tranplayer/util/AndroidUtil;->isMarshMallowOrLater:Z

    if-eqz v1, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/transsion/tranplayer/Media;->isReleased()Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    iput-object p1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mMedia:Lcom/transsion/tranplayer/Media;

    .line 42
    invoke-virtual {p1}, Lcom/transsion/tranplayer/Media;->retain()Z

    .line 43
    iget-object p1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mMedia:Lcom/transsion/tranplayer/Media;

    invoke-direct {p0, p1, v2}, Lcom/transsion/tranplayer/MediaPlayer;->nativeNewFromMedia(Lcom/transsion/tranplayer/Media;Lcom/transsion/tranplayer/AWindow;)V

    return-void

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Media is null or released"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$200(Lcom/transsion/tranplayer/MediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mPlaying:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/transsion/tranplayer/MediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mPlayRequested:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/transsion/tranplayer/MediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mVoutCount:I

    return p0
.end method

.method public static synthetic access$500(Lcom/transsion/tranplayer/MediaPlayer;[I)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->getEncodingFlags([I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$600(Lcom/transsion/tranplayer/MediaPlayer;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tranplayer/MediaPlayer;->updateAudioOutputDevice(JLjava/lang/String;)V

    return-void
.end method

.method private createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    new-instance v0, Lcom/transsion/tranplayer/MediaPlayer$3;

    invoke-direct {v0, p0}, Lcom/transsion/tranplayer/MediaPlayer$3;-><init>(Lcom/transsion/tranplayer/MediaPlayer;)V

    return-object v0
.end method

.method private createAudioPlugReceiver()Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Lcom/transsion/tranplayer/MediaPlayer$2;

    invoke-direct {v0, p0}, Lcom/transsion/tranplayer/MediaPlayer$2;-><init>(Lcom/transsion/tranplayer/MediaPlayer;)V

    return-object v0
.end method

.method private static createChapterFromNative(JJLjava/lang/String;)Lcom/transsion/tranplayer/MediaPlayer$Chapter;
    .locals 8

    new-instance v7, Lcom/transsion/tranplayer/MediaPlayer$Chapter;

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/transsion/tranplayer/MediaPlayer$Chapter;-><init>(JJLjava/lang/String;Lcom/transsion/tranplayer/MediaPlayer$1;)V

    return-object v7
.end method

.method private static createTitleFromNative(JLjava/lang/String;I)Lcom/transsion/tranplayer/MediaPlayer$Title;
    .locals 1

    new-instance v0, Lcom/transsion/tranplayer/MediaPlayer$Title;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/tranplayer/MediaPlayer$Title;-><init>(JLjava/lang/String;I)V

    return-object v0
.end method

.method private static createTrackDescriptionFromNative(ILjava/lang/String;)Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;
    .locals 2

    new-instance v0, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;-><init>(ILjava/lang/String;Lcom/transsion/tranplayer/MediaPlayer$1;)V

    return-object v0
.end method

.method private getEncodingFlags([I)J
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p1, v3

    invoke-direct {p0, v4}, Lcom/transsion/tranplayer/MediaPlayer;->isEncoded(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    shl-int v4, v5, v4

    int-to-long v4, v4

    or-long/2addr v0, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private isAudioTrack()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "android_audiotrack"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEncoded(I)Z
    .locals 0

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    const/16 p0, 0xe

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private native nativeAddSlave(ILjava/lang/String;Z)Z
.end method

.method private native nativeGetAspectRatio()Ljava/lang/String;
.end method

.method private native nativeGetAudioDelay()J
.end method

.method private native nativeGetAudioTrack()I
.end method

.method private native nativeGetAudioTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;
.end method

.method private native nativeGetAudioTracksCount()I
.end method

.method private native nativeGetChapters(I)[Lcom/transsion/tranplayer/MediaPlayer$Chapter;
.end method

.method private native nativeGetScale()F
.end method

.method private native nativeGetSpuDelay()J
.end method

.method private native nativeGetSpuTrack()I
.end method

.method private native nativeGetSpuTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;
.end method

.method private native nativeGetSpuTracksCount()I
.end method

.method private native nativeGetTitles()[Lcom/transsion/tranplayer/MediaPlayer$Title;
.end method

.method private native nativeGetVideoTrack()I
.end method

.method private native nativeGetVideoTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;
.end method

.method private native nativeGetVideoTracksCount()I
.end method

.method private native nativeNewFromLibVlc(Lcom/transsion/tranplayer/LibVLC;Lcom/transsion/tranplayer/AWindow;)V
.end method

.method private native nativeNewFromMedia(Lcom/transsion/tranplayer/Media;Lcom/transsion/tranplayer/AWindow;)V
.end method

.method private native nativePlay()V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetAspectRatio(Ljava/lang/String;)V
.end method

.method private native nativeSetAudioDelay(J)Z
.end method

.method private native nativeSetAudioOutput(Ljava/lang/String;)Z
.end method

.method private native nativeSetAudioOutputDevice(Ljava/lang/String;)Z
.end method

.method private native nativeSetAudioTrack(I)Z
.end method

.method private native nativeSetEqualizer(Lcom/transsion/tranplayer/MediaPlayer$Equalizer;)Z
.end method

.method private native nativeSetMedia(Lcom/transsion/tranplayer/Media;)V
.end method

.method private native nativeSetRenderer(Lcom/transsion/tranplayer/RendererItem;)I
.end method

.method private native nativeSetScale(F)V
.end method

.method private native nativeSetSpuDelay(J)Z
.end method

.method private native nativeSetSpuTrack(I)Z
.end method

.method private native nativeSetVideoTitleDisplay(II)V
.end method

.method private native nativeSetVideoTrack(I)Z
.end method

.method private native nativeStop()V
.end method

.method private native nativeUpdateViewpoint(FFFFZ)Z
.end method

.method private registerAudioPlug(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugRegistered:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->registerAudioPlugV23(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->registerAudioPlugV21(Z)V

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugRegistered:Z

    return-void
.end method

.method private registerAudioPlugV21(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/tranplayer/VLCObject;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    iget-object v0, v0, Lcom/transsion/tranplayer/LibVLC;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/transsion/tranplayer/VLCObject;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    iget-object p0, p0, Lcom/transsion/tranplayer/LibVLC;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/tranplayer/VLCObject;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    iget-object p1, p1, Lcom/transsion/tranplayer/LibVLC;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerAudioPlugV23(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/transsion/tranplayer/VLCObject;->mLibVLC:Lcom/transsion/tranplayer/LibVLC;

    iget-object v0, v0, Lcom/transsion/tranplayer/LibVLC;->mAppContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V

    iget-object p0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->isAudioTrack()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/transsion/tranplayer/MediaPlayer;->mListenAudioPlug:Z

    if-nez p2, :cond_1

    invoke-direct {p0, v1}, Lcom/transsion/tranplayer/MediaPlayer;->registerAudioPlug(Z)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetAudioOutputDevice(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mListenAudioPlug:Z

    :cond_2
    iget-boolean p2, p0, Lcom/transsion/tranplayer/MediaPlayer;->mListenAudioPlug:Z

    if-eqz p2, :cond_3

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/MediaPlayer;->registerAudioPlug(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized updateAudioOutputDevice(JLjava/lang/String;)V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mCanDoPassthrough:Z

    iget-boolean v2, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioDigitalOutputEnabled:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encoded:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iput-object p3, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    invoke-direct {p0, p3, v1}, Lcom/transsion/tranplayer/MediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public addSlave(ILandroid/net/Uri;Z)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/transsion/tranplayer/util/VLCUtil;->encodeVLCUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tranplayer/MediaPlayer;->nativeAddSlave(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public addSlave(ILjava/lang/String;Z)Z
    .locals 1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tranplayer/MediaPlayer;->addSlave(ILandroid/net/Uri;Z)Z

    move-result p0

    return p0
.end method

.method public canDoPassthrough()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mCanDoPassthrough:Z

    return p0
.end method

.method public enableGLRenderer(I)Lcom/transsion/tranplayer/GLRenderer;
    .locals 2

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mWindow:Lcom/transsion/tranplayer/AWindow;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/AWindow;->areViewsAttached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mGLRenderer:Lcom/transsion/tranplayer/GLRenderer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mWindow:Lcom/transsion/tranplayer/AWindow;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/AWindow;->useGLRenderer()V

    new-instance v0, Lcom/transsion/tranplayer/GLRenderer;

    iget-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mSurfaceListener:Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;

    invoke-direct {v0, p1, p0, v1}, Lcom/transsion/tranplayer/GLRenderer;-><init>(ILcom/transsion/tranplayer/MediaPlayer;Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;)V

    iput-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mGLRenderer:Lcom/transsion/tranplayer/GLRenderer;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "GLRenderer already enabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can\'t work with views attached to IVLCVout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized forceAudioDigitalEncodings([I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->isAudioTrack()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/transsion/tranplayer/MediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->getEncodingFlags([I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/transsion/tranplayer/MediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getAspectRatio()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetAspectRatio()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAudioDelay()J
    .locals 2

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetAudioDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioTrack()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetAudioTrack()I

    move-result p0

    return p0
.end method

.method public getAudioTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetAudioTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    move-result-object p0

    return-object p0
.end method

.method public getAudioTracksCount()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetAudioTracksCount()I

    move-result p0

    return p0
.end method

.method public native getChapter()I
.end method

.method public getChapters(I)[Lcom/transsion/tranplayer/MediaPlayer$Chapter;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetChapters(I)[Lcom/transsion/tranplayer/MediaPlayer$Chapter;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentVideoTrack()Lcom/transsion/tranplayer/Media$VideoTrack;
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getVideoTrack()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mMedia:Lcom/transsion/tranplayer/Media;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/Media;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/transsion/tranplayer/MediaPlayer;->mMedia:Lcom/transsion/tranplayer/Media;

    invoke-virtual {v3, v1}, Lcom/transsion/tranplayer/Media;->getTrack(I)Lcom/transsion/tranplayer/Media$Track;

    move-result-object v3

    iget v4, v3, Lcom/transsion/tranplayer/Media$Track;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    check-cast v3, Lcom/transsion/tranplayer/Media$VideoTrack;

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public native getLength()J
.end method

.method public declared-synchronized getMedia()Lcom/transsion/tranplayer/Media;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mMedia:Lcom/transsion/tranplayer/Media;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/tranplayer/Media;->retain()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mMedia:Lcom/transsion/tranplayer/Media;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public native getPlayerState()I
.end method

.method public native getPosition()F
.end method

.method public native getRate()F
.end method

.method public getScale()F
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetScale()F

    move-result p0

    return p0
.end method

.method public getSpuDelay()J
    .locals 2

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetSpuDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpuTrack()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetSpuTrack()I

    move-result p0

    return p0
.end method

.method public getSpuTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetSpuTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    move-result-object p0

    return-object p0
.end method

.method public getSpuTracksCount()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetSpuTracksCount()I

    move-result p0

    return p0
.end method

.method public native getTime()J
.end method

.method public native getTitle()I
.end method

.method public getTitles()[Lcom/transsion/tranplayer/MediaPlayer$Title;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetTitles()[Lcom/transsion/tranplayer/MediaPlayer$Title;

    move-result-object p0

    return-object p0
.end method

.method public getVLCVout()Lcom/transsion/tranplayer/IVLCVout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mWindow:Lcom/transsion/tranplayer/AWindow;

    return-object p0
.end method

.method public getVideoTrack()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetVideoTrack()I

    move-result p0

    return p0
.end method

.method public getVideoTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetVideoTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    move-result-object p0

    return-object p0
.end method

.method public getVideoTracksCount()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeGetVideoTracksCount()I

    move-result p0

    return p0
.end method

.method public native getVolume()I
.end method

.method public declared-synchronized hasMedia()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mMedia:Lcom/transsion/tranplayer/Media;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public bridge synthetic isReleased()Z
    .locals 0

    invoke-super {p0}, Lcom/transsion/tranplayer/VLCObject;->isReleased()Z

    move-result p0

    return p0
.end method

.method public native isSeekable()Z
.end method

.method public native navigate(I)V
.end method

.method public native nextChapter()I
.end method

.method public declared-synchronized onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/MediaPlayer$Event;
    .locals 13

    move-object v1, p0

    move v0, p1

    move-wide v4, p2

    move/from16 v2, p10

    monitor-enter p0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :pswitch_1
    :try_start_0
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    goto/16 :goto_0

    .line 4
    :pswitch_2
    :try_start_1
    new-instance v9, Lcom/transsion/tranplayer/MediaPlayer$Event;

    move-object v2, v9

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p11

    invoke-direct/range {v2 .. v8}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJJLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v9

    .line 5
    :pswitch_3
    :try_start_2
    new-instance v3, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v3, p1, v2}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    .line 6
    :pswitch_4
    :try_start_3
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    .line 7
    :pswitch_5
    :try_start_4
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    move-object/from16 p6, v2

    move/from16 p7, p1

    move-wide/from16 p8, p2

    move-wide/from16 p10, p4

    invoke-direct/range {p6 .. p11}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v2

    .line 8
    :pswitch_6
    :try_start_5
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2

    .line 9
    :pswitch_7
    :try_start_6
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v2

    .line 10
    :pswitch_8
    :try_start_7
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v2

    .line 11
    :pswitch_9
    :try_start_8
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v2

    .line 12
    :pswitch_a
    :try_start_9
    new-instance v9, Lcom/transsion/tranplayer/MediaPlayer$Event;

    move-object v2, v9

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p11

    invoke-direct/range {v2 .. v8}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJJLjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object v9

    .line 13
    :pswitch_b
    :try_start_a
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v2

    .line 14
    :pswitch_c
    :try_start_b
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object v2

    .line 15
    :pswitch_d
    :try_start_c
    new-instance v12, Lcom/transsion/tranplayer/MediaPlayer$Event;

    move-object v2, v12

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v2 .. v11}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJJJJ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object v12

    .line 16
    :pswitch_e
    :try_start_d
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-object v2

    .line 17
    :pswitch_f
    :try_start_e
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    move-object/from16 p6, v2

    move/from16 p7, p1

    move-wide/from16 p8, p2

    move-wide/from16 p10, p4

    invoke-direct/range {p6 .. p11}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJJ)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return-object v2

    :pswitch_10
    long-to-int v2, v4

    .line 18
    :try_start_f
    iput v2, v1, Lcom/transsion/tranplayer/MediaPlayer;->mVoutCount:I

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 20
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJ)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit p0

    return-object v2

    .line 21
    :pswitch_11
    :try_start_10
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJ)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit p0

    return-object v2

    .line 22
    :pswitch_12
    :try_start_11
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJ)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    return-object v2

    .line 23
    :pswitch_13
    :try_start_12
    new-instance v3, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v3, p1, v2}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IF)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    monitor-exit p0

    return-object v3

    .line 24
    :pswitch_14
    :try_start_13
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJ)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    monitor-exit p0

    return-object v2

    .line 25
    :pswitch_15
    :try_start_14
    iput v3, v1, Lcom/transsion/tranplayer/MediaPlayer;->mVoutCount:I

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 27
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1, v4, v5}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IJ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    monitor-exit p0

    return-object v2

    .line 28
    :pswitch_16
    :try_start_15
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    monitor-exit p0

    return-object v2

    .line 29
    :pswitch_17
    :try_start_16
    new-instance v3, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v3, p1, v2}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(IF)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    monitor-exit p0

    return-object v3

    .line 30
    :pswitch_18
    :try_start_17
    iput v3, v1, Lcom/transsion/tranplayer/MediaPlayer;->mVoutCount:I

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 32
    new-instance v2, Lcom/transsion/tranplayer/MediaPlayer$Event;

    invoke-direct {v2, p1}, Lcom/transsion/tranplayer/MediaPlayer$Event;-><init>(I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_0
    :try_start_18
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_16
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

.method public bridge synthetic onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/VLCEvent;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p11}, Lcom/transsion/tranplayer/MediaPlayer;->onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/MediaPlayer$Event;

    move-result-object p0

    return-object p0
.end method

.method public onReleaseNative()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mGLRenderer:Lcom/transsion/tranplayer/GLRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/tranplayer/GLRenderer;->release()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mWindow:Lcom/transsion/tranplayer/AWindow;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/AWindow;->detachViews()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/MediaPlayer;->registerAudioPlug(Z)V

    iget-object v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mMedia:Lcom/transsion/tranplayer/Media;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/tranplayer/Media;->release()V

    :cond_1
    iput v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mVoutCount:I

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeRelease()V

    return-void
.end method

.method public native pause()V
.end method

.method public play()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mPlaying:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioReset:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetAudioOutput(Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetAudioOutputDevice(Ljava/lang/String;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioReset:Z

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mListenAudioPlug:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/transsion/tranplayer/MediaPlayer;->registerAudioPlug(Z)V

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mPlayRequested:Z

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mWindow:Lcom/transsion/tranplayer/AWindow;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/AWindow;->areSurfacesWaiting()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mGLRenderer:Lcom/transsion/tranplayer/GLRenderer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/tranplayer/GLRenderer;->isValid()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mPlaying:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativePlay()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public native previousChapter()I
.end method

.method public setAspectRatio(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetAspectRatio(Ljava/lang/String;)V

    return-void
.end method

.method public setAudioDelay(J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetAudioDelay(J)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized setAudioDigitalOutputEnabled(Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioDigitalOutputEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mListenAudioPlug:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->isAudioTrack()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/transsion/tranplayer/MediaPlayer;->registerAudioPlug(Z)V

    iput-boolean p1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioDigitalOutputEnabled:Z

    invoke-direct {p0, v1}, Lcom/transsion/tranplayer/MediaPlayer;->registerAudioPlug(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return v2

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public native setAudioMute(Z)Z
.end method

.method public declared-synchronized setAudioOutput(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->isAudioTrack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mListenAudioPlug:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/transsion/tranplayer/MediaPlayer;->registerAudioPlug(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetAudioOutput(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mListenAudioPlug:Z

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mListenAudioPlug:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/MediaPlayer;->registerAudioPlug(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setAudioOutputDevice(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/transsion/tranplayer/MediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setAudioTrack(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetAudioTrack(I)Z

    move-result p0

    return p0
.end method

.method public native setChapter(I)V
.end method

.method public native setDropAudioFrames(Z)Z
.end method

.method public setEqualizer(Lcom/transsion/tranplayer/MediaPlayer$Equalizer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetEqualizer(Lcom/transsion/tranplayer/MediaPlayer$Equalizer;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized setEventListener(Lcom/transsion/tranplayer/MediaPlayer$EventListener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/tranplayer/VLCObject;->setEventListener(Lcom/transsion/tranplayer/VLCEvent$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public native setListenVideoMode(Z)Z
.end method

.method public native setLooping(Z)Z
.end method

.method public setMedia(Lcom/transsion/tranplayer/Media;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/tranplayer/Media;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/tranplayer/Media;->setDefaultMediaPlayerOptions()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Media is released"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetMedia(Lcom/transsion/tranplayer/Media;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mMedia:Lcom/transsion/tranplayer/Media;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/tranplayer/Media;->release()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/tranplayer/Media;->retain()Z

    :cond_3
    iput-object p1, p0, Lcom/transsion/tranplayer/MediaPlayer;->mMedia:Lcom/transsion/tranplayer/Media;

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPinPVideoMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/tranplayer/VLCObject;->setPinPVideoMode(Z)V

    return-void
.end method

.method public native setPosition(FZ)V
.end method

.method public native setRate(F)V
.end method

.method public native setRefreshFirstFrame(Z)Z
.end method

.method public setRenderer(Lcom/transsion/tranplayer/RendererItem;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetRenderer(Lcom/transsion/tranplayer/RendererItem;)I

    move-result p0

    return p0
.end method

.method public setScale(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetScale(F)V

    return-void
.end method

.method public setSpuDelay(J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetSpuDelay(J)Z

    move-result p0

    return p0
.end method

.method public setSpuTrack(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetSpuTrack(I)Z

    move-result p0

    return p0
.end method

.method public native setSurface(Z)Z
.end method

.method public native setSurfaceDestroyed(Z)Z
.end method

.method public native setTime(JZ)J
.end method

.method public native setTitle(I)V
.end method

.method public setVideoTitleDisplay(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetVideoTitleDisplay(II)V

    return-void
.end method

.method public setVideoTrack(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mWindow:Lcom/transsion/tranplayer/AWindow;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/AWindow;->areViewsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mWindow:Lcom/transsion/tranplayer/AWindow;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/AWindow;->areSurfacesWaiting()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mGLRenderer:Lcom/transsion/tranplayer/GLRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/tranplayer/GLRenderer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/MediaPlayer;->nativeSetVideoTrack(I)Z

    move-result p0

    return p0
.end method

.method public setVideoTrackEnabled(Z)V
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/tranplayer/MediaPlayer;->setVideoTrack(I)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getVideoTrack()I

    move-result p1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/tranplayer/MediaPlayer;->getVideoTracks()[Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    iget v3, v3, Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;->id:I

    if-eq v3, v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/transsion/tranplayer/MediaPlayer;->setVideoTrack(I)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public native setVolume(I)I
.end method

.method public stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mPlayRequested:Z

    iput-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mPlaying:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/tranplayer/MediaPlayer;->mAudioReset:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/transsion/tranplayer/MediaPlayer;->nativeStop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateViewpoint(FFFFZ)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/tranplayer/MediaPlayer;->nativeUpdateViewpoint(FFFFZ)Z

    move-result p0

    return p0
.end method
