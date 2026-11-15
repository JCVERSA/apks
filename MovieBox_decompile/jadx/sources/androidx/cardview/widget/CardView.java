package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.R$attr;
import androidx.cardview.R$color;
import androidx.cardview.R$style;
import androidx.cardview.R$styleable;

public class CardView extends FrameLayout {

    private static final int[] f1907h = {R.attr.colorBackground};

    private static final c f1908i;

    private boolean f1909a;

    private boolean f1910b;

    int f1911c;

    int f1912d;

    final Rect f1913e;

    final Rect f1914f;

    private final b f1915g;

    class a implements b {

        private Drawable f1916a;

        a() {
        }

        @Override
        public void a(int i10, int i11, int i12, int i13) {
            CardView.this.f1914f.set(i10, i11, i12, i13);
            CardView cardView = CardView.this;
            Rect rect = cardView.f1913e;
            CardView.super.setPadding(i10 + rect.left, i11 + rect.top, i12 + rect.right, i13 + rect.bottom);
        }

        @Override
        public void b(Drawable drawable) {
            this.f1916a = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        @Override
        public boolean c() {
            return CardView.this.getUseCompatPadding();
        }

        @Override
        public Drawable d() {
            return this.f1916a;
        }

        @Override
        public boolean e() {
            return CardView.this.getPreventCornerOverlap();
        }

        @Override
        public View f() {
            return CardView.this;
        }
    }

    static {
        androidx.cardview.widget.a aVar = new androidx.cardview.widget.a();
        f1908i = aVar;
        aVar.l();
    }

    public CardView(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return f1908i.e(this.f1915g);
    }

    public float getCardElevation() {
        return f1908i.i(this.f1915g);
    }

    public int getContentPaddingBottom() {
        return this.f1913e.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f1913e.left;
    }

    public int getContentPaddingRight() {
        return this.f1913e.right;
    }

    public int getContentPaddingTop() {
        return this.f1913e.top;
    }

    public float getMaxCardElevation() {
        return f1908i.d(this.f1915g);
    }

    public boolean getPreventCornerOverlap() {
        return this.f1910b;
    }

    public float getRadius() {
        return f1908i.b(this.f1915g);
    }

    public boolean getUseCompatPadding() {
        return this.f1909a;
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        c cVar = f1908i;
        if (cVar instanceof androidx.cardview.widget.a) {
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i10);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i10 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(cVar.m(this.f1915g)), View.MeasureSpec.getSize(i10)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(cVar.f(this.f1915g)), View.MeasureSpec.getSize(i11)), mode2);
        }
        super.onMeasure(i10, i11);
    }

    public void setCardBackgroundColor(int i10) {
        f1908i.n(this.f1915g, ColorStateList.valueOf(i10));
    }

    public void setCardElevation(float f10) {
        f1908i.c(this.f1915g, f10);
    }

    public void setContentPadding(int i10, int i11, int i12, int i13) {
        this.f1913e.set(i10, i11, i12, i13);
        f1908i.k(this.f1915g);
    }

    public void setMaxCardElevation(float f10) {
        f1908i.o(this.f1915g, f10);
    }

    @Override
    public void setMinimumHeight(int i10) {
        this.f1912d = i10;
        super.setMinimumHeight(i10);
    }

    @Override
    public void setMinimumWidth(int i10) {
        this.f1911c = i10;
        super.setMinimumWidth(i10);
    }

    @Override
    public void setPadding(int i10, int i11, int i12, int i13) {
    }

    @Override
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
    }

    public void setPreventCornerOverlap(boolean z10) {
        if (z10 != this.f1910b) {
            this.f1910b = z10;
            f1908i.g(this.f1915g);
        }
    }

    public void setRadius(float f10) {
        f1908i.a(this.f1915g, f10);
    }

    public void setUseCompatPadding(boolean z10) {
        if (this.f1909a != z10) {
            this.f1909a = z10;
            f1908i.j(this.f1915g);
        }
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.cardViewStyle);
    }

    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        f1908i.n(this.f1915g, colorStateList);
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int color;
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, i10);
        Rect rect = new Rect();
        this.f1913e = rect;
        this.f1914f = new Rect();
        a aVar = new a();
        this.f1915g = aVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CardView, i10, R$style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.CardView_cardBackgroundColor)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.CardView_cardBackgroundColor);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(f1907h);
            int color2 = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color2, fArr);
            if (fArr[2] > 0.5f) {
                color = getResources().getColor(R$color.cardview_light_background);
            } else {
                color = getResources().getColor(R$color.cardview_dark_background);
            }
            colorStateListValueOf = ColorStateList.valueOf(color);
        }
        ColorStateList colorStateList = colorStateListValueOf;
        float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardCornerRadius, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardElevation, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardMaxElevation, 0.0f);
        this.f1909a = typedArrayObtainStyledAttributes.getBoolean(R$styleable.CardView_cardUseCompatPadding, false);
        this.f1910b = typedArrayObtainStyledAttributes.getBoolean(R$styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPadding, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        float f10 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f1911c = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_android_minWidth, 0);
        this.f1912d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_android_minHeight, 0);
        typedArrayObtainStyledAttributes.recycle();
        f1908i.h(aVar, context, colorStateList, dimension, dimension2, f10);
    }
}
