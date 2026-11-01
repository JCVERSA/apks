package c;

import java.util.ArrayList;
import java.util.Arrays;

public final class d extends g {
    public f O;
    public final b.d N = new b.d();
    public int P = 0;
    public int Q = 0;
    public c[] R = new c[4];
    public c[] S = new c[4];
    public c[] T = new c[4];
    public boolean U = true;

    @Override
    public final void g() {
        this.N.r();
        super.g();
    }

    @Override
    public final void s() {
        int i2 = this.f354r;
        int i3 = this.f355s;
        c cVar = this.f349m;
        b.d dVar = this.N;
        if (cVar != null) {
            if (this.O == null) {
                this.O = new f(this);
            }
            f fVar = this.O;
            fVar.getClass();
            fVar.f363a = this.f354r;
            fVar.f364b = this.f355s;
            fVar.f365c = e();
            fVar.f366d = d();
            ArrayList<f.a> arrayList = fVar.f367e;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                f.a aVar = arrayList.get(i4);
                b bVarC = c(aVar.f368a.f320b);
                aVar.f368a = bVarC;
                if (bVarC != null) {
                    aVar.f369b = bVarC.f321c;
                    aVar.f370c = bVarC.b();
                    b bVar = aVar.f368a;
                    aVar.f371d = bVar.f324f;
                    aVar.f372e = bVar.f326h;
                } else {
                    aVar.f369b = null;
                    aVar.f370c = 0;
                    aVar.f371d = 2;
                    aVar.f372e = 0;
                }
            }
            this.f354r = 0;
            this.f355s = 0;
            c cVar2 = this.f349m;
            if (cVar2 != null && (cVar2 instanceof d)) {
            }
            ArrayList<b> arrayList2 = this.f348l;
            int size2 = arrayList2.size();
            for (int i5 = 0; i5 < size2; i5++) {
                arrayList2.get(i5).c();
            }
            h(dVar.f253j);
        } else {
            this.f354r = 0;
            this.f355s = 0;
        }
        this.P = 0;
        this.Q = 0;
        ArrayList<c> arrayList3 = this.M;
        int size3 = arrayList3.size();
        for (int i6 = 0; i6 < size3; i6++) {
            c cVar3 = arrayList3.get(i6);
            if (cVar3 instanceof g) {
                ((g) cVar3).s();
            }
        }
        boolean zU = true;
        try {
            dVar.r();
            zU = u(dVar);
            if (zU) {
                dVar.p();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (zU) {
            r(dVar);
            int size4 = arrayList3.size();
            for (int i7 = 0; i7 < size4; i7++) {
                arrayList3.get(i7).r(dVar);
            }
        } else {
            r(dVar);
        }
        if (this.f349m != null) {
            int iE = e();
            int iD = d();
            f fVar2 = this.O;
            this.f354r = fVar2.f363a;
            this.f355s = fVar2.f364b;
            p(fVar2.f365c);
            j(fVar2.f366d);
            ArrayList<f.a> arrayList4 = fVar2.f367e;
            int size5 = arrayList4.size();
            for (int i8 = 0; i8 < size5; i8++) {
                f.a aVar2 = arrayList4.get(i8);
                c(aVar2.f368a.f320b).a(aVar2.f369b, aVar2.f370c, -1, aVar2.f371d, aVar2.f372e, false);
            }
            p(iE + 0 + 0);
            j(iD + 0 + 0);
        } else {
            this.f354r = i2;
            this.f355s = i3;
        }
        h(dVar.f253j);
        c cVar4 = this.f349m;
        d dVar2 = this;
        while (cVar4 != null) {
            c cVar5 = cVar4.f349m;
            if (cVar4 instanceof d) {
                dVar2 = (d) cVar4;
            }
            cVar4 = cVar5;
        }
        if (this == dVar2) {
            q();
        }
    }

    public final void t(c cVar, int i2) {
        int i3 = 0;
        if (i2 == 0) {
            while (true) {
                b bVar = cVar.f340d;
                b bVar2 = bVar.f321c;
                if (bVar2 == null) {
                    break;
                }
                c cVar2 = bVar2.f319a;
                b bVar3 = cVar2.f342f.f321c;
                if (bVar3 == null || bVar3 != bVar || cVar2 == cVar) {
                    break;
                } else {
                    cVar = cVar2;
                }
            }
            while (true) {
                int i4 = this.P;
                if (i3 >= i4) {
                    int i5 = i4 + 1;
                    c[] cVarArr = this.T;
                    if (i5 >= cVarArr.length) {
                        this.T = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
                    }
                    c[] cVarArr2 = this.T;
                    int i6 = this.P;
                    cVarArr2[i6] = cVar;
                    this.P = i6 + 1;
                    return;
                }
                if (this.T[i3] == cVar) {
                    return;
                } else {
                    i3++;
                }
            }
        } else {
            if (i2 != 1) {
                return;
            }
            while (true) {
                b bVar4 = cVar.f341e;
                b bVar5 = bVar4.f321c;
                if (bVar5 == null) {
                    break;
                }
                c cVar3 = bVar5.f319a;
                b bVar6 = cVar3.f343g.f321c;
                if (bVar6 == null || bVar6 != bVar4 || cVar3 == cVar) {
                    break;
                } else {
                    cVar = cVar3;
                }
            }
            while (true) {
                int i7 = this.Q;
                if (i3 >= i7) {
                    int i8 = i7 + 1;
                    c[] cVarArr3 = this.S;
                    if (i8 >= cVarArr3.length) {
                        this.S = (c[]) Arrays.copyOf(cVarArr3, cVarArr3.length * 2);
                    }
                    c[] cVarArr4 = this.S;
                    int i9 = this.Q;
                    cVarArr4[i9] = cVar;
                    this.Q = i9 + 1;
                    return;
                }
                if (this.S[i3] == cVar) {
                    return;
                } else {
                    i3++;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:411:0x0855  */
    /* JADX WARN: Code duplicated, block: B:413:0x0869  */
    /* JADX WARN: Code duplicated, block: B:414:0x086d  */
    /* JADX WARN: Code duplicated, block: B:417:0x0874  */
    /* JADX WARN: Code duplicated, block: B:418:0x0878  */
    /* JADX WARN: Code duplicated, block: B:420:0x087b  */
    /* JADX WARN: Code duplicated, block: B:421:0x0883  */
    /* JADX WARN: Code duplicated, block: B:423:0x0886 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:424:0x0888  */
    /* JADX WARN: Code duplicated, block: B:427:0x088e  */
    /* JADX WARN: Code duplicated, block: B:428:0x0890  */
    /* JADX WARN: Code duplicated, block: B:435:0x089f  */
    /* JADX WARN: Code duplicated, block: B:437:0x08a9  */
    /* JADX WARN: Code duplicated, block: B:438:0x08ac  */
    /* JADX WARN: Code duplicated, block: B:440:0x08af  */
    /* JADX WARN: Code duplicated, block: B:441:0x08b6  */
    /* JADX WARN: Code duplicated, block: B:443:0x08ba A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:444:0x08bc  */
    /* JADX WARN: Code duplicated, block: B:446:0x08c1  */
    /* JADX WARN: Code duplicated, block: B:447:0x08c7  */
    /* JADX WARN: Code duplicated, block: B:450:0x08ce  */
    /* JADX WARN: Code duplicated, block: B:451:0x08d7  */
    /* JADX WARN: Code duplicated, block: B:454:0x08dd  */
    /* JADX WARN: Code duplicated, block: B:455:0x08e6  */
    /* JADX WARN: Code duplicated, block: B:457:0x08e9 A[LOOP:10: B:404:0x0844->B:457:0x08e9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:471:0x0929  */
    /* JADX WARN: Code duplicated, block: B:520:0x08f4 A[SYNTHETIC] */
    public final boolean u(b.d dVar) {
        d dVar2;
        int i2;
        int i3;
        int iB;
        b bVar;
        int iB2;
        b bVar2;
        b.f fVar;
        b bVar3;
        b.f fVar2;
        b.f fVar3;
        b bVar4;
        b.f fVar4;
        int iB3;
        b bVar5;
        b bVar6;
        c cVar;
        int iB4;
        boolean z2;
        int i4;
        int i5;
        int i6;
        b bVar7;
        b bVar8;
        b bVar9;
        b bVar10;
        b bVar11;
        b bVar12;
        int i7;
        float f2;
        b bVar13;
        b bVar14;
        boolean z3;
        int i8;
        int i9;
        float fD;
        b bVar15;
        int iD;
        float fE;
        b bVar16;
        int iE;
        d dVar3 = this;
        a(dVar);
        ArrayList<c> arrayList = dVar3.M;
        int size = arrayList.size();
        int i10 = 3;
        int i11 = 2;
        int i12 = 1;
        if (dVar3.U) {
            int size2 = arrayList.size();
            int i13 = -1;
            if (dVar3.U) {
                for (int i14 = 0; i14 < size2; i14++) {
                    c cVar2 = arrayList.get(i14);
                    cVar2.f338b = -1;
                    cVar2.f339c = -1;
                    if (cVar2.C == 3 || cVar2.D == 3) {
                        cVar2.f338b = 1;
                        cVar2.f339c = 1;
                    }
                }
                boolean z4 = false;
                int i15 = 0;
                int i16 = 0;
                while (!z4) {
                    int i17 = 0;
                    int i18 = 0;
                    int i19 = 0;
                    while (i17 < size2) {
                        c cVar3 = arrayList.get(i17);
                        if (cVar3.f338b != i13) {
                            z3 = z4;
                            i8 = 2;
                        } else if (dVar3.C == i11 || cVar3.C == i10) {
                            cVar3.f338b = i12;
                            z3 = z4;
                            i8 = 2;
                        } else {
                            b bVar17 = cVar3.f340d;
                            b bVar18 = bVar17.f321c;
                            b bVar19 = cVar3.f342f;
                            if (bVar18 == null || (bVar16 = bVar19.f321c) == null) {
                                z3 = z4;
                                if (bVar18 == null || bVar18.f319a != dVar3) {
                                    b bVar20 = bVar19.f321c;
                                    if (bVar20 != null && bVar20.f319a == dVar3) {
                                        bVar17.f327i = dVar.j(bVar17);
                                        bVar19.f327i = dVar.j(bVar19);
                                        int iE2 = e() - bVar19.b();
                                        int iE3 = iE2 - cVar3.e();
                                        dVar.d(bVar17.f327i, iE3);
                                        dVar.d(bVar19.f327i, iE2);
                                        cVar3.f338b = 2;
                                        cVar3.k(iE3, iE2);
                                    } else if (bVar18 != null && bVar18.f319a.f338b == 2) {
                                        b.f fVar5 = bVar18.f327i;
                                        bVar17.f327i = dVar.j(bVar17);
                                        bVar19.f327i = dVar.j(bVar19);
                                        int iB5 = (int) (fVar5.f262d + bVar17.b() + 0.5f);
                                        int iE4 = cVar3.e() + iB5;
                                        dVar.d(bVar17.f327i, iB5);
                                        dVar.d(bVar19.f327i, iE4);
                                        cVar3.f338b = 2;
                                        cVar3.k(iB5, iE4);
                                    } else if (bVar20 == null || bVar20.f319a.f338b != 2) {
                                        boolean z5 = bVar18 != null;
                                        boolean z6 = bVar20 != null;
                                        if (!z5 && !z6) {
                                            if (cVar3 instanceof e) {
                                                e eVar = (e) cVar3;
                                                if (eVar.Q == 1) {
                                                    bVar17.f327i = dVar.j(bVar17);
                                                    bVar19.f327i = dVar.j(bVar19);
                                                    int iE5 = eVar.N;
                                                    if (iE5 != -1) {
                                                        fE = iE5;
                                                    } else if (eVar.O != -1) {
                                                        iE5 = e() - eVar.O;
                                                        fE = iE5;
                                                    } else {
                                                        fE = eVar.M * e();
                                                    }
                                                    int i20 = (int) (fE + 0.5f);
                                                    dVar.d(bVar17.f327i, i20);
                                                    dVar.d(bVar19.f327i, i20);
                                                    cVar3.f338b = 2;
                                                    cVar3.f339c = 2;
                                                    cVar3.k(i20, i20);
                                                    cVar3.n(0, d());
                                                }
                                            } else {
                                                bVar17.f327i = dVar.j(bVar17);
                                                bVar19.f327i = dVar.j(bVar19);
                                                int i21 = cVar3.f354r;
                                                int iE6 = cVar3.e() + i21;
                                                dVar.d(bVar17.f327i, i21);
                                                dVar.d(bVar19.f327i, iE6);
                                                i8 = 2;
                                                cVar3.f338b = 2;
                                            }
                                        }
                                    } else {
                                        b.f fVar6 = bVar20.f327i;
                                        bVar17.f327i = dVar.j(bVar17);
                                        bVar19.f327i = dVar.j(bVar19);
                                        int iB6 = (int) ((fVar6.f262d - bVar19.b()) + 0.5f);
                                        int iE7 = iB6 - cVar3.e();
                                        dVar.d(bVar17.f327i, iE7);
                                        dVar.d(bVar19.f327i, iB6);
                                        cVar3.f338b = 2;
                                        cVar3.k(iE7, iB6);
                                    }
                                    i8 = 2;
                                } else {
                                    int iB7 = bVar17.b();
                                    int iE8 = cVar3.e() + iB7;
                                    bVar17.f327i = dVar.j(bVar17);
                                    bVar19.f327i = dVar.j(bVar19);
                                    dVar.d(bVar17.f327i, iB7);
                                    dVar.d(bVar19.f327i, iE8);
                                    cVar3.f338b = 2;
                                    cVar3.k(iB7, iE8);
                                }
                            } else if (bVar18.f319a == dVar3 && bVar16.f319a == dVar3) {
                                int iB8 = bVar17.b();
                                int iB9 = bVar19.b();
                                z3 = z4;
                                if (dVar3.C == i10) {
                                    iE = e() - iB9;
                                } else {
                                    iB8 += (int) (((((e() - iB8) - iB9) - cVar3.e()) * cVar3.A) + 0.5f);
                                    iE = cVar3.e() + iB8;
                                }
                                bVar17.f327i = dVar.j(bVar17);
                                bVar19.f327i = dVar.j(bVar19);
                                dVar.d(bVar17.f327i, iB8);
                                dVar.d(bVar19.f327i, iE);
                                cVar3.f338b = 2;
                                cVar3.k(iB8, iE);
                            } else {
                                z3 = z4;
                                cVar3.f338b = 1;
                            }
                            i8 = 2;
                        }
                        if (cVar3.f339c != -1) {
                            i9 = size;
                        } else if (dVar3.D == i8 || cVar3.D == 3) {
                            cVar3.f339c = 1;
                            i9 = size;
                        } else {
                            b bVar21 = cVar3.f341e;
                            b bVar22 = bVar21.f321c;
                            b bVar23 = cVar3.f344h;
                            b bVar24 = cVar3.f343g;
                            if (bVar22 == null || (bVar15 = bVar24.f321c) == null) {
                                i9 = size;
                                if (bVar22 == null || bVar22.f319a != dVar3) {
                                    b bVar25 = bVar24.f321c;
                                    if (bVar25 != null && bVar25.f319a == dVar3) {
                                        bVar21.f327i = dVar.j(bVar21);
                                        bVar24.f327i = dVar.j(bVar24);
                                        int iD2 = d() - bVar24.b();
                                        int iD3 = iD2 - cVar3.d();
                                        dVar.d(bVar21.f327i, iD3);
                                        dVar.d(bVar24.f327i, iD2);
                                        if (cVar3.f362z > 0) {
                                            b.f fVarJ = dVar.j(bVar23);
                                            bVar23.f327i = fVarJ;
                                            dVar.d(fVarJ, cVar3.f362z + iD3);
                                        }
                                        cVar3.f339c = 2;
                                        cVar3.n(iD3, iD2);
                                    } else if (bVar22 != null && bVar22.f319a.f339c == 2) {
                                        b.f fVar7 = bVar22.f327i;
                                        bVar21.f327i = dVar.j(bVar21);
                                        bVar24.f327i = dVar.j(bVar24);
                                        int iB10 = (int) (fVar7.f262d + bVar21.b() + 0.5f);
                                        int iD4 = cVar3.d() + iB10;
                                        dVar.d(bVar21.f327i, iB10);
                                        dVar.d(bVar24.f327i, iD4);
                                        if (cVar3.f362z > 0) {
                                            b.f fVarJ2 = dVar.j(bVar23);
                                            bVar23.f327i = fVarJ2;
                                            dVar.d(fVarJ2, cVar3.f362z + iB10);
                                        }
                                        cVar3.f339c = 2;
                                        cVar3.n(iB10, iD4);
                                    } else if (bVar25 == null || bVar25.f319a.f339c != 2) {
                                        b bVar26 = bVar23.f321c;
                                        if (bVar26 == null || bVar26.f319a.f339c != 2) {
                                            boolean z7 = bVar26 != null;
                                            boolean z8 = bVar22 != null;
                                            boolean z9 = bVar25 != null;
                                            if (!z7 && !z8 && !z9) {
                                                if (cVar3 instanceof e) {
                                                    e eVar2 = (e) cVar3;
                                                    if (eVar2.Q == 0) {
                                                        bVar21.f327i = dVar.j(bVar21);
                                                        bVar24.f327i = dVar.j(bVar24);
                                                        int iD5 = eVar2.N;
                                                        if (iD5 != -1) {
                                                            fD = iD5;
                                                        } else if (eVar2.O != -1) {
                                                            iD5 = d() - eVar2.O;
                                                            fD = iD5;
                                                        } else {
                                                            fD = eVar2.M * d();
                                                        }
                                                        int i22 = (int) (fD + 0.5f);
                                                        dVar.d(bVar21.f327i, i22);
                                                        dVar.d(bVar24.f327i, i22);
                                                        cVar3.f339c = 2;
                                                        cVar3.f338b = 2;
                                                        cVar3.n(i22, i22);
                                                        cVar3.k(0, e());
                                                    }
                                                } else {
                                                    bVar21.f327i = dVar.j(bVar21);
                                                    bVar24.f327i = dVar.j(bVar24);
                                                    int i23 = cVar3.f355s;
                                                    int iD6 = cVar3.d() + i23;
                                                    dVar.d(bVar21.f327i, i23);
                                                    dVar.d(bVar24.f327i, iD6);
                                                    if (cVar3.f362z > 0) {
                                                        b.f fVarJ3 = dVar.j(bVar23);
                                                        bVar23.f327i = fVarJ3;
                                                        dVar.d(fVarJ3, i23 + cVar3.f362z);
                                                    }
                                                    cVar3.f339c = 2;
                                                }
                                            }
                                        } else {
                                            b.f fVar8 = bVar26.f327i;
                                            bVar21.f327i = dVar.j(bVar21);
                                            bVar24.f327i = dVar.j(bVar24);
                                            int i24 = (int) ((fVar8.f262d - cVar3.f362z) + 0.5f);
                                            int iD7 = cVar3.d() + i24;
                                            dVar.d(bVar21.f327i, i24);
                                            dVar.d(bVar24.f327i, iD7);
                                            b.f fVarJ4 = dVar.j(bVar23);
                                            bVar23.f327i = fVarJ4;
                                            dVar.d(fVarJ4, cVar3.f362z + i24);
                                            cVar3.f339c = 2;
                                            cVar3.n(i24, iD7);
                                        }
                                    } else {
                                        b.f fVar9 = bVar25.f327i;
                                        bVar21.f327i = dVar.j(bVar21);
                                        bVar24.f327i = dVar.j(bVar24);
                                        int iB11 = (int) ((fVar9.f262d - bVar24.b()) + 0.5f);
                                        int iD8 = iB11 - cVar3.d();
                                        dVar.d(bVar21.f327i, iD8);
                                        dVar.d(bVar24.f327i, iB11);
                                        if (cVar3.f362z > 0) {
                                            b.f fVarJ5 = dVar.j(bVar23);
                                            bVar23.f327i = fVarJ5;
                                            dVar.d(fVarJ5, cVar3.f362z + iD8);
                                        }
                                        cVar3.f339c = 2;
                                        cVar3.n(iD8, iB11);
                                    }
                                } else {
                                    int iB12 = bVar21.b();
                                    int iD9 = cVar3.d() + iB12;
                                    bVar21.f327i = dVar.j(bVar21);
                                    bVar24.f327i = dVar.j(bVar24);
                                    dVar.d(bVar21.f327i, iB12);
                                    dVar.d(bVar24.f327i, iD9);
                                    if (cVar3.f362z > 0) {
                                        b.f fVarJ6 = dVar.j(bVar23);
                                        bVar23.f327i = fVarJ6;
                                        dVar.d(fVarJ6, cVar3.f362z + iB12);
                                    }
                                    cVar3.f339c = 2;
                                    cVar3.n(iB12, iD9);
                                }
                            } else if (bVar22.f319a == dVar3 && bVar15.f319a == dVar3) {
                                int iB13 = bVar21.b();
                                int iB14 = bVar24.b();
                                i9 = size;
                                if (dVar3.D == 3) {
                                    iD = cVar3.d();
                                } else {
                                    iB13 = (int) (((((d() - iB13) - iB14) - cVar3.d()) * cVar3.B) + iB13 + 0.5f);
                                    iD = cVar3.d();
                                }
                                int i25 = iD + iB13;
                                bVar21.f327i = dVar.j(bVar21);
                                bVar24.f327i = dVar.j(bVar24);
                                dVar.d(bVar21.f327i, iB13);
                                dVar.d(bVar24.f327i, i25);
                                if (cVar3.f362z > 0) {
                                    b.f fVarJ7 = dVar.j(bVar23);
                                    bVar23.f327i = fVarJ7;
                                    dVar.d(fVarJ7, cVar3.f362z + iB13);
                                }
                                cVar3.f339c = 2;
                                cVar3.n(iB13, i25);
                            } else {
                                i9 = size;
                                cVar3.f339c = 1;
                            }
                        }
                        if (cVar3.f339c == -1) {
                            i18++;
                        }
                        if (cVar3.f338b == -1) {
                            i19++;
                        }
                        i17++;
                        i13 = -1;
                        i10 = 3;
                        i11 = 2;
                        dVar3 = this;
                        z4 = z3;
                        size = i9;
                        i12 = 1;
                    }
                    int i26 = size;
                    int i27 = i19;
                    z4 = ((i18 == 0 && i27 == 0) || (i15 == i18 && i16 == i27)) ? true : z4;
                    i13 = -1;
                    i10 = 3;
                    i11 = 2;
                    dVar3 = this;
                    i16 = i27;
                    i15 = i18;
                    size = i26;
                    i12 = 1;
                }
            }
            i2 = size;
            int i28 = 0;
            int i29 = 0;
            for (int i30 = 0; i30 < size2; i30++) {
                c cVar4 = arrayList.get(i30);
                if (this.U) {
                    int i31 = cVar4.f338b;
                    if (i31 == 1 || i31 == -1) {
                        i28++;
                    }
                    int i32 = cVar4.f339c;
                    if (i32 == 1 || i32 == -1) {
                        i29++;
                    }
                } else {
                    cVar4.f338b = 1;
                    cVar4.f339c = 1;
                }
            }
            dVar2 = this;
            if (dVar2.U && i28 == 0 && i29 == 0) {
                return false;
            }
        } else {
            dVar2 = dVar3;
            i2 = size;
        }
        int i33 = i2;
        for (int i34 = 0; i34 < i33; i34++) {
            c cVar5 = arrayList.get(i34);
            if (cVar5 instanceof d) {
                int i35 = cVar5.C;
                int i36 = cVar5.D;
                if (i35 == 2) {
                    cVar5.l(1);
                }
                if (i36 == 2) {
                    cVar5.o(1);
                }
                cVar5.a(dVar);
                if (i35 == 2) {
                    cVar5.l(i35);
                }
                if (i36 == 2) {
                    cVar5.o(i36);
                }
            } else {
                cVar5.a(dVar);
            }
        }
        if (dVar2.P > 0) {
            int i37 = 0;
            while (i37 < dVar2.P) {
                c cVar6 = dVar2.T[i37];
                int iW = dVar2.w(cVar6, 0);
                int i38 = cVar6.G;
                boolean z10 = i38 == 2;
                boolean z11 = dVar2.C == 2;
                float f3 = 0.0f;
                c cVar7 = null;
                if (!cVar6.I || z10 || z11 || i38 != 0) {
                    if (iW == 0 || z10) {
                        i3 = i37;
                        c cVar8 = cVar6;
                        c cVar9 = null;
                        while (true) {
                            if (cVar9 != null) {
                                b bVar27 = cVar8.f340d.f321c;
                                if (bVar27 == null || bVar27.f319a != cVar9) {
                                    break;
                                }
                                iB = cVar8.f340d.b();
                                bVar = cVar8.f342f;
                                iB2 = bVar.b();
                                bVar2 = cVar8.f340d;
                                fVar = bVar2.f327i;
                                bVar3 = bVar2.f321c;
                                if (bVar3 != null) {
                                    fVar2 = bVar3.f327i;
                                } else {
                                    fVar2 = null;
                                }
                                fVar3 = bVar.f327i;
                                bVar4 = bVar.f321c;
                                if (bVar4 != null) {
                                    fVar4 = bVar4.f327i;
                                } else {
                                    fVar4 = null;
                                }
                                if (cVar9 != null) {
                                    iB3 = cVar9.f342f.b() + iB;
                                } else {
                                    iB3 = iB;
                                }
                                if (fVar2 != null) {
                                    if (cVar8 == cVar6) {
                                        i5 = 1;
                                        if (cVar8.G != 1) {
                                            dVar.e(fVar, fVar2, iB3, 3);
                                        }
                                    } else {
                                        i5 = 1;
                                    }
                                    if (z10) {
                                    }
                                    dVar.f(fVar, fVar2, iB3, i5);
                                }
                                if (fVar4 == null) {
                                    bVar5 = bVar.f321c.f319a.f340d;
                                    bVar6 = bVar5.f321c;
                                    if (bVar6 != null) {
                                        cVar = bVar6.f319a;
                                    } else {
                                        cVar = null;
                                    }
                                    if (cVar == cVar8) {
                                        iB4 = bVar5.b() + iB2;
                                        z2 = false;
                                    } else {
                                        iB4 = iB2;
                                        z2 = true;
                                    }
                                    if (z10) {
                                        if (z2) {
                                            i4 = 1;
                                            if (cVar6.G == 1) {
                                                dVar.e(fVar3, fVar4, -iB4, 3);
                                            }
                                        } else {
                                            i4 = 1;
                                        }
                                        dVar.g(fVar3, fVar4, -iB4, i4);
                                        if (fVar2 != null) {
                                            dVar.b(fVar, fVar2, iB, 0.5f, fVar4, fVar3, iB2);
                                        }
                                    }
                                }
                                if (cVar8.C == 3) {
                                    dVar.e(bVar.f327i, bVar2.f327i, 0, 3);
                                }
                                if (fVar4 != null) {
                                    cVar9 = cVar8;
                                    break;
                                }
                                c cVar10 = cVar8;
                                cVar8 = bVar.f321c.f319a;
                                cVar9 = cVar10;
                            } else {
                                iB = cVar8.f340d.b();
                                bVar = cVar8.f342f;
                                iB2 = bVar.b();
                                bVar2 = cVar8.f340d;
                                fVar = bVar2.f327i;
                                bVar3 = bVar2.f321c;
                                if (bVar3 != null) {
                                    fVar2 = bVar3.f327i;
                                } else {
                                    fVar2 = null;
                                }
                                fVar3 = bVar.f327i;
                                bVar4 = bVar.f321c;
                                if (bVar4 != null) {
                                    fVar4 = bVar4.f327i;
                                } else {
                                    fVar4 = null;
                                }
                                if (cVar9 != null) {
                                    iB3 = cVar9.f342f.b() + iB;
                                } else {
                                    iB3 = iB;
                                }
                                if (fVar2 != null) {
                                    if (cVar8 == cVar6) {
                                        i5 = 1;
                                        if (cVar8.G != 1) {
                                            dVar.e(fVar, fVar2, iB3, 3);
                                        }
                                    } else {
                                        i5 = 1;
                                    }
                                    if (z10 || cVar8 == cVar6) {
                                        dVar.f(fVar, fVar2, iB3, i5);
                                    } else {
                                        dVar.e(fVar, fVar2, iB3, 3);
                                    }
                                }
                                if (fVar4 == null) {
                                    bVar5 = bVar.f321c.f319a.f340d;
                                    bVar6 = bVar5.f321c;
                                    if (bVar6 != null) {
                                        cVar = bVar6.f319a;
                                    } else {
                                        cVar = null;
                                    }
                                    if (cVar == cVar8) {
                                        iB4 = bVar5.b() + iB2;
                                        z2 = false;
                                    } else {
                                        iB4 = iB2;
                                        z2 = true;
                                    }
                                    if (z10) {
                                        if (z2) {
                                            i4 = 1;
                                            if (cVar6.G == 1) {
                                                dVar.e(fVar3, fVar4, -iB4, 3);
                                            }
                                        } else {
                                            i4 = 1;
                                        }
                                        dVar.g(fVar3, fVar4, -iB4, i4);
                                        if (fVar2 != null) {
                                            dVar.b(fVar, fVar2, iB, 0.5f, fVar4, fVar3, iB2);
                                        }
                                    }
                                }
                                if (cVar8.C == 3) {
                                    dVar.e(bVar.f327i, bVar2.f327i, 0, 3);
                                }
                                if (fVar4 != null) {
                                    cVar9 = cVar8;
                                    break;
                                }
                                c cVar11 = cVar8;
                                cVar8 = bVar.f321c.f319a;
                                cVar9 = cVar11;
                            }
                        }
                        if (z10) {
                            b bVar28 = cVar6.f340d;
                            int iB15 = bVar28.b();
                            int iB16 = cVar9.f342f.b();
                            b.f fVar10 = bVar28.f327i;
                            b bVar29 = bVar28.f321c;
                            b.f fVar11 = bVar29 != null ? bVar29.f327i : null;
                            b bVar30 = cVar9.f342f;
                            b.f fVar12 = bVar30.f327i;
                            b bVar31 = bVar30.f321c;
                            b.f fVar13 = bVar31 != null ? bVar31.f327i : null;
                            if (fVar11 != null && fVar13 != null) {
                                dVar.b(fVar10, fVar11, iB15, cVar6.A, fVar13, fVar12, iB16);
                            }
                        }
                    } else {
                        while (true) {
                            if (cVar7 != null) {
                                b bVar32 = cVar6.f340d.f321c;
                                if (bVar32 == null || bVar32.f319a != cVar7) {
                                    break;
                                }
                            }
                            int i39 = i37;
                            int i40 = iW;
                            int i41 = cVar6.C;
                            b bVar33 = cVar6.f340d;
                            b bVar34 = cVar6.f342f;
                            if (i41 != 3) {
                                int iB17 = bVar33.b();
                                if (cVar7 != null) {
                                    iB17 += cVar7.f342f.b();
                                }
                                b bVar35 = bVar33.f321c;
                                dVar.f(bVar33.f327i, bVar35.f327i, iB17, bVar35.f319a.C == 3 ? 1 : 2);
                                int iB18 = bVar34.b();
                                b bVar36 = bVar34.f321c.f319a.f340d;
                                b bVar37 = bVar36.f321c;
                                if (bVar37 != null && bVar37.f319a == cVar6) {
                                    iB18 += bVar36.b();
                                }
                                b bVar38 = bVar34.f321c;
                                dVar.g(bVar34.f327i, bVar38.f327i, -iB18, bVar38.f319a.C == 3 ? 1 : 2);
                            } else {
                                f3 += cVar6.K;
                                dVar.f(bVar34.f327i, bVar33.f327i, 0, 0);
                                dVar.g(bVar34.f327i, bVar34.f321c.f327i, 0, 0);
                            }
                            c cVar12 = bVar34.f321c.f319a;
                            dVar2 = this;
                            cVar7 = cVar6;
                            iW = i40;
                            cVar6 = cVar12;
                            i37 = i39;
                        }
                        if (iW != 1) {
                            int i42 = 0;
                            while (true) {
                                int i43 = iW - 1;
                                if (i42 >= i43) {
                                    break;
                                }
                                c[] cVarArr = dVar2.R;
                                c cVar13 = cVarArr[i42];
                                i42++;
                                c cVar14 = cVarArr[i42];
                                b bVar39 = cVar13.f340d;
                                b.f fVar14 = bVar39.f327i;
                                b bVar40 = cVar13.f342f;
                                b.f fVar15 = bVar40.f327i;
                                b.f fVar16 = cVar14.f340d.f327i;
                                b bVar41 = cVar14.f342f;
                                b.f fVar17 = bVar41.f327i;
                                int iB19 = bVar39.b();
                                int i44 = iW;
                                b bVar42 = cVar13.f340d;
                                b bVar43 = bVar42.f321c;
                                if (bVar43 != null) {
                                    b bVar44 = bVar43.f319a.f342f;
                                    i6 = i37;
                                    b bVar45 = bVar44.f321c;
                                    if (bVar45 != null && bVar45.f319a == cVar13) {
                                        iB19 += bVar44.b();
                                    }
                                } else {
                                    i6 = i37;
                                }
                                dVar.f(fVar14, bVar42.f321c.f327i, iB19, 1);
                                int iB20 = bVar40.b();
                                b bVar46 = bVar40.f321c;
                                if (bVar46 != null && (bVar12 = (bVar11 = bVar46.f319a.f340d).f321c) != null && bVar12.f319a == cVar13) {
                                    iB20 += bVar11.b();
                                }
                                dVar.g(fVar15, bVar40.f321c.f327i, -iB20, 1);
                                b bVar47 = cVar14.f340d;
                                if (i42 == i43) {
                                    int iB21 = bVar47.b();
                                    b bVar48 = bVar47.f321c;
                                    if (bVar48 != null && (bVar10 = (bVar9 = bVar48.f319a.f342f).f321c) != null && bVar10.f319a == cVar14) {
                                        iB21 += bVar9.b();
                                    }
                                    dVar.f(fVar16, bVar47.f321c.f327i, iB21, 1);
                                    int iB22 = bVar41.b();
                                    b bVar49 = bVar41.f321c;
                                    if (bVar49 != null && (bVar8 = (bVar7 = bVar49.f319a.f340d).f321c) != null && bVar8.f319a == cVar14) {
                                        iB22 += bVar7.b();
                                    }
                                    dVar.g(fVar17, bVar41.f321c.f327i, -iB22, 1);
                                }
                                b.b bVarK = dVar.k();
                                bVarK.b(cVar13.K, f3, cVar14.K, fVar14, bVar42.b(), fVar15, bVar40.b(), fVar16, bVar47.b(), fVar17, bVar41.b());
                                dVar.c(bVarK);
                                dVar2 = this;
                                iW = i44;
                                i37 = i6;
                            }
                        } else {
                            c cVar15 = dVar2.R[0];
                            int iB23 = cVar15.f340d.b();
                            b bVar50 = cVar15.f340d;
                            b bVar51 = bVar50.f321c;
                            if (bVar51 != null) {
                                iB23 += bVar51.b();
                            }
                            dVar.e(bVar50.f327i, bVar50.f321c.f327i, iB23, 0);
                            b bVar52 = cVar15.f342f;
                            int iB24 = bVar52.b();
                            b bVar53 = bVar52.f321c;
                            if (bVar53 != null) {
                                iB24 += bVar53.b();
                            }
                            dVar.e(bVar52.f327i, bVar52.f321c.f327i, -iB24, 0);
                        }
                    }
                    dVar2 = this;
                    i37 = i3 + 1;
                } else {
                    c cVar16 = cVar6;
                    cVar16 = null;
                    int i45 = 0;
                    int iB25 = 0;
                    float f4 = 0.0f;
                    while (cVar16 != null) {
                        i45++;
                        int i46 = cVar16.C;
                        b bVar54 = cVar16.f342f;
                        if (i46 != 3) {
                            int iE9 = cVar16.e() + iB25;
                            b bVar55 = cVar16.f340d;
                            iB25 = (bVar54.f321c != null ? bVar54.b() : 0) + iE9 + (bVar55.f321c != null ? bVar55.b() : 0);
                        } else {
                            f4 += cVar16.K;
                        }
                        b bVar56 = bVar54.f321c;
                        c cVar17 = bVar56 != null ? bVar56.f319a : null;
                        cVar16 = (cVar17 == null || ((bVar14 = cVar17.f340d.f321c) != null && bVar14.f319a == cVar16)) ? cVar17 : null;
                    }
                    if (cVar16 != null) {
                        b bVar57 = cVar16.f342f.f321c;
                        i7 = (bVar57 == null || bVar57.f319a != dVar2) ? bVar57 != null ? bVar57.f319a.f354r : 0 : dVar2.f354r + dVar2.f350n;
                    } else {
                        i7 = 0;
                    }
                    float f5 = (i7 + 0) - iB25;
                    float f6 = f5 / (i45 + 1);
                    if (iW == 0) {
                        f2 = f6;
                    } else {
                        f2 = f5 / iW;
                        f6 = 0.0f;
                    }
                    while (cVar6 != null) {
                        b bVar58 = cVar6.f340d;
                        int iB26 = bVar58.f321c != null ? bVar58.b() : 0;
                        b bVar59 = cVar6.f342f;
                        int iB27 = bVar59.f321c != null ? bVar59.b() : 0;
                        float f7 = iB26;
                        float f8 = f6 + f7;
                        dVar.d(bVar58.f327i, (int) (f8 + 0.5f));
                        float fE2 = (cVar6.C == 3 ? (f4 == 0.0f ? f2 - f7 : ((cVar6.K * f5) / f4) - f7) - iB27 : cVar6.e()) + f8;
                        dVar.d(bVar59.f327i, (int) (fE2 + 0.5f));
                        if (iW == 0) {
                            fE2 += f2;
                        }
                        f6 = iB27 + fE2;
                        b bVar60 = bVar59.f321c;
                        c cVar18 = bVar60 != null ? bVar60.f319a : null;
                        if (cVar18 != null && (bVar13 = cVar18.f340d.f321c) != null && bVar13.f319a != cVar6) {
                            cVar18 = null;
                        }
                        cVar6 = cVar18 == dVar2 ? null : cVar18;
                    }
                }
                i3 = i37;
                dVar2 = this;
                i37 = i3 + 1;
            }
        }
        if (this.Q <= 0) {
            return true;
        }
        v(dVar);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:175:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:177:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:178:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:181:0x0307  */
    /* JADX WARN: Code duplicated, block: B:182:0x030b  */
    /* JADX WARN: Code duplicated, block: B:184:0x030f  */
    /* JADX WARN: Code duplicated, block: B:185:0x0317  */
    /* JADX WARN: Code duplicated, block: B:187:0x031a  */
    /* JADX WARN: Code duplicated, block: B:195:0x032f  */
    /* JADX WARN: Code duplicated, block: B:197:0x0339  */
    /* JADX WARN: Code duplicated, block: B:198:0x033c  */
    /* JADX WARN: Code duplicated, block: B:200:0x0340  */
    /* JADX WARN: Code duplicated, block: B:201:0x0347  */
    /* JADX WARN: Code duplicated, block: B:203:0x034b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:204:0x034d  */
    /* JADX WARN: Code duplicated, block: B:206:0x0352  */
    /* JADX WARN: Code duplicated, block: B:207:0x0357  */
    /* JADX WARN: Code duplicated, block: B:210:0x035e  */
    /* JADX WARN: Code duplicated, block: B:211:0x036a  */
    /* JADX WARN: Code duplicated, block: B:214:0x0371  */
    /* JADX WARN: Code duplicated, block: B:215:0x037a  */
    /* JADX WARN: Code duplicated, block: B:217:0x037d A[LOOP:5: B:168:0x02d7->B:217:0x037d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:258:0x0388 A[SYNTHETIC] */
    public final void v(b.d dVar) {
        int i2;
        int iB;
        b bVar;
        int iB2;
        b bVar2;
        b.f fVar;
        b bVar3;
        b.f fVar2;
        b.f fVar3;
        b bVar4;
        b.f fVar4;
        int iB3;
        b bVar5;
        b bVar6;
        c cVar;
        int iB4;
        boolean z2;
        int i3;
        int i4;
        b bVar7;
        b bVar8;
        b bVar9;
        b bVar10;
        b bVar11;
        b bVar12;
        int i5;
        float f2;
        float fD;
        b bVar13;
        b bVar14;
        int i6 = 0;
        int i7 = 0;
        while (i7 < this.Q) {
            c cVar2 = this.S[i7];
            int i8 = 1;
            int iW = w(cVar2, 1);
            int i9 = cVar2.H;
            boolean z3 = i9 == 2;
            boolean z4 = this.D == 2;
            float f3 = 0.0f;
            if (!cVar2.J || z3 || z4 || i9 != 0) {
                if (iW != 0 && !z3) {
                    c cVar3 = null;
                    while (true) {
                        if (cVar3 != null) {
                            b bVar15 = cVar2.f341e.f321c;
                            if (bVar15 == null || bVar15.f319a != cVar3) {
                                break;
                            }
                        }
                        int i10 = iW;
                        int i11 = i7;
                        int i12 = cVar2.D;
                        b bVar16 = cVar2.f341e;
                        b bVar17 = cVar2.f343g;
                        if (i12 != 3) {
                            int iB5 = bVar16.b();
                            if (cVar3 != null) {
                                iB5 += cVar3.f343g.b();
                            }
                            b bVar18 = bVar16.f321c;
                            dVar.f(bVar16.f327i, bVar18.f327i, iB5, bVar18.f319a.D == 3 ? 1 : 2);
                            int iB6 = bVar17.b();
                            b bVar19 = bVar17.f321c.f319a.f341e;
                            b bVar20 = bVar19.f321c;
                            if (bVar20 != null && bVar20.f319a == cVar2) {
                                iB6 += bVar19.b();
                            }
                            b bVar21 = bVar17.f321c;
                            dVar.g(bVar17.f327i, bVar21.f327i, -iB6, bVar21.f319a.D == 3 ? 1 : 2);
                        } else {
                            f3 += cVar2.L;
                            dVar.f(bVar17.f327i, bVar16.f327i, 0, 0);
                            dVar.g(bVar17.f327i, bVar17.f321c.f327i, 0, 0);
                        }
                        cVar3 = cVar2;
                        iW = i10;
                        i7 = i11;
                        i8 = 1;
                        cVar2 = bVar17.f321c.f319a;
                        this = this;
                    }
                    if (iW != i8) {
                        int i13 = 0;
                        while (true) {
                            int i14 = iW - 1;
                            if (i13 >= i14) {
                                break;
                            }
                            c[] cVarArr = this.R;
                            c cVar4 = cVarArr[i13];
                            i13++;
                            c cVar5 = cVarArr[i13];
                            b bVar22 = cVar4.f341e;
                            b.f fVar5 = bVar22.f327i;
                            b bVar23 = cVar4.f343g;
                            b.f fVar6 = bVar23.f327i;
                            b.f fVar7 = cVar5.f341e.f327i;
                            b bVar24 = cVar5.f343g;
                            b.f fVar8 = bVar24.f327i;
                            int iB7 = bVar22.b();
                            b bVar25 = cVar4.f341e;
                            int i15 = iW;
                            b bVar26 = bVar25.f321c;
                            if (bVar26 != null) {
                                b bVar27 = bVar26.f319a.f343g;
                                i4 = i7;
                                b bVar28 = bVar27.f321c;
                                if (bVar28 != null && bVar28.f319a == cVar4) {
                                    iB7 += bVar27.b();
                                }
                            } else {
                                i4 = i7;
                            }
                            dVar.f(fVar5, bVar25.f321c.f327i, iB7, 1);
                            int iB8 = bVar23.b();
                            b bVar29 = bVar23.f321c;
                            if (bVar29 != null && (bVar12 = (bVar11 = bVar29.f319a.f341e).f321c) != null && bVar12.f319a == cVar4) {
                                iB8 += bVar11.b();
                            }
                            dVar.g(fVar6, bVar23.f321c.f327i, -iB8, 1);
                            b bVar30 = cVar5.f341e;
                            if (i13 == i14) {
                                int iB9 = bVar30.b();
                                b bVar31 = bVar30.f321c;
                                if (bVar31 != null && (bVar10 = (bVar9 = bVar31.f319a.f343g).f321c) != null && bVar10.f319a == cVar5) {
                                    iB9 += bVar9.b();
                                }
                                dVar.f(fVar7, bVar30.f321c.f327i, iB9, 1);
                                int iB10 = bVar24.b();
                                b bVar32 = bVar24.f321c;
                                if (bVar32 != null && (bVar8 = (bVar7 = bVar32.f319a.f341e).f321c) != null && bVar8.f319a == cVar5) {
                                    iB10 += bVar7.b();
                                }
                                dVar.g(fVar8, bVar24.f321c.f327i, -iB10, 1);
                            }
                            b.b bVarK = dVar.k();
                            bVarK.b(cVar4.L, f3, cVar5.L, fVar5, bVar25.b(), fVar6, bVar23.b(), fVar7, bVar30.b(), fVar8, bVar24.b());
                            dVar.c(bVarK);
                            this = this;
                            iW = i15;
                            i7 = i4;
                        }
                    } else {
                        c cVar6 = this.R[0];
                        int iB11 = cVar6.f341e.b();
                        b bVar33 = cVar6.f341e;
                        b bVar34 = bVar33.f321c;
                        if (bVar34 != null) {
                            iB11 += bVar34.b();
                        }
                        dVar.e(bVar33.f327i, bVar33.f321c.f327i, iB11, 0);
                        b bVar35 = cVar6.f343g;
                        int iB12 = bVar35.b();
                        b bVar36 = bVar35.f321c;
                        if (bVar36 != null) {
                            iB12 += bVar36.b();
                        }
                        dVar.e(bVar35.f327i, bVar35.f321c.f327i, -iB12, 0);
                    }
                } else {
                    i2 = i7;
                    c cVar7 = cVar2;
                    c cVar8 = null;
                    while (true) {
                        if (cVar8 != null) {
                            b bVar37 = cVar7.f341e.f321c;
                            if (bVar37 != null && bVar37.f319a == cVar8) {
                                iB = cVar7.f341e.b();
                                bVar = cVar7.f343g;
                                iB2 = bVar.b();
                                bVar2 = cVar7.f341e;
                                fVar = bVar2.f327i;
                                bVar3 = bVar2.f321c;
                                if (bVar3 != null) {
                                    fVar2 = bVar3.f327i;
                                } else {
                                    fVar2 = null;
                                }
                                fVar3 = bVar.f327i;
                                bVar4 = bVar.f321c;
                                if (bVar4 != null) {
                                    fVar4 = bVar4.f327i;
                                } else {
                                    fVar4 = null;
                                }
                                if (cVar8 != null) {
                                    iB3 = cVar8.f343g.b() + iB;
                                } else {
                                    iB3 = iB;
                                }
                                if (fVar2 != null) {
                                    if (cVar7 == cVar2) {
                                        dVar.f(fVar, fVar2, iB3, 1);
                                    } else {
                                        dVar.f(fVar, fVar2, iB3, 1);
                                    }
                                }
                                if (fVar4 == null) {
                                    bVar5 = bVar.f321c.f319a.f341e;
                                    bVar6 = bVar5.f321c;
                                    if (bVar6 != null) {
                                        cVar = bVar6.f319a;
                                    } else {
                                        cVar = null;
                                    }
                                    if (cVar == cVar7) {
                                        iB4 = bVar5.b() + iB2;
                                        z2 = false;
                                    } else {
                                        iB4 = iB2;
                                        z2 = true;
                                    }
                                    if (z3) {
                                        if (z2) {
                                            i3 = 1;
                                            if (cVar2.H == 1) {
                                                dVar.e(fVar3, fVar4, -iB4, 3);
                                            }
                                        } else {
                                            i3 = 1;
                                        }
                                        dVar.g(fVar3, fVar4, -iB4, i3);
                                        if (fVar2 != null) {
                                            dVar.b(fVar, fVar2, iB, 0.5f, fVar4, fVar3, iB2);
                                        }
                                    }
                                }
                                if (cVar7.D == 3) {
                                    dVar.e(bVar.f327i, bVar2.f327i, 0, 3);
                                }
                                if (fVar4 != null) {
                                    cVar8 = cVar7;
                                    break;
                                } else {
                                    c cVar9 = cVar7;
                                    cVar7 = bVar.f321c.f319a;
                                    cVar8 = cVar9;
                                }
                            } else {
                                break;
                            }
                        } else {
                            iB = cVar7.f341e.b();
                            bVar = cVar7.f343g;
                            iB2 = bVar.b();
                            bVar2 = cVar7.f341e;
                            fVar = bVar2.f327i;
                            bVar3 = bVar2.f321c;
                            if (bVar3 != null) {
                                fVar2 = bVar3.f327i;
                            } else {
                                fVar2 = null;
                            }
                            fVar3 = bVar.f327i;
                            bVar4 = bVar.f321c;
                            if (bVar4 != null) {
                                fVar4 = bVar4.f327i;
                            } else {
                                fVar4 = null;
                            }
                            if (cVar8 != null) {
                                iB3 = cVar8.f343g.b() + iB;
                            } else {
                                iB3 = iB;
                            }
                            if (fVar2 != null) {
                                if ((cVar7 == cVar2 || cVar7.H != 1) && (!z3 || cVar7 == cVar2)) {
                                    dVar.f(fVar, fVar2, iB3, 1);
                                } else {
                                    dVar.e(fVar, fVar2, iB3, 3);
                                }
                            }
                            if (fVar4 == null) {
                                bVar5 = bVar.f321c.f319a.f341e;
                                bVar6 = bVar5.f321c;
                                if (bVar6 != null) {
                                    cVar = bVar6.f319a;
                                } else {
                                    cVar = null;
                                }
                                if (cVar == cVar7) {
                                    iB4 = bVar5.b() + iB2;
                                    z2 = false;
                                } else {
                                    iB4 = iB2;
                                    z2 = true;
                                }
                                if (z3) {
                                    if (z2) {
                                        i3 = 1;
                                        if (cVar2.H == 1) {
                                            dVar.e(fVar3, fVar4, -iB4, 3);
                                        }
                                    } else {
                                        i3 = 1;
                                    }
                                    dVar.g(fVar3, fVar4, -iB4, i3);
                                    if (fVar2 != null) {
                                        dVar.b(fVar, fVar2, iB, 0.5f, fVar4, fVar3, iB2);
                                    }
                                }
                            }
                            if (cVar7.D == 3) {
                                dVar.e(bVar.f327i, bVar2.f327i, 0, 3);
                            }
                            if (fVar4 != null) {
                                cVar8 = cVar7;
                                break;
                            } else {
                                c cVar10 = cVar7;
                                cVar7 = bVar.f321c.f319a;
                                cVar8 = cVar10;
                            }
                        }
                    }
                    if (z3) {
                        b bVar38 = cVar2.f341e;
                        int iB13 = bVar38.b();
                        int iB14 = cVar8.f343g.b();
                        b.f fVar9 = bVar38.f327i;
                        b bVar39 = bVar38.f321c;
                        b.f fVar10 = bVar39 != null ? bVar39.f327i : null;
                        b bVar40 = cVar8.f343g;
                        b.f fVar11 = bVar40.f327i;
                        b bVar41 = bVar40.f321c;
                        b.f fVar12 = bVar41 != null ? bVar41.f327i : null;
                        if (fVar10 != null && fVar12 != null) {
                            dVar.b(fVar9, fVar10, iB13, cVar2.B, fVar12, fVar11, iB14);
                        }
                    }
                }
                i7 = i2 + 1;
                i6 = 0;
            } else {
                c cVar11 = cVar2;
                cVar11 = null;
                int i16 = 0;
                float f4 = 0.0f;
                int iB15 = 0;
                while (cVar11 != null) {
                    i16++;
                    int i17 = cVar11.D;
                    b bVar42 = cVar11.f343g;
                    if (i17 != 3) {
                        int iD = cVar11.d() + iB15;
                        b bVar43 = cVar11.f341e;
                        iB15 = (bVar42.f321c != null ? bVar42.b() : 0) + iD + (bVar43.f321c != null ? bVar43.b() : 0);
                    } else {
                        f4 += cVar11.L;
                    }
                    b bVar44 = bVar42.f321c;
                    c cVar12 = bVar44 != null ? bVar44.f319a : null;
                    cVar11 = (cVar12 == null || ((bVar14 = cVar12.f341e.f321c) != null && bVar14.f319a == cVar11)) ? cVar12 : null;
                }
                if (cVar11 != null) {
                    b bVar45 = cVar11.f343g.f321c;
                    i5 = bVar45 != null ? bVar45.f319a.f354r : 0;
                    if (bVar45 != null && bVar45.f319a == this) {
                        i5 = this.f351o + this.f355s;
                    }
                } else {
                    i5 = 0;
                }
                float f5 = (i5 - i6) - iB15;
                float f6 = f5 / (i16 + 1);
                if (iW == 0) {
                    f2 = f6;
                } else {
                    f2 = f5 / iW;
                    f6 = 0.0f;
                }
                while (cVar2 != null) {
                    b bVar46 = cVar2.f341e;
                    int iB16 = bVar46.f321c != null ? bVar46.b() : 0;
                    b bVar47 = cVar2.f343g;
                    int iB17 = bVar47.f321c != null ? bVar47.b() : 0;
                    float f7 = iB16;
                    float f8 = f6 + f7;
                    dVar.d(bVar46.f327i, (int) (f8 + 0.5f));
                    if (cVar2.D == 3) {
                        fD = (f4 == 0.0f ? f2 - f7 : ((cVar2.L * f5) / f4) - f7) - iB17;
                    } else {
                        fD = cVar2.d();
                    }
                    float f9 = fD + f8;
                    dVar.d(bVar47.f327i, (int) (f9 + 0.5f));
                    if (iW == 0) {
                        f9 += f2;
                    }
                    f6 = iB17 + f9;
                    b bVar48 = bVar47.f321c;
                    c cVar13 = bVar48 != null ? bVar48.f319a : null;
                    if (cVar13 != null && (bVar13 = cVar13.f341e.f321c) != null && bVar13.f319a != cVar2) {
                        cVar13 = null;
                    }
                    cVar2 = cVar13 == this ? null : cVar13;
                }
            }
            i2 = i7;
            i7 = i2 + 1;
            i6 = 0;
        }
    }

    public final int w(c cVar, int i2) {
        int i3;
        b bVar;
        b bVar2;
        boolean z2 = true;
        if (i2 == 0) {
            b bVar3 = cVar.f340d.f321c;
            if (bVar3 != null && bVar3.f319a != this) {
                z2 = false;
            }
            c cVar2 = cVar;
            i3 = 0;
            while (true) {
                bVar2 = cVar2.f342f;
                if (bVar2.f321c != null) {
                    if (cVar2.C == 3) {
                        int i4 = i3 + 1;
                        c[] cVarArr = this.R;
                        if (i4 >= cVarArr.length) {
                            this.R = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
                        }
                        this.R[i3] = cVar2;
                        i3 = i4;
                    }
                    c cVar3 = bVar2.f321c.f319a;
                    b bVar4 = cVar3.f340d.f321c;
                    if (bVar4 == null || bVar4.f319a != cVar2 || cVar3 == cVar2) {
                        break;
                    }
                    cVar2 = cVar3;
                } else {
                    break;
                }
            }
            b bVar5 = bVar2.f321c;
            cVar.I = (bVar5 == null || bVar5.f319a == this) ? z2 : false;
        } else {
            b bVar6 = cVar.f341e.f321c;
            if (bVar6 != null && bVar6.f319a != this) {
                z2 = false;
            }
            c cVar4 = cVar;
            i3 = 0;
            while (true) {
                bVar = cVar4.f343g;
                if (bVar.f321c != null) {
                    if (cVar4.D == 3) {
                        int i5 = i3 + 1;
                        c[] cVarArr2 = this.R;
                        if (i5 >= cVarArr2.length) {
                            this.R = (c[]) Arrays.copyOf(cVarArr2, cVarArr2.length * 2);
                        }
                        this.R[i3] = cVar4;
                        i3 = i5;
                    }
                    c cVar5 = bVar.f321c.f319a;
                    b bVar7 = cVar5.f341e.f321c;
                    if (bVar7 == null || bVar7.f319a != cVar4 || cVar5 == cVar4) {
                        break;
                    }
                    cVar4 = cVar5;
                } else {
                    break;
                }
            }
            b bVar8 = bVar.f321c;
            cVar.J = (bVar8 == null || bVar8.f319a == this) ? z2 : false;
        }
        return i3;
    }
}
