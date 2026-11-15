package com.google.zxing.pdf417.decoder;

import com.google.zxing.NotFoundException;
import com.google.zxing.k;

final class c {

    private final kd.b f32133a;

    private final k f32134b;

    private final k f32135c;

    private final k f32136d;

    private final k f32137e;

    private final int f32138f;

    private final int f32139g;

    private final int f32140h;

    private final int f32141i;

    c(kd.b bVar, k kVar, k kVar2, k kVar3, k kVar4) throws NotFoundException {
        boolean z10 = kVar == null || kVar2 == null;
        boolean z11 = kVar3 == null || kVar4 == null;
        if (z10 && z11) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (z10) {
            kVar = new k(0.0f, kVar3.d());
            kVar2 = new k(0.0f, kVar4.d());
        } else if (z11) {
            kVar3 = new k(bVar.n() - 1, kVar.d());
            kVar4 = new k(bVar.n() - 1, kVar2.d());
        }
        this.f32133a = bVar;
        this.f32134b = kVar;
        this.f32135c = kVar2;
        this.f32136d = kVar3;
        this.f32137e = kVar4;
        this.f32138f = (int) Math.min(kVar.c(), kVar2.c());
        this.f32139g = (int) Math.max(kVar3.c(), kVar4.c());
        this.f32140h = (int) Math.min(kVar.d(), kVar3.d());
        this.f32141i = (int) Math.max(kVar2.d(), kVar4.d());
    }

    static c j(c cVar, c cVar2) {
        if (cVar == null) {
            return cVar2;
        }
        return cVar2 == null ? cVar : new c(cVar.f32133a, cVar.f32134b, cVar.f32135c, cVar2.f32136d, cVar2.f32137e);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0030  */
    /* JADX WARN: Code duplicated, block: B:19:0x0033  */
    /* JADX WARN: Code duplicated, block: B:22:0x0043  */
    /* JADX WARN: Code duplicated, block: B:25:0x0057  */
    /* JADX WARN: Code duplicated, block: B:27:0x005a  */
    /* JADX WARN: Code duplicated, block: B:28:0x005d  */
    c a(int i10, int i11, boolean z10) {
        k kVar;
        k kVar2;
        k kVar3;
        k kVar4;
        k kVar5;
        int iD;
        k kVar6;
        k kVar7 = this.f32134b;
        k kVar8 = this.f32135c;
        k kVar9 = this.f32136d;
        k kVar10 = this.f32137e;
        if (i10 > 0) {
            k kVar11 = z10 ? kVar7 : kVar9;
            int iD2 = ((int) kVar11.d()) - i10;
            if (iD2 < 0) {
                iD2 = 0;
            }
            k kVar12 = new k(kVar11.c(), iD2);
            if (z10) {
                kVar = kVar12;
            } else {
                kVar2 = kVar12;
                kVar = kVar7;
            }
            if (i11 > 0) {
                if (z10) {
                    kVar5 = this.f32135c;
                } else {
                    kVar5 = this.f32137e;
                }
                iD = ((int) kVar5.d()) + i11;
                if (iD >= this.f32133a.k()) {
                    iD = this.f32133a.k() - 1;
                }
                kVar6 = new k(kVar5.c(), iD);
                if (z10) {
                    kVar3 = kVar6;
                } else {
                    kVar4 = kVar6;
                    kVar3 = kVar8;
                }
                return new c(this.f32133a, kVar, kVar3, kVar2, kVar4);
            }
            kVar3 = kVar8;
            kVar4 = kVar10;
            return new c(this.f32133a, kVar, kVar3, kVar2, kVar4);
        }
        kVar = kVar7;
        kVar2 = kVar9;
        if (i11 > 0) {
            if (z10) {
                kVar5 = this.f32135c;
            } else {
                kVar5 = this.f32137e;
            }
            iD = ((int) kVar5.d()) + i11;
            if (iD >= this.f32133a.k()) {
                iD = this.f32133a.k() - 1;
            }
            kVar6 = new k(kVar5.c(), iD);
            if (z10) {
                kVar3 = kVar6;
            } else {
                kVar4 = kVar6;
                kVar3 = kVar8;
            }
            return new c(this.f32133a, kVar, kVar3, kVar2, kVar4);
        }
        kVar3 = kVar8;
        kVar4 = kVar10;
        return new c(this.f32133a, kVar, kVar3, kVar2, kVar4);
    }

    k b() {
        return this.f32135c;
    }

    k c() {
        return this.f32137e;
    }

    int d() {
        return this.f32139g;
    }

    int e() {
        return this.f32141i;
    }

    int f() {
        return this.f32138f;
    }

    int g() {
        return this.f32140h;
    }

    k h() {
        return this.f32134b;
    }

    k i() {
        return this.f32136d;
    }

    c(c cVar) {
        this.f32133a = cVar.f32133a;
        this.f32134b = cVar.f32134b;
        this.f32135c = cVar.f32135c;
        this.f32136d = cVar.f32136d;
        this.f32137e = cVar.f32137e;
        this.f32138f = cVar.f32138f;
        this.f32139g = cVar.f32139g;
        this.f32140h = cVar.f32140h;
        this.f32141i = cVar.f32141i;
    }
}
