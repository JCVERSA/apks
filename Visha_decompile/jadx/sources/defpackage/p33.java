package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.k;

public final class p33 implements m83 {
    public final String b;
    public String c;
    public fva d;
    public int f;
    public int g;
    public long h;
    public k i;
    public int j;
    public final qw7 a = new qw7(new byte[18]);
    public int e = 0;
    public long k = C.TIME_UNSET;

    public p33(String str) {
        this.b = str;
    }

    private boolean d(qw7 qw7Var, byte[] bArr, int i) {
        int iMin = Math.min(qw7Var.a(), i - this.f);
        qw7Var.j(bArr, this.f, iMin);
        int i2 = this.f + iMin;
        this.f = i2;
        return i2 == i;
    }

    private void e() {
        byte[] bArrD = this.a.d();
        if (this.i == null) {
            k kVarG = q33.g(bArrD, this.c, this.b, null);
            this.i = kVarG;
            this.d.b(kVarG);
        }
        this.j = q33.a(bArrD);
        this.h = (int) ((((long) q33.f(bArrD)) * 1000000) / ((long) this.i.A));
    }

    private boolean f(qw7 qw7Var) {
        while (qw7Var.a() > 0) {
            int i = this.g << 8;
            this.g = i;
            int iC = i | qw7Var.C();
            this.g = iC;
            if (q33.d(iC)) {
                byte[] bArrD = this.a.d();
                int i2 = this.g;
                bArrD[0] = (byte) ((i2 >> 24) & 255);
                bArrD[1] = (byte) ((i2 >> 16) & 255);
                bArrD[2] = (byte) ((i2 >> 8) & 255);
                bArrD[3] = (byte) (i2 & 255);
                this.f = 4;
                this.g = 0;
                return true;
            }
        }
        return false;
    }

    @Override
    public void a(qw7 qw7Var) {
        zi.i(this.d);
        while (qw7Var.a() > 0) {
            int i = this.e;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(qw7Var.a(), this.j - this.f);
                    this.d.d(qw7Var, iMin);
                    int i2 = this.f + iMin;
                    this.f = i2;
                    int i3 = this.j;
                    if (i2 == i3) {
                        long j = this.k;
                        if (j != C.TIME_UNSET) {
                            this.d.e(j, 1, i3, 0, null);
                            this.k += this.h;
                        }
                        this.e = 0;
                    }
                } else if (d(qw7Var, this.a.d(), 18)) {
                    e();
                    this.a.O(0);
                    this.d.d(this.a, 18);
                    this.e = 2;
                }
            } else if (f(qw7Var)) {
                this.e = 1;
            }
        }
    }

    @Override
    public void b() {
    }

    @Override
    public void c(qk3 qk3Var, nab.d dVar) {
        dVar.a();
        this.c = dVar.b();
        this.d = qk3Var.track(dVar.c(), 1);
    }

    @Override
    public void packetStarted(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.k = j;
        }
    }

    @Override
    public void seek() {
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.k = C.TIME_UNSET;
    }
}
