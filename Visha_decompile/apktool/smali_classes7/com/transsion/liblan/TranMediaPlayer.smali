.class public Lcom/transsion/liblan/TranMediaPlayer;
.super Lcom/transsion/liblan/LANObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/TranMediaPlayer$Title;,
        Lcom/transsion/liblan/TranMediaPlayer$Chapter;,
        Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;,
        Lcom/transsion/liblan/TranMediaPlayer$ScaleType;,
        Lcom/transsion/liblan/TranMediaPlayer$Equalizer;,
        Lcom/transsion/liblan/TranMediaPlayer$EventTran;,
        Lcom/transsion/liblan/TranMediaPlayer$Navigate;,
        Lcom/transsion/liblan/TranMediaPlayer$Position;,
        Lcom/transsion/liblan/TranMediaPlayer$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/liblan/LANObject<",
        "Lcom/transsion/liblan/TranMediaPlayer$EventTran;",
        ">;"
    }
.end annotation


# static fields
.field public static final SURFACE_SCALES_COUNT:I

.field public static final TAG:Ljava/lang/String; = "TranMediaPlayer"


# instance fields
.field private mAfd:Landroid/content/res/AssetFileDescriptor;

.field private final mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field private mAudioDigitalOutputEnabled:Z

.field private mAudioOutput:Ljava/lang/String;

.field private mAudioOutputDevice:Ljava/lang/String;

.field private mAudioPlugOutputDevice:Ljava/lang/String;

.field private final mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioPlugRegistered:Z

.field private mAudioReset:Z

.field private mCanDoPassthrough:Z

.field mHandlerMainThread:Landroid/os/Handler;

.field private mListenAudioPlug:Z

.field private mListenVideo:Z

.field private mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

.field private mPlayRequested:Z

.field private mPlaying:Z

.field private mRenderer:Lcom/transsion/liblan/RendererItem;

.field private mVideoHelper:Lcom/transsion/liblan/LanVideoHelper;

.field private mVoutCount:I

.field private final mWindow:Lcom/transsion/liblan/TranWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->values()[Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/transsion/liblan/TranMediaPlayer;->SURFACE_SCALES_COUNT:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/liblan/LANObject;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    .line 3
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mRenderer:Lcom/transsion/liblan/RendererItem;

    .line 4
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlaying:Z

    .line 6
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlayRequested:Z

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mListenAudioPlug:Z

    .line 8
    iput v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVoutCount:I

    .line 9
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioReset:Z

    .line 10
    const-string v2, "android_audiotrack"

    iput-object v2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioOutput:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    .line 12
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugRegistered:Z

    .line 13
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioDigitalOutputEnabled:Z

    .line 14
    const-string v1, "stereo"

    iput-object v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVideoHelper:Lcom/transsion/liblan/LanVideoHelper;

    .line 16
    new-instance v1, Lcom/transsion/liblan/TranWindow;

    new-instance v2, Lcom/transsion/liblan/TranMediaPlayer$1;

    invoke-direct {v2, p0}, Lcom/transsion/liblan/TranMediaPlayer$1;-><init>(Lcom/transsion/liblan/TranMediaPlayer;)V

    invoke-direct {v1, v2}, Lcom/transsion/liblan/TranWindow;-><init>(Lcom/transsion/liblan/TranWindow$SurfaceCallback;)V

    iput-object v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mWindow:Lcom/transsion/liblan/TranWindow;

    .line 17
    sget-boolean v2, Lcom/transsion/liblan/util/AndroidUtil;->IS_LOLLI_POP_OR_LATER:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/transsion/liblan/util/AndroidUtil;->IS_MARSH_MALLOW_OR_LATER:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->createAudioPlugReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    sget-boolean v2, Lcom/transsion/liblan/util/AndroidUtil;->IS_MARSH_MALLOW_OR_LATER:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mHandlerMainThread:Landroid/os/Handler;

    .line 20
    invoke-direct {p0, p1, v1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeNewFromLibLan(Lcom/transsion/liblan/interfaces/ITranLibLAN;Lcom/transsion/liblan/TranWindow;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/liblan/interfaces/ITranMedia;)V
    .locals 3
    .param p1    # Lcom/transsion/liblan/interfaces/ITranMedia;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/liblan/LANObject;-><init>(Lcom/transsion/liblan/interfaces/ITranLANObject;)V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    .line 23
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mRenderer:Lcom/transsion/liblan/RendererItem;

    .line 24
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlaying:Z

    .line 26
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlayRequested:Z

    const/4 v2, 0x1

    .line 27
    iput-boolean v2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mListenAudioPlug:Z

    .line 28
    iput v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVoutCount:I

    .line 29
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioReset:Z

    .line 30
    const-string v2, "android_audiotrack"

    iput-object v2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioOutput:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugRegistered:Z

    .line 33
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioDigitalOutputEnabled:Z

    .line 34
    const-string v1, "stereo"

    iput-object v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVideoHelper:Lcom/transsion/liblan/LanVideoHelper;

    .line 36
    new-instance v1, Lcom/transsion/liblan/TranWindow;

    new-instance v2, Lcom/transsion/liblan/TranMediaPlayer$1;

    invoke-direct {v2, p0}, Lcom/transsion/liblan/TranMediaPlayer$1;-><init>(Lcom/transsion/liblan/TranMediaPlayer;)V

    invoke-direct {v1, v2}, Lcom/transsion/liblan/TranWindow;-><init>(Lcom/transsion/liblan/TranWindow$SurfaceCallback;)V

    iput-object v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mWindow:Lcom/transsion/liblan/TranWindow;

    .line 37
    sget-boolean v2, Lcom/transsion/liblan/util/AndroidUtil;->IS_LOLLI_POP_OR_LATER:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/transsion/liblan/util/AndroidUtil;->IS_MARSH_MALLOW_OR_LATER:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->createAudioPlugReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    sget-boolean v2, Lcom/transsion/liblan/util/AndroidUtil;->IS_MARSH_MALLOW_OR_LATER:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mHandlerMainThread:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 40
    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->isReleased()Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    iput-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    .line 42
    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->retain()Z

    .line 43
    iget-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    invoke-direct {p0, p1, v1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeNewFromMedia(Lcom/transsion/liblan/interfaces/ITranMedia;Lcom/transsion/liblan/TranWindow;)V

    return-void

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Media is null or released"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic a(Lcom/transsion/liblan/TranMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlayRequested:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/liblan/TranMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlaying:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/liblan/TranMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVoutCount:I

    return p0
.end method

.method private createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    new-instance v0, Lcom/transsion/liblan/TranMediaPlayer$3;

    invoke-direct {v0, p0}, Lcom/transsion/liblan/TranMediaPlayer$3;-><init>(Lcom/transsion/liblan/TranMediaPlayer;)V

    return-object v0
.end method

.method private createAudioPlugReceiver()Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Lcom/transsion/liblan/TranMediaPlayer$2;

    invoke-direct {v0, p0}, Lcom/transsion/liblan/TranMediaPlayer$2;-><init>(Lcom/transsion/liblan/TranMediaPlayer;)V

    return-object v0
.end method

.method private static createChapterFromNative(JJLjava/lang/String;)Lcom/transsion/liblan/TranMediaPlayer$Chapter;
    .locals 8

    new-instance v7, Lcom/transsion/liblan/TranMediaPlayer$Chapter;

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/transsion/liblan/TranMediaPlayer$Chapter;-><init>(JJLjava/lang/String;Lvxa;)V

    return-object v7
.end method

.method private static createTitleFromNative(JLjava/lang/String;I)Lcom/transsion/liblan/TranMediaPlayer$Title;
    .locals 1

    new-instance v0, Lcom/transsion/liblan/TranMediaPlayer$Title;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/liblan/TranMediaPlayer$Title;-><init>(JLjava/lang/String;I)V

    return-object v0
.end method

.method private static createTrackDescriptionFromNative(ILjava/lang/String;)Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;
    .locals 2

    new-instance v0, Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;-><init>(ILjava/lang/String;Lvxa;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/transsion/liblan/TranMediaPlayer;[I)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->getEncodingFlags([I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic e(Lcom/transsion/liblan/TranMediaPlayer;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/liblan/TranMediaPlayer;->updateAudioOutputDevice(JLjava/lang/String;)V

    return-void
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

    invoke-direct {p0, v4}, Lcom/transsion/liblan/TranMediaPlayer;->isEncoded(I)Z

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

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioOutput:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "android_audiotrack"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private native nativeGetAudioTracks()[Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;
.end method

.method private native nativeGetAudioTracksCount()I
.end method

.method private native nativeGetChapters(I)[Lcom/transsion/liblan/TranMediaPlayer$Chapter;
.end method

.method private native nativeGetScale()F
.end method

.method private native nativeGetSpuDelay()J
.end method

.method private native nativeGetSpuTrack()I
.end method

.method private native nativeGetSpuTracks()[Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;
.end method

.method private native nativeGetSpuTracksCount()I
.end method

.method private native nativeGetTitles()[Lcom/transsion/liblan/TranMediaPlayer$Title;
.end method

.method private native nativeGetVideoTrack()I
.end method

.method private native nativeGetVideoTracks()[Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;
.end method

.method private native nativeGetVideoTracksCount()I
.end method

.method private native nativeNewFromLibLan(Lcom/transsion/liblan/interfaces/ITranLibLAN;Lcom/transsion/liblan/TranWindow;)V
.end method

.method private native nativeNewFromMedia(Lcom/transsion/liblan/interfaces/ITranMedia;Lcom/transsion/liblan/TranWindow;)V
.end method

.method private native nativePlay()V
.end method

.method private native nativeRecord(Ljava/lang/String;)Z
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

.method private native nativeSetEqualizer(Lcom/transsion/liblan/TranMediaPlayer$Equalizer;)Z
.end method

.method private native nativeSetMedia(Lcom/transsion/liblan/interfaces/ITranMedia;)V
.end method

.method private native nativeSetRenderer(Lcom/transsion/liblan/RendererItem;)I
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

    iget-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugRegistered:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->registerAudioPlugV23(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->registerAudioPlugV21(Z)V

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugRegistered:Z

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

    iget-object v0, p0, Lcom/transsion/liblan/LANObject;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    invoke-interface {v0}, Lcom/transsion/liblan/interfaces/ITranLibLAN;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/transsion/liblan/LANObject;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    invoke-interface {p0}, Lcom/transsion/liblan/interfaces/ITranLibLAN;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/liblan/LANObject;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLibLAN;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

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

    iget-object v0, p0, Lcom/transsion/liblan/LANObject;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    invoke-interface {v0}, Lcom/transsion/liblan/interfaces/ITranLibLAN;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->isAudioTrack()Z

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
    iput-boolean p2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mListenAudioPlug:Z

    if-nez p2, :cond_1

    invoke-direct {p0, v1}, Lcom/transsion/liblan/TranMediaPlayer;->registerAudioPlug(Z)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetAudioOutputDevice(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mListenAudioPlug:Z

    :cond_2
    iget-boolean p2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mListenAudioPlug:Z

    if-eqz p2, :cond_3

    invoke-direct {p0, v0}, Lcom/transsion/liblan/TranMediaPlayer;->registerAudioPlug(Z)V
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
    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mCanDoPassthrough:Z

    iget-boolean v2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioDigitalOutputEnabled:Z

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
    iget-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iput-object p3, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    invoke-direct {p0, p3, v1}, Lcom/transsion/liblan/TranMediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z
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
    invoke-static {p2}, Lcom/transsion/liblan/util/LANUtil;->encodeLANUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/liblan/TranMediaPlayer;->nativeAddSlave(ILjava/lang/String;Z)Z

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/liblan/TranMediaPlayer;->addSlave(ILandroid/net/Uri;Z)Z

    move-result p0

    return p0
.end method

.method public attachViews(Lcom/transsion/liblan/util/LANVideoLayout;Lcom/transsion/liblan/util/DisplayManager;ZZ)V
    .locals 7
    .param p1    # Lcom/transsion/liblan/util/LANVideoLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/liblan/util/DisplayManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v6, Lcom/transsion/liblan/LanVideoHelper;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/liblan/LanVideoHelper;-><init>(Lcom/transsion/liblan/TranMediaPlayer;Lcom/transsion/liblan/util/LANVideoLayout;Lcom/transsion/liblan/util/DisplayManager;ZZ)V

    iput-object v6, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVideoHelper:Lcom/transsion/liblan/LanVideoHelper;

    invoke-virtual {v6}, Lcom/transsion/liblan/LanVideoHelper;->attachViews()V

    return-void
.end method

.method public canDoPassthrough()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mCanDoPassthrough:Z

    return p0
.end method

.method public detachViews()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVideoHelper:Lcom/transsion/liblan/LanVideoHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/liblan/LanVideoHelper;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVideoHelper:Lcom/transsion/liblan/LanVideoHelper;

    :cond_0
    return-void
.end method

.method public declared-synchronized forceAudioDigitalEncodings([I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->isAudioTrack()Z

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

    invoke-direct {p0, p1, v1}, Lcom/transsion/liblan/TranMediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->getEncodingFlags([I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/transsion/liblan/TranMediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z
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

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetAspectRatio()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAudioDelay()J
    .locals 2

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetAudioDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioTrack()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetAudioTrack()I

    move-result p0

    return p0
.end method

.method public getAudioTracks()[Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetAudioTracks()[Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;

    move-result-object p0

    return-object p0
.end method

.method public getAudioTracksCount()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetAudioTracksCount()I

    move-result p0

    return p0
.end method

.method public native getChapter()I
.end method

.method public getChapters(I)[Lcom/transsion/liblan/TranMediaPlayer$Chapter;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetChapters(I)[Lcom/transsion/liblan/TranMediaPlayer$Chapter;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentVideoTrack()Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->getVideoTrack()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    invoke-interface {v0}, Lcom/transsion/liblan/interfaces/ITranMedia;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/transsion/liblan/TranMediaPlayer;->mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    invoke-interface {v3, v1}, Lcom/transsion/liblan/interfaces/ITranMedia;->getTrack(I)Lcom/transsion/liblan/interfaces/ITranMedia$Track;

    move-result-object v3

    iget v4, v3, Lcom/transsion/liblan/interfaces/ITranMedia$Track;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    check-cast v3, Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public bridge synthetic getInstance()J
    .locals 2

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->getInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method public native getLength()J
.end method

.method public declared-synchronized getMedia()Lcom/transsion/liblan/interfaces/ITranMedia;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/liblan/interfaces/ITranLANObject;->retain()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;
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

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetScale()F

    move-result p0

    return p0
.end method

.method public getSpuDelay()J
    .locals 2

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetSpuDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpuTrack()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetSpuTrack()I

    move-result p0

    return p0
.end method

.method public getSpuTracks()[Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetSpuTracks()[Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;

    move-result-object p0

    return-object p0
.end method

.method public getSpuTracksCount()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetSpuTracksCount()I

    move-result p0

    return p0
.end method

.method public getSurfaceState()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mWindow:Lcom/transsion/liblan/TranWindow;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/liblan/TranWindow;->getSurfaceState()I

    move-result p0

    :goto_0
    return p0
.end method

.method public native getTime()J
.end method

.method public native getTitle()I
.end method

.method public getTitles()[Lcom/transsion/liblan/TranMediaPlayer$Title;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetTitles()[Lcom/transsion/liblan/TranMediaPlayer$Title;

    move-result-object p0

    return-object p0
.end method

.method public getTranLANVout()Lcom/transsion/liblan/interfaces/ITranLANVout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mWindow:Lcom/transsion/liblan/TranWindow;

    return-object p0
.end method

.method public bridge synthetic getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .locals 0

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;

    move-result-object p0

    return-object p0
.end method

.method public getVideoHelper()Lcom/transsion/liblan/LanVideoHelper;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVideoHelper:Lcom/transsion/liblan/LanVideoHelper;

    return-object p0
.end method

.method public getVideoScale()Lcom/transsion/liblan/TranMediaPlayer$ScaleType;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVideoHelper:Lcom/transsion/liblan/LanVideoHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/liblan/LanVideoHelper;->getVideoScale()Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/liblan/TranMediaPlayer$ScaleType;->SURFACE_BEST_FIT:Lcom/transsion/liblan/TranMediaPlayer$ScaleType;

    :goto_0
    return-object p0
.end method

.method public getVideoTrack()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetVideoTrack()I

    move-result p0

    return p0
.end method

.method public getVideoTracks()[Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetVideoTracks()[Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;

    move-result-object p0

    return-object p0
.end method

.method public getVideoTracksCount()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeGetVideoTracksCount()I

    move-result p0

    return p0
.end method

.method public native getVolume()I
.end method

.method public declared-synchronized hasMedia()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;
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

.method public native isPlaying()Z
.end method

.method public bridge synthetic isReleased()Z
    .locals 0

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->isReleased()Z

    move-result p0

    return p0
.end method

.method public native isSeekable()Z
.end method

.method public native nativeSetPosition(FZ)V
.end method

.method public native nativeSetTime(JZ)J
.end method

.method public native navigate(I)V
.end method

.method public native nextChapter()I
.end method

.method public declared-synchronized onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/TranMediaPlayer$EventTran;
    .locals 6
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    const/16 v0, 0x11e

    if-eq p1, v0, :cond_2

    const/16 p7, 0x111

    if-eq p1, p7, :cond_1

    const/16 p7, 0x112

    if-eq p1, p7, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 2
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :pswitch_0
    :try_start_0
    new-instance p6, Lcom/transsion/liblan/TranMediaPlayer$EventTran;

    move-object v0, p6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/liblan/TranMediaPlayer$EventTran;-><init>(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p6

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :pswitch_1
    :try_start_1
    new-instance p4, Lcom/transsion/liblan/TranMediaPlayer$EventTran;

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/liblan/TranMediaPlayer$EventTran;-><init>(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p4

    .line 5
    :pswitch_2
    :try_start_2
    new-instance p2, Lcom/transsion/liblan/TranMediaPlayer$EventTran;

    invoke-direct {p2, p1, p6}, Lcom/transsion/liblan/TranMediaPlayer$EventTran;-><init>(IF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    .line 6
    :pswitch_3
    :try_start_3
    new-instance p4, Lcom/transsion/liblan/TranMediaPlayer$EventTran;

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/liblan/TranMediaPlayer$EventTran;-><init>(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p4

    .line 7
    :pswitch_4
    :try_start_4
    new-instance p2, Lcom/transsion/liblan/TranMediaPlayer$EventTran;

    invoke-direct {p2, p1}, Lcom/transsion/liblan/TranMediaPlayer$EventTran;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_0
    long-to-int p4, p2

    .line 8
    :try_start_5
    iput p4, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVoutCount:I

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 10
    iget-object p4, p0, Lcom/transsion/liblan/TranMediaPlayer;->mHandlerMainThread:Landroid/os/Handler;

    new-instance p5, Lcom/transsion/liblan/TranMediaPlayer$4;

    invoke-direct {p5, p0}, Lcom/transsion/liblan/TranMediaPlayer$4;-><init>(Lcom/transsion/liblan/TranMediaPlayer;)V

    invoke-virtual {p4, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    new-instance p4, Lcom/transsion/liblan/TranMediaPlayer$EventTran;

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/liblan/TranMediaPlayer$EventTran;-><init>(IJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p4

    .line 12
    :cond_1
    :try_start_6
    new-instance p4, Lcom/transsion/liblan/TranMediaPlayer$EventTran;

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/liblan/TranMediaPlayer$EventTran;-><init>(IJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p4

    .line 13
    :cond_2
    :try_start_7
    new-instance p4, Lcom/transsion/liblan/TranMediaPlayer$EventTran;

    invoke-direct {p4, p1, p2, p3, p7}, Lcom/transsion/liblan/TranMediaPlayer$EventTran;-><init>(IJLjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p4

    :cond_3
    :pswitch_5
    const/4 p2, 0x0

    .line 14
    :try_start_8
    iput p2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVoutCount:I

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 16
    :pswitch_6
    new-instance p2, Lcom/transsion/liblan/TranMediaPlayer$EventTran;

    invoke-direct {p2, p1, p6}, Lcom/transsion/liblan/TranMediaPlayer$EventTran;-><init>(IF)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object p2

    :goto_0
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x102
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x109
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x114
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual/range {p0 .. p7}, Lcom/transsion/liblan/TranMediaPlayer;->onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/TranMediaPlayer$EventTran;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 3

    const-string v0, "TranMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlayRequested:Z

    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlaying:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->pause()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onReleaseNativeItem()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->detachViews()V

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mWindow:Lcom/transsion/liblan/TranWindow;

    invoke-virtual {v0}, Lcom/transsion/liblan/TranWindow;->detachViews()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/liblan/TranMediaPlayer;->registerAudioPlug(Z)V

    iget-object v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mRenderer:Lcom/transsion/liblan/RendererItem;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/liblan/LANObject;->release()V

    :cond_1
    iput v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVoutCount:I

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeRelease()V

    return-void
.end method

.method public native pause()V
.end method

.method public play()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "TranMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlaying:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 4
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioReset:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioOutput:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0, v0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetAudioOutput(Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0, v0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetAudioOutputDevice(Ljava/lang/String;)Z

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioReset:Z

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mListenAudioPlug:Z

    if-eqz v0, :cond_3

    .line 11
    invoke-direct {p0, v1}, Lcom/transsion/liblan/TranMediaPlayer;->registerAudioPlug(Z)V

    .line 12
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlayRequested:Z

    .line 13
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mWindow:Lcom/transsion/liblan/TranWindow;

    invoke-virtual {v0}, Lcom/transsion/liblan/TranWindow;->areSurfacesWaiting()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    const-string v0, "TranMediaPlayer"

    const-string v1, "play areSurfacesWaiting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlaying:Z

    .line 17
    const-string v0, "TranMediaPlayer"

    const-string v1, "play mPlaying"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativePlay()V

    return-void

    .line 20
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public play(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2
    .param p1    # Landroid/content/res/AssetFileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    new-instance v0, Lcom/transsion/liblan/TranMedia;

    iget-object v1, p0, Lcom/transsion/liblan/LANObject;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    invoke-direct {v0, v1, p1}, Lcom/transsion/liblan/TranMedia;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/content/res/AssetFileDescriptor;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/transsion/liblan/TranMediaPlayer;->play(Lcom/transsion/liblan/interfaces/ITranMedia;)V

    return-void
.end method

.method public play(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    new-instance v0, Lcom/transsion/liblan/TranMedia;

    iget-object v1, p0, Lcom/transsion/liblan/LANObject;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    invoke-direct {v0, v1, p1}, Lcom/transsion/liblan/TranMedia;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/net/Uri;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/transsion/liblan/TranMediaPlayer;->play(Lcom/transsion/liblan/interfaces/ITranMedia;)V

    return-void
.end method

.method public play(Lcom/transsion/liblan/interfaces/ITranMedia;)V
    .locals 0
    .param p1    # Lcom/transsion/liblan/interfaces/ITranMedia;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-virtual {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->setMedia(Lcom/transsion/liblan/interfaces/ITranMedia;)V

    .line 28
    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    .line 29
    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->play()V

    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    new-instance v0, Lcom/transsion/liblan/TranMedia;

    iget-object v1, p0, Lcom/transsion/liblan/LANObject;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    invoke-direct {v0, v1, p1}, Lcom/transsion/liblan/TranMedia;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/transsion/liblan/TranMediaPlayer;->play(Lcom/transsion/liblan/interfaces/ITranMedia;)V

    return-void
.end method

.method public playAsset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->play(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public native previousChapter()I
.end method

.method public record(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeRecord(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setAspectRatio(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetAspectRatio(Ljava/lang/String;)V

    return-void
.end method

.method public setAudioDelay(J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetAudioDelay(J)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized setAudioDigitalOutputEnabled(Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioDigitalOutputEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mListenAudioPlug:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->isAudioTrack()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/transsion/liblan/TranMediaPlayer;->registerAudioPlug(Z)V

    iput-boolean p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioDigitalOutputEnabled:Z

    invoke-direct {p0, v1}, Lcom/transsion/liblan/TranMediaPlayer;->registerAudioPlug(Z)V
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

.method public declared-synchronized setAudioOutput(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioOutput:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->isAudioTrack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mListenAudioPlug:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/transsion/liblan/TranMediaPlayer;->registerAudioPlug(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetAudioOutput(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioOutput:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mListenAudioPlug:Z

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mListenAudioPlug:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/liblan/TranMediaPlayer;->registerAudioPlug(Z)V
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

    invoke-direct {p0, p1, v0}, Lcom/transsion/liblan/TranMediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setAudioTrack(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetAudioTrack(I)Z

    move-result p0

    return p0
.end method

.method public native setChapter(I)V
.end method

.method public setEqualizer(Lcom/transsion/liblan/TranMediaPlayer$Equalizer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetEqualizer(Lcom/transsion/liblan/TranMediaPlayer$Equalizer;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized setEventListener(Lcom/transsion/liblan/TranMediaPlayer$EventListener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/liblan/LANObject;->setEventListener(Lcom/transsion/liblan/interfaces/TranAbstractLANEvent$Listener;)V
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

.method public setListenVideoMode(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListenVideoMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranMediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mListenVideo:Z

    return-void
.end method

.method public setMedia(Lcom/transsion/liblan/interfaces/ITranMedia;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranMedia;->setPlayerDefaultOptions()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Media is released"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetMedia(Lcom/transsion/liblan/interfaces/ITranMedia;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/transsion/liblan/interfaces/ITranLANObject;->retain()Z

    :cond_3
    iput-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mMedia:Lcom/transsion/liblan/interfaces/ITranMedia;

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPosition(F)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetPosition(FZ)V

    return-void
.end method

.method public setPosition(FZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetPosition(FZ)V

    return-void
.end method

.method public native setRate(F)V
.end method

.method public setRenderer(Lcom/transsion/liblan/RendererItem;)I
    .locals 1
    .param p1    # Lcom/transsion/liblan/RendererItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mRenderer:Lcom/transsion/liblan/RendererItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/liblan/LANObject;->release()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/liblan/LANObject;->retain()Z

    :cond_1
    iput-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer;->mRenderer:Lcom/transsion/liblan/RendererItem;

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetRenderer(Lcom/transsion/liblan/RendererItem;)I

    move-result p0

    return p0
.end method

.method public setScale(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetScale(F)V

    return-void
.end method

.method public setSpuDelay(J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetSpuDelay(J)Z

    move-result p0

    return p0
.end method

.method public setSpuTrack(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetSpuTrack(I)Z

    move-result p0

    return p0
.end method

.method public setTime(J)J
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetTime(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public setTime(JZ)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetTime(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public native setTitle(I)V
.end method

.method public setVideoScale(Lcom/transsion/liblan/TranMediaPlayer$ScaleType;)V
    .locals 0
    .param p1    # Lcom/transsion/liblan/TranMediaPlayer$ScaleType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVideoHelper:Lcom/transsion/liblan/LanVideoHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/liblan/LanVideoHelper;->setVideoScale(Lcom/transsion/liblan/TranMediaPlayer$ScaleType;)V

    :cond_0
    return-void
.end method

.method public setVideoTitleDisplay(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetVideoTitleDisplay(II)V

    return-void
.end method

.method public setVideoTrack(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mWindow:Lcom/transsion/liblan/TranWindow;

    invoke-virtual {v0}, Lcom/transsion/liblan/TranWindow;->areViewsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mWindow:Lcom/transsion/liblan/TranWindow;

    invoke-virtual {v0}, Lcom/transsion/liblan/TranWindow;->areSurfacesWaiting()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranMediaPlayer;->nativeSetVideoTrack(I)Z

    move-result p0

    return p0
.end method

.method public setVideoTrackEnabled(Z)V
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/liblan/TranMediaPlayer;->setVideoTrack(I)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->isReleased()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->hasMedia()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->getVideoTrack()I

    move-result p1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->getVideoTracks()[Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    iget v3, v3, Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;->id:I

    if-eq v3, v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/transsion/liblan/TranMediaPlayer;->setVideoTrack(I)Z

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
    .locals 2

    const-string v0, "TranMediaPlayer"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlayRequested:Z

    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mPlaying:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAudioReset:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/liblan/TranMediaPlayer;->nativeStop()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public updateVideoSurfaces()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer;->mVideoHelper:Lcom/transsion/liblan/LanVideoHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/liblan/LanVideoHelper;->updateVideoSurfaces()V

    :cond_0
    return-void
.end method

.method public updateViewpoint(FFFFZ)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/liblan/TranMediaPlayer;->nativeUpdateViewpoint(FFFFZ)Z

    move-result p0

    return p0
.end method
