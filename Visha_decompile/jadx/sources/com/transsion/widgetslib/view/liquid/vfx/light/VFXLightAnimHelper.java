package com.transsion.widgetslib.view.liquid.vfx.light;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;

public class VFXLightAnimHelper implements GestureDetector.OnGestureListener {
    public final GestureDetector b;
    public final SpringAnimation c;
    public final SpringAnimation d;
    public final SpringAnimation e;
    public a f;
    public final SpringForce i;
    public final SpringForce j;
    public final SpringForce k;
    public float l;
    public float m;
    public final Handler g = new Handler(Looper.getMainLooper());
    public final Runnable h = new Runnable() {
        @Override
        public void run() {
            VFXLightAnimHelper.this.c.animateToFinalPosition(0.0f);
        }
    };
    public boolean n = false;

    public interface a {
        void a(float f, float f2);

        void b(float f);

        void c(float f);

        void d(float f);
    }

    public VFXLightAnimHelper(Context context) {
        GestureDetector gestureDetector = new GestureDetector(context, this, new Handler(Looper.getMainLooper()));
        this.b = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder());
        this.c = springAnimation;
        SpringAnimation springAnimation2 = new SpringAnimation(new FloatValueHolder());
        this.d = springAnimation2;
        SpringAnimation springAnimation3 = new SpringAnimation(new FloatValueHolder());
        this.e = springAnimation3;
        springAnimation.setMinimumVisibleChange(0.001f);
        springAnimation2.setMinimumVisibleChange(0.001f);
        springAnimation3.setMinimumVisibleChange(0.001f);
        springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() {
            @Override
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                this.b.e(dynamicAnimation, f, f2);
            }
        });
        springAnimation2.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() {
            @Override
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                this.b.f(dynamicAnimation, f, f2);
            }
        });
        springAnimation3.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() {
            @Override
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                this.b.g(dynamicAnimation, f, f2);
            }
        });
        SpringForce springForce = new SpringForce();
        this.i = springForce;
        springForce.setStiffness(250.0f);
        springForce.setDampingRatio(0.99f);
        springForce.setFinalPosition(1.0f);
        SpringForce springForce2 = new SpringForce();
        this.j = springForce2;
        springForce2.setStiffness(100.0f);
        springForce2.setDampingRatio(0.99f);
        springForce2.setFinalPosition(1.5f);
        SpringForce springForce3 = new SpringForce();
        this.k = springForce3;
        springForce3.setStiffness(250.0f);
        springForce3.setDampingRatio(0.99f);
        springForce3.setFinalPosition(2.0f);
        SpringForce springForce4 = new SpringForce();
        springForce4.setStiffness(250.0f);
        springForce4.setDampingRatio(0.99f);
        springAnimation.setSpring(springForce4);
        SpringForce springForce5 = new SpringForce();
        springForce5.setStiffness(100.0f);
        springForce5.setDampingRatio(0.99f);
        springAnimation3.setSpring(springForce5);
    }

    public final void e(DynamicAnimation dynamicAnimation, float f, float f2) {
        a aVar = this.f;
        if (aVar != null) {
            aVar.c(f);
        }
    }

    public final void f(DynamicAnimation dynamicAnimation, float f, float f2) {
        a aVar = this.f;
        if (aVar != null) {
            aVar.d(f);
        }
    }

    public final void g(DynamicAnimation dynamicAnimation, float f, float f2) {
        a aVar = this.f;
        if (aVar != null) {
            aVar.b(f);
        }
    }

    public void h(MotionEvent motionEvent) {
        this.b.onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            this.g.postDelayed(this.h, 60L);
            l();
        }
    }

    public void i() {
        this.g.removeCallbacks(this.h);
        this.c.cancel();
        this.d.cancel();
        this.e.cancel();
    }

    public final void j() {
        this.d.setSpring(this.j);
        this.d.start();
        this.e.animateToFinalPosition(0.5f);
    }

    public final void k() {
        this.d.cancel();
        this.d.setSpring(this.i);
        this.d.setStartValue(0.5f);
        this.d.start();
        this.c.cancel();
        this.c.setStartValue(0.0f);
        this.c.animateToFinalPosition(1.0f);
        this.e.cancel();
        this.e.setStartValue(1.0f);
        a aVar = this.f;
        if (aVar != null) {
            aVar.b(1.0f);
        }
    }

    public final void l() {
        this.d.setSpring(this.k);
        this.d.start();
    }

    @Override
    public boolean onDown(MotionEvent motionEvent) {
        this.n = false;
        this.g.removeCallbacks(this.h);
        this.l = 0.0f;
        this.m = 0.0f;
        k();
        a aVar = this.f;
        if (aVar == null) {
            return true;
        }
        aVar.a(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return true;
    }

    @Override
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (!this.n) {
            this.n = true;
            j();
        }
        this.l -= f;
        this.m -= f2;
        a aVar = this.f;
        if (aVar != null && motionEvent != null) {
            aVar.a(motionEvent.getX() + this.l, motionEvent.getY() + this.m);
        }
        return true;
    }

    @Override
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    public void setAnimValueListener(a aVar) {
        this.f = aVar;
    }
}
