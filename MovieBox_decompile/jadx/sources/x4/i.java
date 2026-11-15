package x4;

import android.view.Choreographer;

public class i extends c implements Choreographer.FrameCallback {

    private com.airbnb.lottie.h f75092l;

    private float f75084d = 1.0f;

    private boolean f75085e = false;

    private long f75086f = 0;

    private float f75087g = 0.0f;

    private float f75088h = 0.0f;

    private int f75089i = 0;

    private float f75090j = -2.14748365E9f;

    private float f75091k = 2.14748365E9f;

    protected boolean f75093m = false;

    private boolean f75094n = false;

    private void G() {
        if (this.f75092l == null) {
            return;
        }
        float f10 = this.f75088h;
        if (f10 < this.f75090j || f10 > this.f75091k) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f75090j), Float.valueOf(this.f75091k), Float.valueOf(this.f75088h)));
        }
    }

    private float n() {
        com.airbnb.lottie.h hVar = this.f75092l;
        if (hVar == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / hVar.i()) / Math.abs(this.f75084d);
    }

    private boolean r() {
        return q() < 0.0f;
    }

    public void A(float f10) {
        if (this.f75087g == f10) {
            return;
        }
        float fB = k.b(f10, p(), o());
        this.f75087g = fB;
        if (this.f75094n) {
            fB = (float) Math.floor(fB);
        }
        this.f75088h = fB;
        this.f75086f = 0L;
        i();
    }

    public void B(float f10) {
        C(this.f75090j, f10);
    }

    public void C(float f10, float f11) {
        if (f10 > f11) {
            throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f10), Float.valueOf(f11)));
        }
        com.airbnb.lottie.h hVar = this.f75092l;
        float fP = hVar == null ? -3.4028235E38f : hVar.p();
        com.airbnb.lottie.h hVar2 = this.f75092l;
        float f12 = hVar2 == null ? Float.MAX_VALUE : hVar2.f();
        float fB = k.b(f10, fP, f12);
        float fB2 = k.b(f11, fP, f12);
        if (fB == this.f75090j && fB2 == this.f75091k) {
            return;
        }
        this.f75090j = fB;
        this.f75091k = fB2;
        A((int) k.b(this.f75088h, fB, fB2));
    }

    public void D(int i10) {
        C(i10, (int) this.f75091k);
    }

    public void E(float f10) {
        this.f75084d = f10;
    }

    public void F(boolean z10) {
        this.f75094n = z10;
    }

    @Override
    void a() {
        super.a();
        b(r());
    }

    @Override
    public void cancel() {
        a();
        v();
    }

    @Override
    public void doFrame(long j10) {
        u();
        if (this.f75092l == null || !isRunning()) {
            return;
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("LottieValueAnimator#doFrame");
        }
        long j11 = this.f75086f;
        float fN = (j11 != 0 ? j10 - j11 : 0L) / n();
        float f10 = this.f75087g;
        if (r()) {
            fN = -fN;
        }
        float f11 = f10 + fN;
        boolean zD = k.d(f11, p(), o());
        float f12 = this.f75087g;
        float fB = k.b(f11, p(), o());
        this.f75087g = fB;
        if (this.f75094n) {
            fB = (float) Math.floor(fB);
        }
        this.f75088h = fB;
        this.f75086f = j10;
        if (!this.f75094n || this.f75087g != f12) {
            i();
        }
        if (!zD) {
            if (getRepeatCount() == -1 || this.f75089i < getRepeatCount()) {
                e();
                this.f75089i++;
                if (getRepeatMode() == 2) {
                    this.f75085e = !this.f75085e;
                    y();
                } else {
                    float fO = r() ? o() : p();
                    this.f75087g = fO;
                    this.f75088h = fO;
                }
                this.f75086f = j10;
            } else {
                float fP = this.f75084d < 0.0f ? p() : o();
                this.f75087g = fP;
                this.f75088h = fP;
                v();
                b(r());
            }
        }
        G();
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("LottieValueAnimator#doFrame");
        }
    }

    @Override
    public float getAnimatedFraction() {
        float fP;
        float fO;
        float fP2;
        if (this.f75092l == null) {
            return 0.0f;
        }
        if (r()) {
            fP = o() - this.f75088h;
            fO = o();
            fP2 = p();
        } else {
            fP = this.f75088h - p();
            fO = o();
            fP2 = p();
        }
        return fP / (fO - fP2);
    }

    @Override
    public Object getAnimatedValue() {
        return Float.valueOf(l());
    }

    @Override
    public long getDuration() {
        com.airbnb.lottie.h hVar = this.f75092l;
        if (hVar == null) {
            return 0L;
        }
        return (long) hVar.d();
    }

    @Override
    public boolean isRunning() {
        return this.f75093m;
    }

    public void j() {
        this.f75092l = null;
        this.f75090j = -2.14748365E9f;
        this.f75091k = 2.14748365E9f;
    }

    public void k() {
        v();
        b(r());
    }

    public float l() {
        com.airbnb.lottie.h hVar = this.f75092l;
        if (hVar == null) {
            return 0.0f;
        }
        return (this.f75088h - hVar.p()) / (this.f75092l.f() - this.f75092l.p());
    }

    public float m() {
        return this.f75088h;
    }

    public float o() {
        com.airbnb.lottie.h hVar = this.f75092l;
        if (hVar == null) {
            return 0.0f;
        }
        float f10 = this.f75091k;
        return f10 == 2.14748365E9f ? hVar.f() : f10;
    }

    public float p() {
        com.airbnb.lottie.h hVar = this.f75092l;
        if (hVar == null) {
            return 0.0f;
        }
        float f10 = this.f75090j;
        return f10 == -2.14748365E9f ? hVar.p() : f10;
    }

    public float q() {
        return this.f75084d;
    }

    public void s() {
        v();
        c();
    }

    @Override
    public void setRepeatMode(int i10) {
        super.setRepeatMode(i10);
        if (i10 == 2 || !this.f75085e) {
            return;
        }
        this.f75085e = false;
        y();
    }

    public void t() {
        this.f75093m = true;
        h(r());
        A((int) (r() ? o() : p()));
        this.f75086f = 0L;
        this.f75089i = 0;
        u();
    }

    protected void u() {
        if (isRunning()) {
            w(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    protected void v() {
        w(true);
    }

    protected void w(boolean z10) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z10) {
            this.f75093m = false;
        }
    }

    public void x() {
        this.f75093m = true;
        u();
        this.f75086f = 0L;
        if (r() && m() == p()) {
            A(o());
        } else if (!r() && m() == o()) {
            A(p());
        }
        g();
    }

    public void y() {
        E(-q());
    }

    public void z(com.airbnb.lottie.h hVar) {
        boolean z10 = this.f75092l == null;
        this.f75092l = hVar;
        if (z10) {
            C(Math.max(this.f75090j, hVar.p()), Math.min(this.f75091k, hVar.f()));
        } else {
            C((int) hVar.p(), (int) hVar.f());
        }
        float f10 = this.f75088h;
        this.f75088h = 0.0f;
        this.f75087g = 0.0f;
        A((int) f10);
        i();
    }
}
