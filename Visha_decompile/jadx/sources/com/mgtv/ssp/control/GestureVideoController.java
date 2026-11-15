package com.mgtv.ssp.control;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public abstract class GestureVideoController extends BaseVideoController {
    protected static int timeout = 400;
    protected int clickCount;
    protected Handler handler;
    private AudioManager mAudioManager;
    private float mBrightness;
    private boolean mCanChangePosition;
    private boolean mCanSlide;
    private boolean mChangeBrightness;
    private boolean mChangePosition;
    private boolean mChangeVolume;
    private int mCurPlayState;
    private boolean mEnableInNormal;
    private boolean mFirstTouch;
    protected boolean mIsDoubleTapTogglePlayEnabled;
    private boolean mIsGestureEnabled;
    private int mSeekPosition;
    private int mStreamVolume;

    public GestureVideoController(@NonNull Context context) {
        super(context);
        this.clickCount = 0;
        this.mIsGestureEnabled = false;
        this.mCanChangePosition = true;
        this.mIsDoubleTapTogglePlayEnabled = true;
    }

    @Override
    public void initView() {
        super.initView();
        if (getContext() != null) {
            this.handler = new Handler();
            this.mAudioManager = (AudioManager) getContext().getSystemService("audio");
        }
    }

    public boolean isInPlaybackState() {
        int i;
        return (this.mControlWrapper == null || (i = this.mCurPlayState) == 0 || i == 1 || i == 2 || i == 3 || i == 4 || i == 5 || i == 12 || i == 13 || i == 14 || i == 16 || i == 17) ? false : true;
    }

    public void setCanChangePosition(boolean z) {
        this.mCanChangePosition = z;
    }

    public void setDoubleTapTogglePlayEnabled(boolean z) {
        this.mIsDoubleTapTogglePlayEnabled = z;
    }

    public void setEnableInNormal(boolean z) {
        this.mEnableInNormal = z;
    }

    public void setGestureEnabled(boolean z) {
        this.mIsGestureEnabled = z;
    }

    @Override
    public void setPlayState(int i) {
        super.setPlayState(i);
        this.mCurPlayState = i;
    }

    @Override
    public void setPlayerState(int i) {
        super.setPlayerState(i);
        if (i == 10) {
            this.mCanSlide = this.mEnableInNormal;
        } else if (i == 11) {
            this.mCanSlide = true;
        }
    }

    public GestureVideoController(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.clickCount = 0;
        this.mIsGestureEnabled = false;
        this.mCanChangePosition = true;
        this.mIsDoubleTapTogglePlayEnabled = true;
    }

    public GestureVideoController(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.clickCount = 0;
        this.mIsGestureEnabled = false;
        this.mCanChangePosition = true;
        this.mIsDoubleTapTogglePlayEnabled = true;
    }
}
