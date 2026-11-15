package com.tn.lib.view.indicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import com.tn.lib.widget.R$styleable;

public class DrawableIndicator extends BaseIndicator {

    private Bitmap f40346d;

    private Bitmap f40347e;

    public DrawableIndicator(Context context, int i10, int i11) {
        super(context);
        this.f40346d = BitmapFactory.decodeResource(getResources(), i10);
        this.f40347e = BitmapFactory.decodeResource(getResources(), i11);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iD = this.f40340a.d();
        if (iD <= 1 || this.f40346d == null || this.f40347e == null) {
            return;
        }
        int i10 = 0;
        float width = 0.0f;
        while (i10 < iD) {
            canvas.drawBitmap(this.f40340a.a() == i10 ? this.f40347e : this.f40346d, width, 0.0f, this.f40341b);
            width += this.f40346d.getWidth() + this.f40340a.e();
            i10++;
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int iD = this.f40340a.d();
        if (iD <= 1) {
            return;
        }
        int i12 = iD - 1;
        setMeasuredDimension((this.f40347e.getWidth() * i12) + this.f40347e.getWidth() + (this.f40340a.e() * i12), Math.max(this.f40346d.getHeight(), this.f40347e.getHeight()));
    }

    public DrawableIndicator(Context context) {
        this(context, null);
    }

    public DrawableIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawableIndicator(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DrawableIndicator);
        if (typedArrayObtainStyledAttributes != null) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) typedArrayObtainStyledAttributes.getDrawable(R$styleable.DrawableIndicator_normal_drawable);
            BitmapDrawable bitmapDrawable2 = (BitmapDrawable) typedArrayObtainStyledAttributes.getDrawable(R$styleable.DrawableIndicator_selected_drawable);
            this.f40346d = bitmapDrawable.getBitmap();
            this.f40347e = bitmapDrawable2.getBitmap();
        }
    }
}
