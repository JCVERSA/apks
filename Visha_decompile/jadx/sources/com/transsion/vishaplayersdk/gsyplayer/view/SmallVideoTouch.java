package com.transsion.vishaplayersdk.gsyplayer.view;

import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView;

public class SmallVideoTouch implements View.OnTouchListener {
    private int _xDelta;
    private int _yDelta;
    private int mDownX;
    private int mDownY;
    private GSYVideoWndView mGsyBaseVideoPlayer;
    private int mMarginLeft;
    private int mMarginTop;

    public SmallVideoTouch(GSYVideoWndView gSYVideoWndView, int i, int i2) {
        this.mMarginLeft = i;
        this.mMarginTop = i2;
        this.mGsyBaseVideoPlayer = gSYVideoWndView;
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.mDownX = rawX;
            this.mDownY = rawY;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mGsyBaseVideoPlayer.getLayoutParams();
            this._xDelta = rawX - layoutParams.leftMargin;
            this._yDelta = rawY - layoutParams.topMargin;
        } else {
            if (action == 1) {
                return Math.abs(this.mDownY - rawY) >= 5 || Math.abs(this.mDownX - rawX) >= 5;
            }
            if (action == 2) {
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mGsyBaseVideoPlayer.getLayoutParams();
                int i = rawX - this._xDelta;
                layoutParams2.leftMargin = i;
                int i2 = rawY - this._yDelta;
                layoutParams2.topMargin = i2;
                int i3 = this.mMarginLeft;
                if (i >= i3) {
                    layoutParams2.leftMargin = i3;
                }
                int i4 = this.mMarginTop;
                if (i2 >= i4) {
                    layoutParams2.topMargin = i4;
                }
                if (layoutParams2.leftMargin <= 0) {
                    layoutParams2.leftMargin = 0;
                }
                if (layoutParams2.topMargin <= 0) {
                    layoutParams2.topMargin = 0;
                }
                this.mGsyBaseVideoPlayer.setLayoutParams(layoutParams2);
            }
        }
        return false;
    }
}
