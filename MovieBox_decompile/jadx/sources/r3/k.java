package r3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import k2.s0;

public final class k implements m {

    private final androidx.media3.common.util.j0 f70525a;

    private final String f70527c;

    private final int f70528d;

    private final String f70529e;

    private String f70530f;

    private s0 f70531g;

    private int f70533i;

    private int f70534j;

    private long f70535k;

    private androidx.media3.common.r f70536l;

    private int f70537m;

    private int f70538n;

    private int f70532h = 0;

    private long f70541q = C.TIME_UNSET;

    private final AtomicInteger f70526b = new AtomicInteger();

    private int f70539o = -1;

    private int f70540p = -1;

    public k(String str, int i10, int i11, String str2) {
        this.f70525a = new androidx.media3.common.util.j0(new byte[i11]);
        this.f70527c = str;
        this.f70528d = i10;
        this.f70529e = str2;
    }

    private boolean b(androidx.media3.common.util.j0 j0Var, byte[] bArr, int i10) {
        int iMin = Math.min(j0Var.a(), i10 - this.f70533i);
        j0Var.l(bArr, this.f70533i, iMin);
        int i11 = this.f70533i + iMin;
        this.f70533i = i11;
        return i11 == i10;
    }

    private void f() {
        byte[] bArrE = this.f70525a.e();
        if (this.f70536l == null) {
            androidx.media3.common.r rVarH = k2.p.h(bArrE, this.f70530f, this.f70527c, this.f70528d, this.f70529e, null);
            this.f70536l = rVarH;
            this.f70531g.d(rVarH);
        }
        this.f70537m = k2.p.b(bArrE);
        this.f70535k = Ints.d(a1.d1(k2.p.g(bArrE), this.f70536l.F));
    }

    private void g() throws ParserException {
        k2.p.b bVarI = k2.p.i(this.f70525a.e());
        j(bVarI);
        this.f70537m = bVarI.f63681d;
        long j10 = bVarI.f63682e;
        if (j10 == C.TIME_UNSET) {
            j10 = 0;
        }
        this.f70535k = j10;
    }

    private void h() throws ParserException {
        k2.p.b bVarK = k2.p.k(this.f70525a.e(), this.f70526b);
        if (this.f70538n == 3) {
            j(bVarK);
        }
        this.f70537m = bVarK.f63681d;
        long j10 = bVarK.f63682e;
        if (j10 == C.TIME_UNSET) {
            j10 = 0;
        }
        this.f70535k = j10;
    }

    private boolean i(androidx.media3.common.util.j0 j0Var) {
        while (j0Var.a() > 0) {
            int i10 = this.f70534j << 8;
            this.f70534j = i10;
            int iH = i10 | j0Var.H();
            this.f70534j = iH;
            int iC = k2.p.c(iH);
            this.f70538n = iC;
            if (iC != 0) {
                byte[] bArrE = this.f70525a.e();
                int i11 = this.f70534j;
                bArrE[0] = (byte) ((i11 >> 24) & 255);
                bArrE[1] = (byte) ((i11 >> 16) & 255);
                bArrE[2] = (byte) ((i11 >> 8) & 255);
                bArrE[3] = (byte) (i11 & 255);
                this.f70533i = 4;
                this.f70534j = 0;
                return true;
            }
        }
        return false;
    }

    private void j(k2.p.b bVar) {
        int i10;
        int i11 = bVar.f63679b;
        if (i11 == -2147483647 || (i10 = bVar.f63680c) == -1) {
            return;
        }
        androidx.media3.common.r rVar = this.f70536l;
        if (rVar != null && i10 == rVar.E && i11 == rVar.F && Objects.equals(bVar.f63678a, rVar.f9849o)) {
            return;
        }
        androidx.media3.common.r rVar2 = this.f70536l;
        androidx.media3.common.r rVarN = (rVar2 == null ? new androidx.media3.common.r.b() : rVar2.b()).f0(this.f70530f).U(this.f70529e).u0(bVar.f63678a).R(bVar.f63680c).v0(bVar.f63679b).j0(this.f70527c).s0(this.f70528d).N();
        this.f70536l = rVarN;
        this.f70531g.d(rVarN);
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) throws ParserException {
        androidx.media3.common.util.a.i(this.f70531g);
        while (j0Var.a() > 0) {
            switch (this.f70532h) {
                case 0:
                    if (i(j0Var)) {
                        int i10 = this.f70538n;
                        if (i10 == 3 || i10 == 4) {
                            this.f70532h = 4;
                        } else if (i10 != 1) {
                            this.f70532h = 2;
                        } else {
                            this.f70532h = 1;
                        }
                    }
                    break;
                case 1:
                    if (b(j0Var, this.f70525a.e(), 18)) {
                        f();
                        this.f70525a.W(0);
                        this.f70531g.c(this.f70525a, 18);
                        this.f70532h = 6;
                    }
                    break;
                case 2:
                    if (b(j0Var, this.f70525a.e(), 7)) {
                        this.f70539o = k2.p.j(this.f70525a.e());
                        this.f70532h = 3;
                    }
                    break;
                case 3:
                    if (b(j0Var, this.f70525a.e(), this.f70539o)) {
                        g();
                        this.f70525a.W(0);
                        this.f70531g.c(this.f70525a, this.f70539o);
                        this.f70532h = 6;
                    }
                    break;
                case 4:
                    if (b(j0Var, this.f70525a.e(), 6)) {
                        int iL = k2.p.l(this.f70525a.e());
                        this.f70540p = iL;
                        int i11 = this.f70533i;
                        if (i11 > iL) {
                            int i12 = i11 - iL;
                            this.f70533i = i11 - i12;
                            j0Var.W(j0Var.f() - i12);
                        }
                        this.f70532h = 5;
                    }
                    break;
                case 5:
                    if (b(j0Var, this.f70525a.e(), this.f70540p)) {
                        h();
                        this.f70525a.W(0);
                        this.f70531g.c(this.f70525a, this.f70540p);
                        this.f70532h = 6;
                    }
                    break;
                case 6:
                    int iMin = Math.min(j0Var.a(), this.f70537m - this.f70533i);
                    this.f70531g.c(j0Var, iMin);
                    int i13 = this.f70533i + iMin;
                    this.f70533i = i13;
                    if (i13 == this.f70537m) {
                        androidx.media3.common.util.a.g(this.f70541q != C.TIME_UNSET);
                        this.f70531g.b(this.f70541q, this.f70538n == 4 ? 0 : 1, this.f70537m, 0, null);
                        this.f70541q += this.f70535k;
                        this.f70532h = 0;
                    }
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        this.f70541q = j10;
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        dVar.a();
        this.f70530f = dVar.b();
        this.f70531g = tVar.track(dVar.c(), 1);
    }

    @Override
    public void seek() {
        this.f70532h = 0;
        this.f70533i = 0;
        this.f70534j = 0;
        this.f70541q = C.TIME_UNSET;
        this.f70526b.set(0);
    }

    @Override
    public void d(boolean z10) {
    }
}
