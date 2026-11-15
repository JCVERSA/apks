package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;

public class gm5 {
    public static boolean i = false;
    public View b;
    public long c;
    public float d;
    public float e;
    public float f;
    public float g;
    public int a = 0;
    public Interpolator h = new DecelerateInterpolator();

    public gm5(Context context) {
    }

    public void a() {
        this.a = 0;
    }

    public boolean b() {
        return this.a == 0;
    }

    public void c(View view, float f, float f2) {
        this.b = view;
        f(1.0f, f);
        e(f2);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.a = 2;
        this.c = jCurrentAnimationTimeMillis;
        this.d = 150.0f;
        if (i) {
            Log.i("os_list", "ListScaleHelper onRebound() now = " + jCurrentAnimationTimeMillis + ", scaleY = " + f + ", pviotY = " + f2);
        }
    }

    public void d(View view, float f, float f2) {
        this.b = view;
        f(f, 1.0f);
        e(f2);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.a = 1;
        this.c = jCurrentAnimationTimeMillis;
        this.d = 150.0f;
        if (i) {
            Log.i("os_list", "ListScaleHelper onRelease() now = " + jCurrentAnimationTimeMillis + ", scaleY = " + f + ", pviotY = " + f2);
        }
    }

    public final void e(float f) {
        this.g = f;
    }

    public final void f(float f, float f2) {
        this.e = f;
        this.f = f2;
    }

    public boolean g() {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float interpolation = this.h.getInterpolation(Math.min((jCurrentAnimationTimeMillis - this.c) / this.d, 1.0f));
        float f = this.e;
        float f2 = f + ((this.f - f) * interpolation);
        int i2 = this.a;
        if (i2 == 1) {
            if (i) {
                Log.i("os_list", "ListScaleHelper update() 1 duration = " + (jCurrentAnimationTimeMillis - this.c) + ", scale = " + f2 + ", mPviotY = " + this.g);
            }
            this.b.setPivotY(this.g);
            this.b.setScaleY(f2);
            if (jCurrentAnimationTimeMillis - this.c > this.d) {
                this.a = 0;
            }
        } else if (i2 == 2) {
            if (i) {
                Log.i("os_list", "ListScaleHelper update() 2 duration = " + (jCurrentAnimationTimeMillis - this.c) + ", scale = " + f2 + ", mPviotY = " + this.g);
            }
            this.b.setPivotY(this.g);
            this.b.setScaleY(f2);
            if (jCurrentAnimationTimeMillis - this.c > this.d) {
                this.a = 1;
                this.e = f2;
                this.f = 1.0f;
                this.c = AnimationUtils.currentAnimationTimeMillis();
                this.d = 150.0f;
            }
        }
        return this.a != 0;
    }
}
