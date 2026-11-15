package s9;

import androidx.core.view.InputDeviceCompat;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;

public final class c0 implements i0 {

    private final b0 f71650a;

    private final com.google.android.exoplayer2.util.d0 f71651b = new com.google.android.exoplayer2.util.d0(32);

    private int f71652c;

    private int f71653d;

    private boolean f71654e;

    private boolean f71655f;

    public c0(b0 b0Var) {
        this.f71650a = b0Var;
    }

    @Override
    public void a(l0 l0Var, i9.n nVar, i0.d dVar) {
        this.f71650a.a(l0Var, nVar, dVar);
        this.f71655f = true;
    }

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
        int iE;
        boolean z10 = (i10 & 1) != 0;
        if (z10) {
            iE = d0Var.e() + d0Var.D();
        } else {
            iE = -1;
        }
        if (this.f71655f) {
            if (!z10) {
                return;
            }
            this.f71655f = false;
            d0Var.P(iE);
            this.f71653d = 0;
        }
        while (d0Var.a() > 0) {
            int i11 = this.f71653d;
            if (i11 < 3) {
                if (i11 == 0) {
                    int iD = d0Var.D();
                    d0Var.P(d0Var.e() - 1);
                    if (iD == 255) {
                        this.f71655f = true;
                        return;
                    }
                }
                int iMin = Math.min(d0Var.a(), 3 - this.f71653d);
                d0Var.j(this.f71651b.d(), this.f71653d, iMin);
                int i12 = this.f71653d + iMin;
                this.f71653d = i12;
                if (i12 == 3) {
                    this.f71651b.P(0);
                    this.f71651b.O(3);
                    this.f71651b.Q(1);
                    int iD2 = this.f71651b.D();
                    int iD3 = this.f71651b.D();
                    this.f71654e = (iD2 & 128) != 0;
                    this.f71652c = (((iD2 & 15) << 8) | iD3) + 3;
                    int iB = this.f71651b.b();
                    int i13 = this.f71652c;
                    if (iB < i13) {
                        this.f71651b.c(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i13, this.f71651b.b() * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(d0Var.a(), this.f71652c - this.f71653d);
                d0Var.j(this.f71651b.d(), this.f71653d, iMin2);
                int i14 = this.f71653d + iMin2;
                this.f71653d = i14;
                int i15 = this.f71652c;
                if (i14 != i15) {
                    continue;
                } else {
                    if (!this.f71654e) {
                        this.f71651b.O(i15);
                    } else {
                        if (p0.t(this.f71651b.d(), 0, this.f71652c, -1) != 0) {
                            this.f71655f = true;
                            return;
                        }
                        this.f71651b.O(this.f71652c - 4);
                    }
                    this.f71651b.P(0);
                    this.f71650a.b(this.f71651b);
                    this.f71653d = 0;
                }
            }
        }
    }

    @Override
    public void seek() {
        this.f71655f = true;
    }
}
