package androidx.compose.ui.platform;

import android.graphics.Outline;
import android.os.Build;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.graphics.o4;
import kotlin.jvm.internal.Intrinsics;

public final class i1 {

    private boolean f5499a = true;

    private final Outline f5500b;

    private k4 f5501c;

    private Path f5502d;

    private Path f5503e;

    private boolean f5504f;

    private boolean f5505g;

    private Path f5506h;

    private y.k f5507i;

    private float f5508j;

    private long f5509k;

    private long f5510l;

    private boolean f5511m;

    private Path f5512n;

    private Path f5513o;

    public i1() {
        Outline outline = new Outline();
        outline.setAlpha(1.0f);
        this.f5500b = outline;
        this.f5509k = y.g.f75999b.c();
        this.f5510l = y.m.f76020b.b();
    }

    private final boolean g(y.k kVar, long j10, long j11, float f10) {
        return kVar != null && y.l.e(kVar) && kVar.e() == y.g.m(j10) && kVar.g() == y.g.n(j10) && kVar.f() == y.g.m(j10) + y.m.i(j11) && kVar.a() == y.g.n(j10) + y.m.g(j11) && y.a.d(kVar.h()) == f10;
    }

    private final void i() {
        if (this.f5504f) {
            this.f5509k = y.g.f75999b.c();
            this.f5508j = 0.0f;
            this.f5503e = null;
            this.f5504f = false;
            this.f5505g = false;
            k4 k4Var = this.f5501c;
            if (k4Var == null || !this.f5511m || y.m.i(this.f5510l) <= 0.0f || y.m.g(this.f5510l) <= 0.0f) {
                this.f5500b.setEmpty();
                return;
            }
            this.f5499a = true;
            if (k4Var instanceof k4.b) {
                k(((k4.b) k4Var).b());
            } else if (k4Var instanceof k4.c) {
                l(((k4.c) k4Var).b());
            } else if (k4Var instanceof k4.a) {
                j(((k4.a) k4Var).b());
            }
        }
    }

    private final void j(Path path) {
        if (Build.VERSION.SDK_INT > 28 || path.a()) {
            Outline outline = this.f5500b;
            if (!(path instanceof androidx.compose.ui.graphics.u0)) {
                throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
            }
            outline.setConvexPath(((androidx.compose.ui.graphics.u0) path).p());
            this.f5505g = !this.f5500b.canClip();
        } else {
            this.f5499a = false;
            this.f5500b.setEmpty();
            this.f5505g = true;
        }
        this.f5503e = path;
    }

    private final void k(y.i iVar) {
        this.f5509k = y.h.a(iVar.f(), iVar.i());
        this.f5510l = y.n.a(iVar.k(), iVar.e());
        this.f5500b.setRect(Math.round(iVar.f()), Math.round(iVar.i()), Math.round(iVar.g()), Math.round(iVar.c()));
    }

    private final void l(y.k kVar) {
        float fD = y.a.d(kVar.h());
        this.f5509k = y.h.a(kVar.e(), kVar.g());
        this.f5510l = y.n.a(kVar.j(), kVar.d());
        if (y.l.e(kVar)) {
            this.f5500b.setRoundRect(Math.round(kVar.e()), Math.round(kVar.g()), Math.round(kVar.f()), Math.round(kVar.a()), fD);
            this.f5508j = fD;
            return;
        }
        Path pathA = this.f5502d;
        if (pathA == null) {
            pathA = androidx.compose.ui.graphics.x0.a();
            this.f5502d = pathA;
        }
        pathA.reset();
        o4.b(pathA, kVar, null, 2, null);
        j(pathA);
    }

    public final void a(androidx.compose.ui.graphics.m1 m1Var) {
        Path pathD = d();
        if (pathD != null) {
            androidx.compose.ui.graphics.l1.c(m1Var, pathD, 0, 2, null);
            return;
        }
        float f10 = this.f5508j;
        if (f10 <= 0.0f) {
            androidx.compose.ui.graphics.l1.d(m1Var, y.g.m(this.f5509k), y.g.n(this.f5509k), y.g.m(this.f5509k) + y.m.i(this.f5510l), y.g.n(this.f5509k) + y.m.g(this.f5510l), 0, 16, null);
            return;
        }
        Path pathA = this.f5506h;
        y.k kVar = this.f5507i;
        if (pathA == null || !g(kVar, this.f5509k, this.f5510l, f10)) {
            y.k kVarC = y.l.c(y.g.m(this.f5509k), y.g.n(this.f5509k), y.g.m(this.f5509k) + y.m.i(this.f5510l), y.g.n(this.f5509k) + y.m.g(this.f5510l), y.b.b(this.f5508j, 0.0f, 2, null));
            if (pathA == null) {
                pathA = androidx.compose.ui.graphics.x0.a();
            } else {
                pathA.reset();
            }
            o4.b(pathA, kVarC, null, 2, null);
            this.f5507i = kVarC;
            this.f5506h = pathA;
        }
        androidx.compose.ui.graphics.l1.c(m1Var, pathA, 0, 2, null);
    }

    public final Outline b() {
        i();
        if (this.f5511m && this.f5499a) {
            return this.f5500b;
        }
        return null;
    }

    public final boolean c() {
        return this.f5504f;
    }

    public final Path d() {
        i();
        return this.f5503e;
    }

    public final boolean e() {
        return !this.f5505g;
    }

    public final boolean f(long j10) {
        k4 k4Var;
        if (this.f5511m && (k4Var = this.f5501c) != null) {
            return f2.b(k4Var, y.g.m(j10), y.g.n(j10), this.f5512n, this.f5513o);
        }
        return true;
    }

    public final boolean h(k4 k4Var, float f10, boolean z10, float f11, long j10) {
        this.f5500b.setAlpha(f10);
        boolean zC = Intrinsics.c(this.f5501c, k4Var);
        boolean z11 = !zC;
        if (!zC) {
            this.f5501c = k4Var;
            this.f5504f = true;
        }
        this.f5510l = j10;
        boolean z12 = k4Var != null && (z10 || f11 > 0.0f);
        if (this.f5511m != z12) {
            this.f5511m = z12;
            this.f5504f = true;
        }
        return z11;
    }
}
