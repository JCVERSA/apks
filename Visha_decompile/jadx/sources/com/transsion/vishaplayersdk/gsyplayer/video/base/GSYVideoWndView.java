package com.transsion.vishaplayersdk.gsyplayer.video.base;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.transition.TransitionManager;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.utils.CommonUtil;
import com.transsion.vishaplayersdk.gsyplayer.utils.Debuger;
import com.transsion.vishaplayersdk.gsyplayer.utils.OrientationUtils;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import defpackage.wz5;

@Keep
public abstract class GSYVideoWndView extends GSYVideoControlView {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + GSYVideoWndView.class.getSimpleName();
    protected boolean isNeedAutoAdaptation;
    protected boolean mActionBar;
    protected boolean mAutoFullWithSize;
    protected View.OnClickListener mBackFromFullScreenListener;
    protected Runnable mCheckoutTask;
    protected boolean mFullAnimEnd;
    protected Handler mInnerHandler;
    protected int[] mListItemRect;
    protected int[] mListItemSize;
    protected boolean mLockLand;
    protected OrientationUtils mOrientationUtils;
    protected boolean mRotateViewAuto;
    protected boolean mRotateWithSystem;
    protected boolean mShowFullAnimation;
    protected View mSmallClose;
    protected boolean mStatusBar;
    protected int mSystemUiVisibility;

    public GSYVideoWndView(Context context, Boolean bool) {
        super(context, bool);
        this.mActionBar = false;
        this.mStatusBar = false;
        this.mShowFullAnimation = true;
        this.mRotateViewAuto = true;
        this.mRotateWithSystem = true;
        this.mLockLand = false;
        this.mAutoFullWithSize = false;
        this.isNeedAutoAdaptation = false;
        this.mFullAnimEnd = true;
        this.mInnerHandler = new Handler();
        this.mCheckoutTask = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$4();
            }
        };
    }

    private ViewGroup getViewGroup() {
        return (ViewGroup) CommonUtil.scanForActivity(getContext()).findViewById(R.id.content);
    }

    public void lambda$new$4() {
        int i;
        int i2;
        GSYVideoPlayer fullWindowPlayer = getFullWindowPlayer();
        if (fullWindowPlayer == null || (i = fullWindowPlayer.mCurrentState) == (i2 = this.mCurrentState) || i != 3 || i2 == 1) {
            return;
        }
        fullWindowPlayer.setStateAndUi(i2);
    }

    public void lambda$resolveFullVideoShow$1(boolean z, boolean z2, GSYVideoWndView gSYVideoWndView, FrameLayout frameLayout) {
        OrientationUtils orientationUtils;
        if (!z && z2 && (orientationUtils = this.mOrientationUtils) != null && orientationUtils.getIsLand() != 1) {
            this.mOrientationUtils.resolveByClick();
        }
        gSYVideoWndView.setVisibility(0);
        frameLayout.setVisibility(0);
    }

    public void lambda$setFullBack$7(View view) {
        PlayHandler.getInstance().mIsGravity = false;
        wz5.N("btn_back");
        View.OnClickListener onClickListener = this.mBackFromFullScreenListener;
        if (onClickListener == null) {
            clearFullscreenLayout();
        } else {
            onClickListener.onClick(view);
        }
    }

    public void lambda$setSmallVideoTextureView$0(View view) {
        hideSmallVideo();
        releaseVideos();
    }

    public void lambda$startWindowFullscreen$5(View view) {
        View.OnClickListener onClickListener = this.mBackFromFullScreenListener;
        if (onClickListener == null) {
            clearFullscreenLayout();
        } else {
            onClickListener.onClick(view);
        }
    }

    public void lambda$startWindowFullscreen$6(ViewGroup viewGroup, Context context, GSYVideoWndView gSYVideoWndView, FrameLayout frameLayout) {
        TransitionManager.beginDelayedTransition(viewGroup);
        resolveFullVideoShow(context, gSYVideoWndView, frameLayout);
        this.mFullAnimEnd = true;
    }

    private void pauseFullBackCoverLogic(GSYVideoWndView gSYVideoWndView) {
        if (gSYVideoWndView.mCurrentState == 5 && gSYVideoWndView.mTextureView != null && this.mShowPauseCover) {
            Bitmap bitmap = gSYVideoWndView.mFullPauseBitmap;
            if (bitmap != null && !bitmap.isRecycled() && this.mShowPauseCover) {
                this.mFullPauseBitmap = gSYVideoWndView.mFullPauseBitmap;
                return;
            }
            if (this.mShowPauseCover) {
                try {
                    initCover();
                } catch (Exception e) {
                    e.printStackTrace();
                    this.mFullPauseBitmap = null;
                }
            }
        }
    }

    private void pauseFullCoverLogic() {
        if (this.mCurrentState != 5 || this.mTextureView == null) {
            return;
        }
        Bitmap bitmap = this.mFullPauseBitmap;
        if ((bitmap == null || bitmap.isRecycled()) && this.mShowPauseCover) {
            try {
                initCover();
            } catch (Exception e) {
                e.printStackTrace();
                this.mFullPauseBitmap = null;
            }
        }
    }

    private void removeVideo(ViewGroup viewGroup, int i) {
        View viewFindViewById = viewGroup.findViewById(i);
        if (viewFindViewById == null || viewFindViewById.getParent() == null) {
            return;
        }
        viewGroup.removeView((ViewGroup) viewFindViewById.getParent());
    }

    private void saveLocationStatus(Context context, boolean z, boolean z2) {
        getLocationOnScreen(this.mListItemRect);
        if (context instanceof Activity) {
            int statusBarHeight = CommonUtil.getStatusBarHeight(context);
            Activity activity = (Activity) context;
            int actionBarHeight = CommonUtil.getActionBarHeight(activity);
            boolean z3 = (activity.getWindow().getAttributes().flags & 67108864) == 67108864;
            Debuger.printfLog("*************isTranslucent*************** " + z3);
            if (z && !z3) {
                int[] iArr = this.mListItemRect;
                iArr[1] = iArr[1] - statusBarHeight;
            }
            if (z2) {
                int[] iArr2 = this.mListItemRect;
                iArr2[1] = iArr2[1] - actionBarHeight;
            }
        }
        this.mListItemSize[0] = getWidth();
        this.mListItemSize[1] = getHeight();
    }

    private void setFullBack(View view) {
        if (view != null) {
            view.setVisibility(0);
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.lambda$setFullBack$7(view2);
                }
            });
        }
    }

    public void autoAdaptation() {
        Context context = getContext();
        if (isVerticalVideo()) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                setPadding(0, CommonUtil.getStatusBarHeight(context), 0, 0);
                Debuger.printfLog("竖屏，系统未将布局下移");
            } else {
                Debuger.printfLog("竖屏，系统将布局下移；y:" + iArr[1]);
            }
        }
    }

    public void lambda$clearFullscreenLayout$2() {
        final ViewGroup viewGroup = getViewGroup();
        final View viewFindViewById = viewGroup.findViewById(getFullId());
        if (viewFindViewById == null) {
            lambda$backToNormal$3(null, viewGroup, null);
            return;
        }
        final GSYVideoPlayer gSYVideoPlayer = (GSYVideoPlayer) viewFindViewById;
        pauseFullBackCoverLogic(gSYVideoPlayer);
        if (!this.mShowFullAnimation) {
            lambda$backToNormal$3(viewFindViewById, viewGroup, gSYVideoPlayer);
            return;
        }
        TransitionManager.beginDelayedTransition(viewGroup);
        int[] iArr = this.mListItemRect;
        if (iArr != null && iArr.length > 0) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) gSYVideoPlayer.getLayoutParams();
            int[] iArr2 = this.mListItemRect;
            layoutParams.setMargins(iArr2[0], iArr2[1], 0, 0);
            int[] iArr3 = this.mListItemSize;
            layoutParams.width = iArr3[0];
            layoutParams.height = iArr3[1];
            layoutParams.gravity = 0;
            gSYVideoPlayer.setLayoutParams(layoutParams);
        }
        this.mInnerHandler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$backToNormal$3(viewFindViewById, viewGroup, gSYVideoPlayer);
            }
        }, 400L);
    }

    public void checkAutoFullSizeWhenFull() {
        OrientationUtils orientationUtils;
        if (this.mIfCurrentIsFullscreen) {
            boolean zIsVerticalFullByVideoSize = isVerticalFullByVideoSize();
            Debuger.printfLog("GSYVideoBase onPrepared isVerticalFullByVideoSize " + zIsVerticalFullByVideoSize);
            if (!zIsVerticalFullByVideoSize || (orientationUtils = this.mOrientationUtils) == null) {
                return;
            }
            orientationUtils.backToProtVideo();
            checkAutoFullWithSizeAndAdaptation(this);
        }
    }

    public void checkAutoFullWithSizeAndAdaptation(final GSYVideoWndView gSYVideoWndView) {
        if (gSYVideoWndView != null && this.isNeedAutoAdaptation && isAutoFullWithSize() && isVerticalVideo() && isFullHideStatusBar()) {
            this.mInnerHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    gSYVideoWndView.getCurrentPlayer().autoAdaptation();
                }
            }, 100L);
        }
    }

    public void checkoutState() {
        removeCallbacks(this.mCheckoutTask);
        this.mInnerHandler.postDelayed(this.mCheckoutTask, 500L);
    }

    public void clearFullscreenLayout() {
        int iBackToProtVideo;
        if (this.mFullAnimEnd) {
            this.mIfCurrentIsFullscreen = false;
            OrientationUtils orientationUtils = this.mOrientationUtils;
            if (orientationUtils != null) {
                iBackToProtVideo = orientationUtils.backToProtVideo();
                this.mOrientationUtils.setEnable(false);
                OrientationUtils orientationUtils2 = this.mOrientationUtils;
                if (orientationUtils2 != null) {
                    orientationUtils2.releaseListener();
                    this.mOrientationUtils = null;
                }
            } else {
                iBackToProtVideo = 0;
            }
            if (!this.mShowFullAnimation) {
                iBackToProtVideo = 0;
            }
            View viewFindViewById = getViewGroup().findViewById(getFullId());
            if (viewFindViewById != null) {
                ((GSYVideoPlayer) viewFindViewById).mIfCurrentIsFullscreen = false;
            }
            getGSYVideoManager().setFullScreen(false);
            this.mInnerHandler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$clearFullscreenLayout$2();
                }
            }, iBackToProtVideo);
        }
    }

    public void cloneParams(GSYVideoWndView gSYVideoWndView, GSYVideoWndView gSYVideoWndView2) {
        gSYVideoWndView2.mHadPlay = gSYVideoWndView.mHadPlay;
        gSYVideoWndView2.mPlayTag = gSYVideoWndView.mPlayTag;
        gSYVideoWndView2.mPlayPosition = gSYVideoWndView.mPlayPosition;
        gSYVideoWndView2.mEffectFilter = gSYVideoWndView.mEffectFilter;
        gSYVideoWndView2.mFullPauseBitmap = gSYVideoWndView.mFullPauseBitmap;
        gSYVideoWndView2.mNeedShowWifiTip = gSYVideoWndView.mNeedShowWifiTip;
        gSYVideoWndView2.mShrinkImageRes = gSYVideoWndView.mShrinkImageRes;
        gSYVideoWndView2.mEnlargeImageRes = gSYVideoWndView.mEnlargeImageRes;
        gSYVideoWndView2.mRotate = gSYVideoWndView.mRotate;
        gSYVideoWndView2.mShowPauseCover = gSYVideoWndView.mShowPauseCover;
        gSYVideoWndView2.mDismissControlTime = gSYVideoWndView.mDismissControlTime;
        gSYVideoWndView2.mSeekRatio = gSYVideoWndView.mSeekRatio;
        gSYVideoWndView2.mNetChanged = gSYVideoWndView.mNetChanged;
        gSYVideoWndView2.mNetSate = gSYVideoWndView.mNetSate;
        gSYVideoWndView2.mRotateWithSystem = gSYVideoWndView.mRotateWithSystem;
        gSYVideoWndView2.mRotateViewAuto = gSYVideoWndView.mRotateViewAuto;
        gSYVideoWndView2.mBackUpPlayingBufferState = gSYVideoWndView.mBackUpPlayingBufferState;
        gSYVideoWndView2.mRenderer = gSYVideoWndView.mRenderer;
        gSYVideoWndView2.mMode = gSYVideoWndView.mMode;
        gSYVideoWndView2.mBackFromFullScreenListener = gSYVideoWndView.mBackFromFullScreenListener;
        gSYVideoWndView2.mGSYVideoProgressListener = gSYVideoWndView.mGSYVideoProgressListener;
        gSYVideoWndView2.mHadPrepared = gSYVideoWndView.mHadPrepared;
        gSYVideoWndView2.mStartAfterPrepared = gSYVideoWndView.mStartAfterPrepared;
        gSYVideoWndView2.mPauseBeforePrepared = gSYVideoWndView.mPauseBeforePrepared;
        gSYVideoWndView2.mReleaseWhenLossAudio = gSYVideoWndView.mReleaseWhenLossAudio;
        gSYVideoWndView2.mVideoAllCallBack = gSYVideoWndView.mVideoAllCallBack;
        gSYVideoWndView2.mActionBar = gSYVideoWndView.mActionBar;
        gSYVideoWndView2.mStatusBar = gSYVideoWndView.mStatusBar;
        gSYVideoWndView2.mAutoFullWithSize = gSYVideoWndView.mAutoFullWithSize;
        gSYVideoWndView2.mAdPlaying = gSYVideoWndView.mAdPlaying;
        gSYVideoWndView2.mNeedLockFull = gSYVideoWndView.mNeedLockFull;
        gSYVideoWndView2.mPlayerInitConfig = gSYVideoWndView.mPlayerInitConfig;
        gSYVideoWndView2.mbShowNeedVIP = gSYVideoWndView.mbShowNeedVIP;
        gSYVideoWndView2.mbPreviewVideo = gSYVideoWndView.mbPreviewVideo;
        gSYVideoWndView2.mPreviewDuration = gSYVideoWndView.mPreviewDuration;
        gSYVideoWndView2.mPlayerType = gSYVideoWndView.mPlayerType;
        gSYVideoWndView2.mPlayerActivity = gSYVideoWndView.mPlayerActivity;
        gSYVideoWndView2.mTextureView = gSYVideoWndView.mTextureView;
        gSYVideoWndView2.mbBuffering = gSYVideoWndView.mbBuffering;
        gSYVideoWndView2.mPlayType = gSYVideoWndView.mPlayType;
        gSYVideoWndView2.mVideoID = gSYVideoWndView.mVideoID;
        gSYVideoWndView2.mSerialID = gSYVideoWndView.mSerialID;
        gSYVideoWndView2.mbSwitchResolutionNeedVip = gSYVideoWndView.mbSwitchResolutionNeedVip;
        this.mSpeed = gSYVideoWndView.mSpeed;
        this.mSoundTouch = gSYVideoWndView.mSoundTouch;
        gSYVideoWndView2.mbShowError = gSYVideoWndView.mbShowError;
        gSYVideoWndView2.mErrorType = gSYVideoWndView.mErrorType;
        gSYVideoWndView2.mVideoSourceType = gSYVideoWndView.mVideoSourceType;
        gSYVideoWndView2.mYoutubePlayData = gSYVideoWndView.mYoutubePlayData;
        if (gSYVideoWndView.mSetUpLazy) {
            gSYVideoWndView2.setUpLazy(gSYVideoWndView.mOriginUrl, gSYVideoWndView.mCache, gSYVideoWndView.mCachePath, gSYVideoWndView.mMapHeadData, gSYVideoWndView.mTitle);
            gSYVideoWndView2.mUrl = gSYVideoWndView.mUrl;
        } else {
            gSYVideoWndView2.setUp(gSYVideoWndView.mOriginUrl, gSYVideoWndView.mCache, gSYVideoWndView.mCachePath, gSYVideoWndView.mTitle, false);
        }
        gSYVideoWndView2.setLooping(gSYVideoWndView.isLooping());
        gSYVideoWndView2.setIsTouchWigetFull(gSYVideoWndView.mIsTouchWigetFull);
        gSYVideoWndView2.setStateAndUi(gSYVideoWndView.mCurrentState);
    }

    public GSYVideoWndView getCurrentPlayer() {
        if (getFullWindowPlayer() != null) {
            return getFullWindowPlayer();
        }
        return getSmallWindowPlayer() != null ? getSmallWindowPlayer() : this;
    }

    public abstract int getFullId();

    public GSYVideoPlayer getFullWindowPlayer() {
        View viewFindViewById = ((ViewGroup) CommonUtil.scanForActivity(getContext()).findViewById(R.id.content)).findViewById(getFullId());
        if (viewFindViewById != null) {
            return (GSYVideoPlayer) viewFindViewById;
        }
        return null;
    }

    public int getSaveBeforeFullSystemUiVisibility() {
        return this.mSystemUiVisibility;
    }

    public abstract int getSmallId();

    public GSYVideoPlayer getSmallWindowPlayer() {
        View viewFindViewById = ((ViewGroup) CommonUtil.scanForActivity(getContext()).findViewById(R.id.content)).findViewById(getSmallId());
        if (viewFindViewById != null) {
            return (GSYVideoPlayer) viewFindViewById;
        }
        return null;
    }

    public void hideSmallVideo() {
        ViewGroup viewGroup = getViewGroup();
        GSYVideoPlayer gSYVideoPlayer = (GSYVideoPlayer) viewGroup.findViewById(getSmallId());
        removeVideo(viewGroup, getSmallId());
        this.mCurrentState = getGSYVideoManager().getLastState();
        if (gSYVideoPlayer != null) {
            cloneParams(gSYVideoPlayer, this);
        }
        getGSYVideoManager().setListener(getGSYVideoManager().lastListener());
        getGSYVideoManager().setLastListener(null);
        setStateAndUi(this.mCurrentState);
        addTextureView();
        this.mSaveChangeViewTIme = System.currentTimeMillis();
        if (this.mVideoAllCallBack != null) {
            Debuger.printfLog("onQuitSmallWidget");
            this.mVideoAllCallBack.onQuitSmallWidget(this.mOriginUrl, this.mTitle, this);
        }
    }

    @Override
    public void init(Context context) {
        super.init(context);
        this.mSmallClose = findViewById(com.transsion.vishaplayersdk.R.id.small_close);
    }

    public boolean isAdPlaying() {
        return this.mAdPlaying;
    }

    public boolean isAutoFullWithSize() {
        return this.mAutoFullWithSize;
    }

    public boolean isFullHideStatusBar() {
        return this.mStatusBar;
    }

    public boolean isLockLandByAutoFullSize() {
        boolean z = this.mLockLand;
        if (isAutoFullWithSize()) {
            return true;
        }
        return z;
    }

    public boolean isRotateViewAuto() {
        if (this.mAutoFullWithSize) {
            return false;
        }
        return this.mRotateViewAuto;
    }

    public boolean isShowFullAnimation() {
        return this.mShowFullAnimation;
    }

    public boolean isVerticalFullByVideoSize() {
        return isVerticalVideo() && isAutoFullWithSize();
    }

    public boolean isVerticalVideo() {
        int currentVideoHeight = getCurrentVideoHeight();
        int currentVideoWidth = getCurrentVideoWidth();
        if (currentVideoHeight <= 0 || currentVideoWidth <= 0) {
            return false;
        }
        int i = this.mRotate;
        if (i == 90 || i == 270) {
            if (currentVideoWidth <= currentVideoHeight) {
                return false;
            }
        } else if (currentVideoHeight <= currentVideoWidth) {
            return false;
        }
        return true;
    }

    @Override
    public void lockTouchLogic() {
        super.lockTouchLogic();
        if (this.mLockCurScreen) {
            OrientationUtils orientationUtils = this.mOrientationUtils;
            if (orientationUtils != null) {
                orientationUtils.setEnable(false);
                return;
            }
            return;
        }
        OrientationUtils orientationUtils2 = this.mOrientationUtils;
        if (orientationUtils2 != null) {
            orientationUtils2.setEnable(isRotateViewAuto());
        }
    }

    @Override
    public void onBackFullscreen() {
        clearFullscreenLayout();
    }

    public void onConfigurationChanged(Activity activity, Configuration configuration, OrientationUtils orientationUtils, boolean z, boolean z2) {
        LogUtils.j(TAG, "onConfigurationChanged:hideActionBar:" + z + " hideStatusBar:" + z2);
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            if (isIfCurrentIsFullscreen()) {
                return;
            }
            startWindowFullscreen(activity, z, z2);
            return;
        }
        if (isIfCurrentIsFullscreen() && !isVerticalFullByVideoSize()) {
            backFromFull(activity);
        }
        if (orientationUtils == null || orientationUtils.isEnable()) {
            return;
        }
        orientationUtils.setEnable(true);
    }

    @Override
    public void onInfo(int i, int i2) {
        super.onInfo(i, i2);
        if (i == getGSYVideoManager().getRotateInfoFlag()) {
            checkAutoFullSizeWhenFull();
        }
    }

    @Override
    public void onPrepared() {
        super.onPrepared();
        checkAutoFullSizeWhenFull();
    }

    public void resolveFullVideoShow(Context context, final GSYVideoWndView gSYVideoWndView, final FrameLayout frameLayout) {
        OrientationUtils orientationUtils;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) gSYVideoWndView.getLayoutParams();
        layoutParams.setMargins(0, 0, 0, 0);
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.gravity = 17;
        gSYVideoWndView.setLayoutParams(layoutParams);
        gSYVideoWndView.setIfCurrentIsFullscreen(true);
        OrientationUtils orientationUtils2 = new OrientationUtils((Activity) context, gSYVideoWndView);
        this.mOrientationUtils = orientationUtils2;
        orientationUtils2.setEnable(isRotateViewAuto());
        this.mOrientationUtils.setRotateWithSystem(this.mRotateWithSystem);
        gSYVideoWndView.mOrientationUtils = this.mOrientationUtils;
        final boolean zIsVerticalFullByVideoSize = isVerticalFullByVideoSize();
        final boolean zIsLockLandByAutoFullSize = isLockLandByAutoFullSize();
        if (isShowFullAnimation()) {
            this.mInnerHandler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$resolveFullVideoShow$1(zIsVerticalFullByVideoSize, zIsLockLandByAutoFullSize, gSYVideoWndView, frameLayout);
                }
            }, 300L);
            return;
        }
        if (!zIsVerticalFullByVideoSize && zIsLockLandByAutoFullSize && (orientationUtils = this.mOrientationUtils) != null) {
            orientationUtils.resolveByClick();
        }
        gSYVideoWndView.setVisibility(0);
        frameLayout.setVisibility(0);
    }

    public void lambda$backToNormal$3(View view, ViewGroup viewGroup, GSYVideoPlayer gSYVideoPlayer) {
        if (view != null && view.getParent() != null) {
            viewGroup.removeView((ViewGroup) view.getParent());
        }
        this.mCurrentState = getGSYVideoManager().getLastState();
        if (gSYVideoPlayer != null) {
            LogUtils.j(TAG, "fullplayer:" + gSYVideoPlayer, "normalplayer:" + this);
            cloneParams(gSYVideoPlayer, this);
        }
        getGSYVideoManager().setListener(getGSYVideoManager().lastListener());
        getGSYVideoManager().setLastListener(null);
        setStateAndUi(this.mCurrentState);
        ImageView imageView = this.mMuteButton;
        if (imageView != null) {
            imageView.setSelected(GSYVideoManager.instance().isNeedMute());
        }
        addTextureView();
        this.mSaveChangeViewTIme = System.currentTimeMillis();
        if (this.mVideoAllCallBack != null) {
            Debuger.printfError("onQuitFullscreen");
            this.mVideoAllCallBack.onQuitFullscreen(this.mOriginUrl, this.mTitle, this);
        }
        this.mIfCurrentIsFullscreen = false;
        if (this.mHideKey) {
            CommonUtil.showNavKey(this.mContext, this.mSystemUiVisibility);
        }
        CommonUtil.showSupportActionBar(this.mContext, this.mActionBar, this.mStatusBar);
        if (getFullscreenButton() != null) {
            getFullscreenButton().setImageResource(getEnlargeImageRes());
        }
    }

    public void setAutoFullWithSize(boolean z) {
        this.mAutoFullWithSize = z;
    }

    public void setBackFromFullScreenListener(View.OnClickListener onClickListener) {
        this.mBackFromFullScreenListener = onClickListener;
    }

    public void setFullHideActionBar(boolean z) {
        this.mActionBar = z;
    }

    public void setFullHideStatusBar(boolean z) {
        this.mStatusBar = z;
    }

    public void setLockLand(boolean z) {
        this.mLockLand = z;
    }

    public void setRotateViewAuto(boolean z) {
        this.mRotateViewAuto = z;
        OrientationUtils orientationUtils = this.mOrientationUtils;
        if (orientationUtils != null) {
            orientationUtils.setEnable(z);
        }
    }

    public void setRotateWithSystem(boolean z) {
        this.mRotateWithSystem = z;
    }

    public void setSaveBeforeFullSystemUiVisibility(int i) {
        this.mSystemUiVisibility = i;
    }

    public void setShowFullAnimation(boolean z) {
        this.mShowFullAnimation = z;
    }

    @Override
    public void setSmallVideoTextureView() {
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setOnTouchListener(null);
            this.mProgressBar.setVisibility(4);
        }
        ImageView imageView = this.mFullscreenButton;
        if (imageView != null) {
            imageView.setOnTouchListener(null);
            this.mFullscreenButton.setVisibility(4);
        }
        TextView textView = this.mCurrentTimeTextView;
        if (textView != null) {
            textView.setVisibility(4);
        }
        ViewGroup viewGroup = this.mTextureViewContainer;
        if (viewGroup != null) {
            viewGroup.setOnClickListener(null);
        }
        View view = this.mSmallClose;
        if (view != null) {
            view.setVisibility(0);
            this.mSmallClose.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.lambda$setSmallVideoTextureView$0(view2);
                }
            });
        }
    }

    public void showTextToast(CharSequence charSequence) {
    }

    public GSYVideoWndView startWindowFullscreen(final Context context, boolean z, boolean z2) {
        GSYVideoWndView gSYVideoWndView;
        this.mSystemUiVisibility = ((Activity) context).getWindow().getDecorView().getSystemUiVisibility();
        CommonUtil.hideSupportActionBar(context, z, z2);
        if (this.mHideKey) {
            CommonUtil.hideNavKey(context);
        }
        this.mActionBar = z;
        this.mStatusBar = z2;
        this.mListItemRect = new int[2];
        this.mListItemSize = new int[2];
        final ViewGroup viewGroup = getViewGroup();
        removeVideo(viewGroup, getFullId());
        pauseFullCoverLogic();
        try {
            if (this.mTextureViewContainer.getChildCount() > 0) {
                this.mTextureViewContainer.removeAllViews();
            }
        } catch (Exception e) {
            e.printStackTrace();
            LogUtils.m(TAG, "exception" + e.getMessage());
        }
        saveLocationStatus(context, z2, z);
        cancelProgressTimer();
        try {
            try {
                getClass().getConstructor(Context.class, Boolean.class);
                gSYVideoWndView = (GSYVideoWndView) getClass().getConstructor(Context.class, Boolean.class).newInstance(this.mContext, Boolean.TRUE);
            } catch (Exception unused) {
                gSYVideoWndView = (GSYVideoWndView) getClass().getConstructor(Context.class).newInstance(this.mContext);
            }
            gSYVideoWndView.setId(getFullId());
            gSYVideoWndView.setIfCurrentIsFullscreen(true);
            gSYVideoWndView.setVideoAllCallBack(this.mVideoAllCallBack);
            LogUtils.j(TAG, "full player:" + gSYVideoWndView, "normal player:" + this);
            cloneParams(this, gSYVideoWndView);
            if (gSYVideoWndView.getFullscreenButton() != null) {
                gSYVideoWndView.getFullscreenButton().setImageResource(getShrinkImageRes());
                gSYVideoWndView.getFullscreenButton().setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.lambda$startWindowFullscreen$5(view);
                    }
                });
            }
            if (gSYVideoWndView.getBackButton() != null) {
                gSYVideoWndView.getBackButton().setVisibility(0);
                setFullBack(gSYVideoWndView.getBackButton());
            }
            if (gSYVideoWndView.getAdBackButton() != null) {
                setFullBack(gSYVideoWndView.getAdBackButton());
                gSYVideoWndView.getAdBackButton().setVisibility((this.mAdPlaying || this.mCurrentState == 7) ? 0 : 8);
            }
            setFullBack(gSYVideoWndView.getLoadingBackTv());
            setFullBack(gSYVideoWndView.getVipBackTv());
            ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            final FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setBackgroundColor(-16777216);
            if (this.mShowFullAnimation) {
                this.mFullAnimEnd = false;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(getWidth(), getHeight());
                int[] iArr = this.mListItemRect;
                layoutParams2.setMargins(iArr[0], iArr[1], 0, 0);
                frameLayout.addView(gSYVideoWndView, layoutParams2);
                viewGroup.addView(frameLayout, layoutParams);
                final GSYVideoWndView gSYVideoWndView2 = gSYVideoWndView;
                this.mInnerHandler.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$startWindowFullscreen$6(viewGroup, context, gSYVideoWndView2, frameLayout);
                    }
                }, 300L);
            } else {
                frameLayout.addView(gSYVideoWndView, new FrameLayout.LayoutParams(getWidth(), getHeight()));
                viewGroup.addView(frameLayout, layoutParams);
                gSYVideoWndView.setVisibility(4);
                frameLayout.setVisibility(4);
                resolveFullVideoShow(context, gSYVideoWndView, frameLayout);
            }
            this.mIfCurrentIsFullscreen = true;
            checkoutState();
            checkAutoFullWithSizeAndAdaptation(gSYVideoWndView);
            gSYVideoWndView.addTextureView();
            gSYVideoWndView.startProgressTimer();
            getGSYVideoManager().setLastListener(this);
            getGSYVideoManager().setListener(gSYVideoWndView);
            getGSYVideoManager().setFullScreen(true);
            if (this.mAdPlaying) {
                gSYVideoWndView.hideAllWidget();
            }
            if (this.mVideoAllCallBack != null) {
                Debuger.printfError("onEnterFullscreen");
                this.mVideoAllCallBack.onEnterFullscreen(this.mOriginUrl, this.mTitle, gSYVideoWndView);
            }
            return gSYVideoWndView;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public GSYVideoWndView(Context context) {
        super(context);
        this.mActionBar = false;
        this.mStatusBar = false;
        this.mShowFullAnimation = true;
        this.mRotateViewAuto = true;
        this.mRotateWithSystem = true;
        this.mLockLand = false;
        this.mAutoFullWithSize = false;
        this.isNeedAutoAdaptation = false;
        this.mFullAnimEnd = true;
        this.mInnerHandler = new Handler();
        this.mCheckoutTask = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$4();
            }
        };
    }

    public GSYVideoWndView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mActionBar = false;
        this.mStatusBar = false;
        this.mShowFullAnimation = true;
        this.mRotateViewAuto = true;
        this.mRotateWithSystem = true;
        this.mLockLand = false;
        this.mAutoFullWithSize = false;
        this.isNeedAutoAdaptation = false;
        this.mFullAnimEnd = true;
        this.mInnerHandler = new Handler();
        this.mCheckoutTask = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$4();
            }
        };
    }

    public GSYVideoWndView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mActionBar = false;
        this.mStatusBar = false;
        this.mShowFullAnimation = true;
        this.mRotateViewAuto = true;
        this.mRotateWithSystem = true;
        this.mLockLand = false;
        this.mAutoFullWithSize = false;
        this.isNeedAutoAdaptation = false;
        this.mFullAnimEnd = true;
        this.mInnerHandler = new Handler();
        this.mCheckoutTask = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$4();
            }
        };
    }
}
