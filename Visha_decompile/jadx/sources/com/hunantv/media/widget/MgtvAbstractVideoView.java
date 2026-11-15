package com.hunantv.media.widget;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.hunantv.media.a.a;
import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.drm.IDrmSession;
import com.hunantv.media.drm.MgtvDrmParams;
import com.hunantv.media.global.Constants;
import com.hunantv.media.global.PlayerReferenceObserver;
import com.hunantv.media.p2p.IP2pTask;
import com.hunantv.media.player.IMgtvRenderView;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.MgtvPlayerDataSource;
import com.hunantv.media.player.MgtvPlayerListener;
import com.hunantv.media.player.MgtvRenderView;
import com.hunantv.media.player.c;
import com.hunantv.media.player.l;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.smooth.SmoothMediaSource;
import com.hunantv.media.player.subtitle.SubtitleConfig;
import com.hunantv.media.player.subtitle.SubtitleSource;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.player.utils.ThreadUtil;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.report.c.h;
import com.hunantv.media.utils.AudioUtil;
import com.hunantv.media.utils.FileUtil;
import com.hunantv.media.utils.KeyFrameInfoUtils;
import com.hunantv.media.utils.ViewUtil;
import com.hunantv.media.widget.debug.DebugPanel;
import com.hunantv.media.widget.extra.SubtitleView;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class MgtvAbstractVideoView extends FrameLayout implements IVideoView {
    public static final int INVALID_FILE_START_TIME_VALUE = -1;
    public static final int MODE_NORMAL = 0;
    public static final int MODE_ONLY_AUDIO = 1;
    static boolean sAutoNativeStack = true;
    protected boolean backPlayStartEnable;
    public boolean isBackground;
    boolean isRequestAudioFocus;
    ABRegion mABRegion;
    int mAMCKeyFrameBackMode;
    private MgtvPlayerListener.OnAVPlayListener mAVPlayListener;
    int mAddrInfoTimeoutMs;
    boolean mAntiViewShake;
    private byte[] mAudioEffectConfig;
    volatile boolean mAudioFocusObtained;
    boolean mBackPlayEnable;
    IVideoView.Configuration mConfiguration;
    int mConnectTimeOut;
    Context mContext;
    Uri mCurrentUri;
    MgtvPlayerDataSource mDataSource;
    MgtvMediaPlayer.DataSourceInfo mDataSourceInfo;
    MgtvMediaPlayer.DataSourceType mDataSourceType;
    DebugPanel mDebugPanel;
    FrameLayout mDecorateLayout;
    IMgtvRenderView.FloatRect mDisplayFloatRect;
    int mDnsFamilyType;
    List<MgtvDrmParams.DrmInfo> mDrmInfoList;
    IDrmSession mDrmSession;
    boolean mEnableDefaultFileStartTime;
    private boolean mEnableFramePTSNotify;
    boolean mEnableImgoVsr;
    boolean mEnableMediacodecSW;
    boolean mEnableTexture;
    boolean mEnableVideoStartTime;
    c mFakeFrameView;
    float mFileStartTimeFloatS;
    boolean mForceHttpDns;
    boolean mForceReuseTexture;
    private MgtvPlayerListener.OnFrameListener mFrameListener;
    private MgtvPlayerListener.OnInfoStringListener mInfoStringListener;
    public int mInitRenderViewType;
    boolean mIsDrmPrepared;
    boolean mIsSubtitleEnable;
    boolean mJavaDnsEnable;
    byte[] mKeyInfoData;
    int mKeyInfoRet;
    boolean mKeyInfoSet;
    boolean mKeyInfoSetEnable;
    int mKeyInfoSetLayer;
    int mLastMediaMode;
    float mLeftVolume;
    private boolean mLiveLowLatencyEnable;
    boolean mLoopABPlayEnable;
    IP2pTask mMainP2pTask;
    MgtvMediaPlayer mMediaPlayer;
    boolean mMediacodecRecreateformat;
    boolean mMediacodecRecreateformatOnly4K;
    int mMgtvFastMode;
    NetPlayConfig mNetPlayConfig;
    IVideoView.OnAVPlayListener mOnAVPlayListener;
    IVideoView.OnEventInfoListener mOnEventInfoListener;
    IVideoView.OnFrameListener mOnFrameListener;
    IVideoView.OnInfoStringListener mOnInfoStringListener;
    IDrmSession.OnProvisionSuccessListener mOnProvisionSuccessListener;
    ISubtitle.SubtitleCallback mOnSubtitleCallback;
    IVideoView.OnSwitchSmoothSourceListener mOnSwitchSmoothSourceListener;
    private MgtvPlayerListener.OnPlayerEventListener mPlayerEventListener;
    private int mPreBufferTimeoutMs;
    MgtvMediaPlayer.Prepared4StartMode mPrepared4StartMode;
    Uri mProxyUri;
    int mReadDataSourceTypeConfig;
    int mReciveDataTimeOut;
    MgtvRenderView mRenderView;
    int mRenderViewType;
    ReportParams mReportParams;
    l mResizableFrameView;
    float mRightVolume;
    boolean mSeekAutoStartAfterCompleteEnable;
    boolean mSmoothModeOpen;
    boolean mSmoothModeSwitch;
    int mSmoothSwitchMode;
    private ISubtitle.SubtitleCallback mSubtitleCallback;
    SubtitleSource mSubtitleSource;
    SubtitleView mSubtitleView;
    IMgtvRenderView.ISurfaceHolder mSurfaceHolder;
    AtomicInteger mSurfaceKeyGen;
    private MgtvPlayerListener.OnSwitchSmoothSourceListener mSwitchSmoothSourceListener;
    String mVideoIntroduction;
    Set<MgtvPlayerListener.OnVideoPTSListener> ptsListeners;
    Object ptsLocker;
    String tsFlowTag;

    public static class ABRegion {
        public int aPosMs;
        public int bPosMs;

        public ABRegion(int i, int i2) {
            this.aPosMs = i;
            this.bPosMs = i2;
        }

        public String toString() {
            return "Region{startMs=" + this.aPosMs + ", endMs=" + this.bPosMs + '}';
        }
    }

    public enum ReleaseReason {
        OUT,
        DEFAULT_INNER,
        PAUSE_DATA_BEFORE_PREPEAD
    }

    public MgtvAbstractVideoView(Context context) {
        super(context);
        this.mMediaPlayer = null;
        this.mRenderViewType = 0;
        this.mPrepared4StartMode = MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mFileStartTimeFloatS = -1.0f;
        this.mDnsFamilyType = 1;
        this.mKeyInfoSetEnable = true;
        this.mKeyInfoSetLayer = 0;
        this.mCurrentUri = null;
        this.mOnProvisionSuccessListener = new IDrmSession.OnProvisionSuccessListener() {
            @Override
            public void onSuccess(IDrmSession iDrmSession) {
                MgtvAbstractVideoView.this.mIsDrmPrepared = true;
                if (iDrmSession != null) {
                    iDrmSession.setDrmLicensePrepared();
                }
            }
        };
        this.mSurfaceHolder = null;
        this.mForceReuseTexture = false;
        this.mEnableTexture = true;
        this.mAMCKeyFrameBackMode = -1;
        this.mEnableMediacodecSW = false;
        this.mEnableImgoVsr = false;
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
        this.mVideoIntroduction = "";
        this.mLiveLowLatencyEnable = false;
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
        this.mReadDataSourceTypeConfig = 0;
        this.mAVPlayListener = new MgtvPlayerListener.OnAVPlayListener() {
            @Override
            public void onAVPauseOrPlay(boolean z) {
                IVideoView.OnAVPlayListener onAVPlayListener = MgtvAbstractVideoView.this.mOnAVPlayListener;
                if (onAVPlayListener != null) {
                    onAVPlayListener.onAVPauseOrPlay(z);
                }
            }
        };
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                IVideoView.OnFrameListener onFrameListener = MgtvAbstractVideoView.this.mOnFrameListener;
                if (onFrameListener != null) {
                    onFrameListener.onVFrameClockCome(frameClock);
                }
            }
        };
        this.mSwitchSmoothSourceListener = new MgtvPlayerListener.OnSwitchSmoothSourceListener() {
            @Override
            public void onSwitchSmoothSourceError(SmoothMediaSource smoothMediaSource, int i, int i2) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceError(smoothMediaSource, i, i2);
                }
            }

            @Override
            public void onSwitchSmoothSourceFail(SmoothMediaSource smoothMediaSource, int i, int i2) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceFail(smoothMediaSource, i, i2);
                }
            }

            @Override
            public void onSwitchSmoothSourceInfo(SmoothMediaSource smoothMediaSource, int i) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource, i);
                }
            }

            @Override
            public void onSwitchSmoothSourceSuccess(SmoothMediaSource smoothMediaSource) {
                MgtvAbstractVideoView mgtvAbstractVideoView;
                MgtvAbstractVideoView mgtvAbstractVideoView2;
                if (smoothMediaSource != null) {
                    Uri uri = null;
                    if (StringUtil.isEmpty(smoothMediaSource.getUrl())) {
                        MgtvAbstractVideoView.this.mCurrentUri = null;
                    } else {
                        MgtvAbstractVideoView.this.mCurrentUri = Uri.parse(smoothMediaSource.getUrl().trim());
                    }
                    if (StringUtil.isEmpty(smoothMediaSource.getProxyUrl())) {
                        mgtvAbstractVideoView2 = MgtvAbstractVideoView.this;
                    } else {
                        mgtvAbstractVideoView2 = MgtvAbstractVideoView.this;
                        uri = Uri.parse(smoothMediaSource.getProxyUrl().trim());
                    }
                    mgtvAbstractVideoView2.mProxyUri = uri;
                    MgtvAbstractVideoView.this.mMainP2pTask = smoothMediaSource.getP2pTask();
                }
                DebugLog.i(MgtvAbstractVideoView.this.getLogTag(), "onSwitchSmoothSourceSuccess then change media mode");
                int i = 1;
                if (smoothMediaSource.getSwitchMod() == 1) {
                    mgtvAbstractVideoView = MgtvAbstractVideoView.this;
                } else {
                    mgtvAbstractVideoView = MgtvAbstractVideoView.this;
                    i = 0;
                }
                mgtvAbstractVideoView.setLastMediaMode(i);
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSource);
                }
            }

            @Override
            public boolean onSwitchSmoothSourceWillUpdate(SmoothMediaSource smoothMediaSource) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    return onSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSource);
                }
                return false;
            }
        };
        this.mInfoStringListener = new MgtvPlayerListener.OnInfoStringListener() {
            /* JADX WARN: Code duplicated, block: B:18:0x007d  */
            /* JADX WARN: Code duplicated, block: B:21:? A[RETURN, SYNTHETIC] */
            @Override
            public boolean onInfo(int i, String str) {
                String logTag;
                StringBuilder sb;
                String str2;
                IVideoView.OnInfoStringListener onInfoStringListener;
                if (i != 2860) {
                    if (i != 2870) {
                        logTag = MgtvAbstractVideoView.this.getLogTag();
                        sb = new StringBuilder();
                        sb.append("OnInfoStringListener what: ");
                        sb.append(i);
                        str2 = ", extra is ";
                    } else {
                        DebugLog.i(MgtvAbstractVideoView.this.getLogTag(), "MEDIA_INFO_VIDEO_STREAM_CODEC_INFO: " + str);
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvAbstractVideoView.this.mMediaPlayer;
                        if (mgtvMediaPlayer != null && mgtvMediaPlayer.isHDR()) {
                            MgtvAbstractVideoView mgtvAbstractVideoView = MgtvAbstractVideoView.this;
                            if (mgtvAbstractVideoView.mRenderViewType != 0) {
                                DebugLog.i(mgtvAbstractVideoView.getLogTag(), "MEDIA_INFO_VIDEO_STREAM_CODEC_INFO check the source is HDR. try to change to surfaceview");
                                ThreadUtil.postOnUiThread(new Runnable() {
                                    @Override
                                    public void run() {
                                        MgtvAbstractVideoView.this.toggleRenders(0);
                                    }
                                });
                            }
                        }
                    }
                    onInfoStringListener = MgtvAbstractVideoView.this.mOnInfoStringListener;
                    if (onInfoStringListener != null) {
                        return false;
                    }
                    onInfoStringListener.onInfo(i, str);
                    return false;
                }
                logTag = MgtvAbstractVideoView.this.getLogTag();
                sb = new StringBuilder();
                str2 = "MEDIA_INFO_SEI_SYS_TIMESTAMP: ";
                sb.append(str2);
                sb.append(str);
                DebugLog.i(logTag, sb.toString());
                onInfoStringListener = MgtvAbstractVideoView.this.mOnInfoStringListener;
                if (onInfoStringListener != null) {
                    return false;
                }
                onInfoStringListener.onInfo(i, str);
                return false;
            }
        };
        this.mSubtitleCallback = new ISubtitle.SubtitleCallback() {
            @Override
            public void onError(SubtitleSource subtitleSource) {
                if (MgtvAbstractVideoView.this.mOnSubtitleCallback != null) {
                    if (subtitleSource.getErrorResult().code == 0) {
                        subtitleSource.getErrorResult().code = -1;
                    }
                    MgtvAbstractVideoView.this.mOnSubtitleCallback.onError(subtitleSource);
                }
            }

            @Override
            public void onSuccess(SubtitleSource subtitleSource) {
                ISubtitle.SubtitleCallback subtitleCallback = MgtvAbstractVideoView.this.mOnSubtitleCallback;
                if (subtitleCallback != null) {
                    subtitleCallback.onSuccess(subtitleSource);
                }
            }
        };
        this.mPlayerEventListener = new MgtvPlayerListener.OnPlayerEventListener() {
            @Override
            public void onInfo(int i, int i2) {
                DebugLog.d(MgtvAbstractVideoView.this.getLogTag(), "OnPlayerEventListener what:" + i + "-extra:" + i2);
                IVideoView.OnEventInfoListener onEventInfoListener = MgtvAbstractVideoView.this.mOnEventInfoListener;
                if (onEventInfoListener != null) {
                    onEventInfoListener.onInfo(i, i2);
                }
            }
        };
        this.mInitRenderViewType = 0;
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.isBackground = false;
        this.mSurfaceKeyGen = new AtomicInteger(10);
        this.isRequestAudioFocus = true;
        this.backPlayStartEnable = false;
        init(context);
    }

    private void init(Context context) {
        this.mContext = context;
        this.mDecorateLayout = new FrameLayout(context);
        this.mDecorateLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
        this.mDecorateLayout.setVisibility(8);
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

    public void addDecorateLayout() {
        FrameLayout frameLayout = this.mDecorateLayout;
        if (frameLayout == null || ViewUtil.isViewExsit(this, frameLayout)) {
            return;
        }
        addView(this.mDecorateLayout);
    }

    public void addSubtitleView() {
        if (this.mIsSubtitleEnable) {
            if (this.mSubtitleView == null) {
                this.mSubtitleView = new SubtitleView(this.mContext);
                CaptioningManager captioningManager = (CaptioningManager) this.mContext.getSystemService("captioning");
                a aVarA = a.a(captioningManager.getUserStyle());
                if (captioningManager.isEnabled()) {
                    this.mSubtitleView.setStyle(aVarA);
                    this.mSubtitleView.setUserDefaultTextSize();
                }
            }
            this.mSubtitleView.setVisible(this.mIsSubtitleEnable);
            FrameLayout frameLayout = this.mDecorateLayout;
            if (frameLayout == null || ViewUtil.isViewExsit(frameLayout, this.mSubtitleView)) {
                return;
            }
            this.mDecorateLayout.addView(this.mSubtitleView);
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

    /* JADX WARN: Code duplicated, block: B:16:0x0027  */
    public void beforeOpenVideo() {
        boolean z;
        try {
            String str = this.mVideoIntroduction;
            if (str == null || !str.matches("FFF2[0-9]222")) {
                ReportParams reportParams = this.mReportParams;
                if (reportParams == null || reportParams.getSvds() == null || !this.mReportParams.getSvds().matches("FFF2[0-9]222")) {
                    z = false;
                } else {
                    z = true;
                }
            } else {
                z = true;
            }
            int i = this.mRenderViewType;
            if (i != 0 && z) {
                DebugLog.i(getLogTag(), "beforeOpenVideo check the source is HDR. try to change to surfaceview");
                toggleRenders(0);
            } else if (!z && this.mInitRenderViewType != i) {
                DebugLog.i(getLogTag(), "beforeOpenVideo check the source is not HDR. recovery renderview to " + this.mInitRenderViewType);
                toggleRenders(this.mInitRenderViewType);
            }
            ReportParams reportParams2 = this.mReportParams;
            if (reportParams2 != null) {
                reportParams2.setRenvtp(this.mRenderViewType == 1 ? 1 : 0);
            }
        } catch (Exception e) {
            e.printStackTrace();
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
                this.mIsDrmPrepared = true;
                this.mDrmSession.setDrmLicensePrepared();
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
            this.mMediaPlayer.setTsFlowTag(this.tsFlowTag);
            setBackground(this.isBackground);
            this.mMediaPlayer.setWanosAudioEffectConfig(this.mAudioEffectConfig);
            this.mMediaPlayer.setDrmInfoList(this.mDrmInfoList);
            this.mMediaPlayer.enableFramePTSNotify(this.mEnableFramePTSNotify);
            DebugLog.i(getLogTag(), "configImgoPlayer -mPrepared4StartMode:" + this.mPrepared4StartMode + "-mForceHttpDns:" + this.mForceHttpDns + "-mEnableVideoStartTime:" + this.mEnableVideoStartTime + "-mDnsFamilyType:" + this.mDnsFamilyType + "-mAMCKeyFrameBackMode:" + this.mAMCKeyFrameBackMode + "-mFileStartTimeFloatS:" + this.mFileStartTimeFloatS + "-mMgtvFastMode:" + this.mMgtvFastMode + "-mDataSourceInfo:" + this.mDataSourceInfo + "-mPreBufferTimeoutMs:" + this.mPreBufferTimeoutMs + "-isBackground:" + this.isBackground + "-mEnableFramePTSNotify:" + this.mEnableFramePTSNotify);
        }
    }

    public void configImgoPlayer() throws Throwable {
        IDrmSession iDrmSession;
        MgtvMediaPlayer.DataSourceInfo dataSourceInfo;
        float f;
        ReportParams reportParams;
        SubtitleSource subtitleSource;
        if (isReuseTextureDisable()) {
            this.mAMCKeyFrameBackMode = 2;
        }
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setPreBufferTimeoutMs(this.mPreBufferTimeoutMs);
            if (this.mIsSubtitleEnable && (subtitleSource = this.mSubtitleSource) != null) {
                try {
                    this.mMediaPlayer.addSubtitleSource(this.mSubtitleView, subtitleSource);
                } catch (Exception unused) {
                    this.mSubtitleCallback.onError(this.mSubtitleSource);
                }
            }
            this.mMediaPlayer.setPrepared4StartMode(this.mPrepared4StartMode);
            if (this.mPrepared4StartMode == MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_LOADDATA_DISAV) {
                this.mMediaPlayer.setDisableAVDecoderStart(true);
            } else {
                this.mMediaPlayer.setDisableAVDecoderStart(false);
            }
            this.mMediaPlayer.setForceHttpDns(this.mForceHttpDns);
            this.mMediaPlayer.setEnableVideoStartTime(this.mEnableVideoStartTime);
            this.mMediaPlayer.setDnsFamilyType(this.mDnsFamilyType);
            int i = this.mAMCKeyFrameBackMode;
            if (i >= 0) {
                this.mMediaPlayer.setAMCKeyFrameBackMode(i);
            }
            if (!Constants.FOR_OTT) {
                if (NetPlayConfig.isCodecSWRenderOpen() && (reportParams = this.mReportParams) != null && ((reportParams.getVideoType() == ReportParams.VideoType.IMMERSIVE || this.mReportParams.getVideoType() == ReportParams.VideoType.VOD) && (!NetPlayConfig.isOppoSrOpen() || (!h.b(this.mContext) && !h.c(this.mContext))))) {
                    this.mEnableMediacodecSW = true;
                }
                ReportParams reportParams2 = this.mReportParams;
                if (reportParams2 != null && reportParams2.getVideoType() == ReportParams.VideoType.TRY_WATCHING && !StringUtil.isEmpty(this.mReportParams.getPlayPreviewType()) && (this.mReportParams.getPlayPreviewType().equals("1") || this.mReportParams.getPlayPreviewType().equals("2"))) {
                    this.mMediaPlayer.setConfig(2016021706, 2);
                }
            }
            this.mMediaPlayer.setEnableMediacodecSWRender(this.mEnableMediacodecSW);
            this.mMediaPlayer.setMarkMediacodecSWRender(NetPlayConfig.isCodecSWRenderMark());
            this.mMediaPlayer.setEnableImgoVsr(this.mEnableImgoVsr);
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
            if (this.mIsDrmPrepared && (iDrmSession = this.mDrmSession) != null) {
                iDrmSession.setDrmLicensePrepared();
            }
            setLoopABPlay(this.mLoopABPlayEnable, this.mABRegion);
            this.mMediaPlayer.setSeekAutoStartAfterComplete(this.mSeekAutoStartAfterCompleteEnable);
            enableLiveLowLatency(this.mLiveLowLatencyEnable);
            this.mMediaPlayer.setTsFlowTag(this.tsFlowTag);
            setBackground(this.isBackground);
            this.mMediaPlayer.setWanosAudioEffectConfig(this.mAudioEffectConfig);
            this.mMediaPlayer.setDrmInfoList(this.mDrmInfoList);
            DebugLog.i(getLogTag(), "configImgoPlayer -mPrepared4StartMode:" + this.mPrepared4StartMode + "-mForceHttpDns:" + this.mForceHttpDns + "-mEnableVideoStartTime:" + this.mEnableVideoStartTime + "-mDnsFamilyType:" + this.mDnsFamilyType + "-mAMCKeyFrameBackMode:" + this.mAMCKeyFrameBackMode + "-mFileStartTimeFloatS:" + this.mFileStartTimeFloatS + "-mMgtvFastMode:" + this.mMgtvFastMode + "-mMediacodecRecreateformat:" + this.mMediacodecRecreateformat + "-mMediacodecRecreateformatOnly4K:" + this.mMediacodecRecreateformatOnly4K + "-mDataSourceInfo:" + this.mDataSourceInfo + "-mPreBufferTimeoutMs:" + this.mPreBufferTimeoutMs + "-mLiveLowlantacyEnable:" + this.mLiveLowLatencyEnable + "-tsFlowTag:" + this.tsFlowTag + "-isBackground:" + this.isBackground);
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
        this.mEnableFramePTSNotify = z;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.enableFramePTSNotify(z);
        }
    }

    @Override
    public void enableImgoAIQE(boolean z) {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.enableImgoAIQE(z);
        }
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
    public void enableSubtitle(boolean z) {
        this.mIsSubtitleEnable = z;
        if (z) {
            addSubtitleView();
            FrameLayout frameLayout = this.mDecorateLayout;
            if (frameLayout != null) {
                frameLayout.setVisibility(0);
            }
        } else {
            removeSubtitleSource();
            removeSubtitleView();
        }
        SubtitleView subtitleView = this.mSubtitleView;
        if (subtitleView != null) {
            subtitleView.setVisible(this.mIsSubtitleEnable);
        }
    }

    @Override
    public ABRegion getABRegion() {
        return this.mABRegion;
    }

    @Override
    public int getAMCKeyFrameBackMode() {
        return this.mAMCKeyFrameBackMode;
    }

    @Override
    public IDrmSession getBindDrmSession() {
        return this.mDrmSession;
    }

    @Override
    public long getBufferedPositionMs() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getBufferedPositionMs();
        }
        return 0L;
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
        return this.mLeftVolume;
    }

    @Override
    public MgtvMediaPlayer getMediaPlayer() {
        return this.mMediaPlayer;
    }

    @Override
    public int getMemoryPlayType() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getMemoryPlayType();
        }
        return 0;
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
    public int getReadDataSourceType() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        return mgtvMediaPlayer != null ? mgtvMediaPlayer.getReadDataSourceType() : this.mReadDataSourceTypeConfig;
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
        MgtvRenderView mgtvRenderView = this.mRenderView;
        if (mgtvRenderView != null && mgtvRenderView.getView() != null) {
            size2.width = this.mRenderView.getView().getWidth();
            size2.height = this.mRenderView.getView().getHeight();
        }
        return size2;
    }

    @Override
    public ReportParams getReportParams() {
        return this.mReportParams;
    }

    @Override
    public float getRightVolume() {
        return this.mRightVolume;
    }

    @Override
    @Nullable
    public SubtitleSource getSubtitleSource() {
        return this.mSubtitleSource;
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

    @Override
    public int getWanosAudioEffectChoice() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getWanosAudioEffectChoice();
        }
        return 0;
    }

    public void initListener(MgtvMediaPlayer mgtvMediaPlayer) {
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.clearVideoPTSListener();
            Iterator<MgtvPlayerListener.OnVideoPTSListener> it = this.ptsListeners.iterator();
            while (it.hasNext()) {
                mgtvMediaPlayer.addVideoPTSListener(it.next());
            }
            mgtvMediaPlayer.setSubtitleCallback(this.mSubtitleCallback);
            mgtvMediaPlayer.setOnFrameListener(this.mFrameListener);
            mgtvMediaPlayer.setOnAVPlayListener(this.mAVPlayListener);
            mgtvMediaPlayer.setOnSwitchSmoothSourceListener(this.mSwitchSmoothSourceListener);
            mgtvMediaPlayer.setOnInfoStringListener(this.mInfoStringListener);
            mgtvMediaPlayer.setOnPlayerEventListener(this.mPlayerEventListener);
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

    @Override
    public boolean isWanosAudioEffectValid() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.isWanosAudioEffectValid();
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

    public void removeDecorateLayout() {
        FrameLayout frameLayout = this.mDecorateLayout;
        if (frameLayout == null || !ViewUtil.isViewExsit(this, frameLayout)) {
            return;
        }
        removeView(this.mDecorateLayout);
    }

    @Override
    public void removeSubtitleSource() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.removeSubtitleSources();
        }
        SubtitleSource subtitleSource = this.mSubtitleSource;
        if (subtitleSource != null) {
            subtitleSource.release();
            this.mSubtitleSource = null;
        }
    }

    public void removeSubtitleView() {
        SubtitleView subtitleView;
        FrameLayout frameLayout = this.mDecorateLayout;
        if (frameLayout == null || (subtitleView = this.mSubtitleView) == null || !ViewUtil.isViewExsit(frameLayout, subtitleView)) {
            return;
        }
        this.mDecorateLayout.removeView(this.mSubtitleView);
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
            this.mDrmInfoList = null;
        }
    }

    public void resetDataBefore(ReleaseReason releaseReason) {
        SubtitleView subtitleView = this.mSubtitleView;
        if (subtitleView != null) {
            subtitleView.clear();
        }
        if (releaseReason == ReleaseReason.OUT) {
            this.mFileStartTimeFloatS = -1.0f;
            this.mSmoothModeOpen = false;
            removeSubtitleSource();
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
        MgtvRenderView mgtvRenderView = this.mRenderView;
        if (mgtvRenderView != null) {
            mgtvRenderView.setAntiShake(z);
        }
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
    public void setBackPlayStartEnable(boolean z) {
        this.backPlayStartEnable = z;
    }

    @Override
    public void setBackground(boolean z) {
        this.isBackground = z;
        DebugLog.i(getLogTag(), "setBackground " + z + ",threadId:" + Thread.currentThread().getId());
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setBackground(z);
            if (z || !this.mMediaPlayer.isLoadDataPaused()) {
                return;
            }
            this.mMediaPlayer.resumeLoadData();
            DebugLog.i(getLogTag(), "setBackPlayEnable:resumeLoadData");
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
        if (this.mRenderView == null || !isRendered()) {
            return;
        }
        this.mRenderView.setDisplayFloatRect(this.mDisplayFloatRect);
    }

    @Override
    public void setDnsFamilyType(int i) {
        this.mDnsFamilyType = i;
    }

    @Override
    public void setDrmInfoList(List<MgtvDrmParams.DrmInfo> list) {
        this.mDrmInfoList = list;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setDrmInfoList(list);
        }
    }

    @Override
    @Deprecated
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
    public void setEnableWanosAudioEffect(boolean z) {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setEnableWanosAudioEffect(z);
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
        DebugLog.i(getLogTag(), "setLastMediaMode:" + i);
        this.mLastMediaMode = i;
    }

    @Override
    public boolean setLoopABPlay(boolean z, ABRegion aBRegion) {
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
    public void setNETIsBroken(boolean z) {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setNETIsBroken(z);
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
            int i = netPlayConfig.is_soft;
            if (i >= 0) {
                setPlayerHardwareMode(i != 1);
            }
            int i2 = netPlayConfig.accurate_seek;
            if (i2 >= 0) {
                setAccurateSeekEnable(i2 == 1);
            }
            int i3 = netPlayConfig.ts_not_skip;
            if (i3 >= 0) {
                configTsNotSkip(i3 == 1);
            }
            int i4 = netPlayConfig.load_retry_time;
            if (i4 >= 0) {
                configLoadMaxRetryTime(i4);
            }
            int i5 = netPlayConfig.weak_net_speed;
            if (i5 >= 0) {
                configWeakNetSpeed(i5);
            }
            int i6 = netPlayConfig.open_timeout * 1000;
            int i7 = netPlayConfig.rw_timeout * 1000;
            int i8 = netPlayConfig.buffer_timeout * 1000;
            if (i6 > 0) {
                setConnectTimeOut(i6);
            }
            if (i7 > 0) {
                setReciveDataTimeOut(i7);
            }
            if (i8 > 0) {
                setBufferTimeout(i8);
            }
            int i9 = netPlayConfig.datasource_async;
            if (i9 >= 0) {
                openImgoDSModule(i9 == 1);
            }
            if (netPlayConfig.getAddrinfo_type() != null) {
                setNetAddrinfo(netPlayConfig.getAddrinfo_type(), netPlayConfig.getAddrinfo_timeout(), false);
            }
            int i10 = netPlayConfig.dns_family_type;
            if (i10 == 0 || i10 == 1) {
                setDnsFamilyType(i10 == 0 ? 1 : 0);
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
    public void setOnEventInfoListener(IVideoView.OnEventInfoListener onEventInfoListener) {
        this.mOnEventInfoListener = onEventInfoListener;
    }

    @Override
    public void setOnFrameListener(IVideoView.OnFrameListener onFrameListener) {
        this.mOnFrameListener = onFrameListener;
    }

    @Override
    public void setOnInfoStringListener(IVideoView.OnInfoStringListener onInfoStringListener) {
        this.mOnInfoStringListener = onInfoStringListener;
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
    public void setReadDataSourceType(int i) {
        this.mReadDataSourceTypeConfig = i;
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
    public void setSubtitleCallback(ISubtitle.SubtitleCallback subtitleCallback) {
        this.mOnSubtitleCallback = subtitleCallback;
    }

    @Override
    public void setSubtitleConfig(SubtitleConfig subtitleConfig) {
        SubtitleView subtitleView = this.mSubtitleView;
        if (subtitleView != null) {
            subtitleView.setSubtitleConfig(subtitleConfig);
        }
    }

    @Override
    public void setSubtitleSource(SubtitleSource subtitleSource) {
        if (!this.mIsSubtitleEnable) {
            this.mSubtitleSource.getErrorResult().setCode(-2);
            this.mSubtitleCallback.onError(this.mSubtitleSource);
            return;
        }
        removeSubtitleSource();
        this.mSubtitleSource = subtitleSource;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer == null || subtitleSource == null) {
            return;
        }
        try {
            mgtvMediaPlayer.addSubtitleSource(this.mSubtitleView, subtitleSource);
        } catch (Exception unused) {
            this.mSubtitleCallback.onError(this.mSubtitleSource);
        }
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
    public void setVideoDataSource(MgtvPlayerDataSource mgtvPlayerDataSource) {
        this.mDataSource = mgtvPlayerDataSource;
        setReadDataSourceType(3);
        setVideoPath(this.mDataSource.getPath());
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
        DebugLog.i(getLogTag(), "setVideoIntroduction:" + str);
        this.mVideoIntroduction = str;
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null) {
            reportParams.setSvds(str);
        }
    }

    @Override
    public void setVolume(float f, float f2) {
        this.mLeftVolume = f;
        this.mRightVolume = f2;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setVolume(f, f2);
        }
    }

    @Override
    public void setWanosAudioEffectChoice(int i) {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setWanosAudioEffectChoice(i);
        }
    }

    @Override
    public int setWanosAudioEffectConfig(byte[] bArr) {
        this.mAudioEffectConfig = bArr;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.setWanosAudioEffectConfig(bArr);
        }
        return -999;
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
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.supportImgoAIQE(imgoAIQE);
        }
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

    public void toggleRenders(int i) {
        this.mRenderViewType = i;
    }

    public MgtvAbstractVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMediaPlayer = null;
        this.mRenderViewType = 0;
        this.mPrepared4StartMode = MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mFileStartTimeFloatS = -1.0f;
        this.mDnsFamilyType = 1;
        this.mKeyInfoSetEnable = true;
        this.mKeyInfoSetLayer = 0;
        this.mCurrentUri = null;
        this.mOnProvisionSuccessListener = new IDrmSession.OnProvisionSuccessListener() {
            @Override
            public void onSuccess(IDrmSession iDrmSession) {
                MgtvAbstractVideoView.this.mIsDrmPrepared = true;
                if (iDrmSession != null) {
                    iDrmSession.setDrmLicensePrepared();
                }
            }
        };
        this.mSurfaceHolder = null;
        this.mForceReuseTexture = false;
        this.mEnableTexture = true;
        this.mAMCKeyFrameBackMode = -1;
        this.mEnableMediacodecSW = false;
        this.mEnableImgoVsr = false;
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
        this.mVideoIntroduction = "";
        this.mLiveLowLatencyEnable = false;
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
        this.mReadDataSourceTypeConfig = 0;
        this.mAVPlayListener = new MgtvPlayerListener.OnAVPlayListener() {
            @Override
            public void onAVPauseOrPlay(boolean z) {
                IVideoView.OnAVPlayListener onAVPlayListener = MgtvAbstractVideoView.this.mOnAVPlayListener;
                if (onAVPlayListener != null) {
                    onAVPlayListener.onAVPauseOrPlay(z);
                }
            }
        };
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                IVideoView.OnFrameListener onFrameListener = MgtvAbstractVideoView.this.mOnFrameListener;
                if (onFrameListener != null) {
                    onFrameListener.onVFrameClockCome(frameClock);
                }
            }
        };
        this.mSwitchSmoothSourceListener = new MgtvPlayerListener.OnSwitchSmoothSourceListener() {
            @Override
            public void onSwitchSmoothSourceError(SmoothMediaSource smoothMediaSource, int i, int i2) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceError(smoothMediaSource, i, i2);
                }
            }

            @Override
            public void onSwitchSmoothSourceFail(SmoothMediaSource smoothMediaSource, int i, int i2) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceFail(smoothMediaSource, i, i2);
                }
            }

            @Override
            public void onSwitchSmoothSourceInfo(SmoothMediaSource smoothMediaSource, int i) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource, i);
                }
            }

            @Override
            public void onSwitchSmoothSourceSuccess(SmoothMediaSource smoothMediaSource) {
                MgtvAbstractVideoView mgtvAbstractVideoView;
                MgtvAbstractVideoView mgtvAbstractVideoView2;
                if (smoothMediaSource != null) {
                    Uri uri = null;
                    if (StringUtil.isEmpty(smoothMediaSource.getUrl())) {
                        MgtvAbstractVideoView.this.mCurrentUri = null;
                    } else {
                        MgtvAbstractVideoView.this.mCurrentUri = Uri.parse(smoothMediaSource.getUrl().trim());
                    }
                    if (StringUtil.isEmpty(smoothMediaSource.getProxyUrl())) {
                        mgtvAbstractVideoView2 = MgtvAbstractVideoView.this;
                    } else {
                        mgtvAbstractVideoView2 = MgtvAbstractVideoView.this;
                        uri = Uri.parse(smoothMediaSource.getProxyUrl().trim());
                    }
                    mgtvAbstractVideoView2.mProxyUri = uri;
                    MgtvAbstractVideoView.this.mMainP2pTask = smoothMediaSource.getP2pTask();
                }
                DebugLog.i(MgtvAbstractVideoView.this.getLogTag(), "onSwitchSmoothSourceSuccess then change media mode");
                int i = 1;
                if (smoothMediaSource.getSwitchMod() == 1) {
                    mgtvAbstractVideoView = MgtvAbstractVideoView.this;
                } else {
                    mgtvAbstractVideoView = MgtvAbstractVideoView.this;
                    i = 0;
                }
                mgtvAbstractVideoView.setLastMediaMode(i);
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSource);
                }
            }

            @Override
            public boolean onSwitchSmoothSourceWillUpdate(SmoothMediaSource smoothMediaSource) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    return onSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSource);
                }
                return false;
            }
        };
        this.mInfoStringListener = new MgtvPlayerListener.OnInfoStringListener() {
            /* JADX WARN: Code duplicated, block: B:18:0x007d  */
            /* JADX WARN: Code duplicated, block: B:21:? A[RETURN, SYNTHETIC] */
            @Override
            public boolean onInfo(int i, String str) {
                String logTag;
                StringBuilder sb;
                String str2;
                IVideoView.OnInfoStringListener onInfoStringListener;
                if (i != 2860) {
                    if (i != 2870) {
                        logTag = MgtvAbstractVideoView.this.getLogTag();
                        sb = new StringBuilder();
                        sb.append("OnInfoStringListener what: ");
                        sb.append(i);
                        str2 = ", extra is ";
                    } else {
                        DebugLog.i(MgtvAbstractVideoView.this.getLogTag(), "MEDIA_INFO_VIDEO_STREAM_CODEC_INFO: " + str);
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvAbstractVideoView.this.mMediaPlayer;
                        if (mgtvMediaPlayer != null && mgtvMediaPlayer.isHDR()) {
                            MgtvAbstractVideoView mgtvAbstractVideoView = MgtvAbstractVideoView.this;
                            if (mgtvAbstractVideoView.mRenderViewType != 0) {
                                DebugLog.i(mgtvAbstractVideoView.getLogTag(), "MEDIA_INFO_VIDEO_STREAM_CODEC_INFO check the source is HDR. try to change to surfaceview");
                                ThreadUtil.postOnUiThread(new Runnable() {
                                    @Override
                                    public void run() {
                                        MgtvAbstractVideoView.this.toggleRenders(0);
                                    }
                                });
                            }
                        }
                    }
                    onInfoStringListener = MgtvAbstractVideoView.this.mOnInfoStringListener;
                    if (onInfoStringListener != null) {
                        return false;
                    }
                    onInfoStringListener.onInfo(i, str);
                    return false;
                }
                logTag = MgtvAbstractVideoView.this.getLogTag();
                sb = new StringBuilder();
                str2 = "MEDIA_INFO_SEI_SYS_TIMESTAMP: ";
                sb.append(str2);
                sb.append(str);
                DebugLog.i(logTag, sb.toString());
                onInfoStringListener = MgtvAbstractVideoView.this.mOnInfoStringListener;
                if (onInfoStringListener != null) {
                    return false;
                }
                onInfoStringListener.onInfo(i, str);
                return false;
            }
        };
        this.mSubtitleCallback = new ISubtitle.SubtitleCallback() {
            @Override
            public void onError(SubtitleSource subtitleSource) {
                if (MgtvAbstractVideoView.this.mOnSubtitleCallback != null) {
                    if (subtitleSource.getErrorResult().code == 0) {
                        subtitleSource.getErrorResult().code = -1;
                    }
                    MgtvAbstractVideoView.this.mOnSubtitleCallback.onError(subtitleSource);
                }
            }

            @Override
            public void onSuccess(SubtitleSource subtitleSource) {
                ISubtitle.SubtitleCallback subtitleCallback = MgtvAbstractVideoView.this.mOnSubtitleCallback;
                if (subtitleCallback != null) {
                    subtitleCallback.onSuccess(subtitleSource);
                }
            }
        };
        this.mPlayerEventListener = new MgtvPlayerListener.OnPlayerEventListener() {
            @Override
            public void onInfo(int i, int i2) {
                DebugLog.d(MgtvAbstractVideoView.this.getLogTag(), "OnPlayerEventListener what:" + i + "-extra:" + i2);
                IVideoView.OnEventInfoListener onEventInfoListener = MgtvAbstractVideoView.this.mOnEventInfoListener;
                if (onEventInfoListener != null) {
                    onEventInfoListener.onInfo(i, i2);
                }
            }
        };
        this.mInitRenderViewType = 0;
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.isBackground = false;
        this.mSurfaceKeyGen = new AtomicInteger(10);
        this.isRequestAudioFocus = true;
        this.backPlayStartEnable = false;
        init(context);
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

    public MgtvAbstractVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMediaPlayer = null;
        this.mRenderViewType = 0;
        this.mPrepared4StartMode = MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mFileStartTimeFloatS = -1.0f;
        this.mDnsFamilyType = 1;
        this.mKeyInfoSetEnable = true;
        this.mKeyInfoSetLayer = 0;
        this.mCurrentUri = null;
        this.mOnProvisionSuccessListener = new IDrmSession.OnProvisionSuccessListener() {
            @Override
            public void onSuccess(IDrmSession iDrmSession) {
                MgtvAbstractVideoView.this.mIsDrmPrepared = true;
                if (iDrmSession != null) {
                    iDrmSession.setDrmLicensePrepared();
                }
            }
        };
        this.mSurfaceHolder = null;
        this.mForceReuseTexture = false;
        this.mEnableTexture = true;
        this.mAMCKeyFrameBackMode = -1;
        this.mEnableMediacodecSW = false;
        this.mEnableImgoVsr = false;
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
        this.mVideoIntroduction = "";
        this.mLiveLowLatencyEnable = false;
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
        this.mReadDataSourceTypeConfig = 0;
        this.mAVPlayListener = new MgtvPlayerListener.OnAVPlayListener() {
            @Override
            public void onAVPauseOrPlay(boolean z) {
                IVideoView.OnAVPlayListener onAVPlayListener = MgtvAbstractVideoView.this.mOnAVPlayListener;
                if (onAVPlayListener != null) {
                    onAVPlayListener.onAVPauseOrPlay(z);
                }
            }
        };
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                IVideoView.OnFrameListener onFrameListener = MgtvAbstractVideoView.this.mOnFrameListener;
                if (onFrameListener != null) {
                    onFrameListener.onVFrameClockCome(frameClock);
                }
            }
        };
        this.mSwitchSmoothSourceListener = new MgtvPlayerListener.OnSwitchSmoothSourceListener() {
            @Override
            public void onSwitchSmoothSourceError(SmoothMediaSource smoothMediaSource, int i2, int i3) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceError(smoothMediaSource, i2, i3);
                }
            }

            @Override
            public void onSwitchSmoothSourceFail(SmoothMediaSource smoothMediaSource, int i2, int i3) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceFail(smoothMediaSource, i2, i3);
                }
            }

            @Override
            public void onSwitchSmoothSourceInfo(SmoothMediaSource smoothMediaSource, int i2) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource, i2);
                }
            }

            @Override
            public void onSwitchSmoothSourceSuccess(SmoothMediaSource smoothMediaSource) {
                MgtvAbstractVideoView mgtvAbstractVideoView;
                MgtvAbstractVideoView mgtvAbstractVideoView2;
                if (smoothMediaSource != null) {
                    Uri uri = null;
                    if (StringUtil.isEmpty(smoothMediaSource.getUrl())) {
                        MgtvAbstractVideoView.this.mCurrentUri = null;
                    } else {
                        MgtvAbstractVideoView.this.mCurrentUri = Uri.parse(smoothMediaSource.getUrl().trim());
                    }
                    if (StringUtil.isEmpty(smoothMediaSource.getProxyUrl())) {
                        mgtvAbstractVideoView2 = MgtvAbstractVideoView.this;
                    } else {
                        mgtvAbstractVideoView2 = MgtvAbstractVideoView.this;
                        uri = Uri.parse(smoothMediaSource.getProxyUrl().trim());
                    }
                    mgtvAbstractVideoView2.mProxyUri = uri;
                    MgtvAbstractVideoView.this.mMainP2pTask = smoothMediaSource.getP2pTask();
                }
                DebugLog.i(MgtvAbstractVideoView.this.getLogTag(), "onSwitchSmoothSourceSuccess then change media mode");
                int i2 = 1;
                if (smoothMediaSource.getSwitchMod() == 1) {
                    mgtvAbstractVideoView = MgtvAbstractVideoView.this;
                } else {
                    mgtvAbstractVideoView = MgtvAbstractVideoView.this;
                    i2 = 0;
                }
                mgtvAbstractVideoView.setLastMediaMode(i2);
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSource);
                }
            }

            @Override
            public boolean onSwitchSmoothSourceWillUpdate(SmoothMediaSource smoothMediaSource) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    return onSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSource);
                }
                return false;
            }
        };
        this.mInfoStringListener = new MgtvPlayerListener.OnInfoStringListener() {
            /* JADX WARN: Code duplicated, block: B:18:0x007d  */
            /* JADX WARN: Code duplicated, block: B:21:? A[RETURN, SYNTHETIC] */
            @Override
            public boolean onInfo(int i2, String str) {
                String logTag;
                StringBuilder sb;
                String str2;
                IVideoView.OnInfoStringListener onInfoStringListener;
                if (i2 != 2860) {
                    if (i2 != 2870) {
                        logTag = MgtvAbstractVideoView.this.getLogTag();
                        sb = new StringBuilder();
                        sb.append("OnInfoStringListener what: ");
                        sb.append(i2);
                        str2 = ", extra is ";
                    } else {
                        DebugLog.i(MgtvAbstractVideoView.this.getLogTag(), "MEDIA_INFO_VIDEO_STREAM_CODEC_INFO: " + str);
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvAbstractVideoView.this.mMediaPlayer;
                        if (mgtvMediaPlayer != null && mgtvMediaPlayer.isHDR()) {
                            MgtvAbstractVideoView mgtvAbstractVideoView = MgtvAbstractVideoView.this;
                            if (mgtvAbstractVideoView.mRenderViewType != 0) {
                                DebugLog.i(mgtvAbstractVideoView.getLogTag(), "MEDIA_INFO_VIDEO_STREAM_CODEC_INFO check the source is HDR. try to change to surfaceview");
                                ThreadUtil.postOnUiThread(new Runnable() {
                                    @Override
                                    public void run() {
                                        MgtvAbstractVideoView.this.toggleRenders(0);
                                    }
                                });
                            }
                        }
                    }
                    onInfoStringListener = MgtvAbstractVideoView.this.mOnInfoStringListener;
                    if (onInfoStringListener != null) {
                        return false;
                    }
                    onInfoStringListener.onInfo(i2, str);
                    return false;
                }
                logTag = MgtvAbstractVideoView.this.getLogTag();
                sb = new StringBuilder();
                str2 = "MEDIA_INFO_SEI_SYS_TIMESTAMP: ";
                sb.append(str2);
                sb.append(str);
                DebugLog.i(logTag, sb.toString());
                onInfoStringListener = MgtvAbstractVideoView.this.mOnInfoStringListener;
                if (onInfoStringListener != null) {
                    return false;
                }
                onInfoStringListener.onInfo(i2, str);
                return false;
            }
        };
        this.mSubtitleCallback = new ISubtitle.SubtitleCallback() {
            @Override
            public void onError(SubtitleSource subtitleSource) {
                if (MgtvAbstractVideoView.this.mOnSubtitleCallback != null) {
                    if (subtitleSource.getErrorResult().code == 0) {
                        subtitleSource.getErrorResult().code = -1;
                    }
                    MgtvAbstractVideoView.this.mOnSubtitleCallback.onError(subtitleSource);
                }
            }

            @Override
            public void onSuccess(SubtitleSource subtitleSource) {
                ISubtitle.SubtitleCallback subtitleCallback = MgtvAbstractVideoView.this.mOnSubtitleCallback;
                if (subtitleCallback != null) {
                    subtitleCallback.onSuccess(subtitleSource);
                }
            }
        };
        this.mPlayerEventListener = new MgtvPlayerListener.OnPlayerEventListener() {
            @Override
            public void onInfo(int i2, int i3) {
                DebugLog.d(MgtvAbstractVideoView.this.getLogTag(), "OnPlayerEventListener what:" + i2 + "-extra:" + i3);
                IVideoView.OnEventInfoListener onEventInfoListener = MgtvAbstractVideoView.this.mOnEventInfoListener;
                if (onEventInfoListener != null) {
                    onEventInfoListener.onInfo(i2, i3);
                }
            }
        };
        this.mInitRenderViewType = 0;
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.isBackground = false;
        this.mSurfaceKeyGen = new AtomicInteger(10);
        this.isRequestAudioFocus = true;
        this.backPlayStartEnable = false;
        init(context);
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

    public MgtvAbstractVideoView(Context context, IVideoView.Configuration configuration) {
        super(context);
        this.mMediaPlayer = null;
        this.mRenderViewType = 0;
        this.mPrepared4StartMode = MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mFileStartTimeFloatS = -1.0f;
        this.mDnsFamilyType = 1;
        this.mKeyInfoSetEnable = true;
        this.mKeyInfoSetLayer = 0;
        this.mCurrentUri = null;
        this.mOnProvisionSuccessListener = new IDrmSession.OnProvisionSuccessListener() {
            @Override
            public void onSuccess(IDrmSession iDrmSession) {
                MgtvAbstractVideoView.this.mIsDrmPrepared = true;
                if (iDrmSession != null) {
                    iDrmSession.setDrmLicensePrepared();
                }
            }
        };
        this.mSurfaceHolder = null;
        this.mForceReuseTexture = false;
        this.mEnableTexture = true;
        this.mAMCKeyFrameBackMode = -1;
        this.mEnableMediacodecSW = false;
        this.mEnableImgoVsr = false;
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
        this.mVideoIntroduction = "";
        this.mLiveLowLatencyEnable = false;
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
        this.mReadDataSourceTypeConfig = 0;
        this.mAVPlayListener = new MgtvPlayerListener.OnAVPlayListener() {
            @Override
            public void onAVPauseOrPlay(boolean z) {
                IVideoView.OnAVPlayListener onAVPlayListener = MgtvAbstractVideoView.this.mOnAVPlayListener;
                if (onAVPlayListener != null) {
                    onAVPlayListener.onAVPauseOrPlay(z);
                }
            }
        };
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                IVideoView.OnFrameListener onFrameListener = MgtvAbstractVideoView.this.mOnFrameListener;
                if (onFrameListener != null) {
                    onFrameListener.onVFrameClockCome(frameClock);
                }
            }
        };
        this.mSwitchSmoothSourceListener = new MgtvPlayerListener.OnSwitchSmoothSourceListener() {
            @Override
            public void onSwitchSmoothSourceError(SmoothMediaSource smoothMediaSource, int i2, int i3) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceError(smoothMediaSource, i2, i3);
                }
            }

            @Override
            public void onSwitchSmoothSourceFail(SmoothMediaSource smoothMediaSource, int i2, int i3) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceFail(smoothMediaSource, i2, i3);
                }
            }

            @Override
            public void onSwitchSmoothSourceInfo(SmoothMediaSource smoothMediaSource, int i2) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource, i2);
                }
            }

            @Override
            public void onSwitchSmoothSourceSuccess(SmoothMediaSource smoothMediaSource) {
                MgtvAbstractVideoView mgtvAbstractVideoView;
                MgtvAbstractVideoView mgtvAbstractVideoView2;
                if (smoothMediaSource != null) {
                    Uri uri = null;
                    if (StringUtil.isEmpty(smoothMediaSource.getUrl())) {
                        MgtvAbstractVideoView.this.mCurrentUri = null;
                    } else {
                        MgtvAbstractVideoView.this.mCurrentUri = Uri.parse(smoothMediaSource.getUrl().trim());
                    }
                    if (StringUtil.isEmpty(smoothMediaSource.getProxyUrl())) {
                        mgtvAbstractVideoView2 = MgtvAbstractVideoView.this;
                    } else {
                        mgtvAbstractVideoView2 = MgtvAbstractVideoView.this;
                        uri = Uri.parse(smoothMediaSource.getProxyUrl().trim());
                    }
                    mgtvAbstractVideoView2.mProxyUri = uri;
                    MgtvAbstractVideoView.this.mMainP2pTask = smoothMediaSource.getP2pTask();
                }
                DebugLog.i(MgtvAbstractVideoView.this.getLogTag(), "onSwitchSmoothSourceSuccess then change media mode");
                int i2 = 1;
                if (smoothMediaSource.getSwitchMod() == 1) {
                    mgtvAbstractVideoView = MgtvAbstractVideoView.this;
                } else {
                    mgtvAbstractVideoView = MgtvAbstractVideoView.this;
                    i2 = 0;
                }
                mgtvAbstractVideoView.setLastMediaMode(i2);
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    onSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSource);
                }
            }

            @Override
            public boolean onSwitchSmoothSourceWillUpdate(SmoothMediaSource smoothMediaSource) {
                IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = MgtvAbstractVideoView.this.mOnSwitchSmoothSourceListener;
                if (onSwitchSmoothSourceListener != null) {
                    return onSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSource);
                }
                return false;
            }
        };
        this.mInfoStringListener = new MgtvPlayerListener.OnInfoStringListener() {
            /* JADX WARN: Code duplicated, block: B:18:0x007d  */
            /* JADX WARN: Code duplicated, block: B:21:? A[RETURN, SYNTHETIC] */
            @Override
            public boolean onInfo(int i2, String str) {
                String logTag;
                StringBuilder sb;
                String str2;
                IVideoView.OnInfoStringListener onInfoStringListener;
                if (i2 != 2860) {
                    if (i2 != 2870) {
                        logTag = MgtvAbstractVideoView.this.getLogTag();
                        sb = new StringBuilder();
                        sb.append("OnInfoStringListener what: ");
                        sb.append(i2);
                        str2 = ", extra is ";
                    } else {
                        DebugLog.i(MgtvAbstractVideoView.this.getLogTag(), "MEDIA_INFO_VIDEO_STREAM_CODEC_INFO: " + str);
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvAbstractVideoView.this.mMediaPlayer;
                        if (mgtvMediaPlayer != null && mgtvMediaPlayer.isHDR()) {
                            MgtvAbstractVideoView mgtvAbstractVideoView = MgtvAbstractVideoView.this;
                            if (mgtvAbstractVideoView.mRenderViewType != 0) {
                                DebugLog.i(mgtvAbstractVideoView.getLogTag(), "MEDIA_INFO_VIDEO_STREAM_CODEC_INFO check the source is HDR. try to change to surfaceview");
                                ThreadUtil.postOnUiThread(new Runnable() {
                                    @Override
                                    public void run() {
                                        MgtvAbstractVideoView.this.toggleRenders(0);
                                    }
                                });
                            }
                        }
                    }
                    onInfoStringListener = MgtvAbstractVideoView.this.mOnInfoStringListener;
                    if (onInfoStringListener != null) {
                        return false;
                    }
                    onInfoStringListener.onInfo(i2, str);
                    return false;
                }
                logTag = MgtvAbstractVideoView.this.getLogTag();
                sb = new StringBuilder();
                str2 = "MEDIA_INFO_SEI_SYS_TIMESTAMP: ";
                sb.append(str2);
                sb.append(str);
                DebugLog.i(logTag, sb.toString());
                onInfoStringListener = MgtvAbstractVideoView.this.mOnInfoStringListener;
                if (onInfoStringListener != null) {
                    return false;
                }
                onInfoStringListener.onInfo(i2, str);
                return false;
            }
        };
        this.mSubtitleCallback = new ISubtitle.SubtitleCallback() {
            @Override
            public void onError(SubtitleSource subtitleSource) {
                if (MgtvAbstractVideoView.this.mOnSubtitleCallback != null) {
                    if (subtitleSource.getErrorResult().code == 0) {
                        subtitleSource.getErrorResult().code = -1;
                    }
                    MgtvAbstractVideoView.this.mOnSubtitleCallback.onError(subtitleSource);
                }
            }

            @Override
            public void onSuccess(SubtitleSource subtitleSource) {
                ISubtitle.SubtitleCallback subtitleCallback = MgtvAbstractVideoView.this.mOnSubtitleCallback;
                if (subtitleCallback != null) {
                    subtitleCallback.onSuccess(subtitleSource);
                }
            }
        };
        this.mPlayerEventListener = new MgtvPlayerListener.OnPlayerEventListener() {
            @Override
            public void onInfo(int i2, int i3) {
                DebugLog.d(MgtvAbstractVideoView.this.getLogTag(), "OnPlayerEventListener what:" + i2 + "-extra:" + i3);
                IVideoView.OnEventInfoListener onEventInfoListener = MgtvAbstractVideoView.this.mOnEventInfoListener;
                if (onEventInfoListener != null) {
                    onEventInfoListener.onInfo(i2, i3);
                }
            }
        };
        this.mInitRenderViewType = 0;
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.isBackground = false;
        this.mSurfaceKeyGen = new AtomicInteger(10);
        this.isRequestAudioFocus = true;
        this.backPlayStartEnable = false;
        init(context);
        this.mConfiguration = configuration;
        if (configuration != null) {
            this.mForceReuseTexture = configuration.forceReuseTexture;
        }
    }
}
