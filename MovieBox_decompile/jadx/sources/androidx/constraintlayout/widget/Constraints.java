package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;

public class Constraints extends ViewGroup {
    public static final String TAG = "Constraints";

    b f7411a;

    public Constraints(Context context) {
        super(context);
        super.setVisibility(8);
    }

    private void b(AttributeSet attributeSet) {
        Log.v(TAG, " ################# init");
    }

    @Override
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    public b getConstraintSet() {
        if (this.f7411a == null) {
            this.f7411a = new b();
        }
        this.f7411a.r(this);
        return this.f7411a;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
    }

    @Override
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public Constraints(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(attributeSet);
        super.setVisibility(8);
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.b(layoutParams);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        b(attributeSet);
        super.setVisibility(8);
    }

    public static class a extends ConstraintLayout.b {
        public float A0;
        public float B0;
        public float C0;
        public float D0;
        public float E0;
        public float F0;
        public float G0;
        public float H0;
        public float I0;
        public float J0;

        public float f7412x0;

        public boolean f7413y0;

        public float f7414z0;

        public a(int i10, int i11) {
            super(i10, i11);
            this.f7412x0 = 1.0f;
            this.f7413y0 = false;
            this.f7414z0 = 0.0f;
            this.A0 = 0.0f;
            this.B0 = 0.0f;
            this.C0 = 0.0f;
            this.D0 = 1.0f;
            this.E0 = 1.0f;
            this.F0 = 0.0f;
            this.G0 = 0.0f;
            this.H0 = 0.0f;
            this.I0 = 0.0f;
            this.J0 = 0.0f;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f7412x0 = 1.0f;
            this.f7413y0 = false;
            this.f7414z0 = 0.0f;
            this.A0 = 0.0f;
            this.B0 = 0.0f;
            this.C0 = 0.0f;
            this.D0 = 1.0f;
            this.E0 = 1.0f;
            this.F0 = 0.0f;
            this.G0 = 0.0f;
            this.H0 = 0.0f;
            this.I0 = 0.0f;
            this.J0 = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ConstraintSet);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintSet_android_alpha) {
                    this.f7412x0 = typedArrayObtainStyledAttributes.getFloat(index, this.f7412x0);
                } else if (index == R$styleable.ConstraintSet_android_elevation) {
                    this.f7414z0 = typedArrayObtainStyledAttributes.getFloat(index, this.f7414z0);
                    this.f7413y0 = true;
                } else if (index == R$styleable.ConstraintSet_android_rotationX) {
                    this.B0 = typedArrayObtainStyledAttributes.getFloat(index, this.B0);
                } else if (index == R$styleable.ConstraintSet_android_rotationY) {
                    this.C0 = typedArrayObtainStyledAttributes.getFloat(index, this.C0);
                } else if (index == R$styleable.ConstraintSet_android_rotation) {
                    this.A0 = typedArrayObtainStyledAttributes.getFloat(index, this.A0);
                } else if (index == R$styleable.ConstraintSet_android_scaleX) {
                    this.D0 = typedArrayObtainStyledAttributes.getFloat(index, this.D0);
                } else if (index == R$styleable.ConstraintSet_android_scaleY) {
                    this.E0 = typedArrayObtainStyledAttributes.getFloat(index, this.E0);
                } else if (index == R$styleable.ConstraintSet_android_transformPivotX) {
                    this.F0 = typedArrayObtainStyledAttributes.getFloat(index, this.F0);
                } else if (index == R$styleable.ConstraintSet_android_transformPivotY) {
                    this.G0 = typedArrayObtainStyledAttributes.getFloat(index, this.G0);
                } else if (index == R$styleable.ConstraintSet_android_translationX) {
                    this.H0 = typedArrayObtainStyledAttributes.getFloat(index, this.H0);
                } else if (index == R$styleable.ConstraintSet_android_translationY) {
                    this.I0 = typedArrayObtainStyledAttributes.getFloat(index, this.I0);
                } else if (index == R$styleable.ConstraintSet_android_translationZ) {
                    this.J0 = typedArrayObtainStyledAttributes.getFloat(index, this.J0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
