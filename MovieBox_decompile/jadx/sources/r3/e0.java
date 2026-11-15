package r3;

import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;

public final class e0 implements l0 {

    private final d0 f70447a;

    private final androidx.media3.common.util.j0 f70448b = new androidx.media3.common.util.j0(32);

    private int f70449c;

    private int f70450d;

    private boolean f70451e;

    private boolean f70452f;

    public e0(d0 d0Var) {
        this.f70447a = d0Var;
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var, int i10) {
        int iF;
        boolean z10 = (i10 & 1) != 0;
        if (z10) {
            iF = j0Var.f() + j0Var.H();
        } else {
            iF = -1;
        }
        if (this.f70452f) {
            if (!z10) {
                return;
            }
            this.f70452f = false;
            j0Var.W(iF);
            this.f70450d = 0;
        }
        while (j0Var.a() > 0) {
            int i11 = this.f70450d;
            if (i11 < 3) {
                if (i11 == 0) {
                    int iH = j0Var.H();
                    j0Var.W(j0Var.f() - 1);
                    if (iH == 255) {
                        this.f70452f = true;
                        return;
                    }
                }
                int iMin = Math.min(j0Var.a(), 3 - this.f70450d);
                j0Var.l(this.f70448b.e(), this.f70450d, iMin);
                int i12 = this.f70450d + iMin;
                this.f70450d = i12;
                if (i12 == 3) {
                    this.f70448b.W(0);
                    this.f70448b.V(3);
                    this.f70448b.X(1);
                    int iH2 = this.f70448b.H();
                    int iH3 = this.f70448b.H();
                    this.f70451e = (iH2 & 128) != 0;
                    this.f70449c = (((iH2 & 15) << 8) | iH3) + 3;
                    int iB = this.f70448b.b();
                    int i13 = this.f70449c;
                    if (iB < i13) {
                        this.f70448b.c(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i13, this.f70448b.b() * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(j0Var.a(), this.f70449c - this.f70450d);
                j0Var.l(this.f70448b.e(), this.f70450d, iMin2);
                int i14 = this.f70450d + iMin2;
                this.f70450d = i14;
                int i15 = this.f70449c;
                if (i14 != i15) {
                    continue;
                } else {
                    if (!this.f70451e) {
                        this.f70448b.V(i15);
                    } else {
                        if (a1.x(this.f70448b.e(), 0, this.f70449c, -1) != 0) {
                            this.f70452f = true;
                            return;
                        }
                        this.f70448b.V(this.f70449c - 4);
                    }
                    this.f70448b.W(0);
                    this.f70447a.a(this.f70448b);
                    this.f70450d = 0;
                }
            }
        }
    }

    @Override
    public void b(p0 p0Var, k2.t tVar, l0.d dVar) {
        this.f70447a.b(p0Var, tVar, dVar);
        this.f70452f = true;
    }

    @Override
    public void seek() {
        this.f70452f = true;
    }
}
