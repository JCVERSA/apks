package com.tn.lib.view.bubbleview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.tn.lib.widget.R$styleable;

public class BubbleLinearLayout extends LinearLayout {

    private BubbleDrawable f40253a;

    private float f40254b;

    private int f40255c;

    private float f40256d;

    private float f40257e;

    private float f40258f;

    private float f40259g;

    private float f40260h;

    private float f40261i;

    private BubbleDrawable.ArrowLocation f40262j;

    private int f40263k;

    private boolean f40264l;

    public BubbleLinearLayout(Context context) {
        super(context);
        b(null);
    }

    private void b(AttributeSet attributeSet) {
        setLayerType(1, null);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BubbleView);
            this.f40254b = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowRadius, BubbleDrawable.b.A);
            this.f40255c = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_shadowColor, BubbleDrawable.b.B);
            this.f40256d = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetX, BubbleDrawable.b.C);
            this.f40257e = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetY, BubbleDrawable.b.C);
            this.f40258f = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowWidth, BubbleDrawable.b.f40151u);
            this.f40260h = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowHeight, BubbleDrawable.b.f40152v);
            this.f40259g = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_angle, BubbleDrawable.b.f40153w);
            this.f40261i = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowPosition, BubbleDrawable.b.f40154x);
            this.f40263k = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_bubbleColor, BubbleDrawable.b.f40155y);
            this.f40262j = BubbleDrawable.ArrowLocation.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_arrowLocation, 0));
            this.f40264l = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_arrowCenter, false);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void c(int i10, int i11) {
        d((int) ((getPaddingLeft() + this.f40254b) - this.f40256d), (int) (((i10 - getPaddingRight()) - this.f40254b) - this.f40256d), (int) ((getPaddingTop() + this.f40254b) - this.f40257e), (int) (((i11 - getPaddingBottom()) - this.f40254b) - this.f40257e));
        setBackgroundDrawable(this.f40253a);
    }

    private void d(int i10, int i11, int i12, int i13) {
        if (i11 < i10 || i13 < i12) {
            return;
        }
        this.f40253a = new BubbleDrawable.b().B(new RectF(i10, i12, i11, i13)).t(this.f40262j).z(BubbleDrawable.BubbleType.COLOR).q(this.f40259g).s(this.f40260h).v(this.f40258f).u(this.f40261i).x(this.f40263k).r(this.f40264l).F(this.f40254b).C(this.f40255c).D(this.f40256d).E(this.f40257e).A();
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
                BubbleLinearLayout bubbleLinearLayout = BubbleLinearLayout.this;
                bubbleLinearLayout.c(bubbleLinearLayout.getWidth(), BubbleLinearLayout.this.getHeight());
            }
        });
    }

    public BubbleLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(attributeSet);
    }
}
