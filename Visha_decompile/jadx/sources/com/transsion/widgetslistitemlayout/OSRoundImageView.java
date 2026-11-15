package com.transsion.widgetslistitemlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import java.util.Arrays;

public class OSRoundImageView extends AppCompatImageView {
    public final Path b;
    public final RectF c;
    public final float[] d;
    public float e;
    public boolean f;

    public OSRoundImageView(Context context) {
        super(context);
        this.b = new Path();
        this.c = new RectF();
        this.d = new float[8];
        init(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSRoundImageView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.OSRoundImageView_os_riv_radius) {
                    this.e = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        float f = this.e;
        boolean z = f > 0.0f;
        this.f = z;
        if (z) {
            Arrays.fill(this.d, f);
        }
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.f) {
            this.b.reset();
            this.c.set(0.0f, 0.0f, getWidth(), getHeight());
            this.b.addRoundRect(this.c, this.d, Path.Direction.CCW);
            canvas.clipPath(this.b);
        }
        super.draw(canvas);
    }

    public void setRadius(float f) {
        if (f < 0.0f) {
            return;
        }
        this.f = true;
        this.e = f;
        Arrays.fill(this.d, f);
        invalidate();
    }

    public OSRoundImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Path();
        this.c = new RectF();
        this.d = new float[8];
        init(context, attributeSet);
    }

    public OSRoundImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new Path();
        this.c = new RectF();
        this.d = new float[8];
        init(context, attributeSet);
    }
}
