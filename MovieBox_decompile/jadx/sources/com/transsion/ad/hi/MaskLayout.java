package com.transsion.ad.hi;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.ad.R$styleable;

public class MaskLayout extends FrameLayout {

    Drawable f41094a;

    Paint f41095b;

    public MaskLayout(@NonNull Context context) {
        this(context, null);
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.f41094a == null) {
            super.draw(canvas);
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            canvas.saveLayer(0.0f, 0.0f, measuredWidth, measuredHeight, null);
        } else {
            canvas.saveLayer(0.0f, 0.0f, measuredWidth, measuredHeight, null, 31);
        }
        this.f41094a.setBounds(getPaddingLeft(), getPaddingTop(), measuredWidth - getPaddingRight(), measuredHeight - getPaddingBottom());
        this.f41094a.draw(canvas);
        if (i10 >= 26) {
            canvas.saveLayer(0.0f, 0.0f, measuredWidth, measuredHeight, this.f41095b);
        } else {
            canvas.saveLayer(0.0f, 0.0f, measuredWidth, measuredHeight, this.f41095b, 31);
        }
        super.draw(canvas);
        canvas.restore();
        canvas.restore();
    }

    public MaskLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaskLayout);
        this.f41094a = typedArrayObtainStyledAttributes.getDrawable(R$styleable.MaskLayout_xhg_mask_drawable);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.f41095b = paint;
        paint.setFilterBitmap(true);
        this.f41095b.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        setWillNotDraw(false);
    }
}
