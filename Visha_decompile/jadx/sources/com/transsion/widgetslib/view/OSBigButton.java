package com.transsion.widgetslib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatButton;
import com.transsion.widgetslib.R;
import com.transsion.widgetsmotionlibrary.b;
import defpackage.m97;
import defpackage.olb;
import defpackage.q47;

public class OSBigButton extends AppCompatButton {
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public float h;
    public float i;
    public boolean j;
    public Context k;
    public b l;
    public boolean m;
    public int n;
    public a o;

    public interface a {
        void onMeasure(int i, int i2);
    }

    public OSBigButton(Context context) {
        super(context);
        this.b = 15;
        this.c = 13;
        this.d = 96;
        this.e = 44;
        this.f = 2;
        this.g = 8;
        this.h = 0.0f;
        this.i = -0.05f;
        this.j = false;
        this.m = false;
        this.k = context;
        b(context, null, 0);
    }

    private void b(Context context, AttributeSet attributeSet, int i) {
        setTextSize(this.b);
        setLetterSpacing(this.h);
        setEllipsize(TextUtils.TruncateAt.END);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSBigButton, i, 0);
            this.m = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSBigButton_isMediumButton, false);
            typedArrayObtainStyledAttributes.recycle();
            if (!this.m) {
                TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.minHeight}, i, 0);
                int dimensionPixelSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, -1);
                typedArrayObtainStyledAttributes2.recycle();
                if (dimensionPixelSize > 0 && Math.abs(dimensionPixelSize - context.getResources().getDimensionPixelSize(R.dimen.os_btn_middle_height)) <= 1) {
                    this.m = true;
                }
            }
        }
        d();
        this.n = context.getResources().getDimensionPixelOffset(R.dimen.os_space150);
        b bVar = new b();
        this.l = bVar;
        bVar.d(this, 0.95f, olb.m(getContext(), R.attr.os_press_secondary_color_attr, R.color.os_press_secondary_color), 200L, 200L, new m97(), 1, null, getResources().getDimension(R.dimen.os_dimen_two_line_btn_radius), true);
    }

    public final void a() {
        if (isTextFullyVisibleInButton(getText(), this.b, this.h)) {
            setLetterSpacing(this.h);
            setTextSize(this.b);
        } else if (isTextFullyVisibleInButton(getText(), this.b, this.i)) {
            setLetterSpacing(this.i);
            setTextSize(this.b);
        } else {
            setLetterSpacing(this.h);
            setTextSize(this.c);
        }
    }

    public final void c(int i) {
        if (i <= 0) {
            return;
        }
        float f = i / 2.0f;
        e(getBackground(), f);
        e(getForeground(), f);
    }

    public final void d() {
        this.e = olb.D0(getContext(), getContext().getResources().getDimension(this.m ? R.dimen.os_btn_middle_height : R.dimen.os_btn_min_height));
    }

    public final void e(Drawable drawable, float f) {
        Drawable[] children;
        if (drawable == null) {
            return;
        }
        if (drawable instanceof GradientDrawable) {
            ((GradientDrawable) drawable).setCornerRadius(f);
            return;
        }
        int i = 0;
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = ((DrawableContainer) drawable).getConstantState();
            if (!(constantState instanceof DrawableContainer.DrawableContainerState) || (children = ((DrawableContainer.DrawableContainerState) constantState).getChildren()) == null) {
                return;
            }
            int length = children.length;
            while (i < length) {
                e(children[i], f);
                i++;
            }
            return;
        }
        if (!(drawable instanceof LayerDrawable)) {
            if (drawable instanceof InsetDrawable) {
                e(((InsetDrawable) drawable).getDrawable(), f);
            }
        } else {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            while (i < numberOfLayers) {
                e(layerDrawable.getDrawable(i), f);
                i++;
            }
        }
    }

    @Deprecated
    public int getMaxButtonHeightDp() {
        return this.d;
    }

    public float getMaxLetterSpacing() {
        return this.h;
    }

    public int getMaxTextLine() {
        return this.f;
    }

    public int getMaxTextSizeSp() {
        return this.b;
    }

    public int getMinButtonHeightDp() {
        return this.e;
    }

    public float getMinLetterSpacing() {
        return this.i;
    }

    public int getMinTextSizeSp() {
        return this.c;
    }

    public int getPaddingCorrection() {
        return this.g;
    }

    public boolean isMediumButton() {
        return this.m;
    }

    public boolean isTextFullyVisibleInButton(CharSequence charSequence, float f, float f2) {
        return isTextFullyVisibleInButton(charSequence, f, f2, this.f);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        boolean z = this.f > 1 && getLineCount() == this.f;
        int iH = olb.h(getContext(), this.e);
        int iH2 = olb.h(getContext(), this.d);
        if (z) {
            a();
            super.onMeasure(i, i2);
            int measuredHeight = getMeasuredHeight();
            int i3 = (this.n * 2) + measuredHeight;
            setMeasuredDimension(getMeasuredWidth(), i3 > iH2 ? Math.min(Math.max(measuredHeight, iH), iH2) : Math.min(Math.max(i3, iH), iH2));
        } else {
            setMeasuredDimension(getMeasuredWidth(), iH);
        }
        a aVar = this.o;
        if (aVar != null) {
            aVar.onMeasure(i, i2);
        }
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        c(i2);
    }

    public void registerOnMeasureListener(a aVar) {
        this.o = aVar;
    }

    @Deprecated
    public void setMaxButtonHeightDp(int i) {
        this.d = i;
    }

    public void setMaxLetterSpacing(float f) {
        this.h = f;
    }

    public void setMaxTextLine(int i) {
        this.f = i;
        setMaxLines(i);
    }

    public void setMaxTextSizeSp(int i) {
        this.b = i;
    }

    public void setMediumButton(boolean z) {
        if (this.m != z) {
            this.m = z;
            d();
            requestLayout();
        }
    }

    public void setMinButtonHeightDp(int i) {
        this.e = i;
    }

    public void setMinLetterSpacing(float f) {
        this.i = f;
    }

    public void setMinTextSizeSp(int i) {
        this.c = i;
    }

    public void setPaddingCorrection(int i) {
        this.g = i;
    }

    @Override
    public void setTextSize(float f) {
        if (olb.q0(getContext())) {
            setTextSize(0, f * 3.0f);
        } else {
            setTextSize(2, f);
        }
    }

    public void unregisterOnMeasureListener() {
        this.o = null;
    }

    public boolean isTextFullyVisibleInButton(CharSequence charSequence, float f, float f2, int i) {
        return isTextFullyVisibleInButton(charSequence, f, f2, i, getMeasuredWidth());
    }

    public boolean isTextFullyVisibleInButton(CharSequence charSequence, float f, float f2, int i, int i2) {
        return q47.d(getContext(), charSequence, f, f2, i, i2 - (getPaddingLeft() + getPaddingRight()));
    }

    public OSBigButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 15;
        this.c = 13;
        this.d = 96;
        this.e = 44;
        this.f = 2;
        this.g = 8;
        this.h = 0.0f;
        this.i = -0.05f;
        this.j = false;
        this.m = false;
        this.k = context;
        b(context, attributeSet, 0);
    }

    public OSBigButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 15;
        this.c = 13;
        this.d = 96;
        this.e = 44;
        this.f = 2;
        this.g = 8;
        this.h = 0.0f;
        this.i = -0.05f;
        this.j = false;
        this.m = false;
        this.k = context;
        b(context, attributeSet, i);
    }
}
