package ru.zdevs.zarchiver.ui.editor;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewConfiguration;
import ru.zdevs.zarchiver.R;

public final class d implements ValueAnimator.AnimatorUpdateListener {

    public final View f1910a;

    public final int f1911b;

    public final Drawable f1912c;

    public final Drawable f1913d;

    public final int f1914e;

    public final int f1915f;

    public final Drawable f1916g;

    public final Drawable f1917h;

    public final int f1918i;

    public final int f1919j;

    public final Rect f1920k;

    public int f1921l;

    public int f1922m;

    public float f1923n;

    public final ValueAnimator f1924o;

    public final a f1925p;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            d dVar = d.this;
            dVar.f1922m = 0;
            ValueAnimator valueAnimator = dVar.f1924o;
            if (valueAnimator.isRunning()) {
                valueAnimator.reverse();
            } else {
                valueAnimator.start();
            }
        }
    }

    public interface b {
        int a();

        int computeHorizontalScrollOffset();

        int computeHorizontalScrollRange();

        int computeVerticalScrollOffset();

        int computeVerticalScrollRange();
    }

    public d(View view) {
        a aVar = new a();
        this.f1925p = aVar;
        this.f1910a = view;
        Context context = view.getContext();
        this.f1911b = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f1912c = z0.c.g(context, R.drawable.fast_track_x);
        Drawable drawableG = z0.c.g(context, R.drawable.fast_thumb_x);
        this.f1913d = drawableG;
        this.f1914e = drawableG.getIntrinsicWidth();
        this.f1915f = drawableG.getIntrinsicHeight();
        this.f1916g = z0.c.g(context, R.drawable.fast_track_y);
        Drawable drawableG2 = z0.c.g(context, R.drawable.fast_thumb_y);
        this.f1917h = drawableG2;
        int intrinsicWidth = drawableG2.getIntrinsicWidth();
        this.f1918i = intrinsicWidth;
        this.f1919j = drawableG2.getIntrinsicHeight();
        this.f1920k = new Rect();
        this.f1922m = 1;
        this.f1921l = 0;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, intrinsicWidth);
        this.f1924o = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(250L);
        valueAnimatorOfInt.addUpdateListener(this);
        view.removeCallbacks(aVar);
        view.postDelayed(aVar, 1500L);
    }

    public final void a(int i2) {
        a aVar = this.f1925p;
        View view = this.f1910a;
        if (i2 == 2) {
            view.removeCallbacks(aVar);
        }
        int i3 = this.f1922m;
        this.f1922m = i2;
        if (i2 == 1) {
            if (i3 == 0) {
                this.f1924o.reverse();
            } else {
                view.removeCallbacks(aVar);
                view.postDelayed(aVar, 1500L);
            }
        }
    }

    @Override
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f1921l = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.f1910a.invalidate();
    }
}
