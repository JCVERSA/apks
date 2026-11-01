package b;

import java.util.Arrays;

public final class d {

    public b f245b;

    public final c f253j;

    public int f244a = 0;

    public int f246c = 32;

    public int f247d = 32;

    public boolean[] f249f = new boolean[32];

    public int f250g = 1;

    public int f251h = 0;

    public int f252i = 32;

    public final f[] f254k = new f[1000];

    public int f255l = 0;

    public b[] f256m = new b[32];

    public b[] f248e = new b[32];

    public d() {
        int i2 = 0;
        while (true) {
            b[] bVarArr = this.f248e;
            if (i2 >= bVarArr.length) {
                this.f253j = new c(0);
                return;
            }
            b bVar = bVarArr[i2];
            if (bVar != null) {
                e eVar = (e) this.f253j.f240b;
                int i3 = eVar.f258b;
                Object[] objArr = eVar.f257a;
                if (i3 < objArr.length) {
                    objArr[i3] = bVar;
                    eVar.f258b = i3 + 1;
                }
            }
            bVarArr[i2] = null;
            i2++;
        }
    }

    public static int n(c.b bVar) {
        f fVar = bVar.f327i;
        if (fVar != null) {
            return (int) (fVar.f262d + 0.5f);
        }
        return 0;
    }

    public final f a(int i2) {
        e eVar = (e) this.f253j.f241c;
        int i3 = eVar.f258b;
        Object obj = null;
        if (i3 > 0) {
            int i4 = i3 - 1;
            Object[] objArr = eVar.f257a;
            Object obj2 = objArr[i4];
            objArr[i4] = null;
            eVar.f258b = i4;
            obj = obj2;
        }
        f fVar = (f) obj;
        if (fVar == null) {
            fVar = new f(i2);
        }
        fVar.b();
        fVar.f263e = i2;
        int i5 = this.f255l;
        this.f255l = i5 + 1;
        this.f254k[i5] = fVar;
        return fVar;
    }

    public final void b(f fVar, f fVar2, int i2, float f2, f fVar3, f fVar4, int i3) {
        b bVarK = k();
        bVarK.a(fVar, fVar2, i2, f2, fVar3, fVar4, i3);
        f fVarI = i();
        f fVarI2 = i();
        fVarI.f261c = 2;
        fVarI2.f261c = 2;
        a aVar = bVarK.f237c;
        aVar.c(fVarI, 1.0f);
        aVar.c(fVarI2, -1.0f);
        c(bVarK);
    }

    public final void c(b bVar) {
        b[] bVarArr;
        if (this.f251h + 1 >= this.f252i || this.f250g + 1 >= this.f247d) {
            o();
        }
        if (!bVar.f238d) {
            int i2 = this.f251h;
            a aVar = bVar.f237c;
            if (i2 > 0) {
                aVar.f(bVar, this.f248e);
                if (aVar.f225a == 0) {
                    bVar.f238d = true;
                }
            }
            float f2 = bVar.f236b;
            if (f2 < 0.0f) {
                bVar.f236b = f2 * (-1.0f);
                int i3 = aVar.f232h;
                for (int i4 = 0; i3 != -1 && i4 < aVar.f225a; i4++) {
                    float[] fArr = aVar.f231g;
                    fArr[i3] = fArr[i3] * (-1.0f);
                    i3 = aVar.f230f[i3];
                }
            }
            int i5 = aVar.f232h;
            f fVar = null;
            f fVar2 = null;
            int i6 = 0;
            while (true) {
                if (i5 == -1 || i6 >= aVar.f225a) {
                    if (fVar != null) {
                        break;
                    }
                    fVar = fVar2;
                    break;
                }
                float[] fArr2 = aVar.f231g;
                float f3 = fArr2[i5];
                if (f3 < 0.0f) {
                    if (f3 > -0.001f) {
                        fArr2[i5] = 0.0f;
                        f3 = 0.0f;
                    }
                } else if (f3 < 0.001f) {
                    fArr2[i5] = 0.0f;
                    f3 = 0.0f;
                }
                if (f3 != 0.0f) {
                    f fVar3 = ((f[]) aVar.f227c.f243e)[aVar.f229e[i5]];
                    if (fVar3.f263e == 1) {
                        if (f3 < 0.0f) {
                            fVar = fVar3;
                            break;
                        } else if (fVar == null) {
                            fVar = fVar3;
                        }
                    } else if (f3 < 0.0f && (fVar2 == null || fVar3.f261c < fVar2.f261c)) {
                        fVar2 = fVar3;
                    }
                }
                i5 = aVar.f230f[i5];
                i6++;
            }
            if (fVar != null) {
                bVar.g(fVar);
            }
            if (aVar.f225a == 0) {
                bVar.f238d = true;
            }
            f fVar4 = bVar.f235a;
            if (!(fVar4 != null && (fVar4.f263e == 1 || bVar.f236b >= 0.0f))) {
                return;
            }
        }
        b bVar2 = this.f248e[this.f251h];
        if (bVar2 != null) {
            e eVar = (e) this.f253j.f240b;
            int i7 = eVar.f258b;
            Object[] objArr = eVar.f257a;
            if (i7 < objArr.length) {
                objArr[i7] = bVar2;
                eVar.f258b = i7 + 1;
            }
        }
        if (!bVar.f238d) {
            bVar.h();
        }
        b[] bVarArr2 = this.f248e;
        int i8 = this.f251h;
        bVarArr2[i8] = bVar;
        f fVar5 = bVar.f235a;
        fVar5.f260b = i8;
        this.f251h = i8 + 1;
        int i9 = fVar5.f265g;
        if (i9 > 0) {
            while (true) {
                bVarArr = this.f256m;
                if (bVarArr.length >= i9) {
                    break;
                } else {
                    this.f256m = new b[bVarArr.length * 2];
                }
            }
            System.arraycopy(bVar.f235a.f264f, 0, bVarArr, 0, i9);
            for (int i10 = 0; i10 < i9; i10++) {
                b bVar3 = bVarArr[i10];
                if (bVar3 != bVar) {
                    bVar3.f237c.e(bVar3, bVar);
                    bVar3.h();
                }
            }
        }
    }

    public final void d(f fVar, int i2) {
        int i3 = fVar.f260b;
        if (i3 != -1) {
            b bVar = this.f248e[i3];
            if (bVar.f238d) {
                bVar.f236b = i2;
                return;
            }
            b bVarK = k();
            bVarK.c(fVar, i2);
            c(bVarK);
            return;
        }
        b bVarK2 = k();
        bVarK2.f235a = fVar;
        float f2 = i2;
        fVar.f262d = f2;
        bVarK2.f236b = f2;
        bVarK2.f238d = true;
        c(bVarK2);
    }

    public final void e(f fVar, f fVar2, int i2, int i3) {
        b bVarK = k();
        bVarK.d(fVar, fVar2, i2);
        f fVarI = i();
        f fVarI2 = i();
        fVarI.f261c = i3;
        fVarI2.f261c = i3;
        a aVar = bVarK.f237c;
        aVar.c(fVarI, 1.0f);
        aVar.c(fVarI2, -1.0f);
        c(bVarK);
    }

    public final void f(f fVar, f fVar2, int i2, int i3) {
        b bVarK = k();
        f fVarL = l();
        fVarL.f261c = i3;
        bVarK.e(fVar, fVar2, fVarL, i2);
        c(bVarK);
    }

    public final void g(f fVar, f fVar2, int i2, int i3) {
        b bVarK = k();
        f fVarL = l();
        fVarL.f261c = i3;
        bVarK.f(fVar, fVar2, fVarL, i2);
        c(bVarK);
    }

    public final void h() {
        for (int i2 = 0; i2 < this.f251h; i2++) {
            b bVar = this.f248e[i2];
            bVar.f235a.f262d = bVar.f236b;
        }
    }

    public final f i() {
        if (this.f250g + 1 >= this.f247d) {
            o();
        }
        f fVarA = a(4);
        int i2 = this.f244a + 1;
        this.f244a = i2;
        this.f250g++;
        fVarA.f259a = i2;
        ((f[]) this.f253j.f243e)[i2] = fVarA;
        return fVarA;
    }

    public final f j(Object obj) {
        f fVar = null;
        if (obj == null) {
            return null;
        }
        if (this.f250g + 1 >= this.f247d) {
            o();
        }
        if (obj instanceof c.b) {
            c.b bVar = (c.b) obj;
            fVar = bVar.f327i;
            if (fVar == null) {
                bVar.d();
                fVar = bVar.f327i;
            }
            int i2 = fVar.f259a;
            c cVar = this.f253j;
            if (i2 == -1 || i2 > this.f244a || ((f[]) cVar.f243e)[i2] == null) {
                if (i2 != -1) {
                    fVar.b();
                }
                int i3 = this.f244a + 1;
                this.f244a = i3;
                this.f250g++;
                fVar.f259a = i3;
                fVar.f263e = 1;
                ((f[]) cVar.f243e)[i3] = fVar;
            }
        }
        return fVar;
    }

    public final b k() {
        Object obj;
        c cVar = this.f253j;
        e eVar = (e) cVar.f240b;
        int i2 = eVar.f258b;
        if (i2 > 0) {
            int i3 = i2 - 1;
            Object[] objArr = eVar.f257a;
            obj = objArr[i3];
            objArr[i3] = null;
            eVar.f258b = i3;
        } else {
            obj = null;
        }
        b bVar = (b) obj;
        if (bVar == null) {
            return new b(cVar);
        }
        bVar.f235a = null;
        a aVar = bVar.f237c;
        aVar.f232h = -1;
        aVar.f233i = -1;
        aVar.f234j = false;
        aVar.f225a = 0;
        bVar.f236b = 0.0f;
        bVar.f238d = false;
        return bVar;
    }

    public final f l() {
        if (this.f250g + 1 >= this.f247d) {
            o();
        }
        f fVarA = a(3);
        int i2 = this.f244a + 1;
        this.f244a = i2;
        this.f250g++;
        fVarA.f259a = i2;
        ((f[]) this.f253j.f243e)[i2] = fVarA;
        return fVarA;
    }

    public final void m(b bVar) {
        int i2;
        boolean z2;
        a aVar;
        c cVar;
        int i3 = 0;
        while (true) {
            i2 = 1;
            if (i3 >= this.f251h) {
                z2 = false;
                break;
            }
            b bVar2 = this.f248e[i3];
            if (bVar2.f235a.f263e != 1 && bVar2.f236b < 0.0f) {
                z2 = true;
                break;
            }
            i3++;
        }
        if (z2) {
            boolean z3 = false;
            while (!z3) {
                float f2 = Float.MAX_VALUE;
                int i4 = Integer.MAX_VALUE;
                int i5 = 0;
                int i6 = -1;
                int i7 = -1;
                while (true) {
                    int i8 = this.f251h;
                    aVar = bVar.f237c;
                    cVar = this.f253j;
                    if (i5 >= i8) {
                        break;
                    }
                    b bVar3 = this.f248e[i5];
                    if (bVar3.f235a.f263e != i2 && bVar3.f236b < 0.0f) {
                        for (int i9 = 1; i9 < this.f250g; i9++) {
                            f fVar = ((f[]) cVar.f243e)[i9];
                            float fB = bVar3.f237c.b(fVar);
                            if (fB > 0.0f) {
                                float fB2 = aVar.b(fVar) / fB;
                                int i10 = fVar.f261c;
                                if (i10 <= i4 && fB2 < f2) {
                                    i4 = i10;
                                    i6 = i5;
                                    i7 = i9;
                                    f2 = fB2;
                                }
                            }
                        }
                    }
                    i5++;
                    i2 = 1;
                }
                if (i6 != -1) {
                    b bVar4 = this.f248e[i6];
                    bVar4.f235a.f260b = -1;
                    bVar4.g(((f[]) cVar.f243e)[i7]);
                    bVar4.f235a.f260b = i6;
                    for (int i11 = 0; i11 < this.f251h; i11++) {
                        b bVar5 = this.f248e[i11];
                        bVar5.f237c.e(bVar5, bVar4);
                    }
                    aVar.e(bVar, bVar4);
                } else {
                    z3 = true;
                }
                i2 = 1;
            }
        }
        for (int i12 = 0; i12 < this.f251h; i12++) {
            b bVar6 = this.f248e[i12];
            if (bVar6.f235a.f263e != 1 && bVar6.f236b < 0.0f) {
                return;
            }
        }
    }

    public final void o() {
        int i2 = this.f246c * 2;
        this.f246c = i2;
        this.f248e = (b[]) Arrays.copyOf(this.f248e, i2);
        c cVar = this.f253j;
        cVar.f243e = (f[]) Arrays.copyOf((f[]) cVar.f243e, this.f246c);
        int i3 = this.f246c;
        this.f249f = new boolean[i3];
        this.f247d = i3;
        this.f252i = i3;
        b bVar = this.f245b;
        if (bVar != null) {
            e eVar = (e) cVar.f240b;
            int i4 = eVar.f258b;
            Object[] objArr = eVar.f257a;
            if (i4 < objArr.length) {
                objArr[i4] = bVar;
                eVar.f258b = i4 + 1;
            }
        }
        this.f245b = null;
    }

    public final void p() throws Exception {
        b bVar = this.f245b;
        boolean z2 = false;
        if (bVar != null) {
            bVar.f235a = null;
            a aVar = bVar.f237c;
            aVar.f232h = -1;
            aVar.f233i = -1;
            aVar.f234j = false;
            aVar.f225a = 0;
            bVar.f236b = 0.0f;
            bVar.f238d = false;
        } else {
            this.f245b = k();
        }
        for (int i2 = 1; i2 < this.f250g; i2++) {
            f fVar = ((f[]) this.f253j.f243e)[i2];
            if (fVar.f263e == 4) {
                this.f245b.f237c.c(fVar, 1.0f);
            }
        }
        b bVar2 = this.f245b;
        bVar2.f237c.f(bVar2, this.f248e);
        a aVar2 = bVar2.f237c;
        int i3 = aVar2.f232h;
        for (int i4 = 0; i3 != -1 && i4 < aVar2.f225a; i4++) {
            if (aVar2.f231g[i3] > 0.0f) {
                z2 = true;
                break;
            }
            i3 = aVar2.f230f[i3];
        }
        if (!z2) {
            h();
            return;
        }
        try {
            m(bVar2);
            q(bVar2);
            h();
        } catch (Exception e2) {
            h();
            throw e2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0062 A[PHI: r4
      0x0062: PHI (r4v3 int) = (r4v2 int), (r4v5 int) binds: [B:22:0x004c, B:27:0x005d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x007d  */
    public final void q(b bVar) {
        int i2;
        boolean z2;
        boolean z3;
        for (int i3 = 0; i3 < this.f250g; i3++) {
            this.f249f[i3] = false;
        }
        boolean z4 = false;
        int i4 = 0;
        while (!z4) {
            a aVar = bVar.f237c;
            aVar.getClass();
            int i5 = aVar.f232h;
            f fVar = null;
            f fVar2 = null;
            int i6 = 0;
            while (true) {
                i2 = -1;
                if (i5 == -1 || i6 >= aVar.f225a) {
                    break;
                }
                if (aVar.f231g[i5] < 0.0f) {
                    f fVar3 = ((f[]) aVar.f227c.f243e)[aVar.f229e[i5]];
                    if (fVar2 == null || fVar2.f261c > fVar3.f261c) {
                        fVar2 = fVar3;
                    }
                }
                i5 = aVar.f230f[i5];
                i6++;
            }
            int i7 = 1;
            if (fVar2 != null) {
                boolean[] zArr = this.f249f;
                int i8 = fVar2.f259a;
                if (!zArr[i8]) {
                    zArr[i8] = true;
                    i4++;
                    if (i4 >= this.f250g) {
                        fVar = fVar2;
                        z4 = true;
                    } else {
                        fVar = fVar2;
                    }
                }
            } else {
                fVar = fVar2;
            }
            if (fVar != null) {
                float fB = aVar.b(fVar);
                float f2 = Float.MAX_VALUE;
                int i9 = 0;
                int i10 = -1;
                int i11 = 0;
                while (i9 < this.f251h) {
                    b bVar2 = this.f248e[i9];
                    if (bVar2.f235a.f263e != i7) {
                        a aVar2 = bVar2.f237c;
                        int i12 = aVar2.f232h;
                        if (i12 == i2) {
                            z3 = false;
                            break;
                        }
                        int i13 = 0;
                        while (true) {
                            if (i12 == i2 || i13 >= aVar2.f225a) {
                                z3 = false;
                                break;
                            } else if (aVar2.f229e[i12] == fVar.f259a) {
                                z3 = true;
                                break;
                            } else {
                                i12 = aVar2.f230f[i12];
                                i13++;
                                i2 = -1;
                            }
                        }
                        if (z3) {
                            float fB2 = aVar2.b(fVar);
                            if (fB2 > 0.0f) {
                                float f3 = fB / fB2;
                                int i14 = fVar.f261c;
                                if (i14 >= i11 && f3 < f2) {
                                    f2 = f3;
                                    i11 = i14;
                                    i10 = i9;
                                }
                            }
                        }
                    }
                    i9++;
                    i7 = 1;
                    i2 = -1;
                }
                if (i10 > -1) {
                    b bVar3 = this.f248e[i10];
                    bVar3.f235a.f260b = -1;
                    bVar3.g(fVar);
                    bVar3.f235a.f260b = i10;
                    for (int i15 = 0; i15 < this.f251h; i15++) {
                        b bVar4 = this.f248e[i15];
                        bVar4.f237c.e(bVar4, bVar3);
                    }
                    aVar.e(bVar, bVar3);
                    z2 = z4;
                } else {
                    z2 = true;
                }
                z4 = z2;
            } else {
                z4 = true;
            }
        }
    }

    public final void r() {
        c cVar;
        int i2 = 0;
        while (true) {
            cVar = this.f253j;
            f[] fVarArr = (f[]) cVar.f243e;
            if (i2 >= fVarArr.length) {
                break;
            }
            f fVar = fVarArr[i2];
            if (fVar != null) {
                fVar.b();
            }
            i2++;
        }
        e eVar = (e) cVar.f241c;
        int i3 = this.f255l;
        eVar.getClass();
        for (int i4 = 0; i4 < i3; i4++) {
            f fVar2 = this.f254k[i4];
            int i5 = eVar.f258b;
            Object[] objArr = eVar.f257a;
            if (i5 < objArr.length) {
                objArr[i5] = fVar2;
                eVar.f258b = i5 + 1;
            }
        }
        this.f255l = 0;
        Arrays.fill((f[]) cVar.f243e, (Object) null);
        this.f244a = 0;
        b bVar = this.f245b;
        if (bVar != null) {
            e eVar2 = (e) cVar.f240b;
            int i6 = eVar2.f258b;
            Object[] objArr2 = eVar2.f257a;
            if (i6 < objArr2.length) {
                objArr2[i6] = bVar;
                eVar2.f258b = i6 + 1;
            }
        }
        this.f245b = null;
        this.f250g = 1;
        for (int i7 = 0; i7 < this.f251h; i7++) {
            this.f248e[i7].getClass();
        }
        int i8 = 0;
        while (true) {
            b[] bVarArr = this.f248e;
            if (i8 >= bVarArr.length) {
                this.f251h = 0;
                return;
            }
            b bVar2 = bVarArr[i8];
            if (bVar2 != null) {
                e eVar3 = (e) cVar.f240b;
                int i9 = eVar3.f258b;
                Object[] objArr3 = eVar3.f257a;
                if (i9 < objArr3.length) {
                    objArr3[i9] = bVar2;
                    eVar3.f258b = i9 + 1;
                }
            }
            bVarArr[i8] = null;
            i8++;
        }
    }
}
