package com.transsion.vishaplayersdk.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import defpackage.gz5;
import defpackage.pp3;

public class VideoRetreatForwardLayout extends RelativeLayout {
    private static final int SHOW_UI_TIMEOUT = 300;
    public static long STEP = 1000;
    private static final String TAG = "VideoPlayGuideLayout";
    private Button mForwardTipButton;
    private final Runnable mHideTipsUIRun;
    private boolean mInflated;
    private boolean mIsFullyGestural;
    private boolean mIsInMultiWindowMode;
    private boolean mIsLandscape;
    private boolean mIsRetreat;
    private RetreatForwardListener mListener;
    private int mPaddingTipEnd;
    private int mPaddingTipEndLand;
    private int mPaddingTipEndLandGestural;
    private int mPaddingTipStart;
    private int mPaddingTipStartLand;
    private boolean mResourcesInitialized;
    private Button mRetreatTipButton;
    private int mTime;

    public interface RetreatForwardListener {
        void forward(int i, boolean z);
    }

    public VideoRetreatForwardLayout(Context context) {
        super(context);
        this.mHideTipsUIRun = new Runnable() {
            @Override
            public void run() {
                VideoRetreatForwardLayout.this.hideTipsUI();
            }
        };
    }

    private void ensureInflated() {
        if (this.mInflated) {
            return;
        }
        this.mInflated = true;
        View viewInflate = View.inflate(getContext(), R.layout.video_retreat_forward_tip, this);
        this.mRetreatTipButton = (Button) viewInflate.findViewById(R.id.video_play_retreat_tip_bt);
        this.mForwardTipButton = (Button) viewInflate.findViewById(R.id.video_play_forward_tip_bt);
        initResources();
    }

    private void initResources() {
        if (this.mResourcesInitialized) {
            return;
        }
        this.mResourcesInitialized = true;
        this.mPaddingTipStart = getResources().getDimensionPixelSize(R.dimen.video_tips_start);
        this.mPaddingTipEnd = getResources().getDimensionPixelSize(R.dimen.video_tips_end);
        this.mPaddingTipStartLand = getResources().getDimensionPixelSize(R.dimen.video_tips_start_land);
        this.mPaddingTipEndLand = getResources().getDimensionPixelSize(R.dimen.video_tips_end_land);
        this.mPaddingTipEndLandGestural = getResources().getDimensionPixelSize(R.dimen.video_tips_end_land_gestural);
        if (pp3.x(getContext())) {
            int iG = pp3.g(getContext());
            int iH = pp3.h(getContext());
            this.mPaddingTipStart += iG;
            this.mPaddingTipEnd += iH;
        }
    }

    private void updateRetreatForwardLayout(boolean z) {
        int i;
        boolean z2 = this.mIsInMultiWindowMode;
        int i2 = (z2 || !z) ? this.mPaddingTipStart : this.mPaddingTipStartLand;
        if (z2 || !z) {
            i = this.mPaddingTipEnd;
        } else {
            i = this.mIsFullyGestural ? this.mPaddingTipEndLandGestural : this.mPaddingTipEndLand;
        }
        setPadding(i2, 0, i, 0);
    }

    public void hideRetreatOrForwardTip() {
        ensureInflated();
        GSYVideoManager.instance().seekTo(Math.min(Math.max(this.mIsRetreat ? GSYVideoManager.instance().getCurrentPosition() - (STEP * ((long) this.mTime)) : GSYVideoManager.instance().getCurrentPosition() + (STEP * ((long) this.mTime)), 0L), GSYVideoManager.instance().getDuration()));
        this.mTime = 0;
        this.mRetreatTipButton.setVisibility(8);
        this.mForwardTipButton.setVisibility(8);
    }

    public void hideTipsUI() {
        ThreadUtils.o().removeCallbacks(this.mHideTipsUIRun);
        gz5.b(!this.mIsRetreat, this.mTime);
        hideRetreatOrForwardTip();
    }

    public void multiWindowModeChanged(boolean z) {
        ensureInflated();
        this.mIsInMultiWindowMode = z;
        updateRetreatForwardLayout(this.mIsLandscape);
    }

    public void requestedOrientation(boolean z) {
        ensureInflated();
        this.mIsLandscape = z;
        updateRetreatForwardLayout(z);
    }

    public void setIsRetreat(boolean z) {
        ensureInflated();
        if (this.mIsRetreat != z) {
            this.mTime = 0;
        }
        this.mIsRetreat = z;
        showRetreatOrForwardTip();
    }

    public void setListener(RetreatForwardListener retreatForwardListener) {
        this.mListener = retreatForwardListener;
    }

    public void setNavigationMode(boolean z) {
        ensureInflated();
        this.mIsFullyGestural = z;
        updateRetreatForwardLayout(this.mIsLandscape);
    }

    public void showRetreatOrForwardTip() {
        ensureInflated();
        this.mRetreatTipButton.setVisibility(this.mIsRetreat ? 0 : 8);
        this.mForwardTipButton.setVisibility(this.mIsRetreat ? 8 : 0);
        int i = this.mTime + 10;
        this.mTime = i;
        RetreatForwardListener retreatForwardListener = this.mListener;
        if (retreatForwardListener != null) {
            retreatForwardListener.forward(i, !this.mIsRetreat);
        }
        if (this.mIsRetreat) {
            this.mRetreatTipButton.setText(getResources().getString(R.string.video_retreat_tip_new, Integer.valueOf(this.mTime)));
        } else {
            this.mForwardTipButton.setText(getResources().getString(R.string.video_forward_tip_new, Integer.valueOf(this.mTime)));
        }
        ThreadUtils.o().removeCallbacks(this.mHideTipsUIRun);
        ThreadUtils.o().postDelayed(this.mHideTipsUIRun, 300L);
    }

    public VideoRetreatForwardLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHideTipsUIRun = new Runnable() {
            @Override
            public void run() {
                VideoRetreatForwardLayout.this.hideTipsUI();
            }
        };
    }

    public VideoRetreatForwardLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHideTipsUIRun = new Runnable() {
            @Override
            public void run() {
                VideoRetreatForwardLayout.this.hideTipsUI();
            }
        };
    }
}
