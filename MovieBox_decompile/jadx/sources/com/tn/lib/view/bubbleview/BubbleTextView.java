package com.tn.lib.view.bubbleview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.widget.R$styleable;

public class BubbleTextView extends AppCompatTextView {

    private BubbleDrawable f40265a;

    private float f40266b;

    private float f40267c;

    private float f40268d;

    private float f40269e;

    private int f40270f;

    private int f40271g;

    private BubbleDrawable.ArrowLocation f40272h;

    private boolean f40273i;

    static class a {

        static final int[] f40274a;

        static {
            int[] iArr = new int[BubbleDrawable.ArrowLocation.values().length];
            f40274a = iArr;
            try {
                iArr[BubbleDrawable.ArrowLocation.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40274a[BubbleDrawable.ArrowLocation.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f40274a[BubbleDrawable.ArrowLocation.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f40274a[BubbleDrawable.ArrowLocation.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public BubbleTextView(Context context) {
        super(context);
        b(null);
    }

    private void b(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BubbleView);
            this.f40266b = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowWidth, BubbleDrawable.b.f40151u);
            this.f40268d = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowHeight, BubbleDrawable.b.f40152v);
            this.f40267c = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_angle, BubbleDrawable.b.f40153w);
            this.f40269e = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowPosition, BubbleDrawable.b.f40154x);
            this.f40270f = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_bubbleColor, BubbleDrawable.b.f40155y);
            this.f40272h = BubbleDrawable.ArrowLocation.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_arrowLocation, 0));
            this.f40273i = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_arrowCenter, false);
            this.f40271g = typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_bubbleAlpha, 255);
            typedArrayObtainStyledAttributes.recycle();
        }
        f();
    }

    private void c() {
        d(getWidth(), getHeight());
    }

    private void d(int i10, int i11) {
        e(0, i10, 0, i11);
    }

    private void e(int i10, int i11, int i12, int i13) {
        this.f40265a = new BubbleDrawable.b().B(new RectF(i10, i12, i11, i13)).t(this.f40272h).z(BubbleDrawable.BubbleType.COLOR).q(this.f40267c).p(this.f40271g).s(this.f40268d).v(this.f40266b).x(this.f40270f).u(this.f40269e).r(this.f40273i).A();
    }

    private void f() {
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i10 = a.f40274a[this.f40272h.ordinal()];
        if (i10 == 1) {
            paddingLeft = (int) (paddingLeft + this.f40266b);
        } else if (i10 == 2) {
            paddingRight = (int) (paddingRight + this.f40266b);
        } else if (i10 == 3) {
            paddingTop = (int) (paddingTop + this.f40268d);
        } else if (i10 == 4) {
            paddingBottom = (int) (paddingBottom + this.f40268d);
        }
        setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    @Override
    public void layout(int i10, int i11, int i12, int i13) {
        super.layout(i10, i11, i12, i13);
        c();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        BubbleDrawable bubbleDrawable = this.f40265a;
        if (bubbleDrawable != null) {
            bubbleDrawable.draw(canvas);
        }
        super.onDraw(canvas);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        d(i10, i11);
    }

    public void setArrowPosition(float f10) {
        this.f40269e = f10;
        c();
    }

    public BubbleTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(attributeSet);
    }

    public BubbleTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        b(attributeSet);
    }
}
