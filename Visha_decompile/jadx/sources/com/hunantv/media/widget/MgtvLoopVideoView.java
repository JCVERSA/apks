package com.hunantv.media.widget;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.hunantv.media.global.Constants;
import com.hunantv.media.p2p.IP2pTask;
import com.hunantv.media.player.IMgtvRenderView;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.MgtvPlayerListener;
import com.hunantv.media.player.MgtvRenderView;
import com.hunantv.media.player.a.a;
import com.hunantv.media.player.c;
import com.hunantv.media.player.d.f;
import com.hunantv.media.player.l;
import com.hunantv.media.player.loader.ImgoLibLoader;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.statistic.FlowDataStatistic;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.recoder.GifRecorder;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.utils.MemoryUtil;
import java.io.IOException;
import java.security.InvalidParameterException;
import java.text.NumberFormat;

public class MgtvLoopVideoView extends MgtvAbstractVideoView {
    private static final String LOGMSG_PLAYER_CALLBACK = "VideoViewCallBack";
    private int fromBottom;
    private int fromLeft;
    private int fromRight;
    private int fromTop;
    private boolean isStretchScreen;
    private boolean mAccurateSeekEnable;
    private MgtvMediaPlayer.AddrinfoType mAddrInfoType;
    private int mAddrInfoTypeInt;
    private int mAspectRatio;
    private int mBufferTimeoutMs;
    private MgtvPlayerListener.OnBufferingTimeoutListener mBufferingTimeoutListener;
    private MgtvPlayerListener.OnBufferingUpdateListener mBufferingUpdateListener;
    private boolean mCacheEnable;
    private String mCacheM3u8Path;
    private String[] mCacheTsPaths;
    private MgtvPlayerListener.OnCompletionListener mCompletionListener;
    private int mCurrentState;
    private int mDataCacheSizeKB;
    private boolean mEnableCoreStartPauseListen;
    private boolean mEnableLiveMode;
    private boolean mEnableMgtvMediaCodec;
    private boolean mEnableOpengl;
    private boolean mEnableTsSkipError;
    private int mEnhanceQualityType;
    private MgtvPlayerListener.OnErrorListener mErrorListener;
    private String mErrorMsg;
    private f.a mFilterCallback;
    private FlowDataStatistic mFlowDataStatistic;
    private boolean mForceDecodeMode;
    private int mFromSurfaceDestroyPlayPosition;
    boolean mFromSurfaceDestroyToPlay;
    private GifRecorder mGifRecorder;
    boolean mHasSurfaceHolderDestroy;
    private MgtvPlayerListener.OnInfoListener mInfoListener;
    private boolean mIsDataLoaderPaused;
    private boolean mIsLive;
    private boolean mIsLiveConfig;
    protected boolean mIsLoopMode;
    private boolean mIsScreenOnWhilePlaying;
    private boolean mIsSecure;
    private a.b mJavaDnsType;
    private boolean mLastFrameRecovery;
    private volatile boolean mLastSurfaceDestroy;
    private int mLiveStartIndex;
    private MgtvPlayerListener.OnLoadDataListener mLoadDataListener;
    private int mLoadMaxRetryTime;
    private boolean mLogCallBackOpen;
    private IP2pTask mMainP2pTask;
    private boolean mMgtvMediaPlayerHardwareMode;
    private boolean mNativeDnsAsyncEnable;
    boolean mNeedResetLoopPlay;
    private long mNonSurfaceHolderPVTimestamp;
    private IVideoView.OnBufferingUpdateListener mOnBufferringUpdateListener;
    private IVideoView.OnChangeSourceListener mOnChangeSourceListener;
    private IVideoView.OnCompletionListener mOnCompletionListener;
    private IVideoView.OnErrorListener mOnErrorListener;
    private IVideoView.OnInfoListener mOnInfoListener;
    private IVideoView.OnLoadDataListener mOnLoadDataListener;
    private IVideoView.OnPauseListener mOnPauseListener;
    private IVideoView.OnPreparedListener mOnPreparedListener;
    private IVideoView.OnRecordListener mOnRecordListener;
    private IVideoView.OnSeekCompleteListener mOnSeekCompleteListener;
    private IVideoView.OnStartListener mOnStartListener;
    private IVideoView.OnUpdateStatusListener mOnUpdateStatusListener;
    private IVideoView.OnVideoSizeChangedListener mOnVideoSizeChangedListener;
    private MgtvPlayerListener.OnWarningListener mOnWarningListener;
    private boolean mOpenVideoWhenSurfaceCreate;
    private MgtvPlayerListener.OnPauseListener mPauseListener;
    private float mPlaySpeed;
    private MgtvPlayerListener.OnWarningListener mPlayerWarning;
    MgtvPlayerListener.OnPreparedListener mPreparedListener;
    private boolean mRebindTexture;
    private String mRecordFilePath;
    private MgtvPlayerListener.OnRecordVideoListener mRecordVideoListener;
    private IVideoView.RenderFilter mRenderFilter;
    private int mRenderType;
    private MgtvPlayerListener.OnWarningListener mRenderWarning;
    IMgtvRenderView.IRenderCallback mSHCallback;
    private MgtvPlayerListener.OnSeekCompleteListener mSeekCompleteListener;
    private int mSeekWhenPrepared;
    MgtvPlayerListener.OnVideoSizeChangedListener mSizeChangedListener;
    private MgtvMediaPlayer.SkipLoopFilterType mSkipLoopFilterType;
    private long mStartLeaveTimestamp;
    private MgtvPlayerListener.OnStartListener mStartListener;
    int mStartPosMs;
    private int mStreamKey;
    private int mSurfaceHeight;
    private IVideoView.SurfaceHolderListener mSurfaceHolderListener;
    private int mSurfaceWidth;
    private MgtvPlayerListener.OnSwitchSourceListener mSwitchSourceListener;
    protected boolean mTargetIsLoopMode;
    private int mTargetState;
    private boolean mTsNotSkip;
    private boolean mUseSystemPlayer;
    private boolean mUserEnableCoreStartPauseListen;
    private int mVideoHeight;
    private int mVideoRotationDegree;
    private int mVideoWidth;
    private int mWeakBufferTimeoutMs;
    private int mWeakNetSpeed;
    private DisplayMetrics metrics;
    private int originalVideoHeight;
    private int originalVideoWidth;
    private boolean shouldGetVideoParams;

    public static class AnonymousClass18 {
        static final int[] $SwitchMap$com$hunantv$media$widget$IVideoView$RenderFilter;

        static {
            int[] iArr = new int[IVideoView.RenderFilter.values().length];
            $SwitchMap$com$hunantv$media$widget$IVideoView$RenderFilter = iArr;
            try {
                iArr[IVideoView.RenderFilter.UNSHARP_EDGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$hunantv$media$widget$IVideoView$RenderFilter[IVideoView.RenderFilter.UNSHARP_EDGE_COMPARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$hunantv$media$widget$IVideoView$RenderFilter[IVideoView.RenderFilter.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum ResetResult {
        NONE,
        RESET_OK,
        RESET_ERR
    }

    public MgtvLoopVideoView(Context context) {
        super(context);
        this.mLastSurfaceDestroy = true;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMgtvMediaPlayerHardwareMode = false;
        this.mForceDecodeMode = false;
        this.mFromSurfaceDestroyToPlay = false;
        this.mFromSurfaceDestroyPlayPosition = 0;
        this.mErrorMsg = "";
        this.mHasSurfaceHolderDestroy = false;
        this.mLogCallBackOpen = true;
        this.mStreamKey = -1;
        this.mIsLive = false;
        this.mIsDataLoaderPaused = false;
        this.mUseSystemPlayer = false;
        this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrInfoTypeInt = 0;
        this.mJavaDnsType = a.b.NORMAL;
        this.mNativeDnsAsyncEnable = true;
        this.mEnableMgtvMediaCodec = false;
        this.mWeakNetSpeed = 0;
        this.mWeakBufferTimeoutMs = 0;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 0;
        this.mUserEnableCoreStartPauseListen = false;
        this.mEnableCoreStartPauseListen = false;
        this.mIsScreenOnWhilePlaying = true;
        this.mPlaySpeed = 1.0f;
        this.mLiveStartIndex = 0;
        this.mIsSecure = false;
        this.mAspectRatio = -1;
        this.mRenderFilter = IVideoView.RenderFilter.NORMAL;
        this.mIsLiveConfig = false;
        this.mEnableLiveMode = false;
        this.mTargetIsLoopMode = false;
        this.mIsLoopMode = false;
        this.mStartPosMs = 0;
        this.mNeedResetLoopPlay = false;
        this.mFlowDataStatistic = new FlowDataStatistic();
        this.mSkipLoopFilterType = MgtvMediaPlayer.SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mSHCallback = new IMgtvRenderView.IRenderCallback() {
            /* JADX WARN: Code duplicated, block: B:12:0x0026  */
            /* JADX WARN: Code duplicated, block: B:15:0x002d  */
            /* JADX WARN: Code duplicated, block: B:17:0x003a  */
            /* JADX WARN: Code duplicated, block: B:18:0x003e  */
            /* JADX WARN: Code duplicated, block: B:20:0x0046  */
            /* JADX WARN: Code duplicated, block: B:31:0x0081  */
            /* JADX WARN: Code duplicated, block: B:33:0x0087  */
            private void bindHolder(IMgtvRenderView.ISurfaceHolder iSurfaceHolder) throws Throwable {
                MgtvLoopVideoView mgtvLoopVideoView;
                MgtvLoopVideoView mgtvLoopVideoView2;
                MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                if (mgtvLoopVideoView3.mMediaPlayer == null) {
                    mgtvLoopVideoView3.openVideo();
                    return;
                }
                if (mgtvLoopVideoView3.mHasSurfaceHolderDestroy && mgtvLoopVideoView3.mRebindTexture) {
                    MgtvLoopVideoView mgtvLoopVideoView4 = MgtvLoopVideoView.this;
                    if (mgtvLoopVideoView4.mCurrentUri != null) {
                        mgtvLoopVideoView4.setStartPosMs(mgtvLoopVideoView4.mMediaPlayer.getCurrentPosition());
                    } else if (!needOpenVideo()) {
                        MgtvLoopVideoView.this.mMediaPlayer.setSurfaceHolder(iSurfaceHolder);
                        mgtvLoopVideoView = MgtvLoopVideoView.this;
                        if (mgtvLoopVideoView.mNeedResetLoopPlay) {
                            mgtvLoopVideoView.resetVideoPath();
                        } else {
                            if (mgtvLoopVideoView.mMediaPlayer.isLoadDataPaused()) {
                                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "bindHolder resumeLoadData");
                                MgtvLoopVideoView.this.mMediaPlayer.resumeLoadData();
                            }
                            mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                            if (mgtvLoopVideoView2.mFromSurfaceDestroyToPlay) {
                                if (mgtvLoopVideoView2.mLastFrameRecovery) {
                                    MgtvLoopVideoView.this.mMediaPlayer.setPlaybackStep();
                                }
                            } else if (mgtvLoopVideoView2.mLastFrameRecovery) {
                                MgtvLoopVideoView.this.mMediaPlayer.setPlaybackStep();
                            }
                        }
                        MgtvLoopVideoView mgtvLoopVideoView5 = MgtvLoopVideoView.this;
                        mgtvLoopVideoView5.mSizeChangedListener.onVideoSizeChanged(mgtvLoopVideoView5.mMediaPlayer.getVideoWidth(), MgtvLoopVideoView.this.mMediaPlayer.getVideoHeight());
                        return;
                    }
                } else if (!needOpenVideo()) {
                    MgtvLoopVideoView.this.mMediaPlayer.setSurfaceHolder(iSurfaceHolder);
                    mgtvLoopVideoView = MgtvLoopVideoView.this;
                    if (mgtvLoopVideoView.mNeedResetLoopPlay) {
                        mgtvLoopVideoView.resetVideoPath();
                    } else {
                        if (mgtvLoopVideoView.mMediaPlayer.isLoadDataPaused()) {
                            DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "bindHolder resumeLoadData");
                            MgtvLoopVideoView.this.mMediaPlayer.resumeLoadData();
                        }
                        mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                        if (mgtvLoopVideoView2.mFromSurfaceDestroyToPlay || mgtvLoopVideoView2.mCurrentUri == null) {
                            if (mgtvLoopVideoView2.mLastFrameRecovery && (!MgtvLoopVideoView.this.isHardware() || MgtvLoopVideoView.this.mLastSurfaceDestroy)) {
                                MgtvLoopVideoView.this.mMediaPlayer.setPlaybackStep();
                            }
                        } else if (mgtvLoopVideoView2.mMgtvMediaPlayerHardwareMode) {
                            MgtvLoopVideoView mgtvLoopVideoView6 = MgtvLoopVideoView.this;
                            mgtvLoopVideoView6.mFromSurfaceDestroyToPlay = false;
                            if (!mgtvLoopVideoView6.mIsLoopMode) {
                                mgtvLoopVideoView6.mMediaPlayer.seekTo(mgtvLoopVideoView6.mFromSurfaceDestroyPlayPosition, false, true);
                            }
                            MgtvLoopVideoView.this.mFromSurfaceDestroyPlayPosition = 0;
                        }
                    }
                    MgtvLoopVideoView mgtvLoopVideoView7 = MgtvLoopVideoView.this;
                    mgtvLoopVideoView7.mSizeChangedListener.onVideoSizeChanged(mgtvLoopVideoView7.mMediaPlayer.getVideoWidth(), MgtvLoopVideoView.this.mMediaPlayer.getVideoHeight());
                    return;
                }
                MgtvLoopVideoView.this.openVideo();
            }

            private boolean needOpenVideo() {
                return MgtvLoopVideoView.this.mOpenVideoWhenSurfaceCreate && MgtvLoopVideoView.this.mCurrentUri != null;
            }

            @Override
            public void onSurfaceChanged(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, int i, int i2, int i3) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface changed");
                if (iSurfaceHolder.getRenderView() != MgtvLoopVideoView.this.mRenderView.getRenderView()) {
                    DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSurfaceChanged: unmatched render callback\n");
                    return;
                }
                MgtvLoopVideoView.this.mSurfaceWidth = i2;
                MgtvLoopVideoView.this.mSurfaceHeight = i3;
                boolean z = true;
                boolean z2 = MgtvLoopVideoView.this.mTargetState == 3;
                if (MgtvLoopVideoView.this.mRenderView.shouldWaitForResize() && (MgtvLoopVideoView.this.mVideoWidth != i2 || MgtvLoopVideoView.this.mVideoHeight != i3)) {
                    z = false;
                }
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                if (mgtvLoopVideoView.mMediaPlayer != null && z2 && z) {
                    if (!mgtvLoopVideoView.mIsLoopMode && mgtvLoopVideoView.mSeekWhenPrepared != 0) {
                        MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                        mgtvLoopVideoView2.seekTo(mgtvLoopVideoView2.mSeekWhenPrepared, false);
                    }
                    MgtvLoopVideoView.this.start();
                }
                if (MgtvLoopVideoView.this.mSurfaceHolderListener != null) {
                    MgtvLoopVideoView.this.mSurfaceHolderListener.surfaceChanged();
                }
            }

            @Override
            public void onSurfaceCreated(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, int i, int i2) throws Throwable {
                SurfaceHolder surfaceHolder;
                if (MgtvLoopVideoView.this.mStartLeaveTimestamp > 0) {
                    long jCurrentTimeMillis = (System.currentTimeMillis() - MgtvLoopVideoView.this.mStartLeaveTimestamp) / 1000;
                    if (jCurrentTimeMillis > 540) {
                        if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                            MgtvLoopVideoView.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_LEAVE_TIME_INVALID, MgtvLoopVideoView.this.mCurrentState + "", "", null);
                        }
                        ReportParams reportParams = MgtvLoopVideoView.this.mReportParams;
                        if (reportParams != null) {
                            reportParams.setLeaveTimeS(jCurrentTimeMillis);
                        }
                    }
                }
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface create");
                MgtvMediaPlayer mgtvMediaPlayer = MgtvLoopVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null && mgtvMediaPlayer.isLoadDataPaused()) {
                    DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "bindHolder resumeLoadData");
                    MgtvLoopVideoView.this.mMediaPlayer.resumeLoadData();
                }
                if (iSurfaceHolder.getRenderView() != MgtvLoopVideoView.this.mRenderView.getRenderView()) {
                    DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSurfaceCreated: unmatched render callback\n");
                    return;
                }
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onSurfaceCreated " + iSurfaceHolder);
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.mSurfaceHolder = iSurfaceHolder;
                if (mgtvLoopVideoView.mRenderView.getRenderViewType() == 0 && ((surfaceHolder = MgtvLoopVideoView.this.mSurfaceHolder.getSurfaceHolder()) == null || surfaceHolder.getSurface() == null || !surfaceHolder.getSurface().isValid())) {
                    MgtvLoopVideoView.this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SURFACE_FAILED, 1);
                    MgtvLoopVideoView.this.mErrorMsg = "surfaceCreated surface is invalid";
                } else {
                    bindHolder(iSurfaceHolder);
                }
                if (MgtvLoopVideoView.this.mSurfaceHolderListener != null) {
                    MgtvLoopVideoView.this.mSurfaceHolderListener.surfaceCreated();
                }
            }

            @Override
            public void onSurfaceDestroyed(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, boolean z) {
                MgtvLoopVideoView.this.mLastSurfaceDestroy = z;
                if (iSurfaceHolder.getRenderView() != MgtvLoopVideoView.this.mRenderView.getRenderView()) {
                    DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSurfaceDestroyed: unmatched render callback\n");
                    return;
                }
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onSurfaceDestroyed " + iSurfaceHolder);
                if (MgtvLoopVideoView.this.mSurfaceHolderListener != null) {
                    MgtvLoopVideoView.this.mSurfaceHolderListener.surfaceDestroyed();
                }
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.mSurfaceHolder = null;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvLoopVideoView.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.setSurfaceHolder(null);
                    if (MgtvLoopVideoView.this.isPrepared()) {
                        MgtvLoopVideoView.this.pauseLoadData();
                        if (MgtvLoopVideoView.this.mIsLive) {
                            DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface destroy to pause");
                        } else {
                            DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface destroy to pause");
                            if (MgtvLoopVideoView.this.mRenderView.getRenderViewType() == 0) {
                                if (!MgtvLoopVideoView.this.mMediaPlayer.isSupportAMCKeyFrameBackup()) {
                                    MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                                    mgtvLoopVideoView2.mFromSurfaceDestroyToPlay = true;
                                    mgtvLoopVideoView2.mFromSurfaceDestroyPlayPosition = mgtvLoopVideoView2.mMediaPlayer.getCurrentPosition();
                                }
                            } else if (MgtvLoopVideoView.this.mRenderView.getRenderViewType() == 1) {
                                if (!MgtvLoopVideoView.this.isHardware()) {
                                    MgtvLoopVideoView.this.mFromSurfaceDestroyToPlay = true;
                                }
                                MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                                if (!mgtvLoopVideoView3.mIsLoopMode && mgtvLoopVideoView3.mEnableTexture) {
                                    mgtvLoopVideoView3.mHasSurfaceHolderDestroy = true;
                                }
                            }
                        }
                        MgtvLoopVideoView.this.pauseInner();
                    } else {
                        try {
                            ReportParams reportParams = MgtvLoopVideoView.this.mReportParams;
                            if (reportParams != null) {
                                reportParams.getEnd().setInnerRetry(true);
                            }
                            MgtvLoopVideoView.this.release(true, true);
                        } catch (Exception unused) {
                        }
                    }
                    MgtvLoopVideoView mgtvLoopVideoView4 = MgtvLoopVideoView.this;
                    if (mgtvLoopVideoView4.mCurrentUri == null || mgtvLoopVideoView4.mCurrentState == -1 || MgtvLoopVideoView.this.mCurrentState == 5) {
                        return;
                    }
                    MgtvLoopVideoView.this.mStartLeaveTimestamp = System.currentTimeMillis();
                }
            }
        };
        this.mFilterCallback = new f.a() {
            @Override
            public void onInfo(int i, int i2, String str) {
                if (i == 1) {
                    MgtvLoopVideoView.this.mRenderType = i2;
                    MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                    ReportParams reportParams = mgtvLoopVideoView.mReportParams;
                    if (reportParams != null) {
                        reportParams.setRenderType(mgtvLoopVideoView.mRenderType);
                        return;
                    }
                    return;
                }
                if (i != 3) {
                    return;
                }
                MgtvLoopVideoView.this.mEnhanceQualityType = i2;
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                ReportParams reportParams2 = mgtvLoopVideoView2.mReportParams;
                if (reportParams2 != null) {
                    reportParams2.setEnhanceQualityType(mgtvLoopVideoView2.mEnhanceQualityType);
                }
            }
        };
        this.mRenderWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i, int i2) {
            }

            @Override
            public void onWarning(int i, String str, String str2, Object obj) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "opengl render warning:" + i + ",extra:" + str + ",msg:" + str2);
                if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                    MgtvLoopVideoView.this.mOnWarningListener.onWarning(i, str, str2, obj);
                }
            }
        };
        this.mSizeChangedListener = new MgtvPlayerListener.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i, int i2) {
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.originalVideoWidth = mgtvLoopVideoView.mVideoWidth = mgtvLoopVideoView.mMediaPlayer.getVideoWidth();
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                mgtvLoopVideoView2.originalVideoHeight = mgtvLoopVideoView2.mVideoHeight = mgtvLoopVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvLoopVideoView.this.mVideoWidth != 0 && MgtvLoopVideoView.this.mVideoHeight != 0) {
                    MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                    MgtvRenderView mgtvRenderView = mgtvLoopVideoView3.mRenderView;
                    if (mgtvRenderView != null) {
                        mgtvRenderView.setVideoSize(mgtvLoopVideoView3.mVideoWidth, MgtvLoopVideoView.this.mVideoHeight);
                    }
                    MgtvLoopVideoView.this.requestLayout();
                }
                if (MgtvLoopVideoView.this.mOnVideoSizeChangedListener != null) {
                    MgtvLoopVideoView.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i, i2);
                }
            }
        };
        this.mPreparedListener = new MgtvPlayerListener.OnPreparedListener() {
            /* JADX WARN: Code duplicated, block: B:23:0x00b6  */
            @Override
            public void onPrepared() {
                MgtvLoopVideoView.this.changeCurrentState(2);
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.originalVideoWidth = mgtvLoopVideoView.mVideoWidth = mgtvLoopVideoView.mMediaPlayer.getVideoWidth();
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                mgtvLoopVideoView2.originalVideoHeight = mgtvLoopVideoView2.mVideoHeight = mgtvLoopVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvLoopVideoView.this.mVideoWidth != 0 && MgtvLoopVideoView.this.mVideoHeight != 0) {
                    DebugLog.i("@@@@", "video size: " + MgtvLoopVideoView.this.mVideoWidth + "/" + MgtvLoopVideoView.this.mVideoHeight);
                    MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                    MgtvRenderView mgtvRenderView = mgtvLoopVideoView3.mRenderView;
                    if (mgtvRenderView != null) {
                        mgtvRenderView.setVideoSize(mgtvLoopVideoView3.mVideoWidth, MgtvLoopVideoView.this.mVideoHeight);
                    }
                    int i = MgtvLoopVideoView.this.mSeekWhenPrepared;
                    if (i != 0) {
                        MgtvLoopVideoView.this.seekTo(i);
                    }
                    if ((!MgtvLoopVideoView.this.mRenderView.shouldWaitForResize() || (MgtvLoopVideoView.this.mSurfaceWidth == MgtvLoopVideoView.this.mVideoWidth && MgtvLoopVideoView.this.mSurfaceHeight == MgtvLoopVideoView.this.mVideoHeight)) && MgtvLoopVideoView.this.mTargetState == 3) {
                        MgtvLoopVideoView.this.start();
                    }
                } else if (MgtvLoopVideoView.this.mTargetState == 3) {
                    MgtvLoopVideoView.this.start();
                }
                if (MgtvLoopVideoView.this.mOnPreparedListener != null) {
                    MgtvLoopVideoView.this.mOnPreparedListener.onPrepared();
                }
            }
        };
        this.mCompletionListener = new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i, int i2) {
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                if (i != 0) {
                    mgtvLoopVideoView.changeCurrentState(0);
                    MgtvLoopVideoView.this.mTargetState = 0;
                    MgtvLoopVideoView.this.stopInner();
                } else {
                    mgtvLoopVideoView.changeCurrentState(5);
                    MgtvLoopVideoView.this.mTargetState = 5;
                }
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "-------------on onCompletion what:" + i + ",extra:" + i2);
                if (MgtvLoopVideoView.this.mOnCompletionListener != null) {
                    MgtvLoopVideoView.this.mOnCompletionListener.onCompletion(i, i2);
                }
            }
        };
        this.mInfoListener = new MgtvPlayerListener.OnInfoListener() {
            /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
                	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
                	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
                	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
                	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
                	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
                */
            @Override
            public boolean onInfo(int r5, int r6) {
                /*
                    Method dump skipped, instruction units count: 718
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hunantv.media.widget.MgtvLoopVideoView.AnonymousClass7.onInfo(int, int):boolean");
            }
        };
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            @Override
            public boolean onError(int i, int i2) {
                DebugLog.w(MgtvLoopVideoView.this.getLogTag(), "onError what:" + i + ",extra:" + i2);
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvLoopVideoView.mMediaPlayer;
                if (mgtvMediaPlayer == null || i != 7000006) {
                    if (mgtvMediaPlayer != null && mgtvLoopVideoView.mCurrentState != -1) {
                        MgtvLoopVideoView.this.mMediaPlayer.stop();
                    }
                    MgtvLoopVideoView.this.changeCurrentState(-1);
                    MgtvLoopVideoView.this.mTargetState = -1;
                } else {
                    mgtvLoopVideoView.releaseNoStatus();
                    MgtvLoopVideoView.this.changeCurrentState(0);
                    MgtvLoopVideoView.this.mTargetState = 0;
                }
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                mgtvLoopVideoView2.mCurrentUri = null;
                mgtvLoopVideoView2.mProxyUri = null;
                return mgtvLoopVideoView2.mOnErrorListener != null && MgtvLoopVideoView.this.mOnErrorListener.onError(i, i2);
            }
        };
        this.mSeekCompleteListener = new MgtvPlayerListener.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(int i, int i2) {
                if (MgtvLoopVideoView.this.mOnSeekCompleteListener != null) {
                    DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onSeekComplete seekTargetTime:" + i + ",errorCode:" + i2);
                    MgtvLoopVideoView.this.mOnSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mBufferingUpdateListener = new MgtvPlayerListener.OnBufferingUpdateListener() {
            @Override
            public void onBufferingUpdate(int i) {
                if (MgtvLoopVideoView.this.mOnBufferringUpdateListener != null) {
                    MgtvLoopVideoView.this.mOnBufferringUpdateListener.onBufferingUpdate(i);
                }
            }
        };
        this.mBufferingTimeoutListener = new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i, int i2) {
                MgtvMediaPlayer mgtvMediaPlayer = MgtvLoopVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.stop();
                }
                MgtvLoopVideoView.this.changeCurrentState(-1);
                MgtvLoopVideoView.this.mTargetState = -1;
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.mCurrentUri = null;
                mgtvLoopVideoView.mProxyUri = null;
                if (mgtvLoopVideoView.mOnErrorListener != null) {
                    MgtvLoopVideoView.this.mOnErrorListener.onError(i, i2);
                }
                return true;
            }
        };
        this.mSwitchSourceListener = new MgtvPlayerListener.OnSwitchSourceListener() {
            @Override
            public void onSwitchSourceComplete(String str, int i, int i2) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSwitchSourceComplete url:" + str + ",type:" + i + ",time:" + i2);
                if (MgtvLoopVideoView.this.mOnChangeSourceListener != null) {
                    MgtvLoopVideoView.this.mOnChangeSourceListener.onChangeSourceSuccess(str, i, i2);
                }
            }

            @Override
            public void onSwitchSourceFailed(String str, int i, int i2) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSwitchSourceFailed url:" + str + ",what:" + i + ",extra:" + i2);
                if (MgtvLoopVideoView.this.mOnChangeSourceListener != null) {
                    MgtvLoopVideoView.this.mOnChangeSourceListener.onChangeSourceFailed(str, i, i2);
                }
            }

            @Override
            public void onSwitchSourceInfo(String str, int i, int i2) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSwitchSourceInfo url:" + str + ",event:" + i + ",time:" + i2);
                if (MgtvLoopVideoView.this.mOnChangeSourceListener != null) {
                    MgtvLoopVideoView.this.mOnChangeSourceListener.onChangeSourceInfo(str, i, i2);
                }
            }
        };
        this.mPlayerWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i, int i2) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onTsSkip tsUrl:" + str);
                if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                    MgtvLoopVideoView.this.mOnWarningListener.onTsSkip(str, i, i2);
                }
            }

            @Override
            public void onWarning(int i, String str, String str2, Object obj) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "player render warning:" + i + ",extra:" + str + ",msg:" + str2);
                if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                    MgtvLoopVideoView.this.mOnWarningListener.onWarning(i, str, str2, obj);
                }
            }
        };
        this.mGifRecorder = new GifRecorder();
        this.mStartListener = new MgtvPlayerListener.OnStartListener() {
            @Override
            public void onStart() {
                DebugLog.d(MgtvLoopVideoView.this.getLogTag(), "mgtvcore onStart");
                if (MgtvLoopVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvLoopVideoView.this.callbackOnStart();
                }
            }
        };
        this.mPauseListener = new MgtvPlayerListener.OnPauseListener() {
            @Override
            public void onPause() {
                DebugLog.d(MgtvLoopVideoView.this.getLogTag(), "mgtvcore onPause");
                if (MgtvLoopVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvLoopVideoView.this.callbackOnPause();
                }
            }
        };
        this.mRecordVideoListener = new MgtvPlayerListener.OnRecordVideoListener() {
            @Override
            public void onRecordVideoErr(int i, int i2) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onRecordVideoErr what:" + i + ",extra:" + i2);
                if (MgtvLoopVideoView.this.mOnRecordListener != null) {
                    MgtvLoopVideoView.this.mOnRecordListener.onRecordError(i, i2);
                }
            }

            @Override
            public void onRecordVideoInfo(int i, int i2) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onRecordVideoInfo what:" + i + ",extra:" + i2);
                if (MgtvLoopVideoView.this.mOnRecordListener != null) {
                    if (i == 20) {
                        MgtvLoopVideoView.this.mOnRecordListener.onRecordStart(MgtvLoopVideoView.this.mRecordFilePath);
                    } else if (i == 30) {
                        MgtvLoopVideoView.this.mOnRecordListener.onRecordStop();
                    }
                    MgtvLoopVideoView.this.mOnRecordListener.onRecordInfo(i, i2);
                }
            }
        };
        this.mLoadDataListener = new MgtvPlayerListener.OnLoadDataListener() {
            @Override
            public void onAfterLoadDataPaused() {
                if (MgtvLoopVideoView.this.mOnLoadDataListener != null) {
                    MgtvLoopVideoView.this.mOnLoadDataListener.onAfterLoadDataPaused();
                }
            }

            @Override
            public void onBeforeLoadDataResume() {
                if (MgtvLoopVideoView.this.mOnLoadDataListener != null) {
                    MgtvLoopVideoView.this.mOnLoadDataListener.onBeforeLoadDataResume();
                }
            }
        };
        initVideoView(context);
    }

    public static boolean access$1602(MgtvLoopVideoView mgtvLoopVideoView, boolean z) {
        mgtvLoopVideoView.mMgtvMediaPlayerHardwareMode = z;
        return z;
    }

    public static boolean access$2002(MgtvLoopVideoView mgtvLoopVideoView, boolean z) {
        mgtvLoopVideoView.mIsLive = z;
        return z;
    }

    public static IVideoView.OnInfoListener access$3100(MgtvLoopVideoView mgtvLoopVideoView) {
        return mgtvLoopVideoView.mOnInfoListener;
    }

    public static int access$3200(MgtvLoopVideoView mgtvLoopVideoView) {
        return mgtvLoopVideoView.mVideoRotationDegree;
    }

    public static int access$3202(MgtvLoopVideoView mgtvLoopVideoView, int i) {
        mgtvLoopVideoView.mVideoRotationDegree = i;
        return i;
    }

    public static IVideoView.OnUpdateStatusListener access$3300(MgtvLoopVideoView mgtvLoopVideoView) {
        return mgtvLoopVideoView.mOnUpdateStatusListener;
    }

    public void callbackOnPause() {
        changeCurrentState(4);
        IVideoView.OnPauseListener onPauseListener = this.mOnPauseListener;
        if (onPauseListener != null) {
            onPauseListener.onPause();
        }
    }

    public void callbackOnStart() {
        changeCurrentState(3);
        IVideoView.OnStartListener onStartListener = this.mOnStartListener;
        if (onStartListener != null) {
            onStartListener.onStart();
        }
    }

    public void changeCurrentState(int i) {
        this.mCurrentState = i;
        DebugLog.i(getLogTag(), "changeCurrentState:" + i);
        IVideoView.OnUpdateStatusListener onUpdateStatusListener = this.mOnUpdateStatusListener;
        if (onUpdateStatusListener != null) {
            onUpdateStatusListener.onUpdateStatus();
        }
    }

    private void checkMemoryStatus(Context context) {
        ActivityManager.MemoryInfo memoryInfo;
        if (ImgoLibLoader.getInstance().isAllPlayerLibLoaded() || (memoryInfo = MemoryUtil.getMemoryInfo(context)) == null || !memoryInfo.lowMemory) {
            return;
        }
        this.mPlayerWarning.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_LOW_MEMORY, (memoryInfo.availMem >> 20) + "", "[" + memoryInfo.availMem + "-" + memoryInfo.lowMemory + "-" + memoryInfo.threshold + "]", null);
    }

    private void getFullScreenVideoParams() {
        int i = this.mVideoWidth;
        int i2 = this.mVideoHeight;
        float f = i / i2;
        DisplayMetrics displayMetrics = this.metrics;
        int i3 = displayMetrics.widthPixels;
        int i4 = displayMetrics.heightPixels;
        if (i3 / i4 < f) {
            int i5 = (i2 * i3) / i;
            int i6 = (i4 - i5) / 2;
            this.fromLeft = 0;
            this.fromTop = i6;
            this.fromRight = i3;
            i4 = i6 + i5;
        } else {
            int i7 = (i * i4) / i2;
            int i8 = (i3 - i7) / 2;
            this.fromLeft = i8;
            this.fromTop = 0;
            this.fromRight = i8 + i7;
        }
        this.fromBottom = i4;
        DebugLog.i(getLogTag(), "fromLeft:" + this.fromLeft + "/fromTop:" + this.fromTop + "/fromRight:" + this.fromRight + "/fromBottom:" + this.fromBottom);
    }

    public static String getVersion() {
        return MgtvMediaPlayer.MGTVPLAYER_VERSION;
    }

    private void initVideoView(Context context) {
        initVideoView(context, 0);
    }

    private boolean isInLoopValidState() {
        int i;
        return (this.mMediaPlayer == null || (i = this.mCurrentState) == -1 || i == 0) ? false : true;
    }

    private boolean isInPlaybackState() {
        int i;
        return (this.mMediaPlayer == null || (i = this.mCurrentState) == -1 || i == 0 || i == 1) ? false : true;
    }

    public void openVideo() {
        openVideo(this.mMgtvMediaPlayerHardwareMode);
    }

    public void pauseInner() {
        if (isInPlaybackState() && (this.mMediaPlayer.isPlaying() || (isInLoopValidState() && this.mIsLoopMode && isCompletion()))) {
            DebugLog.i(getLogTag(), "pause play");
            this.mMediaPlayer.pause();
            if (!this.mEnableCoreStartPauseListen) {
                callbackOnPause();
            }
        }
        if (isReuseTextureDisable()) {
            saveLastValidFrame();
        }
    }

    private ResetResult resetImpl(boolean z) {
        if (this.mMediaPlayer == null) {
            return ResetResult.NONE;
        }
        resetDataBefore(z ? MgtvAbstractVideoView.ReleaseReason.DEFAULT_INNER : MgtvAbstractVideoView.ReleaseReason.OUT);
        boolean zReset = this.mMediaPlayer.reset();
        if (zReset) {
            changeCurrentState(0);
            this.mTargetState = 0;
        }
        resetDataAfter(z ? MgtvAbstractVideoView.ReleaseReason.DEFAULT_INNER : MgtvAbstractVideoView.ReleaseReason.OUT);
        return zReset ? ResetResult.RESET_OK : ResetResult.RESET_ERR;
    }

    public void resetVideoPath() throws Throwable {
        Uri uri = this.mCurrentUri;
        if (uri == null) {
            DebugLog.e(getLogTag(), "resetVideoPath mCurrentUri == null return");
            return;
        }
        String string = uri.toString();
        IP2pTask iP2pTask = this.mMainP2pTask;
        Uri uri2 = this.mProxyUri;
        resetVideoPath(string, iP2pTask, uri2 != null ? uri2.toString() : null);
    }

    private void resetVideoPathNormalImpl(String str, IP2pTask iP2pTask, String str2) throws Throwable {
        this.mMediaPlayer.setSurfaceHolder(null);
        ResetResult resetResultResetImpl = resetImpl(true);
        if (resetResultResetImpl == ResetResult.NONE) {
            setVideoPath(str, iP2pTask, str2);
            return;
        }
        if (resetResultResetImpl == ResetResult.RESET_ERR) {
            return;
        }
        if (this.mSurfaceHolder == null) {
            this.mNonSurfaceHolderPVTimestamp = System.currentTimeMillis();
            this.mOpenVideoWhenSurfaceCreate = true;
            return;
        }
        try {
            DebugLog.e(getLogTag(), "------chodison----reprepare MgtvMediaPlayer mMgtvMediaPlayerHardwareMode:" + this.mMgtvMediaPlayerHardwareMode + " url:" + this.mCurrentUri.toString());
            this.mMediaPlayer.setReportParams(this.mReportParams);
            configImgoPlayer();
            this.mFromSurfaceDestroyToPlay = false;
            this.mHasSurfaceHolderDestroy = false;
            DebugLog.i(getLogTag(), "resetVideoPath streamKey:" + this.mStreamKey);
            if (this.mMainP2pTask == null && this.mProxyUri == null) {
                this.mMediaPlayer.setReadDataSourceType(0);
                this.mMediaPlayer.setDataSource(this.mCurrentUri.toString());
            } else {
                MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
                String string = this.mCurrentUri.toString();
                IP2pTask iP2pTask2 = this.mMainP2pTask;
                Uri uri = this.mProxyUri;
                mgtvMediaPlayer.setP2pDataSource(string, iP2pTask2, uri != null ? uri.toString() : null, this.mStreamKey);
            }
            this.mMediaPlayer.setSurfaceHolder(this.mSurfaceHolder);
            this.mMediaPlayer.prepareAsync();
            changeCurrentState(1);
        } catch (InvalidParameterException e) {
            this.mErrorMsg = e.getMessage();
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SURFACE_FAILED, 2);
            e.printStackTrace();
        } catch (Exception e2) {
            this.mErrorMsg = e2.getMessage();
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SETSOURCE_FAILED, 0);
            e2.printStackTrace();
        }
    }

    private void setRender(int i) {
        MgtvMediaPlayer mgtvMediaPlayer;
        DebugLog.i(getLogTag(), "setRender render:" + i);
        if (i != 0 && i != 1) {
            DebugLog.e(getLogTag(), "invalid render:" + i + ", change to surfaceview");
            i = 0;
            this.mRenderViewType = 0;
        } else if (i == 1 && (mgtvMediaPlayer = this.mMediaPlayer) != null && this.mCurrentUri != null) {
            mgtvMediaPlayer.setSurfaceHolder(this.mSurfaceHolder);
            this.mRenderView.setVideoSize(this.mMediaPlayer.getVideoWidth(), this.mMediaPlayer.getVideoHeight());
        }
        setRenderView(i);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0034  */
    private void setRenderView(int i) {
        int iIndexOfChild;
        int i2;
        if (this.mRenderView == null) {
            iIndexOfChild = -1;
        } else {
            MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
            if (mgtvMediaPlayer != null) {
                mgtvMediaPlayer.setSurfaceHolder(null);
            }
            View view = this.mRenderView.getView();
            this.mRenderView.removeRenderCallback(this.mSHCallback);
            this.mRenderView.release();
            this.mRenderView = null;
            if (view != null) {
                DebugLog.i(getLogTag(), "setRenderView removeRenderView");
                iIndexOfChild = indexOfChild(view);
                removeView(view);
            } else {
                iIndexOfChild = -1;
            }
        }
        this.mRenderType = 0;
        this.mEnhanceQualityType = 0;
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null) {
            reportParams.setRenderType(0);
            this.mReportParams.setEnhanceQualityType(0);
        }
        MgtvRenderView mgtvRenderView = new MgtvRenderView(getContext(), i, this.mEnableOpengl, this.mRenderWarning, this.mFilterCallback);
        this.mRenderView = mgtvRenderView;
        mgtvRenderView.bindFakeFrameView(this.mFakeFrameView);
        MgtvMediaPlayer mgtvMediaPlayer2 = this.mMediaPlayer;
        if (mgtvMediaPlayer2 != null) {
            MgtvRenderView mgtvRenderView2 = this.mRenderView;
            mgtvMediaPlayer2.bindRenderView(mgtvRenderView2 != null ? mgtvRenderView2.getRenderView() : null);
        }
        if (this.mRenderView == null) {
            return;
        }
        setRenderFilter(this.mRenderFilter);
        this.mRenderView.addRenderCallback(this.mSHCallback);
        this.mRenderView.setVideoRotation(this.mVideoRotationDegree);
        this.mRenderView.setAntiShake(this.mAntiViewShake);
        int i3 = this.mAspectRatio;
        if (i3 > 0) {
            this.mRenderView.setAspectRatio(i3);
        }
        int i4 = this.mVideoWidth;
        if (i4 > 0 && (i2 = this.mVideoHeight) > 0) {
            this.mRenderView.setVideoSize(i4, i2);
        }
        View view2 = this.mRenderView.getView();
        if (view2 != null) {
            view2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            setSecureImpl(this.mIsSecure);
            DebugLog.i(getLogTag(), "setRenderView addRenderView");
            if (iIndexOfChild >= 0) {
                addView(view2, iIndexOfChild);
            } else {
                addView(view2);
            }
        }
        this.mRenderView.setDisplayFloatRect(this.mDisplayFloatRect);
        View view3 = this.mResizableFrameView;
        if (view3 != null) {
            removeView(view3);
            this.mResizableFrameView = null;
        }
        l lVar = new l(this.mContext);
        this.mResizableFrameView = lVar;
        addView(lVar, new FrameLayout.LayoutParams(-1, -1, 17));
        MgtvRenderView mgtvRenderView3 = this.mRenderView;
        if (mgtvRenderView3 != null) {
            mgtvRenderView3.bindResizableFrameView(this.mResizableFrameView);
        }
    }

    private void setSecureImpl(boolean z) {
        MgtvRenderView mgtvRenderView = this.mRenderView;
        if (mgtvRenderView == null || !(mgtvRenderView.getView() instanceof SurfaceView)) {
            return;
        }
        DebugLog.i(getLogTag(), "setSecure " + z);
        ((SurfaceView) this.mRenderView.getView()).setSecure(z);
    }

    private void setVideoURI(Uri uri) {
        this.mNonSurfaceHolderPVTimestamp = 0L;
        this.mCurrentUri = uri;
        this.mSeekWhenPrepared = 0;
        openVideo();
        requestLayout();
        invalidate();
    }

    private void updateDataCacheSizeKB() {
        MgtvMediaPlayer mgtvMediaPlayer;
        int i = this.mDataCacheSizeKB;
        if (i <= 0 || (mgtvMediaPlayer = this.mMediaPlayer) == null) {
            return;
        }
        mgtvMediaPlayer.configDSMemoryKeepSize(i, i);
    }

    private void updateSkipLoopFilter() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setSkipLoopFilter(this.mSkipLoopFilterType);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f  */
    @Override
    public void changeSourceAsync(IVideoView.MediaSource mediaSource, int i, int i2, int i3) {
        String str;
        IVideoView.OnChangeSourceListener onChangeSourceListener;
        int i4;
        if (mediaSource == null) {
            IVideoView.OnChangeSourceListener onChangeSourceListener2 = this.mOnChangeSourceListener;
            if (onChangeSourceListener2 != null) {
                onChangeSourceListener2.onChangeSourceFailed(null, IVideoView.MEDIA_ERROR_ILLEGAL_ARGUMENT, 0);
                return;
            }
            return;
        }
        int i5 = mediaSource.readType;
        String str2 = mediaSource.url;
        IP2pTask iP2pTask = mediaSource.p2pTask;
        String str3 = mediaSource.proxyUrl;
        if (this.mMediaPlayer != null) {
            if (i5 == 0) {
                str = str3;
                mediaSource.readType = 0;
                this.mMediaPlayer.switchVideoSource(str2, i, i2, i3);
            } else {
                if (iP2pTask == null) {
                    try {
                        if (StringUtil.isEmpty(str3)) {
                            str = str3;
                            mediaSource.readType = 0;
                            this.mMediaPlayer.switchVideoSource(str2, i, i2, i3);
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                        onChangeSourceListener = this.mOnChangeSourceListener;
                        if (onChangeSourceListener != null) {
                            i4 = IVideoView.MEDIA_ERROR_ILLEGAL_ARGUMENT;
                            onChangeSourceListener.onChangeSourceFailed(str2, i4, 0);
                            return;
                        }
                        return;
                    } catch (Exception unused) {
                        onChangeSourceListener = this.mOnChangeSourceListener;
                        if (onChangeSourceListener != null) {
                            i4 = IVideoView.MEDIA_ERROR_OPENVIDEO_FAILED;
                            onChangeSourceListener.onChangeSourceFailed(str2, i4, 0);
                            return;
                        }
                        return;
                    }
                }
                this.mMediaPlayer.switchP2pVideoSource(i5, str2, iP2pTask, str3, i, i2, i3);
                str = str3;
            }
            DebugLog.i(getLogTag(), "changeSourceAsync url:" + str2);
            DebugLog.i(getLogTag(), "changeSourceAsync p2pTask:" + iP2pTask);
            DebugLog.i(getLogTag(), "changeSourceAsync proxyUrl:" + str);
            DebugLog.i(getLogTag(), "changeSourceAsync type:" + i + "src:" + i2 + ",dst:" + i3);
        }
    }

    @Override
    public void cleanUri() {
        DebugLog.i(getLogTag(), "cleanUri");
        this.mCurrentUri = null;
        this.mProxyUri = null;
    }

    @Override
    public void configDataCacheSizeKB(int i) {
        this.mDataCacheSizeKB = i;
        updateDataCacheSizeKB();
    }

    @Override
    public void configImgoPlayer() throws Throwable {
        super.configImgoPlayer();
        this.mOpenVideoWhenSurfaceCreate = false;
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null) {
            reportParams.setAddrInfoInt(this.mAddrInfoTypeInt);
        }
        if (this.mDnsFamilyType != 1) {
            setNetAddrinfo(0, -1);
        }
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            MgtvRenderView mgtvRenderView = this.mRenderView;
            mgtvMediaPlayer.bindRenderView(mgtvRenderView != null ? mgtvRenderView.getRenderView() : null);
            this.mMediaPlayer.setTimeout(this.mConnectTimeOut, this.mReciveDataTimeOut, this.mBufferTimeoutMs);
            this.mMediaPlayer.setDataSourceType(this.mDataSourceType);
            this.mMediaPlayer.setAccurateSeekEnable(this.mAccurateSeekEnable);
            this.mMediaPlayer.setNetAddrinfo(this.mAddrInfoType, this.mAddrInfoTimeoutMs, this.mJavaDnsEnable, this.mJavaDnsType, this.mNativeDnsAsyncEnable);
            this.mMediaPlayer.configTsNotSkip(this.mTsNotSkip);
            int i = this.mLoadMaxRetryTime;
            if (i > 0) {
                this.mMediaPlayer.configLoadMaxRetryTime(i);
            }
            int i2 = this.mWeakNetSpeed;
            if (i2 > 0) {
                this.mMediaPlayer.configWeakBufferSpeed(i2);
            }
            int i3 = this.mWeakBufferTimeoutMs;
            if (i3 > 0) {
                this.mMediaPlayer.configWeakBufferTimeout(i3);
            }
            this.mMediaPlayer.enableM3u8Cache(this.mCacheEnable);
            this.mMediaPlayer.setM3u8Caches(this.mCacheM3u8Path, this.mCacheTsPaths);
            float f = this.mLeftVolume;
            if (f >= 0.0f) {
                float f2 = this.mRightVolume;
                if (f2 >= 0.0f) {
                    this.mMediaPlayer.setVolume(f, f2);
                }
            }
            if (this.mMediaPlayer.isMgtvCore() && this.mUserEnableCoreStartPauseListen) {
                this.mEnableCoreStartPauseListen = true;
            } else {
                this.mEnableCoreStartPauseListen = false;
            }
            this.mMediaPlayer.configForceHW(this.mForceDecodeMode);
            this.mMediaPlayer.bindGifRecorder(this.mGifRecorder);
            this.mMediaPlayer.setPlaybackSpeed(this.mPlaySpeed);
            this.mMediaPlayer.setLiveStartIndex(this.mLiveStartIndex);
            int i4 = this.mStartPosMs;
            if (i4 > 0) {
                this.mMediaPlayer.setPlayerPrepareStartPosMs(i4);
                DebugLog.i(getLogTag(), "configImgoPlayer mLoopStartPosMs:" + this.mStartPosMs);
            }
            this.mMediaPlayer.setReadDataSourceType(this.mReadDataSourceTypeConfig);
            updateDataCacheSizeKB();
            updateSkipLoopFilter();
            this.mMediaPlayer.enableTsSkipError(this.mEnableTsSkipError);
            this.mMediaPlayer.enableMgtvMediaCodec(this.mEnableMgtvMediaCodec);
            DebugLog.i(getLogTag(), "configImgoPlayer mConnectTimeOut:" + this.mConnectTimeOut + ",mReciveDataTimeOut:" + this.mReciveDataTimeOut + ",mBufferTimeoutMs:" + this.mBufferTimeoutMs + ",mDataSourceType:" + this.mDataSourceType + ",mAccurateSeekEnable:" + this.mAccurateSeekEnable + ",mAddrInfoType:" + this.mAddrInfoType + ",mAddrInfoTimeoutMs:" + this.mAddrInfoTimeoutMs + ",mJavaDnsEnable:" + this.mJavaDnsEnable + ",mJavaDnsType:" + this.mJavaDnsType + ",mPlaySpeed:" + this.mPlaySpeed + ",mLiveStartIndex:" + this.mLiveStartIndex + ",mEnableLiveMode:" + this.mEnableLiveMode + ",mReadDataSourceTypeConfig:" + this.mReadDataSourceTypeConfig + ",mNativeDnsAsyncEnable:" + this.mNativeDnsAsyncEnable + ",mEnableTsSkipError:" + this.mEnableTsSkipError + ",mEnableMgtvMediaCodec:" + this.mEnableMgtvMediaCodec);
            if (this.mNonSurfaceHolderPVTimestamp > 0) {
                this.mMediaPlayer.setNetdSVCTimeMs(System.currentTimeMillis() - this.mNonSurfaceHolderPVTimestamp);
            } else {
                this.mMediaPlayer.setNetdSVCTimeMs(0L);
            }
        }
    }

    @Override
    public void configLoadMaxRetryTime(int i) {
        this.mLoadMaxRetryTime = i;
    }

    @Override
    public void configTsNotSkip(boolean z) {
        this.mTsNotSkip = z;
    }

    @Override
    public void configWeakBufferTimeout(int i) {
        this.mWeakBufferTimeoutMs = i;
    }

    @Override
    public void configWeakNetSpeed(int i) {
        this.mWeakNetSpeed = i;
    }

    @Override
    public void convertRender(int i) {
        DebugLog.i(getLogTag(), "convertRender to " + i);
        try {
            release(true, true);
        } catch (Exception unused) {
        }
        this.mInitRenderViewType = i;
        toggleRenders(i);
    }

    @Override
    public void enableCoreStartPauseListen(boolean z) {
        this.mUserEnableCoreStartPauseListen = z;
    }

    @Override
    public void enableM3u8Cache(boolean z) {
        this.mCacheEnable = z;
    }

    @Override
    public void enableSubtitle(boolean z) {
    }

    @Override
    public void enableTsSkipError(boolean z) {
        this.mEnableTsSkipError = z;
    }

    @Override
    public int getAddrInfoTypeInt() {
        return this.mAddrInfoTypeInt;
    }

    @Override
    public int getBitRate() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return (int) mgtvMediaPlayer.getVideoBitRate();
        }
        return 0;
    }

    @Override
    public int getBufferingPercentage() {
        if (isInPlaybackState()) {
            return this.mMediaPlayer.getBufferingPercent();
        }
        return 0;
    }

    @Override
    public int getCurrentPosition() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer == null) {
            DebugLog.d(getLogTag(), "getCurrentPosition mMediaPlayer is null");
            return 0;
        }
        int i = this.mCurrentState;
        if (i == 0 || i == 1) {
            return 0;
        }
        return mgtvMediaPlayer.getCurrentPosition();
    }

    @Override
    public int getCurrentPositionUnsafe() {
        int i;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer == null || (i = this.mCurrentState) == 0 || i == 1) {
            return 0;
        }
        return mgtvMediaPlayer.getCurrentPositionUnSafe();
    }

    @Override
    public int getCurrentStatus() {
        return this.mCurrentState;
    }

    @Override
    public int getDLSpeedB() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getCurDLSpeed();
        }
        return 0;
    }

    @Override
    public String getDLSpeedFormat() {
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        numberInstance.setMaximumFractionDigits(1);
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        return numberInstance.format(mgtvMediaPlayer != null ? mgtvMediaPlayer.getCurDLSpeed() / 1000.0f : 0.0f) + "KB/S";
    }

    @Override
    public int getDuration() {
        if (isInPlaybackState()) {
            return this.mMediaPlayer.getDuration();
        }
        return -1;
    }

    @Override
    public String getErrorMsg() {
        return this.mErrorMsg;
    }

    @Override
    public String getErrorUrl() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer == null) {
            return "";
        }
        mgtvMediaPlayer.getErrorUrl();
        return "";
    }

    @Override
    public int getFPS() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getVideoFPS();
        }
        return 0;
    }

    @Override
    public FlowDataStatistic getFlowDataStatistic() {
        return this.mFlowDataStatistic;
    }

    @Override
    public GifRecorder getGifRecorder() {
        return this.mGifRecorder;
    }

    @Override
    public String getLastErrorTypeCode() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getLastErrorTypeCode();
        }
        return null;
    }

    @Override
    public String getLogTag() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        sb.append(getLogTagKey());
        sb.append("][");
        sb.append(getClass().getSimpleName());
        sb.append("-");
        sb.append(this.mIsLoopMode ? "1" : "00");
        sb.append("]");
        return sb.toString();
    }

    @Override
    public String getLogTagKey() {
        String videoTypeName = ReportParams.getVideoTypeName(ReportParams.VideoType.NONE);
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null) {
            videoTypeName = ReportParams.getVideoTypeName(reportParams.getVideoType());
        }
        return (MgtvAbstractVideoView.sAutoNativeStack ? "STACK-" : "") + videoTypeName + "-" + hashCode() + "-" + getRenderViewName();
    }

    @Override
    public float getPlaybackSpeed() {
        return this.mPlaySpeed;
    }

    @Override
    public MgtvMediaPlayer.PlayerExtraInfo getPlayerExtraInfo() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getPlayerExtraInfo();
        }
        return null;
    }

    @Override
    public String getPlayerVersion() {
        return getVersion();
    }

    @Override
    public IVideoView.RenderFilter getRenderFilter() {
        return this.mRenderFilter;
    }

    @Override
    public View getRenderView() {
        MgtvRenderView mgtvRenderView = this.mRenderView;
        if (mgtvRenderView != null) {
            return mgtvRenderView.getView();
        }
        return null;
    }

    public String getRenderViewName() {
        return this.mRenderViewType == 0 ? "surface" : "texture";
    }

    @Override
    public int getRenderViewType() {
        return this.mRenderViewType;
    }

    @Override
    public Bitmap getSnapshot(int i, int i2) {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getSnapshot(i, i2);
        }
        return null;
    }

    @Override
    public int getTotalBuffering() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getBufferedPercentage();
        }
        return 0;
    }

    @Override
    public int getVideoHeight() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override
    public int getVideoWidth() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override
    public boolean isAccurateSeekEnable() {
        return this.mAccurateSeekEnable;
    }

    @Override
    public boolean isCompletion() {
        return this.mCurrentState == 5;
    }

    @Override
    public boolean isDataLoadPaused() {
        return this.mIsDataLoaderPaused;
    }

    @Override
    public boolean isHardware() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.isHardware();
        }
        return false;
    }

    @Override
    public boolean isImgoSourceModuleOpen() {
        return ImgoLibLoader.getInstance().isDsLibLoaded() && this.mDataSourceType == MgtvMediaPlayer.DataSourceType.TYPE_DATASOUCE_IMGO;
    }

    @Override
    public boolean isOnlyAudioMode() {
        return false;
    }

    @Override
    public boolean isPlaying() {
        return isInPlaybackState() && this.mMediaPlayer.isPlaying();
    }

    @Override
    public boolean isPrepared() {
        return isInPlaybackState();
    }

    @Override
    public boolean isRecording() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.isRecording();
        }
        return false;
    }

    @Override
    public boolean isRendered() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.isRendered();
        }
        return false;
    }

    public boolean isStretchScreen() {
        return this.isStretchScreen;
    }

    @Override
    public boolean isSupportedSnapshot() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.isSupportedSnapshot();
        }
        return false;
    }

    public boolean isTextureView() {
        MgtvRenderView mgtvRenderView = this.mRenderView;
        return mgtvRenderView != null && mgtvRenderView.getRenderViewType() == 1;
    }

    @Override
    public boolean isTsSkipErrorEnable() {
        return this.mEnableTsSkipError;
    }

    @Override
    public void nativeCrashTest(int i) {
        MgtvMediaPlayer.NativeSoType nativeSoType;
        if (i == 1) {
            nativeSoType = MgtvMediaPlayer.NativeSoType.TYPE_NATIVESO_IMGOHELP;
        } else if (i != 2) {
            nativeSoType = i != 3 ? MgtvMediaPlayer.NativeSoType.TYPE_NATIVESO_IMGOFFMPEG : MgtvMediaPlayer.NativeSoType.TYPE_NATIVESO_IMGODS;
        } else {
            nativeSoType = MgtvMediaPlayer.NativeSoType.TYPE_NATIVESO_IMGOMEDIAPLAYER;
        }
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.nativeCrashTest(nativeSoType);
        }
    }

    @Override
    public void onVideoRenderStart() {
        super.onVideoRenderStart();
        MgtvRenderView mgtvRenderView = this.mRenderView;
        if (mgtvRenderView != null) {
            mgtvRenderView.setDisplayFloatRect(this.mDisplayFloatRect);
        }
    }

    @Override
    public void openImgoDSModule(boolean z) {
        if (this.mTargetIsLoopMode) {
            return;
        }
        if (this.mDataSourceInfo != null) {
            DebugLog.i(getLogTag(), "openImgoDSModule fileFormat:" + this.mDataSourceInfo.getFileFormat());
        }
        this.mDataSourceType = z ? MgtvMediaPlayer.DataSourceType.TYPE_DATASOUCE_IMGO : MgtvMediaPlayer.DataSourceType.TYPE_DATASOUCE_DEFAULT;
    }

    @Override
    public void pause() {
        pauseInner();
        this.mTargetState = 4;
    }

    @Override
    public void pauseLoadData() {
        DebugLog.i(getLogTag(), "pauseLoadData");
        if (this.mMediaPlayer != null) {
            DebugLog.i(getLogTag(), "pauseLoadData in");
            this.mIsDataLoaderPaused = true;
            this.mMediaPlayer.pauseLoadData();
        }
    }

    @Override
    public void reBindTexture() {
    }

    @Override
    public void release() {
        super.release();
        release(true, false);
        afterRelease();
    }

    @Override
    public void reset() {
        resetImpl(false);
    }

    @Override
    public void resetDataBefore(MgtvAbstractVideoView.ReleaseReason releaseReason) {
        super.resetDataBefore(releaseReason);
        this.mIsLive = false;
        this.mIsDataLoaderPaused = false;
        MgtvRenderView mgtvRenderView = this.mRenderView;
        if (mgtvRenderView != null) {
            mgtvRenderView.reset();
        }
        if (releaseReason == MgtvAbstractVideoView.ReleaseReason.OUT) {
            this.mStartLeaveTimestamp = 0L;
            this.mCacheM3u8Path = null;
            this.mCacheTsPaths = null;
            this.mStartPosMs = 0;
            FlowDataStatistic flowDataStatistic = this.mFlowDataStatistic;
            if (flowDataStatistic != null && flowDataStatistic.isBindPlayerLifecycle()) {
                this.mFlowDataStatistic.reset();
            }
            this.mNonSurfaceHolderPVTimestamp = 0L;
        }
        this.mOpenVideoWhenSurfaceCreate = false;
        this.mNeedResetLoopPlay = false;
        this.mSeekWhenPrepared = 0;
    }

    @Override
    public void resetRender() {
        if (Constants.FOR_OTT && this.mEnableTexture) {
            this.mHasSurfaceHolderDestroy = true;
        }
    }

    public void resetVideoPathLoopImpl(String str, IP2pTask iP2pTask, String str2) throws Throwable {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer == null) {
            DebugLog.e(getLogTag(), "resetVideoPathLoopImpl mMediaPlayer == null return");
            return;
        }
        mgtvMediaPlayer.setReportParams(this.mReportParams);
        this.mFromSurfaceDestroyToPlay = false;
        this.mHasSurfaceHolderDestroy = false;
        this.mMediaPlayer.resetLoopPlay();
        resumeLoadData();
        configImgoPlayer();
        if (this.mSurfaceHolder == null && (!this.mEnableTexture || !isTextureView())) {
            DebugLog.i(getLogTag(), "resetVideoPathLoopImpl mSurfaceHolder == null wait surface attach to window");
            this.mNeedResetLoopPlay = true;
            return;
        }
        int i = this.mStartPosMs;
        if (i <= 0) {
            this.mMediaPlayer.switchLoopSource(this.mReadDataSourceTypeConfig, str, iP2pTask, str2, 0);
        } else {
            this.mMediaPlayer.switchLoopSource(this.mReadDataSourceTypeConfig, str, iP2pTask, str2, i);
            this.mStartPosMs = 0;
        }
    }

    @Override
    public void resume() {
        openVideo();
    }

    @Override
    public void resumeLoadData() {
        DebugLog.i(getLogTag(), "resumeLoadData");
        if (this.mMediaPlayer == null || !this.mIsDataLoaderPaused) {
            return;
        }
        DebugLog.i(getLogTag(), "resumeLoadData in");
        this.mIsDataLoaderPaused = false;
        this.mMediaPlayer.resumeLoadData();
    }

    public void saveLastValidFrame() {
        MgtvRenderView mgtvRenderView = this.mRenderView;
        if (mgtvRenderView != null) {
            mgtvRenderView.saveLastValidFrame();
        }
    }

    @Override
    public void seekTo(int i) {
        if (isInPlaybackState()) {
            if (i >= 0) {
                if (this.mFromSurfaceDestroyToPlay) {
                    this.mFromSurfaceDestroyPlayPosition = i;
                }
                this.mMediaPlayer.seekTo(i);
                if (this.mSeekAutoStartAfterCompleteEnable && this.mCurrentState == 5) {
                    callbackOnStart();
                }
            }
            i = 0;
        }
        this.mSeekWhenPrepared = i;
    }

    @Override
    @Deprecated
    public void setAccurateSeekEnable(boolean z) {
        this.mAccurateSeekEnable = z;
    }

    @Override
    public void setAspectRatio(int i) {
        this.mAspectRatio = i;
        if (this.mRenderView != null) {
            DebugLog.i(getLogTag(), "setAspectRatio:" + i);
            this.mRenderView.setAspectRatio(i);
        }
    }

    @Override
    public void setAudioPath(@NonNull String str) {
    }

    @Override
    public void setBufferTimeout(int i) {
        this.mBufferTimeoutMs = i;
    }

    @Override
    public void setFlowDataStatistic(FlowDataStatistic flowDataStatistic) {
        this.mFlowDataStatistic = flowDataStatistic;
    }

    @Override
    public void setForceDecodeMode(boolean z) {
        this.mForceDecodeMode = z;
    }

    @Override
    public void setLastFrameRecovery(boolean z) {
        this.mLastFrameRecovery = z;
    }

    @Override
    public void setLiveMode(boolean z) {
        this.mIsLiveConfig = z;
        this.mEnableLiveMode = z;
    }

    @Override
    public void setLiveReopen() {
        MgtvMediaPlayer mgtvMediaPlayer;
        if (!this.mEnableLiveMode || (mgtvMediaPlayer = this.mMediaPlayer) == null) {
            return;
        }
        mgtvMediaPlayer.setLiveReopen();
    }

    @Override
    public void setLiveStartIndex(int i) {
        this.mLiveStartIndex = i;
    }

    @Override
    public void setM3u8Caches(String str, String[] strArr) {
        this.mCacheM3u8Path = str;
        this.mCacheTsPaths = strArr;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setM3u8Caches(str, strArr);
        }
    }

    @Override
    public void setNetAddrinfo(int i, int i2) {
        setNetAddrinfo(i, i2, false);
    }

    @Override
    public void setOnBufferingUpdateListener(IVideoView.OnBufferingUpdateListener onBufferingUpdateListener) {
        this.mOnBufferringUpdateListener = onBufferingUpdateListener;
    }

    @Override
    public void setOnChangeSourceListener(IVideoView.OnChangeSourceListener onChangeSourceListener) {
        this.mOnChangeSourceListener = onChangeSourceListener;
    }

    @Override
    public void setOnCompletionListener(IVideoView.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    @Override
    public void setOnErrorListener(IVideoView.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    @Override
    public void setOnInfoListener(IVideoView.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    @Override
    public void setOnLoadDataListener(IVideoView.OnLoadDataListener onLoadDataListener) {
        this.mOnLoadDataListener = onLoadDataListener;
    }

    @Override
    public void setOnPauseListener(IVideoView.OnPauseListener onPauseListener) {
        this.mOnPauseListener = onPauseListener;
    }

    @Override
    public void setOnPreparedListener(IVideoView.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    @Override
    public void setOnRecordListener(IVideoView.OnRecordListener onRecordListener) {
        this.mOnRecordListener = onRecordListener;
    }

    @Override
    public void setOnSeekCompleteListener(IVideoView.OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
    }

    @Override
    public void setOnStartListener(IVideoView.OnStartListener onStartListener) {
        this.mOnStartListener = onStartListener;
    }

    @Override
    public void setOnSwitchSmoothSourceListener(IVideoView.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener) {
    }

    @Override
    public void setOnUpdateStatusListener(IVideoView.OnUpdateStatusListener onUpdateStatusListener) {
        this.mOnUpdateStatusListener = onUpdateStatusListener;
    }

    @Override
    public void setOnVideoSizeChangedListener(IVideoView.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    @Override
    public void setOnWarningListener(MgtvPlayerListener.OnWarningListener onWarningListener) {
        this.mOnWarningListener = onWarningListener;
    }

    @Override
    public void setPlaybackSpeed(float f) {
        this.mPlaySpeed = f;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setPlaybackSpeed(f);
        }
    }

    @Override
    public void setPlayerDebug(boolean z) {
        MgtvMediaPlayer.setPlayerDebug(z);
    }

    @Override
    public void setPlayerHardwareMode(boolean z) {
        this.mMgtvMediaPlayerHardwareMode = z;
    }

    @Override
    public void setRenderFilter(IVideoView.RenderFilter renderFilter) {
        this.mRenderFilter = renderFilter;
        int i = AnonymousClass18.$SwitchMap$com$hunantv$media$widget$IVideoView$RenderFilter[renderFilter.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 0;
            }
        }
        MgtvRenderView mgtvRenderView = this.mRenderView;
        if (mgtvRenderView != null) {
            mgtvRenderView.setRenderFilter(i2);
        }
    }

    @Override
    public void setRenderViewVisible(int i) {
        MgtvRenderView mgtvRenderView = this.mRenderView;
        if (mgtvRenderView == null || mgtvRenderView.getView() == null) {
            return;
        }
        this.mRenderView.getView().setVisibility(i);
    }

    @Override
    public void setReportParams(ReportParams reportParams) {
        this.mReportParams = reportParams;
        if (reportParams != null) {
            reportParams.setRenderType(this.mRenderType);
            this.mReportParams.setEnhanceQualityType(this.mEnhanceQualityType);
            this.mReportParams.setSvds(this.mVideoIntroduction);
        }
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setReportParams(this.mReportParams);
        }
    }

    @Override
    public void setScreenOnWhilePlaying(boolean z) {
        this.mIsScreenOnWhilePlaying = z;
    }

    @Override
    public void setSecure(boolean z) {
        this.mIsSecure = z;
        setSecureImpl(z);
    }

    @Override
    public void setSkipLoopFilter(MgtvMediaPlayer.SkipLoopFilterType skipLoopFilterType) {
        this.mSkipLoopFilterType = skipLoopFilterType;
        updateSkipLoopFilter();
    }

    @Override
    public void setStartPosMs(int i) {
        this.mStartPosMs = i;
    }

    @Override
    public void setStreamKey(int i) {
        this.mStreamKey = i;
    }

    public void setStretchScreen() {
        if (this.shouldGetVideoParams) {
            DebugLog.i("@@@", "getFullScreenVideoParams");
            getFullScreenVideoParams();
            this.shouldGetVideoParams = false;
        }
        if (this.isStretchScreen) {
            this.mVideoWidth = this.originalVideoWidth;
            this.mVideoHeight = this.originalVideoHeight;
            layout(this.fromLeft, this.fromTop, this.fromRight, this.fromBottom);
            this.isStretchScreen = false;
        } else {
            DisplayMetrics displayMetrics = this.metrics;
            layout(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
            DisplayMetrics displayMetrics2 = this.metrics;
            this.mVideoWidth = displayMetrics2.widthPixels;
            this.mVideoHeight = displayMetrics2.heightPixels;
            this.isStretchScreen = true;
        }
        MgtvRenderView mgtvRenderView = this.mRenderView;
        if (mgtvRenderView != null) {
            mgtvRenderView.setVideoSize(this.mVideoWidth, this.mVideoHeight);
        }
    }

    @Override
    public void setSurfaceHolderListener(IVideoView.SurfaceHolderListener surfaceHolderListener) {
        this.mSurfaceHolderListener = surfaceHolderListener;
    }

    public MgtvLoopVideoView setTargetIsLoopMode(boolean z) {
        this.mTargetIsLoopMode = z;
        return this;
    }

    @Override
    public void setTimeout(int i, int i2) {
        this.mConnectTimeOut = i;
        this.mReciveDataTimeOut = i2;
    }

    @Override
    public void setVideoPath(String str) {
        setVideoPath(str, null, null);
    }

    @Override
    public void setZOrderMediaOverlay(boolean z) {
        MgtvRenderView mgtvRenderView = this.mRenderView;
        if (mgtvRenderView == null || mgtvRenderView.getView() == null || !(this.mRenderView.getView() instanceof SurfaceView)) {
            return;
        }
        ((SurfaceView) this.mRenderView.getView()).setZOrderMediaOverlay(z);
    }

    @Override
    public void start() {
        if (isInPlaybackState()) {
            if (this.isRequestAudioFocus) {
                requestAudioFocus();
            }
            int i = this.mCurrentState;
            if (i != 3) {
                if (i == 5) {
                    DebugLog.e(getLogTag(), "play video direct after complete");
                }
                resumeLoadData();
                this.mMediaPlayer.start();
                DebugLog.i(getLogTag(), "start play");
                if (!this.mEnableCoreStartPauseListen) {
                    callbackOnStart();
                }
            }
        }
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null && mgtvMediaPlayer.isLoadDataPaused()) {
            this.mMediaPlayer.resumeLoadData();
            DebugLog.i(getLogTag(), "start:resumeLoadData");
        }
        this.mTargetState = 3;
    }

    @Override
    public void startRecord(String str) {
        this.mRecordFilePath = str;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.startRecVideo(str);
        }
    }

    @Override
    public void stopInner() {
        boolean z = this.mIsLoopMode;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (z) {
            if (mgtvMediaPlayer != null) {
                mgtvMediaPlayer.pause();
            }
        } else if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.stop();
        }
    }

    @Override
    public void stopRecord() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.stopRecVideo();
        }
    }

    @Override
    public void toggleRenders(int i) {
        super.toggleRenders(i);
        setRender(i);
    }

    @Override
    public void useSystemPlayer(boolean z) {
        this.mUseSystemPlayer = z;
    }

    public MgtvLoopVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastSurfaceDestroy = true;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMgtvMediaPlayerHardwareMode = false;
        this.mForceDecodeMode = false;
        this.mFromSurfaceDestroyToPlay = false;
        this.mFromSurfaceDestroyPlayPosition = 0;
        this.mErrorMsg = "";
        this.mHasSurfaceHolderDestroy = false;
        this.mLogCallBackOpen = true;
        this.mStreamKey = -1;
        this.mIsLive = false;
        this.mIsDataLoaderPaused = false;
        this.mUseSystemPlayer = false;
        this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrInfoTypeInt = 0;
        this.mJavaDnsType = a.b.NORMAL;
        this.mNativeDnsAsyncEnable = true;
        this.mEnableMgtvMediaCodec = false;
        this.mWeakNetSpeed = 0;
        this.mWeakBufferTimeoutMs = 0;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 0;
        this.mUserEnableCoreStartPauseListen = false;
        this.mEnableCoreStartPauseListen = false;
        this.mIsScreenOnWhilePlaying = true;
        this.mPlaySpeed = 1.0f;
        this.mLiveStartIndex = 0;
        this.mIsSecure = false;
        this.mAspectRatio = -1;
        this.mRenderFilter = IVideoView.RenderFilter.NORMAL;
        this.mIsLiveConfig = false;
        this.mEnableLiveMode = false;
        this.mTargetIsLoopMode = false;
        this.mIsLoopMode = false;
        this.mStartPosMs = 0;
        this.mNeedResetLoopPlay = false;
        this.mFlowDataStatistic = new FlowDataStatistic();
        this.mSkipLoopFilterType = MgtvMediaPlayer.SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mSHCallback = new IMgtvRenderView.IRenderCallback() {
            /* JADX WARN: Code duplicated, block: B:12:0x0026  */
            /* JADX WARN: Code duplicated, block: B:15:0x002d  */
            /* JADX WARN: Code duplicated, block: B:17:0x003a  */
            /* JADX WARN: Code duplicated, block: B:18:0x003e  */
            /* JADX WARN: Code duplicated, block: B:20:0x0046  */
            /* JADX WARN: Code duplicated, block: B:31:0x0081  */
            /* JADX WARN: Code duplicated, block: B:33:0x0087  */
            private void bindHolder(IMgtvRenderView.ISurfaceHolder iSurfaceHolder) throws Throwable {
                MgtvLoopVideoView mgtvLoopVideoView;
                MgtvLoopVideoView mgtvLoopVideoView2;
                MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                if (mgtvLoopVideoView3.mMediaPlayer == null) {
                    mgtvLoopVideoView3.openVideo();
                    return;
                }
                if (mgtvLoopVideoView3.mHasSurfaceHolderDestroy && mgtvLoopVideoView3.mRebindTexture) {
                    MgtvLoopVideoView mgtvLoopVideoView4 = MgtvLoopVideoView.this;
                    if (mgtvLoopVideoView4.mCurrentUri != null) {
                        mgtvLoopVideoView4.setStartPosMs(mgtvLoopVideoView4.mMediaPlayer.getCurrentPosition());
                    } else if (!needOpenVideo()) {
                        MgtvLoopVideoView.this.mMediaPlayer.setSurfaceHolder(iSurfaceHolder);
                        mgtvLoopVideoView = MgtvLoopVideoView.this;
                        if (mgtvLoopVideoView.mNeedResetLoopPlay) {
                            mgtvLoopVideoView.resetVideoPath();
                        } else {
                            if (mgtvLoopVideoView.mMediaPlayer.isLoadDataPaused()) {
                                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "bindHolder resumeLoadData");
                                MgtvLoopVideoView.this.mMediaPlayer.resumeLoadData();
                            }
                            mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                            if (mgtvLoopVideoView2.mFromSurfaceDestroyToPlay) {
                                if (mgtvLoopVideoView2.mLastFrameRecovery) {
                                    MgtvLoopVideoView.this.mMediaPlayer.setPlaybackStep();
                                }
                            } else if (mgtvLoopVideoView2.mLastFrameRecovery) {
                                MgtvLoopVideoView.this.mMediaPlayer.setPlaybackStep();
                            }
                        }
                        MgtvLoopVideoView mgtvLoopVideoView7 = MgtvLoopVideoView.this;
                        mgtvLoopVideoView7.mSizeChangedListener.onVideoSizeChanged(mgtvLoopVideoView7.mMediaPlayer.getVideoWidth(), MgtvLoopVideoView.this.mMediaPlayer.getVideoHeight());
                        return;
                    }
                } else if (!needOpenVideo()) {
                    MgtvLoopVideoView.this.mMediaPlayer.setSurfaceHolder(iSurfaceHolder);
                    mgtvLoopVideoView = MgtvLoopVideoView.this;
                    if (mgtvLoopVideoView.mNeedResetLoopPlay) {
                        mgtvLoopVideoView.resetVideoPath();
                    } else {
                        if (mgtvLoopVideoView.mMediaPlayer.isLoadDataPaused()) {
                            DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "bindHolder resumeLoadData");
                            MgtvLoopVideoView.this.mMediaPlayer.resumeLoadData();
                        }
                        mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                        if (mgtvLoopVideoView2.mFromSurfaceDestroyToPlay || mgtvLoopVideoView2.mCurrentUri == null) {
                            if (mgtvLoopVideoView2.mLastFrameRecovery && (!MgtvLoopVideoView.this.isHardware() || MgtvLoopVideoView.this.mLastSurfaceDestroy)) {
                                MgtvLoopVideoView.this.mMediaPlayer.setPlaybackStep();
                            }
                        } else if (mgtvLoopVideoView2.mMgtvMediaPlayerHardwareMode) {
                            MgtvLoopVideoView mgtvLoopVideoView6 = MgtvLoopVideoView.this;
                            mgtvLoopVideoView6.mFromSurfaceDestroyToPlay = false;
                            if (!mgtvLoopVideoView6.mIsLoopMode) {
                                mgtvLoopVideoView6.mMediaPlayer.seekTo(mgtvLoopVideoView6.mFromSurfaceDestroyPlayPosition, false, true);
                            }
                            MgtvLoopVideoView.this.mFromSurfaceDestroyPlayPosition = 0;
                        }
                    }
                    MgtvLoopVideoView mgtvLoopVideoView8 = MgtvLoopVideoView.this;
                    mgtvLoopVideoView8.mSizeChangedListener.onVideoSizeChanged(mgtvLoopVideoView8.mMediaPlayer.getVideoWidth(), MgtvLoopVideoView.this.mMediaPlayer.getVideoHeight());
                    return;
                }
                MgtvLoopVideoView.this.openVideo();
            }

            private boolean needOpenVideo() {
                return MgtvLoopVideoView.this.mOpenVideoWhenSurfaceCreate && MgtvLoopVideoView.this.mCurrentUri != null;
            }

            @Override
            public void onSurfaceChanged(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, int i, int i2, int i3) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface changed");
                if (iSurfaceHolder.getRenderView() != MgtvLoopVideoView.this.mRenderView.getRenderView()) {
                    DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSurfaceChanged: unmatched render callback\n");
                    return;
                }
                MgtvLoopVideoView.this.mSurfaceWidth = i2;
                MgtvLoopVideoView.this.mSurfaceHeight = i3;
                boolean z = true;
                boolean z2 = MgtvLoopVideoView.this.mTargetState == 3;
                if (MgtvLoopVideoView.this.mRenderView.shouldWaitForResize() && (MgtvLoopVideoView.this.mVideoWidth != i2 || MgtvLoopVideoView.this.mVideoHeight != i3)) {
                    z = false;
                }
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                if (mgtvLoopVideoView.mMediaPlayer != null && z2 && z) {
                    if (!mgtvLoopVideoView.mIsLoopMode && mgtvLoopVideoView.mSeekWhenPrepared != 0) {
                        MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                        mgtvLoopVideoView2.seekTo(mgtvLoopVideoView2.mSeekWhenPrepared, false);
                    }
                    MgtvLoopVideoView.this.start();
                }
                if (MgtvLoopVideoView.this.mSurfaceHolderListener != null) {
                    MgtvLoopVideoView.this.mSurfaceHolderListener.surfaceChanged();
                }
            }

            @Override
            public void onSurfaceCreated(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, int i, int i2) throws Throwable {
                SurfaceHolder surfaceHolder;
                if (MgtvLoopVideoView.this.mStartLeaveTimestamp > 0) {
                    long jCurrentTimeMillis = (System.currentTimeMillis() - MgtvLoopVideoView.this.mStartLeaveTimestamp) / 1000;
                    if (jCurrentTimeMillis > 540) {
                        if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                            MgtvLoopVideoView.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_LEAVE_TIME_INVALID, MgtvLoopVideoView.this.mCurrentState + "", "", null);
                        }
                        ReportParams reportParams = MgtvLoopVideoView.this.mReportParams;
                        if (reportParams != null) {
                            reportParams.setLeaveTimeS(jCurrentTimeMillis);
                        }
                    }
                }
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface create");
                MgtvMediaPlayer mgtvMediaPlayer = MgtvLoopVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null && mgtvMediaPlayer.isLoadDataPaused()) {
                    DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "bindHolder resumeLoadData");
                    MgtvLoopVideoView.this.mMediaPlayer.resumeLoadData();
                }
                if (iSurfaceHolder.getRenderView() != MgtvLoopVideoView.this.mRenderView.getRenderView()) {
                    DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSurfaceCreated: unmatched render callback\n");
                    return;
                }
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onSurfaceCreated " + iSurfaceHolder);
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.mSurfaceHolder = iSurfaceHolder;
                if (mgtvLoopVideoView.mRenderView.getRenderViewType() == 0 && ((surfaceHolder = MgtvLoopVideoView.this.mSurfaceHolder.getSurfaceHolder()) == null || surfaceHolder.getSurface() == null || !surfaceHolder.getSurface().isValid())) {
                    MgtvLoopVideoView.this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SURFACE_FAILED, 1);
                    MgtvLoopVideoView.this.mErrorMsg = "surfaceCreated surface is invalid";
                } else {
                    bindHolder(iSurfaceHolder);
                }
                if (MgtvLoopVideoView.this.mSurfaceHolderListener != null) {
                    MgtvLoopVideoView.this.mSurfaceHolderListener.surfaceCreated();
                }
            }

            @Override
            public void onSurfaceDestroyed(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, boolean z) {
                MgtvLoopVideoView.this.mLastSurfaceDestroy = z;
                if (iSurfaceHolder.getRenderView() != MgtvLoopVideoView.this.mRenderView.getRenderView()) {
                    DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSurfaceDestroyed: unmatched render callback\n");
                    return;
                }
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onSurfaceDestroyed " + iSurfaceHolder);
                if (MgtvLoopVideoView.this.mSurfaceHolderListener != null) {
                    MgtvLoopVideoView.this.mSurfaceHolderListener.surfaceDestroyed();
                }
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.mSurfaceHolder = null;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvLoopVideoView.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.setSurfaceHolder(null);
                    if (MgtvLoopVideoView.this.isPrepared()) {
                        MgtvLoopVideoView.this.pauseLoadData();
                        if (MgtvLoopVideoView.this.mIsLive) {
                            DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface destroy to pause");
                        } else {
                            DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface destroy to pause");
                            if (MgtvLoopVideoView.this.mRenderView.getRenderViewType() == 0) {
                                if (!MgtvLoopVideoView.this.mMediaPlayer.isSupportAMCKeyFrameBackup()) {
                                    MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                                    mgtvLoopVideoView2.mFromSurfaceDestroyToPlay = true;
                                    mgtvLoopVideoView2.mFromSurfaceDestroyPlayPosition = mgtvLoopVideoView2.mMediaPlayer.getCurrentPosition();
                                }
                            } else if (MgtvLoopVideoView.this.mRenderView.getRenderViewType() == 1) {
                                if (!MgtvLoopVideoView.this.isHardware()) {
                                    MgtvLoopVideoView.this.mFromSurfaceDestroyToPlay = true;
                                }
                                MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                                if (!mgtvLoopVideoView3.mIsLoopMode && mgtvLoopVideoView3.mEnableTexture) {
                                    mgtvLoopVideoView3.mHasSurfaceHolderDestroy = true;
                                }
                            }
                        }
                        MgtvLoopVideoView.this.pauseInner();
                    } else {
                        try {
                            ReportParams reportParams = MgtvLoopVideoView.this.mReportParams;
                            if (reportParams != null) {
                                reportParams.getEnd().setInnerRetry(true);
                            }
                            MgtvLoopVideoView.this.release(true, true);
                        } catch (Exception unused) {
                        }
                    }
                    MgtvLoopVideoView mgtvLoopVideoView4 = MgtvLoopVideoView.this;
                    if (mgtvLoopVideoView4.mCurrentUri == null || mgtvLoopVideoView4.mCurrentState == -1 || MgtvLoopVideoView.this.mCurrentState == 5) {
                        return;
                    }
                    MgtvLoopVideoView.this.mStartLeaveTimestamp = System.currentTimeMillis();
                }
            }
        };
        this.mFilterCallback = new f.a() {
            @Override
            public void onInfo(int i, int i2, String str) {
                if (i == 1) {
                    MgtvLoopVideoView.this.mRenderType = i2;
                    MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                    ReportParams reportParams = mgtvLoopVideoView.mReportParams;
                    if (reportParams != null) {
                        reportParams.setRenderType(mgtvLoopVideoView.mRenderType);
                        return;
                    }
                    return;
                }
                if (i != 3) {
                    return;
                }
                MgtvLoopVideoView.this.mEnhanceQualityType = i2;
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                ReportParams reportParams2 = mgtvLoopVideoView2.mReportParams;
                if (reportParams2 != null) {
                    reportParams2.setEnhanceQualityType(mgtvLoopVideoView2.mEnhanceQualityType);
                }
            }
        };
        this.mRenderWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i, int i2) {
            }

            @Override
            public void onWarning(int i, String str, String str2, Object obj) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "opengl render warning:" + i + ",extra:" + str + ",msg:" + str2);
                if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                    MgtvLoopVideoView.this.mOnWarningListener.onWarning(i, str, str2, obj);
                }
            }
        };
        this.mSizeChangedListener = new MgtvPlayerListener.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i, int i2) {
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.originalVideoWidth = mgtvLoopVideoView.mVideoWidth = mgtvLoopVideoView.mMediaPlayer.getVideoWidth();
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                mgtvLoopVideoView2.originalVideoHeight = mgtvLoopVideoView2.mVideoHeight = mgtvLoopVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvLoopVideoView.this.mVideoWidth != 0 && MgtvLoopVideoView.this.mVideoHeight != 0) {
                    MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                    MgtvRenderView mgtvRenderView = mgtvLoopVideoView3.mRenderView;
                    if (mgtvRenderView != null) {
                        mgtvRenderView.setVideoSize(mgtvLoopVideoView3.mVideoWidth, MgtvLoopVideoView.this.mVideoHeight);
                    }
                    MgtvLoopVideoView.this.requestLayout();
                }
                if (MgtvLoopVideoView.this.mOnVideoSizeChangedListener != null) {
                    MgtvLoopVideoView.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i, i2);
                }
            }
        };
        this.mPreparedListener = new MgtvPlayerListener.OnPreparedListener() {
            /* JADX WARN: Code duplicated, block: B:23:0x00b6  */
            @Override
            public void onPrepared() {
                MgtvLoopVideoView.this.changeCurrentState(2);
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.originalVideoWidth = mgtvLoopVideoView.mVideoWidth = mgtvLoopVideoView.mMediaPlayer.getVideoWidth();
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                mgtvLoopVideoView2.originalVideoHeight = mgtvLoopVideoView2.mVideoHeight = mgtvLoopVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvLoopVideoView.this.mVideoWidth != 0 && MgtvLoopVideoView.this.mVideoHeight != 0) {
                    DebugLog.i("@@@@", "video size: " + MgtvLoopVideoView.this.mVideoWidth + "/" + MgtvLoopVideoView.this.mVideoHeight);
                    MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                    MgtvRenderView mgtvRenderView = mgtvLoopVideoView3.mRenderView;
                    if (mgtvRenderView != null) {
                        mgtvRenderView.setVideoSize(mgtvLoopVideoView3.mVideoWidth, MgtvLoopVideoView.this.mVideoHeight);
                    }
                    int i = MgtvLoopVideoView.this.mSeekWhenPrepared;
                    if (i != 0) {
                        MgtvLoopVideoView.this.seekTo(i);
                    }
                    if ((!MgtvLoopVideoView.this.mRenderView.shouldWaitForResize() || (MgtvLoopVideoView.this.mSurfaceWidth == MgtvLoopVideoView.this.mVideoWidth && MgtvLoopVideoView.this.mSurfaceHeight == MgtvLoopVideoView.this.mVideoHeight)) && MgtvLoopVideoView.this.mTargetState == 3) {
                        MgtvLoopVideoView.this.start();
                    }
                } else if (MgtvLoopVideoView.this.mTargetState == 3) {
                    MgtvLoopVideoView.this.start();
                }
                if (MgtvLoopVideoView.this.mOnPreparedListener != null) {
                    MgtvLoopVideoView.this.mOnPreparedListener.onPrepared();
                }
            }
        };
        this.mCompletionListener = new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i, int i2) {
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                if (i != 0) {
                    mgtvLoopVideoView.changeCurrentState(0);
                    MgtvLoopVideoView.this.mTargetState = 0;
                    MgtvLoopVideoView.this.stopInner();
                } else {
                    mgtvLoopVideoView.changeCurrentState(5);
                    MgtvLoopVideoView.this.mTargetState = 5;
                }
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "-------------on onCompletion what:" + i + ",extra:" + i2);
                if (MgtvLoopVideoView.this.mOnCompletionListener != null) {
                    MgtvLoopVideoView.this.mOnCompletionListener.onCompletion(i, i2);
                }
            }
        };
        this.mInfoListener = new MgtvPlayerListener.OnInfoListener() {
            /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
                	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
                	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
                	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
                	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
                */
            @Override
            public boolean onInfo(int r5, int r6) {
                /*
                    Method dump skipped, instruction units count: 718
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hunantv.media.widget.MgtvLoopVideoView.AnonymousClass7.onInfo(int, int):boolean");
            }
        };
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            @Override
            public boolean onError(int i, int i2) {
                DebugLog.w(MgtvLoopVideoView.this.getLogTag(), "onError what:" + i + ",extra:" + i2);
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvLoopVideoView.mMediaPlayer;
                if (mgtvMediaPlayer == null || i != 7000006) {
                    if (mgtvMediaPlayer != null && mgtvLoopVideoView.mCurrentState != -1) {
                        MgtvLoopVideoView.this.mMediaPlayer.stop();
                    }
                    MgtvLoopVideoView.this.changeCurrentState(-1);
                    MgtvLoopVideoView.this.mTargetState = -1;
                } else {
                    mgtvLoopVideoView.releaseNoStatus();
                    MgtvLoopVideoView.this.changeCurrentState(0);
                    MgtvLoopVideoView.this.mTargetState = 0;
                }
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                mgtvLoopVideoView2.mCurrentUri = null;
                mgtvLoopVideoView2.mProxyUri = null;
                return mgtvLoopVideoView2.mOnErrorListener != null && MgtvLoopVideoView.this.mOnErrorListener.onError(i, i2);
            }
        };
        this.mSeekCompleteListener = new MgtvPlayerListener.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(int i, int i2) {
                if (MgtvLoopVideoView.this.mOnSeekCompleteListener != null) {
                    DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onSeekComplete seekTargetTime:" + i + ",errorCode:" + i2);
                    MgtvLoopVideoView.this.mOnSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mBufferingUpdateListener = new MgtvPlayerListener.OnBufferingUpdateListener() {
            @Override
            public void onBufferingUpdate(int i) {
                if (MgtvLoopVideoView.this.mOnBufferringUpdateListener != null) {
                    MgtvLoopVideoView.this.mOnBufferringUpdateListener.onBufferingUpdate(i);
                }
            }
        };
        this.mBufferingTimeoutListener = new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i, int i2) {
                MgtvMediaPlayer mgtvMediaPlayer = MgtvLoopVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.stop();
                }
                MgtvLoopVideoView.this.changeCurrentState(-1);
                MgtvLoopVideoView.this.mTargetState = -1;
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.mCurrentUri = null;
                mgtvLoopVideoView.mProxyUri = null;
                if (mgtvLoopVideoView.mOnErrorListener != null) {
                    MgtvLoopVideoView.this.mOnErrorListener.onError(i, i2);
                }
                return true;
            }
        };
        this.mSwitchSourceListener = new MgtvPlayerListener.OnSwitchSourceListener() {
            @Override
            public void onSwitchSourceComplete(String str, int i, int i2) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSwitchSourceComplete url:" + str + ",type:" + i + ",time:" + i2);
                if (MgtvLoopVideoView.this.mOnChangeSourceListener != null) {
                    MgtvLoopVideoView.this.mOnChangeSourceListener.onChangeSourceSuccess(str, i, i2);
                }
            }

            @Override
            public void onSwitchSourceFailed(String str, int i, int i2) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSwitchSourceFailed url:" + str + ",what:" + i + ",extra:" + i2);
                if (MgtvLoopVideoView.this.mOnChangeSourceListener != null) {
                    MgtvLoopVideoView.this.mOnChangeSourceListener.onChangeSourceFailed(str, i, i2);
                }
            }

            @Override
            public void onSwitchSourceInfo(String str, int i, int i2) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSwitchSourceInfo url:" + str + ",event:" + i + ",time:" + i2);
                if (MgtvLoopVideoView.this.mOnChangeSourceListener != null) {
                    MgtvLoopVideoView.this.mOnChangeSourceListener.onChangeSourceInfo(str, i, i2);
                }
            }
        };
        this.mPlayerWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i, int i2) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onTsSkip tsUrl:" + str);
                if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                    MgtvLoopVideoView.this.mOnWarningListener.onTsSkip(str, i, i2);
                }
            }

            @Override
            public void onWarning(int i, String str, String str2, Object obj) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "player render warning:" + i + ",extra:" + str + ",msg:" + str2);
                if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                    MgtvLoopVideoView.this.mOnWarningListener.onWarning(i, str, str2, obj);
                }
            }
        };
        this.mGifRecorder = new GifRecorder();
        this.mStartListener = new MgtvPlayerListener.OnStartListener() {
            @Override
            public void onStart() {
                DebugLog.d(MgtvLoopVideoView.this.getLogTag(), "mgtvcore onStart");
                if (MgtvLoopVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvLoopVideoView.this.callbackOnStart();
                }
            }
        };
        this.mPauseListener = new MgtvPlayerListener.OnPauseListener() {
            @Override
            public void onPause() {
                DebugLog.d(MgtvLoopVideoView.this.getLogTag(), "mgtvcore onPause");
                if (MgtvLoopVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvLoopVideoView.this.callbackOnPause();
                }
            }
        };
        this.mRecordVideoListener = new MgtvPlayerListener.OnRecordVideoListener() {
            @Override
            public void onRecordVideoErr(int i, int i2) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onRecordVideoErr what:" + i + ",extra:" + i2);
                if (MgtvLoopVideoView.this.mOnRecordListener != null) {
                    MgtvLoopVideoView.this.mOnRecordListener.onRecordError(i, i2);
                }
            }

            @Override
            public void onRecordVideoInfo(int i, int i2) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onRecordVideoInfo what:" + i + ",extra:" + i2);
                if (MgtvLoopVideoView.this.mOnRecordListener != null) {
                    if (i == 20) {
                        MgtvLoopVideoView.this.mOnRecordListener.onRecordStart(MgtvLoopVideoView.this.mRecordFilePath);
                    } else if (i == 30) {
                        MgtvLoopVideoView.this.mOnRecordListener.onRecordStop();
                    }
                    MgtvLoopVideoView.this.mOnRecordListener.onRecordInfo(i, i2);
                }
            }
        };
        this.mLoadDataListener = new MgtvPlayerListener.OnLoadDataListener() {
            @Override
            public void onAfterLoadDataPaused() {
                if (MgtvLoopVideoView.this.mOnLoadDataListener != null) {
                    MgtvLoopVideoView.this.mOnLoadDataListener.onAfterLoadDataPaused();
                }
            }

            @Override
            public void onBeforeLoadDataResume() {
                if (MgtvLoopVideoView.this.mOnLoadDataListener != null) {
                    MgtvLoopVideoView.this.mOnLoadDataListener.onBeforeLoadDataResume();
                }
            }
        };
        initVideoView(context);
    }

    private void initVideoView(Context context, int i) {
        this.mContext = context;
        this.metrics = context.getResources().getDisplayMetrics();
        this.mRenderViewType = i;
        this.mInitRenderViewType = i;
        if (i == 0) {
            this.mEnableTexture = false;
        }
        c cVar = new c(context);
        this.mFakeFrameView = cVar;
        addView(cVar, new FrameLayout.LayoutParams(-2, -2, 17));
        toggleRenders(i);
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        if (!Constants.FOR_OTT) {
            setFocusable(true);
            setFocusableInTouchMode(true);
            requestFocus();
        }
        if (context instanceof Activity) {
            ((Activity) context).setVolumeControlStream(3);
        }
        checkMemoryStatus(this.mContext);
        changeCurrentState(0);
        this.mTargetState = 0;
    }

    private void openVideo(boolean z) {
        MgtvMediaPlayer mgtvMediaPlayer;
        int i;
        SurfaceHolder surfaceHolder;
        this.mErrorMsg = "";
        if (this.mCurrentUri == null || this.mSurfaceHolder == null) {
            DebugLog.e(getLogTag(), "imgo openVideo: not ready for playback just yet, will try again later, mCurrentUri:" + this.mCurrentUri + ", mSurfaceHolder:" + this.mSurfaceHolder);
            if (this.mCurrentUri == null || this.mSurfaceHolder != null) {
                return;
            }
            this.mNonSurfaceHolderPVTimestamp = System.currentTimeMillis();
            this.mOpenVideoWhenSurfaceCreate = true;
            return;
        }
        MgtvRenderView mgtvRenderView = this.mRenderView;
        if (mgtvRenderView == null) {
            MgtvPlayerListener.OnErrorListener onErrorListener = this.mErrorListener;
            if (onErrorListener != null) {
                onErrorListener.onError(IVideoView.MEDIA_ERROR_NULLPOINT, 0);
            }
            this.mErrorMsg = "openVideo renderView is null";
            DebugLog.e(getLogTag(), this.mErrorMsg);
            return;
        }
        if (mgtvRenderView.getRenderViewType() == 0 && ((surfaceHolder = this.mSurfaceHolder.getSurfaceHolder()) == null || surfaceHolder.getSurface() == null || !surfaceHolder.getSurface().isValid())) {
            MgtvPlayerListener.OnErrorListener onErrorListener2 = this.mErrorListener;
            if (onErrorListener2 != null) {
                onErrorListener2.onError(IVideoView.MEDIA_ERROR_SURFACE_FAILED, 0);
            }
            this.mErrorMsg = "openVideo surface is invalid";
            if (surfaceHolder != null) {
                DebugLog.e(getLogTag(), "openVideo surface is invalid " + surfaceHolder.getSurface());
                return;
            }
            return;
        }
        if (this.isRequestAudioFocus) {
            requestAudioFocus();
        }
        release(false, true);
        try {
            Bundle bundle = new Bundle();
            bundle.putString("BUNDLE_KEY_LOG_TAG_KEY", getLogTagKey());
            if (this.mUseSystemPlayer) {
                mgtvMediaPlayer = new MgtvMediaPlayer(0, this.mContext, false, bundle);
            } else {
                if (this.mIsLiveConfig) {
                    i = 1;
                } else if (this.mTargetIsLoopMode) {
                    this.mIsLoopMode = true;
                    i = 2;
                } else {
                    i = 0;
                }
                if (!z) {
                    this.mEnableTexture = false;
                    mgtvMediaPlayer = new MgtvMediaPlayer(1, this.mContext, this.mEnableTexture, i, bundle);
                } else if (this.mIsLoopMode) {
                    mgtvMediaPlayer = mgtvMediaPlayer;
                    MgtvMediaPlayer mgtvMediaPlayer2 = new MgtvMediaPlayer(2, this.mContext, this.mEnableTexture, i, bundle);
                } else {
                    this.mEnableTexture = false;
                    mgtvMediaPlayer = new MgtvMediaPlayer(2, this.mContext, this.mEnableTexture, i, bundle);
                }
            }
            this.mMediaPlayer = mgtvMediaPlayer;
            this.mMediaPlayer.setFlowDataStatistic(this.mFlowDataStatistic);
            this.mMediaPlayer.setReportParams(this.mReportParams);
            configImgoPlayer();
            super.initListener(this.mMediaPlayer);
            this.mMediaPlayer.setOnPreparedListener(this.mPreparedListener);
            this.mMediaPlayer.setOnStartListener(this.mStartListener);
            this.mMediaPlayer.setOnPauseListener(this.mPauseListener);
            this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
            this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
            this.mMediaPlayer.setOnInfoListener(this.mInfoListener);
            this.mMediaPlayer.setOnErrorListener(this.mErrorListener);
            this.mMediaPlayer.setOnBufferingUpdateListener(this.mBufferingUpdateListener);
            this.mMediaPlayer.setOnSeekCompleteListener(this.mSeekCompleteListener);
            this.mMediaPlayer.setOnBufferingTimeoutListener(this.mBufferingTimeoutListener);
            this.mMediaPlayer.setOnSwitchSourceListener(this.mSwitchSourceListener);
            this.mMediaPlayer.setOnWarningListener(this.mPlayerWarning);
            this.mMediaPlayer.setOnRecordVideoListener(this.mRecordVideoListener);
            this.mMediaPlayer.setOnLoadDataListener(this.mLoadDataListener);
            this.mFromSurfaceDestroyToPlay = false;
            this.mHasSurfaceHolderDestroy = false;
            if (this.mReadDataSourceTypeConfig == 3 && this.mDataSource != null) {
                this.mMediaPlayer.setReadDataSourceType(3);
                this.mMediaPlayer.setDataSource(this.mDataSource);
                DebugLog.i(getLogTag(), "setDataSource READ_DATASOURCE_TYPE_DATA_SOURCE");
            } else if (this.mMainP2pTask == null && this.mProxyUri == null) {
                this.mMediaPlayer.setReadDataSourceType(0);
                this.mMediaPlayer.setDataSource(this.mCurrentUri.toString());
            } else {
                MgtvMediaPlayer mgtvMediaPlayer3 = this.mMediaPlayer;
                String string = this.mCurrentUri.toString();
                IP2pTask iP2pTask = this.mMainP2pTask;
                Uri uri = this.mProxyUri;
                mgtvMediaPlayer3.setP2pDataSource(string, iP2pTask, uri != null ? uri.toString() : null, this.mStreamKey);
            }
            this.mMediaPlayer.setSurfaceHolder(this.mSurfaceHolder);
            this.mMediaPlayer.setAudioStreamType(3);
            this.mMediaPlayer.setScreenOnWhilePlaying(this.mIsScreenOnWhilePlaying);
            this.mMediaPlayer.prepareAsync();
            changeCurrentState(1);
            DebugLog.i(getLogTag(), "openVideo is over");
        } catch (com.hunantv.media.player.loader.c e) {
            DebugLog.e(getLogTag(), "LibLoaderError: " + this.mCurrentUri + "details:" + e.getMessage() + ",extra:" + e.a());
            this.mErrorMsg = e.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_LIB_NOTLOAD, e.a());
        } catch (IOException e2) {
            DebugLog.w(getLogTag(), "Unable to open content: " + this.mCurrentUri);
            this.mErrorMsg = e2.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_IO, 0);
        } catch (IllegalArgumentException e3) {
            DebugLog.w(getLogTag(), "Unable to open content: " + this.mCurrentUri + ",details:" + e3.getMessage());
            this.mErrorMsg = e3.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_ILLEGAL_ARGUMENT, 0);
        } catch (IllegalStateException e4) {
            DebugLog.w(getLogTag(), "Unable to open content: " + this.mCurrentUri);
            this.mErrorMsg = e4.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_ILLEGAL_STATE, 0);
        } catch (NullPointerException e5) {
            DebugLog.i(getLogTag(), "NullPointerException: " + this.mCurrentUri + ",details:" + e5.getMessage());
            this.mErrorMsg = e5.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_NULLPOINT, 0);
        } catch (SecurityException e6) {
            DebugLog.i(getLogTag(), "SecurityException: " + this.mCurrentUri + ",details:" + e6.getMessage());
            this.mErrorMsg = e6.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SECURITY, 0);
        } catch (UnsatisfiedLinkError e7) {
            DebugLog.i(getLogTag(), "UnsatisfiedLinkError: " + this.mCurrentUri + ",details:" + e7.getMessage());
            this.mErrorMsg = e7.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_LIB_NOTLOAD, 0);
        } catch (InvalidParameterException e8) {
            DebugLog.w(getLogTag(), "Unable to open content: " + this.mCurrentUri);
            this.mErrorMsg = e8.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SURFACE_FAILED, 3);
        } catch (Exception e9) {
            DebugLog.w(getLogTag(), "Unable to open content: " + this.mCurrentUri + ",details:" + e9.getMessage());
            this.mErrorMsg = e9.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_OPENVIDEO_FAILED, 0);
        } catch (Throwable th) {
            DebugLog.i(getLogTag(), "Throwable: " + this.mCurrentUri + ",details:" + th.getMessage());
            this.mErrorMsg = th.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_OPENVIDEO_FAILED, 1);
        }
    }

    public void release(boolean z, boolean z2) {
        DebugLog.i(getLogTag(), "release player.clear.cleartargetstate:" + z);
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            if (z) {
                mgtvMediaPlayer.stop();
            }
            resetDataBefore(z2 ? MgtvAbstractVideoView.ReleaseReason.DEFAULT_INNER : MgtvAbstractVideoView.ReleaseReason.OUT);
            releaseNoStatus();
            changeCurrentState(0);
            if (z) {
                this.mTargetState = 0;
            }
            resetDataAfter(z2 ? MgtvAbstractVideoView.ReleaseReason.DEFAULT_INNER : MgtvAbstractVideoView.ReleaseReason.OUT);
        }
        if (z2) {
            return;
        }
        abandonAudioFocus();
    }

    @Override
    public void changeSourceAsync(String str, int i, int i2, int i3) {
        IVideoView.OnChangeSourceListener onChangeSourceListener;
        int i4;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            try {
                mgtvMediaPlayer.switchVideoSource(str, i, i2, i3);
                DebugLog.e(getLogTag(), "changeSourceAsync url:" + str);
                DebugLog.e(getLogTag(), "changeSourceAsync src:" + i2 + ",dst:" + i3);
            } catch (IOException e) {
                e.printStackTrace();
                onChangeSourceListener = this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    i4 = IVideoView.MEDIA_ERROR_ILLEGAL_ARGUMENT;
                    onChangeSourceListener.onChangeSourceFailed(str, i4, 0);
                }
            } catch (Exception unused) {
                onChangeSourceListener = this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    i4 = IVideoView.MEDIA_ERROR_OPENVIDEO_FAILED;
                    onChangeSourceListener.onChangeSourceFailed(str, i4, 0);
                }
            }
        }
    }

    @Override
    public void resetVideoPath(String str) throws Throwable {
        resetVideoPath(str, null, null);
    }

    @Override
    public void seekTo(int i, boolean z) {
        if (isInPlaybackState()) {
            if (i >= 0) {
                if (this.mFromSurfaceDestroyToPlay) {
                    this.mFromSurfaceDestroyPlayPosition = i;
                }
                DebugLog.i(getLogTag(), "seekTo msec:" + i);
                if (this.mMediaPlayer.isLoadDataPaused()) {
                    DebugLog.i(getLogTag(), "seekTo resumeLoadData");
                    this.mMediaPlayer.resumeLoadData();
                }
                this.mMediaPlayer.seekTo(i, z);
                if (this.mSeekAutoStartAfterCompleteEnable && this.mCurrentState == 5) {
                    callbackOnStart();
                }
            }
            i = 0;
        }
        this.mSeekWhenPrepared = i;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x006a  */
    @Override
    public void setNetAddrinfo(int i, int i2, boolean z) {
        MgtvMediaPlayer.AddrinfoType addrinfoType;
        boolean z2 = true;
        this.mNativeDnsAsyncEnable = true;
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null && ((reportParams.getVideoType() == ReportParams.VideoType.AD_PRE || this.mReportParams.getVideoType() == ReportParams.VideoType.AD_MID || this.mReportParams.getVideoType() == ReportParams.VideoType.AD_BOOT) && i > 3)) {
            i = 3;
        }
        DebugLog.i(getLogTag(), "setNetAddrinfo " + i + ",timeout:" + i2 + ",enablePreDns:false");
        this.mAddrInfoTypeInt = i;
        this.mEnableMgtvMediaCodec = false;
        if (this.mDnsFamilyType != 1) {
            addrinfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
            this.mAddrInfoType = addrinfoType;
            z2 = false;
        } else {
            if (i == 1) {
                addrinfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_THREAD;
            } else if (i == 2) {
                addrinfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_ONE_BY_ONE;
            } else if (i == 3) {
                addrinfoType = MgtvMediaPlayer.AddrinfoType.TYPE_DNS_CACHE;
            } else if (i != 4) {
                if (i == 9) {
                    this.mNativeDnsAsyncEnable = false;
                } else if (i != 20) {
                    addrinfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
                } else {
                    this.mEnableMgtvMediaCodec = true;
                }
                z2 = false;
            } else {
                this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_DNS_CACHE;
                this.mJavaDnsType = a.b.FREE_HTTP_DNS;
            }
            this.mAddrInfoType = addrinfoType;
            z2 = false;
        }
        if (i2 > 0) {
            this.mAddrInfoTimeoutMs = i2 * 1000;
        }
        this.mJavaDnsEnable = z2;
    }

    @Override
    public void setVideoPath(String str, IP2pTask iP2pTask, String str2) {
        DebugLog.i(getLogTag(), "setVideoPath path " + str + ",proxyPath:" + str2);
        this.mNeedResetLoopPlay = false;
        boolean z = this.mEnableTexture;
        this.mRebindTexture = false;
        this.mMainP2pTask = iP2pTask;
        this.mProxyUri = StringUtil.isEmpty(str2) ? null : Uri.parse(str2.trim());
        if (str == null) {
            this.mErrorListener.onError(7000011, 11);
        } else {
            setVideoURI(Uri.parse(str.trim()));
        }
    }

    public MgtvLoopVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLastSurfaceDestroy = true;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMgtvMediaPlayerHardwareMode = false;
        this.mForceDecodeMode = false;
        this.mFromSurfaceDestroyToPlay = false;
        this.mFromSurfaceDestroyPlayPosition = 0;
        this.mErrorMsg = "";
        this.mHasSurfaceHolderDestroy = false;
        this.mLogCallBackOpen = true;
        this.mStreamKey = -1;
        this.mIsLive = false;
        this.mIsDataLoaderPaused = false;
        this.mUseSystemPlayer = false;
        this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrInfoTypeInt = 0;
        this.mJavaDnsType = a.b.NORMAL;
        this.mNativeDnsAsyncEnable = true;
        this.mEnableMgtvMediaCodec = false;
        this.mWeakNetSpeed = 0;
        this.mWeakBufferTimeoutMs = 0;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 0;
        this.mUserEnableCoreStartPauseListen = false;
        this.mEnableCoreStartPauseListen = false;
        this.mIsScreenOnWhilePlaying = true;
        this.mPlaySpeed = 1.0f;
        this.mLiveStartIndex = 0;
        this.mIsSecure = false;
        this.mAspectRatio = -1;
        this.mRenderFilter = IVideoView.RenderFilter.NORMAL;
        this.mIsLiveConfig = false;
        this.mEnableLiveMode = false;
        this.mTargetIsLoopMode = false;
        this.mIsLoopMode = false;
        this.mStartPosMs = 0;
        this.mNeedResetLoopPlay = false;
        this.mFlowDataStatistic = new FlowDataStatistic();
        this.mSkipLoopFilterType = MgtvMediaPlayer.SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mSHCallback = new IMgtvRenderView.IRenderCallback() {
            /* JADX WARN: Code duplicated, block: B:12:0x0026  */
            /* JADX WARN: Code duplicated, block: B:15:0x002d  */
            /* JADX WARN: Code duplicated, block: B:17:0x003a  */
            /* JADX WARN: Code duplicated, block: B:18:0x003e  */
            /* JADX WARN: Code duplicated, block: B:20:0x0046  */
            /* JADX WARN: Code duplicated, block: B:31:0x0081  */
            /* JADX WARN: Code duplicated, block: B:33:0x0087  */
            private void bindHolder(IMgtvRenderView.ISurfaceHolder iSurfaceHolder) throws Throwable {
                MgtvLoopVideoView mgtvLoopVideoView;
                MgtvLoopVideoView mgtvLoopVideoView2;
                MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                if (mgtvLoopVideoView3.mMediaPlayer == null) {
                    mgtvLoopVideoView3.openVideo();
                    return;
                }
                if (mgtvLoopVideoView3.mHasSurfaceHolderDestroy && mgtvLoopVideoView3.mRebindTexture) {
                    MgtvLoopVideoView mgtvLoopVideoView4 = MgtvLoopVideoView.this;
                    if (mgtvLoopVideoView4.mCurrentUri != null) {
                        mgtvLoopVideoView4.setStartPosMs(mgtvLoopVideoView4.mMediaPlayer.getCurrentPosition());
                    } else if (!needOpenVideo()) {
                        MgtvLoopVideoView.this.mMediaPlayer.setSurfaceHolder(iSurfaceHolder);
                        mgtvLoopVideoView = MgtvLoopVideoView.this;
                        if (mgtvLoopVideoView.mNeedResetLoopPlay) {
                            mgtvLoopVideoView.resetVideoPath();
                        } else {
                            if (mgtvLoopVideoView.mMediaPlayer.isLoadDataPaused()) {
                                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "bindHolder resumeLoadData");
                                MgtvLoopVideoView.this.mMediaPlayer.resumeLoadData();
                            }
                            mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                            if (mgtvLoopVideoView2.mFromSurfaceDestroyToPlay) {
                                if (mgtvLoopVideoView2.mLastFrameRecovery) {
                                    MgtvLoopVideoView.this.mMediaPlayer.setPlaybackStep();
                                }
                            } else if (mgtvLoopVideoView2.mLastFrameRecovery) {
                                MgtvLoopVideoView.this.mMediaPlayer.setPlaybackStep();
                            }
                        }
                        MgtvLoopVideoView mgtvLoopVideoView8 = MgtvLoopVideoView.this;
                        mgtvLoopVideoView8.mSizeChangedListener.onVideoSizeChanged(mgtvLoopVideoView8.mMediaPlayer.getVideoWidth(), MgtvLoopVideoView.this.mMediaPlayer.getVideoHeight());
                        return;
                    }
                } else if (!needOpenVideo()) {
                    MgtvLoopVideoView.this.mMediaPlayer.setSurfaceHolder(iSurfaceHolder);
                    mgtvLoopVideoView = MgtvLoopVideoView.this;
                    if (mgtvLoopVideoView.mNeedResetLoopPlay) {
                        mgtvLoopVideoView.resetVideoPath();
                    } else {
                        if (mgtvLoopVideoView.mMediaPlayer.isLoadDataPaused()) {
                            DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "bindHolder resumeLoadData");
                            MgtvLoopVideoView.this.mMediaPlayer.resumeLoadData();
                        }
                        mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                        if (mgtvLoopVideoView2.mFromSurfaceDestroyToPlay || mgtvLoopVideoView2.mCurrentUri == null) {
                            if (mgtvLoopVideoView2.mLastFrameRecovery && (!MgtvLoopVideoView.this.isHardware() || MgtvLoopVideoView.this.mLastSurfaceDestroy)) {
                                MgtvLoopVideoView.this.mMediaPlayer.setPlaybackStep();
                            }
                        } else if (mgtvLoopVideoView2.mMgtvMediaPlayerHardwareMode) {
                            MgtvLoopVideoView mgtvLoopVideoView6 = MgtvLoopVideoView.this;
                            mgtvLoopVideoView6.mFromSurfaceDestroyToPlay = false;
                            if (!mgtvLoopVideoView6.mIsLoopMode) {
                                mgtvLoopVideoView6.mMediaPlayer.seekTo(mgtvLoopVideoView6.mFromSurfaceDestroyPlayPosition, false, true);
                            }
                            MgtvLoopVideoView.this.mFromSurfaceDestroyPlayPosition = 0;
                        }
                    }
                    MgtvLoopVideoView mgtvLoopVideoView9 = MgtvLoopVideoView.this;
                    mgtvLoopVideoView9.mSizeChangedListener.onVideoSizeChanged(mgtvLoopVideoView9.mMediaPlayer.getVideoWidth(), MgtvLoopVideoView.this.mMediaPlayer.getVideoHeight());
                    return;
                }
                MgtvLoopVideoView.this.openVideo();
            }

            private boolean needOpenVideo() {
                return MgtvLoopVideoView.this.mOpenVideoWhenSurfaceCreate && MgtvLoopVideoView.this.mCurrentUri != null;
            }

            @Override
            public void onSurfaceChanged(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, int i2, int i3, int i4) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface changed");
                if (iSurfaceHolder.getRenderView() != MgtvLoopVideoView.this.mRenderView.getRenderView()) {
                    DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSurfaceChanged: unmatched render callback\n");
                    return;
                }
                MgtvLoopVideoView.this.mSurfaceWidth = i3;
                MgtvLoopVideoView.this.mSurfaceHeight = i4;
                boolean z = true;
                boolean z2 = MgtvLoopVideoView.this.mTargetState == 3;
                if (MgtvLoopVideoView.this.mRenderView.shouldWaitForResize() && (MgtvLoopVideoView.this.mVideoWidth != i3 || MgtvLoopVideoView.this.mVideoHeight != i4)) {
                    z = false;
                }
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                if (mgtvLoopVideoView.mMediaPlayer != null && z2 && z) {
                    if (!mgtvLoopVideoView.mIsLoopMode && mgtvLoopVideoView.mSeekWhenPrepared != 0) {
                        MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                        mgtvLoopVideoView2.seekTo(mgtvLoopVideoView2.mSeekWhenPrepared, false);
                    }
                    MgtvLoopVideoView.this.start();
                }
                if (MgtvLoopVideoView.this.mSurfaceHolderListener != null) {
                    MgtvLoopVideoView.this.mSurfaceHolderListener.surfaceChanged();
                }
            }

            @Override
            public void onSurfaceCreated(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, int i2, int i3) throws Throwable {
                SurfaceHolder surfaceHolder;
                if (MgtvLoopVideoView.this.mStartLeaveTimestamp > 0) {
                    long jCurrentTimeMillis = (System.currentTimeMillis() - MgtvLoopVideoView.this.mStartLeaveTimestamp) / 1000;
                    if (jCurrentTimeMillis > 540) {
                        if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                            MgtvLoopVideoView.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_LEAVE_TIME_INVALID, MgtvLoopVideoView.this.mCurrentState + "", "", null);
                        }
                        ReportParams reportParams = MgtvLoopVideoView.this.mReportParams;
                        if (reportParams != null) {
                            reportParams.setLeaveTimeS(jCurrentTimeMillis);
                        }
                    }
                }
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface create");
                MgtvMediaPlayer mgtvMediaPlayer = MgtvLoopVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null && mgtvMediaPlayer.isLoadDataPaused()) {
                    DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "bindHolder resumeLoadData");
                    MgtvLoopVideoView.this.mMediaPlayer.resumeLoadData();
                }
                if (iSurfaceHolder.getRenderView() != MgtvLoopVideoView.this.mRenderView.getRenderView()) {
                    DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSurfaceCreated: unmatched render callback\n");
                    return;
                }
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onSurfaceCreated " + iSurfaceHolder);
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.mSurfaceHolder = iSurfaceHolder;
                if (mgtvLoopVideoView.mRenderView.getRenderViewType() == 0 && ((surfaceHolder = MgtvLoopVideoView.this.mSurfaceHolder.getSurfaceHolder()) == null || surfaceHolder.getSurface() == null || !surfaceHolder.getSurface().isValid())) {
                    MgtvLoopVideoView.this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SURFACE_FAILED, 1);
                    MgtvLoopVideoView.this.mErrorMsg = "surfaceCreated surface is invalid";
                } else {
                    bindHolder(iSurfaceHolder);
                }
                if (MgtvLoopVideoView.this.mSurfaceHolderListener != null) {
                    MgtvLoopVideoView.this.mSurfaceHolderListener.surfaceCreated();
                }
            }

            @Override
            public void onSurfaceDestroyed(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, boolean z) {
                MgtvLoopVideoView.this.mLastSurfaceDestroy = z;
                if (iSurfaceHolder.getRenderView() != MgtvLoopVideoView.this.mRenderView.getRenderView()) {
                    DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSurfaceDestroyed: unmatched render callback\n");
                    return;
                }
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onSurfaceDestroyed " + iSurfaceHolder);
                if (MgtvLoopVideoView.this.mSurfaceHolderListener != null) {
                    MgtvLoopVideoView.this.mSurfaceHolderListener.surfaceDestroyed();
                }
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.mSurfaceHolder = null;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvLoopVideoView.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.setSurfaceHolder(null);
                    if (MgtvLoopVideoView.this.isPrepared()) {
                        MgtvLoopVideoView.this.pauseLoadData();
                        if (MgtvLoopVideoView.this.mIsLive) {
                            DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface destroy to pause");
                        } else {
                            DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface destroy to pause");
                            if (MgtvLoopVideoView.this.mRenderView.getRenderViewType() == 0) {
                                if (!MgtvLoopVideoView.this.mMediaPlayer.isSupportAMCKeyFrameBackup()) {
                                    MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                                    mgtvLoopVideoView2.mFromSurfaceDestroyToPlay = true;
                                    mgtvLoopVideoView2.mFromSurfaceDestroyPlayPosition = mgtvLoopVideoView2.mMediaPlayer.getCurrentPosition();
                                }
                            } else if (MgtvLoopVideoView.this.mRenderView.getRenderViewType() == 1) {
                                if (!MgtvLoopVideoView.this.isHardware()) {
                                    MgtvLoopVideoView.this.mFromSurfaceDestroyToPlay = true;
                                }
                                MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                                if (!mgtvLoopVideoView3.mIsLoopMode && mgtvLoopVideoView3.mEnableTexture) {
                                    mgtvLoopVideoView3.mHasSurfaceHolderDestroy = true;
                                }
                            }
                        }
                        MgtvLoopVideoView.this.pauseInner();
                    } else {
                        try {
                            ReportParams reportParams = MgtvLoopVideoView.this.mReportParams;
                            if (reportParams != null) {
                                reportParams.getEnd().setInnerRetry(true);
                            }
                            MgtvLoopVideoView.this.release(true, true);
                        } catch (Exception unused) {
                        }
                    }
                    MgtvLoopVideoView mgtvLoopVideoView4 = MgtvLoopVideoView.this;
                    if (mgtvLoopVideoView4.mCurrentUri == null || mgtvLoopVideoView4.mCurrentState == -1 || MgtvLoopVideoView.this.mCurrentState == 5) {
                        return;
                    }
                    MgtvLoopVideoView.this.mStartLeaveTimestamp = System.currentTimeMillis();
                }
            }
        };
        this.mFilterCallback = new f.a() {
            @Override
            public void onInfo(int i2, int i3, String str) {
                if (i2 == 1) {
                    MgtvLoopVideoView.this.mRenderType = i3;
                    MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                    ReportParams reportParams = mgtvLoopVideoView.mReportParams;
                    if (reportParams != null) {
                        reportParams.setRenderType(mgtvLoopVideoView.mRenderType);
                        return;
                    }
                    return;
                }
                if (i2 != 3) {
                    return;
                }
                MgtvLoopVideoView.this.mEnhanceQualityType = i3;
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                ReportParams reportParams2 = mgtvLoopVideoView2.mReportParams;
                if (reportParams2 != null) {
                    reportParams2.setEnhanceQualityType(mgtvLoopVideoView2.mEnhanceQualityType);
                }
            }
        };
        this.mRenderWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "opengl render warning:" + i2 + ",extra:" + str + ",msg:" + str2);
                if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                    MgtvLoopVideoView.this.mOnWarningListener.onWarning(i2, str, str2, obj);
                }
            }
        };
        this.mSizeChangedListener = new MgtvPlayerListener.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.originalVideoWidth = mgtvLoopVideoView.mVideoWidth = mgtvLoopVideoView.mMediaPlayer.getVideoWidth();
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                mgtvLoopVideoView2.originalVideoHeight = mgtvLoopVideoView2.mVideoHeight = mgtvLoopVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvLoopVideoView.this.mVideoWidth != 0 && MgtvLoopVideoView.this.mVideoHeight != 0) {
                    MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                    MgtvRenderView mgtvRenderView = mgtvLoopVideoView3.mRenderView;
                    if (mgtvRenderView != null) {
                        mgtvRenderView.setVideoSize(mgtvLoopVideoView3.mVideoWidth, MgtvLoopVideoView.this.mVideoHeight);
                    }
                    MgtvLoopVideoView.this.requestLayout();
                }
                if (MgtvLoopVideoView.this.mOnVideoSizeChangedListener != null) {
                    MgtvLoopVideoView.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i2, i3);
                }
            }
        };
        this.mPreparedListener = new MgtvPlayerListener.OnPreparedListener() {
            /* JADX WARN: Code duplicated, block: B:23:0x00b6  */
            @Override
            public void onPrepared() {
                MgtvLoopVideoView.this.changeCurrentState(2);
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.originalVideoWidth = mgtvLoopVideoView.mVideoWidth = mgtvLoopVideoView.mMediaPlayer.getVideoWidth();
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                mgtvLoopVideoView2.originalVideoHeight = mgtvLoopVideoView2.mVideoHeight = mgtvLoopVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvLoopVideoView.this.mVideoWidth != 0 && MgtvLoopVideoView.this.mVideoHeight != 0) {
                    DebugLog.i("@@@@", "video size: " + MgtvLoopVideoView.this.mVideoWidth + "/" + MgtvLoopVideoView.this.mVideoHeight);
                    MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                    MgtvRenderView mgtvRenderView = mgtvLoopVideoView3.mRenderView;
                    if (mgtvRenderView != null) {
                        mgtvRenderView.setVideoSize(mgtvLoopVideoView3.mVideoWidth, MgtvLoopVideoView.this.mVideoHeight);
                    }
                    int i2 = MgtvLoopVideoView.this.mSeekWhenPrepared;
                    if (i2 != 0) {
                        MgtvLoopVideoView.this.seekTo(i2);
                    }
                    if ((!MgtvLoopVideoView.this.mRenderView.shouldWaitForResize() || (MgtvLoopVideoView.this.mSurfaceWidth == MgtvLoopVideoView.this.mVideoWidth && MgtvLoopVideoView.this.mSurfaceHeight == MgtvLoopVideoView.this.mVideoHeight)) && MgtvLoopVideoView.this.mTargetState == 3) {
                        MgtvLoopVideoView.this.start();
                    }
                } else if (MgtvLoopVideoView.this.mTargetState == 3) {
                    MgtvLoopVideoView.this.start();
                }
                if (MgtvLoopVideoView.this.mOnPreparedListener != null) {
                    MgtvLoopVideoView.this.mOnPreparedListener.onPrepared();
                }
            }
        };
        this.mCompletionListener = new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i2, int i3) {
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                if (i2 != 0) {
                    mgtvLoopVideoView.changeCurrentState(0);
                    MgtvLoopVideoView.this.mTargetState = 0;
                    MgtvLoopVideoView.this.stopInner();
                } else {
                    mgtvLoopVideoView.changeCurrentState(5);
                    MgtvLoopVideoView.this.mTargetState = 5;
                }
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "-------------on onCompletion what:" + i2 + ",extra:" + i3);
                if (MgtvLoopVideoView.this.mOnCompletionListener != null) {
                    MgtvLoopVideoView.this.mOnCompletionListener.onCompletion(i2, i3);
                }
            }
        };
        this.mInfoListener = new MgtvPlayerListener.OnInfoListener() {
            /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
                	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
                	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
                	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
                */
            @Override
            public boolean onInfo(int r5, int r6) {
                /*
                    Method dump skipped, instruction units count: 718
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hunantv.media.widget.MgtvLoopVideoView.AnonymousClass7.onInfo(int, int):boolean");
            }
        };
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            @Override
            public boolean onError(int i2, int i3) {
                DebugLog.w(MgtvLoopVideoView.this.getLogTag(), "onError what:" + i2 + ",extra:" + i3);
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvLoopVideoView.mMediaPlayer;
                if (mgtvMediaPlayer == null || i2 != 7000006) {
                    if (mgtvMediaPlayer != null && mgtvLoopVideoView.mCurrentState != -1) {
                        MgtvLoopVideoView.this.mMediaPlayer.stop();
                    }
                    MgtvLoopVideoView.this.changeCurrentState(-1);
                    MgtvLoopVideoView.this.mTargetState = -1;
                } else {
                    mgtvLoopVideoView.releaseNoStatus();
                    MgtvLoopVideoView.this.changeCurrentState(0);
                    MgtvLoopVideoView.this.mTargetState = 0;
                }
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                mgtvLoopVideoView2.mCurrentUri = null;
                mgtvLoopVideoView2.mProxyUri = null;
                return mgtvLoopVideoView2.mOnErrorListener != null && MgtvLoopVideoView.this.mOnErrorListener.onError(i2, i3);
            }
        };
        this.mSeekCompleteListener = new MgtvPlayerListener.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(int i2, int i3) {
                if (MgtvLoopVideoView.this.mOnSeekCompleteListener != null) {
                    DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onSeekComplete seekTargetTime:" + i2 + ",errorCode:" + i3);
                    MgtvLoopVideoView.this.mOnSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mBufferingUpdateListener = new MgtvPlayerListener.OnBufferingUpdateListener() {
            @Override
            public void onBufferingUpdate(int i2) {
                if (MgtvLoopVideoView.this.mOnBufferringUpdateListener != null) {
                    MgtvLoopVideoView.this.mOnBufferringUpdateListener.onBufferingUpdate(i2);
                }
            }
        };
        this.mBufferingTimeoutListener = new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i2, int i3) {
                MgtvMediaPlayer mgtvMediaPlayer = MgtvLoopVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.stop();
                }
                MgtvLoopVideoView.this.changeCurrentState(-1);
                MgtvLoopVideoView.this.mTargetState = -1;
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.mCurrentUri = null;
                mgtvLoopVideoView.mProxyUri = null;
                if (mgtvLoopVideoView.mOnErrorListener != null) {
                    MgtvLoopVideoView.this.mOnErrorListener.onError(i2, i3);
                }
                return true;
            }
        };
        this.mSwitchSourceListener = new MgtvPlayerListener.OnSwitchSourceListener() {
            @Override
            public void onSwitchSourceComplete(String str, int i2, int i3) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSwitchSourceComplete url:" + str + ",type:" + i2 + ",time:" + i3);
                if (MgtvLoopVideoView.this.mOnChangeSourceListener != null) {
                    MgtvLoopVideoView.this.mOnChangeSourceListener.onChangeSourceSuccess(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceFailed(String str, int i2, int i3) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSwitchSourceFailed url:" + str + ",what:" + i2 + ",extra:" + i3);
                if (MgtvLoopVideoView.this.mOnChangeSourceListener != null) {
                    MgtvLoopVideoView.this.mOnChangeSourceListener.onChangeSourceFailed(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceInfo(String str, int i2, int i3) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSwitchSourceInfo url:" + str + ",event:" + i2 + ",time:" + i3);
                if (MgtvLoopVideoView.this.mOnChangeSourceListener != null) {
                    MgtvLoopVideoView.this.mOnChangeSourceListener.onChangeSourceInfo(str, i2, i3);
                }
            }
        };
        this.mPlayerWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onTsSkip tsUrl:" + str);
                if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                    MgtvLoopVideoView.this.mOnWarningListener.onTsSkip(str, i2, i3);
                }
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "player render warning:" + i2 + ",extra:" + str + ",msg:" + str2);
                if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                    MgtvLoopVideoView.this.mOnWarningListener.onWarning(i2, str, str2, obj);
                }
            }
        };
        this.mGifRecorder = new GifRecorder();
        this.mStartListener = new MgtvPlayerListener.OnStartListener() {
            @Override
            public void onStart() {
                DebugLog.d(MgtvLoopVideoView.this.getLogTag(), "mgtvcore onStart");
                if (MgtvLoopVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvLoopVideoView.this.callbackOnStart();
                }
            }
        };
        this.mPauseListener = new MgtvPlayerListener.OnPauseListener() {
            @Override
            public void onPause() {
                DebugLog.d(MgtvLoopVideoView.this.getLogTag(), "mgtvcore onPause");
                if (MgtvLoopVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvLoopVideoView.this.callbackOnPause();
                }
            }
        };
        this.mRecordVideoListener = new MgtvPlayerListener.OnRecordVideoListener() {
            @Override
            public void onRecordVideoErr(int i2, int i3) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onRecordVideoErr what:" + i2 + ",extra:" + i3);
                if (MgtvLoopVideoView.this.mOnRecordListener != null) {
                    MgtvLoopVideoView.this.mOnRecordListener.onRecordError(i2, i3);
                }
            }

            @Override
            public void onRecordVideoInfo(int i2, int i3) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onRecordVideoInfo what:" + i2 + ",extra:" + i3);
                if (MgtvLoopVideoView.this.mOnRecordListener != null) {
                    if (i2 == 20) {
                        MgtvLoopVideoView.this.mOnRecordListener.onRecordStart(MgtvLoopVideoView.this.mRecordFilePath);
                    } else if (i2 == 30) {
                        MgtvLoopVideoView.this.mOnRecordListener.onRecordStop();
                    }
                    MgtvLoopVideoView.this.mOnRecordListener.onRecordInfo(i2, i3);
                }
            }
        };
        this.mLoadDataListener = new MgtvPlayerListener.OnLoadDataListener() {
            @Override
            public void onAfterLoadDataPaused() {
                if (MgtvLoopVideoView.this.mOnLoadDataListener != null) {
                    MgtvLoopVideoView.this.mOnLoadDataListener.onAfterLoadDataPaused();
                }
            }

            @Override
            public void onBeforeLoadDataResume() {
                if (MgtvLoopVideoView.this.mOnLoadDataListener != null) {
                    MgtvLoopVideoView.this.mOnLoadDataListener.onBeforeLoadDataResume();
                }
            }
        };
        initVideoView(context);
    }

    @Override
    public void resetVideoPath(String str, IP2pTask iP2pTask, String str2) throws Throwable {
        DebugLog.i(getLogTag(), "resetVideoPath path " + str + ",proxyPath:" + str2);
        this.mNonSurfaceHolderPVTimestamp = 0L;
        this.mNeedResetLoopPlay = false;
        if (str == null) {
            this.mErrorListener.onError(7000011, 12);
        } else {
            this.mCurrentUri = Uri.parse(str.trim());
        }
        this.mMainP2pTask = iP2pTask;
        this.mProxyUri = StringUtil.isEmpty(str2) ? null : Uri.parse(str2.trim());
        if (this.mMediaPlayer == null) {
            setVideoPath(str, iP2pTask, str2);
            return;
        }
        this.mRebindTexture = false;
        if (this.mHasSurfaceHolderDestroy) {
            convertRender(this.mRenderViewType);
            return;
        }
        if (isInLoopValidState() && this.mIsLoopMode && !this.mMediaPlayer.isLoopSwitching()) {
            DebugLog.i(getLogTag(), "resetVideoPathLoopImpl in");
            resetVideoPathLoopImpl(str, iP2pTask, str2);
            DebugLog.i(getLogTag(), "resetVideoPathLoopImpl out");
        } else {
            if (this.mMediaPlayer.isLoopSwitching()) {
                DebugLog.i(getLogTag(), "isLoopSwitching change to resetVideoPathNormalImpl");
            }
            DebugLog.i(getLogTag(), "resetVideoPathNormalImpl in");
            resetVideoPathNormalImpl(str, iP2pTask, str2);
            DebugLog.i(getLogTag(), "resetVideoPathNormalImpl in");
        }
    }

    public MgtvLoopVideoView(Context context, IVideoView.Configuration configuration) {
        super(context, configuration);
        this.mLastSurfaceDestroy = true;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMgtvMediaPlayerHardwareMode = false;
        this.mForceDecodeMode = false;
        this.mFromSurfaceDestroyToPlay = false;
        this.mFromSurfaceDestroyPlayPosition = 0;
        this.mErrorMsg = "";
        this.mHasSurfaceHolderDestroy = false;
        this.mLogCallBackOpen = true;
        this.mStreamKey = -1;
        this.mIsLive = false;
        this.mIsDataLoaderPaused = false;
        this.mUseSystemPlayer = false;
        this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrInfoTypeInt = 0;
        this.mJavaDnsType = a.b.NORMAL;
        this.mNativeDnsAsyncEnable = true;
        this.mEnableMgtvMediaCodec = false;
        this.mWeakNetSpeed = 0;
        this.mWeakBufferTimeoutMs = 0;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 0;
        this.mUserEnableCoreStartPauseListen = false;
        this.mEnableCoreStartPauseListen = false;
        this.mIsScreenOnWhilePlaying = true;
        this.mPlaySpeed = 1.0f;
        this.mLiveStartIndex = 0;
        this.mIsSecure = false;
        this.mAspectRatio = -1;
        this.mRenderFilter = IVideoView.RenderFilter.NORMAL;
        this.mIsLiveConfig = false;
        this.mEnableLiveMode = false;
        this.mTargetIsLoopMode = false;
        this.mIsLoopMode = false;
        this.mStartPosMs = 0;
        this.mNeedResetLoopPlay = false;
        this.mFlowDataStatistic = new FlowDataStatistic();
        this.mSkipLoopFilterType = MgtvMediaPlayer.SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mSHCallback = new IMgtvRenderView.IRenderCallback() {
            /* JADX WARN: Code duplicated, block: B:12:0x0026  */
            /* JADX WARN: Code duplicated, block: B:15:0x002d  */
            /* JADX WARN: Code duplicated, block: B:17:0x003a  */
            /* JADX WARN: Code duplicated, block: B:18:0x003e  */
            /* JADX WARN: Code duplicated, block: B:20:0x0046  */
            /* JADX WARN: Code duplicated, block: B:31:0x0081  */
            /* JADX WARN: Code duplicated, block: B:33:0x0087  */
            private void bindHolder(IMgtvRenderView.ISurfaceHolder iSurfaceHolder) throws Throwable {
                MgtvLoopVideoView mgtvLoopVideoView;
                MgtvLoopVideoView mgtvLoopVideoView2;
                MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                if (mgtvLoopVideoView3.mMediaPlayer == null) {
                    mgtvLoopVideoView3.openVideo();
                    return;
                }
                if (mgtvLoopVideoView3.mHasSurfaceHolderDestroy && mgtvLoopVideoView3.mRebindTexture) {
                    MgtvLoopVideoView mgtvLoopVideoView4 = MgtvLoopVideoView.this;
                    if (mgtvLoopVideoView4.mCurrentUri != null) {
                        mgtvLoopVideoView4.setStartPosMs(mgtvLoopVideoView4.mMediaPlayer.getCurrentPosition());
                    } else if (!needOpenVideo()) {
                        MgtvLoopVideoView.this.mMediaPlayer.setSurfaceHolder(iSurfaceHolder);
                        mgtvLoopVideoView = MgtvLoopVideoView.this;
                        if (mgtvLoopVideoView.mNeedResetLoopPlay) {
                            mgtvLoopVideoView.resetVideoPath();
                        } else {
                            if (mgtvLoopVideoView.mMediaPlayer.isLoadDataPaused()) {
                                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "bindHolder resumeLoadData");
                                MgtvLoopVideoView.this.mMediaPlayer.resumeLoadData();
                            }
                            mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                            if (mgtvLoopVideoView2.mFromSurfaceDestroyToPlay) {
                                if (mgtvLoopVideoView2.mLastFrameRecovery) {
                                    MgtvLoopVideoView.this.mMediaPlayer.setPlaybackStep();
                                }
                            } else if (mgtvLoopVideoView2.mLastFrameRecovery) {
                                MgtvLoopVideoView.this.mMediaPlayer.setPlaybackStep();
                            }
                        }
                        MgtvLoopVideoView mgtvLoopVideoView9 = MgtvLoopVideoView.this;
                        mgtvLoopVideoView9.mSizeChangedListener.onVideoSizeChanged(mgtvLoopVideoView9.mMediaPlayer.getVideoWidth(), MgtvLoopVideoView.this.mMediaPlayer.getVideoHeight());
                        return;
                    }
                } else if (!needOpenVideo()) {
                    MgtvLoopVideoView.this.mMediaPlayer.setSurfaceHolder(iSurfaceHolder);
                    mgtvLoopVideoView = MgtvLoopVideoView.this;
                    if (mgtvLoopVideoView.mNeedResetLoopPlay) {
                        mgtvLoopVideoView.resetVideoPath();
                    } else {
                        if (mgtvLoopVideoView.mMediaPlayer.isLoadDataPaused()) {
                            DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "bindHolder resumeLoadData");
                            MgtvLoopVideoView.this.mMediaPlayer.resumeLoadData();
                        }
                        mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                        if (mgtvLoopVideoView2.mFromSurfaceDestroyToPlay || mgtvLoopVideoView2.mCurrentUri == null) {
                            if (mgtvLoopVideoView2.mLastFrameRecovery && (!MgtvLoopVideoView.this.isHardware() || MgtvLoopVideoView.this.mLastSurfaceDestroy)) {
                                MgtvLoopVideoView.this.mMediaPlayer.setPlaybackStep();
                            }
                        } else if (mgtvLoopVideoView2.mMgtvMediaPlayerHardwareMode) {
                            MgtvLoopVideoView mgtvLoopVideoView6 = MgtvLoopVideoView.this;
                            mgtvLoopVideoView6.mFromSurfaceDestroyToPlay = false;
                            if (!mgtvLoopVideoView6.mIsLoopMode) {
                                mgtvLoopVideoView6.mMediaPlayer.seekTo(mgtvLoopVideoView6.mFromSurfaceDestroyPlayPosition, false, true);
                            }
                            MgtvLoopVideoView.this.mFromSurfaceDestroyPlayPosition = 0;
                        }
                    }
                    MgtvLoopVideoView mgtvLoopVideoView10 = MgtvLoopVideoView.this;
                    mgtvLoopVideoView10.mSizeChangedListener.onVideoSizeChanged(mgtvLoopVideoView10.mMediaPlayer.getVideoWidth(), MgtvLoopVideoView.this.mMediaPlayer.getVideoHeight());
                    return;
                }
                MgtvLoopVideoView.this.openVideo();
            }

            private boolean needOpenVideo() {
                return MgtvLoopVideoView.this.mOpenVideoWhenSurfaceCreate && MgtvLoopVideoView.this.mCurrentUri != null;
            }

            @Override
            public void onSurfaceChanged(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, int i2, int i3, int i4) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface changed");
                if (iSurfaceHolder.getRenderView() != MgtvLoopVideoView.this.mRenderView.getRenderView()) {
                    DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSurfaceChanged: unmatched render callback\n");
                    return;
                }
                MgtvLoopVideoView.this.mSurfaceWidth = i3;
                MgtvLoopVideoView.this.mSurfaceHeight = i4;
                boolean z = true;
                boolean z2 = MgtvLoopVideoView.this.mTargetState == 3;
                if (MgtvLoopVideoView.this.mRenderView.shouldWaitForResize() && (MgtvLoopVideoView.this.mVideoWidth != i3 || MgtvLoopVideoView.this.mVideoHeight != i4)) {
                    z = false;
                }
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                if (mgtvLoopVideoView.mMediaPlayer != null && z2 && z) {
                    if (!mgtvLoopVideoView.mIsLoopMode && mgtvLoopVideoView.mSeekWhenPrepared != 0) {
                        MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                        mgtvLoopVideoView2.seekTo(mgtvLoopVideoView2.mSeekWhenPrepared, false);
                    }
                    MgtvLoopVideoView.this.start();
                }
                if (MgtvLoopVideoView.this.mSurfaceHolderListener != null) {
                    MgtvLoopVideoView.this.mSurfaceHolderListener.surfaceChanged();
                }
            }

            @Override
            public void onSurfaceCreated(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, int i2, int i3) throws Throwable {
                SurfaceHolder surfaceHolder;
                if (MgtvLoopVideoView.this.mStartLeaveTimestamp > 0) {
                    long jCurrentTimeMillis = (System.currentTimeMillis() - MgtvLoopVideoView.this.mStartLeaveTimestamp) / 1000;
                    if (jCurrentTimeMillis > 540) {
                        if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                            MgtvLoopVideoView.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_LEAVE_TIME_INVALID, MgtvLoopVideoView.this.mCurrentState + "", "", null);
                        }
                        ReportParams reportParams = MgtvLoopVideoView.this.mReportParams;
                        if (reportParams != null) {
                            reportParams.setLeaveTimeS(jCurrentTimeMillis);
                        }
                    }
                }
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface create");
                MgtvMediaPlayer mgtvMediaPlayer = MgtvLoopVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null && mgtvMediaPlayer.isLoadDataPaused()) {
                    DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "bindHolder resumeLoadData");
                    MgtvLoopVideoView.this.mMediaPlayer.resumeLoadData();
                }
                if (iSurfaceHolder.getRenderView() != MgtvLoopVideoView.this.mRenderView.getRenderView()) {
                    DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSurfaceCreated: unmatched render callback\n");
                    return;
                }
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onSurfaceCreated " + iSurfaceHolder);
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.mSurfaceHolder = iSurfaceHolder;
                if (mgtvLoopVideoView.mRenderView.getRenderViewType() == 0 && ((surfaceHolder = MgtvLoopVideoView.this.mSurfaceHolder.getSurfaceHolder()) == null || surfaceHolder.getSurface() == null || !surfaceHolder.getSurface().isValid())) {
                    MgtvLoopVideoView.this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SURFACE_FAILED, 1);
                    MgtvLoopVideoView.this.mErrorMsg = "surfaceCreated surface is invalid";
                } else {
                    bindHolder(iSurfaceHolder);
                }
                if (MgtvLoopVideoView.this.mSurfaceHolderListener != null) {
                    MgtvLoopVideoView.this.mSurfaceHolderListener.surfaceCreated();
                }
            }

            @Override
            public void onSurfaceDestroyed(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, boolean z) {
                MgtvLoopVideoView.this.mLastSurfaceDestroy = z;
                if (iSurfaceHolder.getRenderView() != MgtvLoopVideoView.this.mRenderView.getRenderView()) {
                    DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSurfaceDestroyed: unmatched render callback\n");
                    return;
                }
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onSurfaceDestroyed " + iSurfaceHolder);
                if (MgtvLoopVideoView.this.mSurfaceHolderListener != null) {
                    MgtvLoopVideoView.this.mSurfaceHolderListener.surfaceDestroyed();
                }
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.mSurfaceHolder = null;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvLoopVideoView.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.setSurfaceHolder(null);
                    if (MgtvLoopVideoView.this.isPrepared()) {
                        MgtvLoopVideoView.this.pauseLoadData();
                        if (MgtvLoopVideoView.this.mIsLive) {
                            DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface destroy to pause");
                        } else {
                            DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "-----------surface destroy to pause");
                            if (MgtvLoopVideoView.this.mRenderView.getRenderViewType() == 0) {
                                if (!MgtvLoopVideoView.this.mMediaPlayer.isSupportAMCKeyFrameBackup()) {
                                    MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                                    mgtvLoopVideoView2.mFromSurfaceDestroyToPlay = true;
                                    mgtvLoopVideoView2.mFromSurfaceDestroyPlayPosition = mgtvLoopVideoView2.mMediaPlayer.getCurrentPosition();
                                }
                            } else if (MgtvLoopVideoView.this.mRenderView.getRenderViewType() == 1) {
                                if (!MgtvLoopVideoView.this.isHardware()) {
                                    MgtvLoopVideoView.this.mFromSurfaceDestroyToPlay = true;
                                }
                                MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                                if (!mgtvLoopVideoView3.mIsLoopMode && mgtvLoopVideoView3.mEnableTexture) {
                                    mgtvLoopVideoView3.mHasSurfaceHolderDestroy = true;
                                }
                            }
                        }
                        MgtvLoopVideoView.this.pauseInner();
                    } else {
                        try {
                            ReportParams reportParams = MgtvLoopVideoView.this.mReportParams;
                            if (reportParams != null) {
                                reportParams.getEnd().setInnerRetry(true);
                            }
                            MgtvLoopVideoView.this.release(true, true);
                        } catch (Exception unused) {
                        }
                    }
                    MgtvLoopVideoView mgtvLoopVideoView4 = MgtvLoopVideoView.this;
                    if (mgtvLoopVideoView4.mCurrentUri == null || mgtvLoopVideoView4.mCurrentState == -1 || MgtvLoopVideoView.this.mCurrentState == 5) {
                        return;
                    }
                    MgtvLoopVideoView.this.mStartLeaveTimestamp = System.currentTimeMillis();
                }
            }
        };
        this.mFilterCallback = new f.a() {
            @Override
            public void onInfo(int i2, int i3, String str) {
                if (i2 == 1) {
                    MgtvLoopVideoView.this.mRenderType = i3;
                    MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                    ReportParams reportParams = mgtvLoopVideoView.mReportParams;
                    if (reportParams != null) {
                        reportParams.setRenderType(mgtvLoopVideoView.mRenderType);
                        return;
                    }
                    return;
                }
                if (i2 != 3) {
                    return;
                }
                MgtvLoopVideoView.this.mEnhanceQualityType = i3;
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                ReportParams reportParams2 = mgtvLoopVideoView2.mReportParams;
                if (reportParams2 != null) {
                    reportParams2.setEnhanceQualityType(mgtvLoopVideoView2.mEnhanceQualityType);
                }
            }
        };
        this.mRenderWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "opengl render warning:" + i2 + ",extra:" + str + ",msg:" + str2);
                if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                    MgtvLoopVideoView.this.mOnWarningListener.onWarning(i2, str, str2, obj);
                }
            }
        };
        this.mSizeChangedListener = new MgtvPlayerListener.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.originalVideoWidth = mgtvLoopVideoView.mVideoWidth = mgtvLoopVideoView.mMediaPlayer.getVideoWidth();
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                mgtvLoopVideoView2.originalVideoHeight = mgtvLoopVideoView2.mVideoHeight = mgtvLoopVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvLoopVideoView.this.mVideoWidth != 0 && MgtvLoopVideoView.this.mVideoHeight != 0) {
                    MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                    MgtvRenderView mgtvRenderView = mgtvLoopVideoView3.mRenderView;
                    if (mgtvRenderView != null) {
                        mgtvRenderView.setVideoSize(mgtvLoopVideoView3.mVideoWidth, MgtvLoopVideoView.this.mVideoHeight);
                    }
                    MgtvLoopVideoView.this.requestLayout();
                }
                if (MgtvLoopVideoView.this.mOnVideoSizeChangedListener != null) {
                    MgtvLoopVideoView.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i2, i3);
                }
            }
        };
        this.mPreparedListener = new MgtvPlayerListener.OnPreparedListener() {
            /* JADX WARN: Code duplicated, block: B:23:0x00b6  */
            @Override
            public void onPrepared() {
                MgtvLoopVideoView.this.changeCurrentState(2);
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.originalVideoWidth = mgtvLoopVideoView.mVideoWidth = mgtvLoopVideoView.mMediaPlayer.getVideoWidth();
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                mgtvLoopVideoView2.originalVideoHeight = mgtvLoopVideoView2.mVideoHeight = mgtvLoopVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvLoopVideoView.this.mVideoWidth != 0 && MgtvLoopVideoView.this.mVideoHeight != 0) {
                    DebugLog.i("@@@@", "video size: " + MgtvLoopVideoView.this.mVideoWidth + "/" + MgtvLoopVideoView.this.mVideoHeight);
                    MgtvLoopVideoView mgtvLoopVideoView3 = MgtvLoopVideoView.this;
                    MgtvRenderView mgtvRenderView = mgtvLoopVideoView3.mRenderView;
                    if (mgtvRenderView != null) {
                        mgtvRenderView.setVideoSize(mgtvLoopVideoView3.mVideoWidth, MgtvLoopVideoView.this.mVideoHeight);
                    }
                    int i2 = MgtvLoopVideoView.this.mSeekWhenPrepared;
                    if (i2 != 0) {
                        MgtvLoopVideoView.this.seekTo(i2);
                    }
                    if ((!MgtvLoopVideoView.this.mRenderView.shouldWaitForResize() || (MgtvLoopVideoView.this.mSurfaceWidth == MgtvLoopVideoView.this.mVideoWidth && MgtvLoopVideoView.this.mSurfaceHeight == MgtvLoopVideoView.this.mVideoHeight)) && MgtvLoopVideoView.this.mTargetState == 3) {
                        MgtvLoopVideoView.this.start();
                    }
                } else if (MgtvLoopVideoView.this.mTargetState == 3) {
                    MgtvLoopVideoView.this.start();
                }
                if (MgtvLoopVideoView.this.mOnPreparedListener != null) {
                    MgtvLoopVideoView.this.mOnPreparedListener.onPrepared();
                }
            }
        };
        this.mCompletionListener = new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i2, int i3) {
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                if (i2 != 0) {
                    mgtvLoopVideoView.changeCurrentState(0);
                    MgtvLoopVideoView.this.mTargetState = 0;
                    MgtvLoopVideoView.this.stopInner();
                } else {
                    mgtvLoopVideoView.changeCurrentState(5);
                    MgtvLoopVideoView.this.mTargetState = 5;
                }
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "-------------on onCompletion what:" + i2 + ",extra:" + i3);
                if (MgtvLoopVideoView.this.mOnCompletionListener != null) {
                    MgtvLoopVideoView.this.mOnCompletionListener.onCompletion(i2, i3);
                }
            }
        };
        this.mInfoListener = new MgtvPlayerListener.OnInfoListener() {
            /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
                	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
                	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
                */
            @Override
            public boolean onInfo(int r5, int r6) {
                /*
                    Method dump skipped, instruction units count: 718
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hunantv.media.widget.MgtvLoopVideoView.AnonymousClass7.onInfo(int, int):boolean");
            }
        };
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            @Override
            public boolean onError(int i2, int i3) {
                DebugLog.w(MgtvLoopVideoView.this.getLogTag(), "onError what:" + i2 + ",extra:" + i3);
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvLoopVideoView.mMediaPlayer;
                if (mgtvMediaPlayer == null || i2 != 7000006) {
                    if (mgtvMediaPlayer != null && mgtvLoopVideoView.mCurrentState != -1) {
                        MgtvLoopVideoView.this.mMediaPlayer.stop();
                    }
                    MgtvLoopVideoView.this.changeCurrentState(-1);
                    MgtvLoopVideoView.this.mTargetState = -1;
                } else {
                    mgtvLoopVideoView.releaseNoStatus();
                    MgtvLoopVideoView.this.changeCurrentState(0);
                    MgtvLoopVideoView.this.mTargetState = 0;
                }
                MgtvLoopVideoView mgtvLoopVideoView2 = MgtvLoopVideoView.this;
                mgtvLoopVideoView2.mCurrentUri = null;
                mgtvLoopVideoView2.mProxyUri = null;
                return mgtvLoopVideoView2.mOnErrorListener != null && MgtvLoopVideoView.this.mOnErrorListener.onError(i2, i3);
            }
        };
        this.mSeekCompleteListener = new MgtvPlayerListener.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(int i2, int i3) {
                if (MgtvLoopVideoView.this.mOnSeekCompleteListener != null) {
                    DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onSeekComplete seekTargetTime:" + i2 + ",errorCode:" + i3);
                    MgtvLoopVideoView.this.mOnSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mBufferingUpdateListener = new MgtvPlayerListener.OnBufferingUpdateListener() {
            @Override
            public void onBufferingUpdate(int i2) {
                if (MgtvLoopVideoView.this.mOnBufferringUpdateListener != null) {
                    MgtvLoopVideoView.this.mOnBufferringUpdateListener.onBufferingUpdate(i2);
                }
            }
        };
        this.mBufferingTimeoutListener = new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i2, int i3) {
                MgtvMediaPlayer mgtvMediaPlayer = MgtvLoopVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.stop();
                }
                MgtvLoopVideoView.this.changeCurrentState(-1);
                MgtvLoopVideoView.this.mTargetState = -1;
                MgtvLoopVideoView mgtvLoopVideoView = MgtvLoopVideoView.this;
                mgtvLoopVideoView.mCurrentUri = null;
                mgtvLoopVideoView.mProxyUri = null;
                if (mgtvLoopVideoView.mOnErrorListener != null) {
                    MgtvLoopVideoView.this.mOnErrorListener.onError(i2, i3);
                }
                return true;
            }
        };
        this.mSwitchSourceListener = new MgtvPlayerListener.OnSwitchSourceListener() {
            @Override
            public void onSwitchSourceComplete(String str, int i2, int i3) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSwitchSourceComplete url:" + str + ",type:" + i2 + ",time:" + i3);
                if (MgtvLoopVideoView.this.mOnChangeSourceListener != null) {
                    MgtvLoopVideoView.this.mOnChangeSourceListener.onChangeSourceSuccess(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceFailed(String str, int i2, int i3) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSwitchSourceFailed url:" + str + ",what:" + i2 + ",extra:" + i3);
                if (MgtvLoopVideoView.this.mOnChangeSourceListener != null) {
                    MgtvLoopVideoView.this.mOnChangeSourceListener.onChangeSourceFailed(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceInfo(String str, int i2, int i3) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onSwitchSourceInfo url:" + str + ",event:" + i2 + ",time:" + i3);
                if (MgtvLoopVideoView.this.mOnChangeSourceListener != null) {
                    MgtvLoopVideoView.this.mOnChangeSourceListener.onChangeSourceInfo(str, i2, i3);
                }
            }
        };
        this.mPlayerWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onTsSkip tsUrl:" + str);
                if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                    MgtvLoopVideoView.this.mOnWarningListener.onTsSkip(str, i2, i3);
                }
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "player render warning:" + i2 + ",extra:" + str + ",msg:" + str2);
                if (MgtvLoopVideoView.this.mOnWarningListener != null) {
                    MgtvLoopVideoView.this.mOnWarningListener.onWarning(i2, str, str2, obj);
                }
            }
        };
        this.mGifRecorder = new GifRecorder();
        this.mStartListener = new MgtvPlayerListener.OnStartListener() {
            @Override
            public void onStart() {
                DebugLog.d(MgtvLoopVideoView.this.getLogTag(), "mgtvcore onStart");
                if (MgtvLoopVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvLoopVideoView.this.callbackOnStart();
                }
            }
        };
        this.mPauseListener = new MgtvPlayerListener.OnPauseListener() {
            @Override
            public void onPause() {
                DebugLog.d(MgtvLoopVideoView.this.getLogTag(), "mgtvcore onPause");
                if (MgtvLoopVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvLoopVideoView.this.callbackOnPause();
                }
            }
        };
        this.mRecordVideoListener = new MgtvPlayerListener.OnRecordVideoListener() {
            @Override
            public void onRecordVideoErr(int i2, int i3) {
                DebugLog.e(MgtvLoopVideoView.this.getLogTag(), "onRecordVideoErr what:" + i2 + ",extra:" + i3);
                if (MgtvLoopVideoView.this.mOnRecordListener != null) {
                    MgtvLoopVideoView.this.mOnRecordListener.onRecordError(i2, i3);
                }
            }

            @Override
            public void onRecordVideoInfo(int i2, int i3) {
                DebugLog.i(MgtvLoopVideoView.this.getLogTag(), "onRecordVideoInfo what:" + i2 + ",extra:" + i3);
                if (MgtvLoopVideoView.this.mOnRecordListener != null) {
                    if (i2 == 20) {
                        MgtvLoopVideoView.this.mOnRecordListener.onRecordStart(MgtvLoopVideoView.this.mRecordFilePath);
                    } else if (i2 == 30) {
                        MgtvLoopVideoView.this.mOnRecordListener.onRecordStop();
                    }
                    MgtvLoopVideoView.this.mOnRecordListener.onRecordInfo(i2, i3);
                }
            }
        };
        this.mLoadDataListener = new MgtvPlayerListener.OnLoadDataListener() {
            @Override
            public void onAfterLoadDataPaused() {
                if (MgtvLoopVideoView.this.mOnLoadDataListener != null) {
                    MgtvLoopVideoView.this.mOnLoadDataListener.onAfterLoadDataPaused();
                }
            }

            @Override
            public void onBeforeLoadDataResume() {
                if (MgtvLoopVideoView.this.mOnLoadDataListener != null) {
                    MgtvLoopVideoView.this.mOnLoadDataListener.onBeforeLoadDataResume();
                }
            }
        };
        if (configuration == null) {
            initVideoView(context);
            return;
        }
        this.mEnableTexture = configuration.enableTexture;
        this.mEnableOpengl = configuration.opengl;
        boolean z = configuration.isLiveMode;
        this.mIsLiveConfig = z;
        this.mEnableLiveMode = z;
        this.mTargetIsLoopMode = configuration.isLoopMode;
        initVideoView(context, configuration.renderViewType);
    }
}
