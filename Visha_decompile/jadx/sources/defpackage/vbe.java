package defpackage;

import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzfww;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;

public final class vbe implements c9e {
    public f9e f;
    public boolean h;
    public long i;
    public int j;
    public int k;
    public int l;
    public long m;
    public boolean n;
    public ube o;
    public ybe p;
    public final u4h a = new u4h(4);
    public final u4h b = new u4h(9);
    public final u4h c = new u4h(11);
    public final u4h d = new u4h();
    public final wbe e = new wbe();
    public int g = 1;

    private final void c() {
        if (this.n) {
            return;
        }
        this.f.i(new jae(C.TIME_UNSET, 0L));
        this.n = true;
    }

    public final u4h a(d9e d9eVar) {
        u4h u4hVar = this.d;
        if (this.l > u4hVar.v()) {
            int iV = u4hVar.v();
            u4hVar.j(new byte[Math.max(iV + iV, this.l)], 0);
        } else {
            u4hVar.l(0);
        }
        u4hVar.k(this.l);
        d9eVar.h(u4hVar.n(), 0, this.l);
        return u4hVar;
    }

    @Override
    public final void b(long j, long j2) {
        if (j == 0) {
            this.g = 1;
            this.h = false;
        } else {
            this.g = 3;
        }
        this.j = 0;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0096  */
    /* JADX WARN: Code duplicated, block: B:40:0x00af  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x0009 A[SYNTHETIC] */
    @Override
    public final int d(d9e d9eVar, y9e y9eVar) {
        long j;
        boolean zC;
        boolean z;
        long j2;
        n7g.b(this.f);
        while (true) {
            int i = this.g;
            int i2 = 8;
            if (i == 1) {
                u4h u4hVar = this.b;
                if (!d9eVar.d(u4hVar.n(), 0, 9, true)) {
                    return -1;
                }
                u4hVar.l(0);
                u4hVar.m(4);
                int iG = u4hVar.G();
                int i3 = iG & 4;
                int i4 = iG & 1;
                if (i3 != 0 && this.o == null) {
                    this.o = new ube(this.f.j(8, 1));
                }
                if (i4 != 0 && this.p == null) {
                    this.p = new ybe(this.f.j(9, 2));
                }
                this.f.zzG();
                this.j = u4hVar.A() - 5;
                this.g = 2;
            } else if (i == 2) {
                d9eVar.f(this.j);
                this.j = 0;
                this.g = 3;
            } else if (i == 3) {
                u4h u4hVar2 = this.c;
                if (!d9eVar.d(u4hVar2.n(), 0, 11, true)) {
                    return -1;
                }
                u4hVar2.l(0);
                this.k = u4hVar2.G();
                this.l = u4hVar2.I();
                this.m = u4hVar2.I();
                this.m = (((long) (u4hVar2.G() << 24)) | this.m) * 1000;
                u4hVar2.m(3);
                this.g = 4;
            } else {
                if (i != 4) {
                    throw new IllegalStateException();
                }
                if (this.h) {
                    j = this.i + this.m;
                } else {
                    j = this.e.d() == C.TIME_UNSET ? 0L : this.m;
                }
                int i5 = this.k;
                if (i5 == 8) {
                    if (this.o != null) {
                        c();
                        zC = this.o.c(a(d9eVar), j);
                    }
                    z = true;
                    if (!this.h && zC) {
                        this.h = true;
                        if (this.e.d() == C.TIME_UNSET) {
                            j2 = -this.m;
                        } else {
                            j2 = 0;
                        }
                        this.i = j2;
                    }
                    this.j = 4;
                    this.g = 2;
                    if (z) {
                        return 0;
                    }
                } else {
                    i2 = i5;
                }
                if (i2 == 9) {
                    if (this.p != null) {
                        c();
                        zC = this.p.c(a(d9eVar), j);
                        z = true;
                    } else {
                        d9eVar.f(this.l);
                        zC = false;
                        z = false;
                    }
                } else if (i2 != 18 || this.n) {
                    d9eVar.f(this.l);
                    zC = false;
                    z = false;
                } else {
                    wbe wbeVar = this.e;
                    zC = wbeVar.c(a(d9eVar), j);
                    long jD = wbeVar.d();
                    if (jD != C.TIME_UNSET) {
                        this.f.i(new t9e(wbeVar.e(), wbeVar.f(), jD));
                        this.n = true;
                    }
                    z = true;
                }
                if (!this.h) {
                    this.h = true;
                    if (this.e.d() == C.TIME_UNSET) {
                        j2 = -this.m;
                    } else {
                        j2 = 0;
                    }
                    this.i = j2;
                }
                this.j = 4;
                this.g = 2;
                if (z) {
                    return 0;
                }
            }
        }
    }

    @Override
    public final boolean e(d9e d9eVar) throws EOFException, InterruptedIOException {
        u4h u4hVar = this.a;
        m8e m8eVar = (m8e) d9eVar;
        m8eVar.e(u4hVar.n(), 0, 3, false);
        u4hVar.l(0);
        if (u4hVar.I() != 4607062) {
            return false;
        }
        m8eVar.e(u4hVar.n(), 0, 2, false);
        u4hVar.l(0);
        if ((u4hVar.K() & 250) != 0) {
            return false;
        }
        m8eVar.e(u4hVar.n(), 0, 4, false);
        u4hVar.l(0);
        int iA = u4hVar.A();
        d9eVar.zzj();
        m8e m8eVar2 = (m8e) d9eVar;
        m8eVar2.k(iA, false);
        m8eVar2.e(u4hVar.n(), 0, 4, false);
        u4hVar.l(0);
        return u4hVar.A() == 0;
    }

    @Override
    public final void f(f9e f9eVar) {
        this.f = f9eVar;
    }

    @Override
    public final c9e zzc() {
        return this;
    }

    @Override
    public final List zzd() {
        return zzfww.zzn();
    }
}
