package com.transsion.vishaplayersdk.gsyplayer.video.base;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.datastore.preferences.protobuf.DescriptorProtos;
import androidx.media3.common.C;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import com.airbnb.lottie.LottieAnimationView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.base.config.PlayType;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.base.config.PlayerError;
import com.transsion.vishaplayersdk.base.config.PlayerEvent;
import com.transsion.vishaplayersdk.base.config.PlayerStatisticInfo;
import com.transsion.vishaplayersdk.base.config.PlayerType;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.GSYModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoSubtitle;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoProgressListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.LockClickListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.VideoAllCallBack;
import com.transsion.vishaplayersdk.gsyplayer.render.GSYRenderProxy;
import com.transsion.vishaplayersdk.gsyplayer.utils.CommonUtil;
import com.transsion.vishaplayersdk.gsyplayer.utils.Debuger;
import com.transsion.vishaplayersdk.gsyplayer.utils.GSYVideoType;
import com.transsion.vishaplayersdk.gsyplayer.utils.NetworkUtils;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.ClarityDialog;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.MoreDialog;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.SpeedDialog;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.SubtitleDialog;
import com.transsion.vishaplayersdk.vishaplayer.VishaShortVideoPlayer;
import com.transsion.vishaplayersdk.widgets.ErrorRefreshLayer;
import com.transsion.vishaplayersdk.widgets.LoadingLayer;
import com.transsion.vishaplayersdk.widgets.VideoRetreatForwardLayout;
import com.transsion.vishaplayersdk.youtube.YoutubePlayData;
import com.transsion.vishaplayersdk.youtube.YoutubePlayUtil;
import com.transsion.widgets.battery.BatteryMeterView;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.f39;
import defpackage.gu5;
import defpackage.h27;
import defpackage.ha1;
import defpackage.r0a;
import defpackage.w6c;
import defpackage.wz5;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.mozilla.javascript.ES6Iterator;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.VideoStream;

public abstract class GSYVideoControlView extends GSYVideoStateView implements View.OnClickListener, View.OnTouchListener, SeekBar.OnSeekBarChangeListener, h27.b {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + GSYVideoControlView.class.getSimpleName();
    Runnable dismissControlTask;
    protected GestureDetector gestureDetector;
    protected ImageView mAdBackImageView;
    protected boolean mAdPlaying;
    protected ImageView mBackButton;
    protected BatteryMeterView mBatteryView;
    protected ViewGroup mBottomContainer;
    protected ProgressBar mBottomProgressBar;
    protected boolean mBrightness;
    protected float mBrightnessData;
    protected boolean mChangePosition;
    protected boolean mChangeSpeed;
    protected boolean mChangeVolume;
    protected TextView mClarityTextView;
    protected TextView mClarityTipTv;
    protected TextView mCurrentTimeTextView;
    protected int mDismissControlTime;
    protected long mDoubleTapStartTime;
    protected int mDownPosition;
    protected float mDownX;
    protected float mDownY;
    protected int mEnlargeImageRes;
    protected ViewGroup mErrorContainer;
    protected int mErrorType;
    public Map<Integer, ErrorRefreshLayer> mErrorlayersMap;
    private int[] mEvents;
    protected boolean mFirstTouch;
    protected ImageView mFullscreenButton;
    protected GSYVideoProgressListener mGSYVideoProgressListener;
    protected int mGestureDownVolume;
    protected boolean mHadSeekTouch;
    protected boolean mHideKey;
    protected boolean mIsGestureSeeking;
    protected boolean mIsPipMode;
    protected boolean mIsTouchWiget;
    protected boolean mIsTouchWigetFull;
    protected ImageView mIvBottomGradientBg;
    protected ImageView mIvBottomTitleLeftTag;
    protected ImageView mIvBottomTitleRightArrow;
    protected ImageView mIvClarity;
    protected ImageView mIvLanguage;
    protected ImageView mLiveMuteButton;
    protected LinearLayout mLlBottomTitle;
    protected LinearLayout mLlLiveLogo;
    protected LinearLayout mLlLiveTitle24hour;
    protected View mLoadingProgressBar;
    private final Object mLock;
    protected LockClickListener mLockClickListener;
    protected boolean mLockCurScreen;
    protected ImageView mLockScreen;
    protected View mLoginOpenVipContainer;
    protected TextView mLoginOpenVipTv;
    protected LottieAnimationView mLottieLiveLogo;
    protected ImageView mMoreButton;
    protected float mMoveY;
    protected View mMusk;
    protected ImageView mMuteButton;
    protected boolean mNeedLockFull;
    protected boolean mNeedShowWifiTip;
    protected ImageView mNextButton;
    protected View mOpenVipTipContainer;
    protected TextView mOpenVipTipTv;
    protected OSSeekbar mOsSeekbar;
    protected ImageView mPlayListButton;
    protected boolean mPostDismiss;
    protected boolean mPostNetSpeed;
    protected boolean mPostProgress;
    protected LoadingLayer mPreLoading;
    protected int mPreviewDuration;
    protected SeekBar mProgressBar;
    protected TextView mProgressDuration;
    protected TextView mProgressTextView;
    protected View mProgressTimeDialog;
    protected int mSeekEndOffset;
    protected int mSeekProgress;
    protected float mSeekRatio;
    protected int mSeekTimePosition;
    protected boolean mSetUpLazy;
    protected boolean mShowVKey;
    protected int mShrinkImageRes;
    protected TextView mSpeedTextView;
    protected ImageView mStartButton;
    protected TextView mSubtitleTextView;
    protected TextView mSwithClarietyTip;
    protected int mThreshold;
    protected View mThumbImageView;
    protected RelativeLayout mThumbImageViewLayout;
    protected boolean mThumbPlay;
    protected TextView mTimeTextView;
    protected TextView mTitleTextView;
    protected ViewGroup mTopContainer;
    protected TextView mTotalTimeTextView;
    protected boolean mTouchingProgressBar;
    protected TextView mTvBottomTitle;
    protected TextView mTvLive24hours;
    protected TextView mTvLivePlaying;
    protected TextView mTvLiveTitle;
    private TextView mTvVipTip;
    protected SeekBar mVerticalSeekBar;
    public VideoRetreatForwardLayout mVideoRetreatForwardLayout;
    protected ImageView mVipBackTv;
    protected ImageView mVolBriIcon;
    protected ViewGroup mVolumeBrightnessConatiner;
    protected boolean mbPreviewVideo;
    protected boolean mbShowError;
    protected boolean mbShowNeedVIP;
    private boolean mbShowSubtitle;
    protected boolean mbSwitchResolutionNeedVip;
    Runnable prePlayNetworkSpeedTask;
    Runnable progressTask;
    Runnable runnable;

    public GSYVideoControlView(@NonNull Context context) {
        super(context);
        this.mThreshold = 80;
        this.mShrinkImageRes = -1;
        this.mEnlargeImageRes = -1;
        this.mDismissControlTime = 3000;
        this.mBrightnessData = -1.0f;
        this.mSeekRatio = 1.0f;
        this.mTouchingProgressBar = false;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = false;
        this.mHideKey = true;
        this.mNeedShowWifiTip = true;
        this.mIsTouchWiget = true;
        this.mIsTouchWigetFull = true;
        this.mSetUpLazy = false;
        this.mHadSeekTouch = false;
        this.mPostProgress = false;
        this.mPostNetSpeed = false;
        this.mPostDismiss = false;
        this.mAdPlaying = false;
        this.mbShowNeedVIP = false;
        this.mbPreviewVideo = false;
        this.mbSwitchResolutionNeedVip = false;
        this.mbShowError = false;
        this.mErrorType = 0;
        this.mPreviewDuration = 0;
        this.mIsPipMode = false;
        this.mLock = new Object();
        this.mbShowSubtitle = true;
        this.mIsGestureSeeking = false;
        this.mErrorlayersMap = new ConcurrentHashMap();
        this.prePlayNetworkSpeedTask = new Runnable() {
            @Override
            public void run() {
                long netSpeed = NetworkUtils.getNetSpeed(GSYVideoControlView.this.mContext);
                if (netSpeed != 0) {
                    h27.c().e(1047, Long.valueOf(netSpeed));
                }
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                if (gSYVideoControlView.mPostNetSpeed) {
                    gSYVideoControlView.postDelayed(this, 500L);
                }
            }
        };
        this.progressTask = new Runnable() {
            @Override
            public void run() {
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                int i = gSYVideoControlView.mCurrentState;
                if (i == 2 || i == 5) {
                    if (!gSYVideoControlView.isLive() || GSYVideoControlView.this.mPlayerType == PlayerType.MGTV_PLAYER) {
                        GSYVideoControlView.this.setTextAndProgress(0);
                    }
                    GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
                    if ((gSYVideoControlView2.mCurrentState == 2 && gSYVideoControlView2.mbPreviewVideo) || gSYVideoControlView2.isLive()) {
                        PlayerStatisticInfo.playRealDuration++;
                    }
                }
                GSYVideoControlView gSYVideoControlView3 = GSYVideoControlView.this;
                if (gSYVideoControlView3.mPostProgress) {
                    gSYVideoControlView3.postDelayed(this, 1000L);
                }
            }
        };
        this.gestureDetector = new GestureDetector(getContext().getApplicationContext(), new GestureDetector.SimpleOnGestureListener() {
            @Override
            public boolean onDoubleTap(MotionEvent motionEvent) {
                GSYVideoControlView.this.touchDoubleUp();
                return super.onDoubleTap(motionEvent);
            }

            @Override
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                if (!gSYVideoControlView.mChangePosition && !gSYVideoControlView.mChangeVolume && !gSYVideoControlView.mBrightness) {
                    gSYVideoControlView.onClickUiToggle();
                }
                return super.onSingleTapConfirmed(motionEvent);
            }
        });
        this.dismissControlTask = new Runnable() {
            @Override
            public void run() {
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                int i = gSYVideoControlView.mCurrentState;
                if (i == 0 || i == 7 || i == 6) {
                    return;
                }
                if (gSYVideoControlView.getActivityContext() != null) {
                    if (GSYVideoControlView.this.isShortVideo()) {
                        GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
                        gSYVideoControlView2.setViewShowState(gSYVideoControlView2.mStartButton, 8);
                        return;
                    }
                    GSYVideoControlView.this.hideAllWidget();
                    GSYVideoControlView gSYVideoControlView3 = GSYVideoControlView.this;
                    gSYVideoControlView3.setViewShowState(gSYVideoControlView3.mLockScreen, 8);
                    GSYVideoControlView gSYVideoControlView4 = GSYVideoControlView.this;
                    gSYVideoControlView4.setViewShowState(gSYVideoControlView4.mBottomProgressBar, 0);
                    GSYVideoControlView gSYVideoControlView5 = GSYVideoControlView.this;
                    if (gSYVideoControlView5.mHideKey && gSYVideoControlView5.mIfCurrentIsFullscreen && gSYVideoControlView5.mShowVKey) {
                        CommonUtil.hideNavKey(gSYVideoControlView5.mContext);
                    }
                }
                VideoAllCallBack videoAllCallBack = GSYVideoControlView.this.mVideoAllCallBack;
                if (videoAllCallBack != null) {
                    videoAllCallBack.onEnterImmerse();
                }
            }
        };
        this.runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$8();
            }
        };
    }

    private void applyNetworkBlockOverlayUi() {
        if (isNetworkBlockErrorShowing()) {
            setViewShowState(this.mStartButton, 8);
            hideLoadingView();
            ViewGroup viewGroup = this.mErrorContainer;
            if (viewGroup != null) {
                viewGroup.setVisibility(0);
            }
        }
    }

    public void buyVip() {
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onRequestVip(null, new Object[0]);
        }
    }

    public boolean lambda$setClarity$0() {
        List<VideoDefinition> videoDefinitions = GSYVideoManager.instance().getVideoDefinitions();
        boolean z = videoDefinitions != null && videoDefinitions.size() > 0;
        TextView textView = this.mClarityTextView;
        if (textView != null) {
            textView.setText(R.string.tip_clariety);
            this.mClarityTextView.setVisibility(z ? 0 : 8);
        }
        if (z) {
            VideoDefinition videoDefinition = null;
            for (VideoDefinition videoDefinition2 : videoDefinitions) {
                if (PlayHandler.getInstance().mMiniDefinition == null || PlayHandler.getInstance().mMiniDefinition.type > videoDefinition2.type) {
                    PlayHandler.getInstance().mMiniDefinition = videoDefinition2;
                }
                if (videoDefinition2.bCurrent) {
                    String name = videoDefinition2.getName();
                    if (TextUtils.isEmpty(name)) {
                        name = videoDefinition2.getName();
                    }
                    TextView textView2 = this.mClarityTextView;
                    if (textView2 != null) {
                        textView2.setText(name);
                    }
                }
                if (PlayHandler.getInstance().mSwitchingResolution != -1 && PlayHandler.getInstance().mSwitchingResolution == videoDefinition2.type) {
                    videoDefinition = videoDefinition2;
                }
            }
            if (videoDefinition != null) {
                lambda$onClick$5(videoDefinition);
            }
        }
        return z;
    }

    private void initEvent() {
        this.mEvents = new int[]{1002, 1001, 1000, 1003, 1006, 1005, 1004, 1013, 1017, 1000, 999, 1038, 1037, 1036, 1046, 1047, 1049, 1050, 1051, 1014, 1015, 1102};
    }

    private boolean isNetworkBlockErrorType(int i) {
        return i == 1002 || i == 1001;
    }

    public void lambda$didReceivedNotification$6() {
        this.mClarityTipTv.setVisibility(8);
    }

    public void lambda$didReceivedNotification$7() {
        this.mClarityTipTv.setVisibility(8);
    }

    public void lambda$init$10(View view) {
        int i = this.mCurrentState;
        if (i == 6 || i == 7) {
            return;
        }
        lockTouchLogic();
        LockClickListener lockClickListener = this.mLockClickListener;
        if (lockClickListener != null) {
            lockClickListener.onClick(view, this.mLockCurScreen);
        }
    }

    public void lambda$init$9(int i, boolean z) {
        int duration = getDuration();
        int currentPositionWhenPlaying = getCurrentPositionWhenPlaying();
        if (!z) {
            i = -i;
        }
        int iMax = Math.max(Math.min(currentPositionWhenPlaying + (i * 1000), duration), 0);
        if (duration != 0) {
            SeekBar seekBar = this.mProgressBar;
            if (seekBar != null) {
                seekBar.setProgress((iMax * 100) / duration);
            }
            TextView textView = this.mTotalTimeTextView;
            if (textView != null) {
                textView.setText(CommonUtil.stringForTime(duration));
            }
            TextView textView2 = this.mCurrentTimeTextView;
            if (textView2 == null || iMax <= 0) {
                return;
            }
            textView2.setText(CommonUtil.stringForTime(iMax));
        }
    }

    public void lambda$lockTouchLogic$3() {
        this.mLockScreen.setVisibility(8);
    }

    public void lambda$new$8() {
        boolean z = false;
        if (PlayHandler.getInstance().mStartBuffering <= SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US) {
            showBuffering(false, false);
            return;
        }
        if (PlayHandler.getInstance().mMiniDefinition != null && PlayHandler.getInstance().mVideoDefinition != null && PlayHandler.getInstance().mMiniDefinition.type != PlayHandler.getInstance().mVideoDefinition.type) {
            z = true;
        }
        showBuffering(true, z);
    }

    public void lambda$onBufferingUpdate$2(int i) {
        int i2 = this.mCurrentState;
        if (i2 == 0 || i2 == 1) {
            return;
        }
        if (i != 0) {
            setTextAndProgress(i);
            this.mBufferPoint = i;
        }
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null && this.mLooping && this.mHadPlay && i == 0 && seekBar.getProgress() >= this.mProgressBar.getMax() - 1) {
            loopSetProgressAndTime();
        }
    }

    public void lambda$onClick$4(String str, float f) {
        h27.c().e(1082, Float.valueOf(f));
        setSpeed(f);
        TextView textView = this.mSpeedTextView;
        if (textView != null) {
            textView.setText(str);
            wz5.O("speed", str);
        }
    }

    public void lambda$showBuffering$11(boolean z) {
        showBuffering(false, z);
    }

    public void lambda$showErrorLayer$1(int i, String str) {
        synchronized (this.mLock) {
            try {
                ErrorRefreshLayer errorRefreshLayer = this.mErrorlayersMap.get(Integer.valueOf(i));
                if (errorRefreshLayer != null && errorRefreshLayer.getVisibility() == 0 && this.mErrorContainer != null && errorRefreshLayer.getParent() == this.mErrorContainer) {
                    LogUtils.j(TAG, "showErrorLayer reuse existing:" + i);
                    hideLoadingView();
                    pausePlaybackForNetworkBlock(i);
                    applyNetworkBlockOverlayUi();
                    return;
                }
                if (errorRefreshLayer != null) {
                    errorRefreshLayer.hideError();
                }
                ErrorRefreshLayer errorRefreshLayer2 = r0a.g(str) ? new ErrorRefreshLayer(getContext(), i) : new ErrorRefreshLayer(getContext(), i, str);
                errorRefreshLayer2.setRefrashListener(new ErrorRefreshLayer.RefrashListener() {
                    @Override
                    public void exit(int i2) {
                        GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                        gSYVideoControlView.mbShowError = false;
                        VideoAllCallBack videoAllCallBack = gSYVideoControlView.mVideoAllCallBack;
                        if (videoAllCallBack != null) {
                            videoAllCallBack.onExitPlayer(gSYVideoControlView.mUrl, new Object[0]);
                        }
                        if (GSYVideoControlView.this.mIfCurrentIsFullscreen) {
                            PlayHandler.getInstance().mIsGravity = false;
                            wz5.N("btn_back");
                            GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
                            gSYVideoControlView2.backFromFull(gSYVideoControlView2.getContext());
                        }
                    }

                    @Override
                    public void retry(int i2) {
                        GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                        gSYVideoControlView.mbShowError = false;
                        if (gSYVideoControlView.isLiveFullscreen() && i2 == 1001 && GSYVideoControlView.this.getCurrentState() == 2) {
                            LogUtils.j(GSYVideoControlView.TAG, "live full screen,toggle play");
                            GSYVideoControlView.this.getGSYVideoManager().start();
                        } else {
                            VideoAllCallBack videoAllCallBack = GSYVideoControlView.this.mVideoAllCallBack;
                            if (videoAllCallBack != null) {
                                videoAllCallBack.onRetryPlay();
                            }
                        }
                    }
                });
                LogUtils.j(TAG, "showErrorLayer:" + errorRefreshLayer2.getType());
                this.mErrorlayersMap.put(Integer.valueOf(i), errorRefreshLayer2);
                errorRefreshLayer2.setVisibility(0);
                hideLoadingView();
                this.mErrorContainer.removeAllViews();
                Iterator<ErrorRefreshLayer> it = this.mErrorlayersMap.values().iterator();
                while (it.hasNext()) {
                    this.mErrorContainer.addView(it.next());
                }
                pausePlaybackForNetworkBlock(i);
                applyNetworkBlockOverlayUi();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void pausePlaybackForNetworkBlock(int i) {
        if (isNetworkBlockErrorType(i)) {
            if (this.mCurrentState == 1) {
                this.mPauseBeforePrepared = true;
            }
            try {
                if (getGSYVideoManager() != null && getGSYVideoManager().isPlaying()) {
                    getGSYVideoManager().pause();
                }
            } catch (Exception e) {
                LogUtils.m(TAG, "pausePlaybackForNetworkBlock: " + e.getMessage());
            }
            int i2 = this.mCurrentState;
            if (i2 == 2 || i2 == 3) {
                setStateAndUi(5);
            }
        }
    }

    private void resolveSwitchResolutionVIPUI() {
        this.mLoginOpenVipTv.setText(PlayHandler.getInstance().mIsLogin ? R.string.vip_open_vip : R.string.vip_login_open_vip);
        View view = this.mLoginOpenVipContainer;
        if (view != null) {
            view.setBackgroundColor(0);
        }
        if (this.mTvVipTip != null) {
            this.mTvVipTip.setText(r0a.d(r0a.e(R.string.SWITCH_VIP_RESOLUTION_TIP), PlayHandler.getInstance().mClarity));
        }
    }

    private void setCLick(View view) {
        if (view != null) {
            view.setOnClickListener(new ha1(this));
        }
    }

    private void setClarity() {
        TextView textView;
        if (lambda$setClarity$0() || (textView = this.mClarityTextView) == null) {
            return;
        }
        textView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$setClarity$0();
            }
        }, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    private void setLoad() {
        updateLoadingView(PlayHandler.getInstance().mIsLoading ? 0 : 8);
    }

    private void setPlayStatus() {
        ImageView imageView = this.mStartButton;
        if (imageView != null) {
            imageView.setImageResource(GSYVideoManager.instance().isPlaying() ? R.drawable.video_click_pause_selector : R.drawable.video_click_play_selector);
        }
    }

    @SuppressLint({"UseCompatLoadingForDrawables"})
    private void setSpeed() {
        if (this.mSpeedTextView != null) {
            this.mSpeedTextView.setText(GSYVideoManager.instance().getCurrentSpeed() + "X");
        }
    }

    private void setTitle() {
        TextView textView = this.mTitleTextView;
        if (textView != null) {
            textView.setText(PlayHandler.getInstance().mPlayTitle);
        }
    }

    private void setViewVisible(View view, boolean z) {
        setViewShowState(view, z ? 0 : 8);
    }

    private boolean shouldBlockPrepareForNetworkPrompt() {
        Context context = this.mContext;
        if (context == null) {
            return false;
        }
        if (!NetworkUtils.isAvailable(context)) {
            LogUtils.j(TAG, "startPrepare blocked: no network");
            showErrorLayer(1002);
            return true;
        }
        if (!NetworkUtils.isMobileConnected(this.mContext) || !PlayHandler.getInstance().mShowMobileData) {
            return false;
        }
        LogUtils.j(TAG, "startPrepare blocked: mobile data prompt");
        showErrorLayer(1001);
        return true;
    }

    private void showProgressTime(SeekBar seekBar) {
        this.mProgressTextView.setText(CommonUtil.stringForTime((seekBar.getProgress() * getDuration()) / 100));
        this.mProgressDuration.setText("/" + ((Object) this.mTotalTimeTextView.getText()));
    }

    private void switchClarity(String str, int i) {
        PlayHandler.getInstance().mClaritySwithIndex = i;
        PlayHandler.getInstance().mClarity = str;
        if (i != 0 && i != 1) {
            if (i == -1) {
                this.mClarityTipTv.setText(this.mContext.getString(R.string.chalrity_change_fail));
                return;
            } else {
                this.mClarityTipTv.setVisibility(8);
                return;
            }
        }
        this.mClarityTipTv.setVisibility(0);
        this.mClarityTipTv.setText(this.mContext.getString(i == 0 ? R.string.chalrity_change_start : R.string.chalrity_change_ok, str));
        if (i == 1) {
            hideLoadingView();
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.mClarityTipTv.getText());
        this.mClarityTipTv.getText().toString().indexOf(str);
        this.mClarityTipTv.setText(spannableStringBuilder);
    }

    private void updateLoadingView(int i) {
        LoadingLayer loadingLayer = this.mPreLoading;
        if (loadingLayer == null || loadingLayer.getVisibility() == i) {
            return;
        }
        Log.d(TAG, "updateLoadingView " + i + StringUtils.COMMA + this);
        this.mPreLoading.setVisibility(i);
    }

    public void addVolume() {
        AudioManager audioManager = this.mAudioManager;
        if (audioManager != null) {
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            int iMin = Math.min(Math.max(this.mAudioManager.getStreamVolume(3) + 1, 0), streamMaxVolume);
            this.mAudioManager.setStreamVolume(3, iMin, 0);
            showVolumeDialog(0.0f, (int) ((iMin / streamMaxVolume) * 100.0f));
            wz5.N("gesture_volume");
        }
    }

    public void appliedSubtitle(String str) {
        TextView textView = this.mSubtitleTextView;
        if (textView != null) {
            textView.setText(str);
        }
        if (this.mSubtitleTextView != null || isShortVideoPlayer()) {
            PlayHandler.getInstance().mCureentSubTitle = str;
            h27.c().e(1012, str);
            if (PlayHandler.getInstance().mSubtitleCode == -1) {
                onSetSubtitlesSuccess("-1");
            }
        }
    }

    public void cancelDismissControlViewTimer() {
        this.mPostDismiss = false;
        removeCallbacks(this.dismissControlTask);
    }

    public void cancelPrePlayNetSpeedTimer() {
        this.mPostNetSpeed = false;
        removeCallbacks(this.prePlayNetworkSpeedTask);
    }

    public void cancelProgressTimer() {
        this.mPostProgress = false;
        removeCallbacks(this.progressTask);
    }

    public abstract void changeUiToCompleteShow();

    public abstract void changeUiToError();

    public abstract void changeUiToNormal();

    public abstract void changeUiToPauseShow();

    public abstract void changeUiToPlayingBufferingShow();

    public abstract void changeUiToPlayingShow();

    public abstract void changeUiToPreparingShow();

    public void clickStartIcon() {
        String str = TAG;
        LogUtils.j(str, "clickStartIcon play state:" + this.mMapPlayState.get(Integer.valueOf(this.mCurrentState)));
        if (TextUtils.isEmpty(this.mUrl)) {
            Debuger.printfError("********" + getResources().getString(R.string.no_url));
            return;
        }
        boolean z = PlayHandler.getInstance().mProgressChange && !GSYVideoManager.instance().isPlaying();
        if (isNetworkBlockErrorShowing() && (this.mCurrentState != 2 || z)) {
            LogUtils.j(str, "clickStartIcon ignore resume while network block showing");
            return;
        }
        int i = this.mCurrentState;
        if (i == 0 || i == 7 || i == 6) {
            if (i == 6) {
                LogUtils.j(str, "play clickStartIcon, mCurrentState == CURRENT_STATE_AUTO_COMPLETE");
                setSeekOnStart(0L);
            }
            startButtonLogic();
            return;
        }
        if (i == 2 && !z) {
            try {
                onVideoPause();
                wz5.N("pause");
                h27.c().e(1106, new Object[0]);
            } catch (Exception e) {
                e.printStackTrace();
            }
            setStateAndUi(5);
            if (this.mVideoAllCallBack == null || !isCurrentMediaListener()) {
                return;
            }
            if (this.mIfCurrentIsFullscreen) {
                Debuger.printfLog("onClickStopFullscreen");
                this.mVideoAllCallBack.onClickStopFullscreen(this.mOriginUrl, this.mTitle, this);
                return;
            } else {
                Debuger.printfLog("onClickStop");
                this.mVideoAllCallBack.onClickStop(this.mOriginUrl, this.mTitle, this);
                return;
            }
        }
        if (i != 5 && !z) {
            if (i == 6) {
                startButtonLogic();
                return;
            }
            return;
        }
        wz5.N(PlayAudioData.TAG_NEED_PLAY);
        h27.c().e(1105, new Object[0]);
        if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
            if (this.mIfCurrentIsFullscreen) {
                Debuger.printfLog("onClickResumeFullscreen");
                this.mVideoAllCallBack.onClickResumeFullscreen(this.mOriginUrl, this.mTitle, this);
            } else {
                Debuger.printfLog("onClickResume");
                this.mVideoAllCallBack.onClickResume(this.mOriginUrl, this.mTitle, this);
            }
        }
        if (!this.mHadPlay && !this.mStartAfterPrepared) {
            startAfterPrepared();
        }
        try {
            getGSYVideoManager().togglePlay();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        setStateAndUi(2);
    }

    public void cutVolume() {
        AudioManager audioManager = this.mAudioManager;
        if (audioManager != null) {
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            int iMin = Math.min(Math.max(this.mAudioManager.getStreamVolume(3) - 1, 0), streamMaxVolume);
            this.mAudioManager.setStreamVolume(3, iMin, 0);
            showVolumeDialog(0.0f, (int) ((iMin / streamMaxVolume) * 100.0f));
            wz5.N("gesture_volume");
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i == 1017) {
            resetNormalState();
            return;
        }
        if (i == 1102) {
            this.mbSwitchResolutionNeedVip = true;
            hideLoadingView();
            setViewShowState(this.mErrorContainer, 4);
            if (getCurrentState() == 2) {
                clickStartIcon();
            } else {
                changeUiToPauseShow();
            }
            setViewShowState(this.mLoginOpenVipContainer, 0);
            setViewShowState(this.mOpenVipTipContainer, 8);
            resolveSwitchResolutionVIPUI();
            PlayHandler.getInstance().mClaritySwithIndex = -3;
            PlayHandler.getInstance().mSwitchingResolution = -1;
            this.mbShowNeedVIP = true;
            TextView textView = this.mClarityTipTv;
            if (textView != null) {
                textView.setVisibility(8);
                PlayHandler.getInstance().mClaritySwithIndex = -3;
                return;
            }
            return;
        }
        if (i != 1046) {
            if (i == 1047) {
                if (getPreLoading() == null || getPreLoading().getVisibility() != 0 || getPreLoading().getNetSpeedTextView() == null || PlayHandler.getInstance().mIsPip) {
                    return;
                }
                getPreLoading().getNetSpeedTextView().setText(getContext().getString(R.string.wonderful_start, CommonUtil.getTextSpeed(((Long) objArr[0]).longValue())));
                getPreLoading().getNetSpeedTextView().setVisibility(0);
                return;
            }
            switch (i) {
                case 1000:
                    if (!((Boolean) objArr[0]).booleanValue()) {
                        hideErrorLayer(i);
                        return;
                    }
                    LogUtils.j(TAG, "on player error:" + objArr[1]);
                    setStateAndUi(7);
                    showErrorLayer(i, String.valueOf(objArr[1]));
                    VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
                    if (videoAllCallBack != null) {
                        videoAllCallBack.onPlayError(this.mUrl, new Object[0]);
                        return;
                    }
                    return;
                case 1001:
                case 1002:
                    if (!((Boolean) objArr[0]).booleanValue()) {
                        hideErrorLayer(i);
                        return;
                    }
                    showErrorLayer(i);
                    if (!isLiveFullscreen() || isShortVideoPlayer()) {
                        return;
                    }
                    hideAllWidget();
                    setViewShowState(this.mLockScreen, 8);
                    cancelDismissControlViewTimer();
                    setViewShowState(this.mTopContainer, 0);
                    setViewShowState(this.mMoreButton, 4);
                    setViewShowState(this.mBottomContainer, 8);
                    return;
                case 1003:
                    setSubTitle();
                    return;
                case 1004:
                    if (!this.mbShowNeedVIP || this.mClarityTipTv == null) {
                        switchClarity(PlayHandler.getInstance().mClarity, PlayHandler.getInstance().mClaritySwithIndex);
                        return;
                    } else {
                        this.mClarityTextView.setVisibility(8);
                        return;
                    }
                case 1005:
                    setViewVisible(this.mNextButton, (PlayHandler.getInstance().mIsLast || PlayHandler.getInstance().mIsYoutube || PlayHandler.getInstance().mIsVk) ? false : true);
                    return;
                case 1006:
                    setViewVisible(this.mLockScreen, true);
                    return;
                default:
                    switch (i) {
                        case 1013:
                            try {
                                if (this.mAdBackImageView == null || isShortVideoPlayer()) {
                                    return;
                                }
                                LogUtils.i(TAG, "show back button:" + objArr[0]);
                                this.mAdBackImageView.setVisibility(((Boolean) objArr[0]).booleanValue() ? 0 : 8);
                                return;
                            } catch (Exception e) {
                                e.printStackTrace();
                                return;
                            }
                        case 1014:
                            LogUtils.j(TAG, "video start play");
                            PlayHandler.getInstance().mStartBuffering = -1L;
                            PlayHandler.getInstance().mTearing = false;
                            showBuffering(false, false);
                            setStateAndUi(2);
                            setClarity();
                            setMute(GSYVideoManager.instance().isNeedMute());
                            VideoAllCallBack videoAllCallBack2 = this.mVideoAllCallBack;
                            if (videoAllCallBack2 != null) {
                                videoAllCallBack2.onVideoStartShow(this.mUrl, new Object[0]);
                                return;
                            }
                            return;
                        case 1015:
                            LogUtils.j(TAG, "Player pause video");
                            VideoAllCallBack videoAllCallBack3 = this.mVideoAllCallBack;
                            if (videoAllCallBack3 != null) {
                                videoAllCallBack3.onVideoPause(this.mUrl, new Object[0]);
                                return;
                            }
                            return;
                        default:
                            switch (i) {
                                case 1036:
                                    if (this.mPlayType == PlayType.PLAY_TYPE_LIVE) {
                                        return;
                                    }
                                    this.mPreviewDuration = ((Integer) objArr[0]).intValue();
                                    if (this.mOpenVipTipTv != null) {
                                        initPre();
                                    }
                                    setViewShowState(this.mLoginOpenVipContainer, 8);
                                    setViewShowState(this.mOpenVipTipContainer, 0);
                                    this.mbShowNeedVIP = false;
                                    this.mbPreviewVideo = true;
                                    return;
                                case 1037:
                                    if (PlayHandler.getInstance().mIsTaskAutoPlay) {
                                        VideoAllCallBack videoAllCallBack4 = this.mVideoAllCallBack;
                                        if (videoAllCallBack4 != null) {
                                            videoAllCallBack4.onAutoComplete(this.mOriginUrl, this.mTitle, this);
                                            return;
                                        }
                                        return;
                                    }
                                    break;
                                case 1038:
                                    VideoAllCallBack videoAllCallBack5 = this.mVideoAllCallBack;
                                    if (videoAllCallBack5 != null) {
                                        videoAllCallBack5.onRequestVip(null, new Object[0]);
                                        return;
                                    }
                                    return;
                                default:
                                    switch (i) {
                                        case 1049:
                                            VideoDefinition videoDefinition = (VideoDefinition) objArr[1];
                                            if (videoDefinition != null) {
                                                PlayHandler.getInstance().mClarity = videoDefinition.getName();
                                                PlayHandler.getInstance().mVideoDefinition = videoDefinition;
                                                TextView textView2 = this.mClarityTextView;
                                                if (textView2 != null) {
                                                    textView2.setText(PlayHandler.getInstance().mClarity);
                                                }
                                            }
                                            boolean zBooleanValue = ((Boolean) objArr[0]).booleanValue();
                                            LogUtils.j(TAG, "switch video resolution result: " + zBooleanValue, "videodeifintion:" + videoDefinition);
                                            if (zBooleanValue) {
                                                switchClarity(PlayHandler.getInstance().mClarity, 1);
                                                this.mClarityTipTv.postDelayed(new Runnable() {
                                                    @Override
                                                    public final void run() {
                                                        this.b.lambda$didReceivedNotification$7();
                                                    }
                                                }, 2000L);
                                            } else {
                                                switchClarity(PlayHandler.getInstance().mClarity, -1);
                                                this.mClarityTipTv.postDelayed(new Runnable() {
                                                    @Override
                                                    public final void run() {
                                                        this.b.lambda$didReceivedNotification$6();
                                                    }
                                                }, 2000L);
                                                h27.c().e(1034, Long.valueOf(PlayerError.TRAN_PLAYER_ERROR_SWITCH_RESOLUTION_FAILED));
                                            }
                                            PlayHandler.getInstance().mClaritySwithIndex = -3;
                                            PlayHandler.getInstance().mSwitchingResolution = -1;
                                            break;
                                        case 1050:
                                            int iIntValue = ((Integer) objArr[0]).intValue();
                                            GSYVideoType.setShowType(iIntValue != 1 ? iIntValue == 2 ? -4 : 0 : 4);
                                            changeTextureViewShowType();
                                            GSYRenderProxy gSYRenderProxy = this.mTextureView;
                                            if (gSYRenderProxy != null) {
                                                gSYRenderProxy.requestLayout();
                                            }
                                            break;
                                        case 1051:
                                            if (((Integer) objArr[0]).intValue() == 0) {
                                                PlayHandler.getInstance().mStartBuffering = System.currentTimeMillis();
                                                Handler handlerO = ThreadUtils.o();
                                                handlerO.removeCallbacks(this.runnable);
                                                handlerO.postDelayed(this.runnable, 10000L);
                                            }
                                            if (((Integer) objArr[0]).intValue() != 100) {
                                                PlayHandler.getInstance().mTearing = true;
                                                PlayHandler.getInstance().mIsLoading = true;
                                                showLoadingView(true);
                                            } else {
                                                showBuffering(false, false);
                                                PlayHandler.getInstance().mStartBuffering = -1L;
                                                hideLoadingView();
                                                PlayHandler.getInstance().mIsLoading = false;
                                                PlayHandler.getInstance().mTearing = false;
                                            }
                                            break;
                                    }
                                    return;
                            }
                            break;
                    }
                    break;
            }
        }
        this.mbShowNeedVIP = true;
        this.mbPreviewVideo = false;
        hideLoadingView();
        setViewShowState(this.mErrorContainer, 4);
        getGSYVideoManager().stop();
        setStateAndUi(0);
        this.mLoginOpenVipTv.setText(PlayHandler.getInstance().mIsLogin ? R.string.vip_open_vip : R.string.vip_login_open_vip);
        setViewVisible(this.mClarityTipTv, false);
        setViewShowState(this.mLoginOpenVipContainer, 0);
        setViewShowState(this.mOpenVipTipContainer, 8);
        statisticPlayerPreviewDuration();
        VideoAllCallBack videoAllCallBack6 = this.mVideoAllCallBack;
        if (videoAllCallBack6 != null) {
            videoAllCallBack6.onNeedVip();
        }
        this.mbSwitchResolutionNeedVip = false;
        View view = this.mLoginOpenVipContainer;
        if (view != null) {
            view.setBackgroundColor(-16777216);
        }
        TextView textView3 = this.mTvVipTip;
        if (textView3 != null) {
            textView3.setText(r0a.e(R.string.vip_open_tip));
        }
        if (getVipBackTv() == null || !isIfCurrentIsFullscreen()) {
            return;
        }
        getVipBackTv().setVisibility(0);
    }

    public abstract void dismissBrightnessDialog();

    public abstract void dismissProgressDialog();

    public abstract void dismissVolumeDialog();

    public ImageView getAdBackButton() {
        return this.mAdBackImageView;
    }

    public ImageView getBackButton() {
        return this.mBackButton;
    }

    public int getEnlargeImageRes() {
        return R.drawable.video_play_rorate;
    }

    public ImageView getFullscreenButton() {
        return this.mFullscreenButton;
    }

    public ImageView getLiveMuteButton() {
        return this.mLiveMuteButton;
    }

    public ImageView getLoadingBackTv() {
        LoadingLayer loadingLayer = this.mPreLoading;
        if (loadingLayer != null) {
            return loadingLayer.getLoadingBack();
        }
        return null;
    }

    public ImageView getPlayListBtn() {
        return this.mPlayListButton;
    }

    public LoadingLayer getPreLoading() {
        return this.mPreLoading;
    }

    public int getShrinkImageRes() {
        return R.drawable.video_play_rorate;
    }

    public ImageView getStartButton() {
        return this.mStartButton;
    }

    public TextView getTitleTextView() {
        return this.mTitleTextView;
    }

    public ImageView getVipBackTv() {
        return this.mVipBackTv;
    }

    public void hideAdBack() {
        setViewShowState(this.mAdBackImageView, 8);
    }

    public void hideAllErrorViews() {
        for (ErrorRefreshLayer errorRefreshLayer : this.mErrorlayersMap.values()) {
            if (errorRefreshLayer != null) {
                errorRefreshLayer.hideError();
            }
        }
    }

    public abstract void hideAllWidget();

    public void hideErrorLayer(int i) {
        this.mbShowError = false;
        ErrorRefreshLayer errorRefreshLayer = this.mErrorlayersMap.get(Integer.valueOf(i));
        if (errorRefreshLayer != null) {
            errorRefreshLayer.hideError();
        }
    }

    @Override
    public void hideLoadingView() {
        PlayHandler.getInstance().mIsLoading = false;
        updateLoadingView(8);
        cancelPrePlayNetSpeedTimer();
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility", "CutPasteId"})
    public void init(Context context) {
        SeekBar seekBar;
        ImageView imageView;
        RelativeLayout relativeLayout;
        super.init(context);
        this.mStartButton = (ImageView) findViewById(R.id.start);
        this.mTitleTextView = (TextView) findViewById(R.id.title);
        this.mBackButton = (ImageView) findViewById(R.id.back);
        this.mFullscreenButton = (ImageView) findViewById(R.id.fullscreen);
        this.mProgressBar = (SeekBar) findViewById(R.id.progress);
        this.mCurrentTimeTextView = (TextView) findViewById(R.id.current);
        this.mTotalTimeTextView = (TextView) findViewById(R.id.total);
        this.mBottomContainer = (ViewGroup) findViewById(R.id.layout_bottom);
        refreshBottomContainer();
        this.mTopContainer = (ViewGroup) findViewById(R.id.layout_top);
        this.mBottomProgressBar = (ProgressBar) findViewById(R.id.bottom_progressbar);
        this.mThumbImageViewLayout = (RelativeLayout) findViewById(R.id.thumb);
        this.mLockScreen = (ImageView) findViewById(R.id.lock_screen);
        this.mLoadingProgressBar = findViewById(R.id.buffer_loading_view);
        VideoRetreatForwardLayout videoRetreatForwardLayout = (VideoRetreatForwardLayout) findViewById(R.id.video_retreat_forward_tip_layout);
        this.mVideoRetreatForwardLayout = videoRetreatForwardLayout;
        if (videoRetreatForwardLayout != null) {
            videoRetreatForwardLayout.setListener(new VideoRetreatForwardLayout.RetreatForwardListener() {
                @Override
                public final void forward(int i, boolean z) {
                    this.a.lambda$init$9(i, z);
                }
            });
        }
        this.mErrorContainer = (ViewGroup) findViewById(R.id.error_contaniner);
        this.mVerticalSeekBar = (SeekBar) findViewById(R.id.app_video_brightness);
        this.mVolumeBrightnessConatiner = (ViewGroup) findViewById(R.id.app_video_brightness_box);
        this.mVolBriIcon = (ImageView) findViewById(R.id.app_vol_bri_icon);
        this.mAdBackImageView = (ImageView) findViewById(R.id.ad_back);
        this.mMusk = findViewById(R.id.musk);
        this.mProgressDuration = (TextView) findViewById(R.id.progress_duration);
        this.mProgressTimeDialog = findViewById(R.id.progress_container);
        this.mMuteButton = (ImageView) findViewById(R.id.mute);
        this.mNextButton = (ImageView) findViewById(R.id.next);
        this.mSpeedTextView = (TextView) findViewById(R.id.speed);
        this.mPlayListButton = (ImageView) findViewById(R.id.episode);
        this.mTimeTextView = (TextView) findViewById(R.id.time);
        this.mBatteryView = (BatteryMeterView) findViewById(R.id.power);
        this.mSubtitleTextView = (TextView) findViewById(R.id.language);
        this.mMoreButton = (ImageView) findViewById(R.id.more);
        this.mClarityTextView = (TextView) findViewById(R.id.clarity);
        this.mClarityTipTv = (TextView) findViewById(R.id.clarity_tip);
        this.mProgressTextView = (TextView) findViewById(R.id.progress_result);
        this.mPreLoading = (LoadingLayer) findViewById(R.id.pre_loading);
        this.mVipBackTv = (ImageView) findViewById(R.id.vip_back);
        this.mOpenVipTipContainer = findViewById(R.id.layout_vip_tip);
        this.mOpenVipTipTv = (TextView) findViewById(R.id.tv_open_vip);
        this.mLoginOpenVipContainer = findViewById(R.id.vip_contaniner);
        this.mLoginOpenVipTv = (TextView) findViewById(R.id.vip_tip);
        this.mLiveMuteButton = (ImageView) findViewById(R.id.live_mute);
        setCLick(this.mOpenVipTipTv);
        setCLick(this.mLoginOpenVipTv);
        this.mLoginOpenVipTv.setOnClickListener(this);
        this.mOpenVipTipTv.setOnClickListener(this);
        TextView textView = this.mOpenVipTipTv;
        if (textView != null) {
            textView.getPaint().setAntiAlias(true);
        }
        this.mTvVipTip = (TextView) findViewById(R.id.tv_vip_tip);
        if (isInEditMode()) {
            return;
        }
        ImageView imageView2 = this.mStartButton;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this);
        }
        ImageView imageView3 = this.mFullscreenButton;
        if (imageView3 != null) {
            imageView3.setOnClickListener(this);
            this.mFullscreenButton.setOnTouchListener(this);
        }
        SeekBar seekBar2 = this.mProgressBar;
        if (seekBar2 != null) {
            seekBar2.setOnSeekBarChangeListener(this);
        }
        ViewGroup viewGroup = this.mTextureViewContainer;
        if (viewGroup != null) {
            viewGroup.setOnClickListener(this);
            this.mTextureViewContainer.setOnTouchListener(this);
        }
        SeekBar seekBar3 = this.mProgressBar;
        if (seekBar3 != null) {
            seekBar3.setOnTouchListener(this);
        }
        RelativeLayout relativeLayout2 = this.mThumbImageViewLayout;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(8);
            this.mThumbImageViewLayout.setOnClickListener(this);
        }
        if (this.mThumbImageView != null && !this.mIfCurrentIsFullscreen && (relativeLayout = this.mThumbImageViewLayout) != null) {
            relativeLayout.removeAllViews();
            resolveThumbImage(this.mThumbImageView);
        }
        setCLick(this.mBackButton);
        ImageView imageView4 = this.mLockScreen;
        if (imageView4 != null) {
            imageView4.setVisibility((this.mAdPlaying || this.mCurrentState == 7) ? 4 : 0);
            this.mLockScreen.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.lambda$init$10(view);
                }
            });
        }
        if (getActivityContext() != null) {
            this.mSeekEndOffset = CommonUtil.dip2px(getActivityContext(), 50.0f);
        }
        setCLick(this.mVipBackTv);
        setCLick(this.mMuteButton, false);
        setCLick(this.mLiveMuteButton, false);
        setCLick(this.mMoreButton);
        setCLick(this.mPlayListButton);
        setCLick(this.mSpeedTextView);
        setCLick(this.mClarityTextView);
        setCLick(this.mSubtitleTextView);
        setCLick(this.mNextButton);
        this.mSwithClarietyTip = (TextView) findViewById(R.id.swith_clarity_tip);
        initEvent();
        TextView textView2 = this.mSubtitleTextView;
        if (textView2 != null) {
            textView2.setVisibility(0);
        }
        setViewVisible(this.mNextButton, true ^ PlayHandler.getInstance().mIsLast);
        setClarity();
        setSpeed();
        initSubTitle();
        hideAllWidget();
        setTitle();
        setLoad();
        setPlayStatus();
        this.mErrorContainer.removeAllViews();
        setViewShowState(this.mLoginOpenVipContainer, 8);
        setViewVisible(this.mOpenVipTipContainer, false);
        if (!this.mIfCurrentIsFullscreen && (imageView = this.mMuteButton) != null) {
            imageView.setSelected(GSYVideoManager.instance().isNeedMute());
        }
        if (PlayHandler.getInstance().mProgressThumb != null && (seekBar = this.mProgressBar) != null) {
            seekBar.setThumb(PlayHandler.getInstance().mProgressThumb);
            this.mProgressBar.setThumbOffset(PlayHandler.getInstance().mProgressOffset);
        }
        initShortVideoControlViews();
        initShortVideoControlViewListeners();
        this.mLlLiveLogo = (LinearLayout) findViewById(R.id.ll_live_logo);
        this.mLottieLiveLogo = (LottieAnimationView) findViewById(R.id.lottie_live_logo);
        this.mTvLivePlaying = (TextView) findViewById(R.id.tv_live_playing);
        this.mLlLiveTitle24hour = (LinearLayout) findViewById(R.id.ll_live_title_24hour);
        this.mTvLive24hours = (TextView) findViewById(R.id.tv_live_24hours);
        this.mTvLiveTitle = (TextView) findViewById(R.id.tv_live_title);
        if (PlayHandler.getInstance().mIsYoutube || PlayHandler.getInstance().mIsVk) {
            ImageView imageView5 = this.mNextButton;
            if (imageView5 != null) {
                imageView5.setVisibility(8);
            }
            ImageView imageView6 = this.mPlayListButton;
            if (imageView6 != null) {
                imageView6.setVisibility(8);
            }
            TextView textView3 = this.mSubtitleTextView;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
        }
    }

    @SuppressLint({"StringFormatInvalid"})
    public void initPre() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i = this.mPreviewDuration;
        if (i >= 60000) {
            spannableStringBuilder.append((CharSequence) getResources().getString(R.string.vip_open_vip_land, Integer.valueOf((i / 1000) / 60)));
        } else {
            spannableStringBuilder.append((CharSequence) getResources().getString(R.string.vip_open_vip_land_second, Integer.valueOf(i / 1000)));
        }
        CustomClickableSpan customClickableSpan = new CustomClickableSpan(getContext(), true) {
            @Override
            public void onClick(@NonNull View view) {
                GSYVideoControlView.this.buyVip();
                h27.c().e(PlayerEvent.EVENT_ID_PLAYER_VIDEO_PREVIEW_BTN_CLICK, Boolean.valueOf(GSYVideoControlView.this.mIfCurrentIsFullscreen));
            }
        };
        CustomClickableSpan customClickableSpan2 = new CustomClickableSpan(getContext(), false) {
            @Override
            public void onClick(@NonNull View view) {
                GSYVideoControlView.this.buyVip();
                h27.c().e(PlayerEvent.EVENT_ID_PLAYER_VIDEO_PREVIEW_BTN_CLICK, Boolean.valueOf(GSYVideoControlView.this.mIfCurrentIsFullscreen));
            }
        };
        SpannableString spannableString = new SpannableString(getResources().getString(R.string.vip_open_vip));
        SpannableString spannableString2 = new SpannableString(getResources().getString(R.string.vip_open_vip_arrow));
        spannableString.setSpan(customClickableSpan, 0, spannableString.length(), 18);
        spannableString2.setSpan(customClickableSpan2, 0, spannableString2.length(), 18);
        this.mOpenVipTipTv.setMovementMethod(LinkMovementMethod.getInstance());
        spannableStringBuilder.append((CharSequence) " ").append((CharSequence) spannableString).append((CharSequence) " ");
        spannableStringBuilder.append((CharSequence) spannableString2);
        this.mOpenVipTipTv.setText(spannableStringBuilder);
    }

    public void initShortVideoControlViewListeners() {
    }

    public void initShortVideoControlViews() {
    }

    public void initSubTitle() {
        int i = PlayHandler.getInstance().mSubtitleCodeByUser;
        List<VideoSubtitle> subtitleList = PlayHandler.getInstance().getSubtitleList();
        if (i != -1 && subtitleList != null && !subtitleList.isEmpty()) {
            ArrayList<VideoSubtitle> arrayList = new ArrayList(subtitleList);
            for (VideoSubtitle videoSubtitle : arrayList) {
                videoSubtitle.setSelect(videoSubtitle.getLanguage() == i);
            }
            PlayHandler.getInstance().setSubtitleList(arrayList);
            Log.i("initSubTitle", "setSubTitle: " + arrayList);
        }
        setSubTitle();
    }

    public boolean isInDoubleTapMode() {
        return false;
    }

    public boolean isNeedLockFull() {
        return this.mNeedLockFull;
    }

    public boolean isNetworkBlockErrorShowing() {
        if (this.mbShowError && isNetworkBlockErrorType(this.mErrorType)) {
            return true;
        }
        ErrorRefreshLayer errorRefreshLayer = this.mErrorlayersMap.get(1001);
        ErrorRefreshLayer errorRefreshLayer2 = this.mErrorlayersMap.get(1002);
        if (errorRefreshLayer == null || errorRefreshLayer.getVisibility() != 0) {
            return errorRefreshLayer2 != null && errorRefreshLayer2.getVisibility() == 0;
        }
        return true;
    }

    public boolean isShortVideoPlayer() {
        return getClass().equals(VishaShortVideoPlayer.class) || this.mVideoSourceType == 6;
    }

    public boolean isSwitchResolutionNeedVip() {
        return this.mbSwitchResolutionNeedVip;
    }

    public void lockTouchLogic() {
        wz5.N("lock");
        if (this.mLockCurScreen) {
            this.mLockScreen.setImageResource(R.drawable.ic_unlock);
            this.mLockCurScreen = false;
            onClickUiToggle();
        } else {
            this.mLockScreen.setImageResource(R.drawable.ic_lock);
            this.mLockCurScreen = true;
            hideAllWidget();
            this.mBottomProgressBar.setVisibility(0);
            this.mLockScreen.setVisibility(0);
            this.mBottomProgressBar.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$lockTouchLogic$3();
                }
            }, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        }
    }

    public void loopSetProgressAndTime() {
        SeekBar seekBar = this.mProgressBar;
        if (seekBar == null || this.mTotalTimeTextView == null || this.mCurrentTimeTextView == null) {
            return;
        }
        seekBar.setProgress(0);
        this.mProgressBar.setSecondaryProgress(0);
        this.mCurrentTimeTextView.setText(CommonUtil.stringForTime(0));
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            progressBar.setProgress(0);
        }
        setPlayStatus();
    }

    @Override
    public void onAdComplete(IMediaPlayer iMediaPlayer) {
        super.onAdComplete(iMediaPlayer);
        this.mAdPlaying = false;
        hideAllWidget();
        LogUtils.j(TAG, "onAdComplete:false");
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onAdComplete();
        }
    }

    @Override
    public void onAdCountdown(IMediaPlayer iMediaPlayer, int i) {
        super.onAdCountdown(iMediaPlayer, i);
    }

    @Override
    public void onAdPrepared(IMediaPlayer iMediaPlayer) {
        super.onAdPrepared(iMediaPlayer);
    }

    @Override
    public void onAdStartPlaying(IMediaPlayer iMediaPlayer) {
        super.onAdStartPlaying(iMediaPlayer);
        this.mAdPlaying = true;
        hideLoadingView();
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onAdStartPlaying();
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Debuger.printfLog(hashCode() + "------------------------------ visible onAttachedToWindow");
        for (int i : this.mEvents) {
            h27.c().b(this, i);
        }
    }

    @Override
    public void onAuthorizeResult(String str, String str2, Object obj) {
    }

    @Override
    public void onAutoCompletion() {
        super.onAutoCompletion();
        if (this.mLockCurScreen) {
            lockTouchLogic();
            this.mLockScreen.setVisibility(8);
        }
    }

    public void onBrightnessSlide(float f) {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        float f2 = ((Activity) context).getWindow().getAttributes().screenBrightness;
        this.mBrightnessData = f2;
        if (f2 <= 0.0f) {
            this.mBrightnessData = 0.5f;
        } else if (f2 < 0.01f) {
            this.mBrightnessData = 0.01f;
        }
        WindowManager.LayoutParams attributes = ((Activity) this.mContext).getWindow().getAttributes();
        float f3 = this.mBrightnessData + f;
        attributes.screenBrightness = f3;
        if (f3 > 1.0f) {
            attributes.screenBrightness = 1.0f;
        } else if (f3 < 0.01f) {
            attributes.screenBrightness = 0.01f;
        }
        showBrightnessDialog(attributes.screenBrightness);
        ((Activity) this.mContext).getWindow().setAttributes(attributes);
    }

    @Override
    public void onBufferingUpdate(final int i) {
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onBufferingUpdate$2(i);
            }
        });
    }

    @SuppressLint({"UseCompatLoadingForDrawables"})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.start) {
            clickStartIcon();
            return;
        }
        int i = R.id.surface_container;
        if (id == i && this.mCurrentState == 7) {
            if (this.mVideoAllCallBack != null) {
                Debuger.printfLog("onClickStartError");
                this.mVideoAllCallBack.onClickStartError(this.mOriginUrl, this.mTitle, this);
            }
            prepareVideo();
            return;
        }
        if (id == R.id.thumb) {
            if (this.mThumbPlay) {
                if (TextUtils.isEmpty(this.mUrl)) {
                    Debuger.printfError("********" + getResources().getString(R.string.no_url));
                    return;
                }
                int i2 = this.mCurrentState;
                if (i2 == 0) {
                    startPlay();
                    return;
                } else {
                    if (i2 == 6) {
                        onClickUiToggle();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (id == i) {
            if (this.mbSwitchResolutionNeedVip) {
                return;
            }
            if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                if (this.mIfCurrentIsFullscreen) {
                    Debuger.printfLog("onClickBlankFullscreen");
                    this.mVideoAllCallBack.onClickBlankFullscreen(this.mOriginUrl, this.mTitle, this);
                } else {
                    Debuger.printfLog("onClickBlank");
                    this.mVideoAllCallBack.onClickBlank(this.mOriginUrl, this.mTitle, this);
                }
            }
            startDismissControlViewTimer();
            wz5.N("screencl");
            return;
        }
        if (id == R.id.mute) {
            this.mMuteButton.setImageResource(R.drawable.selector_mute);
            wz5.N(GSYVideoManager.instance().isNeedMute() ? " unmute" : "mute");
            GSYVideoManager.instance().setNeedMute(!GSYVideoManager.instance().isNeedMute());
            this.mMuteButton.setSelected(GSYVideoManager.instance().isNeedMute());
            return;
        }
        if (id == R.id.live_mute) {
            if (this.mLiveMuteButton != null) {
                GSYVideoManager.instance().setNeedMute(!GSYVideoManager.instance().isNeedMute());
                this.mLiveMuteButton.setSelected(GSYVideoManager.instance().isNeedMute());
                this.mLiveMuteButton.setImageResource(R.drawable.selector_mute);
                VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
                if (videoAllCallBack != null) {
                    videoAllCallBack.onSetMute(GSYVideoManager.instance().isNeedMute());
                    return;
                }
                return;
            }
            return;
        }
        if (id == R.id.next) {
            playNext(view);
            wz5.N(ES6Iterator.NEXT_METHOD);
            return;
        }
        if (id == R.id.language) {
            hideAllWidget();
            wz5.f0(PlayHandler.getInstance().mCureentSubTitle);
            wz5.d0(PlayHandler.getInstance().mCureentSubTitle);
            SubtitleDialog.newInstance().setCallback(new SubtitleDialog.SubtitleCallback() {
                @Override
                public final void update(String str) {
                    this.a.appliedSubtitle(str);
                }
            }).showListDialog(getActivityContext(), AuthInfo.Component.CODE_SUBTITLE);
            return;
        }
        if (id == R.id.speed) {
            hideAllWidget();
            SpeedDialog.newInstance().setCallback(new SpeedDialog.SpeedCallback() {
                @Override
                public final void update(String str, float f) {
                    this.a.lambda$onClick$4(str, f);
                }
            }).showListDialog(getActivityContext(), "speed");
            wz5.N("setPlaySpeed");
            return;
        }
        if (id == R.id.clarity) {
            wz5.g();
            wz5.h(this.mClarityTextView.getText().toString());
            ClarityDialog.newInstance().setCallback(new ClarityDialog.ClarityCallback() {
                @Override
                public final void switchResolution(VideoDefinition videoDefinition) {
                    this.a.lambda$onClick$5(videoDefinition);
                }
            }).showListDialog(getActivityContext(), "clarity");
            return;
        }
        if (id == R.id.more) {
            hideAllWidget();
            MoreDialog.newInstance().showListDialog(getActivityContext(), "more");
            wz5.N("more");
            wz5.z();
            h27.c().e(AnalyticsListener.EVENT_AUDIO_CODEC_ERROR, new Object[0]);
            return;
        }
        if (id == R.id.episode) {
            hideAllWidget();
            showPlayList(view);
            wz5.N("playlist");
        } else if (id == R.id.tv_open_vip || id == R.id.vip_tip) {
            buyVip();
        }
    }

    public abstract void onClickUiToggle();

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        for (int i : this.mEvents) {
            h27.c().f(this, i);
        }
        Debuger.printfLog(hashCode() + "------------------------------ dismiss onDetachedFromWindow: " + PlayHandler.getInstance().mIsTaskAutoPlay);
        if (PlayHandler.getInstance().mIsTaskAutoPlay) {
            release();
            PlayHandler.getInstance().release();
        }
        cancelProgressTimer();
        cancelDismissControlViewTimer();
    }

    @Override
    public void onError(int i, int i2) {
        super.onError(i, i2);
        if (this.mLockCurScreen) {
            lockTouchLogic();
            this.mLockScreen.setVisibility(8);
        }
    }

    @Override
    public void onNetworkStateChanged(String str) {
        super.onNetworkStateChanged(str);
        if (isLiveFullscreen()) {
            if ("NONE".equals(str)) {
                LogUtils.j(TAG, "onNetworkStateChanged, no network state");
                if (getCurrentState() == 2) {
                    getGSYVideoManager().pause();
                }
                this.mbShowError = true;
                showErrorLayer(1002);
            } else if ("MOBILE".equals(str)) {
                if (PlayHandler.getInstance().mShowMobileData) {
                    LogUtils.j(TAG, "onNetworkStateChanged, mobile is connected,not allowed to play");
                    if (getCurrentState() == 2) {
                        getGSYVideoManager().pause();
                    }
                    this.mbShowError = true;
                    showErrorLayer(1001);
                } else {
                    LogUtils.j(TAG, "onNetworkStateChanged, mobile is connected,,allowed to play");
                    hideErrorLayer(1001);
                    hideErrorLayer(1002);
                    if (getCurrentState() == 2) {
                        getGSYVideoManager().start();
                    }
                }
            } else if ("WIFI".equals(str)) {
                if (getCurrentState() == 2) {
                    getGSYVideoManager().start();
                }
                hideErrorLayer(1001);
                hideErrorLayer(1002);
            }
            if (!this.mbShowError || isShortVideoPlayer()) {
                return;
            }
            hideAllWidget();
            setViewShowState(this.mLockScreen, 8);
            cancelDismissControlViewTimer();
            setViewShowState(this.mTopContainer, 0);
            setViewShowState(this.mMoreButton, 4);
            setViewShowState(this.mBottomContainer, 8);
        }
    }

    @Override
    public void onPlayerInitResult(IMediaPlayer iMediaPlayer, GSYModel gSYModel) {
    }

    @Override
    public void onPrepared() {
        setTextAndProgress(0, true);
        super.onPrepared();
        if (this.mCurrentState != 1) {
            return;
        }
        startProgressTimer();
        Debuger.printfLog(hashCode() + "------------------------------ surface_container onPrepared");
    }

    @Override
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        showProgressTime(seekBar);
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            progressBar.setProgress(seekBar.getProgress());
        }
        OSSeekbar oSSeekbar = this.mOsSeekbar;
        if (oSSeekbar != null) {
            oSSeekbar.setProgress(seekBar.getProgress());
        }
    }

    @Override
    public void onSetSubtitlesFailed(String str) {
        h27.c().e(1003, Boolean.TRUE);
    }

    @Override
    public void onSetSubtitlesSuccess(String str) {
        if (!this.mbShowSubtitle) {
            LogUtils.j(TAG, "onSetSubtitlesSuccess,but not show subtitle");
            GSYVideoManager.instance().switchSubtitleSource(-1);
            return;
        }
        if (r0a.g(str)) {
            return;
        }
        int i = Integer.parseInt(str);
        if (PlayHandler.getInstance().getSubtitleList() == null || PlayHandler.getInstance().getSubtitleList().size() <= 0 || !PlayHandler.getInstance().isSubtitleAvailable(i)) {
            return;
        }
        for (VideoSubtitle videoSubtitle : PlayHandler.getInstance().getSubtitleList()) {
            videoSubtitle.setSelect(videoSubtitle.getLanguage() == i);
            if (videoSubtitle.isSelected()) {
                PlayHandler.getInstance().mCureentSubTitle = videoSubtitle.getName();
                PlayHandler.getInstance().mSubtitleCode = videoSubtitle.getLanguage();
            }
        }
        h27.c().e(1003, Boolean.TRUE);
    }

    @Override
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.mProgressTimeDialog.setVisibility(0);
        this.mHadSeekTouch = true;
        this.mSeekProgress = seekBar.getProgress();
        PlayHandler.getInstance().mProgressChange = true;
    }

    @Override
    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
            if (isIfCurrentIsFullscreen()) {
                Debuger.printfLog("onClickSeekbarFullscreen");
                this.mVideoAllCallBack.onClickSeekbarFullscreen(this.mOriginUrl, this.mTitle, this);
            } else {
                Debuger.printfLog("onClickSeekbar");
                this.mVideoAllCallBack.onClickSeekbar(this.mOriginUrl, this.mTitle, this);
            }
        }
        if (getGSYVideoManager() != null && this.mHadPlay) {
            try {
                int progress = (seekBar.getProgress() * getDuration()) / 100;
                this.mProgressTimeDialog.setVisibility(8);
                seekTo(progress);
                showProgressTime(seekBar);
            } catch (Exception e) {
                Debuger.printfWarning(e.toString());
            }
        }
        wz5.N("seekbar");
        int progress2 = seekBar.getProgress() - this.mSeekProgress;
        wz5.W(progress2 > 0, Math.abs((progress2 * getDuration()) / 100));
        this.mHadSeekTouch = false;
    }

    @Override
    public void onSubtitlesAvailable(List<VideoSubtitle> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i = PlayHandler.getInstance().mSubtitleCodeByUser;
        if (i != -1) {
            for (VideoSubtitle videoSubtitle : list) {
                if (i == videoSubtitle.getLanguage()) {
                    GSYVideoManager.instance().switchSubtitleSource(i);
                    PlayHandler.getInstance().mSubtitleCode = i;
                    appliedSubtitle(videoSubtitle.getName());
                    break;
                }
            }
        }
        PlayHandler.getInstance().setSubtitleList(list);
        h27.c().e(1003, Boolean.TRUE);
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int id = view.getId();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (this.mIfCurrentIsFullscreen && this.mLockCurScreen && this.mNeedLockFull) {
            onClickUiToggle();
            startDismissControlViewTimer();
            return true;
        }
        if (id == R.id.fullscreen) {
            return false;
        }
        if (id == R.id.surface_container) {
            int action = motionEvent.getAction();
            if (action == 0) {
                cancelDismissControlViewTimer();
                touchSurfaceDown(x, y);
            } else if (action == 1) {
                startDismissControlViewTimer();
                touchSurfaceUp();
                Debuger.printfLog(hashCode() + "------------------------------ surface_container ACTION_UP");
                startProgressTimer();
                if (this.mHideKey && this.mShowVKey) {
                    return true;
                }
            } else if (action == 2) {
                cancelDismissControlViewTimer();
                float f = x - this.mDownX;
                float f2 = y - this.mDownY;
                float fAbs = Math.abs(f);
                float fAbs2 = Math.abs(f2);
                boolean z = this.mIfCurrentIsFullscreen;
                if (((z && this.mIsTouchWigetFull) || (this.mIsTouchWiget && !z)) && !this.mChangePosition && !this.mChangeVolume && !this.mBrightness && !this.mChangeSpeed) {
                    touchSurfaceMoveFullLogic(fAbs, fAbs2);
                }
                if (isLive() && !isLiveFullscreen()) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
                touchSurfaceMove(f, f2, y);
            }
            this.gestureDetector.onTouchEvent(motionEvent);
        } else if (id == R.id.progress) {
            int action2 = motionEvent.getAction();
            if (action2 == 0) {
                cancelDismissControlViewTimer();
            } else if (action2 == 1) {
                startDismissControlViewTimer();
                Debuger.printfLog(hashCode() + "------------------------------ progress ACTION_UP");
                startProgressTimer();
                for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
                    parent.requestDisallowInterceptTouchEvent(false);
                }
                this.mBrightnessData = -1.0f;
            } else if (action2 == 2) {
            }
            cancelProgressTimer();
            for (ViewParent parent2 = getParent(); parent2 != null; parent2 = parent2.getParent()) {
                parent2.requestDisallowInterceptTouchEvent(true);
            }
        }
        return false;
    }

    @Override
    public void onVideoStart() {
        super.onVideoStart();
    }

    public void playNext(View view) {
        if (PlayHandler.getInstance().getPlayNextListener() != null) {
            PlayHandler.getInstance().getPlayNextListener().onClick(view);
        }
    }

    @Override
    public void prepareVideo() {
        if (this.mSetUpLazy) {
            super.setUp(this.mOriginUrl, this.mCache, this.mCachePath, this.mMapHeadData, this.mTitle);
        }
        super.prepareVideo();
    }

    @Override
    public void refreshBottomContainer() {
        if (isVkVideo()) {
            ImageView imageView = this.mStartButton;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            TextView textView = this.mCurrentTimeTextView;
            if (textView != null) {
                textView.setVisibility(8);
            }
            SeekBar seekBar = this.mProgressBar;
            if (seekBar != null) {
                seekBar.setVisibility(8);
            }
            TextView textView2 = this.mTotalTimeTextView;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            ImageView imageView2 = this.mMuteButton;
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
            setViewShowState(this.mBottomContainer, 8);
        }
    }

    @SuppressLint({"UseCompatLoadingForDrawables"})
    public void resetNormalState() {
        TextView textView = this.mSpeedTextView;
        if (textView != null) {
            textView.setText("1.0X");
        }
        setClarity();
        PlayHandler.getInstance().mClarity = "";
        PlayHandler.getInstance().mSubtitleCode = DescriptorProtos.Edition.EDITION_PROTO2_VALUE;
        PlayHandler.getInstance().mCureentSubTitle = "Subtitle";
        PlayHandler.getInstance().clearSubtitle();
        setSubTitle();
    }

    public void resetProgressAndTime() {
        SeekBar seekBar = this.mProgressBar;
        if (seekBar == null || this.mTotalTimeTextView == null || this.mCurrentTimeTextView == null) {
            return;
        }
        seekBar.setProgress(0);
        this.mProgressBar.setSecondaryProgress(0);
        this.mCurrentTimeTextView.setText(CommonUtil.stringForTime(0));
        this.mTotalTimeTextView.setText(CommonUtil.stringForTime(0));
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            progressBar.setProgress(0);
            this.mBottomProgressBar.setSecondaryProgress(0);
        }
        setPlayStatus();
    }

    public void resetVIPControls() {
        this.mbPreviewVideo = false;
        this.mbShowNeedVIP = false;
        this.mbSwitchResolutionNeedVip = false;
        setViewShowState(this.mLoginOpenVipContainer, 8);
        setViewShowState(this.mOpenVipTipContainer, 8);
    }

    public void resolveThumbImage(View view) {
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
            this.mThumbImageViewLayout.addView(view);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = -1;
            layoutParams.width = -1;
            view.setLayoutParams(layoutParams);
        }
    }

    public void resolveUIState(int i) {
        if (i == 0) {
            changeUiToNormal();
            cancelDismissControlViewTimer();
        } else if (i == 1) {
            changeUiToPreparingShow();
            startDismissControlViewTimer();
        } else if (i == 2) {
            if (PlayHandler.getInstance().mIsPip) {
                updateStartImage();
            } else {
                changeUiToPlayingShow();
            }
            startDismissControlViewTimer();
        } else if (i == 3) {
            changeUiToPlayingBufferingShow();
        } else if (i == 5) {
            if (PlayHandler.getInstance().mIsPip) {
                updateStartImage();
            } else {
                changeUiToPauseShow();
            }
            cancelDismissControlViewTimer();
        } else if (i == 6) {
            changeUiToCompleteShow();
            cancelDismissControlViewTimer();
        } else if (i == 7) {
            changeUiToError();
        }
        resolveVishaUIState();
    }

    public void resolveVishaUIState() {
        if ((this.mAdPlaying || this.mCurrentState == 7) && this.mAdBackImageView != null && this.mIfCurrentIsFullscreen) {
            hideAllWidget();
            setViewShowState(this.mAdBackImageView, 0);
            ImageView imageView = this.mLockScreen;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
        } else {
            setViewShowState(this.mAdBackImageView, 8);
        }
        if (this.mbShowError) {
            hideAllWidget();
            showErrorLayer(this.mErrorType);
            if (isNetworkBlockErrorType(this.mErrorType)) {
                setViewShowState(this.mStartButton, 8);
            }
        }
    }

    public void setBottomVisible(boolean z) {
        if (isVkVideo() || isShortVideoPlayer()) {
            return;
        }
        setViewVisible(this.mBottomContainer, z);
    }

    public void setDismissControlTime(int i) {
        this.mDismissControlTime = i;
    }

    public void setEnlargeImageRes(int i) {
        this.mEnlargeImageRes = i;
    }

    public void setFullScreenVisible(boolean z) {
        setViewVisible(this.mFullscreenButton, z);
    }

    public void setGSYVideoProgressListener(GSYVideoProgressListener gSYVideoProgressListener) {
        this.mGSYVideoProgressListener = gSYVideoProgressListener;
    }

    public void setHideKey(boolean z) {
        this.mHideKey = z;
    }

    public void setIsPipMode(boolean z) {
        this.mIsPipMode = z;
    }

    public void setIsTouchWiget(boolean z) {
        this.mIsTouchWiget = z;
    }

    public void setIsTouchWigetFull(boolean z) {
        this.mIsTouchWigetFull = z;
    }

    public void setLockClickListener(LockClickListener lockClickListener) {
        this.mLockClickListener = lockClickListener;
    }

    public void setMute(boolean z) {
        ImageView imageView = this.mMuteButton;
        if (imageView != null) {
            imageView.setSelected(z);
        }
        GSYVideoManager.instance().setNeedMute(z);
    }

    public void setNeedLockFull(boolean z) {
        this.mNeedLockFull = z;
    }

    public void setNeedShowWifiTip(boolean z) {
        this.mNeedShowWifiTip = z;
    }

    public void setProgressAndTime(int i, int i2, int i3, int i4, boolean z) {
        GSYVideoProgressListener gSYVideoProgressListener = this.mGSYVideoProgressListener;
        if (gSYVideoProgressListener != null && this.mCurrentState == 2) {
            gSYVideoProgressListener.onProgress(i, i2, i3, i4);
        }
        SeekBar seekBar = this.mProgressBar;
        if (seekBar == null || this.mTotalTimeTextView == null || this.mCurrentTimeTextView == null || this.mHadSeekTouch) {
            return;
        }
        if (!this.mTouchingProgressBar && (i != 0 || z)) {
            seekBar.setProgress(i);
        }
        if (getGSYVideoManager().getBufferedPercentage() > 0) {
            i2 = getGSYVideoManager().getBufferedPercentage();
        }
        if (i2 > 94) {
            i2 = 100;
        }
        setSecondaryProgress(i2);
        this.mTotalTimeTextView.setText(CommonUtil.stringForTime(i4));
        if (i3 > 0) {
            this.mCurrentTimeTextView.setText(CommonUtil.stringForTime(i3));
        }
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            if (i != 0 || z) {
                progressBar.setProgress(i);
            }
            setSecondaryProgress(i2);
        }
        setPlayStatus();
    }

    public void setSecondaryProgress(int i) {
        if (this.mProgressBar != null && i != 0 && !getGSYVideoManager().isCacheFile()) {
            this.mProgressBar.setSecondaryProgress(i);
        }
        if (this.mBottomProgressBar == null || i == 0 || getGSYVideoManager().isCacheFile()) {
            return;
        }
        this.mBottomProgressBar.setSecondaryProgress(i);
    }

    public void setSeekRatio(float f) {
        if (f < 0.0f) {
            return;
        }
        this.mSeekRatio = f;
    }

    public void setShowSubtitle(boolean z) {
        this.mbShowSubtitle = z;
    }

    public void setShrinkImageRes(int i) {
        this.mShrinkImageRes = i;
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public void setSmallVideoTextureView(View.OnTouchListener onTouchListener) {
        super.setSmallVideoTextureView(onTouchListener);
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null) {
            relativeLayout.setOnTouchListener(onTouchListener);
        }
    }

    @Override
    public void setStateAndUi(int i) {
        TextView textView;
        String str = TAG;
        LogUtils.j(str, "setStateAndUi:" + this.mMapPlayState.get(Integer.valueOf(i)), "visha player:" + this);
        getGSYVideoManager().setLastState(i);
        this.mCurrentState = i;
        if ((i == 0 && isCurrentMediaListener()) || i == 6 || i == 7) {
            this.mHadPrepared = false;
        }
        int i2 = this.mCurrentState;
        if (i2 == 0) {
            if (isCurrentMediaListener()) {
                Debuger.printfLog(hashCode() + "------------------------------ dismiss CURRENT_STATE_NORMAL");
                cancelProgressTimer();
                getGSYVideoManager().releaseMediaPlayer();
                releasePauseCover();
                this.mBufferPoint = 0;
                this.mSaveChangeViewTIme = 0L;
                this.mPreviewDuration = 0;
            }
            this.mPlayerErrMsg = "";
            this.mbShowError = false;
            this.mErrorType = 0;
            releaseNetWorkState();
        } else if (i2 == 1) {
            this.mPlayerErrMsg = "";
            resetProgressAndTime();
            this.mbShowNeedVIP = false;
            this.mbPreviewVideo = false;
            this.mbSwitchResolutionNeedVip = false;
            if (!isNetworkBlockErrorShowing()) {
                this.mbShowError = false;
                this.mErrorType = 0;
            }
            PlayHandler.getInstance().mSwitchingResolution = -1;
        } else if (i2 == 2) {
            this.mbShowNeedVIP = false;
            this.mbSwitchResolutionNeedVip = false;
            if (isCurrentMediaListener()) {
                Debuger.printfLog(hashCode() + "------------------------------ CURRENT_STATE_PLAYING");
                startProgressTimer();
            }
        } else if (i2 == 5) {
            Debuger.printfLog(hashCode() + "------------------------------ CURRENT_STATE_PAUSE");
            startProgressTimer();
            statisticPlayerPreviewDuration();
        } else if (i2 == 6) {
            Debuger.printfLog(hashCode() + "------------------------------ dismiss CURRENT_STATE_AUTO_COMPLETE");
            cancelProgressTimer();
            SeekBar seekBar = this.mProgressBar;
            if (seekBar != null) {
                seekBar.setProgress(100);
            }
            TextView textView2 = this.mCurrentTimeTextView;
            if (textView2 != null && (textView = this.mTotalTimeTextView) != null) {
                textView2.setText(textView.getText());
            }
            ProgressBar progressBar = this.mBottomProgressBar;
            if (progressBar != null) {
                progressBar.setProgress(100);
            }
            statisticPlayerPreviewDuration();
        } else if (i2 == 7) {
            if (isCurrentMediaListener()) {
                Log.i(str, "releaseMediaPlayer");
                getGSYVideoManager().releaseMediaPlayer();
            }
            statisticPlayerPreviewDuration();
        }
        resolveUIState(i);
    }

    public void setSubTitle() {
        if (this.mSubtitleTextView != null) {
            Log.i("setSubTitle", "setSubTitle: " + PlayHandler.getInstance().getSubtitleList());
            VideoSubtitle selectSubtitle = PlayHandler.getInstance().getSelectSubtitle();
            if (selectSubtitle == null || r0a.g(selectSubtitle.getName())) {
                this.mSubtitleTextView.setText(R.string.tip_no_subtitle);
            } else {
                this.mSubtitleTextView.setText(selectSubtitle.getName());
            }
        }
    }

    public void setTextAndProgress(int i) {
        setTextAndProgress(i, false);
    }

    public void setThumbImageView(View view) {
        if (this.mThumbImageViewLayout != null) {
            this.mThumbImageView = view;
            resolveThumbImage(view);
        }
    }

    public void setThumbPlay(boolean z) {
        this.mThumbPlay = z;
    }

    @Override
    public boolean setUp(String str, boolean z, String str2) {
        return setUp(str, z, null, str2);
    }

    public boolean setUpLazy(String str, boolean z, File file, Map<String, String> map, String str2) {
        this.mOriginUrl = str;
        this.mCache = z;
        this.mCachePath = file;
        this.mSetUpLazy = true;
        this.mTitle = str2;
        this.mMapHeadData = map;
        if (isCurrentMediaListener() && System.currentTimeMillis() - this.mSaveChangeViewTIme < 2000) {
            return false;
        }
        this.mUrl = "waiting";
        this.mCurrentState = 0;
        return true;
    }

    public void setViewShowState(View view, int i) {
        if (view != null) {
            if (isShortVideoPlayer() && view.equals(this.mBottomContainer)) {
                return;
            }
            if (this.mIsPipMode && view.getId() != R.id.surface_container && i == 0) {
                return;
            }
            view.setVisibility(i);
            if ((isLive() && !isLiveFullscreen()) || isShortVideoPlayer()) {
                if (view.getId() == R.id.fullscreen) {
                    view.setVisibility(8);
                }
                if (view.getId() == R.id.bottom_container) {
                    view.setVisibility(8);
                }
                if ((view.getId() == R.id.back && !isShortVideoPlayer()) || view.getId() == R.id.ad_back) {
                    view.setVisibility(8);
                }
            } else if (isVkVideo()) {
                if (view.getId() == R.id.fullscreen) {
                    view.setVisibility(8);
                }
                if (view.getId() == R.id.bottom_container) {
                    view.setVisibility(8);
                }
                if (view.getId() == R.id.start) {
                    view.setVisibility(8);
                }
                if (view.getId() == R.id.current) {
                    view.setVisibility(8);
                }
                if (view.getId() == R.id.progress) {
                    view.setVisibility(8);
                }
                if (view.getId() == R.id.total) {
                    view.setVisibility(8);
                }
                if (view.getId() == R.id.mute) {
                    view.setVisibility(8);
                }
                if (view.getId() == R.id.musk) {
                    view.setVisibility(8);
                }
            }
            if (isLiveFullscreen() && this.mbShowError && !isShortVideoPlayer()) {
                this.mBottomContainer.setVisibility(8);
            }
            if (view.getId() == R.id.lottie_live_logo && i == 0) {
                getContext().getTheme().resolveAttribute(com.transsion.common.R.attr.os_platform_basic_color, new TypedValue(), true);
                gu5.i((LottieAnimationView) view, this.mContext.getResources().getColor(R.color.white, this.mContext.getTheme()));
            }
            if (view.getId() == R.id.vip_contaniner && i == 0 && this.mbSwitchResolutionNeedVip) {
                resolveSwitchResolutionVIPUI();
            }
        }
    }

    public boolean shouldAllowedMobileNetPlay() {
        boolean z = true;
        PlayHandler.getInstance().mShowMobileData = (w6c.c(this.mContext, "allow_mobile_data_play", false) || MMKV.p().e("moble_remind", false)) ? false : true;
        String str = TAG;
        LogUtils.j(str, "shouldAllowedMobileNetPlay:" + PlayHandler.getInstance().mShowMobileData);
        if (NetworkUtils.isAvailable(this.mContext)) {
            if (NetworkUtils.isMobileConnected(this.mContext) && PlayHandler.getInstance().mShowMobileData) {
                LogUtils.j(str, "liveFullscreen, mobile is connected,don't allow playback");
                if (getCurrentState() == 2) {
                    getGSYVideoManager().pause();
                }
                this.mbShowError = true;
                showErrorLayer(1001);
                setViewShowState(this.mLottieLiveLogo, 0);
                setViewShowState(this.mTvLive24hours, 0);
            }
            if (!z && !isShortVideoPlayer()) {
                hideAllWidget();
                setViewShowState(this.mLockScreen, 8);
                cancelDismissControlViewTimer();
                setViewShowState(this.mTopContainer, 0);
                setViewShowState(this.mMoreButton, 4);
                setViewShowState(this.mBottomContainer, 8);
            }
            return z;
        }
        LogUtils.j(str, "liveFullscreen, network is not available");
        if (getCurrentState() == 2) {
            getGSYVideoManager().pause();
        }
        this.mbShowError = true;
        showErrorLayer(1002);
        setViewShowState(this.mLottieLiveLogo, 0);
        setViewShowState(this.mTvLive24hours, 0);
        z = false;
        if (!z) {
            hideAllWidget();
            setViewShowState(this.mLockScreen, 8);
            cancelDismissControlViewTimer();
            setViewShowState(this.mTopContainer, 0);
            setViewShowState(this.mMoreButton, 4);
            setViewShowState(this.mBottomContainer, 8);
        }
        return z;
    }

    public abstract void showBrightnessDialog(float f);

    public void showBuffering(boolean z, final boolean z2) {
        if (this.mSwithClarietyTip != null) {
            if (PlayHandler.getInstance().mIsPip || !z) {
                this.mSwithClarietyTip.setVisibility(8);
                return;
            }
            h27.c().e(1074, new Object[0]);
            this.mSwithClarietyTip.setText(!z2 ? R.string.switch_chalrity_tip_net : R.string.switch_chalrity_tip);
            this.mSwithClarietyTip.setVisibility(0);
            this.mSwithClarietyTip.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$showBuffering$11(z2);
                }
            }, 3500L);
        }
    }

    public void showErrorLayer(int i) {
        showErrorLayer(i, "");
    }

    @Override
    public void showLoadingView(boolean z) {
        if (!z) {
            resetVIPControls();
        }
        hideAllErrorViews();
        updateLoadingView(0);
        if (getPreLoading() != null) {
            getPreLoading().setPreparedLoading(z);
            setViewShowState(getLoadingBackTv(), (this.mIsPipMode || !this.mIfCurrentIsFullscreen || z) ? 8 : 0);
        }
        startPrePlayNetSpeedTimer();
    }

    public void showPlayList(View view) {
        if (PlayHandler.getInstance().getPlayListListener() != null) {
            PlayHandler.getInstance().getPlayListListener().onClick(view);
        }
    }

    public abstract void showProgressDialog(float f, String str, int i, String str2, int i2);

    public abstract void showVolumeDialog(float f, int i);

    public void startDismissControlViewTimer() {
        if (isLiveFullscreen() && this.mbShowError) {
            return;
        }
        cancelDismissControlViewTimer();
        this.mPostDismiss = true;
        postDelayed(this.dismissControlTask, this.mDismissControlTime);
    }

    public void startPrePlayNetSpeedTimer() {
        cancelPrePlayNetSpeedTimer();
        this.mPostNetSpeed = true;
        postDelayed(this.prePlayNetworkSpeedTask, 500L);
    }

    @Override
    public void startPrepare() {
        if (shouldBlockPrepareForNetworkPrompt()) {
            return;
        }
        super.startPrepare();
    }

    public void startProgressTimer() {
        cancelProgressTimer();
        this.mPostProgress = true;
        postDelayed(this.progressTask, 300L);
    }

    public void statisticPlayerPreviewDuration() {
        if (!this.mbPreviewVideo || PlayerStatisticInfo.playRealDuration <= 0) {
            return;
        }
        h27.c().e(PlayerEvent.EVENT_ID_PLAYER_VIDEO_PREVIEW_WATCH_DURATION, Long.valueOf(PlayerStatisticInfo.playRealDuration));
        PlayerStatisticInfo.playRealDuration = 0L;
    }

    public void lambda$onClick$5(VideoDefinition videoDefinition) {
        YoutubePlayData youtubePlayData;
        StreamInfo streamInfo;
        if (videoDefinition == null) {
            LogUtils.j(TAG, "switch video resolution failed, null resolution");
            return;
        }
        String name = videoDefinition.getName();
        if (TextUtils.isEmpty(name)) {
            name = videoDefinition.getName();
        }
        if (videoDefinition.bCurrent) {
            LogUtils.j(TAG, "switch video resolution, current playing:" + videoDefinition);
            PlayHandler.getInstance().mSwitchingResolution = -1;
            return;
        }
        String str = TAG;
        LogUtils.j(str, "switch video resolution:" + videoDefinition);
        PlayHandler.getInstance().mSwitchingResolution = videoDefinition.getType();
        if (!isYoutubeVideo() || (youtubePlayData = this.mYoutubePlayData) == null || (streamInfo = youtubePlayData.mStreamInfo) == null) {
            hideAllWidget();
            switchClarity(name, 0);
            h27.c().e(1008, name);
            this.mbSwitchResolutionNeedVip = false;
            this.mbShowNeedVIP = false;
            GSYVideoManager.instance().switchResolution(videoDefinition.getType());
            return;
        }
        VideoStream videoStream = YoutubePlayUtil.getVideoStream(streamInfo, videoDefinition);
        if (videoStream != null) {
            LogUtils.j(str, "switch definition to play youtube video:" + videoStream.getContent());
            this.mYoutubePlayData.mVideoStream = videoStream;
            h27.c().e(1008, name);
            this.mbSwitchResolutionNeedVip = false;
            this.mbShowNeedVIP = false;
            startPlay();
        }
    }

    public void touchDoubleUp() {
        if (this.mHadPlay) {
            clickStartIcon();
        }
    }

    public void touchSurfaceDown(float f, float f2) {
        this.mTouchingProgressBar = true;
        this.mDownX = f;
        this.mDownY = f2;
        this.mMoveY = 0.0f;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = true;
    }

    public void touchSurfaceMove(float f, float f2, float f3) {
        int iD;
        int iC;
        SeekBar seekBar;
        if (getActivityContext() != null) {
            iD = f39.d();
            iC = f39.c();
        } else {
            iD = 0;
            iC = 0;
        }
        if (this.mChangePosition) {
            if (isLive()) {
                return;
            }
            int duration = getDuration();
            int i = (int) (this.mDownPosition + (((duration * f) / iD) / this.mSeekRatio));
            this.mSeekTimePosition = i;
            if (i > duration) {
                i = duration;
            }
            this.mSeekTimePosition = i;
            int i2 = i >= 0 ? i : 0;
            this.mSeekTimePosition = i2;
            showProgressDialog(f, CommonUtil.stringForTime(i2), this.mSeekTimePosition, CommonUtil.stringForTime(duration), duration);
            if (duration != 0 && (seekBar = this.mProgressBar) != null) {
                seekBar.setProgress((this.mSeekTimePosition * 100) / duration);
            }
            PlayHandler.getInstance().mProgressChange = true;
            return;
        }
        if (this.mChangeVolume) {
            if (!isLive() || (isLiveFullscreen() && !this.mbShowError)) {
                hideAllWidget();
                setViewShowState(this.mLockScreen, 8);
                float f4 = -f2;
                int streamMaxVolume = this.mAudioManager.getStreamMaxVolume(3);
                float f5 = iC;
                this.mAudioManager.setStreamVolume(3, this.mGestureDownVolume + ((int) (((streamMaxVolume * f4) * 3.0f) / f5)), 0);
                int i3 = (int) (((this.mGestureDownVolume * 100) / streamMaxVolume) + (((3.0f * f4) * 100.0f) / f5));
                wz5.N("gesture_volume");
                showVolumeDialog(-f4, i3);
                return;
            }
            return;
        }
        if (this.mBrightness) {
            if (!isLive() || (isLiveFullscreen() && !this.mbShowError)) {
                hideAllWidget();
                setViewShowState(this.mLockScreen, 8);
                wz5.N("gesture_brightness");
                if (Math.abs(f2) > this.mThreshold) {
                    onBrightnessSlide((-f2) / iC);
                    this.mDownY = f3;
                }
            }
        }
    }

    public void touchSurfaceMoveFullLogic(float f, float f2) {
        int iD = getActivityContext() != null ? f39.d() : 0;
        int i = this.mThreshold;
        if (f > i || f2 > i) {
            cancelProgressTimer();
            if (f >= this.mThreshold) {
                if (Math.abs(CommonUtil.getScreenWidth(getContext()) - this.mDownX) <= this.mSeekEndOffset) {
                    this.mShowVKey = true;
                    return;
                } else {
                    this.mChangePosition = true;
                    this.mDownPosition = getCurrentPositionWhenPlaying();
                    return;
                }
            }
            boolean z = Math.abs(((float) CommonUtil.getScreenHeight(getContext())) - this.mDownY) > ((float) this.mSeekEndOffset);
            if (this.mFirstTouch) {
                this.mBrightness = this.mDownX < ((float) iD) * 0.5f && z;
                this.mFirstTouch = false;
            }
            if (!this.mBrightness) {
                this.mChangeVolume = z;
                this.mGestureDownVolume = this.mAudioManager.getStreamVolume(3);
            }
            this.mShowVKey = !z;
        }
    }

    public void touchSurfaceUp() {
        int i;
        if (this.mChangePosition) {
            int duration = getDuration();
            int i2 = this.mSeekTimePosition * 100;
            if (duration == 0) {
                duration = 1;
            }
            int i3 = i2 / duration;
            ProgressBar progressBar = this.mBottomProgressBar;
            if (progressBar != null) {
                progressBar.setProgress(i3);
            }
        }
        this.mTouchingProgressBar = false;
        dismissProgressDialog();
        dismissVolumeDialog();
        dismissBrightnessDialog();
        if (!this.mChangePosition || getGSYVideoManager() == null || ((i = this.mCurrentState) != 2 && i != 5)) {
            if (this.mBrightness) {
                if (this.mVideoAllCallBack == null || !isCurrentMediaListener()) {
                    return;
                }
                Debuger.printfLog("onTouchScreenSeekLight");
                this.mVideoAllCallBack.onTouchScreenSeekLight(this.mOriginUrl, this.mTitle, this);
                return;
            }
            if (this.mChangeVolume && this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                Debuger.printfLog("onTouchScreenSeekVolume");
                this.mVideoAllCallBack.onTouchScreenSeekVolume(this.mOriginUrl, this.mTitle, this);
                return;
            }
            return;
        }
        if (isLive()) {
            return;
        }
        try {
            seekTo(this.mSeekTimePosition);
        } catch (Exception e) {
            e.printStackTrace();
        }
        int duration2 = getDuration();
        int i4 = (this.mSeekTimePosition * 100) / (duration2 != 0 ? duration2 : 1);
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setProgress(i4);
        }
        if (this.mVideoAllCallBack == null || !isCurrentMediaListener()) {
            return;
        }
        Debuger.printfLog("onTouchScreenSeekPosition");
        this.mVideoAllCallBack.onTouchScreenSeekPosition(this.mOriginUrl, this.mTitle, this);
    }

    public void updateStartImage() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View] */
    private void setCLick(View view, boolean z) {
        ?? ha1Var = this;
        if (view != 0) {
            if (z) {
                ha1Var = new ha1(this);
            }
            view.setOnClickListener(ha1Var);
        }
    }

    public void setTextAndProgress(int i, boolean z) {
        int currentPositionWhenPlaying = getCurrentPositionWhenPlaying();
        int duration = getDuration();
        setProgressAndTime((currentPositionWhenPlaying * 100) / (duration == 0 ? 1 : duration), i, currentPositionWhenPlaying, duration, z);
    }

    @Override
    public boolean setUp(String str, boolean z, File file, String str2) {
        TextView textView;
        PlayHandler.getInstance().mPlayTitle = str2;
        if (!super.setUp(str, z, file, str2)) {
            return false;
        }
        if (str2 != null && (textView = this.mTitleTextView) != null) {
            textView.setText(str2);
        }
        if (this.mIfCurrentIsFullscreen) {
            ImageView imageView = this.mFullscreenButton;
            if (imageView == null) {
                return true;
            }
            imageView.setImageResource(getShrinkImageRes());
            return true;
        }
        ImageView imageView2 = this.mFullscreenButton;
        if (imageView2 == null) {
            return true;
        }
        imageView2.setImageResource(getEnlargeImageRes());
        return true;
    }

    public void showErrorLayer(final int i, final String str) {
        this.mbShowError = true;
        this.mErrorType = i;
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$showErrorLayer$1(i, str);
            }
        });
    }

    public GSYVideoControlView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mThreshold = 80;
        this.mShrinkImageRes = -1;
        this.mEnlargeImageRes = -1;
        this.mDismissControlTime = 3000;
        this.mBrightnessData = -1.0f;
        this.mSeekRatio = 1.0f;
        this.mTouchingProgressBar = false;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = false;
        this.mHideKey = true;
        this.mNeedShowWifiTip = true;
        this.mIsTouchWiget = true;
        this.mIsTouchWigetFull = true;
        this.mSetUpLazy = false;
        this.mHadSeekTouch = false;
        this.mPostProgress = false;
        this.mPostNetSpeed = false;
        this.mPostDismiss = false;
        this.mAdPlaying = false;
        this.mbShowNeedVIP = false;
        this.mbPreviewVideo = false;
        this.mbSwitchResolutionNeedVip = false;
        this.mbShowError = false;
        this.mErrorType = 0;
        this.mPreviewDuration = 0;
        this.mIsPipMode = false;
        this.mLock = new Object();
        this.mbShowSubtitle = true;
        this.mIsGestureSeeking = false;
        this.mErrorlayersMap = new ConcurrentHashMap();
        this.prePlayNetworkSpeedTask = new Runnable() {
            @Override
            public void run() {
                long netSpeed = NetworkUtils.getNetSpeed(GSYVideoControlView.this.mContext);
                if (netSpeed != 0) {
                    h27.c().e(1047, Long.valueOf(netSpeed));
                }
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                if (gSYVideoControlView.mPostNetSpeed) {
                    gSYVideoControlView.postDelayed(this, 500L);
                }
            }
        };
        this.progressTask = new Runnable() {
            @Override
            public void run() {
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                int i = gSYVideoControlView.mCurrentState;
                if (i == 2 || i == 5) {
                    if (!gSYVideoControlView.isLive() || GSYVideoControlView.this.mPlayerType == PlayerType.MGTV_PLAYER) {
                        GSYVideoControlView.this.setTextAndProgress(0);
                    }
                    GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
                    if ((gSYVideoControlView2.mCurrentState == 2 && gSYVideoControlView2.mbPreviewVideo) || gSYVideoControlView2.isLive()) {
                        PlayerStatisticInfo.playRealDuration++;
                    }
                }
                GSYVideoControlView gSYVideoControlView3 = GSYVideoControlView.this;
                if (gSYVideoControlView3.mPostProgress) {
                    gSYVideoControlView3.postDelayed(this, 1000L);
                }
            }
        };
        this.gestureDetector = new GestureDetector(getContext().getApplicationContext(), new GestureDetector.SimpleOnGestureListener() {
            @Override
            public boolean onDoubleTap(MotionEvent motionEvent) {
                GSYVideoControlView.this.touchDoubleUp();
                return super.onDoubleTap(motionEvent);
            }

            @Override
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                if (!gSYVideoControlView.mChangePosition && !gSYVideoControlView.mChangeVolume && !gSYVideoControlView.mBrightness) {
                    gSYVideoControlView.onClickUiToggle();
                }
                return super.onSingleTapConfirmed(motionEvent);
            }
        });
        this.dismissControlTask = new Runnable() {
            @Override
            public void run() {
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                int i = gSYVideoControlView.mCurrentState;
                if (i == 0 || i == 7 || i == 6) {
                    return;
                }
                if (gSYVideoControlView.getActivityContext() != null) {
                    if (GSYVideoControlView.this.isShortVideo()) {
                        GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
                        gSYVideoControlView2.setViewShowState(gSYVideoControlView2.mStartButton, 8);
                        return;
                    }
                    GSYVideoControlView.this.hideAllWidget();
                    GSYVideoControlView gSYVideoControlView3 = GSYVideoControlView.this;
                    gSYVideoControlView3.setViewShowState(gSYVideoControlView3.mLockScreen, 8);
                    GSYVideoControlView gSYVideoControlView4 = GSYVideoControlView.this;
                    gSYVideoControlView4.setViewShowState(gSYVideoControlView4.mBottomProgressBar, 0);
                    GSYVideoControlView gSYVideoControlView5 = GSYVideoControlView.this;
                    if (gSYVideoControlView5.mHideKey && gSYVideoControlView5.mIfCurrentIsFullscreen && gSYVideoControlView5.mShowVKey) {
                        CommonUtil.hideNavKey(gSYVideoControlView5.mContext);
                    }
                }
                VideoAllCallBack videoAllCallBack = GSYVideoControlView.this.mVideoAllCallBack;
                if (videoAllCallBack != null) {
                    videoAllCallBack.onEnterImmerse();
                }
            }
        };
        this.runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$8();
            }
        };
    }

    public GSYVideoControlView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        this.mThreshold = 80;
        this.mShrinkImageRes = -1;
        this.mEnlargeImageRes = -1;
        this.mDismissControlTime = 3000;
        this.mBrightnessData = -1.0f;
        this.mSeekRatio = 1.0f;
        this.mTouchingProgressBar = false;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = false;
        this.mHideKey = true;
        this.mNeedShowWifiTip = true;
        this.mIsTouchWiget = true;
        this.mIsTouchWigetFull = true;
        this.mSetUpLazy = false;
        this.mHadSeekTouch = false;
        this.mPostProgress = false;
        this.mPostNetSpeed = false;
        this.mPostDismiss = false;
        this.mAdPlaying = false;
        this.mbShowNeedVIP = false;
        this.mbPreviewVideo = false;
        this.mbSwitchResolutionNeedVip = false;
        this.mbShowError = false;
        this.mErrorType = 0;
        this.mPreviewDuration = 0;
        this.mIsPipMode = false;
        this.mLock = new Object();
        this.mbShowSubtitle = true;
        this.mIsGestureSeeking = false;
        this.mErrorlayersMap = new ConcurrentHashMap();
        this.prePlayNetworkSpeedTask = new Runnable() {
            @Override
            public void run() {
                long netSpeed = NetworkUtils.getNetSpeed(GSYVideoControlView.this.mContext);
                if (netSpeed != 0) {
                    h27.c().e(1047, Long.valueOf(netSpeed));
                }
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                if (gSYVideoControlView.mPostNetSpeed) {
                    gSYVideoControlView.postDelayed(this, 500L);
                }
            }
        };
        this.progressTask = new Runnable() {
            @Override
            public void run() {
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                int i2 = gSYVideoControlView.mCurrentState;
                if (i2 == 2 || i2 == 5) {
                    if (!gSYVideoControlView.isLive() || GSYVideoControlView.this.mPlayerType == PlayerType.MGTV_PLAYER) {
                        GSYVideoControlView.this.setTextAndProgress(0);
                    }
                    GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
                    if ((gSYVideoControlView2.mCurrentState == 2 && gSYVideoControlView2.mbPreviewVideo) || gSYVideoControlView2.isLive()) {
                        PlayerStatisticInfo.playRealDuration++;
                    }
                }
                GSYVideoControlView gSYVideoControlView3 = GSYVideoControlView.this;
                if (gSYVideoControlView3.mPostProgress) {
                    gSYVideoControlView3.postDelayed(this, 1000L);
                }
            }
        };
        this.gestureDetector = new GestureDetector(getContext().getApplicationContext(), new GestureDetector.SimpleOnGestureListener() {
            @Override
            public boolean onDoubleTap(MotionEvent motionEvent) {
                GSYVideoControlView.this.touchDoubleUp();
                return super.onDoubleTap(motionEvent);
            }

            @Override
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                if (!gSYVideoControlView.mChangePosition && !gSYVideoControlView.mChangeVolume && !gSYVideoControlView.mBrightness) {
                    gSYVideoControlView.onClickUiToggle();
                }
                return super.onSingleTapConfirmed(motionEvent);
            }
        });
        this.dismissControlTask = new Runnable() {
            @Override
            public void run() {
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                int i2 = gSYVideoControlView.mCurrentState;
                if (i2 == 0 || i2 == 7 || i2 == 6) {
                    return;
                }
                if (gSYVideoControlView.getActivityContext() != null) {
                    if (GSYVideoControlView.this.isShortVideo()) {
                        GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
                        gSYVideoControlView2.setViewShowState(gSYVideoControlView2.mStartButton, 8);
                        return;
                    }
                    GSYVideoControlView.this.hideAllWidget();
                    GSYVideoControlView gSYVideoControlView3 = GSYVideoControlView.this;
                    gSYVideoControlView3.setViewShowState(gSYVideoControlView3.mLockScreen, 8);
                    GSYVideoControlView gSYVideoControlView4 = GSYVideoControlView.this;
                    gSYVideoControlView4.setViewShowState(gSYVideoControlView4.mBottomProgressBar, 0);
                    GSYVideoControlView gSYVideoControlView5 = GSYVideoControlView.this;
                    if (gSYVideoControlView5.mHideKey && gSYVideoControlView5.mIfCurrentIsFullscreen && gSYVideoControlView5.mShowVKey) {
                        CommonUtil.hideNavKey(gSYVideoControlView5.mContext);
                    }
                }
                VideoAllCallBack videoAllCallBack = GSYVideoControlView.this.mVideoAllCallBack;
                if (videoAllCallBack != null) {
                    videoAllCallBack.onEnterImmerse();
                }
            }
        };
        this.runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$8();
            }
        };
    }

    public GSYVideoControlView(Context context, Boolean bool) {
        super(context, bool);
        this.mThreshold = 80;
        this.mShrinkImageRes = -1;
        this.mEnlargeImageRes = -1;
        this.mDismissControlTime = 3000;
        this.mBrightnessData = -1.0f;
        this.mSeekRatio = 1.0f;
        this.mTouchingProgressBar = false;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = false;
        this.mHideKey = true;
        this.mNeedShowWifiTip = true;
        this.mIsTouchWiget = true;
        this.mIsTouchWigetFull = true;
        this.mSetUpLazy = false;
        this.mHadSeekTouch = false;
        this.mPostProgress = false;
        this.mPostNetSpeed = false;
        this.mPostDismiss = false;
        this.mAdPlaying = false;
        this.mbShowNeedVIP = false;
        this.mbPreviewVideo = false;
        this.mbSwitchResolutionNeedVip = false;
        this.mbShowError = false;
        this.mErrorType = 0;
        this.mPreviewDuration = 0;
        this.mIsPipMode = false;
        this.mLock = new Object();
        this.mbShowSubtitle = true;
        this.mIsGestureSeeking = false;
        this.mErrorlayersMap = new ConcurrentHashMap();
        this.prePlayNetworkSpeedTask = new Runnable() {
            @Override
            public void run() {
                long netSpeed = NetworkUtils.getNetSpeed(GSYVideoControlView.this.mContext);
                if (netSpeed != 0) {
                    h27.c().e(1047, Long.valueOf(netSpeed));
                }
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                if (gSYVideoControlView.mPostNetSpeed) {
                    gSYVideoControlView.postDelayed(this, 500L);
                }
            }
        };
        this.progressTask = new Runnable() {
            @Override
            public void run() {
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                int i2 = gSYVideoControlView.mCurrentState;
                if (i2 == 2 || i2 == 5) {
                    if (!gSYVideoControlView.isLive() || GSYVideoControlView.this.mPlayerType == PlayerType.MGTV_PLAYER) {
                        GSYVideoControlView.this.setTextAndProgress(0);
                    }
                    GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
                    if ((gSYVideoControlView2.mCurrentState == 2 && gSYVideoControlView2.mbPreviewVideo) || gSYVideoControlView2.isLive()) {
                        PlayerStatisticInfo.playRealDuration++;
                    }
                }
                GSYVideoControlView gSYVideoControlView3 = GSYVideoControlView.this;
                if (gSYVideoControlView3.mPostProgress) {
                    gSYVideoControlView3.postDelayed(this, 1000L);
                }
            }
        };
        this.gestureDetector = new GestureDetector(getContext().getApplicationContext(), new GestureDetector.SimpleOnGestureListener() {
            @Override
            public boolean onDoubleTap(MotionEvent motionEvent) {
                GSYVideoControlView.this.touchDoubleUp();
                return super.onDoubleTap(motionEvent);
            }

            @Override
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                if (!gSYVideoControlView.mChangePosition && !gSYVideoControlView.mChangeVolume && !gSYVideoControlView.mBrightness) {
                    gSYVideoControlView.onClickUiToggle();
                }
                return super.onSingleTapConfirmed(motionEvent);
            }
        });
        this.dismissControlTask = new Runnable() {
            @Override
            public void run() {
                GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                int i2 = gSYVideoControlView.mCurrentState;
                if (i2 == 0 || i2 == 7 || i2 == 6) {
                    return;
                }
                if (gSYVideoControlView.getActivityContext() != null) {
                    if (GSYVideoControlView.this.isShortVideo()) {
                        GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
                        gSYVideoControlView2.setViewShowState(gSYVideoControlView2.mStartButton, 8);
                        return;
                    }
                    GSYVideoControlView.this.hideAllWidget();
                    GSYVideoControlView gSYVideoControlView3 = GSYVideoControlView.this;
                    gSYVideoControlView3.setViewShowState(gSYVideoControlView3.mLockScreen, 8);
                    GSYVideoControlView gSYVideoControlView4 = GSYVideoControlView.this;
                    gSYVideoControlView4.setViewShowState(gSYVideoControlView4.mBottomProgressBar, 0);
                    GSYVideoControlView gSYVideoControlView5 = GSYVideoControlView.this;
                    if (gSYVideoControlView5.mHideKey && gSYVideoControlView5.mIfCurrentIsFullscreen && gSYVideoControlView5.mShowVKey) {
                        CommonUtil.hideNavKey(gSYVideoControlView5.mContext);
                    }
                }
                VideoAllCallBack videoAllCallBack = GSYVideoControlView.this.mVideoAllCallBack;
                if (videoAllCallBack != null) {
                    videoAllCallBack.onEnterImmerse();
                }
            }
        };
        this.runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$8();
            }
        };
    }
}
