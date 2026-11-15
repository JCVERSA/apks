package com.transsion.widgetsliquid.view;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.RequiresApi;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetslib.widget.OsPressSmoothCornerDrawable;
import com.transsion.widgetsliquid.effect.OSLiquidContainerRootLayout;
import defpackage.olb;
import defpackage.yj1;

@RequiresApi(api = 30)
public class OSLiquidCarouselTextView extends OSLiquidContainerRootLayout {
    public CarouselTextView N;
    public OsPressSmoothCornerDrawable O;
    public Context P;
    public int Q;
    public boolean R;

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                OSLiquidCarouselTextView.this.O.showWithFadeAnimation();
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                OSLiquidCarouselTextView.this.O.hideWithFadeAnimation();
                OSLiquidCarouselTextView.this.N.performClick();
            }
            return true;
        }
    }

    public class b implements CarouselTextView.a {
        public b() {
        }

        @Override
        public void a(int i) {
            OSLiquidCarouselTextView.this.Q = i;
            OSLiquidCarouselTextView.this.requestLayout();
        }
    }

    public OSLiquidCarouselTextView(Context context) {
        super(context);
        this.Q = 0;
        this.R = true;
        this.P = context;
        this.N = new CarouselTextView(context);
        v();
    }

    private void v() {
        setMixLevel(3);
        setBackgroundColor(Color.parseColor("#00000000"));
        this.N.setBackgroundColor(Color.parseColor("#00000000"));
        this.O.setBackgroundLeftRightMargin(olb.h(this.P, 4));
        this.N.setOnTouchListener(new a());
        this.N.setOnWidthChangedListener(new b());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.leftMargin = yj1.d(this.P, 12);
        layoutParams.rightMargin = yj1.d(this.P, 12);
        if (!olb.P) {
            addView(this.O);
        }
        setElasticTypeConfig(ElasticTypeConfig.BUTTON);
        setLightTypeConfig(LightTypeConfig.CAROUSEL_TEXTVIEW_AUTO);
        addView(this.N, layoutParams);
    }

    public CarouselTextView getCarouselTextView() {
        return this.N;
    }

    @Override
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.w();
            }
        });
    }

    @Override
    public void onMeasure(int i, int i2) {
        CarouselTextView carouselTextView;
        int size = View.MeasureSpec.getSize(i);
        View.MeasureSpec.getMode(i);
        if (this.R && (carouselTextView = this.N) != null && size > 0 && (carouselTextView.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.N.getLayoutParams();
            this.N._setMaxWidth(Math.max(0, (size - layoutParams.leftMargin) - layoutParams.rightMargin));
            this.R = false;
        }
        super.onMeasure(i, i2);
        CarouselTextView carouselTextView2 = this.N;
        if (carouselTextView2 == null || !(carouselTextView2.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.N.getLayoutParams();
        int i3 = this.Q + layoutParams2.leftMargin + layoutParams2.rightMargin;
        Log.d("OSLiquidCarouselTextView", "getMeasuredWidth = " + getMeasuredWidth());
        if (i3 != getMeasuredWidth()) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
        }
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.N.setEnabled(z);
        setAlpha(z ? 1.0f : 0.4f);
    }

    public final void w() {
        CarouselTextView carouselTextView = this.N;
        if (carouselTextView != null) {
            carouselTextView.forceScrollCheck();
        }
    }

    public OSLiquidCarouselTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.Q = 0;
        this.R = true;
        this.P = context;
        this.N = new CarouselTextView(context, attributeSet);
        this.O = new OsPressSmoothCornerDrawable(context, attributeSet);
        v();
    }

    public OSLiquidCarouselTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Q = 0;
        this.R = true;
        this.N = new CarouselTextView(context, attributeSet, i);
        this.O = new OsPressSmoothCornerDrawable(context, attributeSet, i);
        this.P = context;
        v();
    }
}
