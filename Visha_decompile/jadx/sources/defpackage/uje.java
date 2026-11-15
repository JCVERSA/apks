package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.Collections;

public final class uje implements lje {
    public final ske a;
    public String b;
    public rae c;
    public tje d;
    public boolean e;
    public long l;
    public final boolean[] f = new boolean[3];
    public final dke g = new dke(32, 128);
    public final dke h = new dke(33, 128);
    public final dke i = new dke(34, 128);
    public final dke j = new dke(39, 128);
    public final dke k = new dke(40, 128);
    public long m = C.TIME_UNSET;
    public final u4h n = new u4h();

    public uje(ske skeVar, String str) {
        this.a = skeVar;
    }

    private final void d(long j, int i, int i2, long j2) {
        this.d.a(j, i, this.e);
        if (!this.e) {
            dke dkeVar = this.g;
            dkeVar.d(i2);
            dke dkeVar2 = this.h;
            dkeVar2.d(i2);
            dke dkeVar3 = this.i;
            dkeVar3.d(i2);
            if (dkeVar.e() && dkeVar2.e() && dkeVar3.e()) {
                String str = this.b;
                int i3 = dkeVar.e;
                byte[] bArr = new byte[dkeVar2.e + i3 + dkeVar3.e];
                System.arraycopy(dkeVar.d, 0, bArr, 0, i3);
                System.arraycopy(dkeVar2.d, 0, bArr, dkeVar.e, dkeVar2.e);
                System.arraycopy(dkeVar3.d, 0, bArr, dkeVar.e + dkeVar2.e, dkeVar3.e);
                String strD = null;
                uuh uuhVarD = jzh.d(dkeVar2.d, 3, dkeVar2.e, null);
                tqh tqhVar = uuhVarD.b;
                if (tqhVar != null) {
                    int i4 = tqhVar.f;
                    int[] iArr = tqhVar.e;
                    int i5 = tqhVar.d;
                    strD = vcg.d(tqhVar.a, tqhVar.b, tqhVar.c, i5, iArr, i4);
                }
                gpj gpjVar = new gpj();
                gpjVar.o(str);
                gpjVar.e(MimeTypes.VIDEO_MP2T);
                gpjVar.E("video/hevc");
                gpjVar.c(strD);
                gpjVar.J(uuhVarD.e);
                gpjVar.m(uuhVarD.f);
                p1j p1jVar = new p1j();
                p1jVar.c(uuhVarD.i);
                p1jVar.b(uuhVarD.j);
                p1jVar.d(uuhVarD.k);
                p1jVar.f(uuhVarD.c + 8);
                p1jVar.a(uuhVarD.d + 8);
                gpjVar.d(p1jVar.g());
                gpjVar.z(uuhVarD.g);
                gpjVar.u(uuhVarD.h);
                gpjVar.v(uuhVarD.a + 1);
                gpjVar.p(Collections.singletonList(bArr));
                erj erjVarK = gpjVar.K();
                this.c.f(erjVarK);
                int i6 = erjVarK.q;
                v2i.l(i6 != -1);
                this.a.f(i6);
                this.e = true;
            }
        }
        dke dkeVar4 = this.j;
        if (dkeVar4.d(i2)) {
            int iC = jzh.c(dkeVar4.d, dkeVar4.e);
            u4h u4hVar = this.n;
            u4hVar.j(dkeVar4.d, iC);
            u4hVar.m(5);
            this.a.c(j2, u4hVar);
        }
        dke dkeVar5 = this.k;
        if (dkeVar5.d(i2)) {
            int iC2 = jzh.c(dkeVar5.d, dkeVar5.e);
            u4h u4hVar2 = this.n;
            u4hVar2.j(dkeVar5.d, iC2);
            u4hVar2.m(5);
            this.a.c(j2, u4hVar2);
        }
    }

    private final void e(byte[] bArr, int i, int i2) {
        this.d.b(bArr, i, i2);
        if (!this.e) {
            this.g.a(bArr, i, i2);
            this.h.a(bArr, i, i2);
            this.i.a(bArr, i, i2);
        }
        this.j.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004d  */
    @Override
    public final void a(u4h u4hVar) {
        int i;
        int i2;
        n7g.b(this.c);
        int i3 = kfh.a;
        while (u4hVar.u() > 0) {
            int iW = u4hVar.w();
            int iX = u4hVar.x();
            byte[] bArrN = u4hVar.n();
            this.l += (long) u4hVar.u();
            this.c.d(u4hVar, u4hVar.u());
            while (iW < iX) {
                int iA = jzh.a(bArrN, iW, iX, this.f);
                if (iA == iX) {
                    e(bArrN, iW, iX);
                    return;
                }
                int i4 = bArrN[iA + 3] & 126;
                if (iA > 0) {
                    int i5 = iA - 1;
                    if (bArrN[i5] == 0) {
                        i2 = 4;
                        i = i5;
                    } else {
                        i = iA;
                        i2 = 3;
                    }
                } else {
                    i = iA;
                    i2 = 3;
                }
                int i6 = i - iW;
                if (i6 > 0) {
                    e(bArrN, iW, i);
                }
                int i7 = iX - i;
                long j = this.l - ((long) i7);
                d(j, i7, i6 < 0 ? -i6 : 0, this.m);
                f(j, i7, i4 >> 1, this.m);
                iW = i + i2;
            }
        }
    }

    @Override
    public final void b(long j, int i) {
        this.m = j;
    }

    @Override
    public final void c(f9e f9eVar, cle cleVar) {
        cleVar.c();
        this.b = cleVar.b();
        rae raeVarJ = f9eVar.j(cleVar.a(), 2);
        this.c = raeVarJ;
        this.d = new tje(raeVarJ);
        this.a.d(f9eVar, cleVar);
    }

    public final void f(long j, int i, int i2, long j2) {
        this.d.d(j, i, i2, j2, this.e);
        if (!this.e) {
            this.g.c(i2);
            this.h.c(i2);
            this.i.c(i2);
        }
        this.j.c(i2);
        this.k.c(i2);
    }

    @Override
    public final void zzc(boolean z) {
        n7g.b(this.c);
        int i = kfh.a;
        if (z) {
            this.a.e();
            d(this.l, 0, 0, this.m);
            f(this.l, 0, 48, this.m);
        }
    }

    @Override
    public final void zze() {
        this.l = 0L;
        this.m = C.TIME_UNSET;
        jzh.i(this.f);
        this.g.b();
        this.h.b();
        this.i.b();
        this.j.b();
        this.k.b();
        this.a.b();
        tje tjeVar = this.d;
        if (tjeVar != null) {
            tjeVar.c();
        }
    }
}
