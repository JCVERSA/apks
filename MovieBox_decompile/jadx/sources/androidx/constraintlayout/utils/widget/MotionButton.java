package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.R$styleable;

public class MotionButton extends AppCompatButton {

    private float f7289a;

    private float f7290b;

    private Path f7291c;

    ViewOutlineProvider f7292d;

    RectF f7293e;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            int width = MotionButton.this.getWidth();
            int height = MotionButton.this.getHeight();
            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * MotionButton.this.f7289a) / 2.0f);
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, MotionButton.this.getWidth(), MotionButton.this.getHeight(), MotionButton.this.f7290b);
        }
    }

    public MotionButton(Context context) {
        super(context);
        this.f7289a = 0.0f;
        this.f7290b = Float.NaN;
        init(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ImageFilterView_round) {
                    setRound(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public float getRound() {
        return this.f7290b;
    }

    public float getRoundPercent() {
        return this.f7289a;
    }

    public void setRound(float f10) {
        if (Float.isNaN(f10)) {
            this.f7290b = f10;
            float f11 = this.f7289a;
            this.f7289a = -1.0f;
            setRoundPercent(f11);
            return;
        }
        boolean z10 = this.f7290b != f10;
        this.f7290b = f10;
        if (f10 != 0.0f) {
            if (this.f7291c == null) {
                this.f7291c = new Path();
            }
            if (this.f7293e == null) {
                this.f7293e = new RectF();
            }
            if (this.f7292d == null) {
                b bVar = new b();
                this.f7292d = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f7293e.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f7291c.reset();
            Path path = this.f7291c;
            RectF rectF = this.f7293e;
            float f12 = this.f7290b;
            path.addRoundRect(rectF, f12, f12, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f10) {
        boolean z10 = this.f7289a != f10;
        this.f7289a = f10;
        if (f10 != 0.0f) {
            if (this.f7291c == null) {
                this.f7291c = new Path();
            }
            if (this.f7293e == null) {
                this.f7293e = new RectF();
            }
            if (this.f7292d == null) {
                a aVar = new a();
                this.f7292d = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f7289a) / 2.0f;
            this.f7293e.set(0.0f, 0.0f, width, height);
            this.f7291c.reset();
            this.f7291c.addRoundRect(this.f7293e, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public MotionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7289a = 0.0f;
        this.f7290b = Float.NaN;
        init(context, attributeSet);
    }

    public MotionButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7289a = 0.0f;
        this.f7290b = Float.NaN;
        init(context, attributeSet);
    }
}
