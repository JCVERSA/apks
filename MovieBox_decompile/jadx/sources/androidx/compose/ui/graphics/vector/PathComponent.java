package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.r4;
import androidx.compose.ui.graphics.w0;
import androidx.compose.ui.graphics.x0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class PathComponent extends i {

    private String f4388b;

    private j1 f4389c;

    private float f4390d;

    private List f4391e;

    private int f4392f;

    private float f4393g;

    private float f4394h;

    private j1 f4395i;

    private int f4396j;

    private int f4397k;

    private float f4398l;

    private float f4399m;

    private float f4400n;

    private float f4401o;

    private boolean f4402p;

    private boolean f4403q;

    private boolean f4404r;

    private z.m f4405s;

    private final Path f4406t;

    private Path f4407u;

    private final Lazy f4408v;

    public PathComponent() {
        super(null);
        this.f4388b = "";
        this.f4390d = 1.0f;
        this.f4391e = k.d();
        this.f4392f = k.a();
        this.f4393g = 1.0f;
        this.f4396j = k.b();
        this.f4397k = k.c();
        this.f4398l = 4.0f;
        this.f4400n = 1.0f;
        this.f4402p = true;
        this.f4403q = true;
        Path pathA = x0.a();
        this.f4406t = pathA;
        this.f4407u = pathA;
        this.f4408v = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<r4>() {
            @Override
            public final r4 invoke() {
                return w0.a();
            }
        });
    }

    private final r4 f() {
        return (r4) this.f4408v.getValue();
    }

    private final void v() {
        h.c(this.f4391e, this.f4406t);
        w();
    }

    private final void w() {
        if (this.f4399m == 0.0f && this.f4400n == 1.0f) {
            this.f4407u = this.f4406t;
            return;
        }
        if (Intrinsics.c(this.f4407u, this.f4406t)) {
            this.f4407u = x0.a();
        } else {
            int iH = this.f4407u.h();
            this.f4407u.b();
            this.f4407u.e(iH);
        }
        f().b(this.f4406t, false);
        float length = f().getLength();
        float f10 = this.f4399m;
        float f11 = this.f4401o;
        float f12 = ((f10 + f11) % 1.0f) * length;
        float f13 = ((this.f4400n + f11) % 1.0f) * length;
        if (f12 <= f13) {
            f().a(f12, f13, this.f4407u, true);
        } else {
            f().a(f12, length, this.f4407u, true);
            f().a(0.0f, f13, this.f4407u, true);
        }
    }

    @Override
    public void a(z.g gVar) {
        if (this.f4402p) {
            v();
        } else if (this.f4404r) {
            w();
        }
        this.f4402p = false;
        this.f4404r = false;
        j1 j1Var = this.f4389c;
        if (j1Var != null) {
            z.f.g(gVar, this.f4407u, j1Var, this.f4390d, null, null, 0, 56, null);
        }
        j1 j1Var2 = this.f4395i;
        if (j1Var2 != null) {
            z.m mVar = this.f4405s;
            if (this.f4403q || mVar == null) {
                mVar = new z.m(this.f4394h, this.f4398l, this.f4396j, this.f4397k, null, 16, null);
                this.f4405s = mVar;
                this.f4403q = false;
            }
            z.f.g(gVar, this.f4407u, j1Var2, this.f4393g, mVar, null, 0, 48, null);
        }
    }

    public final j1 e() {
        return this.f4389c;
    }

    public final j1 g() {
        return this.f4395i;
    }

    public final void h(j1 j1Var) {
        this.f4389c = j1Var;
        c();
    }

    public final void i(float f10) {
        this.f4390d = f10;
        c();
    }

    public final void j(String str) {
        this.f4388b = str;
        c();
    }

    public final void k(List list) {
        this.f4391e = list;
        this.f4402p = true;
        c();
    }

    public final void l(int i10) {
        this.f4392f = i10;
        this.f4407u.e(i10);
        c();
    }

    public final void m(j1 j1Var) {
        this.f4395i = j1Var;
        c();
    }

    public final void n(float f10) {
        this.f4393g = f10;
        c();
    }

    public final void o(int i10) {
        this.f4396j = i10;
        this.f4403q = true;
        c();
    }

    public final void p(int i10) {
        this.f4397k = i10;
        this.f4403q = true;
        c();
    }

    public final void q(float f10) {
        this.f4398l = f10;
        this.f4403q = true;
        c();
    }

    public final void r(float f10) {
        this.f4394h = f10;
        this.f4403q = true;
        c();
    }

    public final void s(float f10) {
        this.f4400n = f10;
        this.f4404r = true;
        c();
    }

    public final void t(float f10) {
        this.f4401o = f10;
        this.f4404r = true;
        c();
    }

    public String toString() {
        return this.f4406t.toString();
    }

    public final void u(float f10) {
        this.f4399m = f10;
        this.f4404r = true;
        c();
    }
}
