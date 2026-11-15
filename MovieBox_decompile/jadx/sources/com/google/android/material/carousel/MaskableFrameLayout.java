package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cb.n;
import cb.q;
import cb.r;
import com.google.android.material.carousel.MaskableFrameLayout;

public class MaskableFrameLayout extends FrameLayout implements h, q {

    private float f27772a;

    private final RectF f27773b;

    private n f27774c;

    private final r f27775d;

    private Boolean f27776e;

    public MaskableFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    public void c(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    public static cb.d d(cb.d dVar) {
        return dVar instanceof cb.a ? cb.c.b((cb.a) dVar) : dVar;
    }

    private void e() {
        this.f27775d.f(this, this.f27773b);
    }

    private void f() {
        if (this.f27772a != -1.0f) {
            float fB = qa.a.b(0.0f, getWidth() / 2.0f, 0.0f, 1.0f, this.f27772a);
            setMaskRectF(new RectF(fB, 0.0f, getWidth() - fB, getHeight()));
        }
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        this.f27775d.e(canvas, new ra.a.InterfaceC0869a() {
            @Override
            public final void a(Canvas canvas2) {
                this.f71978a.c(canvas2);
            }
        });
    }

    @Override
    public void getFocusedRect(Rect rect) {
        RectF rectF = this.f27773b;
        rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    @NonNull
    public RectF getMaskRectF() {
        return this.f27773b;
    }

    @Deprecated
    public float getMaskXPercentage() {
        return this.f27772a;
    }

    @NonNull
    public n getShapeAppearanceModel() {
        return this.f27774c;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Boolean bool = this.f27776e;
        if (bool != null) {
            this.f27775d.h(this, bool.booleanValue());
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        this.f27776e = Boolean.valueOf(this.f27775d.c());
        this.f27775d.h(this, true);
        super.onDetachedFromWindow();
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (this.f27772a != -1.0f) {
            f();
        }
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f27773b.isEmpty() && motionEvent.getAction() == 0) {
            if (!this.f27773b.contains(motionEvent.getX(), motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setForceCompatClipping(boolean z10) {
        this.f27775d.h(this, z10);
    }

    @Override
    public void setMaskRectF(@NonNull RectF rectF) {
        this.f27773b.set(rectF);
        e();
    }

    @Deprecated
    public void setMaskXPercentage(float f10) {
        float fA = d1.a.a(f10, 0.0f, 1.0f);
        if (this.f27772a != fA) {
            this.f27772a = fA;
            f();
        }
    }

    public void setOnMaskChangedListener(@Nullable sa.e eVar) {
    }

    @Override
    public void setShapeAppearanceModel(@NonNull n nVar) {
        n nVarY = nVar.y(new n.c() {
            @Override
            public final cb.d a(cb.d dVar) {
                return MaskableFrameLayout.d(dVar);
            }
        });
        this.f27774c = nVarY;
        this.f27775d.g(this, nVarY);
    }

    public MaskableFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaskableFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f27772a = -1.0f;
        this.f27773b = new RectF();
        this.f27775d = r.a(this);
        this.f27776e = null;
        setShapeAppearanceModel(n.f(context, attributeSet, i10, 0, 0).m());
    }
}
