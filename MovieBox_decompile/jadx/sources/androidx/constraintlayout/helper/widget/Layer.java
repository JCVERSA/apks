package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;

public class Layer extends ConstraintHelper {
    private boolean A;

    private float f6807j;

    private float f6808k;

    private float f6809l;

    ConstraintLayout f6810m;

    private float f6811n;

    private float f6812o;

    protected float f6813p;

    protected float f6814q;

    protected float f6815r;

    protected float f6816s;

    protected float f6817t;

    protected float f6818u;

    boolean f6819v;

    View[] f6820w;

    private float f6821x;

    private float f6822y;

    private boolean f6823z;

    public Layer(Context context) {
        super(context);
        this.f6807j = Float.NaN;
        this.f6808k = Float.NaN;
        this.f6809l = Float.NaN;
        this.f6811n = 1.0f;
        this.f6812o = 1.0f;
        this.f6813p = Float.NaN;
        this.f6814q = Float.NaN;
        this.f6815r = Float.NaN;
        this.f6816s = Float.NaN;
        this.f6817t = Float.NaN;
        this.f6818u = Float.NaN;
        this.f6819v = true;
        this.f6820w = null;
        this.f6821x = 0.0f;
        this.f6822y = 0.0f;
    }

    private void m() {
        int i10;
        if (this.f6810m == null || (i10 = this.f7344b) == 0) {
            return;
        }
        View[] viewArr = this.f6820w;
        if (viewArr == null || viewArr.length != i10) {
            this.f6820w = new View[i10];
        }
        for (int i11 = 0; i11 < this.f7344b; i11++) {
            this.f6820w[i11] = this.f6810m.getViewById(this.f7343a[i11]);
        }
    }

    private void n() {
        if (this.f6810m == null) {
            return;
        }
        if (this.f6820w == null) {
            m();
        }
        l();
        double radians = Float.isNaN(this.f6809l) ? 0.0d : Math.toRadians(this.f6809l);
        float fSin = (float) Math.sin(radians);
        float fCos = (float) Math.cos(radians);
        float f10 = this.f6811n;
        float f11 = f10 * fCos;
        float f12 = this.f6812o;
        float f13 = (-f12) * fSin;
        float f14 = f10 * fSin;
        float f15 = f12 * fCos;
        for (int i10 = 0; i10 < this.f7344b; i10++) {
            View view = this.f6820w[i10];
            int left = (view.getLeft() + view.getRight()) / 2;
            int top = (view.getTop() + view.getBottom()) / 2;
            float f16 = left - this.f6813p;
            float f17 = top - this.f6814q;
            float f18 = (((f11 * f16) + (f13 * f17)) - f16) + this.f6821x;
            float f19 = (((f16 * f14) + (f15 * f17)) - f17) + this.f6822y;
            view.setTranslationX(f18);
            view.setTranslationY(f19);
            view.setScaleY(this.f6812o);
            view.setScaleX(this.f6811n);
            if (!Float.isNaN(this.f6809l)) {
                view.setRotation(this.f6809l);
            }
        }
    }

    @Override
    protected void f(ConstraintLayout constraintLayout) {
        e(constraintLayout);
    }

    @Override
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        this.f7347e = false;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_Layout_android_visibility) {
                    this.f6823z = true;
                } else if (index == R$styleable.ConstraintLayout_Layout_android_elevation) {
                    this.A = true;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    protected void l() {
        if (this.f6810m == null) {
            return;
        }
        if (this.f6819v || Float.isNaN(this.f6813p) || Float.isNaN(this.f6814q)) {
            if (!Float.isNaN(this.f6807j) && !Float.isNaN(this.f6808k)) {
                this.f6814q = this.f6808k;
                this.f6813p = this.f6807j;
                return;
            }
            View[] viewArrJ = j(this.f6810m);
            int left = viewArrJ[0].getLeft();
            int top = viewArrJ[0].getTop();
            int right = viewArrJ[0].getRight();
            int bottom = viewArrJ[0].getBottom();
            for (int i10 = 0; i10 < this.f7344b; i10++) {
                View view = viewArrJ[i10];
                left = Math.min(left, view.getLeft());
                top = Math.min(top, view.getTop());
                right = Math.max(right, view.getRight());
                bottom = Math.max(bottom, view.getBottom());
            }
            this.f6815r = right;
            this.f6816s = bottom;
            this.f6817t = left;
            this.f6818u = top;
            if (Float.isNaN(this.f6807j)) {
                this.f6813p = (left + right) / 2;
            } else {
                this.f6813p = this.f6807j;
            }
            if (Float.isNaN(this.f6808k)) {
                this.f6814q = (top + bottom) / 2;
            } else {
                this.f6814q = this.f6808k;
            }
        }
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f6810m = (ConstraintLayout) getParent();
        if (this.f6823z || this.A) {
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i10 = 0; i10 < this.f7344b; i10++) {
                View viewById = this.f6810m.getViewById(this.f7343a[i10]);
                if (viewById != null) {
                    if (this.f6823z) {
                        viewById.setVisibility(visibility);
                    }
                    if (this.A && elevation > 0.0f) {
                        viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        d();
    }

    @Override
    public void setPivotX(float f10) {
        this.f6807j = f10;
        n();
    }

    @Override
    public void setPivotY(float f10) {
        this.f6808k = f10;
        n();
    }

    @Override
    public void setRotation(float f10) {
        this.f6809l = f10;
        n();
    }

    @Override
    public void setScaleX(float f10) {
        this.f6811n = f10;
        n();
    }

    @Override
    public void setScaleY(float f10) {
        this.f6812o = f10;
        n();
    }

    @Override
    public void setTranslationX(float f10) {
        this.f6821x = f10;
        n();
    }

    @Override
    public void setTranslationY(float f10) {
        this.f6822y = f10;
        n();
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        d();
    }

    @Override
    public void updatePostLayout(ConstraintLayout constraintLayout) {
        m();
        this.f6813p = Float.NaN;
        this.f6814q = Float.NaN;
        ConstraintWidget constraintWidgetB = ((ConstraintLayout.b) getLayoutParams()).b();
        constraintWidgetB.o1(0);
        constraintWidgetB.P0(0);
        l();
        layout(((int) this.f6817t) - getPaddingLeft(), ((int) this.f6818u) - getPaddingTop(), ((int) this.f6815r) + getPaddingRight(), ((int) this.f6816s) + getPaddingBottom());
        n();
    }

    @Override
    public void updatePreDraw(ConstraintLayout constraintLayout) {
        this.f6810m = constraintLayout;
        float rotation = getRotation();
        if (rotation != 0.0f) {
            this.f6809l = rotation;
        } else {
            if (Float.isNaN(this.f6809l)) {
                return;
            }
            this.f6809l = rotation;
        }
    }

    public Layer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6807j = Float.NaN;
        this.f6808k = Float.NaN;
        this.f6809l = Float.NaN;
        this.f6811n = 1.0f;
        this.f6812o = 1.0f;
        this.f6813p = Float.NaN;
        this.f6814q = Float.NaN;
        this.f6815r = Float.NaN;
        this.f6816s = Float.NaN;
        this.f6817t = Float.NaN;
        this.f6818u = Float.NaN;
        this.f6819v = true;
        this.f6820w = null;
        this.f6821x = 0.0f;
        this.f6822y = 0.0f;
    }

    public Layer(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f6807j = Float.NaN;
        this.f6808k = Float.NaN;
        this.f6809l = Float.NaN;
        this.f6811n = 1.0f;
        this.f6812o = 1.0f;
        this.f6813p = Float.NaN;
        this.f6814q = Float.NaN;
        this.f6815r = Float.NaN;
        this.f6816s = Float.NaN;
        this.f6817t = Float.NaN;
        this.f6818u = Float.NaN;
        this.f6819v = true;
        this.f6820w = null;
        this.f6821x = 0.0f;
        this.f6822y = 0.0f;
    }
}
