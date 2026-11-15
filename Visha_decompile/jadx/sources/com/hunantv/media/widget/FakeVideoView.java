package com.hunantv.media.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.drm.IDrmSession;
import com.hunantv.media.drm.MgtvDrmParams;
import com.hunantv.media.p2p.IP2pTask;
import com.hunantv.media.player.IMgtvRenderView;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.MgtvPlayerDataSource;
import com.hunantv.media.player.MgtvPlayerListener;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.smooth.SmoothMediaSource;
import com.hunantv.media.player.statistic.FlowDataStatistic;
import com.hunantv.media.player.subtitle.SubtitleConfig;
import com.hunantv.media.player.subtitle.SubtitleSource;
import com.hunantv.media.player.utils.ExTicker;
import com.hunantv.media.player.utils.ThreadUtil;
import com.hunantv.media.recoder.GifRecorder;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.widget.debug.DebugPanel;
import java.util.List;

public class FakeVideoView extends FrameLayout implements IVideoView {
    private static final String TAG = "FakeVideoView";
    int duration;
    ExTicker exTicker;
    boolean isPlaying;
    boolean isPrepared;
    boolean isRendered;
    private int mCurrentState;
    IVideoView.OnInfoListener onInfoListener;
    IVideoView.OnPauseListener onPauseListener;
    IVideoView.OnPreparedListener onPreparedListener;
    IVideoView.OnSeekCompleteListener onSeekCompleteListener;
    IVideoView.OnStartListener onStartListener;
    IVideoView.OnUpdateStatusListener onUpdateStatusListener;

    public FakeVideoView(Context context) {
        super(context);
        this.exTicker = new ExTicker(1000);
        this.duration = 10800000;
        this.mCurrentState = 0;
    }

    private void resetData() {
        setCurrentState(0);
        this.isPrepared = false;
        this.isPlaying = false;
        this.isRendered = false;
        this.exTicker.stop();
    }

    private void sendPrepared() {
        DebugLog.i(TAG, "sendPrepared in");
        setCurrentState(2);
        this.isPrepared = true;
        if (this.onPreparedListener != null) {
            DebugLog.i(TAG, "sendPrepared");
            this.onPreparedListener.onPrepared();
        }
    }

    private void sendRenderStart() {
        this.isRendered = true;
        ThreadUtil.postOnUiThread(new Runnable() {
            @Override
            public void run() {
                FakeVideoView.this.exTicker.start();
                FakeVideoView.this.exTicker.setCallback(new ExTicker.onTickListener() {
                    @Override
                    public void onTick(int i) {
                    }
                });
                if (FakeVideoView.this.onInfoListener != null) {
                    DebugLog.i(FakeVideoView.TAG, "sendRenderStart in");
                    FakeVideoView.this.onInfoListener.onInfo(900, 0);
                }
            }
        });
    }

    private void sendUpdateStatus() {
        IVideoView.OnUpdateStatusListener onUpdateStatusListener = this.onUpdateStatusListener;
        if (onUpdateStatusListener != null) {
            onUpdateStatusListener.onUpdateStatus();
        }
    }

    private void setCurrentState(int i) {
        this.mCurrentState = i;
        sendUpdateStatus();
    }

    @Override
    public void addVideoPTSListener(MgtvPlayerListener.OnVideoPTSListener onVideoPTSListener) {
    }

    @Override
    public void bindDrmSession(IDrmSession iDrmSession) {
    }

    @Override
    public void changeSourceAsync(IVideoView.MediaSource mediaSource, int i, int i2, int i3) {
    }

    @Override
    public void cleanUri() {
    }

    @Override
    public void configDataCacheSizeKB(int i) {
    }

    @Override
    public void configLoadMaxRetryTime(int i) {
    }

    @Override
    public void configTsNotSkip(boolean z) {
    }

    @Override
    public void configWeakBufferTimeout(int i) {
    }

    @Override
    public void configWeakNetSpeed(int i) {
    }

    @Override
    public void convertRender(int i) {
    }

    @Override
    public void enableCoreStartPauseListen(boolean z) {
    }

    @Override
    public void enableFramePTSNotify(boolean z) {
    }

    @Override
    public void enableImgoAIQE(boolean z) {
    }

    @Override
    public void enableImgoVSR(boolean z) {
    }

    @Override
    public void enableLiveLowLatency(boolean z) {
    }

    @Override
    public void enableM3u8Cache(boolean z) {
    }

    @Override
    public void enableMediaCodecSW(boolean z) {
    }

    @Override
    public void enableOppoFunc(int i, boolean z) {
    }

    @Override
    public void enableSubtitle(boolean z) {
    }

    @Override
    public void enableTsSkipError(boolean z) {
    }

    @Override
    public MgtvAbstractVideoView.ABRegion getABRegion() {
        return null;
    }

    @Override
    public int getAMCKeyFrameBackMode() {
        return 0;
    }

    @Override
    public int getAddrInfoTypeInt() {
        return 0;
    }

    @Override
    public IDrmSession getBindDrmSession() {
        return null;
    }

    @Override
    public int getBitRate() {
        return 0;
    }

    @Override
    public long getBufferedPositionMs() {
        return 0L;
    }

    @Override
    public int getBufferingPercentage() {
        return 0;
    }

    @Override
    public int getCurrentPosition() {
        return this.exTicker.getTickCount() * 1000;
    }

    @Override
    public int getCurrentPositionUnsafe() {
        return this.exTicker.getTickCount() * 1000;
    }

    @Override
    public int getCurrentStatus() {
        return this.mCurrentState;
    }

    @Override
    public Uri getCurrentUri() {
        return null;
    }

    @Override
    public int getDLSpeedB() {
        return 0;
    }

    @Override
    public String getDLSpeedFormat() {
        return null;
    }

    @Override
    public MgtvMediaPlayer.DataSourceType getDataSourceType() {
        return null;
    }

    @Override
    public IMgtvRenderView.FloatRect getDisplayFloatRect() {
        return new IMgtvRenderView.FloatRect();
    }

    @Override
    public int getDnsFamilyType() {
        return 0;
    }

    @Override
    public int getDuration() {
        return this.duration;
    }

    @Override
    public String getErrorMsg() {
        return "";
    }

    @Override
    public String getErrorUrl() {
        return "";
    }

    @Override
    public int getFPS() {
        return 0;
    }

    @Override
    public float getFileStartTimeFloatS() {
        return 0.0f;
    }

    @Override
    public FlowDataStatistic getFlowDataStatistic() {
        return new FlowDataStatistic();
    }

    @Override
    public GifRecorder getGifRecorder() {
        return new GifRecorder();
    }

    @Override
    public byte[] getKeyInfoData() {
        return new byte[0];
    }

    @Override
    public String getLastErrorTypeCode() {
        return "";
    }

    @Override
    public String getLastIP() {
        return null;
    }

    @Override
    public float getLeftVolume() {
        return 0.0f;
    }

    @Override
    public String getLogTag() {
        return "[" + getLogTagKey() + "][" + getClass().getSimpleName() + "]";
    }

    @Override
    public String getLogTagKey() {
        return hashCode() + "";
    }

    @Override
    public MgtvMediaPlayer getMediaPlayer() {
        return null;
    }

    @Override
    public int getMemoryPlayType() {
        return 0;
    }

    @Override
    public int getMgtvFastMode() {
        return 0;
    }

    @Override
    public float getPlaybackSpeed() {
        return 0.0f;
    }

    @Override
    @Nullable
    public MgtvMediaPlayer.PlayerExtraInfo getPlayerExtraInfo() {
        return new MgtvMediaPlayer.PlayerExtraInfo();
    }

    @Override
    public String getPlayerVersion() {
        return "Fake1.0";
    }

    @Override
    public MgtvMediaPlayer.Prepared4StartMode getPrepared4StartMode() {
        return MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_LOADDATA;
    }

    @Override
    public long getPropertyLong(int i, long j) {
        return 0L;
    }

    @Override
    public int getReadDataSourceType() {
        return 0;
    }

    @Override
    public IVideoView.RenderFilter getRenderFilter() {
        return null;
    }

    @Override
    public View getRenderView() {
        return null;
    }

    @Override
    public IVideoView.Size getRenderViewSize() {
        return new IVideoView.Size();
    }

    @Override
    public int getRenderViewType() {
        return 0;
    }

    @Override
    public ReportParams getReportParams() {
        return null;
    }

    @Override
    public float getRightVolume() {
        return 0.0f;
    }

    @Override
    public Bitmap getSnapshot(int i, int i2) {
        return null;
    }

    @Override
    @Nullable
    public SubtitleSource getSubtitleSource() {
        return null;
    }

    @Override
    public int getTotalBuffering() {
        return 0;
    }

    @Override
    public int getVideoHeight() {
        return 1080;
    }

    @Override
    public String getVideoPath() {
        return "";
    }

    @Override
    public String getVideoProxyPath() {
        return "";
    }

    @Override
    public int getVideoWidth() {
        return 1920;
    }

    @Override
    public int getWanosAudioEffectChoice() {
        return 0;
    }

    @Override
    public boolean isAccurateSeekEnable() {
        return false;
    }

    @Override
    public boolean isAntiViewShake() {
        return false;
    }

    @Override
    public boolean isBackPlayEnable() {
        return false;
    }

    @Override
    public boolean isBackground() {
        return false;
    }

    @Override
    public boolean isCompletion() {
        return false;
    }

    @Override
    public boolean isDataLoadPaused() {
        return false;
    }

    @Override
    public boolean isForceHttpDns() {
        return false;
    }

    @Override
    public boolean isHardware() {
        return true;
    }

    @Override
    public boolean isImgoSourceModuleOpen() {
        return false;
    }

    @Override
    public boolean isKeyInfoDataSet() {
        return false;
    }

    @Override
    public boolean isMediaCodecSWEnable() {
        return false;
    }

    @Override
    public boolean isOnlyAudioMode() {
        return false;
    }

    @Override
    public boolean isPlaying() {
        return this.isPlaying;
    }

    @Override
    public boolean isPrepared() {
        return this.isPrepared;
    }

    @Override
    public boolean isRecording() {
        return false;
    }

    @Override
    public boolean isRendered() {
        return this.isRendered;
    }

    @Override
    public boolean isSmoothSwitchOpen() {
        return false;
    }

    @Override
    public boolean isSupportAMCKeyFrameBackup() {
        return false;
    }

    @Override
    public boolean isSupportedSnapshot() {
        return false;
    }

    @Override
    public boolean isTsSkipErrorEnable() {
        return false;
    }

    @Override
    public boolean isWanosAudioEffectValid() {
        return false;
    }

    @Override
    public void nativeCrashTest(int i) {
    }

    @Override
    public void openImgoDSModule(boolean z) {
    }

    @Override
    public void pause() {
        DebugLog.i(TAG, "pause");
        setCurrentState(4);
        this.isPlaying = false;
        this.exTicker.pause();
        IVideoView.OnPauseListener onPauseListener = this.onPauseListener;
        if (onPauseListener != null) {
            onPauseListener.onPause();
        }
    }

    @Override
    public void pauseLoadData() {
    }

    @Override
    public void reBindTexture() {
    }

    @Override
    public void release() {
        DebugLog.i(TAG, "release");
        resetData();
    }

    @Override
    public void removeSubtitleSource() {
    }

    @Override
    public void removeVideoPTSListener(MgtvPlayerListener.OnVideoPTSListener onVideoPTSListener) {
    }

    @Override
    public void reset() {
        DebugLog.i(TAG, "reset");
        resetData();
    }

    @Override
    public void resetRender() {
    }

    @Override
    public void resetVideoPath(@NonNull String str) {
        DebugLog.i(TAG, "resetVideoPath path:" + str);
        sendPrepared();
    }

    @Override
    public void resume() {
    }

    @Override
    public void resumeLoadData() {
    }

    @Override
    public void seekTo(int i) {
        this.exTicker.seekto(i / 1000);
        IVideoView.OnSeekCompleteListener onSeekCompleteListener = this.onSeekCompleteListener;
        if (onSeekCompleteListener != null) {
            onSeekCompleteListener.onSeekComplete();
        }
    }

    @Override
    public void setAMCKeyFrameBackMode(int i) {
    }

    @Override
    public void setAccurateSeekEnable(boolean z) {
    }

    @Override
    public void setAntiViewShake(boolean z) {
    }

    @Override
    public void setAspectRatio(int i) {
    }

    @Override
    public void setAudioPath(@NonNull String str) {
        setCurrentState(1);
        sendPrepared();
    }

    @Override
    public void setBackPlayEnable(boolean z) {
    }

    @Override
    public void setBackPlayStartEnable(boolean z) {
    }

    @Override
    public void setBackground(boolean z) {
    }

    @Override
    public void setBufferTimeout(int i) {
    }

    @Override
    public void setConnectTimeOut(int i) {
    }

    @Override
    public void setDataSourceInfo(MgtvMediaPlayer.DataSourceInfo dataSourceInfo) {
    }

    @Override
    public void setDisableAudioFocus(boolean z) {
    }

    @Override
    public void setDisplayFloatRect(IMgtvRenderView.FloatRect floatRect) {
    }

    @Override
    public void setDnsFamilyType(int i) {
    }

    @Override
    public void setDrmInfoList(List<MgtvDrmParams.DrmInfo> list) {
    }

    @Override
    public void setDrmLicensePrepared() {
    }

    @Override
    public void setEnableVideoStartTime(boolean z) {
    }

    @Override
    public void setEnableWanosAudioEffect(boolean z) {
    }

    @Override
    public void setFileStartTimeFloatS(float f) {
    }

    @Override
    public void setFlowDataStatistic(FlowDataStatistic flowDataStatistic) {
    }

    @Override
    public void setForceDecodeMode(boolean z) {
    }

    @Override
    public void setForceHttpDns(boolean z) {
    }

    @Override
    public int setKeyInfoData(String str) {
        return 0;
    }

    @Override
    public void setLastFrameRecovery(boolean z) {
    }

    @Override
    public void setLiveMode(boolean z) {
    }

    @Override
    public void setLiveReopen() {
    }

    @Override
    public void setLiveStartIndex(int i) {
    }

    @Override
    public boolean setLoopABPlay(boolean z, MgtvAbstractVideoView.ABRegion aBRegion) {
        return false;
    }

    @Override
    public void setLoopSeekPlay(boolean z, int i) {
    }

    @Override
    public void setM3u8Caches(String str, String[] strArr) {
    }

    @Override
    public void setMediacodecRecreateformat(boolean z, boolean z2) {
    }

    @Override
    public void setMgtvFastMode(int i) {
    }

    @Override
    public void setNETIsBroken(boolean z) {
    }

    @Override
    public void setNetAddrinfo(int i, int i2) {
    }

    @Override
    public void setNetPlayConfig(NetPlayConfig netPlayConfig) {
    }

    @Override
    public void setOnAVPlayListener(IVideoView.OnAVPlayListener onAVPlayListener) {
    }

    @Override
    public void setOnBufferingUpdateListener(IVideoView.OnBufferingUpdateListener onBufferingUpdateListener) {
    }

    @Override
    public void setOnChangeSourceListener(IVideoView.OnChangeSourceListener onChangeSourceListener) {
    }

    @Override
    public void setOnCompletionListener(IVideoView.OnCompletionListener onCompletionListener) {
    }

    @Override
    public void setOnErrorListener(IVideoView.OnErrorListener onErrorListener) {
    }

    @Override
    public void setOnEventInfoListener(IVideoView.OnEventInfoListener onEventInfoListener) {
    }

    @Override
    public void setOnFrameListener(IVideoView.OnFrameListener onFrameListener) {
    }

    @Override
    public void setOnInfoListener(IVideoView.OnInfoListener onInfoListener) {
        this.onInfoListener = onInfoListener;
    }

    @Override
    public void setOnInfoStringListener(IVideoView.OnInfoStringListener onInfoStringListener) {
    }

    @Override
    public void setOnLoadDataListener(IVideoView.OnLoadDataListener onLoadDataListener) {
    }

    @Override
    public void setOnPauseListener(IVideoView.OnPauseListener onPauseListener) {
        this.onPauseListener = onPauseListener;
    }

    @Override
    public void setOnPreparedListener(IVideoView.OnPreparedListener onPreparedListener) {
        this.onPreparedListener = onPreparedListener;
    }

    @Override
    public void setOnRecordListener(IVideoView.OnRecordListener onRecordListener) {
    }

    @Override
    public void setOnSeekCompleteListener(IVideoView.OnSeekCompleteListener onSeekCompleteListener) {
        this.onSeekCompleteListener = onSeekCompleteListener;
    }

    @Override
    public void setOnStartListener(IVideoView.OnStartListener onStartListener) {
        this.onStartListener = onStartListener;
    }

    @Override
    public void setOnSwitchSmoothSourceListener(IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener) {
    }

    @Override
    public void setOnUpdateStatusListener(IVideoView.OnUpdateStatusListener onUpdateStatusListener) {
        this.onUpdateStatusListener = onUpdateStatusListener;
    }

    @Override
    public void setOnVideoSizeChangedListener(IVideoView.OnVideoSizeChangedListener onVideoSizeChangedListener) {
    }

    @Override
    public void setOnWarningListener(MgtvPlayerListener.OnWarningListener onWarningListener) {
    }

    @Override
    public void setPlaybackSpeed(float f) {
    }

    @Override
    public void setPlayerDebug(boolean z) {
    }

    @Override
    public void setPlayerHardwareMode(boolean z) {
    }

    @Override
    public void setPreBufferTimeoutMs(int i) {
    }

    @Override
    public void setPrepared4StartMode(MgtvMediaPlayer.Prepared4StartMode prepared4StartMode) {
    }

    @Override
    public void setReadDataSourceType(int i) {
    }

    @Override
    public void setReciveDataTimeOut(int i) {
    }

    @Override
    public void setRenderFilter(IVideoView.RenderFilter renderFilter) {
    }

    @Override
    public void setRenderViewVisible(int i) {
    }

    @Override
    public void setReportParams(ReportParams reportParams) {
    }

    @Override
    public void setScreenOnWhilePlaying(boolean z) {
    }

    @Override
    public void setSecure(boolean z) {
    }

    @Override
    public void setSeekAutoStartAfterComplete(boolean z) {
    }

    @Override
    public void setSkipLoopFilter(MgtvMediaPlayer.SkipLoopFilterType skipLoopFilterType) {
    }

    @Override
    public int setSmoothKeyFrameInfo(byte[] bArr, String str, String str2) {
        return 0;
    }

    @Override
    public void setSmoothSwitchMode(int i) {
    }

    @Override
    public void setStartPosMs(int i) {
        this.exTicker.seekto(i / 1000);
    }

    @Override
    public void setStreamKey(int i) {
    }

    @Override
    public void setSubtitleCallback(ISubtitle.SubtitleCallback subtitleCallback) {
    }

    @Override
    public void setSubtitleConfig(SubtitleConfig subtitleConfig) {
    }

    @Override
    public void setSubtitleSource(SubtitleSource subtitleSource) {
    }

    @Override
    public void setSurfaceHolderListener(IVideoView.SurfaceHolderListener surfaceHolderListener) {
    }

    @Override
    public void setTimeout(int i, int i2) {
    }

    @Override
    public void setTsFlowTag(String str) {
    }

    @Override
    public void setVideoDataSource(MgtvPlayerDataSource mgtvPlayerDataSource) {
    }

    @Override
    public void setVideoFrameClockNotifyMs(int i) {
    }

    @Override
    public void setVideoFrameClockNotifyPts(long j, long j2) {
    }

    @Override
    public void setVideoIntroduction(String str) {
    }

    @Override
    public void setVideoPath(@NonNull String str) {
        DebugLog.i(TAG, "setVideoPath path:" + str);
        setCurrentState(1);
        sendPrepared();
    }

    @Override
    public void setVolume(float f, float f2) {
    }

    @Override
    public void setWanosAudioEffectChoice(int i) {
    }

    @Override
    public int setWanosAudioEffectConfig(byte[] bArr) {
        return 0;
    }

    @Override
    public void setZOrderMediaOverlay(boolean z) {
    }

    @Override
    public DebugPanel showDebugPanel(boolean z) {
        return null;
    }

    @Override
    public void start() {
        DebugLog.i(TAG, TtmlNode.START);
        setCurrentState(3);
        this.isPlaying = true;
        this.exTicker.resume();
        IVideoView.OnStartListener onStartListener = this.onStartListener;
        if (onStartListener != null) {
            onStartListener.onStart();
        }
        if (this.isRendered) {
            return;
        }
        sendRenderStart();
    }

    @Override
    public void startAVDecoder() {
    }

    @Override
    public void startRecord(String str) {
    }

    @Override
    public void stepPlaybackNextFrame() {
    }

    @Override
    public void stop() {
        DebugLog.i(TAG, "stop");
        resetData();
    }

    @Override
    public void stopRecord() {
    }

    @Override
    public boolean support3X() {
        return false;
    }

    @Override
    public boolean supportImgoAIQE(MgtvMediaPlayer.ImgoAIQE imgoAIQE) {
        return false;
    }

    @Override
    public float supportMaxSpeed() {
        return 0.0f;
    }

    @Override
    public void switchSmoothSource(SmoothMediaSource smoothMediaSource) {
    }

    @Override
    public void useSystemPlayer(boolean z) {
    }

    public FakeVideoView(Context context, int i) {
        super(context);
        this.exTicker = new ExTicker(1000);
        this.duration = 10800000;
        this.mCurrentState = 0;
    }

    @Override
    public void changeSourceAsync(String str, int i, int i2, int i3) {
    }

    @Override
    public void resetVideoPath(@NonNull String str, @Nullable IP2pTask iP2pTask, @Nullable String str2) {
        DebugLog.i(TAG, "resetVideoPath path:" + str);
        sendPrepared();
    }

    @Override
    public void seekTo(int i, boolean z) {
        this.exTicker.seekto(i / 1000);
        IVideoView.OnSeekCompleteListener onSeekCompleteListener = this.onSeekCompleteListener;
        if (onSeekCompleteListener != null) {
            onSeekCompleteListener.onSeekComplete();
        }
    }

    @Override
    public int setKeyInfoData(byte[] bArr, int i, int i2) {
        return 0;
    }

    @Override
    public void setNetAddrinfo(int i, int i2, boolean z) {
    }

    @Override
    public void setVideoPath(@NonNull String str, @Nullable IP2pTask iP2pTask, @Nullable String str2) {
        DebugLog.i(TAG, "setVideoPath path:" + str);
        sendPrepared();
    }

    public FakeVideoView(Context context, int i, boolean z) {
        super(context);
        this.exTicker = new ExTicker(1000);
        this.duration = 10800000;
        this.mCurrentState = 0;
    }

    @Override
    public void setNetAddrinfo(String str, int i, boolean z) {
    }

    public FakeVideoView(Context context, int i, boolean z, boolean z2) {
        super(context);
        this.exTicker = new ExTicker(1000);
        this.duration = 10800000;
        this.mCurrentState = 0;
    }

    public FakeVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.exTicker = new ExTicker(1000);
        this.duration = 10800000;
        this.mCurrentState = 0;
    }

    public FakeVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.exTicker = new ExTicker(1000);
        this.duration = 10800000;
        this.mCurrentState = 0;
    }

    public FakeVideoView(Context context, IVideoView.Configuration configuration) {
        super(context);
        this.exTicker = new ExTicker(1000);
        this.duration = 10800000;
        this.mCurrentState = 0;
    }
}
