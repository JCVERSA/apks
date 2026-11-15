package com.aliyun.player;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.aliyun.player.bean.ErrorInfo;
import com.aliyun.player.bean.InfoBean;
import com.aliyun.player.bean.InfoCode;
import com.aliyun.player.nativeclass.CacheConfig;
import com.aliyun.player.nativeclass.MediaInfo;
import com.aliyun.player.nativeclass.NativePlayerBase;
import com.aliyun.player.nativeclass.PlayerConfig;
import com.aliyun.player.nativeclass.TrackInfo;
import com.aliyun.player.videoview.AliDisplayView;
import com.cicada.player.utils.media.DrmCallback;
import java.lang.ref.WeakReference;
import java.util.Map;

public abstract class AVPBase implements IPlayer {
    private static final String TAG = "AVPBase";
    protected Context mContext;
    private NativePlayerBase mCorePlayer;
    protected String mTraceID;
    private MediaInfo mOutMediaInfo = null;
    private IPlayer.OnPreparedListener mOutOnPreparedListener = null;
    private IPlayer.OnPreparedListener mInnerOnPreparedListener = new InnerPrepareListener(this);
    private IPlayer.OnInfoListener mOutOnInfoListener = null;
    private IPlayer.OnInfoListener mInnerOnInfoListener = new InnerInfoListener(this);
    private IPlayer.OnChooseTrackIndexListener mOutOnChooseTrackIndexListener = null;
    private IPlayer.OnChooseTrackIndexListener mInnerOnChooseTrackIndexListener = new InnerOnChooseTrackIndexListener(this);
    private IPlayer.OnErrorListener mOutOnErrorListener = null;
    private IPlayer.OnErrorListener mInnerOnErrorListener = new InnerErrorListener(this);
    private IPlayer.OnCompletionListener mOutOnCompletionListener = null;
    private IPlayer.OnCompletionListener mInnerOnCompletionListener = new InnerCompletionListener(this);
    private IPlayer.OnRenderingStartListener mOutOnRenderingStartListener = null;
    private IPlayer.OnRenderingStartListener mInnerOnFirstFrameShowListener = new InnerRenderListener(this);
    private IPlayer.OnVideoSizeChangedListener mOutOnVideoSizeChangedListener = null;
    private IPlayer.OnVideoSizeChangedListener mInnerOnVideoSizeChangedListener = new InnerVideoSizeChangedListener(this);
    private IPlayer.OnTrackReadyListener mOutOnTrackReadyListener = null;
    private IPlayer.OnTrackReadyListener mInnerOnTrackReadyListener = new InnerTrackReadyListener(this);
    private IPlayer.OnLoadingStatusListener mOutOnLoadingStatusListener = null;
    private IPlayer.OnLoadingStatusListener mInnerOnLoadingStatusListener = new InnerLoadingStatusListener(this);
    private IPlayer.OnSeekCompleteListener mOutOnSeekEndListener = null;
    private IPlayer.OnSeekCompleteListener mInnerOnSeekEndListener = new InnerSeekEndListener(this);
    private IPlayer.OnSubtitleDisplayListener mOutOnSubtitleDisplayListener = null;
    private IPlayer.OnSubtitleDisplayListener mInnerOnSubtitleDisplayListener = new InnerSubtitleDisplayListener(this);
    private IPlayer.OnSeiDataListener mOutOnSeiDataListener = null;
    private IPlayer.OnSeiDataListener mInnerOnSeiDataListener = new InnerSeiDataListener(this);
    private IPlayer.OnTrackChangedListener mOutOnTrackChangedListener = null;
    private IPlayer.OnTrackChangedListener mInnerOnTrackChangedListener = new InnerTrackChangedListener(this);
    private IPlayer.OnSnapShotListener mOutOnSnapShotListener = null;
    private IPlayer.OnSnapShotListener mInnerOnSnapShotListener = new InnerSnapShotListener(this);
    private IPlayer.OnStateChangedListener mOutOnStatusChangedListener = null;
    private IPlayer.OnStateChangedListener mInnerOnStatusChangedListener = new InnerStatusChangedListener(this);
    private IPlayer.OnVideoRenderedListener mOutOnVideoRenderedListener = null;
    private IPlayer.OnVideoRenderedListener mInnerOnVideoRenderedListener = new InnerVideoRenderedListener(this);
    private IPlayer.OnReportEventListener mOutEventListener = null;
    private InnerOnReportEventListener mInnerOnReportEventListener = new InnerOnReportEventListener(this);

    private static class InnerCompletionListener implements IPlayer.OnCompletionListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerCompletionListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onCompletion() {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onCompletion();
            }
        }
    }

    private static class InnerErrorListener implements IPlayer.OnErrorListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerErrorListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onError(ErrorInfo errorInfo) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onError(errorInfo);
            }
        }
    }

    private static class InnerInfoListener implements IPlayer.OnInfoListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerInfoListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onInfo(InfoBean infoBean) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onInfo(infoBean);
            }
        }
    }

    private static class InnerLoadingStatusListener implements IPlayer.OnLoadingStatusListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerLoadingStatusListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onLoadingBegin() {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onLoadingBegin();
            }
        }

        @Override
        public void onLoadingEnd() {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onLoadingEnd();
            }
        }

        @Override
        public void onLoadingProgress(int i10, float f10) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onLoadingProgress(i10, f10);
            }
        }
    }

    private static class InnerOnChooseTrackIndexListener implements IPlayer.OnChooseTrackIndexListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerOnChooseTrackIndexListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public int onChooseTrackIndex(TrackInfo[] trackInfoArr) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                return aVPBase.onChooseTrackIndex(trackInfoArr);
            }
            return -1;
        }
    }

    private static class InnerOnReportEventListener implements IPlayer.OnReportEventListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerOnReportEventListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onEventParam(Map<String, String> map) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onEventParam(map);
            }
        }
    }

    private static class InnerPrepareListener implements IPlayer.OnPreparedListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerPrepareListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onPrepared() {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onPrepared();
            }
        }
    }

    private static class InnerRenderListener implements IPlayer.OnRenderingStartListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerRenderListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onRenderingStart() {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onVideoRenderingStart();
            }
        }
    }

    private static class InnerSeekEndListener implements IPlayer.OnSeekCompleteListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerSeekEndListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onSeekComplete() {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onSeekComplete();
            }
        }
    }

    private static class InnerSeiDataListener implements IPlayer.OnSeiDataListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerSeiDataListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onSeiData(int i10, byte[] bArr) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onSeiData(i10, bArr);
            }
        }
    }

    private static class InnerSnapShotListener implements IPlayer.OnSnapShotListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerSnapShotListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onSnapShot(Bitmap bitmap, int i10, int i11) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onSnapShot(bitmap, i10, i11);
            }
        }
    }

    private static class InnerStatusChangedListener implements IPlayer.OnStateChangedListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerStatusChangedListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onStateChanged(int i10) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onStateChanged(i10);
            }
        }
    }

    private static class InnerSubtitleDisplayListener implements IPlayer.OnSubtitleDisplayListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerSubtitleDisplayListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onSubtitleExtAdded(int i10, String str) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onSubtitleExtAdded(i10, str);
            }
        }

        @Override
        public void onSubtitleHeader(int i10, String str) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onSubtitleHeader(i10, str);
            }
        }

        @Override
        public void onSubtitleHide(int i10, long j10) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onSubtitleHide(i10, j10);
            }
        }

        @Override
        public void onSubtitleShow(int i10, long j10, String str) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onSubtitleShow(i10, j10, str);
            }
        }
    }

    private static class InnerTrackChangedListener implements IPlayer.OnTrackChangedListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerTrackChangedListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onChangedFail(TrackInfo trackInfo, ErrorInfo errorInfo) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onChangedFail(trackInfo, errorInfo);
            }
        }

        @Override
        public void onChangedSuccess(TrackInfo trackInfo) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onChangedSuccess(trackInfo);
            }
        }
    }

    private static class InnerTrackReadyListener implements IPlayer.OnTrackReadyListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerTrackReadyListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onTrackReady(MediaInfo mediaInfo) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onTrackReady(mediaInfo);
            }
        }
    }

    private static class InnerVideoRenderedListener implements IPlayer.OnVideoRenderedListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerVideoRenderedListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onVideoRendered(long j10, long j11) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onVideoRendered(j10, j11);
            }
        }
    }

    private static class InnerVideoSizeChangedListener implements IPlayer.OnVideoSizeChangedListener {
        private WeakReference<AVPBase> avpBaseWR;

        InnerVideoSizeChangedListener(AVPBase aVPBase) {
            this.avpBaseWR = new WeakReference<>(aVPBase);
        }

        @Override
        public void onVideoSizeChanged(int i10, int i11) {
            AVPBase aVPBase = this.avpBaseWR.get();
            if (aVPBase != null) {
                aVPBase.onVideoSizeChanged(i10, i11);
            }
        }
    }

    public AVPBase(Context context, String str) {
        this.mContext = null;
        this.mTraceID = null;
        this.mCorePlayer = null;
        this.mContext = context;
        this.mTraceID = str;
        NativePlayerBase nativePlayerBaseCreateAlivcMediaPlayer = createAlivcMediaPlayer(context);
        this.mCorePlayer = nativePlayerBaseCreateAlivcMediaPlayer;
        nativePlayerBaseCreateAlivcMediaPlayer.setTraceId(this.mTraceID);
        bindListeners();
    }

    private void bindListeners() {
        this.mCorePlayer.setOnErrorListener(this.mInnerOnErrorListener);
        this.mCorePlayer.setOnPreparedListener(this.mInnerOnPreparedListener);
        this.mCorePlayer.setOnInfoListener(this.mInnerOnInfoListener);
        this.mCorePlayer.setOnCompletionListener(this.mInnerOnCompletionListener);
        this.mCorePlayer.setOnRenderingStartListener(this.mInnerOnFirstFrameShowListener);
        this.mCorePlayer.setOnLoadingStatusListener(this.mInnerOnLoadingStatusListener);
        this.mCorePlayer.setOnSeekCompleteListener(this.mInnerOnSeekEndListener);
        this.mCorePlayer.setOnStateChangedListener(this.mInnerOnStatusChangedListener);
        this.mCorePlayer.setOnSubtitleDisplayListener(this.mInnerOnSubtitleDisplayListener);
        this.mCorePlayer.setOnVideoSizeChangedListener(this.mInnerOnVideoSizeChangedListener);
        this.mCorePlayer.setOnChooseTrackIndexListener(this.mInnerOnChooseTrackIndexListener);
        this.mCorePlayer.setOnTrackInfoGetListener(this.mInnerOnTrackReadyListener);
        this.mCorePlayer.setOnTrackSelectRetListener(this.mInnerOnTrackChangedListener);
        this.mCorePlayer.setOnSeiDataListener(this.mInnerOnSeiDataListener);
        this.mCorePlayer.setOnSnapShotListener(this.mInnerOnSnapShotListener);
        this.mCorePlayer.setOnReportEventListener(this.mInnerOnReportEventListener);
    }

    private void clearListeners() {
        this.mOutOnCompletionListener = null;
        this.mOutOnErrorListener = null;
        this.mOutOnLoadingStatusListener = null;
        this.mOutOnInfoListener = null;
        this.mOutOnPreparedListener = null;
        this.mOutOnRenderingStartListener = null;
        this.mOutOnSeekEndListener = null;
        this.mOutOnStatusChangedListener = null;
        this.mOutOnSubtitleDisplayListener = null;
        this.mOutOnTrackChangedListener = null;
        this.mOutOnTrackReadyListener = null;
        this.mOutOnVideoSizeChangedListener = null;
    }

    public void onChangedFail(TrackInfo trackInfo, ErrorInfo errorInfo) {
        IPlayer.OnTrackChangedListener onTrackChangedListener = this.mOutOnTrackChangedListener;
        if (onTrackChangedListener != null) {
            onTrackChangedListener.onChangedFail(trackInfo, errorInfo);
        }
    }

    public void onChangedSuccess(TrackInfo trackInfo) {
        IPlayer.OnTrackChangedListener onTrackChangedListener = this.mOutOnTrackChangedListener;
        if (onTrackChangedListener != null) {
            onTrackChangedListener.onChangedSuccess(trackInfo);
        }
    }

    public int onChooseTrackIndex(TrackInfo[] trackInfoArr) {
        IPlayer.OnChooseTrackIndexListener onChooseTrackIndexListener = this.mOutOnChooseTrackIndexListener;
        if (onChooseTrackIndexListener != null) {
            return onChooseTrackIndexListener.onChooseTrackIndex(trackInfoArr);
        }
        return -1;
    }

    public void onCompletion() {
        IPlayer.OnCompletionListener onCompletionListener = this.mOutOnCompletionListener;
        if (onCompletionListener != null) {
            onCompletionListener.onCompletion();
        }
    }

    public void onError(ErrorInfo errorInfo) {
        IPlayer.OnErrorListener onErrorListener = this.mOutOnErrorListener;
        if (onErrorListener != null) {
            onErrorListener.onError(errorInfo);
        }
    }

    public void onEventParam(Map<String, String> map) {
        IPlayer.OnReportEventListener onReportEventListener = this.mOutEventListener;
        if (onReportEventListener != null) {
            onReportEventListener.onEventParam(map);
        }
    }

    public void onInfo(InfoBean infoBean) {
        IPlayer.OnInfoListener onInfoListener = this.mOutOnInfoListener;
        if (onInfoListener != null) {
            onInfoListener.onInfo(infoBean);
        }
        if (InfoCode.DemuxerTraceID == infoBean.getCode()) {
            this.mCorePlayer.setTraceId(infoBean.getExtraMsg());
        }
    }

    public void onLoadingBegin() {
        IPlayer.OnLoadingStatusListener onLoadingStatusListener = this.mOutOnLoadingStatusListener;
        if (onLoadingStatusListener != null) {
            onLoadingStatusListener.onLoadingBegin();
        }
    }

    public void onLoadingEnd() {
        IPlayer.OnLoadingStatusListener onLoadingStatusListener = this.mOutOnLoadingStatusListener;
        if (onLoadingStatusListener != null) {
            onLoadingStatusListener.onLoadingEnd();
        }
    }

    public void onLoadingProgress(int i10, float f10) {
        IPlayer.OnLoadingStatusListener onLoadingStatusListener = this.mOutOnLoadingStatusListener;
        if (onLoadingStatusListener != null) {
            onLoadingStatusListener.onLoadingProgress(i10, f10);
        }
    }

    public void onPrepared() {
        IPlayer.OnPreparedListener onPreparedListener = this.mOutOnPreparedListener;
        if (onPreparedListener != null) {
            onPreparedListener.onPrepared();
        }
    }

    public void onSeekComplete() {
        IPlayer.OnSeekCompleteListener onSeekCompleteListener = this.mOutOnSeekEndListener;
        if (onSeekCompleteListener != null) {
            onSeekCompleteListener.onSeekComplete();
        }
    }

    public void onSeiData(int i10, byte[] bArr) {
        IPlayer.OnSeiDataListener onSeiDataListener = this.mOutOnSeiDataListener;
        if (onSeiDataListener != null) {
            onSeiDataListener.onSeiData(i10, bArr);
        }
    }

    public void onSnapShot(Bitmap bitmap, int i10, int i11) {
        IPlayer.OnSnapShotListener onSnapShotListener = this.mOutOnSnapShotListener;
        if (onSnapShotListener != null) {
            onSnapShotListener.onSnapShot(bitmap, i10, i11);
        }
    }

    public void onStateChanged(int i10) {
        IPlayer.OnStateChangedListener onStateChangedListener = this.mOutOnStatusChangedListener;
        if (onStateChangedListener != null) {
            onStateChangedListener.onStateChanged(i10);
        }
    }

    public void onSubtitleExtAdded(int i10, String str) {
        IPlayer.OnSubtitleDisplayListener onSubtitleDisplayListener = this.mOutOnSubtitleDisplayListener;
        if (onSubtitleDisplayListener != null) {
            onSubtitleDisplayListener.onSubtitleExtAdded(i10, str);
        }
    }

    public void onSubtitleHeader(int i10, String str) {
        IPlayer.OnSubtitleDisplayListener onSubtitleDisplayListener = this.mOutOnSubtitleDisplayListener;
        if (onSubtitleDisplayListener != null) {
            onSubtitleDisplayListener.onSubtitleHeader(i10, str);
        }
    }

    public void onSubtitleHide(int i10, long j10) {
        IPlayer.OnSubtitleDisplayListener onSubtitleDisplayListener = this.mOutOnSubtitleDisplayListener;
        if (onSubtitleDisplayListener != null) {
            onSubtitleDisplayListener.onSubtitleHide(i10, j10);
        }
    }

    public void onSubtitleShow(int i10, long j10, String str) {
        IPlayer.OnSubtitleDisplayListener onSubtitleDisplayListener = this.mOutOnSubtitleDisplayListener;
        if (onSubtitleDisplayListener != null) {
            onSubtitleDisplayListener.onSubtitleShow(i10, j10, str);
        }
    }

    public void onTrackReady(MediaInfo mediaInfo) {
        this.mOutMediaInfo = mediaInfo;
        IPlayer.OnTrackReadyListener onTrackReadyListener = this.mOutOnTrackReadyListener;
        if (onTrackReadyListener != null) {
            onTrackReadyListener.onTrackReady(mediaInfo);
        }
    }

    public void onVideoRendered(long j10, long j11) {
        IPlayer.OnVideoRenderedListener onVideoRenderedListener = this.mOutOnVideoRenderedListener;
        if (onVideoRenderedListener != null) {
            onVideoRenderedListener.onVideoRendered(j10, j11);
        }
    }

    public void onVideoRenderingStart() {
        IPlayer.OnRenderingStartListener onRenderingStartListener = this.mOutOnRenderingStartListener;
        if (onRenderingStartListener != null) {
            onRenderingStartListener.onRenderingStart();
        }
    }

    public void onVideoSizeChanged(int i10, int i11) {
        IPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener = this.mOutOnVideoSizeChangedListener;
        if (onVideoSizeChangedListener != null) {
            onVideoSizeChangedListener.onVideoSizeChanged(i10, i11);
        }
    }

    private void pauseInner() {
        this.mCorePlayer.pause();
    }

    private void startInner() {
        this.mCorePlayer.start();
    }

    @Override
    public void addExtSubtitle(String str) {
        this.mCorePlayer.addExtSubtitle(str);
    }

    @Override
    public void clearScreen() {
        this.mCorePlayer.clearScreen();
    }

    protected abstract NativePlayerBase createAlivcMediaPlayer(Context context);

    @Override
    @Deprecated
    public TrackInfo currentTrack(int i10) {
        return this.mCorePlayer.getCurrentTrackInfo(i10);
    }

    @Override
    public void enableHardwareDecoder(boolean z10) {
        this.mCorePlayer.enableHardwareDecoder(z10);
    }

    @Override
    public String getCacheFilePath(String str) {
        return this.mCorePlayer.getCacheFilePath(str);
    }

    @Override
    public PlayerConfig getConfig() {
        return this.mCorePlayer.getConfig();
    }

    protected NativePlayerBase getCorePlayer() {
        return this.mCorePlayer;
    }

    @Override
    public long getDuration() {
        return this.mCorePlayer.getDuration();
    }

    @Override
    public MediaInfo getMediaInfo() {
        return this.mOutMediaInfo;
    }

    @Override
    public IPlayer.MirrorMode getMirrorMode() {
        return this.mCorePlayer.getMirrorMode();
    }

    @Override
    public long getNativeContextAddr() {
        return this.mCorePlayer.getNativeContext();
    }

    @Override
    public Object getOption(IPlayer.Option option) {
        return this.mCorePlayer.getOption(option);
    }

    @Override
    public String getPlayerName() {
        return this.mCorePlayer.getPlayerName();
    }

    @Override
    public String getPropertyString(IPlayer.PropertyKey propertyKey) {
        return this.mCorePlayer.getPropertyString(propertyKey.getValue());
    }

    @Override
    public IPlayer.RotateMode getRotateMode() {
        return this.mCorePlayer.getRotateMode();
    }

    @Override
    public IPlayer.ScaleMode getScaleMode() {
        return this.mCorePlayer.getScaleMode();
    }

    @Override
    public float getSpeed() {
        return this.mCorePlayer.getSpeed();
    }

    @Override
    public int getVideoHeight() {
        return this.mCorePlayer.getVideoHeight();
    }

    @Override
    public int getVideoRotation() {
        return (int) this.mCorePlayer.getVideoRotation();
    }

    @Override
    public int getVideoWidth() {
        return this.mCorePlayer.getVideoWidth();
    }

    @Override
    public float getVolume() {
        return this.mCorePlayer.getVolume();
    }

    @Override
    public boolean isAutoPlay() {
        return this.mCorePlayer.isAutoPlay();
    }

    @Override
    public boolean isLoop() {
        return this.mCorePlayer.isLoop();
    }

    @Override
    public boolean isMute() {
        return this.mCorePlayer.isMuted();
    }

    @Override
    public void pause() {
        pauseInner();
    }

    @Override
    public void prepare() {
        this.mCorePlayer.prepare();
    }

    @Override
    public void release() {
        this.mCorePlayer.release();
        clearListeners();
    }

    @Override
    public void reload() {
        this.mCorePlayer.reload();
    }

    @Override
    public void seekTo(long j10) {
        seekTo(j10, IPlayer.SeekMode.Inaccurate);
    }

    @Override
    public void selectExtSubtitle(int i10, boolean z10) {
        this.mCorePlayer.selectExtSubtitle(i10, z10);
    }

    @Override
    public void selectTrack(int i10) {
        this.mCorePlayer.selectTrack(i10);
    }

    @Override
    public void sendCustomEvent(String str) {
        this.mCorePlayer.sendCustomEvent(str);
    }

    @Override
    public void setAutoPlay(boolean z10) {
        this.mCorePlayer.setAutoPlay(z10);
    }

    @Override
    public void setCacheConfig(CacheConfig cacheConfig) {
        if (cacheConfig == null) {
            cacheConfig = new CacheConfig();
            cacheConfig.mEnable = false;
        }
        this.mCorePlayer.setCacheConfig(cacheConfig);
    }

    @Override
    public void setConfig(PlayerConfig playerConfig) {
        this.mCorePlayer.setConfig(playerConfig);
    }

    @Override
    public void setDefaultBandWidth(int i10) {
        this.mCorePlayer.setDefaultBandWidth(i10);
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null) {
            setSurface(null);
        } else {
            setSurface(surfaceHolder.getSurface());
        }
    }

    @Override
    public void setDisplayView(AliDisplayView aliDisplayView) {
        this.mCorePlayer.setDisplayView(aliDisplayView);
    }

    @Override
    public void setDrmCallback(DrmCallback drmCallback) {
        this.mCorePlayer.setDrmCallback(drmCallback);
    }

    @Override
    public void setFastStart(boolean z10) {
        this.mCorePlayer.setFastStart(z10);
    }

    @Override
    public void setFilterConfig(FilterConfig filterConfig) {
        this.mCorePlayer.setFilterConfig(filterConfig);
    }

    @Override
    public void setFilterInvalid(String str, boolean z10) {
        this.mCorePlayer.setFilterInvalid(str, z10);
    }

    @Override
    public void setIPResolveType(IPlayer.IPResolveType iPResolveType) {
        this.mCorePlayer.setIPResolveType(iPResolveType);
    }

    @Override
    public void setLoop(boolean z10) {
        this.mCorePlayer.setLoop(z10);
    }

    @Override
    public void setMaxAccurateSeekDelta(int i10) {
        this.mCorePlayer.setMaxAccurateSeekDelta(i10);
    }

    @Override
    public void setMirrorMode(IPlayer.MirrorMode mirrorMode) {
        this.mCorePlayer.setMirrorMode(mirrorMode);
    }

    @Override
    public void setMute(boolean z10) {
        this.mCorePlayer.setMute(z10);
    }

    @Override
    public void setOnChooseTrackIndexListener(IPlayer.OnChooseTrackIndexListener onChooseTrackIndexListener) {
        this.mOutOnChooseTrackIndexListener = onChooseTrackIndexListener;
    }

    @Override
    public void setOnCompletionListener(IPlayer.OnCompletionListener onCompletionListener) {
        this.mOutOnCompletionListener = onCompletionListener;
    }

    @Override
    public void setOnErrorListener(IPlayer.OnErrorListener onErrorListener) {
        this.mOutOnErrorListener = onErrorListener;
    }

    @Override
    public void setOnInfoListener(IPlayer.OnInfoListener onInfoListener) {
        this.mOutOnInfoListener = onInfoListener;
    }

    @Override
    public void setOnLoadingStatusListener(IPlayer.OnLoadingStatusListener onLoadingStatusListener) {
        this.mOutOnLoadingStatusListener = onLoadingStatusListener;
    }

    @Override
    public void setOnPreRenderFrameCallback(IPlayer.OnPreRenderFrameCallback onPreRenderFrameCallback) {
        this.mCorePlayer.setOnPreRenderFrameCallback(onPreRenderFrameCallback);
    }

    @Override
    public void setOnPreparedListener(IPlayer.OnPreparedListener onPreparedListener) {
        this.mOutOnPreparedListener = onPreparedListener;
    }

    @Override
    public void setOnRenderFrameCallback(IPlayer.OnRenderFrameCallback onRenderFrameCallback) {
        this.mCorePlayer.setOnRenderFrameCallback(onRenderFrameCallback);
    }

    @Override
    public void setOnRenderingStartListener(IPlayer.OnRenderingStartListener onRenderingStartListener) {
        this.mOutOnRenderingStartListener = onRenderingStartListener;
    }

    @Override
    public void setOnReportEventListener(IPlayer.OnReportEventListener onReportEventListener) {
        this.mOutEventListener = onReportEventListener;
    }

    @Override
    public void setOnSeekCompleteListener(IPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.mOutOnSeekEndListener = onSeekCompleteListener;
    }

    @Override
    public void setOnSeiDataListener(IPlayer.OnSeiDataListener onSeiDataListener) {
        this.mOutOnSeiDataListener = onSeiDataListener;
    }

    @Override
    public void setOnSnapShotListener(IPlayer.OnSnapShotListener onSnapShotListener) {
        this.mOutOnSnapShotListener = onSnapShotListener;
    }

    @Override
    public void setOnStateChangedListener(IPlayer.OnStateChangedListener onStateChangedListener) {
        this.mOutOnStatusChangedListener = onStateChangedListener;
    }

    @Override
    public void setOnSubtitleDisplayListener(IPlayer.OnSubtitleDisplayListener onSubtitleDisplayListener) {
        this.mOutOnSubtitleDisplayListener = onSubtitleDisplayListener;
    }

    @Override
    public void setOnTrackChangedListener(IPlayer.OnTrackChangedListener onTrackChangedListener) {
        this.mOutOnTrackChangedListener = onTrackChangedListener;
    }

    @Override
    public void setOnTrackReadyListener(IPlayer.OnTrackReadyListener onTrackReadyListener) {
        this.mOutOnTrackReadyListener = onTrackReadyListener;
    }

    @Override
    public void setOnVideoRenderedListener(IPlayer.OnVideoRenderedListener onVideoRenderedListener) {
        this.mOutOnVideoRenderedListener = onVideoRenderedListener;
        if (onVideoRenderedListener != null) {
            this.mCorePlayer.setOnVideoRenderedListener(this.mInnerOnVideoRenderedListener);
        } else {
            this.mCorePlayer.setOnVideoRenderedListener(null);
        }
    }

    @Override
    public void setOnVideoSizeChangedListener(IPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOutOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    @Override
    public void setPreferPlayerName(String str) {
        this.mCorePlayer.setPreferPlayerName(str);
    }

    @Override
    public void setRenderFrameCallbackConfig(IPlayer.RenderFrameCallbackConfig renderFrameCallbackConfig) {
        this.mCorePlayer.setRenderFrameCallbackConfig(renderFrameCallbackConfig);
    }

    @Override
    public void setRotateMode(IPlayer.RotateMode rotateMode) {
        this.mCorePlayer.setRotateMode(rotateMode);
    }

    @Override
    public void setScaleMode(IPlayer.ScaleMode scaleMode) {
        this.mCorePlayer.setScaleMode(scaleMode);
    }

    @Override
    public void setSpeed(float f10) {
        this.mCorePlayer.setSpeed(f10);
    }

    @Override
    public void setStreamDelayTime(int i10, int i11) {
        this.mCorePlayer.setStreamDelayTime(i10, i11);
    }

    @Override
    public void setSurface(Surface surface) {
        this.mCorePlayer.setSurface(surface);
    }

    @Override
    public void setTraceId(String str) {
        this.mTraceID = str;
        this.mCorePlayer.setTraceId(str);
    }

    @Override
    public void setVideoBackgroundColor(int i10) {
        this.mCorePlayer.setVideoBackgroundColor(i10);
    }

    @Override
    public void setVideoTag(int[] iArr) {
        this.mCorePlayer.setVideoTag(iArr);
    }

    @Override
    public void setVolume(float f10) {
        this.mCorePlayer.setVolume(f10);
    }

    @Override
    public void snapshot() {
        this.mCorePlayer.snapShot();
    }

    @Override
    public void start() {
        startInner();
    }

    @Override
    public void stop() {
        stopInner();
        this.mCorePlayer.onStatusChanged(5, 3);
    }

    protected void stopInner() {
        this.mCorePlayer.stop();
    }

    @Override
    public void surfaceChanged() {
        this.mCorePlayer.surfaceChanged();
    }

    @Override
    public void updateFilterConfig(String str, FilterConfig.FilterOptions filterOptions) {
        this.mCorePlayer.updateFilterConfig(str, filterOptions);
    }

    @Override
    public TrackInfo currentTrack(TrackInfo.Type type) {
        return this.mCorePlayer.getCurrentTrackInfo(type.ordinal());
    }

    @Override
    public String getCacheFilePath(String str, String str2, String str3, int i10) {
        return this.mCorePlayer.getCacheFilePath(str, str2, str3, i10);
    }

    @Override
    public void seekTo(long j10, IPlayer.SeekMode seekMode) {
        this.mCorePlayer.seekTo(j10, seekMode.getValue());
    }

    @Override
    public void selectTrack(int i10, boolean z10) {
        this.mCorePlayer.selectTrack(i10, z10);
    }

    @Override
    @Deprecated
    public void redraw() {
    }

    @Override
    public void reset() {
    }
}
