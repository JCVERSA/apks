package com.aliyun.player;

import android.content.Context;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.aliyun.player.nativeclass.CacheConfig;
import com.aliyun.player.nativeclass.JniListPlayerBase;
import com.aliyun.player.nativeclass.MediaInfo;
import com.aliyun.player.nativeclass.PlayerConfig;
import com.aliyun.player.nativeclass.TrackInfo;
import com.aliyun.player.videoview.AliDisplayView;
import com.cicada.player.utils.media.DrmCallback;

public abstract class AVPLBase implements IListPlayer, IPlayer {
    private JniListPlayerBase mListPlayer;
    private IPlayer mNativePlayer;

    AVPLBase(Context context, String str) {
        this.mListPlayer = null;
        this.mNativePlayer = null;
        IPlayer nativePlayer = getNativePlayer(context, str);
        this.mNativePlayer = nativePlayer;
        this.mListPlayer = createListPlayer(context, str, nativePlayer.getNativeContextAddr());
    }

    @Override
    public void addExtSubtitle(String str) {
        this.mNativePlayer.addExtSubtitle(str);
    }

    @Override
    public void clear() {
        this.mListPlayer.clear();
    }

    @Override
    public void clearScreen() {
        this.mNativePlayer.clearScreen();
    }

    protected abstract JniListPlayerBase createListPlayer(Context context, String str, long j10);

    @Override
    public TrackInfo currentTrack(int i10) {
        return this.mNativePlayer.currentTrack(i10);
    }

    @Override
    public void enableHardwareDecoder(boolean z10) {
        this.mNativePlayer.enableHardwareDecoder(z10);
    }

    @Override
    public String getCacheFilePath(String str) {
        return this.mNativePlayer.getCacheFilePath(str);
    }

    @Override
    public PlayerConfig getConfig() {
        return this.mNativePlayer.getConfig();
    }

    protected JniListPlayerBase getCorePlayer() {
        return this.mListPlayer;
    }

    @Override
    public String getCurrentUid() {
        return this.mListPlayer.getCurrentUid();
    }

    @Override
    public long getDuration() {
        return this.mNativePlayer.getDuration();
    }

    @Override
    public int getMaxPreloadMemorySizeMB() {
        return this.mListPlayer.getMaxPreloadMemorySizeMB();
    }

    @Override
    public MediaInfo getMediaInfo() {
        return this.mNativePlayer.getMediaInfo();
    }

    @Override
    public IPlayer.MirrorMode getMirrorMode() {
        return this.mNativePlayer.getMirrorMode();
    }

    @Override
    public long getNativeContextAddr() {
        return this.mNativePlayer.getNativeContextAddr();
    }

    protected IPlayer getNativePlayer() {
        return this.mNativePlayer;
    }

    protected abstract IPlayer getNativePlayer(Context context, String str);

    @Override
    public Object getOption(IPlayer.Option option) {
        return this.mNativePlayer.getOption(option);
    }

    @Override
    public String getPlayerName() {
        return this.mNativePlayer.getPlayerName();
    }

    @Override
    public String getPropertyString(IPlayer.PropertyKey propertyKey) {
        return this.mNativePlayer.getPropertyString(propertyKey);
    }

    @Override
    public IPlayer.RotateMode getRotateMode() {
        return this.mNativePlayer.getRotateMode();
    }

    @Override
    public IPlayer.ScaleMode getScaleMode() {
        return this.mNativePlayer.getScaleMode();
    }

    @Override
    public float getSpeed() {
        return this.mNativePlayer.getSpeed();
    }

    @Override
    public int getVideoHeight() {
        return this.mNativePlayer.getVideoHeight();
    }

    @Override
    public int getVideoRotation() {
        return this.mNativePlayer.getVideoRotation();
    }

    @Override
    public int getVideoWidth() {
        return this.mNativePlayer.getVideoWidth();
    }

    @Override
    public float getVolume() {
        return this.mNativePlayer.getVolume();
    }

    @Override
    public boolean isAutoPlay() {
        return this.mNativePlayer.isAutoPlay();
    }

    @Override
    public boolean isLoop() {
        return this.mNativePlayer.isLoop();
    }

    @Override
    public boolean isMute() {
        return this.mNativePlayer.isMute();
    }

    @Override
    public void pause() {
        this.mNativePlayer.pause();
    }

    @Override
    public void prepare() {
        this.mNativePlayer.prepare();
    }

    @Override
    public void redraw() {
        this.mNativePlayer.redraw();
    }

    @Override
    public void release() {
        this.mListPlayer.release();
        this.mNativePlayer.release();
    }

    @Override
    public void reload() {
        this.mNativePlayer.reload();
    }

    @Override
    public void removeSource(String str) {
        this.mListPlayer.removeSource(str);
    }

    @Override
    public void reset() {
        this.mNativePlayer.reset();
    }

    @Override
    public void seekTo(long j10) {
        this.mNativePlayer.seekTo(j10);
    }

    @Override
    public void selectExtSubtitle(int i10, boolean z10) {
        this.mNativePlayer.selectExtSubtitle(i10, z10);
    }

    @Override
    public void selectTrack(int i10) {
        this.mNativePlayer.selectTrack(i10);
    }

    @Override
    public void sendCustomEvent(String str) {
        this.mNativePlayer.sendCustomEvent(str);
    }

    @Override
    public void setAutoPlay(boolean z10) {
        this.mNativePlayer.setAutoPlay(z10);
    }

    @Override
    public void setCacheConfig(CacheConfig cacheConfig) {
        this.mNativePlayer.setCacheConfig(cacheConfig);
    }

    @Override
    public void setConfig(PlayerConfig playerConfig) {
        this.mNativePlayer.setConfig(playerConfig);
    }

    @Override
    public void setDefaultBandWidth(int i10) {
        this.mNativePlayer.setDefaultBandWidth(i10);
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.mNativePlayer.setDisplay(surfaceHolder);
    }

    @Override
    public void setDisplayView(AliDisplayView aliDisplayView) {
        this.mNativePlayer.setDisplayView(aliDisplayView);
    }

    @Override
    public void setDrmCallback(DrmCallback drmCallback) {
        this.mNativePlayer.setDrmCallback(drmCallback);
    }

    @Override
    public void setFastStart(boolean z10) {
        this.mNativePlayer.setFastStart(z10);
    }

    @Override
    public void setFilterConfig(FilterConfig filterConfig) {
        this.mNativePlayer.setFilterConfig(filterConfig);
    }

    @Override
    public void setFilterInvalid(String str, boolean z10) {
        this.mNativePlayer.setFilterInvalid(str, z10);
    }

    @Override
    public void setIPResolveType(IPlayer.IPResolveType iPResolveType) {
        this.mNativePlayer.setIPResolveType(iPResolveType);
    }

    @Override
    public void setLoop(boolean z10) {
        this.mNativePlayer.setLoop(z10);
    }

    @Override
    public void setMaxAccurateSeekDelta(int i10) {
        this.mNativePlayer.setMaxAccurateSeekDelta(i10);
    }

    @Override
    public void setMaxPreloadMemorySizeMB(int i10) {
        this.mListPlayer.setMaxPreloadMemorySizeMB(i10);
    }

    @Override
    public void setMirrorMode(IPlayer.MirrorMode mirrorMode) {
        this.mNativePlayer.setMirrorMode(mirrorMode);
    }

    @Override
    public void setMute(boolean z10) {
        this.mNativePlayer.setMute(z10);
    }

    @Override
    public void setOnChooseTrackIndexListener(IPlayer.OnChooseTrackIndexListener onChooseTrackIndexListener) {
        this.mNativePlayer.setOnChooseTrackIndexListener(onChooseTrackIndexListener);
    }

    @Override
    public void setOnCompletionListener(IPlayer.OnCompletionListener onCompletionListener) {
        this.mNativePlayer.setOnCompletionListener(onCompletionListener);
    }

    @Override
    public void setOnErrorListener(IPlayer.OnErrorListener onErrorListener) {
        this.mNativePlayer.setOnErrorListener(onErrorListener);
    }

    @Override
    public void setOnInfoListener(IPlayer.OnInfoListener onInfoListener) {
        this.mNativePlayer.setOnInfoListener(onInfoListener);
    }

    @Override
    public void setOnLoadingStatusListener(IPlayer.OnLoadingStatusListener onLoadingStatusListener) {
        this.mNativePlayer.setOnLoadingStatusListener(onLoadingStatusListener);
    }

    @Override
    public void setOnPreRenderFrameCallback(IPlayer.OnPreRenderFrameCallback onPreRenderFrameCallback) {
        this.mNativePlayer.setOnPreRenderFrameCallback(onPreRenderFrameCallback);
    }

    @Override
    public void setOnPreparedListener(IPlayer.OnPreparedListener onPreparedListener) {
        this.mNativePlayer.setOnPreparedListener(onPreparedListener);
    }

    @Override
    public void setOnRenderFrameCallback(IPlayer.OnRenderFrameCallback onRenderFrameCallback) {
        this.mNativePlayer.setOnRenderFrameCallback(onRenderFrameCallback);
    }

    @Override
    public void setOnRenderingStartListener(IPlayer.OnRenderingStartListener onRenderingStartListener) {
        this.mNativePlayer.setOnRenderingStartListener(onRenderingStartListener);
    }

    @Override
    public void setOnReportEventListener(IPlayer.OnReportEventListener onReportEventListener) {
        this.mNativePlayer.setOnReportEventListener(onReportEventListener);
    }

    @Override
    public void setOnSeekCompleteListener(IPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.mNativePlayer.setOnSeekCompleteListener(onSeekCompleteListener);
    }

    @Override
    public void setOnSeiDataListener(IPlayer.OnSeiDataListener onSeiDataListener) {
        this.mNativePlayer.setOnSeiDataListener(onSeiDataListener);
    }

    @Override
    public void setOnSnapShotListener(IPlayer.OnSnapShotListener onSnapShotListener) {
        this.mNativePlayer.setOnSnapShotListener(onSnapShotListener);
    }

    @Override
    public void setOnStateChangedListener(IPlayer.OnStateChangedListener onStateChangedListener) {
        this.mNativePlayer.setOnStateChangedListener(onStateChangedListener);
    }

    @Override
    public void setOnSubtitleDisplayListener(IPlayer.OnSubtitleDisplayListener onSubtitleDisplayListener) {
        this.mNativePlayer.setOnSubtitleDisplayListener(onSubtitleDisplayListener);
    }

    @Override
    public void setOnTrackChangedListener(IPlayer.OnTrackChangedListener onTrackChangedListener) {
        this.mNativePlayer.setOnTrackChangedListener(onTrackChangedListener);
    }

    @Override
    public void setOnTrackReadyListener(IPlayer.OnTrackReadyListener onTrackReadyListener) {
        this.mNativePlayer.setOnTrackReadyListener(onTrackReadyListener);
    }

    @Override
    public void setOnVideoRenderedListener(IPlayer.OnVideoRenderedListener onVideoRenderedListener) {
        this.mNativePlayer.setOnVideoRenderedListener(onVideoRenderedListener);
    }

    @Override
    public void setOnVideoSizeChangedListener(IPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mNativePlayer.setOnVideoSizeChangedListener(onVideoSizeChangedListener);
    }

    @Override
    public void setPreferPlayerName(String str) {
        this.mNativePlayer.setPreferPlayerName(str);
    }

    @Override
    public void setPreloadCount(int i10) {
        this.mListPlayer.setPreloadCount(i10);
    }

    @Override
    public void setRenderFrameCallbackConfig(IPlayer.RenderFrameCallbackConfig renderFrameCallbackConfig) {
        this.mNativePlayer.setRenderFrameCallbackConfig(renderFrameCallbackConfig);
    }

    @Override
    public void setRotateMode(IPlayer.RotateMode rotateMode) {
        this.mNativePlayer.setRotateMode(rotateMode);
    }

    @Override
    public void setScaleMode(IPlayer.ScaleMode scaleMode) {
        this.mNativePlayer.setScaleMode(scaleMode);
    }

    @Override
    public void setSpeed(float f10) {
        this.mNativePlayer.setSpeed(f10);
    }

    @Override
    public void setStreamDelayTime(int i10, int i11) {
        this.mNativePlayer.setStreamDelayTime(i10, i11);
    }

    @Override
    public void setSurface(Surface surface) {
        this.mNativePlayer.setSurface(surface);
    }

    @Override
    public void setTraceId(String str) {
        this.mNativePlayer.setTraceId(str);
    }

    @Override
    public void setVideoBackgroundColor(int i10) {
        this.mNativePlayer.setVideoBackgroundColor(i10);
    }

    @Override
    public void setVideoTag(int[] iArr) {
        this.mNativePlayer.setVideoTag(iArr);
    }

    @Override
    public void setVolume(float f10) {
        this.mNativePlayer.setVolume(f10);
    }

    @Override
    public void snapshot() {
        this.mNativePlayer.snapshot();
    }

    @Override
    public void start() {
        this.mNativePlayer.start();
    }

    @Override
    public void stop() {
        this.mNativePlayer.stop();
    }

    @Override
    public void surfaceChanged() {
        this.mNativePlayer.surfaceChanged();
    }

    @Override
    public void updateFilterConfig(String str, FilterConfig.FilterOptions filterOptions) {
        this.mNativePlayer.updateFilterConfig(str, filterOptions);
    }

    @Override
    public TrackInfo currentTrack(TrackInfo.Type type) {
        return this.mNativePlayer.currentTrack(type);
    }

    @Override
    public String getCacheFilePath(String str, String str2, String str3, int i10) {
        return this.mNativePlayer.getCacheFilePath(str, str2, str3, i10);
    }

    @Override
    public void seekTo(long j10, IPlayer.SeekMode seekMode) {
        this.mNativePlayer.seekTo(j10, seekMode);
    }

    @Override
    public void selectTrack(int i10, boolean z10) {
        this.mNativePlayer.selectTrack(i10, z10);
    }
}
