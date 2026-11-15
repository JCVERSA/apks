package androidx.compose.foundation;

import android.content.Context;
import android.widget.EdgeEffect;

final class p {

    private final Context f2838a;

    private final int f2839b;

    private long f2840c = o0.t.f67425b.a();

    private EdgeEffect f2841d;

    private EdgeEffect f2842e;

    private EdgeEffect f2843f;

    private EdgeEffect f2844g;

    private EdgeEffect f2845h;

    private EdgeEffect f2846i;

    private EdgeEffect f2847j;

    private EdgeEffect f2848k;

    public p(Context context, int i10) {
        this.f2838a = context;
        this.f2839b = i10;
    }

    private final EdgeEffect e() {
        EdgeEffect edgeEffectA = o.f2837a.a(this.f2838a);
        edgeEffectA.setColor(this.f2839b);
        if (!o0.t.e(this.f2840c, o0.t.f67425b.a())) {
            edgeEffectA.setSize(o0.t.g(this.f2840c), o0.t.f(this.f2840c));
        }
        return edgeEffectA;
    }

    private final boolean n(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !edgeEffect.isFinished();
    }

    private final boolean x(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !(o.f2837a.b(edgeEffect) == 0.0f);
    }

    public final boolean A() {
        return x(this.f2841d);
    }

    public final void B(long j10) {
        this.f2840c = j10;
        EdgeEffect edgeEffect = this.f2841d;
        if (edgeEffect != null) {
            edgeEffect.setSize(o0.t.g(j10), o0.t.f(j10));
        }
        EdgeEffect edgeEffect2 = this.f2842e;
        if (edgeEffect2 != null) {
            edgeEffect2.setSize(o0.t.g(j10), o0.t.f(j10));
        }
        EdgeEffect edgeEffect3 = this.f2843f;
        if (edgeEffect3 != null) {
            edgeEffect3.setSize(o0.t.f(j10), o0.t.g(j10));
        }
        EdgeEffect edgeEffect4 = this.f2844g;
        if (edgeEffect4 != null) {
            edgeEffect4.setSize(o0.t.f(j10), o0.t.g(j10));
        }
        EdgeEffect edgeEffect5 = this.f2845h;
        if (edgeEffect5 != null) {
            edgeEffect5.setSize(o0.t.g(j10), o0.t.f(j10));
        }
        EdgeEffect edgeEffect6 = this.f2846i;
        if (edgeEffect6 != null) {
            edgeEffect6.setSize(o0.t.g(j10), o0.t.f(j10));
        }
        EdgeEffect edgeEffect7 = this.f2847j;
        if (edgeEffect7 != null) {
            edgeEffect7.setSize(o0.t.f(j10), o0.t.g(j10));
        }
        EdgeEffect edgeEffect8 = this.f2848k;
        if (edgeEffect8 != null) {
            edgeEffect8.setSize(o0.t.f(j10), o0.t.g(j10));
        }
    }

    public final EdgeEffect f() {
        EdgeEffect edgeEffect = this.f2842e;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f2842e = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect g() {
        EdgeEffect edgeEffect = this.f2846i;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f2846i = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect h() {
        EdgeEffect edgeEffect = this.f2843f;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f2843f = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect i() {
        EdgeEffect edgeEffect = this.f2847j;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f2847j = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect j() {
        EdgeEffect edgeEffect = this.f2844g;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f2844g = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect k() {
        EdgeEffect edgeEffect = this.f2848k;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f2848k = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect l() {
        EdgeEffect edgeEffect = this.f2841d;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f2841d = edgeEffectE;
        return edgeEffectE;
    }

    public final EdgeEffect m() {
        EdgeEffect edgeEffect = this.f2845h;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectE = e();
        this.f2845h = edgeEffectE;
        return edgeEffectE;
    }

    public final boolean o() {
        return n(this.f2842e);
    }

    public final boolean p() {
        return x(this.f2846i);
    }

    public final boolean q() {
        return x(this.f2842e);
    }

    public final boolean r() {
        return n(this.f2843f);
    }

    public final boolean s() {
        return x(this.f2847j);
    }

    public final boolean t() {
        return x(this.f2843f);
    }

    public final boolean u() {
        return n(this.f2844g);
    }

    public final boolean v() {
        return x(this.f2848k);
    }

    public final boolean w() {
        return x(this.f2844g);
    }

    public final boolean y() {
        return n(this.f2841d);
    }

    public final boolean z() {
        return x(this.f2845h);
    }
}
