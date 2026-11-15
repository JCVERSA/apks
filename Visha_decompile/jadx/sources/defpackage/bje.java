package defpackage;

import androidx.media3.common.C;
import java.util.Objects;
import org.mozilla.classfile.ByteCode;

public final class bje implements lje {
    public final p3h a;
    public final u4h b;
    public final String c;
    public final int d;
    public final String e;
    public String f;
    public rae g;
    public int h;
    public int i;
    public boolean j;
    public long k;
    public erj l;
    public int m;
    public long n;

    public bje(String str, int i, String str2) {
        p3h p3hVar = new p3h(new byte[128], 128);
        this.a = p3hVar;
        this.b = new u4h(p3hVar.a);
        this.h = 0;
        this.n = C.TIME_UNSET;
        this.c = str;
        this.d = i;
        this.e = str2;
    }

    @Override
    public final void a(u4h u4hVar) {
        n7g.b(this.g);
        while (u4hVar.u() > 0) {
            int i = this.h;
            if (i == 0) {
                while (u4hVar.u() > 0) {
                    if (this.j) {
                        int iG = u4hVar.G();
                        if (iG == 119) {
                            this.j = false;
                            this.h = 1;
                            u4h u4hVar2 = this.b;
                            u4hVar2.n()[0] = ByteCode.T_LONG;
                            u4hVar2.n()[1] = 119;
                            this.i = 2;
                            break;
                        }
                        this.j = iG == 11;
                    } else {
                        this.j = u4hVar.G() == 11;
                    }
                }
            } else if (i != 1) {
                int iMin = Math.min(u4hVar.u(), this.m - this.i);
                this.g.d(u4hVar, iMin);
                int i2 = this.i + iMin;
                this.i = i2;
                if (i2 == this.m) {
                    n7g.f(this.n != C.TIME_UNSET);
                    this.g.g(this.n, 1, this.m, 0, null);
                    this.n += this.k;
                    this.h = 0;
                }
            } else {
                u4h u4hVar3 = this.b;
                byte[] bArrN = u4hVar3.n();
                int iMin2 = Math.min(u4hVar.u(), 128 - this.i);
                u4hVar.h(bArrN, this.i, iMin2);
                int i3 = this.i + iMin2;
                this.i = i3;
                if (i3 == 128) {
                    p3h p3hVar = this.a;
                    p3hVar.l(0);
                    q7e q7eVarE = w7e.e(p3hVar);
                    erj erjVar = this.l;
                    if (erjVar == null || q7eVarE.c != erjVar.E || q7eVarE.b != erjVar.F || !Objects.equals(q7eVarE.a, erjVar.o)) {
                        gpj gpjVar = new gpj();
                        gpjVar.o(this.f);
                        gpjVar.e(this.e);
                        String str = q7eVarE.a;
                        gpjVar.E(str);
                        gpjVar.b(q7eVarE.c);
                        gpjVar.F(q7eVarE.b);
                        gpjVar.s(this.c);
                        gpjVar.C(this.d);
                        int i4 = q7eVarE.f;
                        gpjVar.y(i4);
                        if ("audio/ac3".equals(str)) {
                            gpjVar.a(i4);
                        }
                        erj erjVarK = gpjVar.K();
                        this.l = erjVarK;
                        this.g.f(erjVarK);
                    }
                    this.m = q7eVarE.d;
                    this.k = (((long) q7eVarE.e) * 1000000) / ((long) this.l.F);
                    u4hVar3.l(0);
                    this.g.d(u4hVar3, 128);
                    this.h = 2;
                }
            }
        }
    }

    @Override
    public final void b(long j, int i) {
        this.n = j;
    }

    @Override
    public final void c(f9e f9eVar, cle cleVar) {
        cleVar.c();
        this.f = cleVar.b();
        this.g = f9eVar.j(cleVar.a(), 1);
    }

    @Override
    public final void zzc(boolean z) {
    }

    @Override
    public final void zze() {
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.n = C.TIME_UNSET;
    }
}
