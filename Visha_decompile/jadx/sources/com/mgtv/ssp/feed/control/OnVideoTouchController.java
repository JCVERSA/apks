package com.mgtv.ssp.feed.control;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgtv.ssp.control.BaseVideoController;
import com.mgtv.ssp.control.GestureVideoController;

public abstract class OnVideoTouchController extends GestureVideoController implements View.OnTouchListener {
    public OnVideoTouchController(@NonNull Context context) {
        super(context);
    }

    @Override
    public void initView() {
        super.initView();
        setOnTouchListener(this);
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        this.clickCount++;
        this.handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                if (((GestureVideoController) OnVideoTouchController.this).clickCount == 1) {
                    if (OnVideoTouchController.this.isInPlaybackState()) {
                        ((BaseVideoController) OnVideoTouchController.this).mControlWrapper.a();
                    }
                } else if (((GestureVideoController) OnVideoTouchController.this).clickCount == 2 && ((GestureVideoController) OnVideoTouchController.this).mIsDoubleTapTogglePlayEnabled && !OnVideoTouchController.this.isLocked() && OnVideoTouchController.this.isInPlaybackState()) {
                    OnVideoTouchController.this.togglePlay();
                }
                ((GestureVideoController) OnVideoTouchController.this).handler.removeCallbacksAndMessages(null);
                ((GestureVideoController) OnVideoTouchController.this).clickCount = 0;
            }
        }, GestureVideoController.timeout);
        return false;
    }

    public OnVideoTouchController(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public OnVideoTouchController(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
