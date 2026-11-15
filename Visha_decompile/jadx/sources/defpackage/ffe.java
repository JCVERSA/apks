package defpackage;

import com.google.android.gms.internal.ads.zzs;

public final class ffe {
    public final rae a;
    public vfe d;
    public bfe e;
    public int f;
    public int g;
    public int h;
    public int i;
    public final String j;
    public boolean m;
    public final ufe b = new ufe();
    public final u4h c = new u4h();
    public final u4h k = new u4h(1);
    public final u4h l = new u4h();

    public ffe(rae raeVar, vfe vfeVar, bfe bfeVar, String str) {
        this.a = raeVar;
        this.d = vfeVar;
        this.e = bfeVar;
        this.j = str;
        h(vfeVar, bfeVar);
    }

    public final int a() {
        int i;
        if (this.m) {
            i = this.b.j[this.f] ? 1 : 0;
        } else {
            i = this.d.g[this.f];
        }
        return f() != null ? 1073741824 | i : i;
    }

    public final int b() {
        return !this.m ? this.d.d[this.f] : this.b.h[this.f];
    }

    public final int c(int i, int i2) {
        u4h u4hVar;
        tfe tfeVarF = f();
        if (tfeVarF == null) {
            return 0;
        }
        int i3 = tfeVarF.d;
        if (i3 != 0) {
            u4hVar = this.b.n;
        } else {
            byte[] bArr = tfeVarF.e;
            int i4 = kfh.a;
            u4h u4hVar2 = this.l;
            int length = bArr.length;
            u4hVar2.j(bArr, length);
            u4hVar = u4hVar2;
            i3 = length;
        }
        ufe ufeVar = this.b;
        boolean zB = ufeVar.b(this.f);
        boolean z = zB || i2 != 0;
        u4h u4hVar3 = this.k;
        u4hVar3.n()[0] = (byte) ((true != z ? 0 : 128) | i3);
        u4hVar3.l(0);
        rae raeVar = this.a;
        raeVar.b(u4hVar3, 1, 1);
        raeVar.b(u4hVar, i3, 1);
        if (!z) {
            return i3 + 1;
        }
        if (!zB) {
            u4h u4hVar4 = this.c;
            u4hVar4.i(8);
            byte[] bArrN = u4hVar4.n();
            bArrN[0] = 0;
            bArrN[1] = 1;
            bArrN[2] = 0;
            bArrN[3] = (byte) i2;
            bArrN[4] = (byte) ((i >> 24) & 255);
            bArrN[5] = (byte) ((i >> 16) & 255);
            bArrN[6] = (byte) ((i >> 8) & 255);
            bArrN[7] = (byte) (i & 255);
            raeVar.b(u4hVar4, 8, 1);
            return i3 + 9;
        }
        int i5 = i3 + 1;
        u4h u4hVar5 = ufeVar.n;
        int iK = u4hVar5.K();
        u4hVar5.m(-2);
        int i6 = (iK * 6) + 2;
        if (i2 != 0) {
            u4h u4hVar6 = this.c;
            u4hVar6.i(i6);
            byte[] bArrN2 = u4hVar6.n();
            u4hVar5.h(bArrN2, 0, i6);
            int i7 = (((bArrN2[2] & 255) << 8) | (bArrN2[3] & 255)) + i2;
            bArrN2[2] = (byte) ((i7 >> 8) & 255);
            bArrN2[3] = (byte) (i7 & 255);
            u4hVar5 = u4hVar6;
        }
        raeVar.b(u4hVar5, i6, 1);
        return i5 + i6;
    }

    public final long d() {
        return !this.m ? this.d.c[this.f] : this.b.f[this.h];
    }

    public final long e() {
        if (!this.m) {
            return this.d.f[this.f];
        }
        ufe ufeVar = this.b;
        return ufeVar.i[this.f];
    }

    public final tfe f() {
        if (!this.m) {
            return null;
        }
        ufe ufeVar = this.b;
        bfe bfeVar = ufeVar.a;
        int i = kfh.a;
        int i2 = bfeVar.a;
        tfe tfeVarB = ufeVar.m;
        if (tfeVarB == null) {
            tfeVarB = this.d.a.b(i2);
        }
        if (tfeVarB == null || !tfeVarB.a) {
            return null;
        }
        return tfeVarB;
    }

    public final void h(vfe vfeVar, bfe bfeVar) {
        this.d = vfeVar;
        this.e = bfeVar;
        gpj gpjVarB = vfeVar.a.g.b();
        gpjVarB.e(this.j);
        this.a.f(gpjVarB.K());
        i();
    }

    public final void i() {
        ufe ufeVar = this.b;
        ufeVar.d = 0;
        ufeVar.p = 0L;
        ufeVar.q = false;
        ufeVar.k = false;
        ufeVar.o = false;
        ufeVar.m = null;
        this.f = 0;
        this.h = 0;
        this.g = 0;
        this.i = 0;
        this.m = false;
    }

    public final void j(zzs zzsVar) {
        sfe sfeVar = this.d.a;
        bfe bfeVar = this.b.a;
        int i = kfh.a;
        tfe tfeVarB = sfeVar.b(bfeVar.a);
        zzs zzsVarZzb = zzsVar.zzb(tfeVarB != null ? tfeVarB.b : null);
        erj erjVar = this.d.a.g;
        String str = this.j;
        gpj gpjVarB = erjVar.b();
        gpjVarB.e(str);
        gpjVarB.h(zzsVarZzb);
        this.a.f(gpjVarB.K());
    }

    public final boolean l() {
        this.f++;
        if (!this.m) {
            return false;
        }
        int i = this.g + 1;
        this.g = i;
        int[] iArr = this.b.g;
        int i2 = this.h;
        if (i != iArr[i2]) {
            return true;
        }
        this.h = i2 + 1;
        this.g = 0;
        return false;
    }
}
