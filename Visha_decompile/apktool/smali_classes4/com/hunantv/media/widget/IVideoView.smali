.class public interface abstract Lcom/hunantv/media/widget/IVideoView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/ISubtitle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/widget/IVideoView$OnInfoStringListener;,
        Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;,
        Lcom/hunantv/media/widget/IVideoView$OnFrameListener;,
        Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;,
        Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;,
        Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;,
        Lcom/hunantv/media/widget/IVideoView$OnRecordListener;,
        Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;,
        Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;,
        Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;,
        Lcom/hunantv/media/widget/IVideoView$OnInfoListener;,
        Lcom/hunantv/media/widget/IVideoView$OnErrorListener;,
        Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;,
        Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;,
        Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;,
        Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;,
        Lcom/hunantv/media/widget/IVideoView$OnPauseListener;,
        Lcom/hunantv/media/widget/IVideoView$OnStartListener;,
        Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;,
        Lcom/hunantv/media/widget/IVideoView$Size;,
        Lcom/hunantv/media/widget/IVideoView$MediaSource;,
        Lcom/hunantv/media/widget/IVideoView$RenderFilter;,
        Lcom/hunantv/media/widget/IVideoView$Configuration;
    }
.end annotation


# static fields
.field public static final IMGOMEDIA_ERROR_500005:I = 0x7a125

.field public static final INFO_EXTRA_BUFFER_ACCSEEK:I = 0x5

.field public static final INFO_EXTRA_BUFFER_FIRST_LOAD:I = 0x0

.field public static final INFO_EXTRA_BUFFER_NORMAL:I = 0x1

.field public static final INFO_EXTRA_BUFFER_SEEK:I = 0x2

.field public static final INFO_EXTRA_BUFFER_SPEED:I = 0x3

.field public static final INFO_EXTRA_BUFFER_SWITCH:I = 0x4

.field public static final MEDIA_ERROR_ASYNC_INVALID_FORMAT_SOURCE:I = 0x6acfcd

.field public static final MEDIA_ERROR_GIF:I = 0x6ad78f

.field public static final MEDIA_ERROR_GIF_PREVIEW_IMAGE:I = 0x6ad78e

.field public static final MEDIA_ERROR_ILLEGAL_ARGUMENT:I = 0x6acfc1

.field public static final MEDIA_ERROR_ILLEGAL_STATE:I = 0x6acfc2

.field public static final MEDIA_ERROR_INVALID_URL:I = 0x6acfcb

.field public static final MEDIA_ERROR_IO:I = 0x6ad3ac

.field public static final MEDIA_ERROR_LIB_NOTLOAD:I = 0x6acfca

.field public static final MEDIA_ERROR_NULLPOINT:I = 0x6acfc5

.field public static final MEDIA_ERROR_OPENGL:I = 0x6ad02e

.field public static final MEDIA_ERROR_OPENVIDEO_FAILED:I = 0x6acfc3

.field public static final MEDIA_ERROR_OUTOFMEM:I = 0x6acfc6

.field public static final MEDIA_ERROR_SECURITY:I = 0x6acfc4

.field public static final MEDIA_ERROR_SETSOURCE_FAILED:I = 0x6acfcc

.field public static final MEDIA_ERROR_SURFACE_FAILED:I = 0x6acfc9

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_DECODER_TYPE_CHANGED:I = 0x5

.field public static final MEDIA_INFO_DOWNLOAD_SPEED:I = 0xaae61

.field public static final MEDIA_INFO_INNER_BASE:I = 0xaae60

.field public static final MEDIA_INFO_LOOPSEEK_POS_ZERO:I = 0xb4c

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NONET_BUFFER_NOENOUGH:I = 0xb4d

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_RENDERING_START:I = 0x384

.field public static final MEDIA_INFO_SPEED_RENDER_WARNING:I = 0x271b

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_WARNING_HW_DECODE_FAILED:I = 0x4c4b401

.field public static final MEDIA_WARNING_UNSUPPORT_HW_RENDER_FAILED:I = 0x4c4b402

.field public static final MGTV_AR_16_9_FIT_PARENT:I = 0x4

.field public static final MGTV_AR_4_3_FIT_PARENT:I = 0x5

.field public static final MGTV_AR_ASPECT_FILL_PARENT:I = 0x1

.field public static final MGTV_AR_ASPECT_FIT_PARENT:I = 0x0

.field public static final MGTV_AR_ASPECT_WRAP_CONTENT:I = 0x2

.field public static final MGTV_AR_MATCH_PARENT:I = 0x3

.field public static final MODE_SMOOTHSWITCH_CLOSE:I = 0x0

.field public static final MODE_SMOOTHSWITCH_OPEN:I = 0x1

.field public static final MSG_SWITCH_VQ_COMPLETE_OK:I = 0x0

.field public static final MSG_SWITCH_VQ_INFO_DATA_PREPARED:I = 0x2

.field public static final READ_DATASOURCE_TYPE_DATA_SOURCE:I = 0x3

.field public static final READ_DATASOURCE_TYPE_NORMAL:I = 0x0

.field public static final READ_DATASOURCE_TYPE_P2P_DIRECT:I = 0x2

.field public static final READ_DATASOURCE_TYPE_PROXY:I = 0x1

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_PREPARING:I = 0x1

.field public static final TYPE_NORMAL_MEMORY_PLAY:I = 0x1

.field public static final TYPE_NO_MEMORY_PLAY:I = 0x0

.field public static final TYPE_QUICK_MEMORY_PLAY:I = 0x2


# virtual methods
.method public abstract addVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V
.end method

.method public abstract bindDrmSession(Lcom/hunantv/media/drm/IDrmSession;)V
.end method

.method public abstract changeSourceAsync(Lcom/hunantv/media/widget/IVideoView$MediaSource;III)V
.end method

.method public abstract changeSourceAsync(Ljava/lang/String;III)V
.end method

.method public abstract cleanUri()V
.end method

.method public abstract configDataCacheSizeKB(I)V
.end method

.method public abstract configLoadMaxRetryTime(I)V
.end method

.method public abstract configTsNotSkip(Z)V
.end method

.method public abstract configWeakBufferTimeout(I)V
.end method

.method public abstract configWeakNetSpeed(I)V
.end method

.method public abstract convertRender(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enableCoreStartPauseListen(Z)V
.end method

.method public abstract enableFramePTSNotify(Z)V
.end method

.method public abstract enableImgoAIQE(Z)V
.end method

.method public abstract enableImgoVSR(Z)V
.end method

.method public abstract enableLiveLowLatency(Z)V
.end method

.method public abstract enableM3u8Cache(Z)V
.end method

.method public abstract enableMediaCodecSW(Z)V
.end method

.method public abstract enableOppoFunc(IZ)V
.end method

.method public abstract enableTsSkipError(Z)V
.end method

.method public abstract getABRegion()Lcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;
.end method

.method public abstract getAMCKeyFrameBackMode()I
.end method

.method public abstract getAddrInfoTypeInt()I
.end method

.method public abstract getBindDrmSession()Lcom/hunantv/media/drm/IDrmSession;
.end method

.method public abstract getBitRate()I
.end method

.method public abstract getBufferedPositionMs()J
.end method

.method public abstract getBufferingPercentage()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentPositionUnsafe()I
.end method

.method public abstract getCurrentStatus()I
.end method

.method public abstract getCurrentUri()Landroid/net/Uri;
.end method

.method public abstract getDLSpeedB()I
.end method

.method public abstract getDLSpeedFormat()Ljava/lang/String;
.end method

.method public abstract getDataSourceType()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;
.end method

.method public abstract getDisplayFloatRect()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;
.end method

.method public abstract getDnsFamilyType()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getErrorMsg()Ljava/lang/String;
.end method

.method public abstract getErrorUrl()Ljava/lang/String;
.end method

.method public abstract getFPS()I
.end method

.method public abstract getFileStartTimeFloatS()F
.end method

.method public abstract getFlowDataStatistic()Lcom/hunantv/media/player/statistic/FlowDataStatistic;
.end method

.method public abstract getGifRecorder()Lcom/hunantv/media/recoder/GifRecorder;
.end method

.method public abstract getKeyInfoData()[B
.end method

.method public abstract getLastErrorTypeCode()Ljava/lang/String;
.end method

.method public abstract getLastIP()Ljava/lang/String;
.end method

.method public abstract getLeftVolume()F
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public abstract getLogTagKey()Ljava/lang/String;
.end method

.method public abstract getMediaPlayer()Lcom/hunantv/media/player/MgtvMediaPlayer;
.end method

.method public abstract getMemoryPlayType()I
.end method

.method public abstract getMgtvFastMode()I
.end method

.method public abstract getPlaybackSpeed()F
.end method

.method public abstract getPlayerExtraInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getPlayerVersion()Ljava/lang/String;
.end method

.method public abstract getPrepared4StartMode()Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;
.end method

.method public abstract getPropertyLong(IJ)J
.end method

.method public abstract getReadDataSourceType()I
.end method

.method public abstract getRenderFilter()Lcom/hunantv/media/widget/IVideoView$RenderFilter;
.end method

.method public abstract getRenderView()Landroid/view/View;
.end method

.method public abstract getRenderViewSize()Lcom/hunantv/media/widget/IVideoView$Size;
.end method

.method public abstract getRenderViewType()I
.end method

.method public abstract getReportParams()Lcom/hunantv/media/report/ReportParams;
.end method

.method public abstract getRightVolume()F
.end method

.method public abstract getSnapshot(II)Landroid/graphics/Bitmap;
.end method

.method public abstract getTotalBuffering()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoPath()Ljava/lang/String;
.end method

.method public abstract getVideoProxyPath()Ljava/lang/String;
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract getWanosAudioEffectChoice()I
.end method

.method public abstract isAccurateSeekEnable()Z
.end method

.method public abstract isAntiViewShake()Z
.end method

.method public abstract isBackPlayEnable()Z
.end method

.method public abstract isBackground()Z
.end method

.method public abstract isCompletion()Z
.end method

.method public abstract isDataLoadPaused()Z
.end method

.method public abstract isForceHttpDns()Z
.end method

.method public abstract isHardware()Z
.end method

.method public abstract isImgoSourceModuleOpen()Z
.end method

.method public abstract isKeyInfoDataSet()Z
.end method

.method public abstract isMediaCodecSWEnable()Z
.end method

.method public abstract isOnlyAudioMode()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isRendered()Z
.end method

.method public abstract isSmoothSwitchOpen()Z
.end method

.method public abstract isSupportAMCKeyFrameBackup()Z
.end method

.method public abstract isSupportedSnapshot()Z
.end method

.method public abstract isTsSkipErrorEnable()Z
.end method

.method public abstract isWanosAudioEffectValid()Z
.end method

.method public abstract nativeCrashTest(I)V
.end method

.method public abstract openImgoDSModule(Z)V
.end method

.method public abstract pause()V
.end method

.method public abstract pauseLoadData()V
.end method

.method public abstract reBindTexture()V
.end method

.method public abstract release()V
.end method

.method public abstract removeVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V
.end method

.method public abstract reset()V
.end method

.method public abstract resetRender()V
.end method

.method public abstract resetVideoPath(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract resetVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hunantv/media/p2p/IP2pTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract resume()V
.end method

.method public abstract resumeLoadData()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract seekTo(IZ)V
.end method

.method public abstract setAMCKeyFrameBackMode(I)V
.end method

.method public abstract setAccurateSeekEnable(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAntiViewShake(Z)V
.end method

.method public abstract setAspectRatio(I)V
.end method

.method public abstract setAudioPath(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setBackPlayEnable(Z)V
.end method

.method public abstract setBackPlayStartEnable(Z)V
.end method

.method public abstract setBackground(Z)V
.end method

.method public abstract setBufferTimeout(I)V
.end method

.method public abstract setConnectTimeOut(I)V
.end method

.method public abstract setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V
.end method

.method public abstract setDisableAudioFocus(Z)V
.end method

.method public abstract setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V
.end method

.method public abstract setDnsFamilyType(I)V
.end method

.method public abstract setDrmInfoList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDrmLicensePrepared()V
.end method

.method public abstract setEnableVideoStartTime(Z)V
.end method

.method public abstract setEnableWanosAudioEffect(Z)V
.end method

.method public abstract setFileStartTimeFloatS(F)V
.end method

.method public abstract setFlowDataStatistic(Lcom/hunantv/media/player/statistic/FlowDataStatistic;)V
.end method

.method public abstract setForceDecodeMode(Z)V
.end method

.method public abstract setForceHttpDns(Z)V
.end method

.method public abstract setKeyInfoData(Ljava/lang/String;)I
.end method

.method public abstract setKeyInfoData([BII)I
.end method

.method public abstract setLastFrameRecovery(Z)V
.end method

.method public abstract setLiveMode(Z)V
.end method

.method public abstract setLiveReopen()V
.end method

.method public abstract setLiveStartIndex(I)V
.end method

.method public abstract setLoopABPlay(ZLcom/hunantv/media/widget/MgtvAbstractVideoView$ABRegion;)Z
.end method

.method public abstract setLoopSeekPlay(ZI)V
.end method

.method public abstract setM3u8Caches(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract setMediacodecRecreateformat(ZZ)V
.end method

.method public abstract setMgtvFastMode(I)V
.end method

.method public abstract setNETIsBroken(Z)V
.end method

.method public abstract setNetAddrinfo(II)V
.end method

.method public abstract setNetAddrinfo(IIZ)V
.end method

.method public abstract setNetAddrinfo(Ljava/lang/String;IZ)V
.end method

.method public abstract setNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V
.end method

.method public abstract setOnAVPlayListener(Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnChangeSourceListener(Lcom/hunantv/media/widget/IVideoView$OnChangeSourceListener;)V
.end method

.method public abstract setOnCompletionListener(Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/hunantv/media/widget/IVideoView$OnErrorListener;)V
.end method

.method public abstract setOnEventInfoListener(Lcom/hunantv/media/widget/IVideoView$OnEventInfoListener;)V
.end method

.method public abstract setOnFrameListener(Lcom/hunantv/media/widget/IVideoView$OnFrameListener;)V
.end method

.method public abstract setOnInfoListener(Lcom/hunantv/media/widget/IVideoView$OnInfoListener;)V
.end method

.method public abstract setOnInfoStringListener(Lcom/hunantv/media/widget/IVideoView$OnInfoStringListener;)V
.end method

.method public abstract setOnLoadDataListener(Lcom/hunantv/media/widget/IVideoView$OnLoadDataListener;)V
.end method

.method public abstract setOnPauseListener(Lcom/hunantv/media/widget/IVideoView$OnPauseListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;)V
.end method

.method public abstract setOnRecordListener(Lcom/hunantv/media/widget/IVideoView$OnRecordListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcom/hunantv/media/widget/IVideoView$OnSeekCompleteListener;)V
.end method

.method public abstract setOnStartListener(Lcom/hunantv/media/widget/IVideoView$OnStartListener;)V
.end method

.method public abstract setOnSwitchSmoothSourceListener(Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;)V
.end method

.method public abstract setOnUpdateStatusListener(Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;)V
.end method

.method public abstract setOnWarningListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V
.end method

.method public abstract setPlaybackSpeed(F)V
.end method

.method public abstract setPlayerDebug(Z)V
.end method

.method public abstract setPlayerHardwareMode(Z)V
.end method

.method public abstract setPreBufferTimeoutMs(I)V
.end method

.method public abstract setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V
.end method

.method public abstract setReadDataSourceType(I)V
.end method

.method public abstract setReciveDataTimeOut(I)V
.end method

.method public abstract setRenderFilter(Lcom/hunantv/media/widget/IVideoView$RenderFilter;)V
.end method

.method public abstract setRenderViewVisible(I)V
.end method

.method public abstract setReportParams(Lcom/hunantv/media/report/ReportParams;)V
.end method

.method public abstract setScreenOnWhilePlaying(Z)V
.end method

.method public abstract setSecure(Z)V
.end method

.method public abstract setSeekAutoStartAfterComplete(Z)V
.end method

.method public abstract setSkipLoopFilter(Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;)V
.end method

.method public abstract setSmoothKeyFrameInfo([BLjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setSmoothSwitchMode(I)V
.end method

.method public abstract setStartPosMs(I)V
.end method

.method public abstract setStreamKey(I)V
.end method

.method public abstract setSurfaceHolderListener(Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;)V
.end method

.method public abstract setTimeout(II)V
.end method

.method public abstract setTsFlowTag(Ljava/lang/String;)V
.end method

.method public abstract setVideoDataSource(Lcom/hunantv/media/player/MgtvPlayerDataSource;)V
.end method

.method public abstract setVideoFrameClockNotifyMs(I)V
.end method

.method public abstract setVideoFrameClockNotifyPts(JJ)V
.end method

.method public abstract setVideoIntroduction(Ljava/lang/String;)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setVideoPath(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hunantv/media/p2p/IP2pTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract setWanosAudioEffectChoice(I)V
.end method

.method public abstract setWanosAudioEffectConfig([B)I
.end method

.method public abstract setZOrderMediaOverlay(Z)V
.end method

.method public abstract showDebugPanel(Z)Lcom/hunantv/media/widget/debug/DebugPanel;
.end method

.method public abstract start()V
.end method

.method public abstract startAVDecoder()V
.end method

.method public abstract startRecord(Ljava/lang/String;)V
.end method

.method public abstract stepPlaybackNextFrame()V
.end method

.method public abstract stop()V
.end method

.method public abstract stopRecord()V
.end method

.method public abstract support3X()Z
.end method

.method public abstract supportImgoAIQE(Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;)Z
.end method

.method public abstract supportMaxSpeed()F
.end method

.method public abstract switchSmoothSource(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V
.end method

.method public abstract useSystemPlayer(Z)V
.end method
