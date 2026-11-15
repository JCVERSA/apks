package com.transsion.widgetslib.view.damping;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.OSLoadingView;
import defpackage.bq5;

public class HeaderHelper {
    public static final String p = "HeaderHelper";
    public int a;
    public int b;
    public OSLoadingView c;
    public TextView d;
    public Runnable e;
    public float f;
    public float g;
    public float h;
    public boolean i;
    public boolean j = true;
    public boolean k;
    public View l;
    public ValueAnimator m;
    public final Context n;
    public int o;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            if (animatedValue instanceof Float) {
                float fFloatValue = ((Float) animatedValue).floatValue();
                HeaderHelper.this.w((int) fFloatValue);
                HeaderHelper.this.u(fFloatValue);
            }
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            HeaderHelper.this.k = false;
            HeaderHelper.this.i = false;
            HeaderHelper.this.d.setText(R.string.os_dampingl_refresh_finish);
            HeaderHelper.this.c.release();
        }
    }

    public HeaderHelper(Context context) {
        this.n = context;
        n();
    }

    public View getLayoutHeader() {
        return this.l;
    }

    public OSLoadingView getLoadingView() {
        return this.c;
    }

    public TextView getTextRefreshing() {
        return this.d;
    }

    public void j() {
        if (this.h != 0.0f) {
            this.i = true;
            this.c.release();
            this.d.setText(R.string.os_dampingl_refresh_finish);
        } else {
            this.i = false;
            if (this.k) {
                t(this.a);
            }
        }
    }

    public final void k(Animator animator) {
        if (animator == null || !animator.isRunning()) {
            return;
        }
        animator.cancel();
    }

    public void l(MotionEvent motionEvent) {
        if (!this.j || this.k || this.l == null) {
            return;
        }
        m(motionEvent);
    }

    public final void m(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2) {
                float f = this.h;
                if (f > 0.0f) {
                    if (f > this.a) {
                        this.d.setText(R.string.os_dampingl_release_for_refresh);
                        s();
                        return;
                    } else {
                        w((int) f);
                        this.d.setText(R.string.os_dampingl_down_pull_refresh);
                        u(this.h);
                        return;
                    }
                }
                return;
            }
            if (action != 3) {
                return;
            }
        }
        if (this.h < this.a) {
            if (this.e == null) {
                this.e = new Runnable() {
                    @Override
                    public void run() {
                        if (HeaderHelper.this.h > 0.0f) {
                            HeaderHelper headerHelper = HeaderHelper.this;
                            headerHelper.t(headerHelper.h);
                        }
                    }
                };
            }
            if (this.l.getHandler() != null) {
                this.l.getHandler().post(this.e);
                return;
            }
            return;
        }
        this.k = true;
        this.d.setText(R.string.os_dampingl_refreshing);
        this.l.postDelayed(new Runnable() {
            @Override
            public void run() {
                HeaderHelper.this.c.setPullPercent(1.0f);
                HeaderHelper.this.c.startLoadingAnimation();
            }
        }, 60L);
        s();
        if (this.e == null) {
            this.e = new Runnable() {
                @Override
                public void run() {
                    HeaderHelper headerHelper = HeaderHelper.this;
                    headerHelper.t(headerHelper.a);
                }
            };
        }
        if (this.l.getHandler() != null) {
            this.l.getHandler().postDelayed(this.e, 2000L);
        }
    }

    public final void n() {
        Resources resources = this.n.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        this.f = TypedValue.applyDimension(1, 15.0f, displayMetrics);
        this.g = TypedValue.applyDimension(1, 6.0f, displayMetrics);
        this.a = resources.getDimensionPixelSize(R.dimen.os_damping_layout_loading_title);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.os_damping_layout_loading_view);
        this.b = dimensionPixelSize;
        this.f += dimensionPixelSize;
    }

    public boolean o() {
        return this.k;
    }

    public void p() {
        v();
    }

    public void q(View view) {
        if (view == null) {
            return;
        }
        this.l = view;
        TextView textView = (TextView) view.findViewById(R.id.damping_text_loading);
        this.d = textView;
        textView.setScaleX(0.0f);
        TextView textView2 = this.d;
        textView2.setScaleY(textView2.getScaleX());
        this.d.setAlpha(0.0f);
        this.d.post(new Runnable() {
            @Override
            public void run() {
                HeaderHelper.this.d.setPivotX(HeaderHelper.this.d.getWidth() / 2.0f);
                HeaderHelper.this.d.setPivotY(0.0f);
            }
        });
        OSLoadingView oSLoadingView = (OSLoadingView) view.findViewById(R.id.os_loading_view);
        this.c = oSLoadingView;
        oSLoadingView.setPivotX(this.b / 2.0f);
        this.c.setPivotY(0.0f);
        this.c.setScaleX(0.2f);
        OSLoadingView oSLoadingView2 = this.c;
        oSLoadingView2.setScaleY(oSLoadingView2.getScaleX());
        this.c.setAlpha(0.0f);
        this.c.setPullPercent(0.0f);
        w(this.o);
    }

    public void r(float f) {
        this.h = f;
        if (this.k && this.l != null && f == 0.0f && this.i) {
            t(this.a);
        }
    }

    public final void s() {
        w(this.a);
        u(this.a);
    }

    public void setHeaderLayoutBg(@ColorInt int i) {
        setHeaderLayoutBg(new ColorDrawable(i));
    }

    public void setLayoutHeight(int i) {
        this.a = i;
    }

    public void setMinHeight(int i) {
        if (i < 0) {
            return;
        }
        this.o = i;
    }

    public void setOnRefreshListener(OSDampingLayout.a aVar) {
    }

    public void setRefreshEnabled(boolean z) {
        this.j = z;
    }

    public void setTextColor(int i) {
        if (getTextRefreshing() != null) {
            getTextRefreshing().setTextColor(i);
        }
    }

    public final void t(float f) {
        if (this.m == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.0f);
            this.m = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(300L);
            this.m.setInterpolator(AnimationUtils.loadInterpolator(this.n, R.anim.os_damping_collapse));
            this.m.addUpdateListener(new a());
            this.m.addListener(new b());
        }
        this.m.setFloatValues(f, this.o);
        this.m.start();
    }

    public final void u(float f) {
        try {
            int i = this.a;
            if (f > i) {
                return;
            }
            float f2 = f / i;
            this.c.setScaleX((0.8f * f2) + 0.2f);
            OSLoadingView oSLoadingView = this.c;
            oSLoadingView.setScaleY(oSLoadingView.getScaleX());
            float f3 = 0.0f;
            float f4 = (1.0f * f2) + 0.0f;
            this.c.setAlpha(f4);
            this.c.setTranslationY(this.g * f2);
            this.c.setPullPercent(f2);
            TextView textView = this.d;
            textView.setPivotX(textView.getWidth() / 2.0f);
            this.d.setScaleX(f4);
            TextView textView2 = this.d;
            textView2.setScaleY(textView2.getScaleX());
            TextView textView3 = this.d;
            if (f4 > 0.2d) {
                f3 = f4;
            }
            textView3.setAlpha(f3);
            this.d.setTranslationY(this.f * f2);
        } catch (Exception e) {
            bq5.h(p, "refresh title layout error", e);
        }
    }

    public final void v() {
        k(this.m);
        OSLoadingView oSLoadingView = this.c;
        if (oSLoadingView != null) {
            oSLoadingView.release();
        }
        View view = this.l;
        if (view == null || view.getHandler() == null || this.e == null) {
            return;
        }
        this.l.getHandler().removeCallbacks(this.e);
    }

    public final void w(int i) {
        if (this.l == null) {
            return;
        }
        int iMax = Math.max(i, this.o);
        this.l.setVisibility(iMax == this.o ? 4 : 0);
        ViewGroup.LayoutParams layoutParams = this.l.getLayoutParams();
        layoutParams.height = iMax;
        this.l.setLayoutParams(layoutParams);
    }

    public void setHeaderLayoutBg(Drawable drawable) {
        View view = this.l;
        if (view != null) {
            view.setBackground(drawable);
        }
    }
}
