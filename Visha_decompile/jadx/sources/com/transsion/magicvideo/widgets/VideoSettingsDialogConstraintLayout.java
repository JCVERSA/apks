package com.transsion.magicvideo.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;

public class VideoSettingsDialogConstraintLayout extends ConstraintLayout {
    public boolean b;

    public VideoSettingsDialogConstraintLayout(@NonNull Context context) {
        super(context);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.b) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setHideAnimationState(boolean z) {
        this.b = z;
    }

    public VideoSettingsDialogConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
