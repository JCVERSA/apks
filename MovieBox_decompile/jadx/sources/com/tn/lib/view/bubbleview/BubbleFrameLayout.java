package com.tn.lib.view.bubbleview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.tn.lib.widget.R$styleable;

public class BubbleFrameLayout extends FrameLayout {

    private BubbleDrawable f40177a;

    private float f40178b;

    private int f40179c;

    private float f40180d;

    private float f40181e;

    private float f40182f;

    private float f40183g;

    private float f40184h;

    private float f40185i;

    private BubbleDrawable.ArrowLocation f40186j;

    private int f40187k;

    private boolean f40188l;

    public BubbleFrameLayout(Context context) {
        super(context);
        b(null);
    }

    private void b(AttributeSet attributeSet) {
        setLayerType(1, null);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BubbleView);
            this.f40178b = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowRadius, BubbleDrawable.b.A);
            this.f40179c = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_shadowColor, BubbleDrawable.b.B);
            this.f40180d = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetX, BubbleDrawable.b.C);
            this.f40181e = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetY, BubbleDrawable.b.C);
            this.f40182f = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowWidth, BubbleDrawable.b.f40151u);
            this.f40184h = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowHeight, BubbleDrawable.b.f40152v);
            this.f40183g = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_angle, BubbleDrawable.b.f40153w);
            this.f40185i = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowPosition, BubbleDrawable.b.f40154x);
            this.f40187k = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_bubbleColor, BubbleDrawable.b.f40155y);
            this.f40186j = BubbleDrawable.ArrowLocation.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_arrowLocation, 0));
            this.f40188l = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_arrowCenter, false);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void c(int i10, int i11) {
        d((int) ((getPaddingLeft() + this.f40178b) - this.f40180d), (int) (((i10 - getPaddingRight()) - this.f40178b) - this.f40180d), (int) ((getPaddingTop() + this.f40178b) - this.f40181e), (int) (((i11 - getPaddingBottom()) - this.f40178b) - this.f40181e));
        setBackgroundDrawable(this.f40177a);
    }

    private void d(int i10, int i11, int i12, int i13) {
        if (i11 < i10 || i13 < i12) {
            return;
        }
        this.f40177a = new BubbleDrawable.b().B(new RectF(i10, i12, i11, i13)).t(this.f40186j).z(BubbleDrawable.BubbleType.COLOR).q(this.f40183g).s(this.f40184h).v(this.f40182f).u(this.f40185i).x(this.f40187k).r(this.f40188l).F(this.f40178b).C(this.f40179c).D(this.f40180d).E(this.f40181e).A();
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        c(i10, i11);
    }

    public void setUpBubbleDrawable() {
        setBackgroundDrawable(null);
        post(new Runnable() {
            @Override
            public void run() {
                BubbleFrameLayout bubbleFrameLayout = BubbleFrameLayout.this;
                bubbleFrameLayout.c(bubbleFrameLayout.getWidth(), BubbleFrameLayout.this.getHeight());
            }
        });
    }

    public BubbleFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(attributeSet);
    }
}
