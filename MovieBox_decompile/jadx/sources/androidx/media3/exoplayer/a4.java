package androidx.media3.exoplayer;

import java.util.Objects;

class a4 {

    private final w3 f10683a;

    private final int f10684b;

    private final w3 f10685c;

    private int f10686d = 0;

    private boolean f10687e = false;

    private boolean f10688f = false;

    public a4(w3 w3Var, w3 w3Var2, int i10) {
        this.f10683a = w3Var;
        this.f10684b = i10;
        this.f10685c = w3Var2;
    }

    private boolean A() {
        return this.f10686d == 3;
    }

    private void C(w3 w3Var, f2.u uVar, n nVar, long j10, boolean z10) {
        if (y(w3Var)) {
            if (uVar != w3Var.getStream()) {
                d(w3Var, nVar);
            } else if (z10) {
                w3Var.resetPosition(j10);
            }
        }
    }

    private void E(boolean z10) {
        if (z10) {
            if (this.f10687e) {
                this.f10683a.reset();
                this.f10687e = false;
                return;
            }
            return;
        }
        if (this.f10688f) {
            ((w3) androidx.media3.common.util.a.e(this.f10685c)).reset();
            this.f10688f = false;
        }
    }

    private int K(w3 w3Var, y2 y2Var, i2.f0 f0Var, n nVar) {
        if (w3Var == null || !y(w3Var) || ((w3Var == this.f10683a && v()) || (w3Var == this.f10685c && A()))) {
            return 1;
        }
        f2.u stream = w3Var.getStream();
        f2.u[] uVarArr = y2Var.f13058c;
        int i10 = this.f10684b;
        boolean z10 = stream != uVarArr[i10];
        boolean zC = f0Var.c(i10);
        if (zC && !z10) {
            return 1;
        }
        if (!w3Var.isCurrentStreamFinal()) {
            w3Var.l(i(f0Var.f61646c[this.f10684b]), (f2.u) androidx.media3.common.util.a.e(y2Var.f13058c[this.f10684b]), y2Var.n(), y2Var.m(), y2Var.f13063h.f13076a);
            return 3;
        }
        if (!w3Var.isEnded()) {
            return 0;
        }
        d(w3Var, nVar);
        if (!zC || u()) {
            E(w3Var == this.f10683a);
        }
        return 1;
    }

    private void P(w3 w3Var, long j10) {
        w3Var.setCurrentStreamFinal();
        if (w3Var instanceof h2.i) {
            ((h2.i) w3Var).g0(j10);
        }
    }

    private void X(boolean z10) {
        if (z10) {
            ((w3) androidx.media3.common.util.a.e(this.f10685c)).handleMessage(17, this.f10683a);
        } else {
            this.f10683a.handleMessage(17, androidx.media3.common.util.a.e(this.f10685c));
        }
    }

    private void d(w3 w3Var, n nVar) {
        androidx.media3.common.util.a.g(this.f10683a == w3Var || this.f10685c == w3Var);
        if (y(w3Var)) {
            nVar.a(w3Var);
            g(w3Var);
            w3Var.disable();
        }
    }

    private void g(w3 w3Var) {
        if (w3Var.getState() == 2) {
            w3Var.stop();
        }
    }

    private static androidx.media3.common.r[] i(i2.z zVar) {
        int length = zVar != null ? zVar.length() : 0;
        androidx.media3.common.r[] rVarArr = new androidx.media3.common.r[length];
        for (int i10 = 0; i10 < length; i10++) {
            rVarArr[i10] = ((i2.z) androidx.media3.common.util.a.e(zVar)).getFormat(i10);
        }
        return rVarArr;
    }

    private w3 l(y2 y2Var) {
        if (y2Var != null && y2Var.f13058c[this.f10684b] != null) {
            if (this.f10683a.getStream() == y2Var.f13058c[this.f10684b]) {
                return this.f10683a;
            }
            w3 w3Var = this.f10685c;
            if (w3Var != null && w3Var.getStream() == y2Var.f13058c[this.f10684b]) {
                return this.f10685c;
            }
        }
        return null;
    }

    private boolean p(y2 y2Var, w3 w3Var) {
        if (w3Var == null) {
            return true;
        }
        f2.u uVar = y2Var.f13058c[this.f10684b];
        if (w3Var.getStream() == null) {
            return true;
        }
        if (w3Var.getStream() == uVar && (uVar == null || w3Var.hasReadStreamToEnd() || q(w3Var, y2Var))) {
            return true;
        }
        y2 y2VarK = y2Var.k();
        return y2VarK != null && y2VarK.f13058c[this.f10684b] == w3Var.getStream();
    }

    private boolean q(w3 w3Var, y2 y2Var) {
        y2 y2VarK = y2Var.k();
        return y2Var.f13063h.f13082g && y2VarK != null && y2VarK.f13061f && ((w3Var instanceof h2.i) || (w3Var instanceof d2.c) || w3Var.e() >= y2VarK.n());
    }

    private boolean v() {
        int i10 = this.f10686d;
        return i10 == 2 || i10 == 4;
    }

    private static boolean y(w3 w3Var) {
        return w3Var.getState() != 0;
    }

    public void B(f2.u uVar, n nVar, long j10, boolean z10) {
        C(this.f10683a, uVar, nVar, j10, z10);
        w3 w3Var = this.f10685c;
        if (w3Var != null) {
            C(w3Var, uVar, nVar, j10, z10);
        }
    }

    public void D() {
        int i10 = this.f10686d;
        if (i10 == 3 || i10 == 4) {
            X(i10 == 4);
            this.f10686d = this.f10686d != 4 ? 1 : 0;
        } else if (i10 == 2) {
            this.f10686d = 0;
        }
    }

    public void F(i2.f0 f0Var, i2.f0 f0Var2, long j10) {
        int i10;
        boolean zC = f0Var.c(this.f10684b);
        boolean zC2 = f0Var2.c(this.f10684b);
        w3 w3Var = (this.f10685c == null || (i10 = this.f10686d) == 3 || (i10 == 0 && y(this.f10683a))) ? this.f10683a : (w3) androidx.media3.common.util.a.e(this.f10685c);
        if (!zC || w3Var.isCurrentStreamFinal()) {
            return;
        }
        boolean z10 = m() == -2;
        z3[] z3VarArr = f0Var.f61645b;
        int i11 = this.f10684b;
        z3 z3Var = z3VarArr[i11];
        z3 z3Var2 = f0Var2.f61645b[i11];
        if (!zC2 || !Objects.equals(z3Var2, z3Var) || z10 || u()) {
            P(w3Var, j10);
        }
    }

    public void G(y2 y2Var) {
        ((w3) androidx.media3.common.util.a.e(l(y2Var))).maybeThrowStreamError();
    }

    public void H() {
        this.f10683a.release();
        this.f10687e = false;
        w3 w3Var = this.f10685c;
        if (w3Var != null) {
            w3Var.release();
            this.f10688f = false;
        }
    }

    public void I(long j10, long j11) {
        if (y(this.f10683a)) {
            this.f10683a.render(j10, j11);
        }
        w3 w3Var = this.f10685c;
        if (w3Var == null || !y(w3Var)) {
            return;
        }
        this.f10685c.render(j10, j11);
    }

    public int J(y2 y2Var, i2.f0 f0Var, n nVar) {
        int iK = K(this.f10683a, y2Var, f0Var, nVar);
        return iK == 1 ? K(this.f10685c, y2Var, f0Var, nVar) : iK;
    }

    public void L() {
        if (!y(this.f10683a)) {
            E(true);
        }
        w3 w3Var = this.f10685c;
        if (w3Var == null || y(w3Var)) {
            return;
        }
        E(false);
    }

    public void M(y2 y2Var, long j10) {
        w3 w3VarL = l(y2Var);
        if (w3VarL != null) {
            w3VarL.resetPosition(j10);
        }
    }

    public void N(long j10) {
        int i10;
        if (y(this.f10683a) && (i10 = this.f10686d) != 4 && i10 != 2) {
            P(this.f10683a, j10);
        }
        w3 w3Var = this.f10685c;
        if (w3Var == null || !y(w3Var) || this.f10686d == 3) {
            return;
        }
        P(this.f10685c, j10);
    }

    public void O(y2 y2Var, long j10) {
        P((w3) androidx.media3.common.util.a.e(l(y2Var)), j10);
    }

    public void Q(float f10, float f11) {
        this.f10683a.d(f10, f11);
        w3 w3Var = this.f10685c;
        if (w3Var != null) {
            w3Var.d(f10, f11);
        }
    }

    public void R(androidx.media3.common.e0 e0Var) {
        this.f10683a.n(e0Var);
        w3 w3Var = this.f10685c;
        if (w3Var != null) {
            w3Var.n(e0Var);
        }
    }

    public void S(Object obj) {
        if (m() != 2) {
            return;
        }
        int i10 = this.f10686d;
        if (i10 == 4 || i10 == 1) {
            ((w3) androidx.media3.common.util.a.e(this.f10685c)).handleMessage(1, obj);
        } else {
            this.f10683a.handleMessage(1, obj);
        }
    }

    public void T(float f10) {
        if (m() != 1) {
            return;
        }
        this.f10683a.handleMessage(2, Float.valueOf(f10));
        w3 w3Var = this.f10685c;
        if (w3Var != null) {
            w3Var.handleMessage(2, Float.valueOf(f10));
        }
    }

    public void U() {
        if (this.f10683a.getState() == 1 && this.f10686d != 4) {
            this.f10683a.start();
            return;
        }
        w3 w3Var = this.f10685c;
        if (w3Var == null || w3Var.getState() != 1 || this.f10686d == 3) {
            return;
        }
        this.f10685c.start();
    }

    public void V() {
        int i10;
        androidx.media3.common.util.a.g(!u());
        if (y(this.f10683a)) {
            i10 = 3;
        } else {
            w3 w3Var = this.f10685c;
            i10 = (w3Var == null || !y(w3Var)) ? 2 : 4;
        }
        this.f10686d = i10;
    }

    public void W() {
        if (y(this.f10683a)) {
            g(this.f10683a);
        }
        w3 w3Var = this.f10685c;
        if (w3Var == null || !y(w3Var)) {
            return;
        }
        g(this.f10685c);
    }

    public boolean a(y2 y2Var) {
        w3 w3VarL = l(y2Var);
        return w3VarL == null || w3VarL.hasReadStreamToEnd() || w3VarL.isReady() || w3VarL.isEnded();
    }

    public void b(n nVar) {
        d(this.f10683a, nVar);
        w3 w3Var = this.f10685c;
        if (w3Var != null) {
            boolean z10 = y(w3Var) && this.f10686d != 3;
            d(this.f10685c, nVar);
            E(false);
            if (z10) {
                X(true);
            }
        }
        this.f10686d = 0;
    }

    public void c(n nVar) {
        if (u()) {
            int i10 = this.f10686d;
            boolean z10 = i10 == 4 || i10 == 2;
            int i11 = i10 != 4 ? 0 : 1;
            d(z10 ? this.f10683a : (w3) androidx.media3.common.util.a.e(this.f10685c), nVar);
            E(z10);
            this.f10686d = i11;
        }
    }

    public void e(z3 z3Var, i2.z zVar, f2.u uVar, long j10, boolean z10, boolean z11, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar, n nVar) throws ExoPlaybackException {
        androidx.media3.common.r[] rVarArrI = i(zVar);
        int i10 = this.f10686d;
        if (i10 == 0 || i10 == 2 || i10 == 4) {
            this.f10687e = true;
            this.f10683a.g(z3Var, rVarArrI, uVar, j10, z10, z11, j11, j12, bVar);
            nVar.c(this.f10683a);
        } else {
            this.f10688f = true;
            ((w3) androidx.media3.common.util.a.e(this.f10685c)).g(z3Var, rVarArrI, uVar, j10, z10, z11, j11, j12, bVar);
            nVar.c(this.f10685c);
        }
    }

    public void f() {
        if (y(this.f10683a)) {
            this.f10683a.c();
            return;
        }
        w3 w3Var = this.f10685c;
        if (w3Var == null || !y(w3Var)) {
            return;
        }
        this.f10685c.c();
    }

    public int h() {
        boolean zY = y(this.f10683a);
        w3 w3Var = this.f10685c;
        return (zY ? 1 : 0) + ((w3Var == null || !y(w3Var)) ? 0 : 1);
    }

    public long j(long j10, long j11) {
        long jM = y(this.f10683a) ? this.f10683a.m(j10, j11) : Long.MAX_VALUE;
        w3 w3Var = this.f10685c;
        return (w3Var == null || !y(w3Var)) ? jM : Math.min(jM, this.f10685c.m(j10, j11));
    }

    public long k(y2 y2Var) {
        w3 w3VarL = l(y2Var);
        Objects.requireNonNull(w3VarL);
        return w3VarL.e();
    }

    public int m() {
        return this.f10683a.getTrackType();
    }

    public void n(int i10, Object obj, y2 y2Var) {
        ((w3) androidx.media3.common.util.a.e(l(y2Var))).handleMessage(i10, obj);
    }

    public boolean o(y2 y2Var) {
        return p(y2Var, this.f10683a) && p(y2Var, this.f10685c);
    }

    public boolean r(y2 y2Var) {
        return ((w3) androidx.media3.common.util.a.e(l(y2Var))).hasReadStreamToEnd();
    }

    public boolean s() {
        return this.f10685c != null;
    }

    public boolean t() {
        boolean zIsEnded = y(this.f10683a) ? this.f10683a.isEnded() : true;
        w3 w3Var = this.f10685c;
        return (w3Var == null || !y(w3Var)) ? zIsEnded : zIsEnded & this.f10685c.isEnded();
    }

    public boolean u() {
        return v() || A();
    }

    public boolean w(y2 y2Var) {
        return l(y2Var) != null;
    }

    public boolean x() {
        int i10 = this.f10686d;
        return (i10 == 0 || i10 == 2 || i10 == 4) ? y(this.f10683a) : y((w3) androidx.media3.common.util.a.e(this.f10685c));
    }

    public boolean z(int i10) {
        return (v() && i10 == this.f10684b) || (A() && i10 != this.f10684b);
    }
}
