package com.hunantv.media.alpha;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.drm.IDrmSession;
import com.hunantv.media.global.PlayerReferenceObserver;
import com.hunantv.media.p2p.IP2pTask;
import com.hunantv.media.player.IMgtvRenderView;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.MgtvPlayerListener;
import com.hunantv.media.player.c;
import com.hunantv.media.player.l;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.smooth.SmoothMediaSource;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.utils.AudioUtil;
import com.hunantv.media.utils.FileUtil;
import com.hunantv.media.utils.KeyFrameInfoUtils;
import com.hunantv.media.utils.ViewUtil;
import com.hunantv.media.widget.IVideoView;
import com.hunantv.media.widget.MgtvAbstractVideoView;
import com.hunantv.media.widget.debug.DebugPanel;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public abstract class MgtvAlphaAbstractVideoView extends FrameLayout implements IVideoView {
    public static final int INVALID_FILE_START_TIME_VALUE = -1;
    public static final int MODE_NORMAL = 0;
    public static final int MODE_ONLY_AUDIO = 1;
    static boolean sAutoNativeStack = true;
    public boolean isBackground;
    boolean isRequestAudioFocus;
    MgtvAbstractVideoView.ABRegion mABRegion;
    int mAMCKeyFrameBackMode;
    private MgtvPlayerListener.OnAVPlayListener mAVPlayListener;
    int mAddrInfoTimeoutMs;
    boolean mAntiViewShake;
    volatile boolean mAudioFocusObtained;
    boolean mBackPlayEnable;
    IVideoView.Configuration mConfiguration;
    int mConnectTimeOut;
    Context mContext;
    Uri mCurrentUri;
    MgtvMediaPlayer.DataSourceInfo mDataSourceInfo;
    MgtvMediaPlayer.DataSourceType mDataSourceType;
    DebugPanel mDebugPanel;
    IMgtvRenderView.FloatRect mDisplayFloatRect;
    int mDnsFamilyType;
    IDrmSession mDrmSession;
    boolean mEnableDefaultFileStartTime;
    boolean mEnableMediacodecSW;
    boolean mEnableTexture;
    boolean mEnableVideoStartTime;
    c mFakeFrameView;
    float mFileStartTimeFloatS;
    boolean mForceHttpDns;
    boolean mForceReuseTexture;
    private MgtvPlayerListener.OnFrameListener mFrameListener;
    IAlphaRenderView mGLView;
    boolean mIsDrmPrepared;
    boolean mJavaDnsEnable;
    byte[] mKeyInfoData;
    int mKeyInfoRet;
    boolean mKeyInfoSet;
    boolean mKeyInfoSetEnable;
    int mKeyInfoSetLayer;
    int mLastMediaMode;
    private boolean mLiveLowLatencyEnable;
    boolean mLoopABPlayEnable;
    IP2pTask mMainP2pTask;
    MgtvMediaPlayer mMediaPlayer;
    boolean mMediacodecRecreateformat;
    boolean mMediacodecRecreateformatOnly4K;
    int mMgtvFastMode;
    NetPlayConfig mNetPlayConfig;
    IVideoView.OnAVPlayListener mOnAVPlayListener;
    IVideoView.OnFrameListener mOnFrameListener;
    IDrmSession.OnProvisionSuccessListener mOnProvisionSuccessListener;
    IVideoView.OnSwitchSmoothSourceListener mOnSwitchSmoothSourceListener;
    private int mPreBufferTimeoutMs;
    MgtvMediaPlayer.Prepared4StartMode mPrepared4StartMode;
    Uri mProxyUri;
    int mReciveDataTimeOut;
    ReportParams mReportParams;
    l mResizableFrameView;
    boolean mSeekAutoStartAfterCompleteEnable;
    boolean mSmoothModeOpen;
    boolean mSmoothModeSwitch;
    int mSmoothSwitchMode;
    private MgtvPlayerListener.OnSwitchSmoothSourceListener mSwitchSmoothSourceListener;
    private String mVideoIntroduction;
    Set<MgtvPlayerListener.OnVideoPTSListener> ptsListeners;
    Object ptsLocker;
    String tsFlowTag;

    public enum ReleaseReason {
        OUT,
        DEFAULT_INNER,
        PAUSE_DATA_BEFORE_PREPEAD
    }

    public MgtvAlphaAbstractVideoView(Context context) {
        super(context);
        this.mMediaPlayer = null;
        this.mPrepared4StartMode = MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mFileStartTimeFloatS = -1.0f;
        this.mDnsFamilyType = 1;
        this.mKeyInfoSetEnable = true;
        this.mKeyInfoSetLayer = 0;
        this.mCurrentUri = null;
        this.mOnProvisionSuccessListener = new IDrmSession.OnProvisionSuccessListener() {
            @Override
            public void onSuccess(IDrmSession iDrmSession) {
                MgtvAlphaAbstractVideoView.this.setDrmLicensePrepared();
            }
        };
        this.mForceReuseTexture = false;
        this.mEnableTexture = false;
        this.mAMCKeyFrameBackMode = -1;
        this.mEnableMediacodecSW = false;
        this.mAudioFocusObtained = false;
        this.mDataSourceType = MgtvMediaPlayer.DataSourceType.TYPE_DATASOUCE_DEFAULT;
        this.mMgtvFastMode = 1;
        this.mMediacodecRecreateformat = false;
        this.mMediacodecRecreateformatOnly4K = false;
        this.mEnableDefaultFileStartTime = true;
        this.mDataSourceInfo = new MgtvMediaPlayer.DataSourceInfo().setVideoFormat("init").setFileFormat("init").setBitRate("0");
        this.mSeekAutoStartAfterCompleteEnable = false;
        this.mJavaDnsEnable = false;
        this.mLastMediaMode = 0;
        this.mBackPlayEnable = false;
        this.isRequestAudioFocus = true;
        this.mVideoIntroduction = "";
        this.mLiveLowLatencyEnable = false;
        this.mAVPlayListener = new MgtvPlayerListener.OnAVPlayListener() {
            @Override
            public void onAVPauseOrPlay(boolean z) {
                IVideoView.OnAVPlayListener onAVPlayListener = MgtvAlphaAbstractVideoView.this.mOnAVPlayListener;
                if (onAVPlayListener != null) {
                    onAVPlayListener.onAVPauseOrPlay(z);
                }
            }
        };
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                IVideoView.OnFrameListener onFrameListener = MgtvAlphaAbstractVideoView.this.mOnFrameListener;
                if (onFrameListener != null) {
                    onFrameListener.onVFrameClockCome(frameClock);
                }
            }
        };
        this.mSwitchSmoothSourceListener = new MgtvPlayerListener.OnSwitchSmoothSourceListener() {
            @Override
            public void onSwitchSmoothSourceError(SmoothMediaSource smoothMediaSource, int i, int i2) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceError(smoothMediaSource, i, i2);
                }
            }

            @Override
            public void onSwitchSmoothSourceFail(SmoothMediaSource smoothMediaSource, int i, int i2) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceFail(smoothMediaSource, i, i2);
                }
            }

            @Override
            public void onSwitchSmoothSourceInfo(SmoothMediaSource smoothMediaSource, int i) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource, i);
                }
            }

            @Override
            public void onSwitchSmoothSourceSuccess(SmoothMediaSource smoothMediaSource) {
                MgtvAlphaAbstractVideoView mgtvAlphaAbstractVideoView;
                if (smoothMediaSource != null) {
                    Uri uri = null;
                    if (StringUtil.isEmpty(smoothMediaSource.getUrl())) {
                        MgtvAlphaAbstractVideoView.this.mCurrentUri = null;
                    } else {
                        MgtvAlphaAbstractVideoView.this.mCurrentUri = Uri.parse(smoothMediaSource.getUrl().trim());
                    }
                    if (StringUtil.isEmpty(smoothMediaSource.getProxyUrl())) {
                        mgtvAlphaAbstractVideoView = MgtvAlphaAbstractVideoView.this;
                    } else {
                        mgtvAlphaAbstractVideoView = MgtvAlphaAbstractVideoView.this;
                        uri = Uri.parse(smoothMediaSource.getProxyUrl().trim());
                    }
                    mgtvAlphaAbstractVideoView.mProxyUri = uri;
                    MgtvAlphaAbstractVideoView.this.mMainP2pTask = smoothMediaSource.getP2pTask();
                }
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSource);
                }
            }

            @Override
            public boolean onSwitchSmoothSourceWillUpdate(SmoothMediaSource smoothMediaSource) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    return onSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSource);
                }
                return false;
            }
        };
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.isBackground = false;
    }

    private void setKeyInfoDataInner(byte[] bArr) throws Throwable {
        DebugLog.i(getLogTag(), "setKeyInfoDataInner in");
        if (this.mMediaPlayer != null) {
            ReportParams reportParams = this.mReportParams;
            int iIsKeyFrameDataValid = KeyFrameInfoUtils.isKeyFrameDataValid(bArr, reportParams != null ? reportParams.getVideoFileHash() : null);
            this.mKeyInfoRet = iIsKeyFrameDataValid;
            if (iIsKeyFrameDataValid == 0) {
                this.mKeyInfoSetLayer = 2;
                this.mKeyInfoRet = this.mMediaPlayer.setKeyFrameInfoFileBuf(this.mKeyInfoData);
            }
            updateKeyInfoReport();
        }
        DebugLog.i(getLogTag(), "setKeyInfoDataInner out");
    }

    private void updateKeyInfoReport() {
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null) {
            reportParams.getKeyInfo().keyInfoSet = this.mKeyInfoSet;
            this.mReportParams.getKeyInfo().keyInfoRet = this.mKeyInfoRet;
            this.mReportParams.getKeyInfo().keyInfoSetLayer = this.mKeyInfoSetLayer;
        }
    }

    public void abandonAudioFocus() {
        if (this.mAudioFocusObtained) {
            AudioUtil.abandonAudioFocus(this.mContext);
            this.mAudioFocusObtained = false;
        }
    }

    @Override
    public void addVideoPTSListener(MgtvPlayerListener.OnVideoPTSListener onVideoPTSListener) {
        synchronized (this.ptsLocker) {
            try {
                this.ptsListeners.add(onVideoPTSListener);
                MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.addVideoPTSListener(onVideoPTSListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void afterRelease() {
        DebugPanel debugPanel = this.mDebugPanel;
        if (debugPanel != null) {
            debugPanel.release();
        }
    }

    @Override
    public void bindDrmSession(IDrmSession iDrmSession) {
        this.mDrmSession = iDrmSession;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.bindDrmSession(iDrmSession);
        }
        IDrmSession iDrmSession2 = this.mDrmSession;
        if (iDrmSession2 != null) {
            if (iDrmSession2.getCurrentStatus() == 2) {
                setDrmLicensePrepared();
            }
            this.mDrmSession.addOnProvisionSuccessListener(this.mOnProvisionSuccessListener);
        }
    }

    public void configAudioImgoPlayer() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setPreBufferTimeoutMs(this.mPreBufferTimeoutMs);
            this.mMediaPlayer.setPrepared4StartMode(this.mPrepared4StartMode);
            this.mMediaPlayer.setForceHttpDns(this.mForceHttpDns);
            this.mMediaPlayer.setDnsFamilyType(this.mDnsFamilyType);
            this.mMediaPlayer.setNetPlayConfig(this.mNetPlayConfig);
            this.mMediaPlayer.setMgtvFastMode(this.mMgtvFastMode);
            this.mMediaPlayer.setDataSourceInfo(this.mDataSourceInfo);
            setLoopABPlay(this.mLoopABPlayEnable, this.mABRegion);
            setBackground(this.isBackground);
            DebugLog.i(getLogTag(), "configImgoPlayer -mPrepared4StartMode:" + this.mPrepared4StartMode + "-mForceHttpDns:" + this.mForceHttpDns + "-mEnableVideoStartTime:" + this.mEnableVideoStartTime + "-mDnsFamilyType:" + this.mDnsFamilyType + "-mAMCKeyFrameBackMode:" + this.mAMCKeyFrameBackMode + "-mFileStartTimeFloatS:" + this.mFileStartTimeFloatS + "-mMgtvFastMode:" + this.mMgtvFastMode + "-mDataSourceInfo:" + this.mDataSourceInfo + "-mPreBufferTimeoutMs:" + this.mPreBufferTimeoutMs + "-isBackground:" + this.isBackground);
        }
    }

    public void configImgoPlayer() throws Throwable {
        MgtvMediaPlayer.DataSourceInfo dataSourceInfo;
        float f;
        if (isReuseTextureDisable()) {
            this.mAMCKeyFrameBackMode = 2;
        }
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setPreBufferTimeoutMs(this.mPreBufferTimeoutMs);
            this.mMediaPlayer.setPrepared4StartMode(this.mPrepared4StartMode);
            this.mMediaPlayer.setForceHttpDns(this.mForceHttpDns);
            this.mMediaPlayer.setEnableVideoStartTime(this.mEnableVideoStartTime);
            this.mMediaPlayer.setDnsFamilyType(this.mDnsFamilyType);
            int i = this.mAMCKeyFrameBackMode;
            if (i >= 0) {
                this.mMediaPlayer.setAMCKeyFrameBackMode(i);
            }
            ReportParams reportParams = this.mReportParams;
            if (reportParams != null && reportParams.getVideoType() == ReportParams.VideoType.TRY_WATCHING && !StringUtil.isEmpty(this.mReportParams.getPlayPreviewType()) && (this.mReportParams.getPlayPreviewType().equals("1") || this.mReportParams.getPlayPreviewType().equals("2"))) {
                this.mMediaPlayer.setConfig(2016021706, 2);
            }
            this.mMediaPlayer.setEnableMediacodecSWRender(this.mEnableMediacodecSW);
            this.mMediaPlayer.setNetPlayConfig(this.mNetPlayConfig);
            this.mMediaPlayer.setMgtvFastMode(this.mMgtvFastMode);
            this.mMediaPlayer.setMediacodecRecreateformat(this.mMediacodecRecreateformat, this.mMediacodecRecreateformatOnly4K);
            if (this.mFileStartTimeFloatS == -1.0f && this.mEnableDefaultFileStartTime && (dataSourceInfo = this.mDataSourceInfo) != null) {
                if (!MgtvMediaPlayer.DataSourceInfo.H265.equalsIgnoreCase(dataSourceInfo.getVideoFormat())) {
                    f = MgtvMediaPlayer.DataSourceInfo.H264.equalsIgnoreCase(this.mDataSourceInfo.getVideoFormat()) ? 1.48f : 0.08f;
                }
                this.mFileStartTimeFloatS = f;
            }
            this.mMediaPlayer.setPlayerFileStartTimeFloatS(this.mFileStartTimeFloatS);
            if (this.mKeyInfoSet && this.mKeyInfoRet == 0) {
                setKeyInfoDataInner(this.mKeyInfoData);
            }
            this.mMediaPlayer.setDataSourceInfo(this.mDataSourceInfo);
            this.mMediaPlayer.bindDrmSession(this.mDrmSession);
            if (this.mIsDrmPrepared) {
                setDrmLicensePrepared();
            }
            setLoopABPlay(this.mLoopABPlayEnable, this.mABRegion);
            this.mMediaPlayer.setSeekAutoStartAfterComplete(this.mSeekAutoStartAfterCompleteEnable);
            enableLiveLowLatency(this.mLiveLowLatencyEnable);
            setBackground(this.isBackground);
            DebugLog.i(getLogTag(), "configImgoPlayer -mPrepared4StartMode:" + this.mPrepared4StartMode + "-mForceHttpDns:" + this.mForceHttpDns + "-mEnableVideoStartTime:" + this.mEnableVideoStartTime + "-mDnsFamilyType:" + this.mDnsFamilyType + "-mAMCKeyFrameBackMode:" + this.mAMCKeyFrameBackMode + "-mFileStartTimeFloatS:" + this.mFileStartTimeFloatS + "-mMgtvFastMode:" + this.mMgtvFastMode + "-mMediacodecRecreateformat:" + this.mMediacodecRecreateformat + "-mMediacodecRecreateformatOnly4K:" + this.mMediacodecRecreateformatOnly4K + "-mDataSourceInfo:" + this.mDataSourceInfo + "-mPreBufferTimeoutMs:" + this.mPreBufferTimeoutMs + "-mLiveLowlantacyEnable:" + this.mLiveLowLatencyEnable + "-isBackground:" + this.isBackground);
        }
    }

    @Override
    public void configLoadMaxRetryTime(int i) {
    }

    @Override
    public void configTsNotSkip(boolean z) {
    }

    @Override
    public void configWeakNetSpeed(int i) {
    }

    public void defaultNetAddr() {
    }

    @Override
    public void enableFramePTSNotify(boolean z) {
        DebugLog.i(getLogTag(), "enableFramePTSNotify " + z);
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.enableFramePTSNotify(z);
        }
    }

    @Override
    public void enableImgoAIQE(boolean z) {
    }

    @Override
    public void enableImgoVSR(boolean z) {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.enableImgoVSR(z);
        }
    }

    @Override
    public void enableLiveLowLatency(boolean z) {
        this.mLiveLowLatencyEnable = z;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.enableLiveLowLatency(z);
        }
    }

    @Override
    public void enableMediaCodecSW(boolean z) {
        this.mEnableMediacodecSW = z;
    }

    @Override
    public void enableOppoFunc(int i, boolean z) {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.enableOppoFunc(i, z);
        }
    }

    @Override
    public MgtvAbstractVideoView.ABRegion getABRegion() {
        return this.mABRegion;
    }

    @Override
    public int getAMCKeyFrameBackMode() {
        return this.mAMCKeyFrameBackMode;
    }

    @Override
    public Uri getCurrentUri() {
        return this.mCurrentUri;
    }

    @Override
    public MgtvMediaPlayer.DataSourceType getDataSourceType() {
        return this.mDataSourceType;
    }

    @Override
    public IMgtvRenderView.FloatRect getDisplayFloatRect() {
        return this.mDisplayFloatRect;
    }

    @Override
    public int getDnsFamilyType() {
        return this.mDnsFamilyType;
    }

    @Override
    public float getFileStartTimeFloatS() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        return mgtvMediaPlayer != null ? mgtvMediaPlayer.getFileStartTimeFloatS() : this.mFileStartTimeFloatS;
    }

    @Override
    public byte[] getKeyInfoData() {
        return this.mKeyInfoData;
    }

    @Override
    public String getLastIP() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getLastIP();
        }
        return null;
    }

    @Override
    public float getLeftVolume() {
        return 0.0f;
    }

    @Override
    public MgtvMediaPlayer getMediaPlayer() {
        return this.mMediaPlayer;
    }

    @Override
    public int getMgtvFastMode() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        return mgtvMediaPlayer != null ? mgtvMediaPlayer.getMgtvFastMode() : this.mMgtvFastMode;
    }

    @Override
    public MgtvMediaPlayer.Prepared4StartMode getPrepared4StartMode() {
        return this.mPrepared4StartMode;
    }

    @Override
    public long getPropertyLong(int i, long j) {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        return mgtvMediaPlayer != null ? mgtvMediaPlayer.getPropertyLong(i, j) : j;
    }

    @Override
    public IVideoView.Size getRenderViewSize() {
        if (this.mDisplayFloatRect != null && this.mResizableFrameView != null) {
            IVideoView.Size size = new IVideoView.Size();
            size.width = this.mResizableFrameView.getCenterDisplayW();
            size.height = this.mResizableFrameView.getCenterDisplayH();
            return size;
        }
        IVideoView.Size size2 = new IVideoView.Size();
        IAlphaRenderView iAlphaRenderView = this.mGLView;
        if (iAlphaRenderView != null && iAlphaRenderView != null) {
            size2.width = iAlphaRenderView.getWidth();
            size2.height = this.mGLView.getHeight();
        }
        return size2;
    }

    @Override
    public float getRightVolume() {
        return 0.0f;
    }

    @Override
    public String getVideoPath() {
        Uri uri = this.mCurrentUri;
        if (uri != null) {
            return uri.toString();
        }
        return null;
    }

    @Override
    public String getVideoProxyPath() {
        Uri uri = this.mProxyUri;
        if (uri != null) {
            return uri.toString();
        }
        return null;
    }

    public void initListener(MgtvMediaPlayer mgtvMediaPlayer) {
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.clearVideoPTSListener();
            Iterator<MgtvPlayerListener.OnVideoPTSListener> it = this.ptsListeners.iterator();
            while (it.hasNext()) {
                mgtvMediaPlayer.addVideoPTSListener(it.next());
            }
            mgtvMediaPlayer.setOnFrameListener(this.mFrameListener);
            mgtvMediaPlayer.setOnAVPlayListener(this.mAVPlayListener);
            mgtvMediaPlayer.setOnSwitchSmoothSourceListener(this.mSwitchSmoothSourceListener);
        }
    }

    @Override
    public boolean isAntiViewShake() {
        return this.mAntiViewShake;
    }

    @Override
    public boolean isBackPlayEnable() {
        return this.mBackPlayEnable;
    }

    @Override
    public boolean isBackground() {
        return this.isBackground;
    }

    @Override
    public boolean isForceHttpDns() {
        return this.mForceHttpDns;
    }

    @Override
    public boolean isKeyInfoDataSet() {
        return this.mKeyInfoSet;
    }

    @Override
    public boolean isMediaCodecSWEnable() {
        return this.mEnableMediacodecSW;
    }

    @Override
    public boolean isOnlyAudioMode() {
        return this.mLastMediaMode == 1;
    }

    public boolean isReuseTextureDisable() {
        return this.mForceReuseTexture && !this.mEnableTexture;
    }

    @Override
    public boolean isSmoothSwitchOpen() {
        return this.mSmoothModeOpen;
    }

    @Override
    public boolean isSupportAMCKeyFrameBackup() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.isSupportAMCKeyFrameBackup();
        }
        return false;
    }

    public void onVideoRenderStart() {
    }

    @Override
    public void openImgoDSModule(boolean z) {
    }

    @Override
    public void release() {
    }

    public void releaseNoStatus() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.release();
            PlayerReferenceObserver.remove(this.mMediaPlayer.hashCode() + "");
            this.mMediaPlayer = null;
        }
    }

    @Override
    public void removeVideoPTSListener(MgtvPlayerListener.OnVideoPTSListener onVideoPTSListener) {
        synchronized (this.ptsLocker) {
            try {
                this.ptsListeners.remove(onVideoPTSListener);
                MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.removeVideoPTSListener(onVideoPTSListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void requestAudioFocus() {
        if (this.mAudioFocusObtained) {
            return;
        }
        AudioUtil.requestAudioFocus(this.mContext);
        this.mAudioFocusObtained = true;
    }

    public void resetDataAfter(ReleaseReason releaseReason) {
        if (releaseReason == ReleaseReason.OUT) {
            this.mKeyInfoSet = false;
            this.mKeyInfoData = null;
            this.mKeyInfoRet = 0;
            this.mKeyInfoSetLayer = 0;
            ReportParams reportParams = this.mReportParams;
            if (reportParams != null) {
                reportParams.getKeyInfo().reset();
            }
            this.mIsDrmPrepared = false;
            IDrmSession iDrmSession = this.mDrmSession;
            if (iDrmSession != null) {
                iDrmSession.removeOnProvisionSuccessListener(this.mOnProvisionSuccessListener);
                this.mDrmSession = null;
            }
        }
    }

    public void resetDataBefore(ReleaseReason releaseReason) {
        if (releaseReason == ReleaseReason.OUT) {
            this.mFileStartTimeFloatS = -1.0f;
            this.mSmoothModeOpen = false;
        }
    }

    @Override
    public void setAMCKeyFrameBackMode(int i) {
    }

    @Override
    @Deprecated
    public void setAccurateSeekEnable(boolean z) {
    }

    @Override
    public void setAntiViewShake(boolean z) {
        this.mAntiViewShake = z;
    }

    @Override
    public void setBackPlayEnable(boolean z) {
        MgtvMediaPlayer mgtvMediaPlayer;
        DebugLog.i(getLogTag(), "setBackPlayEnable:" + z);
        this.mBackPlayEnable = z;
        if (z || (mgtvMediaPlayer = this.mMediaPlayer) == null || !mgtvMediaPlayer.isLoadDataPaused()) {
            return;
        }
        this.mMediaPlayer.resumeLoadData();
        DebugLog.i(getLogTag(), "setBackPlayEnable:resumeLoadData");
    }

    @Override
    public void setBackground(boolean z) {
        this.isBackground = z;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setBackground(z);
        }
    }

    @Override
    public void setBufferTimeout(int i) {
    }

    @Override
    public void setConnectTimeOut(int i) {
        this.mConnectTimeOut = i;
    }

    @Override
    public void setDataSourceInfo(MgtvMediaPlayer.DataSourceInfo dataSourceInfo) {
        this.mDataSourceInfo = dataSourceInfo;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setDataSourceInfo(dataSourceInfo);
        }
    }

    @Override
    public void setDisableAudioFocus(boolean z) {
        this.isRequestAudioFocus = !z;
    }

    @Override
    public void setDisplayFloatRect(IMgtvRenderView.FloatRect floatRect) {
        DebugLog.i(getLogTag(), "setDisplayFloatRect " + floatRect);
        this.mDisplayFloatRect = floatRect;
    }

    @Override
    public void setDnsFamilyType(int i) {
        this.mDnsFamilyType = i;
    }

    @Override
    public void setDrmLicensePrepared() {
        this.mIsDrmPrepared = true;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setDrmLicensePrepared();
        }
    }

    @Override
    public void setEnableVideoStartTime(boolean z) {
        this.mEnableVideoStartTime = z;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setEnableVideoStartTime(z);
        }
    }

    @Override
    public void setFileStartTimeFloatS(float f) {
        this.mFileStartTimeFloatS = f;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setPlayerFileStartTimeFloatS(f);
        }
    }

    @Override
    public void setForceHttpDns(boolean z) {
        this.mForceHttpDns = z;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setForceHttpDns(z);
        }
    }

    @Override
    public int setKeyInfoData(String str) {
        DebugLog.i(getLogTag(), "setKeyInfoData(String fileStr) in");
        if (!this.mKeyInfoSetEnable) {
            return 0;
        }
        this.mKeyInfoSet = true;
        this.mKeyInfoSetLayer = 1;
        try {
            if (StringUtil.isEmpty(str)) {
                this.mKeyInfoRet = -21;
                return -21;
            }
            File file = new File(str);
            if (!file.exists()) {
                this.mKeyInfoRet = -22;
                return -22;
            }
            if (file.length() > 0) {
                return setKeyInfoData(FileUtil.readFile(file));
            }
            this.mKeyInfoRet = -23;
            return -23;
        } catch (Exception e) {
            e.printStackTrace();
            this.mKeyInfoRet = -20;
            return -20;
        } finally {
            updateKeyInfoReport();
            DebugLog.i(getLogTag(), "setKeyInfoData(String fileStr) out." + this.mKeyInfoRet);
        }
    }

    public void setLastMediaMode(int i) {
        this.mLastMediaMode = i;
    }

    @Override
    public boolean setLoopABPlay(boolean z, MgtvAbstractVideoView.ABRegion aBRegion) {
        long j;
        long j2;
        String logTag;
        String str;
        DebugLog.i(getLogTag(), "setLoopABPlay in enable:" + z + " " + aBRegion);
        if (!z || aBRegion == null || aBRegion.bPosMs > aBRegion.aPosMs) {
            this.mLoopABPlayEnable = z;
            this.mABRegion = aBRegion;
            if (aBRegion != null) {
                j = aBRegion.aPosMs;
                j2 = aBRegion.bPosMs;
            } else {
                j = -1;
                j2 = -1;
            }
            MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
            if (mgtvMediaPlayer != null) {
                mgtvMediaPlayer.setLoopABPlay(z, j, j2);
                if (z && j >= 0 && j2 >= 0) {
                    start();
                    DebugLog.e(getLogTag(), "setLoopABPlay out success");
                    return true;
                }
            }
            logTag = getLogTag();
            str = "setLoopABPlay out failed";
        } else {
            logTag = getLogTag();
            str = "setLoopABPlay error b <= a";
        }
        DebugLog.e(logTag, str);
        return false;
    }

    @Override
    public void setLoopSeekPlay(boolean z, int i) {
        DebugLog.i(getLogTag(), "setLoopSeekPlay enable:" + z + ",loop_step_s:" + i);
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setLoopSeekPlay(z, i);
        }
    }

    @Override
    public void setMediacodecRecreateformat(boolean z, boolean z2) {
        DebugLog.i(getLogTag(), "setMediacodecRecreateformat:" + z + ",only_4k:" + z2);
        this.mMediacodecRecreateformat = z;
        this.mMediacodecRecreateformatOnly4K = z2;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setMediacodecRecreateformat(z, z2);
        }
    }

    @Override
    public void setMgtvFastMode(int i) {
        DebugLog.i(getLogTag(), "setMgtvFastMode mode:" + i);
        this.mMgtvFastMode = i;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setMgtvFastMode(i);
        }
    }

    @Override
    public void setNetAddrinfo(String str, int i, boolean z) {
        DebugLog.i(getLogTag(), "setNetAddrinfo " + str + ",timeout:" + i + ",enablePreDns:" + z);
        defaultNetAddr();
        if (i > 0) {
            this.mAddrInfoTimeoutMs = i * 1000;
        }
    }

    @Override
    public void setNetPlayConfig(NetPlayConfig netPlayConfig) {
        this.mNetPlayConfig = netPlayConfig;
        DebugLog.i(getLogTag(), "setNetPlayConfig " + netPlayConfig);
        if (netPlayConfig != null) {
            int i = netPlayConfig.accurate_seek;
            if (i >= 0) {
                setAccurateSeekEnable(i == 1);
            }
            int i2 = netPlayConfig.ts_not_skip;
            if (i2 >= 0) {
                configTsNotSkip(i2 == 1);
            }
            int i3 = netPlayConfig.load_retry_time;
            if (i3 >= 0) {
                configLoadMaxRetryTime(i3);
            }
            int i4 = netPlayConfig.weak_net_speed;
            if (i4 >= 0) {
                configWeakNetSpeed(i4);
            }
            int i5 = netPlayConfig.open_timeout * 1000;
            int i6 = netPlayConfig.rw_timeout * 1000;
            int i7 = netPlayConfig.buffer_timeout * 1000;
            if (i5 > 0) {
                setConnectTimeOut(i5);
            }
            if (i6 > 0) {
                setReciveDataTimeOut(i6);
            }
            if (i7 > 0) {
                setBufferTimeout(i7);
            }
            int i8 = netPlayConfig.datasource_async;
            if (i8 >= 0) {
                openImgoDSModule(i8 == 1);
            }
            if (netPlayConfig.getAddrinfo_type() != null) {
                setNetAddrinfo(netPlayConfig.getAddrinfo_type(), netPlayConfig.getAddrinfo_timeout(), false);
            }
            int i9 = netPlayConfig.dns_family_type;
            if (i9 == 0 || i9 == 1) {
                setDnsFamilyType(i9 == 0 ? 1 : 0);
            }
        }
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setNetPlayConfig(netPlayConfig);
        }
    }

    @Override
    public void setOnAVPlayListener(IVideoView.OnAVPlayListener onAVPlayListener) {
        this.mOnAVPlayListener = onAVPlayListener;
    }

    @Override
    public void setOnFrameListener(IVideoView.OnFrameListener onFrameListener) {
        this.mOnFrameListener = onFrameListener;
    }

    @Override
    public void setOnSwitchSmoothSourceListener(IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener) {
        this.mOnSwitchSmoothSourceListener = onSwitchSmoothSourceListener;
    }

    @Override
    public void setPreBufferTimeoutMs(int i) {
        this.mPreBufferTimeoutMs = i;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setPreBufferTimeoutMs(i);
        }
    }

    @Override
    public void setPrepared4StartMode(MgtvMediaPlayer.Prepared4StartMode prepared4StartMode) {
        this.mPrepared4StartMode = prepared4StartMode;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setPrepared4StartMode(prepared4StartMode);
        }
    }

    @Override
    public void setReciveDataTimeOut(int i) {
        this.mReciveDataTimeOut = i;
    }

    @Override
    public void setSeekAutoStartAfterComplete(boolean z) {
        this.mSeekAutoStartAfterCompleteEnable = z;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setSeekAutoStartAfterComplete(z);
        }
    }

    @Override
    public int setSmoothKeyFrameInfo(byte[] bArr, String str, String str2) {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.setSmoothKeyFrameInfo(bArr, str, str2);
        }
        return -1;
    }

    @Override
    public void setSmoothSwitchMode(int i) {
        this.mSmoothSwitchMode = i;
    }

    @Override
    public void setTimeout(int i, int i2) {
    }

    @Override
    public void setTsFlowTag(String str) {
        this.tsFlowTag = str;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setTsFlowTag(str);
        }
    }

    @Override
    public void setVideoFrameClockNotifyMs(int i) {
        DebugLog.i(getLogTag(), "setVideoFrameClockNotifyMs " + i);
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setVideoFrameClockNotifyMs(i);
        }
    }

    @Override
    public void setVideoFrameClockNotifyPts(long j, long j2) {
        DebugLog.i(getLogTag(), "setVideoFrameClockNotify clockTimeStart:" + j + ",clockTimeEnd:" + j2);
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setVideoFrameClockNotifyPts(j, j2);
        }
    }

    @Override
    public void setVideoIntroduction(String str) {
        this.mVideoIntroduction = str;
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null) {
            reportParams.setSvds(str);
        }
    }

    @Override
    public DebugPanel showDebugPanel(boolean z) {
        if (z) {
            if (this.mDebugPanel == null) {
                this.mDebugPanel = new DebugPanel(this.mContext, this);
            }
            ViewUtil.addView(this, this.mDebugPanel, new FrameLayout.LayoutParams(-1, -1, 17));
        } else {
            ViewUtil.removeView(this, this.mDebugPanel);
        }
        return this.mDebugPanel;
    }

    @Override
    public void startAVDecoder() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.startAVDecoder();
        }
    }

    @Override
    public void stepPlaybackNextFrame() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setPlaybackStep(1);
        }
    }

    @Override
    public void stop() {
        stopInner();
    }

    public void stopInner() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.stop();
        }
    }

    @Override
    public boolean support3X() {
        return supportMaxSpeed() >= 3.0f;
    }

    @Override
    public boolean supportImgoAIQE(MgtvMediaPlayer.ImgoAIQE imgoAIQE) {
        return false;
    }

    @Override
    public float supportMaxSpeed() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.supportMaxSpeed(isOnlyAudioMode());
        }
        return 2.0f;
    }

    @Override
    public void switchSmoothSource(SmoothMediaSource smoothMediaSource) {
        if (this.mMediaPlayer != null) {
            if (smoothMediaSource == null || smoothMediaSource.getSwitchMod() != 1) {
                setLastMediaMode(0);
            } else {
                setLastMediaMode(1);
            }
            this.mMediaPlayer.switchSmoothSource(smoothMediaSource);
        }
    }

    public MgtvAlphaAbstractVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMediaPlayer = null;
        this.mPrepared4StartMode = MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mFileStartTimeFloatS = -1.0f;
        this.mDnsFamilyType = 1;
        this.mKeyInfoSetEnable = true;
        this.mKeyInfoSetLayer = 0;
        this.mCurrentUri = null;
        this.mOnProvisionSuccessListener = new IDrmSession.OnProvisionSuccessListener() {
            @Override
            public void onSuccess(IDrmSession iDrmSession) {
                MgtvAlphaAbstractVideoView.this.setDrmLicensePrepared();
            }
        };
        this.mForceReuseTexture = false;
        this.mEnableTexture = false;
        this.mAMCKeyFrameBackMode = -1;
        this.mEnableMediacodecSW = false;
        this.mAudioFocusObtained = false;
        this.mDataSourceType = MgtvMediaPlayer.DataSourceType.TYPE_DATASOUCE_DEFAULT;
        this.mMgtvFastMode = 1;
        this.mMediacodecRecreateformat = false;
        this.mMediacodecRecreateformatOnly4K = false;
        this.mEnableDefaultFileStartTime = true;
        this.mDataSourceInfo = new MgtvMediaPlayer.DataSourceInfo().setVideoFormat("init").setFileFormat("init").setBitRate("0");
        this.mSeekAutoStartAfterCompleteEnable = false;
        this.mJavaDnsEnable = false;
        this.mLastMediaMode = 0;
        this.mBackPlayEnable = false;
        this.isRequestAudioFocus = true;
        this.mVideoIntroduction = "";
        this.mLiveLowLatencyEnable = false;
        this.mAVPlayListener = new MgtvPlayerListener.OnAVPlayListener() {
            @Override
            public void onAVPauseOrPlay(boolean z) {
                IVideoView.OnAVPlayListener onAVPlayListener = MgtvAlphaAbstractVideoView.this.mOnAVPlayListener;
                if (onAVPlayListener != null) {
                    onAVPlayListener.onAVPauseOrPlay(z);
                }
            }
        };
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                IVideoView.OnFrameListener onFrameListener = MgtvAlphaAbstractVideoView.this.mOnFrameListener;
                if (onFrameListener != null) {
                    onFrameListener.onVFrameClockCome(frameClock);
                }
            }
        };
        this.mSwitchSmoothSourceListener = new MgtvPlayerListener.OnSwitchSmoothSourceListener() {
            @Override
            public void onSwitchSmoothSourceError(SmoothMediaSource smoothMediaSource, int i, int i2) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceError(smoothMediaSource, i, i2);
                }
            }

            @Override
            public void onSwitchSmoothSourceFail(SmoothMediaSource smoothMediaSource, int i, int i2) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceFail(smoothMediaSource, i, i2);
                }
            }

            @Override
            public void onSwitchSmoothSourceInfo(SmoothMediaSource smoothMediaSource, int i) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource, i);
                }
            }

            @Override
            public void onSwitchSmoothSourceSuccess(SmoothMediaSource smoothMediaSource) {
                MgtvAlphaAbstractVideoView mgtvAlphaAbstractVideoView;
                if (smoothMediaSource != null) {
                    Uri uri = null;
                    if (StringUtil.isEmpty(smoothMediaSource.getUrl())) {
                        MgtvAlphaAbstractVideoView.this.mCurrentUri = null;
                    } else {
                        MgtvAlphaAbstractVideoView.this.mCurrentUri = Uri.parse(smoothMediaSource.getUrl().trim());
                    }
                    if (StringUtil.isEmpty(smoothMediaSource.getProxyUrl())) {
                        mgtvAlphaAbstractVideoView = MgtvAlphaAbstractVideoView.this;
                    } else {
                        mgtvAlphaAbstractVideoView = MgtvAlphaAbstractVideoView.this;
                        uri = Uri.parse(smoothMediaSource.getProxyUrl().trim());
                    }
                    mgtvAlphaAbstractVideoView.mProxyUri = uri;
                    MgtvAlphaAbstractVideoView.this.mMainP2pTask = smoothMediaSource.getP2pTask();
                }
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSource);
                }
            }

            @Override
            public boolean onSwitchSmoothSourceWillUpdate(SmoothMediaSource smoothMediaSource) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    return onSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSource);
                }
                return false;
            }
        };
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.isBackground = false;
    }

    public int setKeyInfoData(byte[] bArr) {
        int i;
        String logTag;
        StringBuilder sb;
        DebugLog.i(getLogTag(), "setKeyInfoData(byte[] data) in");
        if (!this.mKeyInfoSetEnable) {
            return 0;
        }
        try {
            this.mKeyInfoData = bArr;
            this.mKeyInfoSet = true;
            this.mKeyInfoSetLayer = 1;
            if (this.mMediaPlayer != null) {
                setKeyInfoDataInner(bArr);
                i = this.mKeyInfoRet;
                updateKeyInfoReport();
                logTag = getLogTag();
                sb = new StringBuilder();
            } else {
                i = this.mKeyInfoRet;
                updateKeyInfoReport();
                logTag = getLogTag();
                sb = new StringBuilder();
            }
            sb.append("setKeyInfoData(byte[] data) out. mKeyInfoRet:");
            sb.append(this.mKeyInfoRet);
            DebugLog.i(logTag, sb.toString());
            return i;
        } catch (Throwable th) {
            updateKeyInfoReport();
            DebugLog.i(getLogTag(), "setKeyInfoData(byte[] data) out. mKeyInfoRet:" + this.mKeyInfoRet);
            throw th;
        }
    }

    public MgtvAlphaAbstractVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMediaPlayer = null;
        this.mPrepared4StartMode = MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mFileStartTimeFloatS = -1.0f;
        this.mDnsFamilyType = 1;
        this.mKeyInfoSetEnable = true;
        this.mKeyInfoSetLayer = 0;
        this.mCurrentUri = null;
        this.mOnProvisionSuccessListener = new IDrmSession.OnProvisionSuccessListener() {
            @Override
            public void onSuccess(IDrmSession iDrmSession) {
                MgtvAlphaAbstractVideoView.this.setDrmLicensePrepared();
            }
        };
        this.mForceReuseTexture = false;
        this.mEnableTexture = false;
        this.mAMCKeyFrameBackMode = -1;
        this.mEnableMediacodecSW = false;
        this.mAudioFocusObtained = false;
        this.mDataSourceType = MgtvMediaPlayer.DataSourceType.TYPE_DATASOUCE_DEFAULT;
        this.mMgtvFastMode = 1;
        this.mMediacodecRecreateformat = false;
        this.mMediacodecRecreateformatOnly4K = false;
        this.mEnableDefaultFileStartTime = true;
        this.mDataSourceInfo = new MgtvMediaPlayer.DataSourceInfo().setVideoFormat("init").setFileFormat("init").setBitRate("0");
        this.mSeekAutoStartAfterCompleteEnable = false;
        this.mJavaDnsEnable = false;
        this.mLastMediaMode = 0;
        this.mBackPlayEnable = false;
        this.isRequestAudioFocus = true;
        this.mVideoIntroduction = "";
        this.mLiveLowLatencyEnable = false;
        this.mAVPlayListener = new MgtvPlayerListener.OnAVPlayListener() {
            @Override
            public void onAVPauseOrPlay(boolean z) {
                IVideoView.OnAVPlayListener onAVPlayListener = MgtvAlphaAbstractVideoView.this.mOnAVPlayListener;
                if (onAVPlayListener != null) {
                    onAVPlayListener.onAVPauseOrPlay(z);
                }
            }
        };
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                IVideoView.OnFrameListener onFrameListener = MgtvAlphaAbstractVideoView.this.mOnFrameListener;
                if (onFrameListener != null) {
                    onFrameListener.onVFrameClockCome(frameClock);
                }
            }
        };
        this.mSwitchSmoothSourceListener = new MgtvPlayerListener.OnSwitchSmoothSourceListener() {
            @Override
            public void onSwitchSmoothSourceError(SmoothMediaSource smoothMediaSource, int i2, int i3) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceError(smoothMediaSource, i2, i3);
                }
            }

            @Override
            public void onSwitchSmoothSourceFail(SmoothMediaSource smoothMediaSource, int i2, int i3) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceFail(smoothMediaSource, i2, i3);
                }
            }

            @Override
            public void onSwitchSmoothSourceInfo(SmoothMediaSource smoothMediaSource, int i2) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource, i2);
                }
            }

            @Override
            public void onSwitchSmoothSourceSuccess(SmoothMediaSource smoothMediaSource) {
                MgtvAlphaAbstractVideoView mgtvAlphaAbstractVideoView;
                if (smoothMediaSource != null) {
                    Uri uri = null;
                    if (StringUtil.isEmpty(smoothMediaSource.getUrl())) {
                        MgtvAlphaAbstractVideoView.this.mCurrentUri = null;
                    } else {
                        MgtvAlphaAbstractVideoView.this.mCurrentUri = Uri.parse(smoothMediaSource.getUrl().trim());
                    }
                    if (StringUtil.isEmpty(smoothMediaSource.getProxyUrl())) {
                        mgtvAlphaAbstractVideoView = MgtvAlphaAbstractVideoView.this;
                    } else {
                        mgtvAlphaAbstractVideoView = MgtvAlphaAbstractVideoView.this;
                        uri = Uri.parse(smoothMediaSource.getProxyUrl().trim());
                    }
                    mgtvAlphaAbstractVideoView.mProxyUri = uri;
                    MgtvAlphaAbstractVideoView.this.mMainP2pTask = smoothMediaSource.getP2pTask();
                }
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSource);
                }
            }

            @Override
            public boolean onSwitchSmoothSourceWillUpdate(SmoothMediaSource smoothMediaSource) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    return onSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSource);
                }
                return false;
            }
        };
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.isBackground = false;
    }

    @Override
    public int setKeyInfoData(byte[] bArr, int i, int i2) {
        int i3;
        String logTag;
        StringBuilder sb;
        DebugLog.i(getLogTag(), "setKeyInfoData(byte[] data) vid:" + i + " def:" + i2 + " in");
        if (!this.mKeyInfoSetEnable) {
            return 0;
        }
        try {
            this.mKeyInfoData = bArr;
            this.mKeyInfoSet = true;
            this.mKeyInfoSetLayer = 1;
            if (this.mMediaPlayer != null) {
                setKeyInfoDataInner(bArr);
                i3 = this.mKeyInfoRet;
                updateKeyInfoReport();
                logTag = getLogTag();
                sb = new StringBuilder();
            } else {
                i3 = this.mKeyInfoRet;
                updateKeyInfoReport();
                logTag = getLogTag();
                sb = new StringBuilder();
            }
            sb.append("setKeyInfoData(byte[] data) out. mKeyInfoRet:");
            sb.append(this.mKeyInfoRet);
            DebugLog.i(logTag, sb.toString());
            return i3;
        } catch (Throwable th) {
            updateKeyInfoReport();
            DebugLog.i(getLogTag(), "setKeyInfoData(byte[] data) out. mKeyInfoRet:" + this.mKeyInfoRet);
            throw th;
        }
    }

    public MgtvAlphaAbstractVideoView(Context context, IVideoView.Configuration configuration) {
        super(context);
        this.mMediaPlayer = null;
        this.mPrepared4StartMode = MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mFileStartTimeFloatS = -1.0f;
        this.mDnsFamilyType = 1;
        this.mKeyInfoSetEnable = true;
        this.mKeyInfoSetLayer = 0;
        this.mCurrentUri = null;
        this.mOnProvisionSuccessListener = new IDrmSession.OnProvisionSuccessListener() {
            @Override
            public void onSuccess(IDrmSession iDrmSession) {
                MgtvAlphaAbstractVideoView.this.setDrmLicensePrepared();
            }
        };
        this.mForceReuseTexture = false;
        this.mEnableTexture = false;
        this.mAMCKeyFrameBackMode = -1;
        this.mEnableMediacodecSW = false;
        this.mAudioFocusObtained = false;
        this.mDataSourceType = MgtvMediaPlayer.DataSourceType.TYPE_DATASOUCE_DEFAULT;
        this.mMgtvFastMode = 1;
        this.mMediacodecRecreateformat = false;
        this.mMediacodecRecreateformatOnly4K = false;
        this.mEnableDefaultFileStartTime = true;
        this.mDataSourceInfo = new MgtvMediaPlayer.DataSourceInfo().setVideoFormat("init").setFileFormat("init").setBitRate("0");
        this.mSeekAutoStartAfterCompleteEnable = false;
        this.mJavaDnsEnable = false;
        this.mLastMediaMode = 0;
        this.mBackPlayEnable = false;
        this.isRequestAudioFocus = true;
        this.mVideoIntroduction = "";
        this.mLiveLowLatencyEnable = false;
        this.mAVPlayListener = new MgtvPlayerListener.OnAVPlayListener() {
            @Override
            public void onAVPauseOrPlay(boolean z) {
                IVideoView.OnAVPlayListener onAVPlayListener = MgtvAlphaAbstractVideoView.this.mOnAVPlayListener;
                if (onAVPlayListener != null) {
                    onAVPlayListener.onAVPauseOrPlay(z);
                }
            }
        };
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                IVideoView.OnFrameListener onFrameListener = MgtvAlphaAbstractVideoView.this.mOnFrameListener;
                if (onFrameListener != null) {
                    onFrameListener.onVFrameClockCome(frameClock);
                }
            }
        };
        this.mSwitchSmoothSourceListener = new MgtvPlayerListener.OnSwitchSmoothSourceListener() {
            @Override
            public void onSwitchSmoothSourceError(SmoothMediaSource smoothMediaSource, int i2, int i3) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceError(smoothMediaSource, i2, i3);
                }
            }

            @Override
            public void onSwitchSmoothSourceFail(SmoothMediaSource smoothMediaSource, int i2, int i3) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceFail(smoothMediaSource, i2, i3);
                }
            }

            @Override
            public void onSwitchSmoothSourceInfo(SmoothMediaSource smoothMediaSource, int i2) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource, i2);
                }
            }

            @Override
            public void onSwitchSmoothSourceSuccess(SmoothMediaSource smoothMediaSource) {
                MgtvAlphaAbstractVideoView mgtvAlphaAbstractVideoView;
                if (smoothMediaSource != null) {
                    Uri uri = null;
                    if (StringUtil.isEmpty(smoothMediaSource.getUrl())) {
                        MgtvAlphaAbstractVideoView.this.mCurrentUri = null;
                    } else {
                        MgtvAlphaAbstractVideoView.this.mCurrentUri = Uri.parse(smoothMediaSource.getUrl().trim());
                    }
                    if (StringUtil.isEmpty(smoothMediaSource.getProxyUrl())) {
                        mgtvAlphaAbstractVideoView = MgtvAlphaAbstractVideoView.this;
                    } else {
                        mgtvAlphaAbstractVideoView = MgtvAlphaAbstractVideoView.this;
                        uri = Uri.parse(smoothMediaSource.getProxyUrl().trim());
                    }
                    mgtvAlphaAbstractVideoView.mProxyUri = uri;
                    MgtvAlphaAbstractVideoView.this.mMainP2pTask = smoothMediaSource.getP2pTask();
                }
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSource);
                }
            }

            @Override
            public boolean onSwitchSmoothSourceWillUpdate(SmoothMediaSource smoothMediaSource) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAlphaAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    return onSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSource);
                }
                return false;
            }
        };
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.isBackground = false;
        this.mConfiguration = configuration;
        if (configuration != null) {
            this.mForceReuseTexture = configuration.forceReuseTexture;
        }
    }
}
