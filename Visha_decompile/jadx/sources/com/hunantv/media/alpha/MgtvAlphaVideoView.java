package com.hunantv.media.alpha;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.drm.IDrmSession;
import com.hunantv.media.drm.MgtvDrmParams;
import com.hunantv.media.global.Constants;
import com.hunantv.media.p2p.IP2pTask;
import com.hunantv.media.player.IMgtvRenderView;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.MgtvPlayerDataSource;
import com.hunantv.media.player.MgtvPlayerListener;
import com.hunantv.media.player.a.a;
import com.hunantv.media.player.loader.ImgoLibLoader;
import com.hunantv.media.player.loader.c;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.statistic.FlowDataStatistic;
import com.hunantv.media.player.subtitle.SubtitleConfig;
import com.hunantv.media.player.subtitle.SubtitleSource;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.player.utils.ThreadUtil;
import com.hunantv.media.recoder.GifRecorder;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.utils.MemoryUtil;
import com.hunantv.media.widget.ISubtitle;
import com.hunantv.media.widget.IVideoView;
import java.io.IOException;
import java.security.InvalidParameterException;
import java.text.NumberFormat;
import java.util.List;

public class MgtvAlphaVideoView extends MgtvAlphaAbstractVideoView {
    private static final int GL_CONTEXT_VERSION = 2;
    private static final String LOGMSG_PLAYER_CALLBACK = "VideoViewCallBack";
    public static final int MGTV_RENDER_NONE = 0;
    public static final int MGTV_RENDER_SURFACE_VIEW = 1;
    public static final int MGTV_RENDER_TEXTURE_VIEW = 2;
    protected boolean backPlayStartEnable;
    private int fromBottom;
    private int fromLeft;
    private int fromRight;
    private int fromTop;
    private boolean isStretchScreen;
    private boolean mAccurateSeekEnable;
    private MgtvMediaPlayer.AddrinfoType mAddrInfoType;
    private int mAddrInfoTypeInt;
    private int mAspectRatio;
    private boolean mBackJavaDns;
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
    private boolean mEnableDnsNoNetStrategy;
    private boolean mEnableHttpDnsRetry;
    private boolean mEnableJavaIPCache;
    private boolean mEnableLiveMode;
    private boolean mEnableMgtvMediaCodec;
    private boolean mEnableOpengl;
    private boolean mEnableP2pHttpDns;
    private boolean mEnableTsSkipError;
    private int mEnhanceQualityType;
    private MgtvPlayerListener.OnErrorListener mErrorListener;
    private String mErrorMsg;
    private FlowDataStatistic mFlowDataStatistic;
    private boolean mForceDecodeMode;
    private int mFromSurfaceDestroyPlayPosition;
    private boolean mFromSurfaceDestroyToPlay;
    private GifRecorder mGifRecorder;
    private boolean mHasSurfaceHolderDestroy;
    private int mHlsMD5CheckValue;
    private MgtvPlayerListener.OnInfoListener mInfoListener;
    private MgtvPlayerListener.OnInfoStringListener mInfoStringListener;
    private boolean mIsLive;
    private boolean mIsLiveConfig;
    private boolean mIsScreenOnWhilePlaying;
    private boolean mIsSecure;
    private a.b mJavaDnsType;
    private boolean mLastFrameRecovery;
    private volatile boolean mLastSurfaceDestroy;
    private float mLeftVolume;
    private int mLiveStartIndex;
    private MgtvPlayerListener.OnLoadDataListener mLoadDataListener;
    private int mLoadMaxRetryTime;
    private boolean mLogCallBackOpen;
    private boolean mMgtvMediaPlayerHardwareMode;
    private boolean mNativeDnsAsyncEnable;
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
    private boolean mOpenAddrDefaultConfig;
    private boolean mOpenVideoWhenSurfaceCreate;
    private MgtvPlayerListener.OnPauseListener mPauseListener;
    private float mPlaySpeed;
    private MgtvPlayerListener.OnWarningListener mPlayerWarning;
    MgtvPlayerListener.OnPreparedListener mPreparedListener;
    private int mReadDataSourceTypeConfig;
    private boolean mRebindTexture;
    private String mRecordFilePath;
    private MgtvPlayerListener.OnRecordVideoListener mRecordVideoListener;
    private boolean mReleasedByPauseLoadData;
    private IVideoView.RenderFilter mRenderFilter;
    private int mRenderType;
    private int mRenderViewType;
    private float mRightVolume;
    private MgtvPlayerListener.OnSeekCompleteListener mSeekCompleteListener;
    private int mSeekWhenPrepared;
    MgtvPlayerListener.OnVideoSizeChangedListener mSizeChangedListener;
    private MgtvMediaPlayer.SkipLoopFilterType mSkipLoopFilterType;
    private long mStartLeaveTimestamp;
    private MgtvPlayerListener.OnStartListener mStartListener;
    private int mStartPosMs;
    private int mStreamKey;
    private Surface mSurface;
    private int mSurfaceHeight;
    private IVideoView.SurfaceHolderListener mSurfaceHolderListener;
    private int mSurfaceWidth;
    private MgtvPlayerListener.OnSwitchSourceListener mSwitchSourceListener;
    private int mTargetState;
    private AlphaRenderer mTransRender;
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

    public MgtvAlphaVideoView(Context context) {
        super(context);
        this.mSurface = null;
        this.mLastSurfaceDestroy = true;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMgtvMediaPlayerHardwareMode = true;
        this.mForceDecodeMode = false;
        this.mFromSurfaceDestroyToPlay = false;
        this.mFromSurfaceDestroyPlayPosition = 0;
        this.mErrorMsg = "";
        this.mHasSurfaceHolderDestroy = false;
        this.mRenderViewType = 1;
        this.mLogCallBackOpen = true;
        this.mStreamKey = -1;
        this.mIsLive = false;
        this.mUseSystemPlayer = false;
        this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrInfoTypeInt = 0;
        this.mOpenAddrDefaultConfig = true;
        this.mJavaDnsType = a.b.NORMAL;
        this.mNativeDnsAsyncEnable = true;
        this.mBackJavaDns = false;
        this.mEnableHttpDnsRetry = false;
        this.mEnableDnsNoNetStrategy = true;
        this.mEnableP2pHttpDns = false;
        this.mHlsMD5CheckValue = 0;
        this.mEnableMgtvMediaCodec = false;
        this.mEnableJavaIPCache = false;
        this.mLastFrameRecovery = true;
        this.mWeakNetSpeed = 0;
        this.mWeakBufferTimeoutMs = 0;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 0;
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
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
        this.mReadDataSourceTypeConfig = 0;
        this.mStartPosMs = 0;
        this.mFlowDataStatistic = new FlowDataStatistic();
        this.mSkipLoopFilterType = MgtvMediaPlayer.SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mSizeChangedListener = new MgtvPlayerListener.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i, int i2) {
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    MgtvAlphaVideoView.this.requestLayout();
                }
                if (MgtvAlphaVideoView.this.mOnVideoSizeChangedListener != null) {
                    MgtvAlphaVideoView.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i, i2);
                }
            }
        };
        this.mPreparedListener = new MgtvPlayerListener.OnPreparedListener() {
            /* JADX WARN: Code duplicated, block: B:15:0x0094  */
            @Override
            public void onPrepared() {
                MgtvAlphaVideoView.this.changeCurrentState(2);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    DebugLog.i("@@@@", "video size: " + MgtvAlphaVideoView.this.mVideoWidth + "/" + MgtvAlphaVideoView.this.mVideoHeight);
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    if (MgtvAlphaVideoView.this.mSurfaceWidth == MgtvAlphaVideoView.this.mVideoWidth && MgtvAlphaVideoView.this.mSurfaceHeight == MgtvAlphaVideoView.this.mVideoHeight && MgtvAlphaVideoView.this.mTargetState == 3) {
                        MgtvAlphaVideoView.this.start();
                    }
                } else if (MgtvAlphaVideoView.this.mTargetState == 3) {
                    MgtvAlphaVideoView.this.start();
                }
                if (MgtvAlphaVideoView.this.mOnPreparedListener != null) {
                    MgtvAlphaVideoView.this.mOnPreparedListener.onPrepared();
                }
            }
        };
        this.mCompletionListener = new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i, int i2) {
                if (i != 0) {
                    MgtvAlphaVideoView.this.stopInner();
                }
                MgtvAlphaVideoView.this.changeCurrentState(5);
                MgtvAlphaVideoView.this.mTargetState = 5;
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "-------------on onCompletion what:" + i + ",extra:" + i2);
                if (MgtvAlphaVideoView.this.mOnCompletionListener != null) {
                    MgtvAlphaVideoView.this.mOnCompletionListener.onCompletion(i, i2);
                }
            }
        };
        this.mInfoListener = new MgtvPlayerListener.OnInfoListener() {
            /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
                java.lang.NullPointerException
                */
            @Override
            public boolean onInfo(int r5, int r6) {
                /*
                    Method dump skipped, instruction units count: 724
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hunantv.media.alpha.MgtvAlphaVideoView.AnonymousClass6.onInfo(int, int):boolean");
            }
        };
        this.mInfoStringListener = new MgtvPlayerListener.OnInfoStringListener() {
            @Override
            public boolean onInfo(int i, String str) {
                String str2;
                String logTag = MgtvAlphaVideoView.this.getLogTag();
                if (i != 2860) {
                    str2 = "OnInfoStringListener what: " + i + ", extra is " + str;
                } else {
                    str2 = "MEDIA_INFO_SEI_SYS_TIMESTAMP: " + str;
                }
                DebugLog.i(logTag, str2);
                return false;
            }
        };
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            @Override
            public boolean onError(int i, int i2) {
                DebugLog.w(MgtvAlphaVideoView.this.getLogTag(), "onError what:" + i + ",extra:" + i2);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvAlphaVideoView.mMediaPlayer;
                if (mgtvMediaPlayer == null || i != 7000006) {
                    if (mgtvMediaPlayer != null && mgtvAlphaVideoView.mCurrentState != -1) {
                        MgtvAlphaVideoView.this.mMediaPlayer.stop();
                    }
                    MgtvAlphaVideoView.this.changeCurrentState(-1);
                    MgtvAlphaVideoView.this.mTargetState = -1;
                } else {
                    mgtvAlphaVideoView.releaseNoStatus();
                    MgtvAlphaVideoView.this.changeCurrentState(0);
                    MgtvAlphaVideoView.this.mTargetState = 0;
                }
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.mCurrentUri = null;
                mgtvAlphaVideoView2.mProxyUri = null;
                return mgtvAlphaVideoView2.mOnErrorListener != null && MgtvAlphaVideoView.this.mOnErrorListener.onError(i, i2);
            }
        };
        this.mSeekCompleteListener = new MgtvPlayerListener.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(int i, int i2) {
                if (MgtvAlphaVideoView.this.mOnSeekCompleteListener != null) {
                    DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onSeekComplete seekTargetTime:" + i + ",errorCode:" + i2);
                    MgtvAlphaVideoView.this.mOnSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mBufferingUpdateListener = new MgtvPlayerListener.OnBufferingUpdateListener() {
            @Override
            public void onBufferingUpdate(int i) {
                if (MgtvAlphaVideoView.this.mOnBufferringUpdateListener != null) {
                    MgtvAlphaVideoView.this.mOnBufferringUpdateListener.onBufferingUpdate(i);
                }
            }
        };
        this.mBufferingTimeoutListener = new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i, int i2) {
                MgtvMediaPlayer mgtvMediaPlayer = MgtvAlphaVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.stop();
                }
                MgtvAlphaVideoView.this.changeCurrentState(-1);
                MgtvAlphaVideoView.this.mTargetState = -1;
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.mCurrentUri = null;
                mgtvAlphaVideoView.mProxyUri = null;
                if (mgtvAlphaVideoView.mOnErrorListener != null) {
                    MgtvAlphaVideoView.this.mOnErrorListener.onError(i, i2);
                }
                return true;
            }
        };
        this.mSwitchSourceListener = new MgtvPlayerListener.OnSwitchSourceListener() {
            @Override
            public void onSwitchSourceComplete(String str, int i, int i2) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceComplete url:" + str + ",type:" + i + ",time:" + i2);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceSuccess(str, i, i2);
                }
            }

            @Override
            public void onSwitchSourceFailed(String str, int i, int i2) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceFailed url:" + str + ",what:" + i + ",extra:" + i2);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceFailed(str, i, i2);
                }
            }

            @Override
            public void onSwitchSourceInfo(String str, int i, int i2) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceInfo url:" + str + ",event:" + i + ",time:" + i2);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceInfo(str, i, i2);
                }
            }
        };
        this.mPlayerWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i, int i2) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onTsSkip tsUrl:" + str);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onTsSkip(str, i, i2);
                }
            }

            @Override
            public void onWarning(int i, String str, String str2, Object obj) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "player render warning:" + i + ",extra:" + str + ",msg:" + str2);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onWarning(i, str, str2, obj);
                }
            }
        };
        this.mGifRecorder = new GifRecorder();
        this.mStartListener = new MgtvPlayerListener.OnStartListener() {
            @Override
            public void onStart() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onStart");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnStart();
                }
            }
        };
        this.mPauseListener = new MgtvPlayerListener.OnPauseListener() {
            @Override
            public void onPause() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onPause");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnPause();
                }
            }
        };
        this.mRecordVideoListener = new MgtvPlayerListener.OnRecordVideoListener() {
            @Override
            public void onRecordVideoErr(int i, int i2) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoErr what:" + i + ",extra:" + i2);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordError(i, i2);
                }
            }

            @Override
            public void onRecordVideoInfo(int i, int i2) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoInfo what:" + i + ",extra:" + i2);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    if (i == 20) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStart(MgtvAlphaVideoView.this.mRecordFilePath);
                    } else if (i == 30) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStop();
                    }
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordInfo(i, i2);
                }
            }
        };
        this.mLoadDataListener = new MgtvPlayerListener.OnLoadDataListener() {
            @Override
            public void onAfterLoadDataPaused() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onAfterLoadDataPaused();
                }
            }

            @Override
            public void onBeforeLoadDataResume() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onBeforeLoadDataResume();
                }
            }
        };
        this.backPlayStartEnable = false;
        initVideoView(context);
    }

    public static boolean access$1402(MgtvAlphaVideoView mgtvAlphaVideoView, boolean z) {
        mgtvAlphaVideoView.mIsLive = z;
        return z;
    }

    public static IVideoView.OnInfoListener access$1500(MgtvAlphaVideoView mgtvAlphaVideoView) {
        return mgtvAlphaVideoView.mOnInfoListener;
    }

    public static boolean access$1602(MgtvAlphaVideoView mgtvAlphaVideoView, boolean z) {
        mgtvAlphaVideoView.mMgtvMediaPlayerHardwareMode = z;
        return z;
    }

    public static int access$1700(MgtvAlphaVideoView mgtvAlphaVideoView) {
        return mgtvAlphaVideoView.mRenderViewType;
    }

    public static int access$1802(MgtvAlphaVideoView mgtvAlphaVideoView, int i) {
        mgtvAlphaVideoView.mVideoRotationDegree = i;
        return i;
    }

    public static IVideoView.OnUpdateStatusListener access$1900(MgtvAlphaVideoView mgtvAlphaVideoView) {
        return mgtvAlphaVideoView.mOnUpdateStatusListener;
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
        initVideoView(context, 1);
    }

    private boolean isInPlaybackState() {
        int i;
        return (this.mMediaPlayer == null || (i = this.mCurrentState) == -1 || i == 0 || i == 1) ? false : true;
    }

    private void openAudio() {
        this.mErrorMsg = "";
        if (this.mCurrentUri == null) {
            DebugLog.e(getLogTag(), "imgo openAudio: not ready for playback just yet, will try again later, mCurrentUri:" + this.mCurrentUri);
            return;
        }
        requestAudioFocus();
        release(false, true);
        try {
            Bundle bundle = new Bundle();
            bundle.putString("BUNDLE_KEY_LOG_TAG_KEY", getLogTagKey());
            bundle.putBoolean("BUNDLE_KEY_BOOLEAN_AUDIO_MODE", true);
            this.mMediaPlayer = new MgtvMediaPlayer(1, this.mContext, bundle);
            setLastMediaMode(1);
            this.mMediaPlayer.setConfig(201507067, 1);
            this.mMediaPlayer.setFlowDataStatistic(this.mFlowDataStatistic);
            FlowDataStatistic flowDataStatistic = this.mFlowDataStatistic;
            if (flowDataStatistic != null) {
                flowDataStatistic.setLogTag(getLogTag());
            }
            this.mMediaPlayer.setReportParams(this.mReportParams);
            configAudioImgoPlayer();
            super.initListener(this.mMediaPlayer);
            this.mMediaPlayer.setOnPreparedListener(this.mPreparedListener);
            this.mMediaPlayer.setOnStartListener(this.mStartListener);
            this.mMediaPlayer.setOnPauseListener(this.mPauseListener);
            this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
            this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
            this.mMediaPlayer.setOnInfoListener(this.mInfoListener);
            this.mMediaPlayer.setOnInfoStringListener(this.mInfoStringListener);
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
            if (this.mMainP2pTask == null && this.mProxyUri == null) {
                this.mMediaPlayer.setReadDataSourceType(0);
                this.mMediaPlayer.setDataSource(this.mCurrentUri.toString());
            } else {
                MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
                String string = this.mCurrentUri.toString();
                IP2pTask iP2pTask = this.mMainP2pTask;
                Uri uri = this.mProxyUri;
                mgtvMediaPlayer.setP2pDataSource(string, iP2pTask, uri != null ? uri.toString() : null, this.mStreamKey);
            }
            this.mMediaPlayer.setSurface(this.mSurface);
            this.mMediaPlayer.setAudioStreamType(3);
            this.mMediaPlayer.setScreenOnWhilePlaying(this.mIsScreenOnWhilePlaying);
            this.mMediaPlayer.prepareAsync();
            changeCurrentState(1);
            DebugLog.i(getLogTag(), "openAudio is over");
        } catch (c e) {
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
        } catch (OutOfMemoryError e6) {
            DebugLog.i(getLogTag(), "OutOfMemoryError: " + this.mCurrentUri + ",details:" + e6.getMessage());
            this.mErrorMsg = e6.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_OUTOFMEM, 0);
        } catch (SecurityException e7) {
            DebugLog.i(getLogTag(), "SecurityException: " + this.mCurrentUri + ",details:" + e7.getMessage());
            this.mErrorMsg = e7.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SECURITY, 0);
        } catch (UnsatisfiedLinkError e8) {
            DebugLog.i(getLogTag(), "UnsatisfiedLinkError: " + this.mCurrentUri + ",details:" + e8.getMessage());
            this.mErrorMsg = e8.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_LIB_NOTLOAD, 0);
        } catch (InvalidParameterException e9) {
            DebugLog.w(getLogTag(), "Unable to open content: " + this.mCurrentUri);
            this.mErrorMsg = e9.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SURFACE_FAILED, 3);
        } catch (Exception e10) {
            DebugLog.w(getLogTag(), "Unable to open content: " + this.mCurrentUri + ",details:" + e10.getMessage());
            this.mErrorMsg = e10.getMessage();
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

    public void openVideo() {
        openVideo(this.mMgtvMediaPlayerHardwareMode);
    }

    private void pauseInner() {
        if (isInPlaybackState() && this.mMediaPlayer.isPlaying()) {
            DebugLog.i(getLogTag(), "pause play");
            this.mMediaPlayer.pause();
            if (this.mEnableCoreStartPauseListen) {
                return;
            }
            callbackOnPause();
        }
    }

    private ResetResult resetImpl(boolean z) {
        if (this.mMediaPlayer == null) {
            return ResetResult.NONE;
        }
        resetDataBefore(z ? MgtvAlphaAbstractVideoView.ReleaseReason.DEFAULT_INNER : MgtvAlphaAbstractVideoView.ReleaseReason.OUT);
        boolean zReset = this.mMediaPlayer.reset();
        if (zReset) {
            changeCurrentState(0);
            this.mTargetState = 0;
        }
        resetDataAfter(z ? MgtvAlphaAbstractVideoView.ReleaseReason.DEFAULT_INNER : MgtvAlphaAbstractVideoView.ReleaseReason.OUT);
        return zReset ? ResetResult.RESET_OK : ResetResult.RESET_ERR;
    }

    private void setAudioURI(Uri uri) {
        this.mNonSurfaceHolderPVTimestamp = 0L;
        this.mCurrentUri = uri;
        this.mSeekWhenPrepared = 0;
        openAudio();
    }

    private void setRender(int i) {
        DebugLog.i(getLogTag(), "setRender render:" + i);
        setRenderView(i);
    }

    private void setRenderView(int i) {
        int i2;
        int iIndexOfChild = -1;
        if (this.mGLView != null) {
            MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
            if (mgtvMediaPlayer != null) {
                mgtvMediaPlayer.setSurfaceHolder(null);
            }
            View view = this.mGLView.getView();
            if (view != null) {
                DebugLog.i(getLogTag(), "setRenderView removeRenderView");
                iIndexOfChild = indexOfChild(view);
                removeView(view);
            }
            this.mGLView = null;
        }
        this.mRenderType = 0;
        this.mEnhanceQualityType = 0;
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null) {
            reportParams.setRenderType(0);
            this.mReportParams.setEnhanceQualityType(0);
        }
        this.mGLView = this.mRenderViewType == 1 ? new MgtvGLSurfaceView(getContext()) : new MgtvGLTextureView(getContext());
        IAlphaRenderView iAlphaRenderView = this.mGLView;
        if (iAlphaRenderView == null) {
            return;
        }
        iAlphaRenderView.setEGLContextClientVersion(2);
        this.mGLView.setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        int i3 = this.mVideoWidth;
        if (i3 > 0 && (i2 = this.mVideoHeight) > 0) {
            this.mGLView.setVideoSize(i3, i2);
        }
        View view2 = this.mGLView.getView();
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
        if (this.mTransRender == null) {
            AlphaRenderer alphaRenderer = new AlphaRenderer();
            this.mTransRender = alphaRenderer;
            alphaRenderer.setOnSurfacePrepareListener(new AlphaRenderer.OnSurfacePrepareListener() {
                @Override
                public void surfacePrepared(Surface surface) {
                    MgtvAlphaVideoView.this.mSurface = surface;
                    ThreadUtil.postOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            MgtvAlphaVideoView.this.openVideo();
                        }
                    });
                }
            });
            this.mTransRender.setOnSurfaceErrorListener(new AlphaRenderer.OnSurfaceErrorListener() {
                @Override
                public void surfaceError(final int i4, String str) {
                    ThreadUtil.postOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            MgtvAlphaVideoView.this.stop();
                            MgtvAlphaVideoView.this.mErrorListener.onError(IVideoView.MEDIA_ERROR_OPENGL, i4);
                        }
                    });
                }
            });
        }
        IAlphaRenderView iAlphaRenderView2 = this.mGLView;
        if (iAlphaRenderView2 != null) {
            iAlphaRenderView2.setPreserveEGLContextOnPause(true);
            this.mGLView.setOpaque(false);
            this.mGLView.setRenderer(this.mTransRender);
        }
    }

    private void setSecureImpl(boolean z) {
        IAlphaRenderView iAlphaRenderView = this.mGLView;
        if (iAlphaRenderView == null || !(iAlphaRenderView.getView() instanceof GLSurfaceView)) {
            return;
        }
        DebugLog.i(getLogTag(), "setSecure " + z);
        ((GLSurfaceView) this.mGLView.getView()).setSecure(z);
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
        if (this.mMediaPlayer != null) {
            DebugLog.i(getLogTag(), "updateSkipLoopFilter:" + this.mSkipLoopFilterType);
            this.mMediaPlayer.setSkipLoopFilter(this.mSkipLoopFilterType);
        }
    }

    private void updateVodDefaultDnsType() {
        ReportParams reportParams;
        if (this.mOpenAddrDefaultConfig && (reportParams = this.mReportParams) != null && reportParams.getVideoType() == ReportParams.VideoType.VOD) {
            this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_DNS_CACHE;
            this.mBackJavaDns = true;
            this.mPrepared4StartMode = MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_LOADDATA;
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f  */
    /* JADX WARN: Code duplicated, block: B:20:0x0051 A[Catch: IOException -> 0x0033, Exception -> 0x00d1, TryCatch #2 {IOException -> 0x0033, Exception -> 0x00d1, blocks: (B:12:0x0029, B:17:0x0036, B:25:0x005e, B:18:0x0049, B:20:0x0051, B:22:0x0055, B:24:0x0059), top: B:34:0x0029 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0055 A[Catch: IOException -> 0x0033, Exception -> 0x00d1, TryCatch #2 {IOException -> 0x0033, Exception -> 0x00d1, blocks: (B:12:0x0029, B:17:0x0036, B:25:0x005e, B:18:0x0049, B:20:0x0051, B:22:0x0055, B:24:0x0059), top: B:34:0x0029 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0059 A[Catch: IOException -> 0x0033, Exception -> 0x00d1, TryCatch #2 {IOException -> 0x0033, Exception -> 0x00d1, blocks: (B:12:0x0029, B:17:0x0036, B:25:0x005e, B:18:0x0049, B:20:0x0051, B:22:0x0055, B:24:0x0059), top: B:34:0x0029 }] */
    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    @Override
    public void changeSourceAsync(IVideoView.MediaSource mediaSource, int i, int i2, int i3) {
        String str;
        IVideoView.OnChangeSourceListener onChangeSourceListener;
        if (mediaSource == null) {
            IVideoView.OnChangeSourceListener onChangeSourceListener2 = this.mOnChangeSourceListener;
            if (onChangeSourceListener2 != null) {
                onChangeSourceListener2.onChangeSourceFailed(null, IVideoView.MEDIA_ERROR_ILLEGAL_ARGUMENT, 0);
                return;
            }
            return;
        }
        int i4 = mediaSource.readType;
        String str2 = mediaSource.url;
        IP2pTask iP2pTask = mediaSource.p2pTask;
        String str3 = mediaSource.proxyUrl;
        if (this.mMediaPlayer != null) {
            if (i4 == 0) {
                str = str3;
                mediaSource.readType = 0;
                if (StringUtil.isEmpty(str2)) {
                    onChangeSourceListener = this.mOnChangeSourceListener;
                    if (onChangeSourceListener != null) {
                        onChangeSourceListener.onChangeSourceFailed(str2, IVideoView.MEDIA_ERROR_ILLEGAL_ARGUMENT, 0);
                        return;
                    }
                    return;
                }
                this.mMediaPlayer.switchVideoSource(str2, i, i2, i3);
            } else {
                if (iP2pTask == null) {
                    try {
                        if (StringUtil.isEmpty(str3)) {
                            str = str3;
                            mediaSource.readType = 0;
                            if (StringUtil.isEmpty(str2)) {
                                onChangeSourceListener = this.mOnChangeSourceListener;
                                if (onChangeSourceListener != null) {
                                    onChangeSourceListener.onChangeSourceFailed(str2, IVideoView.MEDIA_ERROR_ILLEGAL_ARGUMENT, 0);
                                    return;
                                }
                                return;
                            }
                            this.mMediaPlayer.switchVideoSource(str2, i, i2, i3);
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                        IVideoView.OnChangeSourceListener onChangeSourceListener3 = this.mOnChangeSourceListener;
                        if (onChangeSourceListener3 != null) {
                            onChangeSourceListener3.onChangeSourceFailed(str2, IVideoView.MEDIA_ERROR_ILLEGAL_ARGUMENT, 0);
                            return;
                        }
                        return;
                    } catch (Exception unused) {
                        IVideoView.OnChangeSourceListener onChangeSourceListener4 = this.mOnChangeSourceListener;
                        if (onChangeSourceListener4 != null) {
                            onChangeSourceListener4.onChangeSourceFailed(str2, IVideoView.MEDIA_ERROR_OPENVIDEO_FAILED, 0);
                            return;
                        }
                        return;
                    }
                }
                this.mMediaPlayer.switchP2pVideoSource(i4, str2, iP2pTask, str3, i, i2, i3);
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
    public void configAudioImgoPlayer() {
        MgtvMediaPlayer mgtvMediaPlayer;
        MgtvMediaPlayer.PlayerModeType playerModeType;
        super.configAudioImgoPlayer();
        this.mOpenVideoWhenSurfaceCreate = false;
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null) {
            reportParams.setAddrInfoInt(this.mAddrInfoTypeInt);
        }
        if (this.mDnsFamilyType == 1) {
            updateVodDefaultDnsType();
        } else {
            setNetAddrinfo(0, -1);
        }
        MgtvMediaPlayer mgtvMediaPlayer2 = this.mMediaPlayer;
        if (mgtvMediaPlayer2 != null) {
            mgtvMediaPlayer2.setTimeout(this.mConnectTimeOut, this.mReciveDataTimeOut, this.mBufferTimeoutMs);
            this.mMediaPlayer.setDataSourceType(this.mDataSourceType);
            this.mMediaPlayer.setAccurateSeekEnable(true);
            this.mMediaPlayer.setNetAddrinfo(this.mAddrInfoType, this.mAddrInfoTimeoutMs, this.mJavaDnsEnable, this.mJavaDnsType, this.mNativeDnsAsyncEnable, this.mBackJavaDns);
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
            this.mMediaPlayer.setPlaybackSpeed(this.mPlaySpeed);
            this.mMediaPlayer.setLiveStartIndex(this.mLiveStartIndex);
            if (this.mEnableLiveMode) {
                this.mLastFrameRecovery = false;
                mgtvMediaPlayer = this.mMediaPlayer;
                playerModeType = MgtvMediaPlayer.PlayerModeType.TYPE_PLAYER_MODE_LIVE;
            } else {
                mgtvMediaPlayer = this.mMediaPlayer;
                playerModeType = MgtvMediaPlayer.PlayerModeType.TYPE_PLAYER_MODE_NORMAL;
            }
            mgtvMediaPlayer.setEnablePlayerMode(playerModeType);
            int i4 = this.mStartPosMs;
            if (i4 > 0) {
                this.mMediaPlayer.setPlayerSeekAtStartPosMs(i4);
                DebugLog.i(getLogTag(), "configImgoPlayer mStartPosMs:" + this.mStartPosMs);
            }
            this.mMediaPlayer.enableTsSkipError(this.mEnableTsSkipError);
            this.mMediaPlayer.setHttpDnsNeedRetry(this.mEnableHttpDnsRetry);
            this.mMediaPlayer.setP2pHttpDns(this.mEnableP2pHttpDns, false);
            this.mMediaPlayer.setEnableDnsNoNetStrategy(this.mEnableDnsNoNetStrategy);
            DebugLog.i(getLogTag(), "configImgoPlayer 1 mConnectTimeOut:" + this.mConnectTimeOut + ",mReciveDataTimeOut:" + this.mReciveDataTimeOut + ",mBufferTimeoutMs:" + this.mBufferTimeoutMs + ",mDataSourceType:" + this.mDataSourceType + ",mAccurateSeekEnable:" + this.mAccurateSeekEnable + ",mAddrInfoType:" + this.mAddrInfoType + ",mAddrInfoTimeoutMs:" + this.mAddrInfoTimeoutMs + ",mJavaDnsEnable:" + this.mJavaDnsEnable + ",mJavaDnsType:" + this.mJavaDnsType + ",mPlaySpeed:" + this.mPlaySpeed + ",mLiveStartIndex:" + this.mLiveStartIndex + ",mEnableLiveMode:" + this.mEnableLiveMode);
            String logTag = getLogTag();
            StringBuilder sb = new StringBuilder();
            sb.append("configImgoPlayer mReadDataSourceTypeConfig:");
            sb.append(this.mReadDataSourceTypeConfig);
            sb.append(",mNativeDnsAsyncEnable:");
            sb.append(this.mNativeDnsAsyncEnable);
            sb.append(",mEnableTsSkipError:");
            sb.append(this.mEnableTsSkipError);
            sb.append(",mHlsMD5CheckValue:");
            sb.append(this.mHlsMD5CheckValue);
            sb.append(",mEnableMgtvMediaCodec:");
            sb.append(this.mEnableMgtvMediaCodec);
            sb.append(",mEnableHttpDnsRetry:");
            sb.append(this.mEnableHttpDnsRetry);
            sb.append(",mEnableP2pHttpDns:");
            sb.append(this.mEnableP2pHttpDns);
            sb.append(",mEnableDnsNoNetStrategy:");
            sb.append(this.mEnableDnsNoNetStrategy);
            DebugLog.i(logTag, sb.toString());
            if (this.mNonSurfaceHolderPVTimestamp > 0) {
                this.mMediaPlayer.setNetdSVCTimeMs(System.currentTimeMillis() - this.mNonSurfaceHolderPVTimestamp);
            } else {
                this.mMediaPlayer.setNetdSVCTimeMs(0L);
            }
        }
    }

    @Override
    public void configDataCacheSizeKB(int i) {
        this.mDataCacheSizeKB = i;
        updateDataCacheSizeKB();
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00de  */
    /* JADX WARN: Code duplicated, block: B:44:0x022b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0238  */
    /* JADX WARN: Instruction removed from duplicated block: B:41:0x00de, please report this as an issue */
    @Override
    public void configImgoPlayer() throws Throwable {
        MgtvMediaPlayer mgtvMediaPlayer;
        MgtvMediaPlayer.PlayerModeType playerModeType;
        int i;
        super.configImgoPlayer();
        this.mOpenVideoWhenSurfaceCreate = false;
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null) {
            reportParams.setAddrInfoInt(this.mAddrInfoTypeInt);
        }
        if (this.mDnsFamilyType == 1) {
            updateVodDefaultDnsType();
        } else {
            setNetAddrinfo(0, -1);
        }
        MgtvMediaPlayer mgtvMediaPlayer2 = this.mMediaPlayer;
        if (mgtvMediaPlayer2 != null) {
            mgtvMediaPlayer2.setTimeout(this.mConnectTimeOut, this.mReciveDataTimeOut, this.mBufferTimeoutMs);
            this.mMediaPlayer.setDataSourceType(this.mDataSourceType);
            this.mMediaPlayer.setAccurateSeekEnable(this.mAccurateSeekEnable);
            this.mMediaPlayer.setNetAddrinfo(this.mAddrInfoType, this.mAddrInfoTimeoutMs, this.mJavaDnsEnable, this.mJavaDnsType, this.mNativeDnsAsyncEnable, this.mBackJavaDns);
            this.mMediaPlayer.configTsNotSkip(this.mTsNotSkip);
            int i2 = this.mLoadMaxRetryTime;
            if (i2 > 0) {
                this.mMediaPlayer.configLoadMaxRetryTime(i2);
            }
            int i3 = this.mWeakNetSpeed;
            if (i3 > 0) {
                this.mMediaPlayer.configWeakBufferSpeed(i3);
            }
            int i4 = this.mWeakBufferTimeoutMs;
            if (i4 > 0) {
                this.mMediaPlayer.configWeakBufferTimeout(i4);
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
            if (!this.mEnableLiveMode) {
                if (this.mSmoothModeSwitch) {
                    this.mMediaPlayer.setEnablePlayerMode(MgtvMediaPlayer.PlayerModeType.TYPE_PLAYER_MODE_SMOOTH);
                    this.mSmoothModeOpen = true;
                } else {
                    mgtvMediaPlayer = this.mMediaPlayer;
                    playerModeType = MgtvMediaPlayer.PlayerModeType.TYPE_PLAYER_MODE_NORMAL;
                }
                i = this.mStartPosMs;
                if (i > 0) {
                    this.mMediaPlayer.setPlayerSeekAtStartPosMs(i);
                    DebugLog.i(getLogTag(), "configImgoPlayer mStartPosMs:" + this.mStartPosMs);
                }
                this.mMediaPlayer.setReadDataSourceType(this.mReadDataSourceTypeConfig);
                updateDataCacheSizeKB();
                updateSkipLoopFilter();
                this.mMediaPlayer.enableJAVAIPCacheMap(this.mEnableJavaIPCache);
                this.mMediaPlayer.enableTsSkipError(this.mEnableTsSkipError);
                this.mMediaPlayer.setHlsCheckMD5(this.mHlsMD5CheckValue);
                this.mMediaPlayer.enableMgtvMediaCodec(this.mEnableMgtvMediaCodec);
                this.mMediaPlayer.setHttpDnsNeedRetry(this.mEnableHttpDnsRetry);
                this.mMediaPlayer.setP2pHttpDns(this.mEnableP2pHttpDns, false);
                this.mMediaPlayer.setEnableDnsNoNetStrategy(this.mEnableDnsNoNetStrategy);
                DebugLog.i(getLogTag(), "configImgoPlayer 1 mConnectTimeOut:" + this.mConnectTimeOut + ",mReciveDataTimeOut:" + this.mReciveDataTimeOut + ",mBufferTimeoutMs:" + this.mBufferTimeoutMs + ",mDataSourceType:" + this.mDataSourceType + ",mAccurateSeekEnable:" + this.mAccurateSeekEnable + ",mAddrInfoType:" + this.mAddrInfoType + ",mAddrInfoTimeoutMs:" + this.mAddrInfoTimeoutMs + ",mJavaDnsEnable:" + this.mJavaDnsEnable + ",mJavaDnsType:" + this.mJavaDnsType + ",mPlaySpeed:" + this.mPlaySpeed + ",mLiveStartIndex:" + this.mLiveStartIndex + ",mEnableLiveMode:" + this.mEnableLiveMode);
                String logTag = getLogTag();
                StringBuilder sb = new StringBuilder();
                sb.append("configImgoPlayer mReadDataSourceTypeConfig:");
                sb.append(this.mReadDataSourceTypeConfig);
                sb.append(",mNativeDnsAsyncEnable:");
                sb.append(this.mNativeDnsAsyncEnable);
                sb.append(",mEnableTsSkipError:");
                sb.append(this.mEnableTsSkipError);
                sb.append(",mHlsMD5CheckValue:");
                sb.append(this.mHlsMD5CheckValue);
                sb.append(",mEnableMgtvMediaCodec:");
                sb.append(this.mEnableMgtvMediaCodec);
                sb.append(",mEnableHttpDnsRetry:");
                sb.append(this.mEnableHttpDnsRetry);
                sb.append(",mEnableP2pHttpDns:");
                sb.append(this.mEnableP2pHttpDns);
                sb.append(",mEnableDnsNoNetStrategy:");
                sb.append(this.mEnableDnsNoNetStrategy);
                DebugLog.i(logTag, sb.toString());
                if (this.mNonSurfaceHolderPVTimestamp > 0) {
                    this.mMediaPlayer.setNetdSVCTimeMs(System.currentTimeMillis() - this.mNonSurfaceHolderPVTimestamp);
                } else {
                    this.mMediaPlayer.setNetdSVCTimeMs(0L);
                }
            }
            this.mLastFrameRecovery = false;
            mgtvMediaPlayer = this.mMediaPlayer;
            playerModeType = MgtvMediaPlayer.PlayerModeType.TYPE_PLAYER_MODE_LIVE;
            mgtvMediaPlayer.setEnablePlayerMode(playerModeType);
            i = this.mStartPosMs;
            if (i > 0) {
                this.mMediaPlayer.setPlayerSeekAtStartPosMs(i);
                DebugLog.i(getLogTag(), "configImgoPlayer mStartPosMs:" + this.mStartPosMs);
            }
            this.mMediaPlayer.setReadDataSourceType(this.mReadDataSourceTypeConfig);
            updateDataCacheSizeKB();
            updateSkipLoopFilter();
            this.mMediaPlayer.enableJAVAIPCacheMap(this.mEnableJavaIPCache);
            this.mMediaPlayer.enableTsSkipError(this.mEnableTsSkipError);
            this.mMediaPlayer.setHlsCheckMD5(this.mHlsMD5CheckValue);
            this.mMediaPlayer.enableMgtvMediaCodec(this.mEnableMgtvMediaCodec);
            this.mMediaPlayer.setHttpDnsNeedRetry(this.mEnableHttpDnsRetry);
            this.mMediaPlayer.setP2pHttpDns(this.mEnableP2pHttpDns, false);
            this.mMediaPlayer.setEnableDnsNoNetStrategy(this.mEnableDnsNoNetStrategy);
            DebugLog.i(getLogTag(), "configImgoPlayer 1 mConnectTimeOut:" + this.mConnectTimeOut + ",mReciveDataTimeOut:" + this.mReciveDataTimeOut + ",mBufferTimeoutMs:" + this.mBufferTimeoutMs + ",mDataSourceType:" + this.mDataSourceType + ",mAccurateSeekEnable:" + this.mAccurateSeekEnable + ",mAddrInfoType:" + this.mAddrInfoType + ",mAddrInfoTimeoutMs:" + this.mAddrInfoTimeoutMs + ",mJavaDnsEnable:" + this.mJavaDnsEnable + ",mJavaDnsType:" + this.mJavaDnsType + ",mPlaySpeed:" + this.mPlaySpeed + ",mLiveStartIndex:" + this.mLiveStartIndex + ",mEnableLiveMode:" + this.mEnableLiveMode);
            String logTag2 = getLogTag();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("configImgoPlayer mReadDataSourceTypeConfig:");
            sb2.append(this.mReadDataSourceTypeConfig);
            sb2.append(",mNativeDnsAsyncEnable:");
            sb2.append(this.mNativeDnsAsyncEnable);
            sb2.append(",mEnableTsSkipError:");
            sb2.append(this.mEnableTsSkipError);
            sb2.append(",mHlsMD5CheckValue:");
            sb2.append(this.mHlsMD5CheckValue);
            sb2.append(",mEnableMgtvMediaCodec:");
            sb2.append(this.mEnableMgtvMediaCodec);
            sb2.append(",mEnableHttpDnsRetry:");
            sb2.append(this.mEnableHttpDnsRetry);
            sb2.append(",mEnableP2pHttpDns:");
            sb2.append(this.mEnableP2pHttpDns);
            sb2.append(",mEnableDnsNoNetStrategy:");
            sb2.append(this.mEnableDnsNoNetStrategy);
            DebugLog.i(logTag2, sb2.toString());
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
        toggleRenders(i);
    }

    @Override
    public void defaultNetAddr() {
        super.defaultNetAddr();
        if (this.mDnsFamilyType != 1) {
            this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
            return;
        }
        this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mOpenAddrDefaultConfig = true;
        updateVodDefaultDnsType();
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
    public IDrmSession getBindDrmSession() {
        return null;
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
    public long getBufferedPositionMs() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getBufferedPositionMs();
        }
        return 0L;
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
        int i;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer == null || (i = this.mCurrentState) == 0 || i == 1) {
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
        return "[" + getLogTagKey() + "][" + getClass().getSimpleName() + "]";
    }

    @Override
    public String getLogTagKey() {
        String videoTypeName = ReportParams.getVideoTypeName(ReportParams.VideoType.NONE);
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null) {
            videoTypeName = ReportParams.getVideoTypeName(reportParams.getVideoType());
        }
        return (MgtvAlphaAbstractVideoView.sAutoNativeStack ? "STACK-" : "") + videoTypeName + "-" + hashCode() + "-" + getRenderViewName();
    }

    @Override
    public int getMemoryPlayType() {
        return 0;
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
    public int getReadDataSourceType() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        return mgtvMediaPlayer != null ? mgtvMediaPlayer.getReadDataSourceType() : this.mReadDataSourceTypeConfig;
    }

    @Override
    public IVideoView.RenderFilter getRenderFilter() {
        return this.mRenderFilter;
    }

    @Override
    public View getRenderView() {
        return this.mGLView.getView();
    }

    public String getRenderViewName() {
        return this.mRenderViewType == 1 ? "surface" : "texture";
    }

    @Override
    public int getRenderViewType() {
        return this.mRenderViewType;
    }

    @Override
    public ReportParams getReportParams() {
        return this.mReportParams;
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
    @Nullable
    public SubtitleSource getSubtitleSource() {
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
            return mgtvMediaPlayer.getVideoWidth() / 2;
        }
        return 0;
    }

    @Override
    public int getWanosAudioEffectChoice() {
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
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.isLoadDataPaused();
        }
        return false;
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

    @Override
    public boolean isSupportedSnapshot() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.isSupportedSnapshot();
        }
        return false;
    }

    @Override
    public boolean isTsSkipErrorEnable() {
        return this.mEnableTsSkipError;
    }

    @Override
    public boolean isWanosAudioEffectValid() {
        return false;
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
    public void openImgoDSModule(boolean z) {
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
        DebugLog.i(getLogTag(), "call pauseLoadData. waiting call native pauseLoadData");
        if (isPrepared()) {
            MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
            if (mgtvMediaPlayer != null) {
                mgtvMediaPlayer.pauseLoadData();
                return;
            }
            return;
        }
        DebugLog.i(getLogTag(), "called pauseLoadData before preapred. release player");
        try {
            ReportParams reportParams = this.mReportParams;
            if (reportParams != null) {
                reportParams.getEnd().setInnerRetry(true);
            }
            release(true, MgtvAlphaAbstractVideoView.ReleaseReason.PAUSE_DATA_BEFORE_PREPEAD);
        } catch (Exception unused) {
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
    public void removeSubtitleSource() {
    }

    @Override
    public void reset() {
        resetImpl(false);
    }

    @Override
    public void resetDataBefore(MgtvAlphaAbstractVideoView.ReleaseReason releaseReason) {
        super.resetDataBefore(releaseReason);
        this.mIsLive = false;
        if (releaseReason == MgtvAlphaAbstractVideoView.ReleaseReason.OUT) {
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
        if (releaseReason == MgtvAlphaAbstractVideoView.ReleaseReason.PAUSE_DATA_BEFORE_PREPEAD) {
            this.mReleasedByPauseLoadData = true;
        } else {
            this.mReleasedByPauseLoadData = false;
        }
        this.mOpenVideoWhenSurfaceCreate = false;
    }

    @Override
    public void resetRender() {
        if (Constants.FOR_OTT && this.mEnableTexture) {
            this.mHasSurfaceHolderDestroy = true;
        }
    }

    @Override
    public void resetVideoPath(String str) throws Throwable {
        resetVideoPath(str, null, null);
    }

    @Override
    public void resume() {
        openVideo();
    }

    @Override
    public void resumeLoadData() {
        DebugLog.i(getLogTag(), "call resumeLoadData. waiting call native resumeLoadData");
        if (!this.mReleasedByPauseLoadData) {
            MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
            if (mgtvMediaPlayer != null) {
                mgtvMediaPlayer.resumeLoadData();
                return;
            }
            return;
        }
        this.mReleasedByPauseLoadData = false;
        if (this.mCurrentUri == null) {
            DebugLog.i(getLogTag(), "call resumeLoadData. mCurrentUri == null waiting setVideoPath");
        } else {
            DebugLog.i(getLogTag(), "call resumeLoadData. player release by call pauseLoadData.reopen it");
            resume();
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
        IAlphaRenderView iAlphaRenderView = this.mGLView;
        if (iAlphaRenderView != null) {
            iAlphaRenderView.setAspectRatio(i);
        }
    }

    @Override
    public void setAudioPath(@NonNull String str) {
        this.mMainP2pTask = null;
        this.mProxyUri = null;
        if (StringUtil.isEmpty(str)) {
            this.mErrorListener.onError(7000011, 11);
        } else {
            setAudioURI(Uri.parse(str.trim()));
        }
    }

    @Override
    public void setBackPlayStartEnable(boolean z) {
        this.backPlayStartEnable = z;
    }

    @Override
    public void setBufferTimeout(int i) {
        this.mBufferTimeoutMs = i;
    }

    @Override
    public void setDisplayFloatRect(IMgtvRenderView.FloatRect floatRect) {
    }

    @Override
    public void setDrmInfoList(List<MgtvDrmParams.DrmInfo> list) {
    }

    @Override
    public void setEnableWanosAudioEffect(boolean z) {
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
    public void setNETIsBroken(boolean z) {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setNETIsBroken(z);
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
    public void setOnEventInfoListener(IVideoView.OnEventInfoListener onEventInfoListener) {
    }

    @Override
    public void setOnInfoListener(IVideoView.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    @Override
    public void setOnInfoStringListener(IVideoView.OnInfoStringListener onInfoStringListener) {
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
    public void setReadDataSourceType(int i) {
        this.mReadDataSourceTypeConfig = i;
    }

    @Override
    public void setRenderFilter(IVideoView.RenderFilter renderFilter) {
        this.mRenderFilter = renderFilter;
        int i = AnonymousClass18.$SwitchMap$com$hunantv$media$widget$IVideoView$RenderFilter[renderFilter.ordinal()];
    }

    @Override
    public void setRenderViewVisible(int i) {
        IAlphaRenderView iAlphaRenderView = this.mGLView;
        if (iAlphaRenderView != null) {
            iAlphaRenderView.setVisibility(i);
        }
    }

    @Override
    public void setReportParams(ReportParams reportParams) {
        this.mReportParams = reportParams;
        if (reportParams != null) {
            reportParams.setRenderType(this.mRenderType);
            this.mReportParams.setEnhanceQualityType(this.mEnhanceQualityType);
            this.mReportParams.setVideoType(ReportParams.VideoType.ALPHA_PLAY);
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
    public void setSmoothSwitchMode(int i) {
        super.setSmoothSwitchMode(i);
        this.mSmoothModeSwitch = i != 0;
    }

    @Override
    public void setStartPosMs(int i) {
        this.mStartPosMs = i;
    }

    @Override
    public void setStreamKey(int i) {
        this.mStreamKey = i;
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
        this.mSurfaceHolderListener = surfaceHolderListener;
    }

    @Override
    public void setTimeout(int i, int i2) {
        this.mConnectTimeOut = i;
        this.mReciveDataTimeOut = i2;
    }

    @Override
    public void setVideoDataSource(MgtvPlayerDataSource mgtvPlayerDataSource) {
    }

    @Override
    public void setVideoPath(String str) {
        setVideoPath(str, null, null);
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
    }

    @Override
    public int setWanosAudioEffectConfig(byte[] bArr) {
        return 0;
    }

    @Override
    public void setZOrderMediaOverlay(boolean z) {
        IAlphaRenderView iAlphaRenderView = this.mGLView;
        if (iAlphaRenderView == null || iAlphaRenderView.getView() == null || !(this.mGLView.getView() instanceof SurfaceView)) {
            return;
        }
        ((SurfaceView) this.mGLView.getView()).setZOrderMediaOverlay(z);
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
    public void stopRecord() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.stopRecVideo();
        }
    }

    public void toggleRenders(int i) {
        this.mRenderViewType = i;
        setRender(i);
    }

    @Override
    public void useSystemPlayer(boolean z) {
        this.mUseSystemPlayer = z;
    }

    public MgtvAlphaVideoView(Context context, int i) {
        super(context);
        this.mSurface = null;
        this.mLastSurfaceDestroy = true;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMgtvMediaPlayerHardwareMode = true;
        this.mForceDecodeMode = false;
        this.mFromSurfaceDestroyToPlay = false;
        this.mFromSurfaceDestroyPlayPosition = 0;
        this.mErrorMsg = "";
        this.mHasSurfaceHolderDestroy = false;
        this.mRenderViewType = 1;
        this.mLogCallBackOpen = true;
        this.mStreamKey = -1;
        this.mIsLive = false;
        this.mUseSystemPlayer = false;
        this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrInfoTypeInt = 0;
        this.mOpenAddrDefaultConfig = true;
        this.mJavaDnsType = a.b.NORMAL;
        this.mNativeDnsAsyncEnable = true;
        this.mBackJavaDns = false;
        this.mEnableHttpDnsRetry = false;
        this.mEnableDnsNoNetStrategy = true;
        this.mEnableP2pHttpDns = false;
        this.mHlsMD5CheckValue = 0;
        this.mEnableMgtvMediaCodec = false;
        this.mEnableJavaIPCache = false;
        this.mLastFrameRecovery = true;
        this.mWeakNetSpeed = 0;
        this.mWeakBufferTimeoutMs = 0;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 0;
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
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
        this.mReadDataSourceTypeConfig = 0;
        this.mStartPosMs = 0;
        this.mFlowDataStatistic = new FlowDataStatistic();
        this.mSkipLoopFilterType = MgtvMediaPlayer.SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mSizeChangedListener = new MgtvPlayerListener.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    MgtvAlphaVideoView.this.requestLayout();
                }
                if (MgtvAlphaVideoView.this.mOnVideoSizeChangedListener != null) {
                    MgtvAlphaVideoView.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i2, i3);
                }
            }
        };
        this.mPreparedListener = new MgtvPlayerListener.OnPreparedListener() {
            /* JADX WARN: Code duplicated, block: B:15:0x0094  */
            @Override
            public void onPrepared() {
                MgtvAlphaVideoView.this.changeCurrentState(2);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    DebugLog.i("@@@@", "video size: " + MgtvAlphaVideoView.this.mVideoWidth + "/" + MgtvAlphaVideoView.this.mVideoHeight);
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    if (MgtvAlphaVideoView.this.mSurfaceWidth == MgtvAlphaVideoView.this.mVideoWidth && MgtvAlphaVideoView.this.mSurfaceHeight == MgtvAlphaVideoView.this.mVideoHeight && MgtvAlphaVideoView.this.mTargetState == 3) {
                        MgtvAlphaVideoView.this.start();
                    }
                } else if (MgtvAlphaVideoView.this.mTargetState == 3) {
                    MgtvAlphaVideoView.this.start();
                }
                if (MgtvAlphaVideoView.this.mOnPreparedListener != null) {
                    MgtvAlphaVideoView.this.mOnPreparedListener.onPrepared();
                }
            }
        };
        this.mCompletionListener = new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i2, int i3) {
                if (i2 != 0) {
                    MgtvAlphaVideoView.this.stopInner();
                }
                MgtvAlphaVideoView.this.changeCurrentState(5);
                MgtvAlphaVideoView.this.mTargetState = 5;
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "-------------on onCompletion what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnCompletionListener != null) {
                    MgtvAlphaVideoView.this.mOnCompletionListener.onCompletion(i2, i3);
                }
            }
        };
        this.mInfoListener = new MgtvPlayerListener.OnInfoListener() {
            /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
                java.lang.NullPointerException
                */
            @Override
            public boolean onInfo(int r5, int r6) {
                /*
                    Method dump skipped, instruction units count: 724
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hunantv.media.alpha.MgtvAlphaVideoView.AnonymousClass6.onInfo(int, int):boolean");
            }
        };
        this.mInfoStringListener = new MgtvPlayerListener.OnInfoStringListener() {
            @Override
            public boolean onInfo(int i2, String str) {
                String str2;
                String logTag = MgtvAlphaVideoView.this.getLogTag();
                if (i2 != 2860) {
                    str2 = "OnInfoStringListener what: " + i2 + ", extra is " + str;
                } else {
                    str2 = "MEDIA_INFO_SEI_SYS_TIMESTAMP: " + str;
                }
                DebugLog.i(logTag, str2);
                return false;
            }
        };
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            @Override
            public boolean onError(int i2, int i3) {
                DebugLog.w(MgtvAlphaVideoView.this.getLogTag(), "onError what:" + i2 + ",extra:" + i3);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvAlphaVideoView.mMediaPlayer;
                if (mgtvMediaPlayer == null || i2 != 7000006) {
                    if (mgtvMediaPlayer != null && mgtvAlphaVideoView.mCurrentState != -1) {
                        MgtvAlphaVideoView.this.mMediaPlayer.stop();
                    }
                    MgtvAlphaVideoView.this.changeCurrentState(-1);
                    MgtvAlphaVideoView.this.mTargetState = -1;
                } else {
                    mgtvAlphaVideoView.releaseNoStatus();
                    MgtvAlphaVideoView.this.changeCurrentState(0);
                    MgtvAlphaVideoView.this.mTargetState = 0;
                }
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.mCurrentUri = null;
                mgtvAlphaVideoView2.mProxyUri = null;
                return mgtvAlphaVideoView2.mOnErrorListener != null && MgtvAlphaVideoView.this.mOnErrorListener.onError(i2, i3);
            }
        };
        this.mSeekCompleteListener = new MgtvPlayerListener.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(int i2, int i3) {
                if (MgtvAlphaVideoView.this.mOnSeekCompleteListener != null) {
                    DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onSeekComplete seekTargetTime:" + i2 + ",errorCode:" + i3);
                    MgtvAlphaVideoView.this.mOnSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mBufferingUpdateListener = new MgtvPlayerListener.OnBufferingUpdateListener() {
            @Override
            public void onBufferingUpdate(int i2) {
                if (MgtvAlphaVideoView.this.mOnBufferringUpdateListener != null) {
                    MgtvAlphaVideoView.this.mOnBufferringUpdateListener.onBufferingUpdate(i2);
                }
            }
        };
        this.mBufferingTimeoutListener = new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i2, int i3) {
                MgtvMediaPlayer mgtvMediaPlayer = MgtvAlphaVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.stop();
                }
                MgtvAlphaVideoView.this.changeCurrentState(-1);
                MgtvAlphaVideoView.this.mTargetState = -1;
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.mCurrentUri = null;
                mgtvAlphaVideoView.mProxyUri = null;
                if (mgtvAlphaVideoView.mOnErrorListener != null) {
                    MgtvAlphaVideoView.this.mOnErrorListener.onError(i2, i3);
                }
                return true;
            }
        };
        this.mSwitchSourceListener = new MgtvPlayerListener.OnSwitchSourceListener() {
            @Override
            public void onSwitchSourceComplete(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceComplete url:" + str + ",type:" + i2 + ",time:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceSuccess(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceFailed(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceFailed url:" + str + ",what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceFailed(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceInfo(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceInfo url:" + str + ",event:" + i2 + ",time:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceInfo(str, i2, i3);
                }
            }
        };
        this.mPlayerWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onTsSkip tsUrl:" + str);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onTsSkip(str, i2, i3);
                }
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "player render warning:" + i2 + ",extra:" + str + ",msg:" + str2);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onWarning(i2, str, str2, obj);
                }
            }
        };
        this.mGifRecorder = new GifRecorder();
        this.mStartListener = new MgtvPlayerListener.OnStartListener() {
            @Override
            public void onStart() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onStart");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnStart();
                }
            }
        };
        this.mPauseListener = new MgtvPlayerListener.OnPauseListener() {
            @Override
            public void onPause() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onPause");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnPause();
                }
            }
        };
        this.mRecordVideoListener = new MgtvPlayerListener.OnRecordVideoListener() {
            @Override
            public void onRecordVideoErr(int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoErr what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordError(i2, i3);
                }
            }

            @Override
            public void onRecordVideoInfo(int i2, int i3) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoInfo what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    if (i2 == 20) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStart(MgtvAlphaVideoView.this.mRecordFilePath);
                    } else if (i2 == 30) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStop();
                    }
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordInfo(i2, i3);
                }
            }
        };
        this.mLoadDataListener = new MgtvPlayerListener.OnLoadDataListener() {
            @Override
            public void onAfterLoadDataPaused() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onAfterLoadDataPaused();
                }
            }

            @Override
            public void onBeforeLoadDataResume() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onBeforeLoadDataResume();
                }
            }
        };
        this.backPlayStartEnable = false;
        initVideoView(context, i);
    }

    private void initVideoView(Context context, int i) {
        this.mContext = context;
        this.metrics = context.getResources().getDisplayMetrics();
        this.mRenderViewType = i;
        if (i == 1) {
            this.mEnableTexture = false;
        }
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

    /* JADX WARN: Code duplicated, block: B:52:0x00db A[Catch: all -> 0x007f, OutOfMemoryError -> 0x0083, UnsatisfiedLinkError -> 0x0087, c -> 0x008b, Exception -> 0x008f, NullPointerException -> 0x0093, SecurityException -> 0x0097, IllegalStateException -> 0x009b, IllegalArgumentException -> 0x009f, IOException -> 0x00a3, InvalidParameterException -> 0x00a7, TryCatch #2 {c -> 0x008b, IOException -> 0x00a3, InvalidParameterException -> 0x00a7, IllegalArgumentException -> 0x009f, IllegalStateException -> 0x009b, NullPointerException -> 0x0093, Exception -> 0x008f, OutOfMemoryError -> 0x0083, SecurityException -> 0x0097, UnsatisfiedLinkError -> 0x0087, all -> 0x007f, blocks: (B:21:0x004c, B:24:0x0062, B:50:0x00cd, B:52:0x00db, B:53:0x00e2, B:55:0x0162, B:58:0x0167, B:64:0x0191, B:59:0x0178, B:61:0x0186, B:63:0x018c, B:47:0x00ab, B:48:0x00be, B:49:0x00c1), top: B:101:0x004c }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0178 A[Catch: all -> 0x007f, OutOfMemoryError -> 0x0083, UnsatisfiedLinkError -> 0x0087, c -> 0x008b, Exception -> 0x008f, NullPointerException -> 0x0093, SecurityException -> 0x0097, IllegalStateException -> 0x009b, IllegalArgumentException -> 0x009f, IOException -> 0x00a3, InvalidParameterException -> 0x00a7, TryCatch #2 {c -> 0x008b, IOException -> 0x00a3, InvalidParameterException -> 0x00a7, IllegalArgumentException -> 0x009f, IllegalStateException -> 0x009b, NullPointerException -> 0x0093, Exception -> 0x008f, OutOfMemoryError -> 0x0083, SecurityException -> 0x0097, UnsatisfiedLinkError -> 0x0087, all -> 0x007f, blocks: (B:21:0x004c, B:24:0x0062, B:50:0x00cd, B:52:0x00db, B:53:0x00e2, B:55:0x0162, B:58:0x0167, B:64:0x0191, B:59:0x0178, B:61:0x0186, B:63:0x018c, B:47:0x00ab, B:48:0x00be, B:49:0x00c1), top: B:101:0x004c }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0186 A[Catch: all -> 0x007f, OutOfMemoryError -> 0x0083, UnsatisfiedLinkError -> 0x0087, c -> 0x008b, Exception -> 0x008f, NullPointerException -> 0x0093, SecurityException -> 0x0097, IllegalStateException -> 0x009b, IllegalArgumentException -> 0x009f, IOException -> 0x00a3, InvalidParameterException -> 0x00a7, TryCatch #2 {c -> 0x008b, IOException -> 0x00a3, InvalidParameterException -> 0x00a7, IllegalArgumentException -> 0x009f, IllegalStateException -> 0x009b, NullPointerException -> 0x0093, Exception -> 0x008f, OutOfMemoryError -> 0x0083, SecurityException -> 0x0097, UnsatisfiedLinkError -> 0x0087, all -> 0x007f, blocks: (B:21:0x004c, B:24:0x0062, B:50:0x00cd, B:52:0x00db, B:53:0x00e2, B:55:0x0162, B:58:0x0167, B:64:0x0191, B:59:0x0178, B:61:0x0186, B:63:0x018c, B:47:0x00ab, B:48:0x00be, B:49:0x00c1), top: B:101:0x004c }] */
    /* JADX WARN: Code duplicated, block: B:62:0x018b  */
    private void openVideo(boolean z) {
        Surface surface;
        MgtvMediaPlayer mgtvMediaPlayer;
        FlowDataStatistic flowDataStatistic;
        Uri uri;
        String string;
        this.mErrorMsg = "";
        release(false, true);
        if (this.mCurrentUri == null || (surface = this.mSurface) == null) {
            DebugLog.e(getLogTag(), "imgo openVideo: not ready for playback just yet, will try again later, mCurrentUri:" + this.mCurrentUri + ", mSurfaceHolder:" + this.mSurface);
            if (this.mCurrentUri == null || this.mSurface != null) {
                return;
            }
            this.mNonSurfaceHolderPVTimestamp = System.currentTimeMillis();
            this.mOpenVideoWhenSurfaceCreate = true;
            return;
        }
        if (this.mGLView == null) {
            MgtvPlayerListener.OnErrorListener onErrorListener = this.mErrorListener;
            if (onErrorListener != null) {
                onErrorListener.onError(IVideoView.MEDIA_ERROR_NULLPOINT, 0);
            }
            this.mErrorMsg = "openVideo renderView is null";
            DebugLog.e(getLogTag(), this.mErrorMsg);
            return;
        }
        if (surface == null || !surface.isValid()) {
            MgtvPlayerListener.OnErrorListener onErrorListener2 = this.mErrorListener;
            if (onErrorListener2 != null) {
                onErrorListener2.onError(IVideoView.MEDIA_ERROR_SURFACE_FAILED, 0);
            }
            this.mErrorMsg = "openVideo surface is invalid";
            if (this.mSurface != null) {
                DebugLog.e(getLogTag(), "openVideo surface is invalid " + this.mSurface);
                return;
            }
            return;
        }
        if (this.isRequestAudioFocus) {
            requestAudioFocus();
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("BUNDLE_KEY_LOG_TAG_KEY", getLogTagKey());
            boolean z2 = this.mIsLiveConfig;
            if (!this.mUseSystemPlayer) {
                if (z) {
                    this.mMediaPlayer = new MgtvMediaPlayer(2, this.mContext, this.mEnableTexture, z2 ? 1 : 0, bundle);
                } else {
                    this.mEnableTexture = false;
                    mgtvMediaPlayer = new MgtvMediaPlayer(1, this.mContext, this.mEnableTexture, z2 ? 1 : 0, bundle);
                }
                setLastMediaMode(0);
                this.mMediaPlayer.setFlowDataStatistic(this.mFlowDataStatistic);
                flowDataStatistic = this.mFlowDataStatistic;
                if (flowDataStatistic != null) {
                    flowDataStatistic.setLogTag(getLogTag());
                }
                this.mMediaPlayer.setReportParams(this.mReportParams);
                configImgoPlayer();
                super.initListener(this.mMediaPlayer);
                this.mMediaPlayer.setOnPreparedListener(this.mPreparedListener);
                this.mMediaPlayer.setOnStartListener(this.mStartListener);
                this.mMediaPlayer.setOnPauseListener(this.mPauseListener);
                this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
                this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
                this.mMediaPlayer.setOnInfoListener(this.mInfoListener);
                this.mMediaPlayer.setOnInfoStringListener(this.mInfoStringListener);
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
                if (this.mMainP2pTask == null || this.mProxyUri != null) {
                    MgtvMediaPlayer mgtvMediaPlayer2 = this.mMediaPlayer;
                    String string2 = this.mCurrentUri.toString();
                    IP2pTask iP2pTask = this.mMainP2pTask;
                    uri = this.mProxyUri;
                    if (uri != null) {
                        string = uri.toString();
                    } else {
                        string = null;
                    }
                    mgtvMediaPlayer2.setP2pDataSource(string2, iP2pTask, string, this.mStreamKey);
                } else {
                    this.mMediaPlayer.setReadDataSourceType(0);
                    this.mMediaPlayer.setDataSource(this.mCurrentUri.toString());
                }
                this.mMediaPlayer.setSurface(this.mSurface);
                this.mMediaPlayer.setAudioStreamType(3);
                this.mMediaPlayer.setScreenOnWhilePlaying(this.mIsScreenOnWhilePlaying);
                this.mMediaPlayer.prepareAsync();
                changeCurrentState(1);
                DebugLog.i(getLogTag(), "openVideo is over");
            }
            mgtvMediaPlayer = new MgtvMediaPlayer(0, this.mContext, false, bundle);
            this.mMediaPlayer = mgtvMediaPlayer;
            setLastMediaMode(0);
            this.mMediaPlayer.setFlowDataStatistic(this.mFlowDataStatistic);
            flowDataStatistic = this.mFlowDataStatistic;
            if (flowDataStatistic != null) {
                flowDataStatistic.setLogTag(getLogTag());
            }
            this.mMediaPlayer.setReportParams(this.mReportParams);
            configImgoPlayer();
            super.initListener(this.mMediaPlayer);
            this.mMediaPlayer.setOnPreparedListener(this.mPreparedListener);
            this.mMediaPlayer.setOnStartListener(this.mStartListener);
            this.mMediaPlayer.setOnPauseListener(this.mPauseListener);
            this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
            this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
            this.mMediaPlayer.setOnInfoListener(this.mInfoListener);
            this.mMediaPlayer.setOnInfoStringListener(this.mInfoStringListener);
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
            if (this.mMainP2pTask == null) {
                MgtvMediaPlayer mgtvMediaPlayer3 = this.mMediaPlayer;
                String string3 = this.mCurrentUri.toString();
                IP2pTask iP2pTask2 = this.mMainP2pTask;
                uri = this.mProxyUri;
                if (uri != null) {
                    string = uri.toString();
                } else {
                    string = null;
                }
                mgtvMediaPlayer3.setP2pDataSource(string3, iP2pTask2, string, this.mStreamKey);
            } else {
                MgtvMediaPlayer mgtvMediaPlayer4 = this.mMediaPlayer;
                String string4 = this.mCurrentUri.toString();
                IP2pTask iP2pTask3 = this.mMainP2pTask;
                uri = this.mProxyUri;
                if (uri != null) {
                    string = uri.toString();
                } else {
                    string = null;
                }
                mgtvMediaPlayer4.setP2pDataSource(string4, iP2pTask3, string, this.mStreamKey);
            }
            this.mMediaPlayer.setSurface(this.mSurface);
            this.mMediaPlayer.setAudioStreamType(3);
            this.mMediaPlayer.setScreenOnWhilePlaying(this.mIsScreenOnWhilePlaying);
            this.mMediaPlayer.prepareAsync();
            changeCurrentState(1);
            DebugLog.i(getLogTag(), "openVideo is over");
        } catch (c e) {
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
        } catch (InvalidParameterException e3) {
            DebugLog.w(getLogTag(), "Unable to open content: " + this.mCurrentUri);
            this.mErrorMsg = e3.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SURFACE_FAILED, 3);
        } catch (IllegalArgumentException e4) {
            DebugLog.w(getLogTag(), "Unable to open content: " + this.mCurrentUri + ",details:" + e4.getMessage());
            this.mErrorMsg = e4.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_ILLEGAL_ARGUMENT, 0);
        } catch (IllegalStateException e5) {
            DebugLog.w(getLogTag(), "Unable to open content: " + this.mCurrentUri);
            this.mErrorMsg = e5.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_ILLEGAL_STATE, 0);
        } catch (NullPointerException e6) {
            DebugLog.i(getLogTag(), "NullPointerException: " + this.mCurrentUri + ",details:" + e6.getMessage());
            this.mErrorMsg = e6.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_NULLPOINT, 0);
        } catch (Exception e7) {
            DebugLog.w(getLogTag(), "Unable to open content: " + this.mCurrentUri + ",details:" + e7.getMessage());
            this.mErrorMsg = e7.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_OPENVIDEO_FAILED, 0);
        } catch (OutOfMemoryError e8) {
            DebugLog.i(getLogTag(), "OutOfMemoryError: " + this.mCurrentUri + ",details:" + e8.getMessage());
            this.mErrorMsg = e8.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_OUTOFMEM, 0);
        } catch (SecurityException e9) {
            DebugLog.i(getLogTag(), "SecurityException: " + this.mCurrentUri + ",details:" + e9.getMessage());
            this.mErrorMsg = e9.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SECURITY, 0);
        } catch (UnsatisfiedLinkError e10) {
            DebugLog.i(getLogTag(), "UnsatisfiedLinkError: " + this.mCurrentUri + ",details:" + e10.getMessage());
            this.mErrorMsg = e10.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_LIB_NOTLOAD, 0);
        } catch (Throwable th) {
            DebugLog.i(getLogTag(), "Throwable: " + this.mCurrentUri + ",details:" + th.getMessage());
            this.mErrorMsg = th.getMessage();
            changeCurrentState(-1);
            this.mTargetState = -1;
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_OPENVIDEO_FAILED, 1);
        }
    }

    private void release(boolean z, MgtvAlphaAbstractVideoView.ReleaseReason releaseReason) {
        DebugLog.i(getLogTag(), "release player.clear.cleartargetstate:" + z);
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            if (z) {
                mgtvMediaPlayer.stop();
            }
            resetDataBefore(releaseReason);
            releaseNoStatus();
            setLastMediaMode(0);
            changeCurrentState(0);
            if (z) {
                this.mTargetState = 0;
            }
            resetDataAfter(releaseReason);
        }
        if (releaseReason == MgtvAlphaAbstractVideoView.ReleaseReason.OUT) {
            abandonAudioFocus();
        }
    }

    @Override
    public void changeSourceAsync(String str, int i, int i2, int i3) {
        changeSourceAsync(new IVideoView.MediaSource().setReadType(0).setUrl(str), i, i2, i3);
    }

    @Override
    public void resetVideoPath(String str, IP2pTask iP2pTask, String str2) throws Throwable {
        this.mNonSurfaceHolderPVTimestamp = 0L;
        if (str == null) {
            this.mErrorListener.onError(7000011, 12);
        } else {
            this.mCurrentUri = Uri.parse(str.trim());
        }
        this.mMainP2pTask = iP2pTask;
        if (StringUtil.isEmpty(str2)) {
            this.mProxyUri = null;
        } else {
            this.mProxyUri = Uri.parse(str2.trim());
        }
        if (this.mMediaPlayer == null || isOnlyAudioMode()) {
            setVideoPath(str, iP2pTask, str2);
            return;
        }
        this.mRebindTexture = false;
        if (this.mHasSurfaceHolderDestroy) {
            convertRender(this.mRenderViewType);
            return;
        }
        this.mMediaPlayer.setSurfaceHolder(null);
        ResetResult resetResultResetImpl = resetImpl(true);
        if (resetResultResetImpl == ResetResult.NONE) {
            setVideoPath(str, iP2pTask, str2);
            return;
        }
        if (resetResultResetImpl == ResetResult.RESET_ERR) {
            return;
        }
        if (this.mSurface == null) {
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
            this.mMediaPlayer.setSurface(this.mSurface);
            this.mMediaPlayer.prepareAsync();
            changeCurrentState(1);
        } catch (InvalidParameterException e) {
            e = e;
            this.mErrorMsg = e.getMessage();
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SURFACE_FAILED, 2);
            e.printStackTrace();
        } catch (Exception e2) {
            e = e2;
            this.mErrorMsg = e.getMessage();
            this.mErrorListener.onError(IVideoView.MEDIA_ERROR_SETSOURCE_FAILED, 0);
            e.printStackTrace();
        }
    }

    @Override
    public void seekTo(int i, boolean z) {
        seekTo(i, z, false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:49:0x00bd  */
    @Override
    public void setNetAddrinfo(int i, int i2, boolean z) {
        MgtvMediaPlayer.AddrinfoType addrinfoType;
        this.mNativeDnsAsyncEnable = true;
        this.mBackJavaDns = false;
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null && ((reportParams.getVideoType() == ReportParams.VideoType.AD_PRE || this.mReportParams.getVideoType() == ReportParams.VideoType.AD_MID || this.mReportParams.getVideoType() == ReportParams.VideoType.AD_BOOT) && i > 3)) {
            i = 3;
        }
        DebugLog.i(getLogTag(), "setNetAddrinfo " + i + ",timeout:" + i2 + ",enablePreDns:false");
        this.mAddrInfoTypeInt = i;
        this.mHlsMD5CheckValue = 0;
        this.mEnableMgtvMediaCodec = false;
        this.mEnableHttpDnsRetry = false;
        this.mEnableP2pHttpDns = false;
        this.mEnableDnsNoNetStrategy = false;
        this.mOpenAddrDefaultConfig = false;
        if (this.mDnsFamilyType != 1) {
            defaultNetAddr();
        } else {
            if (i == 1) {
                addrinfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_THREAD;
            } else if (i == 2) {
                addrinfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_ONE_BY_ONE;
            } else if (i == 3) {
                this.mEnableDnsNoNetStrategy = true;
                defaultNetAddr();
            } else {
                if (i != 4) {
                    if (i != 5) {
                        if (i == 9) {
                            this.mNativeDnsAsyncEnable = false;
                        } else if (i == 23) {
                            this.mEnableDnsNoNetStrategy = true;
                        } else if (i != 999) {
                            if (i == 11) {
                                this.mEnableJavaIPCache = true;
                                this.mHlsMD5CheckValue = 1;
                            } else if (i == 12) {
                                this.mEnableJavaIPCache = true;
                                this.mHlsMD5CheckValue = 2;
                            } else if (i == 39) {
                                this.mKeyInfoSetEnable = false;
                            } else if (i != 40) {
                                switch (i) {
                                    case 29:
                                        this.mEnableMgtvMediaCodec = false;
                                        break;
                                    case 30:
                                        setMgtvFastMode(0);
                                        this.mEnableDefaultFileStartTime = false;
                                        break;
                                    case 31:
                                    case 32:
                                    case 33:
                                        setMgtvFastMode(i % 30);
                                        break;
                                }
                            } else {
                                setMgtvFastMode(0);
                                this.mEnableDefaultFileStartTime = false;
                                this.mKeyInfoSetEnable = false;
                            }
                        }
                    }
                    defaultNetAddr();
                } else {
                    this.mEnableP2pHttpDns = true;
                }
                this.mEnableHttpDnsRetry = true;
                defaultNetAddr();
            }
            this.mAddrInfoType = addrinfoType;
        }
        if (i2 > 0) {
            this.mAddrInfoTimeoutMs = i2 * 1000;
        }
        this.mJavaDnsEnable = false;
    }

    @Override
    public void setVideoPath(String str, IP2pTask iP2pTask, String str2) {
        DebugLog.i(getLogTag(), "setVideoPath:" + str);
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

    public MgtvAlphaVideoView(Context context, int i, boolean z) {
        super(context);
        this.mSurface = null;
        this.mLastSurfaceDestroy = true;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMgtvMediaPlayerHardwareMode = true;
        this.mForceDecodeMode = false;
        this.mFromSurfaceDestroyToPlay = false;
        this.mFromSurfaceDestroyPlayPosition = 0;
        this.mErrorMsg = "";
        this.mHasSurfaceHolderDestroy = false;
        this.mRenderViewType = 1;
        this.mLogCallBackOpen = true;
        this.mStreamKey = -1;
        this.mIsLive = false;
        this.mUseSystemPlayer = false;
        this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrInfoTypeInt = 0;
        this.mOpenAddrDefaultConfig = true;
        this.mJavaDnsType = a.b.NORMAL;
        this.mNativeDnsAsyncEnable = true;
        this.mBackJavaDns = false;
        this.mEnableHttpDnsRetry = false;
        this.mEnableDnsNoNetStrategy = true;
        this.mEnableP2pHttpDns = false;
        this.mHlsMD5CheckValue = 0;
        this.mEnableMgtvMediaCodec = false;
        this.mEnableJavaIPCache = false;
        this.mLastFrameRecovery = true;
        this.mWeakNetSpeed = 0;
        this.mWeakBufferTimeoutMs = 0;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 0;
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
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
        this.mReadDataSourceTypeConfig = 0;
        this.mStartPosMs = 0;
        this.mFlowDataStatistic = new FlowDataStatistic();
        this.mSkipLoopFilterType = MgtvMediaPlayer.SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mSizeChangedListener = new MgtvPlayerListener.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    MgtvAlphaVideoView.this.requestLayout();
                }
                if (MgtvAlphaVideoView.this.mOnVideoSizeChangedListener != null) {
                    MgtvAlphaVideoView.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i2, i3);
                }
            }
        };
        this.mPreparedListener = new MgtvPlayerListener.OnPreparedListener() {
            /* JADX WARN: Code duplicated, block: B:15:0x0094  */
            @Override
            public void onPrepared() {
                MgtvAlphaVideoView.this.changeCurrentState(2);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    DebugLog.i("@@@@", "video size: " + MgtvAlphaVideoView.this.mVideoWidth + "/" + MgtvAlphaVideoView.this.mVideoHeight);
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    if (MgtvAlphaVideoView.this.mSurfaceWidth == MgtvAlphaVideoView.this.mVideoWidth && MgtvAlphaVideoView.this.mSurfaceHeight == MgtvAlphaVideoView.this.mVideoHeight && MgtvAlphaVideoView.this.mTargetState == 3) {
                        MgtvAlphaVideoView.this.start();
                    }
                } else if (MgtvAlphaVideoView.this.mTargetState == 3) {
                    MgtvAlphaVideoView.this.start();
                }
                if (MgtvAlphaVideoView.this.mOnPreparedListener != null) {
                    MgtvAlphaVideoView.this.mOnPreparedListener.onPrepared();
                }
            }
        };
        this.mCompletionListener = new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i2, int i3) {
                if (i2 != 0) {
                    MgtvAlphaVideoView.this.stopInner();
                }
                MgtvAlphaVideoView.this.changeCurrentState(5);
                MgtvAlphaVideoView.this.mTargetState = 5;
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "-------------on onCompletion what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnCompletionListener != null) {
                    MgtvAlphaVideoView.this.mOnCompletionListener.onCompletion(i2, i3);
                }
            }
        };
        this.mInfoListener = new MgtvPlayerListener.OnInfoListener() {
            /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
                java.lang.NullPointerException
                */
            @Override
            public boolean onInfo(int r5, int r6) {
                /*
                    Method dump skipped, instruction units count: 724
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hunantv.media.alpha.MgtvAlphaVideoView.AnonymousClass6.onInfo(int, int):boolean");
            }
        };
        this.mInfoStringListener = new MgtvPlayerListener.OnInfoStringListener() {
            @Override
            public boolean onInfo(int i2, String str) {
                String str2;
                String logTag = MgtvAlphaVideoView.this.getLogTag();
                if (i2 != 2860) {
                    str2 = "OnInfoStringListener what: " + i2 + ", extra is " + str;
                } else {
                    str2 = "MEDIA_INFO_SEI_SYS_TIMESTAMP: " + str;
                }
                DebugLog.i(logTag, str2);
                return false;
            }
        };
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            @Override
            public boolean onError(int i2, int i3) {
                DebugLog.w(MgtvAlphaVideoView.this.getLogTag(), "onError what:" + i2 + ",extra:" + i3);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvAlphaVideoView.mMediaPlayer;
                if (mgtvMediaPlayer == null || i2 != 7000006) {
                    if (mgtvMediaPlayer != null && mgtvAlphaVideoView.mCurrentState != -1) {
                        MgtvAlphaVideoView.this.mMediaPlayer.stop();
                    }
                    MgtvAlphaVideoView.this.changeCurrentState(-1);
                    MgtvAlphaVideoView.this.mTargetState = -1;
                } else {
                    mgtvAlphaVideoView.releaseNoStatus();
                    MgtvAlphaVideoView.this.changeCurrentState(0);
                    MgtvAlphaVideoView.this.mTargetState = 0;
                }
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.mCurrentUri = null;
                mgtvAlphaVideoView2.mProxyUri = null;
                return mgtvAlphaVideoView2.mOnErrorListener != null && MgtvAlphaVideoView.this.mOnErrorListener.onError(i2, i3);
            }
        };
        this.mSeekCompleteListener = new MgtvPlayerListener.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(int i2, int i3) {
                if (MgtvAlphaVideoView.this.mOnSeekCompleteListener != null) {
                    DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onSeekComplete seekTargetTime:" + i2 + ",errorCode:" + i3);
                    MgtvAlphaVideoView.this.mOnSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mBufferingUpdateListener = new MgtvPlayerListener.OnBufferingUpdateListener() {
            @Override
            public void onBufferingUpdate(int i2) {
                if (MgtvAlphaVideoView.this.mOnBufferringUpdateListener != null) {
                    MgtvAlphaVideoView.this.mOnBufferringUpdateListener.onBufferingUpdate(i2);
                }
            }
        };
        this.mBufferingTimeoutListener = new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i2, int i3) {
                MgtvMediaPlayer mgtvMediaPlayer = MgtvAlphaVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.stop();
                }
                MgtvAlphaVideoView.this.changeCurrentState(-1);
                MgtvAlphaVideoView.this.mTargetState = -1;
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.mCurrentUri = null;
                mgtvAlphaVideoView.mProxyUri = null;
                if (mgtvAlphaVideoView.mOnErrorListener != null) {
                    MgtvAlphaVideoView.this.mOnErrorListener.onError(i2, i3);
                }
                return true;
            }
        };
        this.mSwitchSourceListener = new MgtvPlayerListener.OnSwitchSourceListener() {
            @Override
            public void onSwitchSourceComplete(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceComplete url:" + str + ",type:" + i2 + ",time:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceSuccess(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceFailed(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceFailed url:" + str + ",what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceFailed(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceInfo(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceInfo url:" + str + ",event:" + i2 + ",time:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceInfo(str, i2, i3);
                }
            }
        };
        this.mPlayerWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onTsSkip tsUrl:" + str);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onTsSkip(str, i2, i3);
                }
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "player render warning:" + i2 + ",extra:" + str + ",msg:" + str2);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onWarning(i2, str, str2, obj);
                }
            }
        };
        this.mGifRecorder = new GifRecorder();
        this.mStartListener = new MgtvPlayerListener.OnStartListener() {
            @Override
            public void onStart() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onStart");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnStart();
                }
            }
        };
        this.mPauseListener = new MgtvPlayerListener.OnPauseListener() {
            @Override
            public void onPause() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onPause");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnPause();
                }
            }
        };
        this.mRecordVideoListener = new MgtvPlayerListener.OnRecordVideoListener() {
            @Override
            public void onRecordVideoErr(int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoErr what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordError(i2, i3);
                }
            }

            @Override
            public void onRecordVideoInfo(int i2, int i3) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoInfo what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    if (i2 == 20) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStart(MgtvAlphaVideoView.this.mRecordFilePath);
                    } else if (i2 == 30) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStop();
                    }
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordInfo(i2, i3);
                }
            }
        };
        this.mLoadDataListener = new MgtvPlayerListener.OnLoadDataListener() {
            @Override
            public void onAfterLoadDataPaused() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onAfterLoadDataPaused();
                }
            }

            @Override
            public void onBeforeLoadDataResume() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onBeforeLoadDataResume();
                }
            }
        };
        this.backPlayStartEnable = false;
        this.mEnableTexture = z;
        initVideoView(context, i);
    }

    private void release(boolean z, boolean z2) {
        release(z, z2 ? MgtvAlphaAbstractVideoView.ReleaseReason.DEFAULT_INNER : MgtvAlphaAbstractVideoView.ReleaseReason.OUT);
    }

    public void seekTo(int i, boolean z, boolean z2) {
        if (isInPlaybackState()) {
            if (i >= 0) {
                if (this.mFromSurfaceDestroyToPlay) {
                    this.mFromSurfaceDestroyPlayPosition = i;
                }
                DebugLog.i(getLogTag(), "seekTo msec:" + i);
                this.mMediaPlayer.seekTo(i, z, z2);
                if (this.mSeekAutoStartAfterCompleteEnable && this.mCurrentState == 5) {
                    callbackOnStart();
                }
            }
            i = 0;
        }
        this.mSeekWhenPrepared = i;
    }

    @Override
    public void setNetAddrinfo(String str, int i, boolean z) {
        super.setNetAddrinfo(str, i, z);
        int i2 = NetPlayConfig.sConfigFastMode;
        if (i2 != 0) {
            if (i2 == 9) {
                i2 = 0;
            }
            setMgtvFastMode(i2);
        }
        int i3 = NetPlayConfig.sConfigP2pHttpDns;
        if (i3 != 0) {
            this.mEnableP2pHttpDns = i3 != 9;
        }
        int i4 = NetPlayConfig.sConfigMgtvMediaCodec;
        if (i4 != 0) {
            this.mEnableMgtvMediaCodec = i4 != 9;
        }
        DebugLog.i(getLogTag(), "setNetAddrinfo mMgtvFastMode:" + this.mMgtvFastMode + ",mEnableP2pHttpDns:" + this.mEnableP2pHttpDns + ",mEnableMgtvMediaCodec:" + this.mEnableMgtvMediaCodec);
    }

    public MgtvAlphaVideoView(Context context, int i, boolean z, boolean z2) {
        super(context);
        this.mSurface = null;
        this.mLastSurfaceDestroy = true;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMgtvMediaPlayerHardwareMode = true;
        this.mForceDecodeMode = false;
        this.mFromSurfaceDestroyToPlay = false;
        this.mFromSurfaceDestroyPlayPosition = 0;
        this.mErrorMsg = "";
        this.mHasSurfaceHolderDestroy = false;
        this.mRenderViewType = 1;
        this.mLogCallBackOpen = true;
        this.mStreamKey = -1;
        this.mIsLive = false;
        this.mUseSystemPlayer = false;
        this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrInfoTypeInt = 0;
        this.mOpenAddrDefaultConfig = true;
        this.mJavaDnsType = a.b.NORMAL;
        this.mNativeDnsAsyncEnable = true;
        this.mBackJavaDns = false;
        this.mEnableHttpDnsRetry = false;
        this.mEnableDnsNoNetStrategy = true;
        this.mEnableP2pHttpDns = false;
        this.mHlsMD5CheckValue = 0;
        this.mEnableMgtvMediaCodec = false;
        this.mEnableJavaIPCache = false;
        this.mLastFrameRecovery = true;
        this.mWeakNetSpeed = 0;
        this.mWeakBufferTimeoutMs = 0;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 0;
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
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
        this.mReadDataSourceTypeConfig = 0;
        this.mStartPosMs = 0;
        this.mFlowDataStatistic = new FlowDataStatistic();
        this.mSkipLoopFilterType = MgtvMediaPlayer.SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mSizeChangedListener = new MgtvPlayerListener.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    MgtvAlphaVideoView.this.requestLayout();
                }
                if (MgtvAlphaVideoView.this.mOnVideoSizeChangedListener != null) {
                    MgtvAlphaVideoView.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i2, i3);
                }
            }
        };
        this.mPreparedListener = new MgtvPlayerListener.OnPreparedListener() {
            /* JADX WARN: Code duplicated, block: B:15:0x0094  */
            @Override
            public void onPrepared() {
                MgtvAlphaVideoView.this.changeCurrentState(2);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    DebugLog.i("@@@@", "video size: " + MgtvAlphaVideoView.this.mVideoWidth + "/" + MgtvAlphaVideoView.this.mVideoHeight);
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    if (MgtvAlphaVideoView.this.mSurfaceWidth == MgtvAlphaVideoView.this.mVideoWidth && MgtvAlphaVideoView.this.mSurfaceHeight == MgtvAlphaVideoView.this.mVideoHeight && MgtvAlphaVideoView.this.mTargetState == 3) {
                        MgtvAlphaVideoView.this.start();
                    }
                } else if (MgtvAlphaVideoView.this.mTargetState == 3) {
                    MgtvAlphaVideoView.this.start();
                }
                if (MgtvAlphaVideoView.this.mOnPreparedListener != null) {
                    MgtvAlphaVideoView.this.mOnPreparedListener.onPrepared();
                }
            }
        };
        this.mCompletionListener = new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i2, int i3) {
                if (i2 != 0) {
                    MgtvAlphaVideoView.this.stopInner();
                }
                MgtvAlphaVideoView.this.changeCurrentState(5);
                MgtvAlphaVideoView.this.mTargetState = 5;
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "-------------on onCompletion what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnCompletionListener != null) {
                    MgtvAlphaVideoView.this.mOnCompletionListener.onCompletion(i2, i3);
                }
            }
        };
        this.mInfoListener = new MgtvPlayerListener.OnInfoListener() {
            /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
                java.lang.NullPointerException
                */
            @Override
            public boolean onInfo(int r5, int r6) {
                /*
                    Method dump skipped, instruction units count: 724
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hunantv.media.alpha.MgtvAlphaVideoView.AnonymousClass6.onInfo(int, int):boolean");
            }
        };
        this.mInfoStringListener = new MgtvPlayerListener.OnInfoStringListener() {
            @Override
            public boolean onInfo(int i2, String str) {
                String str2;
                String logTag = MgtvAlphaVideoView.this.getLogTag();
                if (i2 != 2860) {
                    str2 = "OnInfoStringListener what: " + i2 + ", extra is " + str;
                } else {
                    str2 = "MEDIA_INFO_SEI_SYS_TIMESTAMP: " + str;
                }
                DebugLog.i(logTag, str2);
                return false;
            }
        };
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            @Override
            public boolean onError(int i2, int i3) {
                DebugLog.w(MgtvAlphaVideoView.this.getLogTag(), "onError what:" + i2 + ",extra:" + i3);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvAlphaVideoView.mMediaPlayer;
                if (mgtvMediaPlayer == null || i2 != 7000006) {
                    if (mgtvMediaPlayer != null && mgtvAlphaVideoView.mCurrentState != -1) {
                        MgtvAlphaVideoView.this.mMediaPlayer.stop();
                    }
                    MgtvAlphaVideoView.this.changeCurrentState(-1);
                    MgtvAlphaVideoView.this.mTargetState = -1;
                } else {
                    mgtvAlphaVideoView.releaseNoStatus();
                    MgtvAlphaVideoView.this.changeCurrentState(0);
                    MgtvAlphaVideoView.this.mTargetState = 0;
                }
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.mCurrentUri = null;
                mgtvAlphaVideoView2.mProxyUri = null;
                return mgtvAlphaVideoView2.mOnErrorListener != null && MgtvAlphaVideoView.this.mOnErrorListener.onError(i2, i3);
            }
        };
        this.mSeekCompleteListener = new MgtvPlayerListener.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(int i2, int i3) {
                if (MgtvAlphaVideoView.this.mOnSeekCompleteListener != null) {
                    DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onSeekComplete seekTargetTime:" + i2 + ",errorCode:" + i3);
                    MgtvAlphaVideoView.this.mOnSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mBufferingUpdateListener = new MgtvPlayerListener.OnBufferingUpdateListener() {
            @Override
            public void onBufferingUpdate(int i2) {
                if (MgtvAlphaVideoView.this.mOnBufferringUpdateListener != null) {
                    MgtvAlphaVideoView.this.mOnBufferringUpdateListener.onBufferingUpdate(i2);
                }
            }
        };
        this.mBufferingTimeoutListener = new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i2, int i3) {
                MgtvMediaPlayer mgtvMediaPlayer = MgtvAlphaVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.stop();
                }
                MgtvAlphaVideoView.this.changeCurrentState(-1);
                MgtvAlphaVideoView.this.mTargetState = -1;
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.mCurrentUri = null;
                mgtvAlphaVideoView.mProxyUri = null;
                if (mgtvAlphaVideoView.mOnErrorListener != null) {
                    MgtvAlphaVideoView.this.mOnErrorListener.onError(i2, i3);
                }
                return true;
            }
        };
        this.mSwitchSourceListener = new MgtvPlayerListener.OnSwitchSourceListener() {
            @Override
            public void onSwitchSourceComplete(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceComplete url:" + str + ",type:" + i2 + ",time:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceSuccess(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceFailed(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceFailed url:" + str + ",what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceFailed(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceInfo(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceInfo url:" + str + ",event:" + i2 + ",time:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceInfo(str, i2, i3);
                }
            }
        };
        this.mPlayerWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onTsSkip tsUrl:" + str);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onTsSkip(str, i2, i3);
                }
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "player render warning:" + i2 + ",extra:" + str + ",msg:" + str2);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onWarning(i2, str, str2, obj);
                }
            }
        };
        this.mGifRecorder = new GifRecorder();
        this.mStartListener = new MgtvPlayerListener.OnStartListener() {
            @Override
            public void onStart() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onStart");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnStart();
                }
            }
        };
        this.mPauseListener = new MgtvPlayerListener.OnPauseListener() {
            @Override
            public void onPause() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onPause");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnPause();
                }
            }
        };
        this.mRecordVideoListener = new MgtvPlayerListener.OnRecordVideoListener() {
            @Override
            public void onRecordVideoErr(int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoErr what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordError(i2, i3);
                }
            }

            @Override
            public void onRecordVideoInfo(int i2, int i3) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoInfo what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    if (i2 == 20) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStart(MgtvAlphaVideoView.this.mRecordFilePath);
                    } else if (i2 == 30) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStop();
                    }
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordInfo(i2, i3);
                }
            }
        };
        this.mLoadDataListener = new MgtvPlayerListener.OnLoadDataListener() {
            @Override
            public void onAfterLoadDataPaused() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onAfterLoadDataPaused();
                }
            }

            @Override
            public void onBeforeLoadDataResume() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onBeforeLoadDataResume();
                }
            }
        };
        this.backPlayStartEnable = false;
        this.mEnableTexture = z;
        this.mEnableOpengl = z2;
        initVideoView(context, i);
    }

    public MgtvAlphaVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSurface = null;
        this.mLastSurfaceDestroy = true;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMgtvMediaPlayerHardwareMode = true;
        this.mForceDecodeMode = false;
        this.mFromSurfaceDestroyToPlay = false;
        this.mFromSurfaceDestroyPlayPosition = 0;
        this.mErrorMsg = "";
        this.mHasSurfaceHolderDestroy = false;
        this.mRenderViewType = 1;
        this.mLogCallBackOpen = true;
        this.mStreamKey = -1;
        this.mIsLive = false;
        this.mUseSystemPlayer = false;
        this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrInfoTypeInt = 0;
        this.mOpenAddrDefaultConfig = true;
        this.mJavaDnsType = a.b.NORMAL;
        this.mNativeDnsAsyncEnable = true;
        this.mBackJavaDns = false;
        this.mEnableHttpDnsRetry = false;
        this.mEnableDnsNoNetStrategy = true;
        this.mEnableP2pHttpDns = false;
        this.mHlsMD5CheckValue = 0;
        this.mEnableMgtvMediaCodec = false;
        this.mEnableJavaIPCache = false;
        this.mLastFrameRecovery = true;
        this.mWeakNetSpeed = 0;
        this.mWeakBufferTimeoutMs = 0;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 0;
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
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
        this.mReadDataSourceTypeConfig = 0;
        this.mStartPosMs = 0;
        this.mFlowDataStatistic = new FlowDataStatistic();
        this.mSkipLoopFilterType = MgtvMediaPlayer.SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mSizeChangedListener = new MgtvPlayerListener.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    MgtvAlphaVideoView.this.requestLayout();
                }
                if (MgtvAlphaVideoView.this.mOnVideoSizeChangedListener != null) {
                    MgtvAlphaVideoView.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i2, i3);
                }
            }
        };
        this.mPreparedListener = new MgtvPlayerListener.OnPreparedListener() {
            /* JADX WARN: Code duplicated, block: B:15:0x0094  */
            @Override
            public void onPrepared() {
                MgtvAlphaVideoView.this.changeCurrentState(2);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    DebugLog.i("@@@@", "video size: " + MgtvAlphaVideoView.this.mVideoWidth + "/" + MgtvAlphaVideoView.this.mVideoHeight);
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    if (MgtvAlphaVideoView.this.mSurfaceWidth == MgtvAlphaVideoView.this.mVideoWidth && MgtvAlphaVideoView.this.mSurfaceHeight == MgtvAlphaVideoView.this.mVideoHeight && MgtvAlphaVideoView.this.mTargetState == 3) {
                        MgtvAlphaVideoView.this.start();
                    }
                } else if (MgtvAlphaVideoView.this.mTargetState == 3) {
                    MgtvAlphaVideoView.this.start();
                }
                if (MgtvAlphaVideoView.this.mOnPreparedListener != null) {
                    MgtvAlphaVideoView.this.mOnPreparedListener.onPrepared();
                }
            }
        };
        this.mCompletionListener = new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i2, int i3) {
                if (i2 != 0) {
                    MgtvAlphaVideoView.this.stopInner();
                }
                MgtvAlphaVideoView.this.changeCurrentState(5);
                MgtvAlphaVideoView.this.mTargetState = 5;
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "-------------on onCompletion what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnCompletionListener != null) {
                    MgtvAlphaVideoView.this.mOnCompletionListener.onCompletion(i2, i3);
                }
            }
        };
        this.mInfoListener = new MgtvPlayerListener.OnInfoListener() {
            /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
                java.lang.NullPointerException
                */
            @Override
            public boolean onInfo(int r5, int r6) {
                /*
                    Method dump skipped, instruction units count: 724
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hunantv.media.alpha.MgtvAlphaVideoView.AnonymousClass6.onInfo(int, int):boolean");
            }
        };
        this.mInfoStringListener = new MgtvPlayerListener.OnInfoStringListener() {
            @Override
            public boolean onInfo(int i2, String str) {
                String str2;
                String logTag = MgtvAlphaVideoView.this.getLogTag();
                if (i2 != 2860) {
                    str2 = "OnInfoStringListener what: " + i2 + ", extra is " + str;
                } else {
                    str2 = "MEDIA_INFO_SEI_SYS_TIMESTAMP: " + str;
                }
                DebugLog.i(logTag, str2);
                return false;
            }
        };
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            @Override
            public boolean onError(int i2, int i3) {
                DebugLog.w(MgtvAlphaVideoView.this.getLogTag(), "onError what:" + i2 + ",extra:" + i3);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvAlphaVideoView.mMediaPlayer;
                if (mgtvMediaPlayer == null || i2 != 7000006) {
                    if (mgtvMediaPlayer != null && mgtvAlphaVideoView.mCurrentState != -1) {
                        MgtvAlphaVideoView.this.mMediaPlayer.stop();
                    }
                    MgtvAlphaVideoView.this.changeCurrentState(-1);
                    MgtvAlphaVideoView.this.mTargetState = -1;
                } else {
                    mgtvAlphaVideoView.releaseNoStatus();
                    MgtvAlphaVideoView.this.changeCurrentState(0);
                    MgtvAlphaVideoView.this.mTargetState = 0;
                }
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.mCurrentUri = null;
                mgtvAlphaVideoView2.mProxyUri = null;
                return mgtvAlphaVideoView2.mOnErrorListener != null && MgtvAlphaVideoView.this.mOnErrorListener.onError(i2, i3);
            }
        };
        this.mSeekCompleteListener = new MgtvPlayerListener.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(int i2, int i3) {
                if (MgtvAlphaVideoView.this.mOnSeekCompleteListener != null) {
                    DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onSeekComplete seekTargetTime:" + i2 + ",errorCode:" + i3);
                    MgtvAlphaVideoView.this.mOnSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mBufferingUpdateListener = new MgtvPlayerListener.OnBufferingUpdateListener() {
            @Override
            public void onBufferingUpdate(int i2) {
                if (MgtvAlphaVideoView.this.mOnBufferringUpdateListener != null) {
                    MgtvAlphaVideoView.this.mOnBufferringUpdateListener.onBufferingUpdate(i2);
                }
            }
        };
        this.mBufferingTimeoutListener = new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i2, int i3) {
                MgtvMediaPlayer mgtvMediaPlayer = MgtvAlphaVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.stop();
                }
                MgtvAlphaVideoView.this.changeCurrentState(-1);
                MgtvAlphaVideoView.this.mTargetState = -1;
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.mCurrentUri = null;
                mgtvAlphaVideoView.mProxyUri = null;
                if (mgtvAlphaVideoView.mOnErrorListener != null) {
                    MgtvAlphaVideoView.this.mOnErrorListener.onError(i2, i3);
                }
                return true;
            }
        };
        this.mSwitchSourceListener = new MgtvPlayerListener.OnSwitchSourceListener() {
            @Override
            public void onSwitchSourceComplete(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceComplete url:" + str + ",type:" + i2 + ",time:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceSuccess(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceFailed(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceFailed url:" + str + ",what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceFailed(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceInfo(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceInfo url:" + str + ",event:" + i2 + ",time:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceInfo(str, i2, i3);
                }
            }
        };
        this.mPlayerWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onTsSkip tsUrl:" + str);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onTsSkip(str, i2, i3);
                }
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "player render warning:" + i2 + ",extra:" + str + ",msg:" + str2);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onWarning(i2, str, str2, obj);
                }
            }
        };
        this.mGifRecorder = new GifRecorder();
        this.mStartListener = new MgtvPlayerListener.OnStartListener() {
            @Override
            public void onStart() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onStart");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnStart();
                }
            }
        };
        this.mPauseListener = new MgtvPlayerListener.OnPauseListener() {
            @Override
            public void onPause() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onPause");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnPause();
                }
            }
        };
        this.mRecordVideoListener = new MgtvPlayerListener.OnRecordVideoListener() {
            @Override
            public void onRecordVideoErr(int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoErr what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordError(i2, i3);
                }
            }

            @Override
            public void onRecordVideoInfo(int i2, int i3) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoInfo what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    if (i2 == 20) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStart(MgtvAlphaVideoView.this.mRecordFilePath);
                    } else if (i2 == 30) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStop();
                    }
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordInfo(i2, i3);
                }
            }
        };
        this.mLoadDataListener = new MgtvPlayerListener.OnLoadDataListener() {
            @Override
            public void onAfterLoadDataPaused() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onAfterLoadDataPaused();
                }
            }

            @Override
            public void onBeforeLoadDataResume() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onBeforeLoadDataResume();
                }
            }
        };
        this.backPlayStartEnable = false;
        initVideoView(context);
    }

    public MgtvAlphaVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSurface = null;
        this.mLastSurfaceDestroy = true;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMgtvMediaPlayerHardwareMode = true;
        this.mForceDecodeMode = false;
        this.mFromSurfaceDestroyToPlay = false;
        this.mFromSurfaceDestroyPlayPosition = 0;
        this.mErrorMsg = "";
        this.mHasSurfaceHolderDestroy = false;
        this.mRenderViewType = 1;
        this.mLogCallBackOpen = true;
        this.mStreamKey = -1;
        this.mIsLive = false;
        this.mUseSystemPlayer = false;
        this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrInfoTypeInt = 0;
        this.mOpenAddrDefaultConfig = true;
        this.mJavaDnsType = a.b.NORMAL;
        this.mNativeDnsAsyncEnable = true;
        this.mBackJavaDns = false;
        this.mEnableHttpDnsRetry = false;
        this.mEnableDnsNoNetStrategy = true;
        this.mEnableP2pHttpDns = false;
        this.mHlsMD5CheckValue = 0;
        this.mEnableMgtvMediaCodec = false;
        this.mEnableJavaIPCache = false;
        this.mLastFrameRecovery = true;
        this.mWeakNetSpeed = 0;
        this.mWeakBufferTimeoutMs = 0;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 0;
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
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
        this.mReadDataSourceTypeConfig = 0;
        this.mStartPosMs = 0;
        this.mFlowDataStatistic = new FlowDataStatistic();
        this.mSkipLoopFilterType = MgtvMediaPlayer.SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mSizeChangedListener = new MgtvPlayerListener.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    MgtvAlphaVideoView.this.requestLayout();
                }
                if (MgtvAlphaVideoView.this.mOnVideoSizeChangedListener != null) {
                    MgtvAlphaVideoView.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i2, i3);
                }
            }
        };
        this.mPreparedListener = new MgtvPlayerListener.OnPreparedListener() {
            /* JADX WARN: Code duplicated, block: B:15:0x0094  */
            @Override
            public void onPrepared() {
                MgtvAlphaVideoView.this.changeCurrentState(2);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    DebugLog.i("@@@@", "video size: " + MgtvAlphaVideoView.this.mVideoWidth + "/" + MgtvAlphaVideoView.this.mVideoHeight);
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    if (MgtvAlphaVideoView.this.mSurfaceWidth == MgtvAlphaVideoView.this.mVideoWidth && MgtvAlphaVideoView.this.mSurfaceHeight == MgtvAlphaVideoView.this.mVideoHeight && MgtvAlphaVideoView.this.mTargetState == 3) {
                        MgtvAlphaVideoView.this.start();
                    }
                } else if (MgtvAlphaVideoView.this.mTargetState == 3) {
                    MgtvAlphaVideoView.this.start();
                }
                if (MgtvAlphaVideoView.this.mOnPreparedListener != null) {
                    MgtvAlphaVideoView.this.mOnPreparedListener.onPrepared();
                }
            }
        };
        this.mCompletionListener = new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i2, int i3) {
                if (i2 != 0) {
                    MgtvAlphaVideoView.this.stopInner();
                }
                MgtvAlphaVideoView.this.changeCurrentState(5);
                MgtvAlphaVideoView.this.mTargetState = 5;
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "-------------on onCompletion what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnCompletionListener != null) {
                    MgtvAlphaVideoView.this.mOnCompletionListener.onCompletion(i2, i3);
                }
            }
        };
        this.mInfoListener = new MgtvPlayerListener.OnInfoListener() {
            /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
                java.lang.NullPointerException
                */
            @Override
            public boolean onInfo(int r5, int r6) {
                /*
                    Method dump skipped, instruction units count: 724
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hunantv.media.alpha.MgtvAlphaVideoView.AnonymousClass6.onInfo(int, int):boolean");
            }
        };
        this.mInfoStringListener = new MgtvPlayerListener.OnInfoStringListener() {
            @Override
            public boolean onInfo(int i2, String str) {
                String str2;
                String logTag = MgtvAlphaVideoView.this.getLogTag();
                if (i2 != 2860) {
                    str2 = "OnInfoStringListener what: " + i2 + ", extra is " + str;
                } else {
                    str2 = "MEDIA_INFO_SEI_SYS_TIMESTAMP: " + str;
                }
                DebugLog.i(logTag, str2);
                return false;
            }
        };
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            @Override
            public boolean onError(int i2, int i3) {
                DebugLog.w(MgtvAlphaVideoView.this.getLogTag(), "onError what:" + i2 + ",extra:" + i3);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvAlphaVideoView.mMediaPlayer;
                if (mgtvMediaPlayer == null || i2 != 7000006) {
                    if (mgtvMediaPlayer != null && mgtvAlphaVideoView.mCurrentState != -1) {
                        MgtvAlphaVideoView.this.mMediaPlayer.stop();
                    }
                    MgtvAlphaVideoView.this.changeCurrentState(-1);
                    MgtvAlphaVideoView.this.mTargetState = -1;
                } else {
                    mgtvAlphaVideoView.releaseNoStatus();
                    MgtvAlphaVideoView.this.changeCurrentState(0);
                    MgtvAlphaVideoView.this.mTargetState = 0;
                }
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.mCurrentUri = null;
                mgtvAlphaVideoView2.mProxyUri = null;
                return mgtvAlphaVideoView2.mOnErrorListener != null && MgtvAlphaVideoView.this.mOnErrorListener.onError(i2, i3);
            }
        };
        this.mSeekCompleteListener = new MgtvPlayerListener.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(int i2, int i3) {
                if (MgtvAlphaVideoView.this.mOnSeekCompleteListener != null) {
                    DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onSeekComplete seekTargetTime:" + i2 + ",errorCode:" + i3);
                    MgtvAlphaVideoView.this.mOnSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mBufferingUpdateListener = new MgtvPlayerListener.OnBufferingUpdateListener() {
            @Override
            public void onBufferingUpdate(int i2) {
                if (MgtvAlphaVideoView.this.mOnBufferringUpdateListener != null) {
                    MgtvAlphaVideoView.this.mOnBufferringUpdateListener.onBufferingUpdate(i2);
                }
            }
        };
        this.mBufferingTimeoutListener = new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i2, int i3) {
                MgtvMediaPlayer mgtvMediaPlayer = MgtvAlphaVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.stop();
                }
                MgtvAlphaVideoView.this.changeCurrentState(-1);
                MgtvAlphaVideoView.this.mTargetState = -1;
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.mCurrentUri = null;
                mgtvAlphaVideoView.mProxyUri = null;
                if (mgtvAlphaVideoView.mOnErrorListener != null) {
                    MgtvAlphaVideoView.this.mOnErrorListener.onError(i2, i3);
                }
                return true;
            }
        };
        this.mSwitchSourceListener = new MgtvPlayerListener.OnSwitchSourceListener() {
            @Override
            public void onSwitchSourceComplete(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceComplete url:" + str + ",type:" + i2 + ",time:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceSuccess(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceFailed(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceFailed url:" + str + ",what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceFailed(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceInfo(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceInfo url:" + str + ",event:" + i2 + ",time:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceInfo(str, i2, i3);
                }
            }
        };
        this.mPlayerWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onTsSkip tsUrl:" + str);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onTsSkip(str, i2, i3);
                }
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "player render warning:" + i2 + ",extra:" + str + ",msg:" + str2);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onWarning(i2, str, str2, obj);
                }
            }
        };
        this.mGifRecorder = new GifRecorder();
        this.mStartListener = new MgtvPlayerListener.OnStartListener() {
            @Override
            public void onStart() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onStart");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnStart();
                }
            }
        };
        this.mPauseListener = new MgtvPlayerListener.OnPauseListener() {
            @Override
            public void onPause() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onPause");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnPause();
                }
            }
        };
        this.mRecordVideoListener = new MgtvPlayerListener.OnRecordVideoListener() {
            @Override
            public void onRecordVideoErr(int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoErr what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordError(i2, i3);
                }
            }

            @Override
            public void onRecordVideoInfo(int i2, int i3) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoInfo what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    if (i2 == 20) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStart(MgtvAlphaVideoView.this.mRecordFilePath);
                    } else if (i2 == 30) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStop();
                    }
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordInfo(i2, i3);
                }
            }
        };
        this.mLoadDataListener = new MgtvPlayerListener.OnLoadDataListener() {
            @Override
            public void onAfterLoadDataPaused() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onAfterLoadDataPaused();
                }
            }

            @Override
            public void onBeforeLoadDataResume() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onBeforeLoadDataResume();
                }
            }
        };
        this.backPlayStartEnable = false;
        initVideoView(context);
    }

    public MgtvAlphaVideoView(Context context, IVideoView.Configuration configuration) {
        super(context, configuration);
        this.mSurface = null;
        this.mLastSurfaceDestroy = true;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMgtvMediaPlayerHardwareMode = true;
        this.mForceDecodeMode = false;
        this.mFromSurfaceDestroyToPlay = false;
        this.mFromSurfaceDestroyPlayPosition = 0;
        this.mErrorMsg = "";
        this.mHasSurfaceHolderDestroy = false;
        this.mRenderViewType = 1;
        this.mLogCallBackOpen = true;
        this.mStreamKey = -1;
        this.mIsLive = false;
        this.mUseSystemPlayer = false;
        this.mAddrInfoType = MgtvMediaPlayer.AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrInfoTypeInt = 0;
        this.mOpenAddrDefaultConfig = true;
        this.mJavaDnsType = a.b.NORMAL;
        this.mNativeDnsAsyncEnable = true;
        this.mBackJavaDns = false;
        this.mEnableHttpDnsRetry = false;
        this.mEnableDnsNoNetStrategy = true;
        this.mEnableP2pHttpDns = false;
        this.mHlsMD5CheckValue = 0;
        this.mEnableMgtvMediaCodec = false;
        this.mEnableJavaIPCache = false;
        this.mLastFrameRecovery = true;
        this.mWeakNetSpeed = 0;
        this.mWeakBufferTimeoutMs = 0;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 0;
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
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
        this.mReadDataSourceTypeConfig = 0;
        this.mStartPosMs = 0;
        this.mFlowDataStatistic = new FlowDataStatistic();
        this.mSkipLoopFilterType = MgtvMediaPlayer.SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mSizeChangedListener = new MgtvPlayerListener.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    MgtvAlphaVideoView.this.requestLayout();
                }
                if (MgtvAlphaVideoView.this.mOnVideoSizeChangedListener != null) {
                    MgtvAlphaVideoView.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i2, i3);
                }
            }
        };
        this.mPreparedListener = new MgtvPlayerListener.OnPreparedListener() {
            /* JADX WARN: Code duplicated, block: B:15:0x0094  */
            @Override
            public void onPrepared() {
                MgtvAlphaVideoView.this.changeCurrentState(2);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.originalVideoWidth = mgtvAlphaVideoView.mVideoWidth = mgtvAlphaVideoView.getVideoWidth();
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.originalVideoHeight = mgtvAlphaVideoView2.mVideoHeight = mgtvAlphaVideoView2.mMediaPlayer.getVideoHeight();
                if (MgtvAlphaVideoView.this.mVideoWidth != 0 && MgtvAlphaVideoView.this.mVideoHeight != 0) {
                    DebugLog.i("@@@@", "video size: " + MgtvAlphaVideoView.this.mVideoWidth + "/" + MgtvAlphaVideoView.this.mVideoHeight);
                    MgtvAlphaVideoView mgtvAlphaVideoView3 = MgtvAlphaVideoView.this;
                    IAlphaRenderView iAlphaRenderView = mgtvAlphaVideoView3.mGLView;
                    if (iAlphaRenderView != null) {
                        iAlphaRenderView.setVideoSize(mgtvAlphaVideoView3.mVideoWidth, MgtvAlphaVideoView.this.mVideoHeight);
                    }
                    if (MgtvAlphaVideoView.this.mSurfaceWidth == MgtvAlphaVideoView.this.mVideoWidth && MgtvAlphaVideoView.this.mSurfaceHeight == MgtvAlphaVideoView.this.mVideoHeight && MgtvAlphaVideoView.this.mTargetState == 3) {
                        MgtvAlphaVideoView.this.start();
                    }
                } else if (MgtvAlphaVideoView.this.mTargetState == 3) {
                    MgtvAlphaVideoView.this.start();
                }
                if (MgtvAlphaVideoView.this.mOnPreparedListener != null) {
                    MgtvAlphaVideoView.this.mOnPreparedListener.onPrepared();
                }
            }
        };
        this.mCompletionListener = new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i2, int i3) {
                if (i2 != 0) {
                    MgtvAlphaVideoView.this.stopInner();
                }
                MgtvAlphaVideoView.this.changeCurrentState(5);
                MgtvAlphaVideoView.this.mTargetState = 5;
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "-------------on onCompletion what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnCompletionListener != null) {
                    MgtvAlphaVideoView.this.mOnCompletionListener.onCompletion(i2, i3);
                }
            }
        };
        this.mInfoListener = new MgtvPlayerListener.OnInfoListener() {
            /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
                java.lang.NullPointerException
                */
            @Override
            public boolean onInfo(int r5, int r6) {
                /*
                    Method dump skipped, instruction units count: 724
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hunantv.media.alpha.MgtvAlphaVideoView.AnonymousClass6.onInfo(int, int):boolean");
            }
        };
        this.mInfoStringListener = new MgtvPlayerListener.OnInfoStringListener() {
            @Override
            public boolean onInfo(int i2, String str) {
                String str2;
                String logTag = MgtvAlphaVideoView.this.getLogTag();
                if (i2 != 2860) {
                    str2 = "OnInfoStringListener what: " + i2 + ", extra is " + str;
                } else {
                    str2 = "MEDIA_INFO_SEI_SYS_TIMESTAMP: " + str;
                }
                DebugLog.i(logTag, str2);
                return false;
            }
        };
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            @Override
            public boolean onError(int i2, int i3) {
                DebugLog.w(MgtvAlphaVideoView.this.getLogTag(), "onError what:" + i2 + ",extra:" + i3);
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                MgtvMediaPlayer mgtvMediaPlayer = mgtvAlphaVideoView.mMediaPlayer;
                if (mgtvMediaPlayer == null || i2 != 7000006) {
                    if (mgtvMediaPlayer != null && mgtvAlphaVideoView.mCurrentState != -1) {
                        MgtvAlphaVideoView.this.mMediaPlayer.stop();
                    }
                    MgtvAlphaVideoView.this.changeCurrentState(-1);
                    MgtvAlphaVideoView.this.mTargetState = -1;
                } else {
                    mgtvAlphaVideoView.releaseNoStatus();
                    MgtvAlphaVideoView.this.changeCurrentState(0);
                    MgtvAlphaVideoView.this.mTargetState = 0;
                }
                MgtvAlphaVideoView mgtvAlphaVideoView2 = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView2.mCurrentUri = null;
                mgtvAlphaVideoView2.mProxyUri = null;
                return mgtvAlphaVideoView2.mOnErrorListener != null && MgtvAlphaVideoView.this.mOnErrorListener.onError(i2, i3);
            }
        };
        this.mSeekCompleteListener = new MgtvPlayerListener.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(int i2, int i3) {
                if (MgtvAlphaVideoView.this.mOnSeekCompleteListener != null) {
                    DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onSeekComplete seekTargetTime:" + i2 + ",errorCode:" + i3);
                    MgtvAlphaVideoView.this.mOnSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mBufferingUpdateListener = new MgtvPlayerListener.OnBufferingUpdateListener() {
            @Override
            public void onBufferingUpdate(int i2) {
                if (MgtvAlphaVideoView.this.mOnBufferringUpdateListener != null) {
                    MgtvAlphaVideoView.this.mOnBufferringUpdateListener.onBufferingUpdate(i2);
                }
            }
        };
        this.mBufferingTimeoutListener = new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i2, int i3) {
                MgtvMediaPlayer mgtvMediaPlayer = MgtvAlphaVideoView.this.mMediaPlayer;
                if (mgtvMediaPlayer != null) {
                    mgtvMediaPlayer.stop();
                }
                MgtvAlphaVideoView.this.changeCurrentState(-1);
                MgtvAlphaVideoView.this.mTargetState = -1;
                MgtvAlphaVideoView mgtvAlphaVideoView = MgtvAlphaVideoView.this;
                mgtvAlphaVideoView.mCurrentUri = null;
                mgtvAlphaVideoView.mProxyUri = null;
                if (mgtvAlphaVideoView.mOnErrorListener != null) {
                    MgtvAlphaVideoView.this.mOnErrorListener.onError(i2, i3);
                }
                return true;
            }
        };
        this.mSwitchSourceListener = new MgtvPlayerListener.OnSwitchSourceListener() {
            @Override
            public void onSwitchSourceComplete(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceComplete url:" + str + ",type:" + i2 + ",time:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceSuccess(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceFailed(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceFailed url:" + str + ",what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceFailed(str, i2, i3);
                }
            }

            @Override
            public void onSwitchSourceInfo(String str, int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onSwitchSourceInfo url:" + str + ",event:" + i2 + ",time:" + i3);
                if (MgtvAlphaVideoView.this.mOnChangeSourceListener != null) {
                    MgtvAlphaVideoView.this.mOnChangeSourceListener.onChangeSourceInfo(str, i2, i3);
                }
            }
        };
        this.mPlayerWarning = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onTsSkip tsUrl:" + str);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onTsSkip(str, i2, i3);
                }
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "player render warning:" + i2 + ",extra:" + str + ",msg:" + str2);
                if (MgtvAlphaVideoView.this.mOnWarningListener != null) {
                    MgtvAlphaVideoView.this.mOnWarningListener.onWarning(i2, str, str2, obj);
                }
            }
        };
        this.mGifRecorder = new GifRecorder();
        this.mStartListener = new MgtvPlayerListener.OnStartListener() {
            @Override
            public void onStart() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onStart");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnStart();
                }
            }
        };
        this.mPauseListener = new MgtvPlayerListener.OnPauseListener() {
            @Override
            public void onPause() {
                DebugLog.d(MgtvAlphaVideoView.this.getLogTag(), "mgtvcore onPause");
                if (MgtvAlphaVideoView.this.mEnableCoreStartPauseListen) {
                    MgtvAlphaVideoView.this.callbackOnPause();
                }
            }
        };
        this.mRecordVideoListener = new MgtvPlayerListener.OnRecordVideoListener() {
            @Override
            public void onRecordVideoErr(int i2, int i3) {
                DebugLog.e(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoErr what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordError(i2, i3);
                }
            }

            @Override
            public void onRecordVideoInfo(int i2, int i3) {
                DebugLog.i(MgtvAlphaVideoView.this.getLogTag(), "onRecordVideoInfo what:" + i2 + ",extra:" + i3);
                if (MgtvAlphaVideoView.this.mOnRecordListener != null) {
                    if (i2 == 20) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStart(MgtvAlphaVideoView.this.mRecordFilePath);
                    } else if (i2 == 30) {
                        MgtvAlphaVideoView.this.mOnRecordListener.onRecordStop();
                    }
                    MgtvAlphaVideoView.this.mOnRecordListener.onRecordInfo(i2, i3);
                }
            }
        };
        this.mLoadDataListener = new MgtvPlayerListener.OnLoadDataListener() {
            @Override
            public void onAfterLoadDataPaused() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onAfterLoadDataPaused();
                }
            }

            @Override
            public void onBeforeLoadDataResume() {
                if (MgtvAlphaVideoView.this.mOnLoadDataListener != null) {
                    MgtvAlphaVideoView.this.mOnLoadDataListener.onBeforeLoadDataResume();
                }
            }
        };
        this.backPlayStartEnable = false;
        if (configuration == null) {
            initVideoView(context);
            return;
        }
        this.mEnableTexture = configuration.enableTexture;
        this.mEnableOpengl = configuration.opengl;
        boolean z = configuration.isLiveMode;
        this.mIsLiveConfig = z;
        this.mEnableLiveMode = z;
        initVideoView(context, configuration.renderViewType);
    }
}
