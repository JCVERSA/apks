package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R$styleable;

public class MotionTelltales extends MockView {

    private Paint f7324l;

    MotionLayout f7325m;

    float[] f7326n;

    Matrix f7327o;

    int f7328p;

    int f7329q;

    float f7330r;

    public MotionTelltales(Context context) {
        super(context);
        this.f7324l = new Paint();
        this.f7326n = new float[2];
        this.f7327o = new Matrix();
        this.f7328p = 0;
        this.f7329q = -65281;
        this.f7330r = 0.25f;
        a(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MotionTelltales);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.MotionTelltales_telltales_tailColor) {
                    this.f7329q = typedArrayObtainStyledAttributes.getColor(index, this.f7329q);
                } else if (index == R$styleable.MotionTelltales_telltales_velocityMode) {
                    this.f7328p = typedArrayObtainStyledAttributes.getInt(index, this.f7328p);
                } else if (index == R$styleable.MotionTelltales_telltales_tailScale) {
                    this.f7330r = typedArrayObtainStyledAttributes.getFloat(index, this.f7330r);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f7324l.setColor(this.f7329q);
        this.f7324l.setStrokeWidth(5.0f);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getMatrix().invert(this.f7327o);
        if (this.f7325m == null) {
            ViewParent parent = getParent();
            if (parent instanceof MotionLayout) {
                this.f7325m = (MotionLayout) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        for (int i10 = 0; i10 < 5; i10++) {
            float f10 = fArr[i10];
            for (int i11 = 0; i11 < 5; i11++) {
                float f11 = fArr[i11];
                this.f7325m.getViewVelocity(this, f11, f10, this.f7326n, this.f7328p);
                this.f7327o.mapVectors(this.f7326n);
                float f12 = width * f11;
                float f13 = height * f10;
                float[] fArr2 = this.f7326n;
                float f14 = fArr2[0];
                float f15 = this.f7330r;
                float f16 = f13 - (fArr2[1] * f15);
                this.f7327o.mapVectors(fArr2);
                canvas.drawLine(f12, f13, f12 - (f14 * f15), f16, this.f7324l);
            }
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        postInvalidate();
    }

    public void setText(CharSequence charSequence) {
        this.f7283f = charSequence.toString();
        requestLayout();
    }

    public MotionTelltales(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7324l = new Paint();
        this.f7326n = new float[2];
        this.f7327o = new Matrix();
        this.f7328p = 0;
        this.f7329q = -65281;
        this.f7330r = 0.25f;
        a(context, attributeSet);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7324l = new Paint();
        this.f7326n = new float[2];
        this.f7327o = new Matrix();
        this.f7328p = 0;
        this.f7329q = -65281;
        this.f7330r = 0.25f;
        a(context, attributeSet);
    }
}
