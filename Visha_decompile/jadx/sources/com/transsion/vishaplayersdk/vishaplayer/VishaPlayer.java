package com.transsion.vishaplayersdk.vishaplayer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.media.AudioAttributes;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media3.common.C;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.base.config.PlayerType;
import com.transsion.vishaplayersdk.gsyplayer.listener.VideoAllCallBack;
import com.transsion.vishaplayersdk.gsyplayer.utils.CommonUtil;
import com.transsion.vishaplayersdk.gsyplayer.utils.Debuger;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.gsyplayer.video.StandardGSYVideoPlayer;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoControlView;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoPlayer;
import com.transsion.vishaplayersdk.widgets.VideoPlayerSpeedChooserView;
import com.transsion.vishaplayersdk.widgets.VideoRetreatForwardLayout;
import defpackage.f39;
import defpackage.wz5;
import java.io.File;

public class VishaPlayer extends StandardGSYVideoPlayer {
    private long mEndPosition;
    protected int mGestureSpeedItemHeight;
    private final Runnable mHideTipsUIRun;

    @SuppressLint({"StaticFieldLeak"})
    private VideoPlayerSpeedChooserView mPlayerSpeedChooseView;
    protected float mPreviousSpeed;
    private boolean mSlideChangeSpeed;
    private TextView mTextToast;
    private Vibrator mVibrator;
    private int platformBasicColor;
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + VishaPlayer.class.getSimpleName();
    private static final float[] GESTURE_SPEED = {1.25f, 1.5f, 2.0f, 3.0f};

    public VishaPlayer(Context context, Boolean bool) {
        super(context, bool);
        this.mHideTipsUIRun = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
    }

    private void changeSpeed(float f) {
        if (this.mPreviousSpeed != f) {
            this.mPreviousSpeed = f;
            vibratorStart();
            setSpeedPlaying(f, false);
        }
    }

    public void doubleTabControl(MotionEvent motionEvent) {
        int iD;
        if (!isLive() || isLiveFullscreen()) {
            if (isLive() && isLiveFullscreen()) {
                touchDoubleUp();
                return;
            }
            if (getActivityContext() == null || this.mVideoRetreatForwardLayout == null) {
                iD = 0;
            } else {
                iD = f39.d();
                this.mVideoRetreatForwardLayout.requestedOrientation(CommonUtil.getCurrentScreenLand((Activity) getActivityContext()));
            }
            float f = iD;
            if (motionEvent.getX() < (1.0f * f) / 3.0f) {
                this.mDoubleTapStartTime = System.currentTimeMillis();
                getPlayPosition(false);
                wz5.N("gesture_doubletap_forward");
            } else {
                if (motionEvent.getX() <= (f * 2.0f) / 3.0f) {
                    touchDoubleUp();
                    return;
                }
                this.mDoubleTapStartTime = System.currentTimeMillis();
                getPlayPosition(true);
                wz5.N("gesture_doubletap_retreat");
            }
        }
    }

    private void getPlayPosition(boolean z) {
        VideoRetreatForwardLayout videoRetreatForwardLayout = this.mVideoRetreatForwardLayout;
        if (videoRetreatForwardLayout != null) {
            videoRetreatForwardLayout.setIsRetreat(!z);
        }
    }

    private void initGestureDetector() {
        post(new Runnable() {
            @Override
            public void run() {
                ((GSYVideoControlView) VishaPlayer.this).gestureDetector = new GestureDetector(VishaPlayer.this.getContext().getApplicationContext(), new GestureDetector.SimpleOnGestureListener() {
                    @Override
                    public boolean onDoubleTap(MotionEvent motionEvent) {
                        if (System.currentTimeMillis() - ((GSYVideoControlView) VishaPlayer.this).mDoubleTapStartTime > 300) {
                            VishaPlayer.this.doubleTabControl(motionEvent);
                        }
                        return super.onDoubleTap(motionEvent);
                    }

                    @Override
                    public void onLongPress(MotionEvent motionEvent) {
                        VishaPlayer.this.longPressChangeSpeed(motionEvent);
                        super.onLongPress(motionEvent);
                    }

                    @Override
                    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                        if (!((GSYVideoControlView) VishaPlayer.this).mChangePosition && !((GSYVideoControlView) VishaPlayer.this).mChangeVolume && !((GSYVideoControlView) VishaPlayer.this).mBrightness) {
                            VishaPlayer.this.onClickUiToggle();
                        }
                        if (VishaPlayer.this.isShortVideo()) {
                            Debuger.printfLog("onClickBlank, short video, pause or play");
                            VishaPlayer.this.clickStartIcon();
                        }
                        return super.onSingleTapConfirmed(motionEvent);
                    }
                });
            }
        });
    }

    private void initTextToast() {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.platformBasicColor = typedValue.data;
        this.mTextToast = (TextView) findViewById(R.id.click_toast);
    }

    private void initViews(Context context) {
        this.mPlayerSpeedChooseView = (VideoPlayerSpeedChooserView) findViewById(R.id.view_player_speed_chooser);
        this.mGestureSpeedItemHeight = getResources().getDimensionPixelSize(R.dimen.gesture_speed_item_height);
    }

    public void longPressChangeSpeed(MotionEvent motionEvent) {
        if (isLive()) {
            return;
        }
        hideAllWidget();
        wz5.N("gesture_longpress_forward");
        this.mChangeSpeed = true;
        this.mPlayerSpeedChooseView.setVisibility(0);
        int iD = getActivityContext() != null ? f39.d() : 0;
        vibratorStart();
        if (getContext().getResources().getConfiguration().orientation == 1) {
            this.mPlayerSpeedChooseView.setSpeedState(-1);
            this.mSlideChangeSpeed = false;
            setSpeedPlaying(GESTURE_SPEED[2], false);
        } else if (motionEvent.getX() >= (iD * 2.0f) / 3.0f) {
            moveToChangeSpeed(motionEvent.getY());
            this.mSlideChangeSpeed = true;
        } else {
            this.mPlayerSpeedChooseView.setSpeedState(-1);
            setSpeedPlaying(GESTURE_SPEED[2], false);
            this.mSlideChangeSpeed = false;
        }
    }

    private void vibratorStart() {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        this.mVibrator = vibrator;
        if (vibrator.hasVibrator()) {
            this.mVibrator.vibrate(VibrationEffect.createPredefined(0), new AudioAttributes.Builder().setUsage(6).build());
        }
    }

    @Override
    public int getEnlargeImageRes() {
        return R.drawable.video_shrink;
    }

    @Override
    public int getLayoutId() {
        return this.mIfCurrentIsFullscreen ? R.layout.layout_video_contoller_land : R.layout.layout_video_contoller_port;
    }

    @Override
    public int getShrinkImageRes() {
        return R.drawable.video_shrink;
    }

    @Override
    public void hideAllWidget() {
        super.hideAllWidget();
        setViewShowState(this.mLockScreen, 4);
    }

    public void lambda$new$0() {
        ThreadUtils.o().removeCallbacks(this.mHideTipsUIRun);
        this.mTextToast.setVisibility(8);
    }

    @Override
    public void init(Context context) {
        super.init(context);
        initGestureDetector();
        initViews(context);
        initTextToast();
    }

    @Override
    public boolean isInDoubleTapMode() {
        boolean z = System.currentTimeMillis() - this.mDoubleTapStartTime < 300 && System.currentTimeMillis() - this.mDoubleTapStartTime > 50;
        if (z) {
            this.mDoubleTapStartTime = System.currentTimeMillis();
        }
        return z;
    }

    public void moveToChangeSpeed(float f) {
        if (isLive()) {
            return;
        }
        float fC = getActivityContext() != null ? f39.c() : 0;
        float f2 = fC / 4.0f;
        if (f < f2) {
            this.mPlayerSpeedChooseView.setSpeedState(0);
            changeSpeed(GESTURE_SPEED[3]);
            return;
        }
        if (f >= f2 && f <= fC / 2.0f) {
            this.mPlayerSpeedChooseView.setSpeedState(1);
            changeSpeed(GESTURE_SPEED[2]);
        } else if (f < fC / 2.0f || f > (fC * 3.0f) / 4.0f) {
            this.mPlayerSpeedChooseView.setSpeedState(3);
            changeSpeed(GESTURE_SPEED[0]);
        } else {
            this.mPlayerSpeedChooseView.setSpeedState(2);
            changeSpeed(GESTURE_SPEED[1]);
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!isIfCurrentIsFullscreen()) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void replay() {
        LogUtils.j(TAG, "replay");
        resetVIPControls();
        if (this.mPlayerType != PlayerType.ANDROID_MEDIA_PLAYER) {
            getGSYVideoManager().replay();
        } else {
            startPlay();
        }
    }

    @Override
    public void lambda$backToNormal$3(View view, ViewGroup viewGroup, GSYVideoPlayer gSYVideoPlayer) {
        VishaPlayer vishaPlayer = (VishaPlayer) gSYVideoPlayer;
        if (vishaPlayer != null) {
            vishaPlayer.dismissProgressDialog();
            vishaPlayer.dismissVolumeDialog();
            vishaPlayer.dismissBrightnessDialog();
        }
        super.lambda$backToNormal$3(view, viewGroup, gSYVideoPlayer);
    }

    public void setEndPosition(long j) {
        this.mEndPosition = j;
    }

    @Override
    public void setProgressAndTime(int i, int i2, int i3, int i4, boolean z) {
        super.setProgressAndTime(i, i2, i3, i4, z);
        long j = this.mEndPosition;
        if (j == 0 || j == getDuration() || i3 < this.mEndPosition) {
            return;
        }
        stopPlay();
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onClickStop(this.mUrl, new Object[0]);
        }
    }

    public boolean setUp(String str, boolean z, String str2, boolean z2) {
        return setUp(str, z, (File) null, str2, z2);
    }

    @Override
    public void showTextToast(CharSequence charSequence) {
        this.mTextToast.setText(getResources().getString(R.string.switch_toast_1, charSequence));
        this.mTextToast.setVisibility(0);
        ThreadUtils.o().removeCallbacks(this.mHideTipsUIRun);
        ThreadUtils.o().postDelayed(this.mHideTipsUIRun, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    @Override
    public void touchSurfaceDown(float f, float f2) {
        super.touchSurfaceDown(f, f2);
        if (!isLive() && isInDoubleTapMode()) {
            float fD = getActivityContext() != null ? f39.d() : 0;
            if (f < (1.0f * fD) / 3.0f) {
                this.mDoubleTapStartTime = System.currentTimeMillis();
                getPlayPosition(false);
                wz5.N("gesture_doubletap_forward");
            } else if (f > (fD * 2.0f) / 3.0f) {
                this.mDoubleTapStartTime = System.currentTimeMillis();
                getPlayPosition(true);
                wz5.N("gesture_doubletap_retreat");
            }
        }
    }

    @Override
    public void touchSurfaceMove(float f, float f2, float f3) {
        super.touchSurfaceMove(f, f2, f3);
        if (this.mChangeSpeed && this.mSlideChangeSpeed) {
            moveToChangeSpeed(f3);
        }
    }

    @Override
    public void touchSurfaceUp() {
        super.touchSurfaceUp();
        VideoPlayerSpeedChooserView videoPlayerSpeedChooserView = this.mPlayerSpeedChooseView;
        if (videoPlayerSpeedChooserView == null || videoPlayerSpeedChooserView.getVisibility() != 0) {
            return;
        }
        this.mPlayerSpeedChooseView.setVisibility(8);
        this.mChangeSpeed = false;
        this.mPreviousSpeed = 0.0f;
        setSpeedPlaying(PlayHandler.getInstance().mSpeed, false);
    }

    @Override
    public void updateStartImage() {
        if (!this.mIfCurrentIsFullscreen) {
            super.updateStartImage();
            return;
        }
        ImageView imageView = this.mStartButton;
        if (imageView != null) {
            int i = this.mCurrentState;
            if (i == 2) {
                imageView.setImageResource(R.drawable.video_click_pause_selector);
            } else if (i == 7) {
                imageView.setImageResource(R.drawable.video_click_play_selector);
            } else {
                imageView.setImageResource(R.drawable.video_click_play_selector);
            }
        }
    }

    public VishaPlayer(Context context) {
        super(context);
        this.mHideTipsUIRun = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
    }

    public VishaPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHideTipsUIRun = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
    }
}
