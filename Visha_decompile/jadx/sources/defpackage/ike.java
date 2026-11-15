package defpackage;

import androidx.media3.common.C;

public final class ike implements dle {
    public final lje a;
    public final p3h b = new p3h(new byte[10], 10);
    public int c = 0;
    public int d;
    public fch e;
    public boolean f;
    public boolean g;
    public boolean h;
    public int i;
    public int j;
    public boolean k;

    public ike(lje ljeVar) {
        this.a = ljeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r9v11, types: [p3h] */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v5, types: [int] */
    /* JADX WARN: Type inference failed for: r9v6, types: [lje] */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public final void a(u4h u4hVar, int i) {
        int i2;
        int i3;
        ?? r2;
        int i4;
        u4h u4hVar2;
        int i5;
        int i6;
        int i7;
        ?? r9;
        long jB;
        u4h u4hVar3 = u4hVar;
        n7g.b(this.e);
        int i8 = -1;
        int i9 = 2;
        ?? r6 = 0;
        int i10 = 1;
        if ((i & 1) != 0) {
            int i11 = this.c;
            if (i11 != 0 && i11 != 1) {
                if (i11 != 2) {
                    int i12 = this.j;
                    if (i12 != -1) {
                        zrg.f("PesReader", "Unexpected start indicator: expected " + i12 + " more bytes");
                    }
                    this.a.zzc(u4hVar.x() == 0);
                } else {
                    zrg.f("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            d(1);
        }
        int i13 = i;
        while (u4hVar.u() > 0) {
            int i14 = this.c;
            if (i14 == 0) {
                i2 = i13;
                i3 = i9;
                r2 = r6;
                i4 = i10;
                u4hVar2 = u4hVar3;
                i5 = i8;
                u4hVar2.m(u4hVar.u());
            } else if (i14 == i10) {
                i2 = i13;
                p3h p3hVar = this.b;
                u4hVar2 = u4hVar;
                if (e(u4hVar2, p3hVar.a, 9)) {
                    r2 = 0;
                    p3hVar.l(0);
                    int iD = p3hVar.d(24);
                    i4 = 1;
                    if (iD != 1) {
                        zrg.f("PesReader", "Unexpected start code prefix: " + iD);
                        i5 = -1;
                        this.j = -1;
                        i6 = 0;
                        i3 = 2;
                    } else {
                        p3hVar.n(8);
                        int iD2 = p3hVar.d(16);
                        p3hVar.n(5);
                        this.k = p3hVar.p();
                        i3 = 2;
                        p3hVar.n(2);
                        this.f = p3hVar.p();
                        this.g = p3hVar.p();
                        p3hVar.n(6);
                        int iD3 = p3hVar.d(8);
                        this.i = iD3;
                        if (iD2 == 0) {
                            this.j = -1;
                            i5 = -1;
                        } else {
                            int i15 = (iD2 - 3) - iD3;
                            this.j = i15;
                            if (i15 < 0) {
                                zrg.f("PesReader", "Found negative packet payload size: " + i15);
                                i5 = -1;
                                this.j = -1;
                            } else {
                                i5 = -1;
                            }
                        }
                        i6 = 2;
                    }
                    d(i6);
                } else {
                    i5 = -1;
                    r2 = 0;
                    i4 = 1;
                    i3 = 2;
                }
            } else if (i14 != i9) {
                int iU = u4hVar.u();
                int i16 = this.j;
                if (i16 == i8) {
                    r9 = r6;
                } else {
                    i7 = iU - i16;
                }
                if (r9 > 0) {
                    r9 = i7;
                    iU -= r9;
                    u4hVar3.k(u4hVar.w() + iU);
                }
                r9 = i7;
                ?? r10 = this.a;
                r10.a(u4hVar3);
                int i17 = this.j;
                if (i17 != i8) {
                    int i18 = i17 - iU;
                    this.j = i18;
                    if (i18 == 0) {
                        r10.zzc(r6);
                        d(i10);
                    }
                }
                i2 = i13;
                i3 = i9;
                r2 = r6;
                i4 = i10;
                u4hVar2 = u4hVar3;
                i5 = i8;
            } else {
                int iMin = Math.min(10, this.i);
                ?? r11 = this.b;
                if (e(u4hVar3, r11.a, iMin) && e(u4hVar3, null, this.i)) {
                    r11.l(r6);
                    if (this.f) {
                        r11.n(4);
                        long jD = r11.d(3);
                        r11.n(i10);
                        int iD4 = r11.d(15) << 15;
                        r11.n(i10);
                        long jD2 = r11.d(15);
                        r11.n(i10);
                        if (!this.h && this.g) {
                            r11.n(4);
                            long jD3 = ((long) r11.d(3)) << 30;
                            r11.n(i10);
                            int iD5 = r11.d(15) << 15;
                            r11.n(i10);
                            long jD4 = r11.d(15);
                            r11.n(i10);
                            this.e.b(jD4 | ((long) iD5) | jD3);
                            this.h = true;
                        }
                        jB = this.e.b((jD << 30) | ((long) iD4) | jD2);
                    } else {
                        i13 = i13;
                        jB = C.TIME_UNSET;
                    }
                    int i19 = i13 | (true != this.k ? 0 : 4);
                    this.a.b(jB, i19);
                    d(3);
                    u4hVar3 = u4hVar;
                    i13 = i19;
                    i8 = -1;
                    i9 = 2;
                    r6 = 0;
                    i10 = 1;
                } else {
                    i2 = i13;
                    i5 = i8;
                    i3 = i9;
                    r2 = r6;
                    i4 = i10;
                    u4hVar2 = u4hVar;
                }
            }
            i8 = i5;
            u4hVar3 = u4hVar2;
            i10 = i4;
            i9 = i3;
            r6 = r2;
            i13 = i2;
        }
    }

    @Override
    public final void b(fch fchVar, f9e f9eVar, cle cleVar) {
        this.e = fchVar;
        this.a.c(f9eVar, cleVar);
    }

    public final boolean c(boolean z) {
        return this.c == 3 && this.j == -1;
    }

    public final void d(int i) {
        this.c = i;
        this.d = 0;
    }

    public final boolean e(u4h u4hVar, byte[] bArr, int i) {
        int iMin = Math.min(u4hVar.u(), i - this.d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            u4hVar.m(iMin);
        } else {
            u4hVar.h(bArr, this.d, iMin);
        }
        int i2 = this.d + iMin;
        this.d = i2;
        return i2 == i;
    }

    @Override
    public final void zzc() {
        this.c = 0;
        this.d = 0;
        this.h = false;
        this.a.zze();
    }
}
