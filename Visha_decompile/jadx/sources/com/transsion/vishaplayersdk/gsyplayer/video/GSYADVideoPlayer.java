package com.transsion.vishaplayersdk.gsyplayer.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoADManager;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoViewBridge;
import com.transsion.vishaplayersdk.gsyplayer.utils.CommonUtil;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView;

public class GSYADVideoPlayer extends StandardGSYVideoPlayer {
    protected boolean isFirstPrepared;
    protected TextView mADTime;
    protected View mJumpAd;

    public GSYADVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    public void lambda$init$0(View view) {
        if (getGSYVideoManager().listener() != null) {
            getGSYVideoManager().listener().onAutoCompletion();
        }
    }

    @Override
    public boolean backFromFull(Context context) {
        return GSYVideoADManager.backFromWindowFull(context);
    }

    public void changeAdUIState() {
        View view = this.mJumpAd;
        if (view != null) {
            view.setVisibility(this.isFirstPrepared ? 0 : 8);
        }
        TextView textView = this.mADTime;
        if (textView != null) {
            textView.setVisibility(this.isFirstPrepared ? 0 : 8);
        }
        if (this.mBottomContainer != null) {
            this.mBottomContainer.setBackgroundColor(this.isFirstPrepared ? 0 : getContext().getResources().getColor(R.color.bottom_container_bg));
        }
        TextView textView2 = this.mCurrentTimeTextView;
        if (textView2 != null) {
            textView2.setVisibility(this.isFirstPrepared ? 4 : 0);
        }
        TextView textView3 = this.mTotalTimeTextView;
        if (textView3 != null) {
            textView3.setVisibility(this.isFirstPrepared ? 4 : 0);
        }
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setVisibility(this.isFirstPrepared ? 4 : 0);
            this.mProgressBar.setEnabled(!this.isFirstPrepared);
        }
    }

    @Override
    public void cloneParams(GSYVideoWndView gSYVideoWndView, GSYVideoWndView gSYVideoWndView2) {
        super.cloneParams(gSYVideoWndView, gSYVideoWndView2);
        GSYADVideoPlayer gSYADVideoPlayer = (GSYADVideoPlayer) gSYVideoWndView2;
        gSYADVideoPlayer.isFirstPrepared = ((GSYADVideoPlayer) gSYVideoWndView).isFirstPrepared;
        gSYADVideoPlayer.changeAdUIState();
    }

    @Override
    public int getFullId() {
        return GSYVideoADManager.FULLSCREEN_ID;
    }

    @Override
    public GSYVideoViewBridge getGSYVideoManager() {
        GSYVideoADManager.instance().initContext(getContext().getApplicationContext());
        return GSYVideoADManager.instance();
    }

    @Override
    public int getLayoutId() {
        return R.layout.video_layout_ad;
    }

    @Override
    public int getSmallId() {
        return GSYVideoADManager.SMALL_ID;
    }

    @Override
    public void hideAllWidget() {
        if (this.isFirstPrepared) {
            return;
        }
        super.hideAllWidget();
    }

    @Override
    public void init(Context context) {
        super.init(context);
        this.mJumpAd = findViewById(R.id.jump_ad);
        this.mADTime = (TextView) findViewById(R.id.ad_time);
        View view = this.mJumpAd;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.lambda$init$0(view2);
                }
            });
        }
    }

    @Override
    public void onClick(View view) {
        if (view.getId() != R.id.start) {
            super.onClick(view);
        } else if (this.mCurrentState == 7) {
            clickStartIcon();
        }
    }

    @Override
    public void onPrepared() {
        super.onPrepared();
        this.isFirstPrepared = true;
        changeAdUIState();
    }

    @Override
    public void release() {
        super.release();
        TextView textView = this.mADTime;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    @Override
    public void releaseVideos() {
        GSYVideoADManager.releaseAllVideos();
    }

    public void removeFullWindowViewOnly() {
        ViewGroup viewGroup = (ViewGroup) CommonUtil.scanForActivity(getContext()).findViewById(android.R.id.content);
        View viewFindViewById = viewGroup.findViewById(getFullId());
        if (viewFindViewById != null && viewFindViewById.getParent() != null) {
            viewGroup.removeView((ViewGroup) viewFindViewById.getParent());
        }
        this.mIfCurrentIsFullscreen = false;
    }

    @Override
    public void setProgressAndTime(int i, int i2, int i3, int i4, boolean z) {
        super.setProgressAndTime(i, i2, i3, i4, z);
        TextView textView = this.mADTime;
        if (textView == null || i3 <= 0) {
            return;
        }
        textView.setText("" + ((i4 / 1000) - (i3 / 1000)));
    }

    @Override
    public void touchDoubleUp() {
    }

    @Override
    public void touchSurfaceMove(float f, float f2, float f3) {
        if (this.mChangePosition) {
            return;
        }
        super.touchSurfaceMove(f, f2, f3);
    }

    @Override
    public void touchSurfaceMoveFullLogic(float f, float f2) {
        int i = this.mThreshold;
        if (f > i || f2 > i) {
            int screenWidth = CommonUtil.getScreenWidth(getContext());
            if (f < this.mThreshold || Math.abs(screenWidth - this.mDownX) <= this.mSeekEndOffset) {
                super.touchSurfaceMoveFullLogic(f, f2);
            } else {
                this.mChangePosition = true;
                this.mDownPosition = getCurrentPositionWhenPlaying();
            }
        }
    }

    @Override
    public void touchSurfaceUp() {
        if (this.mChangePosition) {
            return;
        }
        super.touchSurfaceUp();
    }

    @Override
    public void updateStartImage() {
        ImageView imageView = this.mStartButton;
        if (imageView == null || imageView == null) {
            return;
        }
        ImageView imageView2 = this.mStartButton;
        int i = this.mCurrentState;
        if (i == 2) {
            imageView2.setImageResource(R.drawable.empty_drawable);
        } else if (i == 7) {
            imageView2.setImageResource(R.drawable.video_click_error_selector);
        } else {
            imageView2.setImageResource(R.drawable.empty_drawable);
        }
    }

    public GSYADVideoPlayer(Context context) {
        super(context);
    }

    public GSYADVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
