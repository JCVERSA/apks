package com.transsion.vishaplayersdk.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.core.view.ViewCompat;
import com.transsion.vishaplayersdk.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class VerticalSeekBar extends AppCompatSeekBar {
    public static final int ROTATION_ANGLE_CW_270 = 270;
    public static final int ROTATION_ANGLE_CW_90 = 90;
    private boolean mIsDragging;
    private Method mMethodSetProgressFromUser;
    private int mRotationAngle;
    private Drawable mThumb_;

    public VerticalSeekBar(Context context) {
        super(context);
        this.mRotationAngle = 90;
        initialize(context, null, 0, 0);
    }

    private synchronized void _setProgressFromUser(int i, boolean z) {
        if (this.mMethodSetProgressFromUser == null) {
            try {
                Method declaredMethod = ProgressBar.class.getDeclaredMethod("setProgress", Integer.TYPE, Boolean.TYPE);
                declaredMethod.setAccessible(true);
                this.mMethodSetProgressFromUser = declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        Method method = this.mMethodSetProgressFromUser;
        if (method != null) {
            try {
                method.invoke(this, Integer.valueOf(i), Boolean.valueOf(z));
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
            }
        } else {
            super.setProgress(i);
        }
        refreshThumb();
    }

    private void attemptClaimDrag(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private VerticalSeekBarWrapper getWrapper() {
        ViewParent parent = getParent();
        if (parent instanceof VerticalSeekBarWrapper) {
            return (VerticalSeekBarWrapper) parent;
        }
        return null;
    }

    private void initialize(Context context, AttributeSet attributeSet, int i, int i2) {
        ViewCompat.setLayoutDirection(this, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VerticalSeekBar, i, i2);
            int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.VerticalSeekBar_seekBarRotation, 0);
            if (isValidRotationAngle(integer)) {
                this.mRotationAngle = integer;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private static boolean isValidRotationAngle(int i) {
        return i == 90 || i == 270;
    }

    private void onStartTrackingTouch() {
        this.mIsDragging = true;
    }

    private void onStopTrackingTouch() {
        this.mIsDragging = false;
    }

    private boolean onTouchEventTraditionalRotation(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            setPressed(true);
            onStartTrackingTouch();
            trackTouchEvent(motionEvent);
            attemptClaimDrag(true);
            invalidate();
        } else if (action == 1) {
            if (this.mIsDragging) {
                trackTouchEvent(motionEvent);
                onStopTrackingTouch();
                setPressed(false);
            } else {
                onStartTrackingTouch();
                trackTouchEvent(motionEvent);
                onStopTrackingTouch();
                attemptClaimDrag(false);
            }
            invalidate();
        } else if (action != 2) {
            if (action == 3) {
                if (this.mIsDragging) {
                    onStopTrackingTouch();
                    setPressed(false);
                }
                invalidate();
            }
        } else if (this.mIsDragging) {
            trackTouchEvent(motionEvent);
        }
        return true;
    }

    private boolean onTouchEventUseViewRotation(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (zOnTouchEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                attemptClaimDrag(true);
            } else if (action == 1 || action == 3) {
                attemptClaimDrag(false);
            }
        }
        return zOnTouchEvent;
    }

    private void refreshThumb() {
        onSizeChanged(super.getWidth(), super.getHeight(), 0, 0);
    }

    private void trackTouchEvent(MotionEvent motionEvent) {
        float f;
        int paddingLeft = super.getPaddingLeft();
        int paddingRight = super.getPaddingRight();
        int height = getHeight() - paddingLeft;
        int i = height - paddingRight;
        int y = (int) motionEvent.getY();
        int i2 = this.mRotationAngle;
        float f2 = 0.0f;
        if (i2 != 90) {
            f = i2 != 270 ? 0.0f : height - y;
        } else {
            f = y - paddingLeft;
        }
        if (f >= 0.0f && i != 0) {
            float f3 = i;
            f2 = f > f3 ? 1.0f : f / f3;
        }
        _setProgressFromUser((int) (f2 * getMax()), true);
    }

    public int getRotationAngle() {
        return this.mRotationAngle;
    }

    @Override
    public synchronized void onDraw(Canvas canvas) {
        try {
            if (!useViewRotation()) {
                int i = this.mRotationAngle;
                if (i == 90) {
                    canvas.rotate(90.0f);
                    canvas.translate(0.0f, -super.getWidth());
                } else if (i == 270) {
                    canvas.rotate(-90.0f);
                    canvas.translate(-super.getHeight(), 0.0f);
                }
            }
            super.onDraw(canvas);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0015  */
    /* JADX WARN: Code duplicated, block: B:16:0x0021  */
    /* JADX WARN: Code duplicated, block: B:18:0x002d  */
    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        int progress;
        if (isEnabled()) {
            int i2 = -1;
            boolean z = false;
            switch (i) {
                case 19:
                    if (this.mRotationAngle == 270) {
                        i2 = 1;
                    }
                    z = true;
                    if (z) {
                        progress = getProgress() + (i2 * getKeyProgressIncrement());
                        if (progress >= 0 && progress <= getMax()) {
                            _setProgressFromUser(progress, true);
                        }
                        return true;
                    }
                    break;
                case 20:
                    if (this.mRotationAngle == 90) {
                        i2 = 1;
                    }
                    z = true;
                    if (z) {
                        progress = getProgress() + (i2 * getKeyProgressIncrement());
                        if (progress >= 0) {
                            _setProgressFromUser(progress, true);
                        }
                        return true;
                    }
                    break;
                case 21:
                case 22:
                    return false;
                default:
                    i2 = 0;
                    if (z) {
                        progress = getProgress() + (i2 * getKeyProgressIncrement());
                        if (progress >= 0) {
                            _setProgressFromUser(progress, true);
                        }
                        return true;
                    }
                    break;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override
    public synchronized void onMeasure(int i, int i2) {
        try {
            if (useViewRotation()) {
                super.onMeasure(i, i2);
            } else {
                super.onMeasure(i2, i);
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (!isInEditMode() || layoutParams == null || layoutParams.height < 0) {
                    setMeasuredDimension(super.getMeasuredHeight(), super.getMeasuredWidth());
                } else {
                    setMeasuredDimension(super.getMeasuredHeight(), layoutParams.height);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        if (useViewRotation()) {
            super.onSizeChanged(i, i2, i3, i4);
        } else {
            super.onSizeChanged(i2, i, i4, i3);
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return useViewRotation() ? onTouchEventUseViewRotation(motionEvent) : onTouchEventTraditionalRotation(motionEvent);
    }

    @Override
    public synchronized void setProgress(int i) {
        super.setProgress(i);
        if (!useViewRotation()) {
            refreshThumb();
        }
    }

    public void setRotationAngle(int i) {
        if (!isValidRotationAngle(i)) {
            throw new IllegalArgumentException("Invalid angle specified :" + i);
        }
        if (this.mRotationAngle == i) {
            return;
        }
        this.mRotationAngle = i;
        if (!useViewRotation()) {
            requestLayout();
            return;
        }
        VerticalSeekBarWrapper wrapper = getWrapper();
        if (wrapper != null) {
            wrapper.applyViewRotation();
        }
    }

    @Override
    public void setThumb(Drawable drawable) {
        this.mThumb_ = drawable;
        super.setThumb(drawable);
    }

    public boolean useViewRotation() {
        return !isInEditMode();
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRotationAngle = 90;
        initialize(context, attributeSet, 0, 0);
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mRotationAngle = 90;
        initialize(context, attributeSet, i, 0);
    }
}
