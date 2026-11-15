package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.progressindicator.b;
import java.util.Arrays;

public abstract class BaseProgressIndicator<S extends com.google.android.material.progressindicator.b> extends ProgressBar {
    public static final int HIDE_ESCAPE = 3;
    public static final int HIDE_INWARD = 2;
    public static final int HIDE_NONE = 0;
    public static final int HIDE_OUTWARD = 1;
    public static final int SHOW_INWARD = 2;
    public static final int SHOW_NONE = 0;
    public static final int SHOW_OUTWARD = 1;

    static final int f28576o = R$style.Widget_MaterialComponents_ProgressIndicator;

    com.google.android.material.progressindicator.b f28577a;

    private int f28578b;

    private boolean f28579c;

    private boolean f28580d;

    private final int f28581e;

    private final int f28582f;

    private long f28583g;

    com.google.android.material.progressindicator.a f28584h;

    private boolean f28585i;

    private int f28586j;

    private final Runnable f28587k;

    private final Runnable f28588l;

    private final androidx.vectordrawable.graphics.drawable.b f28589m;

    private final androidx.vectordrawable.graphics.drawable.b f28590n;

    class a extends androidx.vectordrawable.graphics.drawable.b {
        a() {
        }

        @Override
        public void onAnimationEnd(Drawable drawable) {
            BaseProgressIndicator.this.setIndeterminate(false);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setProgressCompat(baseProgressIndicator.f28578b, BaseProgressIndicator.this.f28579c);
        }
    }

    class b extends androidx.vectordrawable.graphics.drawable.b {
        b() {
        }

        @Override
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            if (BaseProgressIndicator.this.f28585i) {
                return;
            }
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setVisibility(baseProgressIndicator.f28586j);
        }
    }

    protected BaseProgressIndicator(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(db.a.c(context, attributeSet, i10, f28576o), attributeSet, i10);
        this.f28583g = -1L;
        this.f28585i = false;
        this.f28586j = 4;
        this.f28587k = new Runnable() {
            @Override
            public void run() {
                BaseProgressIndicator.this.k();
            }
        };
        this.f28588l = new Runnable() {
            @Override
            public void run() {
                BaseProgressIndicator.this.j();
                BaseProgressIndicator.this.f28583g = -1L;
            }
        };
        this.f28589m = new a();
        this.f28590n = new b();
        Context context2 = getContext();
        this.f28577a = i(context2, attributeSet);
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.BaseProgressIndicator, i10, i11, new int[0]);
        this.f28581e = typedArrayI.getInt(R$styleable.BaseProgressIndicator_showDelay, -1);
        this.f28582f = Math.min(typedArrayI.getInt(R$styleable.BaseProgressIndicator_minHideDelay, -1), 1000);
        typedArrayI.recycle();
        this.f28584h = new com.google.android.material.progressindicator.a();
        this.f28580d = true;
    }

    @Nullable
    private h getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().w();
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().x();
    }

    public void j() {
        ((g) getCurrentDrawable()).q(false, false, true);
        if (m()) {
            setVisibility(4);
        }
    }

    public void k() {
        if (this.f28582f > 0) {
            this.f28583g = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    private boolean m() {
        return (getProgressDrawable() == null || !getProgressDrawable().isVisible()) && (getIndeterminateDrawable() == null || !getIndeterminateDrawable().isVisible());
    }

    private void n() {
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().v().d(this.f28589m);
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().m(this.f28590n);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().m(this.f28590n);
        }
    }

    private void o() {
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().s(this.f28590n);
            getIndeterminateDrawable().v().h();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().s(this.f28590n);
        }
    }

    @Override
    @Nullable
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.f28577a.f28598f;
    }

    @NonNull
    public int[] getIndicatorColor() {
        return this.f28577a.f28595c;
    }

    public int getIndicatorTrackGapSize() {
        return this.f28577a.f28599g;
    }

    public int getShowAnimationBehavior() {
        return this.f28577a.f28597e;
    }

    public int getTrackColor() {
        return this.f28577a.f28596d;
    }

    public int getTrackCornerRadius() {
        return this.f28577a.f28594b;
    }

    public int getTrackThickness() {
        return this.f28577a.f28593a;
    }

    protected void h(boolean z10) {
        if (this.f28580d) {
            ((g) getCurrentDrawable()).q(p(), false, z10);
        }
    }

    public void hide() {
        if (getVisibility() != 0) {
            removeCallbacks(this.f28587k);
            return;
        }
        removeCallbacks(this.f28588l);
        long jUptimeMillis = SystemClock.uptimeMillis() - this.f28583g;
        int i10 = this.f28582f;
        if (jUptimeMillis >= i10) {
            this.f28588l.run();
        } else {
            postDelayed(this.f28588l, ((long) i10) - jUptimeMillis);
        }
    }

    abstract com.google.android.material.progressindicator.b i(Context context, AttributeSet attributeSet);

    @Override
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    boolean l() {
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        n();
        if (p()) {
            k();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f28588l);
        removeCallbacks(this.f28587k);
        ((g) getCurrentDrawable()).i();
        o();
        super.onDetachedFromWindow();
    }

    @Override
    protected synchronized void onDraw(Canvas canvas) {
        try {
            int iSave = canvas.save();
            if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
                canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            }
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(iSave);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    protected synchronized void onMeasure(int i10, int i11) {
        try {
            h currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate == null) {
                return;
            }
            setMeasuredDimension(currentDrawingDelegate.f() < 0 ? View.getDefaultSize(getSuggestedMinimumWidth(), i10) : currentDrawingDelegate.f() + getPaddingLeft() + getPaddingRight(), currentDrawingDelegate.e() < 0 ? View.getDefaultSize(getSuggestedMinimumHeight(), i11) : currentDrawingDelegate.e() + getPaddingTop() + getPaddingBottom());
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        h(i10 == 0);
    }

    @Override
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        h(false);
    }

    boolean p() {
        return ViewCompat.isAttachedToWindow(this) && getWindowVisibility() == 0 && l();
    }

    public void setAnimatorDurationScaleProvider(@NonNull com.google.android.material.progressindicator.a aVar) {
        this.f28584h = aVar;
        if (getProgressDrawable() != null) {
            getProgressDrawable().f28632c = aVar;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f28632c = aVar;
        }
    }

    public void setHideAnimationBehavior(int i10) {
        this.f28577a.f28598f = i10;
        invalidate();
    }

    @Override
    public synchronized void setIndeterminate(boolean z10) {
        try {
            if (z10 == isIndeterminate()) {
                return;
            }
            g gVar = (g) getCurrentDrawable();
            if (gVar != null) {
                gVar.i();
            }
            super.setIndeterminate(z10);
            g gVar2 = (g) getCurrentDrawable();
            if (gVar2 != null) {
                gVar2.q(p(), false, false);
            }
            if ((gVar2 instanceof j) && p()) {
                ((j) gVar2).v().g();
            }
            this.f28585i = false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void setIndeterminateDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else {
            if (!(drawable instanceof j)) {
                throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
            }
            ((g) drawable).i();
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{com.google.android.material.color.b.b(getContext(), R$attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.f28577a.f28595c = iArr;
        getIndeterminateDrawable().v().c();
        invalidate();
    }

    public void setIndicatorTrackGapSize(int i10) {
        com.google.android.material.progressindicator.b bVar = this.f28577a;
        if (bVar.f28599g != i10) {
            bVar.f28599g = i10;
            bVar.e();
            invalidate();
        }
    }

    @Override
    public synchronized void setProgress(int i10) {
        if (isIndeterminate()) {
            return;
        }
        setProgressCompat(i10, false);
    }

    public void setProgressCompat(int i10, boolean z10) {
        if (!isIndeterminate()) {
            super.setProgress(i10);
            if (getProgressDrawable() == null || z10) {
                return;
            }
            getProgressDrawable().jumpToCurrentState();
            return;
        }
        if (getProgressDrawable() != null) {
            this.f28578b = i10;
            this.f28579c = z10;
            this.f28585i = true;
            if (!getIndeterminateDrawable().isVisible() || this.f28584h.a(getContext().getContentResolver()) == 0.0f) {
                this.f28589m.onAnimationEnd(getIndeterminateDrawable());
            } else {
                getIndeterminateDrawable().v().f();
            }
        }
    }

    @Override
    public void setProgressDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else {
            if (!(drawable instanceof f)) {
                throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
            }
            f fVar = (f) drawable;
            fVar.i();
            super.setProgressDrawable(fVar);
            fVar.B(getProgress() / getMax());
        }
    }

    public void setShowAnimationBehavior(int i10) {
        this.f28577a.f28597e = i10;
        invalidate();
    }

    public void setTrackColor(int i10) {
        com.google.android.material.progressindicator.b bVar = this.f28577a;
        if (bVar.f28596d != i10) {
            bVar.f28596d = i10;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i10) {
        com.google.android.material.progressindicator.b bVar = this.f28577a;
        if (bVar.f28594b != i10) {
            bVar.f28594b = Math.min(i10, bVar.f28593a / 2);
            invalidate();
        }
    }

    public void setTrackThickness(int i10) {
        com.google.android.material.progressindicator.b bVar = this.f28577a;
        if (bVar.f28593a != i10) {
            bVar.f28593a = i10;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i10) {
        if (i10 != 0 && i10 != 4 && i10 != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.f28586j = i10;
    }

    public void show() {
        if (this.f28581e <= 0) {
            this.f28587k.run();
        } else {
            removeCallbacks(this.f28587k);
            postDelayed(this.f28587k, this.f28581e);
        }
    }

    @Override
    @Nullable
    public j getIndeterminateDrawable() {
        return (j) super.getIndeterminateDrawable();
    }

    @Override
    @Nullable
    public f getProgressDrawable() {
        return (f) super.getProgressDrawable();
    }
}
