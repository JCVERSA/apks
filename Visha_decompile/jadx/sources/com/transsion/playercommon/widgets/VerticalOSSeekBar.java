package com.transsion.playercommon.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ProgressBar;
import androidx.core.view.ViewCompat;
import com.transsion.playercommon.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class VerticalOSSeekBar extends CustomOsSeekbar {
    public static final int ROTATION_ANGLE_CW_270 = 270;
    public static final int ROTATION_ANGLE_CW_90 = 90;
    public boolean c0;
    public Method d0;
    public int e0;

    public VerticalOSSeekBar(Context context) {
        super(context);
        this.e0 = 90;
        N(context, null, 0, 0);
    }

    public static boolean O(int i) {
        return i == 90 || i == 270;
    }

    private VerticalSeekBarWrapper getWrapper() {
        ViewParent parent = getParent();
        if (parent instanceof VerticalSeekBarWrapper) {
            return (VerticalSeekBarWrapper) parent;
        }
        return null;
    }

    public final synchronized void L(int i, boolean z) {
        if (this.d0 == null) {
            try {
                Method declaredMethod = ProgressBar.class.getDeclaredMethod("setProgress", Integer.TYPE, Boolean.TYPE);
                declaredMethod.setAccessible(true);
                this.d0 = declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        Method method = this.d0;
        if (method != null) {
            try {
                method.invoke(this, Integer.valueOf(i), Boolean.valueOf(z));
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
            }
        } else {
            super.setProgress(i);
        }
        T();
    }

    public final void M(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    public final void N(Context context, AttributeSet attributeSet, int i, int i2) {
        ViewCompat.setLayoutDirection(this, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VerticalSeekBar, i, i2);
            int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.VerticalSeekBar_seekBarRotation, 0);
            if (O(integer)) {
                this.e0 = integer;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void P() {
        this.c0 = true;
    }

    public final void Q() {
        this.c0 = false;
    }

    public final boolean R(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            setPressed(true);
            P();
            U(motionEvent);
            M(true);
            invalidate();
        } else if (action == 1) {
            if (this.c0) {
                U(motionEvent);
                Q();
                setPressed(false);
            } else {
                P();
                U(motionEvent);
                Q();
                M(false);
            }
            invalidate();
        } else if (action != 2) {
            if (action == 3) {
                if (this.c0) {
                    Q();
                    setPressed(false);
                }
                invalidate();
            }
        } else if (this.c0) {
            U(motionEvent);
        }
        return true;
    }

    public final boolean S(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (zOnTouchEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                M(true);
            } else if (action == 1 || action == 3) {
                M(false);
            }
        }
        return zOnTouchEvent;
    }

    public final void T() {
        onSizeChanged(super.getWidth(), super.getHeight(), 0, 0);
    }

    public final void U(MotionEvent motionEvent) {
        float f;
        int paddingLeft = super.getPaddingLeft();
        int paddingRight = super.getPaddingRight();
        int height = getHeight() - paddingLeft;
        int i = height - paddingRight;
        int y = (int) motionEvent.getY();
        int i2 = this.e0;
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
        L((int) (f2 * ((int) getMax())), true);
    }

    public boolean V() {
        return !isInEditMode();
    }

    public int getRotationAngle() {
        return this.e0;
    }

    @Override
    public synchronized void onDraw(Canvas canvas) {
        try {
            if (!V()) {
                int i = this.e0;
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
    /* JADX WARN: Code duplicated, block: B:18:0x0028  */
    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        int progress;
        if (isEnabled()) {
            int i2 = -1;
            boolean z = false;
            switch (i) {
                case 19:
                    if (this.e0 == 270) {
                        i2 = 1;
                    }
                    z = true;
                    if (z) {
                        progress = getProgress() + i2;
                        if (progress >= 0 && progress <= getMax()) {
                            L(progress, true);
                        }
                        return true;
                    }
                    break;
                case 20:
                    if (this.e0 == 90) {
                        i2 = 1;
                    }
                    z = true;
                    if (z) {
                        progress = getProgress() + i2;
                        if (progress >= 0) {
                            L(progress, true);
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
                        progress = getProgress() + i2;
                        if (progress >= 0) {
                            L(progress, true);
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
            if (V()) {
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
        if (V()) {
            super.onSizeChanged(i, i2, i3, i4);
        } else {
            super.onSizeChanged(i2, i, i4, i3);
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return V() ? S(motionEvent) : R(motionEvent);
    }

    @Override
    public void setProgress(float f) {
        super.setProgress(f);
    }

    public void setRotationAngle(int i) {
        if (!O(i)) {
            throw new IllegalArgumentException("Invalid angle specified :" + i);
        }
        if (this.e0 == i) {
            return;
        }
        this.e0 = i;
        if (!V()) {
            requestLayout();
            return;
        }
        VerticalSeekBarWrapper wrapper = getWrapper();
        if (wrapper != null) {
            wrapper.a();
        }
    }

    public VerticalOSSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e0 = 90;
        N(context, attributeSet, 0, 0);
    }

    public VerticalOSSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e0 = 90;
        N(context, attributeSet, i, 0);
    }
}
