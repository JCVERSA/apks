package com.transsion.vishaplayersdk.gsyplayer.video;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.common.R;
import com.transsion.vishaplayersdk.base.config.PlayType;
import com.transsion.vishaplayersdk.base.config.PlayerType;
import com.transsion.vishaplayersdk.gsyplayer.enviews.ENDownloadView;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoShotSaveListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.VideoAllCallBack;
import com.transsion.vishaplayersdk.gsyplayer.utils.Debuger;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoControlView;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoPlayer;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoStateView;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView;
import defpackage.gu5;
import defpackage.wz5;
import java.io.File;

public class StandardGSYVideoPlayer extends GSYVideoPlayer {
    private static final String TAG = "visha_playersdk_StandardGSYVideoPlayer";
    String duration;
    protected Drawable mBottomProgressDrawable;
    protected Drawable mBottomShowProgressDrawable;
    protected Drawable mBottomShowProgressThumbDrawable;
    protected Drawable mDialogProgressBarDrawable;
    protected int mDialogProgressHighLightColor;
    protected int mDialogProgressNormalColor;
    private Runnable mDismissDialogTask;
    private boolean mIsVolumeProgress;
    protected Drawable mVolumeProgressDrawable;

    public StandardGSYVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
        this.mDialogProgressHighLightColor = -11;
        this.mDialogProgressNormalColor = -11;
        this.mIsVolumeProgress = false;
        this.mDismissDialogTask = new Runnable() {
            @Override
            public void run() {
                if (StandardGSYVideoPlayer.this.mIsVolumeProgress) {
                    StandardGSYVideoPlayer.this.dismissVolumeDialog();
                } else {
                    StandardGSYVideoPlayer.this.dismissBrightnessDialog();
                }
            }
        };
    }

    private void changeUIToLivePlayingStatus() {
        if (this.mPlayType != PlayType.PLAY_TYPE_LIVE) {
            setViewShowState(this.mLiveMuteButton, 8);
            return;
        }
        setViewShowState(this.mCurrentTimeTextView, 8);
        setViewShowState(this.mTotalTimeTextView, 8);
        setViewShowState(this.mProgressBar, 8);
        setViewShowState(this.mMuteButton, 8);
        setViewShowState(this.mFullscreenButton, 8);
        if (!this.mIfCurrentIsFullscreen) {
            setViewShowState(this.mTopContainer, 8);
            setViewShowState(this.mStartButton, 8);
            if (this.mPlayerType == PlayerType.MGTV_PLAYER || PlayHandler.getInstance().mIsYoutube || PlayHandler.getInstance().mIsVk) {
                this.mLlLiveLogo.setVisibility(8);
            } else {
                this.mLlLiveLogo.setVisibility(0);
            }
            this.mTvLiveTitle.setText(this.mTitle);
            return;
        }
        if (this.mLottieLiveLogo != null) {
            getContext().getTheme().resolveAttribute(R.attr.os_platform_basic_color, new TypedValue(), true);
            gu5.i(this.mLottieLiveLogo, this.mContext.getResources().getColor(com.transsion.vishaplayersdk.R.color.white, this.mContext.getTheme()));
        }
        setViewShowState(this.mMoreButton, 0);
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        setViewShowState(this.mSpeedTextView, 8);
        setViewShowState(this.mLottieLiveLogo, 0);
        setViewShowState(this.mTvLive24hours, 0);
        setViewShowState(this.mPlayListButton, 8);
        setViewShowState(this.mNextButton, 8);
        setViewShowState(this.mLiveMuteButton, 8);
    }

    private void changeUiToLiveCompleteShow() {
        Debuger.printfLog("changeUiToLiveCompleteShow");
        if (!isLive() || PlayHandler.getInstance().mIsTaskAutoPlay) {
            return;
        }
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onOutImmerse();
        }
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 8);
        setMusk(false);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        setViewShowState(this.mAdBackImageView, 0);
        showErrorLayer(1068);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).reset();
        }
        updateStartImage();
        hideLoadingView();
    }

    public void dismissVolumeBrightnessDialogDelayed() {
        removeCallbacks(this.mDismissDialogTask);
        postDelayed(this.mDismissDialogTask, 2000L);
    }

    private void initFullUI(StandardGSYVideoPlayer standardGSYVideoPlayer) {
        int i;
        Drawable drawable;
        Drawable drawable2 = this.mBottomProgressDrawable;
        if (drawable2 != null) {
            standardGSYVideoPlayer.setBottomProgressBarDrawable(drawable2);
        }
        Drawable drawable3 = this.mBottomShowProgressDrawable;
        if (drawable3 != null && (drawable = this.mBottomShowProgressThumbDrawable) != null) {
            standardGSYVideoPlayer.setBottomShowProgressBarDrawable(drawable3, drawable);
        }
        Drawable drawable4 = this.mVolumeProgressDrawable;
        if (drawable4 != null) {
            standardGSYVideoPlayer.setDialogVolumeProgressBar(drawable4);
        }
        Drawable drawable5 = this.mDialogProgressBarDrawable;
        if (drawable5 != null) {
            standardGSYVideoPlayer.setDialogProgressBar(drawable5);
        }
        int i2 = this.mDialogProgressHighLightColor;
        if (i2 < 0 || (i = this.mDialogProgressNormalColor) < 0) {
            return;
        }
        standardGSYVideoPlayer.setDialogProgressColor(i2, i);
    }

    private void setMusk(final boolean z) {
        View view;
        if ((isLive() && !isLiveFullscreen()) || isVkVideo() || isShortVideo() || (view = this.mMusk) == null) {
            return;
        }
        if (z) {
            view.setAlpha(0.0f);
            this.mMusk.setVisibility(0);
        } else if (view.getVisibility() == 8) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mMusk, "alpha", z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
        objectAnimatorOfFloat.setDuration(250L);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animator, boolean z2) {
                super.onAnimationEnd(animator, z2);
                if (z) {
                    return;
                }
                ((GSYVideoControlView) StandardGSYVideoPlayer.this).mMusk.setVisibility(8);
            }

            @Override
            public void onAnimationStart(Animator animator, boolean z2) {
                super.onAnimationStart(animator, z2);
            }
        });
        objectAnimatorOfFloat.start();
    }

    private void updatePreviewStatus() {
        if (this.mPlayType == PlayType.PLAY_TYPE_LIVE || PlayHandler.getInstance().mIsTaskAutoPlay) {
            return;
        }
        if (this.mOpenVipTipTv != null && this.mbPreviewVideo) {
            initPre();
        }
        setViewShowState(this.mOpenVipTipContainer, this.mbPreviewVideo ? 0 : 4);
        this.mLoginOpenVipTv.setText(PlayHandler.getInstance().mIsLogin ? com.transsion.vishaplayersdk.R.string.vip_open_vip : com.transsion.vishaplayersdk.R.string.vip_login_open_vip);
        setViewShowState(this.mLoginOpenVipContainer, this.mbShowNeedVIP ? 0 : 4);
    }

    public void autoPlay() {
        startButtonLogic();
    }

    public void changeUiToClear() {
        Debuger.printfLog("changeUiToClear");
        if (isShortVideo()) {
            Debuger.printfLog("changeUiToClear, play short video");
            return;
        }
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onEnterImmerse();
        }
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 8);
        setMusk(false);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).reset();
        }
    }

    public void changeUiToCompleteClear() {
        Debuger.printfLog("changeUiToCompleteClear");
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onEnterImmerse();
        }
        setViewShowState(this.mTopContainer, 4);
        int i = 8;
        setViewShowState(this.mBottomContainer, 8);
        setMusk(false);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        setViewShowState(this.mBottomProgressBar, 0);
        ImageView imageView = this.mLockScreen;
        if (this.mIfCurrentIsFullscreen && this.mNeedLockFull) {
            i = 0;
        }
        setViewShowState(imageView, i);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).reset();
        }
        updateStartImage();
    }

    @Override
    public void changeUiToCompleteShow() {
        Debuger.printfLog("changeUiToCompleteShow");
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onOutImmerse();
        }
        int i = PlayHandler.getInstance().mIsTaskAutoPlay ? 4 : 0;
        setViewShowState(this.mTopContainer, i);
        setViewShowState(this.mBottomContainer, i);
        setMusk(true);
        setViewShowState(this.mStartButton, i);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, i);
        setViewShowState(this.mBottomProgressBar, 4);
        ImageView imageView = this.mLockScreen;
        if (!this.mIfCurrentIsFullscreen || !this.mNeedLockFull) {
            i = 8;
        }
        setViewShowState(imageView, i);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).reset();
        }
        updateStartImage();
        hideLoadingView();
        changeUiToLiveCompleteShow();
    }

    @Override
    public void changeUiToError() {
        Debuger.printfLog("changeUiToError");
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onOutImmerse();
        }
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 8);
        setMusk(false);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        setViewShowState(this.mAdBackImageView, 0);
        showErrorLayer(1000, this.mPlayerErrMsg);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).reset();
        }
        updateStartImage();
        hideLoadingView();
        if (isLiveFullscreen()) {
            hideAllWidget();
            setViewShowState(this.mLockScreen, 8);
            cancelDismissControlViewTimer();
            setViewShowState(this.mTopContainer, 0);
            setViewShowState(this.mMoreButton, 4);
            setViewShowState(this.mBottomContainer, 8);
        }
    }

    @Override
    public void changeUiToNormal() {
        Debuger.printfLog("changeUiToNormal");
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onOutImmerse();
        }
        setViewShowState(this.mTopContainer, 0);
        int i = 8;
        setViewShowState(this.mBottomContainer, 8);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        setViewShowState(this.mBottomProgressBar, 4);
        ImageView imageView = this.mLockScreen;
        if (this.mIfCurrentIsFullscreen && this.mNeedLockFull) {
            i = 0;
        }
        setViewShowState(imageView, i);
        setViewShowState(this.mOpenVipTipContainer, 4);
        setViewShowState(this.mLoginOpenVipContainer, this.mbShowNeedVIP ? 0 : 4);
        updateStartImage();
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).reset();
        }
        if (!isLive() || this.mPlayerType == PlayerType.MGTV_PLAYER) {
            hideLoadingView();
        } else {
            showLoadingView(false);
        }
        ImageView imageView2 = this.mMuteButton;
        if (imageView2 != null) {
            imageView2.setSelected(false);
        }
    }

    public void changeUiToPauseClear() {
        Debuger.printfLog("changeUiToPauseClear");
        changeUiToClear();
        setViewShowState(this.mBottomProgressBar, 0);
        updatePauseCover();
    }

    @Override
    public void changeUiToPauseShow() {
        Debuger.printfLog("changeUiToPauseShow");
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onOutImmerse();
        }
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setMusk(true);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        setViewShowState(this.mLoginOpenVipContainer, this.mbShowNeedVIP ? 0 : 4);
        if (this.mbSwitchResolutionNeedVip) {
            cancelDismissControlViewTimer();
            this.mClarityTipTv.setVisibility(8);
        }
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).reset();
        }
        updateStartImage();
        updatePauseCover();
        changeUIToLivePlayingStatus();
    }

    public void changeUiToPlayingBufferingClear() {
        Debuger.printfLog("changeUiToPlayingBufferingClear");
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onEnterImmerse();
        }
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 8);
        setMusk(false);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 0);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).start();
        }
        updateStartImage();
    }

    @Override
    public void changeUiToPlayingBufferingShow() {
        Debuger.printfLog("changeUiToPlayingBufferingShow");
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onOutImmerse();
        }
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).start();
        }
        showLoadingView(true);
    }

    public void changeUiToPlayingClear() {
        Debuger.printfLog("changeUiToPlayingClear");
        changeUiToClear();
        setViewShowState(this.mBottomProgressBar, 0);
    }

    @Override
    public void changeUiToPlayingShow() {
        Debuger.printfLog("changeUiToPlayingShow");
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onOutImmerse();
        }
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 0);
        setMusk(true);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, (this.mIfCurrentIsFullscreen && this.mNeedLockFull) ? 0 : 8);
        setViewShowState(this.mOpenVipTipContainer, this.mbPreviewVideo ? 0 : 8);
        setViewShowState(this.mLoginOpenVipContainer, this.mbShowNeedVIP ? 0 : 8);
        updateStartImage();
        updatePreviewStatus();
        if (getPlayerType() == PlayerType.ANDROID_MEDIA_PLAYER && getPreLoading() != null && !getPreLoading().isBuffering()) {
            hideLoadingView();
        }
        changeUIToLivePlayingStatus();
    }

    public void changeUiToPrepareingClear() {
        Debuger.printfLog("changeUiToPrepareingClear");
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onEnterImmerse();
        }
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 8);
        setMusk(false);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        View view = this.mLoadingProgressBar;
        if (view instanceof ENDownloadView) {
            ((ENDownloadView) view).reset();
        }
    }

    @Override
    public void changeUiToPreparingShow() {
        Debuger.printfLog("changeUiToPreparingShow");
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onOutImmerse();
        }
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        setViewShowState(this.mLoginOpenVipContainer, this.mbShowNeedVIP ? 0 : 4);
        hideErrorLayer(1000);
        resetNormalState();
        View view = this.mLoadingProgressBar;
        if ((view instanceof ENDownloadView) && ((ENDownloadView) view).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).start();
        }
    }

    @Override
    public void cloneParams(GSYVideoWndView gSYVideoWndView, GSYVideoWndView gSYVideoWndView2) {
        TextView textView;
        TextView textView2;
        SeekBar seekBar;
        super.cloneParams(gSYVideoWndView, gSYVideoWndView2);
        StandardGSYVideoPlayer standardGSYVideoPlayer = (StandardGSYVideoPlayer) gSYVideoWndView;
        StandardGSYVideoPlayer standardGSYVideoPlayer2 = (StandardGSYVideoPlayer) gSYVideoWndView2;
        SeekBar seekBar2 = standardGSYVideoPlayer2.mProgressBar;
        if (seekBar2 != null && (seekBar = standardGSYVideoPlayer.mProgressBar) != null) {
            seekBar2.setProgress(seekBar.getProgress());
            standardGSYVideoPlayer2.mProgressBar.setSecondaryProgress(standardGSYVideoPlayer.mProgressBar.getSecondaryProgress());
        }
        TextView textView3 = standardGSYVideoPlayer2.mTotalTimeTextView;
        if (textView3 != null && (textView2 = standardGSYVideoPlayer.mTotalTimeTextView) != null) {
            textView3.setText(textView2.getText());
        }
        TextView textView4 = standardGSYVideoPlayer2.mCurrentTimeTextView;
        if (textView4 == null || (textView = standardGSYVideoPlayer.mCurrentTimeTextView) == null) {
            return;
        }
        textView4.setText(textView.getText());
    }

    @Override
    public void dismissBrightnessDialog() {
        ViewGroup viewGroup = this.mVolumeBrightnessConatiner;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    @Override
    public void dismissProgressDialog() {
        this.mProgressTimeDialog.setVisibility(8);
    }

    @Override
    public void dismissVolumeDialog() {
        ViewGroup viewGroup = this.mVolumeBrightnessConatiner;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    @Override
    public int getLayoutId() {
        return com.transsion.vishaplayersdk.R.layout.video_layout_standard;
    }

    @Override
    public void hideAllWidget() {
        setViewShowState(this.mBottomContainer, 8);
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setMusk(false);
        setViewShowState(this.mLoginOpenVipContainer, 8);
    }

    @Override
    public void init(Context context) {
        super.init(context);
        Drawable drawable = this.mBottomProgressDrawable;
        if (drawable != null) {
            this.mBottomProgressBar.setProgressDrawable(drawable);
        }
        if (this.mBottomShowProgressDrawable != null) {
            this.mProgressBar.setProgressDrawable(this.mBottomProgressDrawable);
        }
        Drawable drawable2 = this.mBottomShowProgressThumbDrawable;
        if (drawable2 != null) {
            this.mProgressBar.setThumb(drawable2);
        }
        SeekBar seekBar = this.mVerticalSeekBar;
        if (seekBar != null) {
            seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                @Override
                public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                    if (z) {
                        if (StandardGSYVideoPlayer.this.mIsVolumeProgress) {
                            if (((GSYVideoStateView) StandardGSYVideoPlayer.this).mAudioManager != null) {
                                ((GSYVideoStateView) StandardGSYVideoPlayer.this).mAudioManager.setStreamVolume(3, Math.round((i / 100.0f) * ((GSYVideoStateView) StandardGSYVideoPlayer.this).mAudioManager.getStreamMaxVolume(3)), 0);
                                if (((GSYVideoControlView) StandardGSYVideoPlayer.this).mVolBriIcon != null) {
                                    ((GSYVideoControlView) StandardGSYVideoPlayer.this).mVolBriIcon.setImageResource(i > 0 ? com.transsion.vishaplayersdk.R.drawable.video_play_volume : com.transsion.vishaplayersdk.R.drawable.video_play_volume0);
                                }
                                StandardGSYVideoPlayer.this.setMute(i < 1);
                                return;
                            }
                            return;
                        }
                        if (StandardGSYVideoPlayer.this.getActivityContext() != null && (StandardGSYVideoPlayer.this.getActivityContext() instanceof Activity)) {
                            float f = i / 100.0f;
                            if (f < 0.01f) {
                                f = 0.01f;
                            }
                            Activity activity = (Activity) StandardGSYVideoPlayer.this.getActivityContext();
                            WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
                            attributes.screenBrightness = f;
                            activity.getWindow().setAttributes(attributes);
                            ((GSYVideoControlView) StandardGSYVideoPlayer.this).mBrightnessData = f;
                        }
                        if (((GSYVideoControlView) StandardGSYVideoPlayer.this).mVolBriIcon != null) {
                            ((GSYVideoControlView) StandardGSYVideoPlayer.this).mVolBriIcon.setImageResource(com.transsion.vishaplayersdk.R.drawable.video_play_brightness);
                        }
                    }
                }

                @Override
                public void onStartTrackingTouch(SeekBar seekBar2) {
                    StandardGSYVideoPlayer standardGSYVideoPlayer = StandardGSYVideoPlayer.this;
                    standardGSYVideoPlayer.removeCallbacks(standardGSYVideoPlayer.mDismissDialogTask);
                }

                @Override
                public void onStopTrackingTouch(SeekBar seekBar2) {
                    StandardGSYVideoPlayer.this.dismissVolumeBrightnessDialogDelayed();
                }
            });
        }
    }

    @Override
    public void onClickUiToggle() {
        ViewGroup viewGroup;
        if (this.mIfCurrentIsFullscreen && this.mLockCurScreen && this.mNeedLockFull && this.mCurrentState != 7) {
            setViewShowState(this.mLockScreen, 0);
            setViewShowState(this.mBottomProgressBar, 0);
            return;
        }
        if ((isLiveFullscreen() && this.mbShowError) || PlayHandler.getInstance().mIsBannerAd) {
            return;
        }
        int i = this.mCurrentState;
        if (i == 1) {
            ViewGroup viewGroup2 = this.mBottomContainer;
            if (viewGroup2 != null) {
                if (viewGroup2.getVisibility() == 0) {
                    changeUiToPrepareingClear();
                    return;
                } else {
                    changeUiToPreparingShow();
                    return;
                }
            }
            return;
        }
        if (i == 2) {
            ViewGroup viewGroup3 = this.mBottomContainer;
            if (viewGroup3 != null) {
                if (viewGroup3.getVisibility() == 0) {
                    changeUiToPlayingClear();
                    return;
                } else {
                    changeUiToPlayingShow();
                    return;
                }
            }
            return;
        }
        if (i == 5) {
            ViewGroup viewGroup4 = this.mBottomContainer;
            if (viewGroup4 != null) {
                if (viewGroup4.getVisibility() != 0) {
                    changeUiToPauseShow();
                    return;
                } else {
                    if (this.mbSwitchResolutionNeedVip) {
                        return;
                    }
                    changeUiToPauseClear();
                    return;
                }
            }
            return;
        }
        if (i == 6) {
            ViewGroup viewGroup5 = this.mBottomContainer;
            if (viewGroup5 != null) {
                if (viewGroup5.getVisibility() == 0) {
                    changeUiToCompleteClear();
                    return;
                } else {
                    changeUiToCompleteShow();
                    return;
                }
            }
            return;
        }
        if (i != 3 || (viewGroup = this.mBottomContainer) == null) {
            return;
        }
        if (viewGroup.getVisibility() == 0) {
            changeUiToPlayingBufferingClear();
        } else {
            changeUiToPlayingBufferingShow();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissVolumeDialog();
        dismissBrightnessDialog();
    }

    public void restoreNormal() {
        View view;
        if (!this.mbShowNeedVIP || (view = this.mLoginOpenVipContainer) == null || view.getVisibility() == 0) {
            return;
        }
        setViewShowState(this.mLoginOpenVipContainer, 0);
    }

    public void saveFrame(File file, GSYVideoShotSaveListener gSYVideoShotSaveListener) {
        saveFrame(file, false, gSYVideoShotSaveListener);
    }

    public void setBottomProgressBarDrawable(Drawable drawable) {
        this.mBottomProgressDrawable = drawable;
        ProgressBar progressBar = this.mBottomProgressBar;
        if (progressBar != null) {
            progressBar.setProgressDrawable(drawable);
        }
    }

    public void setBottomShowProgressBarDrawable(Drawable drawable, Drawable drawable2) {
        this.mBottomShowProgressDrawable = drawable;
        this.mBottomShowProgressThumbDrawable = drawable2;
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setProgressDrawable(drawable);
            this.mProgressBar.setThumb(drawable2);
        }
    }

    public void setDialogProgressBar(Drawable drawable) {
        this.mDialogProgressBarDrawable = drawable;
    }

    public void setDialogProgressColor(int i, int i2) {
        this.mDialogProgressHighLightColor = i;
        this.mDialogProgressNormalColor = i2;
    }

    public void setDialogVolumeProgressBar(Drawable drawable) {
        this.mVolumeProgressDrawable = drawable;
    }

    @Override
    public void showBrightnessDialog(float f) {
        this.mIsVolumeProgress = false;
        this.mVolumeBrightnessConatiner.setVisibility(0);
        this.mVolBriIcon.setImageResource(com.transsion.vishaplayersdk.R.drawable.video_play_brightness);
        this.mVerticalSeekBar.setProgress((int) (f * 100.0f));
        dismissVolumeBrightnessDialogDelayed();
    }

    @Override
    public void showProgressDialog(float f, String str, int i, String str2, int i2) {
        wz5.N(f < 0.0f ? "retreat" : "forward");
        this.duration = "/" + str2;
        this.mProgressTextView.setText(str);
        this.mProgressDuration.setText(this.duration);
        this.mProgressTimeDialog.setVisibility(0);
    }

    @Override
    public void showVolumeDialog(float f, int i) {
        this.mIsVolumeProgress = true;
        ViewGroup viewGroup = this.mVolumeBrightnessConatiner;
        if (viewGroup != null) {
            viewGroup.setVisibility(0);
            this.mVolBriIcon.setImageResource(i > 0 ? com.transsion.vishaplayersdk.R.drawable.video_play_volume : com.transsion.vishaplayersdk.R.drawable.video_play_volume0);
            this.mVerticalSeekBar.setProgress(i);
        }
        setMute(i < 1);
        dismissVolumeBrightnessDialogDelayed();
    }

    @Override
    public void startPlay() {
        LogUtils.j(TAG, "startPlay，player:" + this);
        if (this.mVideoAllCallBack != null) {
            Debuger.printfLog("onClickStartThumb");
            this.mVideoAllCallBack.onClickStartThumb(this.mOriginUrl, this.mTitle, this);
        }
        prepareVideo();
        startDismissControlViewTimer();
    }

    @Override
    public GSYVideoWndView startWindowFullscreen(Context context, boolean z, boolean z2) {
        GSYVideoWndView gSYVideoWndViewStartWindowFullscreen = super.startWindowFullscreen(context, z, z2);
        if (gSYVideoWndViewStartWindowFullscreen != null) {
            StandardGSYVideoPlayer standardGSYVideoPlayer = (StandardGSYVideoPlayer) gSYVideoWndViewStartWindowFullscreen;
            standardGSYVideoPlayer.setLockClickListener(this.mLockClickListener);
            standardGSYVideoPlayer.setNeedLockFull(isNeedLockFull());
            initFullUI(standardGSYVideoPlayer);
        }
        return gSYVideoWndViewStartWindowFullscreen;
    }

    @Override
    public void stopPlay() {
        if (getCurrentState() == 0 || PlayHandler.getInstance().mIsTaskAutoPlay) {
            return;
        }
        setStateAndUi(0);
    }

    @Override
    public void updateStartImage() {
        if (this.mStartButton != null) {
            ImageView imageView = this.mStartButton;
            int i = this.mCurrentState;
            if (i == 2) {
                imageView.setImageResource(com.transsion.vishaplayersdk.R.drawable.video_click_pause_selector);
            } else if (i == 7) {
                imageView.setImageResource(com.transsion.vishaplayersdk.R.drawable.video_click_error_selector);
            } else {
                imageView.setImageResource(com.transsion.vishaplayersdk.R.drawable.video_click_play_selector);
            }
        }
    }

    public void saveFrame(File file, boolean z, GSYVideoShotSaveListener gSYVideoShotSaveListener) {
        if (getCurrentPlayer().getRenderProxy() != null) {
            getCurrentPlayer().getRenderProxy().saveFrame(file, z, gSYVideoShotSaveListener);
        }
    }

    public StandardGSYVideoPlayer(Context context) {
        super(context);
        this.mDialogProgressHighLightColor = -11;
        this.mDialogProgressNormalColor = -11;
        this.mIsVolumeProgress = false;
        this.mDismissDialogTask = new Runnable() {
            @Override
            public void run() {
                if (StandardGSYVideoPlayer.this.mIsVolumeProgress) {
                    StandardGSYVideoPlayer.this.dismissVolumeDialog();
                } else {
                    StandardGSYVideoPlayer.this.dismissBrightnessDialog();
                }
            }
        };
    }

    public StandardGSYVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDialogProgressHighLightColor = -11;
        this.mDialogProgressNormalColor = -11;
        this.mIsVolumeProgress = false;
        this.mDismissDialogTask = new Runnable() {
            @Override
            public void run() {
                if (StandardGSYVideoPlayer.this.mIsVolumeProgress) {
                    StandardGSYVideoPlayer.this.dismissVolumeDialog();
                } else {
                    StandardGSYVideoPlayer.this.dismissBrightnessDialog();
                }
            }
        };
    }
}
