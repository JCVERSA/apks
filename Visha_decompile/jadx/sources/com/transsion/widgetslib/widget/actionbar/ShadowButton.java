package com.transsion.widgetslib.widget.actionbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageButton;
import com.transsion.widgetslib.R;

@SuppressLint({"AppCompatCustomView"})
public class ShadowButton extends ImageButton {
    public Paint b;
    public int c;
    public int d;
    public float e;
    public int f;
    public float g;
    public int h;
    public boolean i;

    public class a extends ViewOutlineProvider {
        public a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            int i = ShadowButton.this.h / 2;
            outline.setOval((ShadowButton.this.c / 2) - i, 0, (ShadowButton.this.c / 2) + i, ShadowButton.this.h);
        }
    }

    public ShadowButton(Context context) {
        this(context, null);
    }

    public final void c() {
        float f = this.e;
        setElevation((0.5f * f) + f);
        setOutlineSpotShadowColor(this.f);
        setOutlineAmbientShadowColor(Color.argb(Color.alpha(this.f) / 3, Color.red(this.f), Color.green(this.f), Color.blue(this.f)));
        invalidateOutline();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.i) {
            setMeasuredDimension((int) (size * 0.75f), (int) (((double) size2) * 0.75d));
        } else {
            setMeasuredDimension(size, size2);
        }
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i > 0) {
            this.c = i;
            this.d = i2;
            this.h = (int) (i - (this.g * 2.0f));
        }
        c();
    }

    public void setMultiWindowMode(boolean z) {
        this.i = z;
        if (z) {
            setShadowRadius(this.e * 0.75f);
        }
        Log.i("os_fb", "FloatButton, setMultiWindowMode() isMultiWin=" + z);
        requestLayout();
    }

    public void setShadowColor(int i) {
        this.f = i;
        c();
        invalidate();
    }

    public void setShadowRadius(float f) {
        this.e = f;
        c();
        invalidate();
    }

    public ShadowButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        float f = context.getResources().getDisplayMetrics().density;
        this.e = 3.0f * f;
        this.g = 4.0f * f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.osFloatButton, 0, 0);
        this.e = typedArrayObtainStyledAttributes.getDimension(R.styleable.osFloatButton_fbshadowRadius, this.e) - f;
        this.f = typedArrayObtainStyledAttributes.getColor(R.styleable.osFloatButton_fbshadowColor, 1711516148);
        typedArrayObtainStyledAttributes.recycle();
        if (getBackground() != null) {
            this.h = getBackground().getIntrinsicWidth();
        }
        Paint paint = new Paint();
        this.b = paint;
        paint.setAntiAlias(true);
        if (getBackgroundTintList() != null) {
            this.b.setColor(getBackgroundTintList().getDefaultColor());
        } else {
            this.b.setColor(0);
        }
        setOutlineProvider(new a());
        c();
    }
}
