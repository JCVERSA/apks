package com.transsion.widgets.ScaleTouchView;

import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import androidx.annotation.NonNull;

public interface OnScaleSurfaceListener {
    public static final int MODE_DRAGING = 2;
    public static final int MODE_DRAGING_2 = 3;
    public static final int MODE_OUT = -1;
    public static final int MODE_SCALEING = 1;

    void controlVideoRect(float[] fArr);

    int getScaleMode();

    void hideScaleStateView();

    boolean isInScaleMode();

    boolean isTouchDrag(MotionEvent motionEvent);

    boolean isValueRestored();

    void onDragStatusChange(boolean z);

    boolean onFling(@NonNull MotionEvent motionEvent, @NonNull MotionEvent motionEvent2, float f, float f2);

    void onPointerCount(int i);

    boolean onRestoreClick();

    boolean onScale(ScaleGestureDetector scaleGestureDetector);

    boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector);

    void onScaleEnd(ScaleGestureDetector scaleGestureDetector);

    boolean onScroll(@NonNull MotionEvent motionEvent, @NonNull MotionEvent motionEvent2, float f, float f2);
}
