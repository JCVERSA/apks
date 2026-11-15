package r3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.s0;

public final class f implements m {

    private final androidx.media3.common.util.i0 f70453a;

    private final androidx.media3.common.util.j0 f70454b;

    private final String f70455c;

    private final int f70456d;

    private final String f70457e;

    private String f70458f;

    private s0 f70459g;

    private int f70460h;

    private int f70461i;

    private boolean f70462j;

    private boolean f70463k;

    private long f70464l;

    private androidx.media3.common.r f70465m;

    private int f70466n;

    private long f70467o;

    public f(String str) {
        this(null, 0, str);
    }

    private boolean b(androidx.media3.common.util.j0 j0Var, byte[] bArr, int i10) {
        int iMin = Math.min(j0Var.a(), i10 - this.f70461i);
        j0Var.l(bArr, this.f70461i, iMin);
        int i11 = this.f70461i + iMin;
        this.f70461i = i11;
        return i11 == i10;
    }

    private void f() {
        this.f70453a.p(0);
        k2.c.C0782c c0782cF = k2.c.f(this.f70453a);
        androidx.media3.common.r rVar = this.f70465m;
        if (rVar == null || c0782cF.f63531c != rVar.E || c0782cF.f63530b != rVar.F || !"audio/ac4".equals(rVar.f9849o)) {
            androidx.media3.common.r rVarN = new androidx.media3.common.r.b().f0(this.f70458f).U(this.f70457e).u0("audio/ac4").R(c0782cF.f63531c).v0(c0782cF.f63530b).j0(this.f70455c).s0(this.f70456d).N();
            this.f70465m = rVarN;
            this.f70459g.d(rVarN);
        }
        this.f70466n = c0782cF.f63532d;
        this.f70464l = (((long) c0782cF.f63533e) * 1000000) / ((long) this.f70465m.F);
    }

    private boolean g(androidx.media3.common.util.j0 j0Var) {
        while (true) {
            if (j0Var.a() <= 0) {
                return false;
            }
            if (this.f70462j) {
                int iH = j0Var.H();
                this.f70462j = iH == 172;
                if (iH == 64 || iH == 65) {
                    this.f70463k = iH == 65;
                    return true;
                }
            } else {
                this.f70462j = j0Var.H() == 172;
            }
        }
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) {
        androidx.media3.common.util.a.i(this.f70459g);
        while (j0Var.a() > 0) {
            int i10 = this.f70460h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        int iMin = Math.min(j0Var.a(), this.f70466n - this.f70461i);
                        this.f70459g.c(j0Var, iMin);
                        int i11 = this.f70461i + iMin;
                        this.f70461i = i11;
                        if (i11 == this.f70466n) {
                            androidx.media3.common.util.a.g(this.f70467o != C.TIME_UNSET);
                            this.f70459g.b(this.f70467o, 1, this.f70466n, 0, null);
                            this.f70467o += this.f70464l;
                            this.f70460h = 0;
                        }
                    }
                } else if (b(j0Var, this.f70454b.e(), 16)) {
                    f();
                    this.f70454b.W(0);
                    this.f70459g.c(this.f70454b, 16);
                    this.f70460h = 2;
                }
            } else if (g(j0Var)) {
                this.f70460h = 1;
                this.f70454b.e()[0] = -84;
                this.f70454b.e()[1] = (byte) (this.f70463k ? 65 : 64);
                this.f70461i = 2;
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        this.f70467o = j10;
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        dVar.a();
        this.f70458f = dVar.b();
        this.f70459g = tVar.track(dVar.c(), 1);
    }

    @Override
    public void seek() {
        this.f70460h = 0;
        this.f70461i = 0;
        this.f70462j = false;
        this.f70463k = false;
        this.f70467o = C.TIME_UNSET;
    }

    public f(String str, int i10, String str2) {
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0(new byte[16]);
        this.f70453a = i0Var;
        this.f70454b = new androidx.media3.common.util.j0(i0Var.f10076a);
        this.f70460h = 0;
        this.f70461i = 0;
        this.f70462j = false;
        this.f70463k = false;
        this.f70467o = C.TIME_UNSET;
        this.f70455c = str;
        this.f70456d = i10;
        this.f70457e = str2;
    }

    @Override
    public void d(boolean z10) {
    }
}
