package com.yalantis.ucrop.view.widget;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.yalantis.ucrop.model.AspectRatio;
import java.util.Locale;

public class AspectRatioTextView extends AppCompatTextView {
    public final float c;
    public final Rect d;
    public Paint e;
    public int f;
    public float g;
    public String h;
    public float i;
    public float j;

    public AspectRatioTextView(Context context) {
        this(context, null);
    }

    public final void a(int i) {
        Paint paint = this.e;
        if (paint != null) {
            paint.setColor(i);
        }
        setTextColor(new ColorStateList(new int[][]{new int[]{R.attr.state_selected}, new int[]{0}}, new int[]{i, ContextCompat.getColor(getContext(), com.yalantis.ucrop.R.color.ucrop_color_widget)}));
    }

    public final void b(TypedArray typedArray) {
        setGravity(1);
        this.h = typedArray.getString(com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_title);
        this.i = typedArray.getFloat(com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_x, 0.0f);
        float f = typedArray.getFloat(com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_y, 0.0f);
        this.j = f;
        float f2 = this.i;
        if (f2 == 0.0f || f == 0.0f) {
            this.g = 0.0f;
        } else {
            this.g = f2 / f;
        }
        this.f = getContext().getResources().getDimensionPixelSize(com.yalantis.ucrop.R.dimen.ucrop_size_dot_scale_text_view);
        Paint paint = new Paint(1);
        this.e = paint;
        paint.setStyle(Paint.Style.FILL);
        c();
        a(getResources().getColor(com.yalantis.ucrop.R.color.ucrop_color_widget_active));
        typedArray.recycle();
    }

    public final void c() {
        if (TextUtils.isEmpty(this.h)) {
            setText(String.format(Locale.US, "%d:%d", Integer.valueOf((int) this.i), Integer.valueOf((int) this.j)));
        } else {
            setText(this.h);
        }
    }

    public final void d() {
        if (this.g != 0.0f) {
            float f = this.i;
            float f2 = this.j;
            this.i = f2;
            this.j = f;
            this.g = f2 / f;
        }
    }

    public float getAspectRatio(boolean z) {
        if (z) {
            d();
            c();
        }
        return this.g;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isSelected()) {
            canvas.getClipBounds(this.d);
            Rect rect = this.d;
            float f = (rect.right - rect.left) / 2.0f;
            float f2 = rect.bottom - (rect.top / 2.0f);
            int i = this.f;
            canvas.drawCircle(f, f2 - (i * 1.5f), i / 2.0f, this.e);
        }
    }

    public void setActiveColor(@ColorInt int i) {
        a(i);
        invalidate();
    }

    public void setAspectRatio(@NonNull AspectRatio aspectRatio) {
        this.h = aspectRatio.getAspectRatioTitle();
        this.i = aspectRatio.getAspectRatioX();
        float aspectRatioY = aspectRatio.getAspectRatioY();
        this.j = aspectRatioY;
        float f = this.i;
        if (f == 0.0f || aspectRatioY == 0.0f) {
            this.g = 0.0f;
        } else {
            this.g = f / aspectRatioY;
        }
        c();
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @TargetApi(21)
    public AspectRatioTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = 1.5f;
        this.d = new Rect();
        b(context.obtainStyledAttributes(attributeSet, com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView));
    }
}
