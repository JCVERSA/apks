package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;

public final class sje implements lje {
    public final ske a;
    public long f;
    public String h;
    public rae i;
    public rje j;
    public boolean k;
    public boolean m;
    public final String b = MimeTypes.VIDEO_MP2T;
    public final boolean[] g = new boolean[3];
    public final dke c = new dke(7, 128);
    public final dke d = new dke(8, 128);
    public final dke e = new dke(6, 128);
    public long l = C.TIME_UNSET;
    public final u4h n = new u4h();

    public sje(ske skeVar, boolean z, boolean z2, String str) {
        this.a = skeVar;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0045  */
    @Override
    public final void a(u4h u4hVar) {
        int i;
        int i2;
        n7g.b(this.i);
        int i3 = kfh.a;
        int iW = u4hVar.w();
        int iX = u4hVar.x();
        byte[] bArrN = u4hVar.n();
        this.f += (long) u4hVar.u();
        this.i.d(u4hVar, u4hVar.u());
        while (true) {
            int iA = jzh.a(bArrN, iW, iX, this.g);
            if (iA == iX) {
                e(bArrN, iW, iX);
                return;
            }
            int i4 = bArrN[iA + 3] & 31;
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
            long j = this.f - ((long) i7);
            d(j, i7, i6 < 0 ? -i6 : 0, this.l);
            f(j, i4, this.l);
            iW = i + i2;
        }
    }

    @Override
    public final void b(long j, int i) {
        this.l = j;
        int i2 = i & 2;
        this.m = (i2 != 0) | this.m;
    }

    @Override
    public final void c(f9e f9eVar, cle cleVar) {
        cleVar.c();
        this.h = cleVar.b();
        rae raeVarJ = f9eVar.j(cleVar.a(), 2);
        this.i = raeVarJ;
        this.j = new rje(raeVarJ, false, false);
        this.a.d(f9eVar, cleVar);
    }

    public final void d(long j, int i, int i2, long j2) {
        if (!this.k) {
            dke dkeVar = this.c;
            dkeVar.d(i2);
            dke dkeVar2 = this.d;
            dkeVar2.d(i2);
            if (this.k) {
                if (dkeVar.e()) {
                    oyh oyhVarG = jzh.g(dkeVar.d, 4, dkeVar.e);
                    this.a.f(oyhVarG.m);
                    this.j.b(oyhVarG);
                    dkeVar.b();
                } else if (dkeVar2.e()) {
                    this.j.a(jzh.f(dkeVar2.d, 4, dkeVar2.e));
                    dkeVar2.b();
                }
            } else if (dkeVar.e() && dkeVar2.e()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Arrays.copyOf(dkeVar.d, dkeVar.e));
                arrayList.add(Arrays.copyOf(dkeVar2.d, dkeVar2.e));
                oyh oyhVarG2 = jzh.g(dkeVar.d, 4, dkeVar.e);
                wxh wxhVarF = jzh.f(dkeVar2.d, 4, dkeVar2.e);
                String strC = vcg.c(oyhVarG2.a, oyhVarG2.b, oyhVarG2.c);
                rae raeVar = this.i;
                gpj gpjVar = new gpj();
                gpjVar.o(this.h);
                gpjVar.e(this.b);
                gpjVar.E("video/avc");
                gpjVar.c(strC);
                gpjVar.J(oyhVarG2.e);
                gpjVar.m(oyhVarG2.f);
                p1j p1jVar = new p1j();
                p1jVar.c(oyhVarG2.j);
                p1jVar.b(oyhVarG2.k);
                p1jVar.d(oyhVarG2.l);
                p1jVar.f(oyhVarG2.h + 8);
                p1jVar.a(oyhVarG2.i + 8);
                gpjVar.d(p1jVar.g());
                gpjVar.z(oyhVarG2.g);
                gpjVar.p(arrayList);
                int i3 = oyhVarG2.m;
                gpjVar.u(i3);
                raeVar.f(gpjVar.K());
                this.k = true;
                this.a.f(i3);
                this.j.b(oyhVarG2);
                this.j.a(wxhVarF);
                dkeVar.b();
                dkeVar2.b();
            }
        }
        dke dkeVar3 = this.e;
        if (dkeVar3.d(i2)) {
            int iC = jzh.c(dkeVar3.d, dkeVar3.e);
            u4h u4hVar = this.n;
            u4hVar.j(dkeVar3.d, iC);
            u4hVar.l(4);
            this.a.c(j2, u4hVar);
        }
        if (this.j.e(j, i, this.k)) {
            this.m = false;
        }
    }

    public final void e(byte[] bArr, int i, int i2) {
        if (!this.k) {
            this.c.a(bArr, i, i2);
            this.d.a(bArr, i, i2);
        }
        this.e.a(bArr, i, i2);
    }

    public final void f(long j, int i, long j2) {
        if (!this.k) {
            this.c.c(i);
            this.d.c(i);
        }
        this.e.c(i);
        this.j.d(j, i, j2, this.m);
    }

    @Override
    public final void zzc(boolean z) {
        n7g.b(this.i);
        int i = kfh.a;
        if (z) {
            this.a.e();
            d(this.f, 0, 0, this.l);
            f(this.f, 9, this.l);
            d(this.f, 0, 0, this.l);
        }
    }

    @Override
    public final void zze() {
        this.f = 0L;
        this.m = false;
        this.l = C.TIME_UNSET;
        jzh.i(this.g);
        this.c.b();
        this.d.b();
        this.e.b();
        this.a.b();
        rje rjeVar = this.j;
        if (rjeVar != null) {
            rjeVar.c();
        }
    }
}
