package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.view.ViewCompat;

public abstract class AutoScrollHelper implements View.OnTouchListener {

    private static final int f8134r = ViewConfiguration.getTapTimeout();

    final View f8137c;

    private Runnable f8138d;

    private int f8141g;

    private int f8142h;

    private boolean f8146l;

    boolean f8147m;

    boolean f8148n;

    boolean f8149o;

    private boolean f8150p;

    private boolean f8151q;

    final a f8135a = new a();

    private final Interpolator f8136b = new AccelerateInterpolator();

    private float[] f8139e = {0.0f, 0.0f};

    private float[] f8140f = {Float.MAX_VALUE, Float.MAX_VALUE};

    private float[] f8143i = {0.0f, 0.0f};

    private float[] f8144j = {0.0f, 0.0f};

    private float[] f8145k = {Float.MAX_VALUE, Float.MAX_VALUE};

    private class ScrollAnimationRunnable implements Runnable {
        ScrollAnimationRunnable() {
        }

        @Override
        public void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (autoScrollHelper.f8149o) {
                if (autoScrollHelper.f8147m) {
                    autoScrollHelper.f8147m = false;
                    autoScrollHelper.f8135a.m();
                }
                a aVar = AutoScrollHelper.this.f8135a;
                if (aVar.h() || !AutoScrollHelper.this.u()) {
                    AutoScrollHelper.this.f8149o = false;
                    return;
                }
                AutoScrollHelper autoScrollHelper2 = AutoScrollHelper.this;
                if (autoScrollHelper2.f8148n) {
                    autoScrollHelper2.f8148n = false;
                    autoScrollHelper2.c();
                }
                aVar.a();
                AutoScrollHelper.this.j(aVar.b(), aVar.c());
                ViewCompat.postOnAnimation(AutoScrollHelper.this.f8137c, this);
            }
        }
    }

    private static class a {

        private int f8152a;

        private int f8153b;

        private float f8154c;

        private float f8155d;

        private float f8161j;

        private int f8162k;

        private long f8156e = Long.MIN_VALUE;

        private long f8160i = -1;

        private long f8157f = 0;

        private int f8158g = 0;

        private int f8159h = 0;

        a() {
        }

        private float e(long j10) {
            long j11 = this.f8156e;
            if (j10 < j11) {
                return 0.0f;
            }
            long j12 = this.f8160i;
            if (j12 < 0 || j10 < j12) {
                return AutoScrollHelper.e((j10 - j11) / this.f8152a, 0.0f, 1.0f) * 0.5f;
            }
            float f10 = this.f8161j;
            return (1.0f - f10) + (f10 * AutoScrollHelper.e((j10 - j12) / this.f8162k, 0.0f, 1.0f));
        }

        private float g(float f10) {
            return ((-4.0f) * f10 * f10) + (f10 * 4.0f);
        }

        public void a() {
            if (this.f8157f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fG = g(e(jCurrentAnimationTimeMillis));
            long j10 = jCurrentAnimationTimeMillis - this.f8157f;
            this.f8157f = jCurrentAnimationTimeMillis;
            float f10 = j10 * fG;
            this.f8158g = (int) (this.f8154c * f10);
            this.f8159h = (int) (f10 * this.f8155d);
        }

        public int b() {
            return this.f8158g;
        }

        public int c() {
            return this.f8159h;
        }

        public int d() {
            float f10 = this.f8154c;
            return (int) (f10 / Math.abs(f10));
        }

        public int f() {
            float f10 = this.f8155d;
            return (int) (f10 / Math.abs(f10));
        }

        public boolean h() {
            return this.f8160i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f8160i + ((long) this.f8162k);
        }

        public void i() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f8162k = AutoScrollHelper.f((int) (jCurrentAnimationTimeMillis - this.f8156e), 0, this.f8153b);
            this.f8161j = e(jCurrentAnimationTimeMillis);
            this.f8160i = jCurrentAnimationTimeMillis;
        }

        public void j(int i10) {
            this.f8153b = i10;
        }

        public void k(int i10) {
            this.f8152a = i10;
        }

        public void l(float f10, float f11) {
            this.f8154c = f10;
            this.f8155d = f11;
        }

        public void m() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f8156e = jCurrentAnimationTimeMillis;
            this.f8160i = -1L;
            this.f8157f = jCurrentAnimationTimeMillis;
            this.f8161j = 0.5f;
            this.f8158g = 0;
            this.f8159h = 0;
        }
    }

    public AutoScrollHelper(View view) {
        this.f8137c = view;
        float f10 = Resources.getSystem().getDisplayMetrics().density;
        float f11 = (int) ((1575.0f * f10) + 0.5f);
        o(f11, f11);
        float f12 = (int) ((f10 * 315.0f) + 0.5f);
        p(f12, f12);
        l(1);
        n(Float.MAX_VALUE, Float.MAX_VALUE);
        s(0.2f, 0.2f);
        t(1.0f, 1.0f);
        k(f8134r);
        r(500);
        q(500);
    }

    private float d(int i10, float f10, float f11, float f12) {
        float fH = h(this.f8139e[i10], f11, this.f8140f[i10], f10);
        if (fH == 0.0f) {
            return 0.0f;
        }
        float f13 = this.f8143i[i10];
        float f14 = this.f8144j[i10];
        float f15 = this.f8145k[i10];
        float f16 = f13 * f12;
        return fH > 0.0f ? e(fH * f16, f14, f15) : -e((-fH) * f16, f14, f15);
    }

    static float e(float f10, float f11, float f12) {
        if (f10 > f12) {
            return f12;
        }
        return f10 < f11 ? f11 : f10;
    }

    static int f(int i10, int i11, int i12) {
        if (i10 > i12) {
            return i12;
        }
        return i10 < i11 ? i11 : i10;
    }

    private float g(float f10, float f11) {
        if (f11 == 0.0f) {
            return 0.0f;
        }
        int i10 = this.f8141g;
        if (i10 == 0 || i10 == 1) {
            if (f10 < f11) {
                if (f10 >= 0.0f) {
                    return 1.0f - (f10 / f11);
                }
                if (this.f8149o && i10 == 1) {
                    return 1.0f;
                }
            }
        } else if (i10 == 2 && f10 < 0.0f) {
            return f10 / (-f11);
        }
        return 0.0f;
    }

    private float h(float f10, float f11, float f12, float f13) {
        float interpolation;
        float fE = e(f10 * f11, 0.0f, f12);
        float fG = g(f11 - f13, fE) - g(f13, fE);
        if (fG < 0.0f) {
            interpolation = -this.f8136b.getInterpolation(-fG);
        } else {
            if (fG <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.f8136b.getInterpolation(fG);
        }
        return e(interpolation, -1.0f, 1.0f);
    }

    private void i() {
        if (this.f8147m) {
            this.f8149o = false;
        } else {
            this.f8135a.i();
        }
    }

    private void v() {
        int i10;
        if (this.f8138d == null) {
            this.f8138d = new ScrollAnimationRunnable();
        }
        this.f8149o = true;
        this.f8147m = true;
        if (this.f8146l || (i10 = this.f8142h) <= 0) {
            this.f8138d.run();
        } else {
            ViewCompat.postOnAnimationDelayed(this.f8137c, this.f8138d, i10);
        }
        this.f8146l = true;
    }

    public abstract boolean a(int i10);

    public abstract boolean b(int i10);

    void c() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f8137c.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    public abstract void j(int i10, int i11);

    public AutoScrollHelper k(int i10) {
        this.f8142h = i10;
        return this;
    }

    public AutoScrollHelper l(int i10) {
        this.f8141g = i10;
        return this;
    }

    public AutoScrollHelper m(boolean z10) {
        if (this.f8150p && !z10) {
            i();
        }
        this.f8150p = z10;
        return this;
    }

    public AutoScrollHelper n(float f10, float f11) {
        float[] fArr = this.f8140f;
        fArr[0] = f10;
        fArr[1] = f11;
        return this;
    }

    public AutoScrollHelper o(float f10, float f11) {
        float[] fArr = this.f8145k;
        fArr[0] = f10 / 1000.0f;
        fArr[1] = f11 / 1000.0f;
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0016  */
    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.f8150p) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                i();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    i();
                }
            }
            return this.f8151q && this.f8149o;
        }
        this.f8148n = true;
        this.f8146l = false;
        this.f8135a.l(d(0, motionEvent.getX(), view.getWidth(), this.f8137c.getWidth()), d(1, motionEvent.getY(), view.getHeight(), this.f8137c.getHeight()));
        if (!this.f8149o && u()) {
            v();
        }
        if (this.f8151q) {
            return false;
        }
    }

    public AutoScrollHelper p(float f10, float f11) {
        float[] fArr = this.f8144j;
        fArr[0] = f10 / 1000.0f;
        fArr[1] = f11 / 1000.0f;
        return this;
    }

    public AutoScrollHelper q(int i10) {
        this.f8135a.j(i10);
        return this;
    }

    public AutoScrollHelper r(int i10) {
        this.f8135a.k(i10);
        return this;
    }

    public AutoScrollHelper s(float f10, float f11) {
        float[] fArr = this.f8139e;
        fArr[0] = f10;
        fArr[1] = f11;
        return this;
    }

    public AutoScrollHelper t(float f10, float f11) {
        float[] fArr = this.f8143i;
        fArr[0] = f10 / 1000.0f;
        fArr[1] = f11 / 1000.0f;
        return this;
    }

    boolean u() {
        a aVar = this.f8135a;
        int iF = aVar.f();
        int iD = aVar.d();
        return (iF != 0 && b(iF)) || (iD != 0 && a(iD));
    }
}
