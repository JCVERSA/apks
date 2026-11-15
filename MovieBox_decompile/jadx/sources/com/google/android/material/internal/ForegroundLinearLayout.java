package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.GravityCompat;
import com.google.android.material.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKError;

public class ForegroundLinearLayout extends LinearLayoutCompat {

    private Drawable f28268a;

    private final Rect f28269b;

    private final Rect f28270c;

    private int f28271d;

    protected boolean f28272e;

    boolean f28273f;

    public ForegroundLinearLayout(@NonNull Context context) {
        this(context, null);
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f28268a;
        if (drawable != null) {
            if (this.f28273f) {
                this.f28273f = false;
                Rect rect = this.f28269b;
                Rect rect2 = this.f28270c;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f28272e) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f28271d, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override
    @TargetApi(21)
    public void drawableHotspotChanged(float f10, float f11) {
        super.drawableHotspotChanged(f10, f11);
        Drawable drawable = this.f28268a;
        if (drawable != null) {
            drawable.setHotspot(f10, f11);
        }
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f28268a;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f28268a.setState(getDrawableState());
    }

    @Override
    @Nullable
    public Drawable getForeground() {
        return this.f28268a;
    }

    @Override
    public int getForegroundGravity() {
        return this.f28271d;
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f28268a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f28273f = z10 | this.f28273f;
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f28273f = true;
    }

    @Override
    public void setForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f28268a;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f28268a);
            }
            this.f28268a = drawable;
            this.f28273f = true;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f28271d == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override
    public void setForegroundGravity(int i10) {
        if (this.f28271d != i10) {
            if ((8388615 & i10) == 0) {
                i10 |= GravityCompat.START;
            }
            if ((i10 & 112) == 0) {
                i10 |= 48;
            }
            this.f28271d = i10;
            if (i10 == 119 && this.f28268a != null) {
                this.f28268a.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f28268a;
    }

    public ForegroundLinearLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForegroundLinearLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f28269b = new Rect();
        this.f28270c = new Rect();
        this.f28271d = Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE;
        this.f28272e = true;
        this.f28273f = false;
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.ForegroundLinearLayout, i10, 0, new int[0]);
        this.f28271d = typedArrayI.getInt(R$styleable.ForegroundLinearLayout_android_foregroundGravity, this.f28271d);
        Drawable drawable = typedArrayI.getDrawable(R$styleable.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f28272e = typedArrayI.getBoolean(R$styleable.ForegroundLinearLayout_foregroundInsidePadding, true);
        typedArrayI.recycle();
    }
}
