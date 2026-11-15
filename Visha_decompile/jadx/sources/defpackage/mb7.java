package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;

public abstract class mb7 {
    public final Context a;
    public View b;
    public ValueAnimator c;
    public LayerDrawable d;
    public Drawable e;
    public Drawable f;
    public final int g = 255;
    public int h = 100;
    public final Rect i = new Rect();
    public boolean j;
    public boolean k;
    public boolean l;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            mb7.this.e.setAlpha(0);
            mb7.this.l = false;
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            mb7.this.e.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public mb7(Context context, View view) {
        this.a = context;
        this.b = view;
    }

    public void b() {
        ValueAnimator valueAnimator = this.c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public boolean c() {
        return this.k;
    }

    public void d(MotionEvent motionEvent) {
        if (this.e == null) {
            return;
        }
        View view = this.b;
        if (view == null || view.isEnabled()) {
            int action = motionEvent.getAction();
            if (action == 0) {
                b();
                this.e.setAlpha(255);
                this.j = true;
                View view2 = this.b;
                if (view2 != null) {
                    view2.getGlobalVisibleRect(this.i);
                    return;
                }
                return;
            }
            if (action != 1) {
                if (action == 2) {
                    if (this.b == null || !this.j) {
                        return;
                    }
                    this.j = this.i.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
                    return;
                }
                if (action != 3) {
                    return;
                }
            }
            if (this.k && action == 1 && this.j) {
                this.l = true;
            } else {
                e(100L);
            }
        }
    }

    public void e(long j) {
        if (this.e == null) {
            return;
        }
        if (this.c == null) {
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 0);
            this.c = valueAnimatorOfInt;
            valueAnimatorOfInt.addListener(new a());
            this.c.addUpdateListener(new b());
        }
        if (this.c.isRunning()) {
            return;
        }
        this.e.setAlpha(255);
        this.c.setIntValues(255, 0);
        this.c.setStartDelay(j);
        this.c.setDuration(this.h);
        this.c.start();
    }

    public void f() {
        Drawable drawable = this.e;
        if (drawable == null || drawable.getAlpha() == 0) {
            return;
        }
        ValueAnimator valueAnimator = this.c;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.c.cancel();
        } else {
            this.e.setAlpha(0);
            this.l = false;
        }
    }

    public void g() {
        if (this.k && this.l) {
            e(150L);
        }
    }

    public int getAnimDuration() {
        return this.h;
    }

    public Drawable getBackground() {
        Drawable drawable;
        if (this.d == null || (drawable = this.e) == null) {
            return null;
        }
        drawable.setAlpha(0);
        return this.d;
    }

    public void setAnimDuration(int i) {
        this.h = i;
    }

    public void setDrawableNormal(@NonNull Drawable drawable) {
        this.f = drawable;
        LayerDrawable layerDrawable = this.d;
        if (layerDrawable != null) {
            layerDrawable.setDrawable(0, drawable);
        } else if (this.e != null) {
            this.d = new LayerDrawable(new Drawable[]{this.f, this.e});
        }
    }

    public void setDrawablePress(@NonNull Drawable drawable) {
        this.e = drawable;
        LayerDrawable layerDrawable = this.d;
        if (layerDrawable != null) {
            layerDrawable.setDrawable(1, drawable);
        } else if (this.f != null) {
            this.d = new LayerDrawable(new Drawable[]{this.f, this.e});
        }
    }

    public void setOpenNewPage(boolean z) {
        this.k = z;
    }

    public void setView(View view) {
        this.b = view;
    }

    public void setDrawableNormal(@ColorInt int i) {
        setDrawableNormal(new ColorDrawable(i));
    }

    public void setDrawablePress(@ColorInt int i) {
        setDrawablePress(new ColorDrawable(i));
    }
}
