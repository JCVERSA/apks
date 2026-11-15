package com.transsion.widgetslib.anim;

import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import defpackage.bq5;
import defpackage.dmb;
import defpackage.f43;
import defpackage.fz3;
import defpackage.jv9;
import defpackage.kv9;
import defpackage.olb;
import java.lang.ref.WeakReference;

public class OSSpringPressSealAnimation implements View.OnTouchListener {
    public float A;
    public float B;
    public jv9 C;
    public jv9 D;
    public int E;
    public boolean F;
    public Runnable G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public final float b;
    public float c;
    public float d;
    public float e;
    public float f;
    public float g;
    public final float h;
    public final float i;
    public float j;
    public float k;
    public final float l;
    public final float m;
    public final fz3 n;
    public final float o;
    public WeakReference p;
    public float q;
    public h r;
    public View.OnTouchListener s;
    public f t;
    public g u;
    public boolean v;
    public boolean w;
    public boolean x;
    public Handler y;
    public boolean z;

    public static class DelayCallback implements Runnable {
        private WeakReference<View> mHostViewWR;
        private WeakReference<OSSpringPressSealAnimation> mOsSpringPressSealAnimationWR;

        public DelayCallback(View view, OSSpringPressSealAnimation oSSpringPressSealAnimation) {
            this.mHostViewWR = new WeakReference<>(view);
            this.mOsSpringPressSealAnimationWR = new WeakReference<>(oSSpringPressSealAnimation);
        }

        @Override
        public void run() {
            if (this.mOsSpringPressSealAnimationWR.get() != null) {
                OSSpringPressSealAnimation oSSpringPressSealAnimation = this.mOsSpringPressSealAnimationWR.get();
                if (oSSpringPressSealAnimation.D != null && oSSpringPressSealAnimation.D.h()) {
                    oSSpringPressSealAnimation.D.c();
                }
                if (oSSpringPressSealAnimation.d == oSSpringPressSealAnimation.e) {
                    oSSpringPressSealAnimation.e = oSSpringPressSealAnimation.c;
                }
                oSSpringPressSealAnimation.C = oSSpringPressSealAnimation.q(oSSpringPressSealAnimation.d, oSSpringPressSealAnimation.e);
                oSSpringPressSealAnimation.C.p();
            }
        }
    }

    public class a implements f43.r {
        public a() {
        }

        @Override
        public void a(f43 f43Var, float f, float f2) {
            if (OSSpringPressSealAnimation.this.p == null || OSSpringPressSealAnimation.this.p.get() == null) {
                if (f43Var == null || !f43Var.h()) {
                    return;
                }
                f43Var.c();
                return;
            }
            View view = (View) OSSpringPressSealAnimation.this.p.get();
            view.setScaleX(f);
            view.setScaleY(f);
            if (OSSpringPressSealAnimation.this.u != null) {
                OSSpringPressSealAnimation.this.u.a(true, f43Var, f, f2);
            }
        }
    }

    public class b implements f43.q {
        public b() {
        }

        @Override
        public void a(f43 f43Var, boolean z, float f, float f2) {
            if (z) {
                OSSpringPressSealAnimation.this.d = f;
            } else {
                OSSpringPressSealAnimation oSSpringPressSealAnimation = OSSpringPressSealAnimation.this;
                oSSpringPressSealAnimation.d = oSSpringPressSealAnimation.c;
            }
            OSSpringPressSealAnimation oSSpringPressSealAnimation2 = OSSpringPressSealAnimation.this;
            oSSpringPressSealAnimation2.e = oSSpringPressSealAnimation2.b;
            if (OSSpringPressSealAnimation.this.t != null) {
                OSSpringPressSealAnimation.this.t.a(true, f43Var, z, OSSpringPressSealAnimation.this.z, f, f2);
            }
        }
    }

    public class c implements f43.r {
        public c() {
        }

        @Override
        public void a(f43 f43Var, float f, float f2) {
            if (OSSpringPressSealAnimation.this.p == null || OSSpringPressSealAnimation.this.p.get() == null) {
                if (f43Var == null || !f43Var.h()) {
                    return;
                }
                f43Var.c();
                return;
            }
            View view = (View) OSSpringPressSealAnimation.this.p.get();
            view.setScaleX(f);
            view.setScaleY(f);
            if (OSSpringPressSealAnimation.this.u != null) {
                OSSpringPressSealAnimation.this.u.a(false, f43Var, f, f2);
            }
        }
    }

    public class d implements f43.q {
        public d() {
        }

        @Override
        public void a(f43 f43Var, boolean z, float f, float f2) {
            if (z) {
                OSSpringPressSealAnimation.this.d = f;
            } else {
                OSSpringPressSealAnimation.this.I = false;
                OSSpringPressSealAnimation oSSpringPressSealAnimation = OSSpringPressSealAnimation.this;
                oSSpringPressSealAnimation.d = oSSpringPressSealAnimation.b;
            }
            OSSpringPressSealAnimation oSSpringPressSealAnimation2 = OSSpringPressSealAnimation.this;
            oSSpringPressSealAnimation2.e = oSSpringPressSealAnimation2.c;
            if (OSSpringPressSealAnimation.this.t != null) {
                OSSpringPressSealAnimation.this.t.a(false, f43Var, z, OSSpringPressSealAnimation.this.z, f, f2);
            }
        }
    }

    public static class e {
        public boolean a;
        public float c;
        public fz3 l;
        public g n;
        public f o;
        public View.OnTouchListener p;
        public WeakReference q;
        public h r;
        public float s;
        public int t;
        public boolean u;
        public boolean v;
        public boolean w;
        public boolean x = false;
        public float d = 400.0f;
        public float f = 250.0f;
        public float e = 400.0f;
        public float g = 250.0f;
        public float h = 0.89f;
        public float j = 0.99f;
        public float i = 0.89f;
        public float k = 0.4f;
        public float b = 1.0f;
        public float m = 0.0f;

        public e A(float f) {
            this.h = f;
            return this;
        }

        public e B(float f) {
            this.i = f;
            return this;
        }

        public e C(float f) {
            this.e = f;
            return this;
        }

        public e D(float f) {
            this.c = f;
            return this;
        }

        public e E(fz3 fz3Var) {
            this.l = fz3Var;
            return this;
        }

        public e F(boolean z) {
            this.v = z;
            return this;
        }

        public e G(h hVar) {
            this.r = hVar;
            return this;
        }

        public e H(View.OnTouchListener onTouchListener) {
            this.p = onTouchListener;
            return this;
        }

        public e I(float f) {
            this.d = f;
            return this;
        }

        public e J(View view) {
            this.q = new WeakReference(view);
            return this;
        }

        public e x(f fVar) {
            this.o = fVar;
            return this;
        }

        public e y(g gVar) {
            this.n = gVar;
            return this;
        }

        public OSSpringPressSealAnimation z() {
            if (this.l != null) {
                return new OSSpringPressSealAnimation(this);
            }
            throw new IllegalStateException("property == null");
        }
    }

    public interface f {
        void a(boolean z, f43 f43Var, boolean z2, boolean z3, float f, float f2);
    }

    public interface g {
        void a(boolean z, f43 f43Var, float f, float f2);
    }

    public interface h {
        void onClick(View view, boolean z);
    }

    public static int r(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    public float getEndValue() {
        return this.c;
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        h hVar;
        WeakReference weakReference;
        View view2;
        View.OnTouchListener onTouchListener = this.s;
        if (onTouchListener != null) {
            onTouchListener.onTouch(view, motionEvent);
        }
        if (this.J) {
            return !this.x && view.onTouchEvent(motionEvent);
        }
        if (!this.I) {
            if (motionEvent.getAction() == 0) {
                this.A = motionEvent.getX();
                this.B = motionEvent.getY();
                if (this.H && (weakReference = this.p) != null && (view2 = (View) weakReference.get()) != null) {
                    float fA = dmb.a(view2);
                    if (this.w) {
                        this.c = dmb.b(fA);
                    } else {
                        this.c = dmb.c(fA);
                    }
                    this.e = this.c;
                    bq5.p("OSSpringPressSealAnimat", "ACTION_DOWN: dynamic mEndValue=" + this.c + ", area=" + fA + ", isLiquid=" + this.w);
                }
                int i = this.E;
                if (i > 0) {
                    this.y.postDelayed(this.G, i);
                } else {
                    jv9 jv9Var = this.D;
                    if (jv9Var != null && jv9Var.h()) {
                        this.D.c();
                    }
                    jv9 jv9VarQ = q(this.d, this.e);
                    this.C = jv9VarQ;
                    jv9VarQ.p();
                }
                h hVar2 = this.r;
                if (hVar2 != null && view != null) {
                    hVar2.onClick(view, true);
                }
                this.z = false;
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                if (this.E > 0) {
                    this.y.removeCallbacks(this.G);
                }
                if (this.K) {
                    if (!this.z) {
                        if (motionEvent.getAction() == 3) {
                            this.z = true;
                        }
                        jv9 jv9Var2 = this.C;
                        if (jv9Var2 != null && jv9Var2.h()) {
                            this.C.c();
                        }
                        float f2 = this.d;
                        if (f2 != this.b) {
                            jv9 jv9VarP = p(f2, this.e);
                            this.D = jv9VarP;
                            jv9VarP.p();
                        }
                    }
                    if (motionEvent.getAction() == 1 && (hVar = this.r) != null && view != null && !this.z) {
                        hVar.onClick(view, false);
                    }
                } else {
                    this.K = true;
                }
            } else if (motionEvent.getAction() == 2) {
                if (!this.F) {
                    return !this.x && view.onTouchEvent(motionEvent);
                }
                if ((motionEvent.getX() < 0.0f || motionEvent.getY() < 0.0f || motionEvent.getX() > view.getWidth() || motionEvent.getY() > view.getHeight() || s(motionEvent)) && !this.z) {
                    if (this.E > 0) {
                        this.y.removeCallbacks(this.G);
                    }
                    this.z = true;
                    jv9 jv9Var3 = this.C;
                    if (jv9Var3 != null && jv9Var3.h()) {
                        this.C.c();
                    }
                    float f3 = this.d;
                    if (f3 != this.b) {
                        jv9 jv9VarP2 = p(f3, this.e);
                        this.D = jv9VarP2;
                        jv9VarP2.p();
                    }
                }
            }
        }
        return !this.x && view.onTouchEvent(motionEvent);
    }

    public final jv9 p(float f2, float f3) {
        WeakReference weakReference;
        float f4 = this.g;
        if (!this.H || (weakReference = this.p) == null) {
            bq5.p("OSSpringPressSealAnimat", "createEndAnimation: use default param, stiffness=" + f4 + ", enableDynamic=" + this.H);
        } else {
            View view = (View) weakReference.get();
            if (view != null) {
                float fA = dmb.a(view);
                float fD = dmb.d(fA);
                bq5.p("OSSpringPressSealAnimat", "createEndAnimation: dynamic param enabled, area=" + fA + ", stiffness=" + fD + ", view size=" + view.getWidth() + "x" + view.getHeight());
                f4 = fD;
            }
        }
        kv9 kv9VarG = new kv9().i(f4).g(this.k);
        kv9VarG.h(f3);
        jv9 jv9Var = new jv9(this.n);
        jv9Var.z(kv9VarG);
        jv9Var.m(f2);
        jv9Var.n(this.o);
        jv9Var.k(0.002f);
        jv9Var.b(new c());
        jv9Var.a(new d());
        return jv9Var;
    }

    public final jv9 q(float f2, float f3) {
        WeakReference weakReference;
        float f4 = this.f;
        if (!this.H || (weakReference = this.p) == null) {
            bq5.p("OSSpringPressSealAnimat", "createStartAnimation: use default param, stiffness=" + f4 + ", finalPosition=" + f3 + ", enableDynamic=" + this.H);
        } else {
            View view = (View) weakReference.get();
            if (view != null) {
                float fA = dmb.a(view);
                float fD = dmb.d(fA);
                float fB = this.w ? dmb.b(fA) : dmb.c(fA);
                bq5.p("OSSpringPressSealAnimat", "createStartAnimation: dynamic param enabled, area=" + fA + ", stiffness=" + fD + ", finalPosition=" + fB + ", isLiquid=" + this.w + ", endValue=" + f3 + ", view size=" + view.getWidth() + "x" + view.getHeight());
                f4 = fD;
                f3 = fB;
            }
        }
        kv9 kv9VarG = new kv9().i(f4).g(this.j);
        kv9VarG.h(f3);
        jv9 jv9Var = new jv9(this.n);
        jv9Var.z(kv9VarG);
        jv9Var.m(f2);
        jv9Var.n(this.o);
        jv9Var.k(0.002f);
        jv9Var.b(new a());
        jv9Var.a(new b());
        return jv9Var;
    }

    public final boolean s(MotionEvent motionEvent) {
        return Math.sqrt(Math.pow((double) (motionEvent.getX() - this.A), 2.0d) + Math.pow((double) (motionEvent.getY() - this.B), 2.0d)) > ((double) this.q);
    }

    public void setEndValue(float f2) {
        this.c = f2;
        this.e = f2;
    }

    public void setOnSpringClickListener(h hVar) {
        this.r = hVar;
    }

    public final void t(View view) {
        h hVar = this.r;
        if (hVar != null) {
            hVar.onClick(view, false);
        }
    }

    public void u(boolean z) {
        this.J = z;
    }

    public OSSpringPressSealAnimation(e eVar) {
        this.z = false;
        this.F = true;
        this.I = false;
        this.J = false;
        this.K = true;
        float f2 = eVar.b;
        this.b = f2;
        this.c = eVar.c;
        this.g = eVar.e;
        float f3 = eVar.g;
        this.i = f3;
        this.f = eVar.d;
        float f4 = eVar.f;
        this.h = f4;
        this.j = eVar.h;
        float f5 = eVar.j;
        this.l = f5;
        this.k = eVar.i;
        float f6 = eVar.k;
        this.m = f6;
        this.n = eVar.l;
        this.o = eVar.m;
        this.p = eVar.q;
        this.r = eVar.r;
        this.s = eVar.p;
        this.t = eVar.o;
        this.u = eVar.n;
        this.v = eVar.a;
        this.E = eVar.t;
        this.F = eVar.u;
        this.w = eVar.v;
        this.x = eVar.w;
        this.H = eVar.x;
        if (this.p != null) {
            this.q = r(eVar.s > 0.0f ? (int) eVar.s : 20);
        }
        this.d = f2;
        this.e = this.c;
        WeakReference weakReference = this.p;
        if (weakReference != null && weakReference.get() != null) {
            View view = (View) this.p.get();
            if ((!olb.E || this.v) && !olb.r0(view.getContext())) {
                view.setOnTouchListener(this);
            } else {
                view.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        this.b.t(view2);
                    }
                });
            }
            this.y = new Handler(Looper.getMainLooper());
            this.G = new DelayCallback(view, this);
        }
        if (this.w) {
            this.j = f5;
            this.k = f6;
            this.f = f4;
            this.g = f3;
        }
    }
}
