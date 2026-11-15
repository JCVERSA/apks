package com.mgtv.ssp.control;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.imgo.log.e;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public abstract class BaseVideoController extends FrameLayout implements c {
    private String TAG;

    @Nullable
    protected Activity mActivity;
    private boolean mAdaptCutout;
    protected LinkedHashMap<b, Boolean> mControlComponents;
    protected a mControlWrapper;
    private int mCutoutHeight;
    protected int mDefaultTimeout;
    private boolean mEnableOrientation;
    protected final Runnable mFadeOut;
    private Boolean mHasCutout;
    private Animation mHideAnim;
    protected boolean mIsLocked;
    private boolean mIsStartProgress;
    private int mOrientation;
    private Animation mShowAnim;
    protected Runnable mShowProgress;
    protected boolean mShowing;

    public BaseVideoController(@NonNull Context context) {
        this(context, null);
    }

    private void checkCutout() {
        if (this.mAdaptCutout) {
            Activity activity = this.mActivity;
            if (activity != null && this.mHasCutout == null) {
                Boolean boolValueOf = Boolean.valueOf(com.mgtv.ssp.utils.b.a(activity));
                this.mHasCutout = boolValueOf;
                if (boolValueOf.booleanValue()) {
                    this.mCutoutHeight = (int) com.mgtv.ssp.utils.c.a(this.mActivity);
                }
            }
            e.a("", "hasCutout: " + this.mHasCutout + " cutout height: " + this.mCutoutHeight, true);
        }
    }

    private void handleLockStateChanged(boolean z) {
        Iterator<Map.Entry<b, Boolean>> it = this.mControlComponents.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getKey().onLockStateChanged(z);
        }
        onLockStateChanged(z);
    }

    private void handlePlayStateChanged(int i) {
        Iterator<Map.Entry<b, Boolean>> it = this.mControlComponents.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getKey().onPlayStateChanged(i);
        }
        onPlayStateChanged(i);
    }

    private void handlePlayerStateChanged(int i) {
        Iterator<Map.Entry<b, Boolean>> it = this.mControlComponents.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getKey().onPlayerStateChanged(i);
        }
        onPlayerStateChanged(i);
    }

    private void handleSetProgress(int i, int i2) {
        Iterator<Map.Entry<b, Boolean>> it = this.mControlComponents.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getKey().setProgress(i, i2);
        }
        setProgress(i, i2);
    }

    private void handleVisibilityChanged(boolean z, Animation animation) {
        if (!this.mIsLocked) {
            Iterator<Map.Entry<b, Boolean>> it = this.mControlComponents.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getKey().onVisibilityChanged(z, animation);
            }
        }
        onVisibilityChanged(z, animation);
    }

    public void addControlComponent(b... bVarArr) {
        for (b bVar : bVarArr) {
            addControlComponent(bVar, false);
        }
    }

    @Override
    public void forceHide() {
        if (this.mShowing) {
            stopFadeOut();
            handleVisibilityChanged(false, this.mHideAnim);
            this.mShowing = false;
        }
    }

    @Override
    public int getCutoutHeight() {
        return this.mCutoutHeight;
    }

    public abstract int getLayoutId();

    @Override
    public boolean hasCutout() {
        Boolean bool = this.mHasCutout;
        return bool != null && bool.booleanValue();
    }

    public void hide() {
        if (this.mShowing) {
            stopFadeOut();
            if (this.mControlWrapper.isPlaying()) {
                handleVisibilityChanged(false, this.mHideAnim);
                this.mShowing = false;
            }
        }
    }

    public void initView() {
        if (getLayoutId() != 0) {
            LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        this.mShowAnim = alphaAnimation;
        alphaAnimation.setDuration(300L);
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        this.mHideAnim = alphaAnimation2;
        alphaAnimation2.setDuration(300L);
        this.mActivity = com.mgtv.ssp.utils.c.b(getContext());
    }

    @Override
    public boolean isLocked() {
        return this.mIsLocked;
    }

    @Override
    public boolean isShowing() {
        System.out.println("gesture  base.isShowing() " + this.mShowing);
        return this.mShowing;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        checkCutout();
    }

    public boolean onBackPressed() {
        return false;
    }

    public void onLockStateChanged(boolean z) {
    }

    public void onOrientationLandscape(Activity activity) {
        activity.setRequestedOrientation(0);
    }

    public void onOrientationPortrait(Activity activity) {
        if (!this.mIsLocked && this.mEnableOrientation) {
            activity.setRequestedOrientation(1);
        }
    }

    public void onOrientationReverseLandscape(Activity activity) {
        activity.setRequestedOrientation(8);
    }

    @CallSuper
    public void onPlayStateChanged(int i) {
        if (i == 0) {
            this.mOrientation = 0;
            this.mIsLocked = false;
            this.mShowing = false;
            System.out.println("gesture  onPlayStateChanged IDLE mShowing " + this.mShowing);
            removeAllDissociateComponents();
            return;
        }
        if (i == 11) {
            this.mIsLocked = false;
            this.mShowing = false;
            System.out.println("gesture  onPlayStateChanged COMPLETE mShowing " + this.mShowing);
            return;
        }
        if (i != 13) {
            return;
        }
        this.mShowing = false;
        System.out.println("gesture  onPlayStateChanged STATE_ERROR mShowing " + this.mShowing);
    }

    @CallSuper
    public void onPlayerStateChanged(int i) {
        if (i == 10) {
            if (hasCutout()) {
                com.mgtv.ssp.utils.b.a(getContext(), false);
            }
        } else if (i == 11 && hasCutout()) {
            com.mgtv.ssp.utils.b.a(getContext(), true);
        }
    }

    public void onVisibilityChanged(boolean z, Animation animation) {
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }

    public void removeAllControlComponent() {
        Iterator<Map.Entry<b, Boolean>> it = this.mControlComponents.entrySet().iterator();
        while (it.hasNext()) {
            removeView(it.next().getKey().getView());
        }
        this.mControlComponents.clear();
    }

    public void removeAllDissociateComponents() {
        Iterator<Map.Entry<b, Boolean>> it = this.mControlComponents.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().booleanValue()) {
                it.remove();
            }
        }
    }

    public void removeControlComponent(b bVar) {
        removeView(bVar.getView());
        this.mControlComponents.remove(bVar);
    }

    public void setAdaptCutout(boolean z) {
        this.mAdaptCutout = z;
    }

    public void setDismissTimeout(int i) {
        if (i > 0) {
            this.mDefaultTimeout = i;
        }
    }

    public void setEnableOrientation(boolean z) {
        this.mEnableOrientation = z;
    }

    public void setLockButtonVisibility(int i) {
    }

    @Override
    public void setLocked(boolean z) {
        this.mIsLocked = z;
        handleLockStateChanged(z);
    }

    @CallSuper
    public void setMediaPlayer(d dVar) {
        this.mControlWrapper = new a(dVar, this);
        Iterator<Map.Entry<b, Boolean>> it = this.mControlComponents.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getKey().attach(this.mControlWrapper);
        }
    }

    @CallSuper
    public void setPlayState(int i) {
        handlePlayStateChanged(i);
    }

    @CallSuper
    public void setPlayerState(int i) {
        handlePlayerStateChanged(i);
    }

    public void setProgress(int i, int i2) {
    }

    @Override
    public void show() {
        if (this.mShowing) {
            return;
        }
        handleVisibilityChanged(true, this.mShowAnim);
        startFadeOut();
        this.mShowing = true;
    }

    @Override
    public void startFadeOut() {
        stopFadeOut();
        postDelayed(this.mFadeOut, this.mDefaultTimeout);
    }

    public boolean startFullScreen() {
        Activity activity = this.mActivity;
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        this.mActivity.setRequestedOrientation(0);
        return true;
    }

    @Override
    public void startProgress() {
        if (this.mIsStartProgress) {
            return;
        }
        post(this.mShowProgress);
        this.mIsStartProgress = true;
    }

    @Override
    public void stopFadeOut() {
        removeCallbacks(this.mFadeOut);
    }

    public boolean stopFullScreen() {
        Activity activity = this.mActivity;
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        this.mActivity.setRequestedOrientation(1);
        return true;
    }

    @Override
    public void stopProgress() {
        if (this.mIsStartProgress) {
            removeCallbacks(this.mShowProgress);
            this.mIsStartProgress = false;
        }
    }

    public void toggleFullScreen() {
    }

    public void togglePlay() {
        startFadeOut();
        this.mControlWrapper.togglePlay();
    }

    public void toggleShowState() {
        this.mControlWrapper.a();
    }

    public BaseVideoController(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public int setProgress() {
        int currentPosition = this.mControlWrapper.getCurrentPosition();
        handleSetProgress(this.mControlWrapper.getVideoTotalTime(), currentPosition);
        return currentPosition;
    }

    public BaseVideoController(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        this.mDefaultTimeout = FlacTagCreator.DEFAULT_PADDING;
        this.mControlComponents = new LinkedHashMap<>();
        this.TAG = "BaseVideoController";
        this.mFadeOut = new Runnable() {
            @Override
            public void run() {
                BaseVideoController.this.hide();
            }
        };
        this.mShowProgress = new Runnable() {
            @Override
            public void run() {
                int progress = BaseVideoController.this.setProgress();
                if (!BaseVideoController.this.mControlWrapper.isPlaying()) {
                    BaseVideoController.this.mIsStartProgress = false;
                } else {
                    BaseVideoController baseVideoController = BaseVideoController.this;
                    baseVideoController.postDelayed(this, (long) ((1000 - (progress % 1000)) / baseVideoController.mControlWrapper.getCurrentPlaySpeed()));
                }
            }
        };
        this.mOrientation = 0;
        initView();
    }

    public void addControlComponent(b bVar, boolean z) {
        if (bVar == null) {
            return;
        }
        this.mControlComponents.put(bVar, Boolean.valueOf(z));
        a aVar = this.mControlWrapper;
        if (aVar != null) {
            bVar.attach(aVar);
        }
        View view = bVar.getView();
        if (view == null || z) {
            return;
        }
        addView(view, 0);
    }

    public void addControlComponent(FrameLayout.LayoutParams layoutParams, b bVar, boolean z) {
        if (bVar == null) {
            return;
        }
        this.mControlComponents.put(bVar, Boolean.valueOf(z));
        a aVar = this.mControlWrapper;
        if (aVar != null) {
            bVar.attach(aVar);
        }
        View view = bVar.getView();
        if (view == null || z) {
            return;
        }
        addView(view, 0, layoutParams);
    }
}
