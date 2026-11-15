package defpackage;

import java.util.Arrays;

public final class bw0 {
    public final fva a;
    public final int b;
    public final int c;
    public final long d;
    public final int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public long[] k;
    public int[] l;

    public bw0(int i, int i2, long j, int i3, fva fvaVar) {
        boolean z = true;
        if (i2 != 1 && i2 != 2) {
            z = false;
        }
        zi.a(z);
        this.d = j;
        this.e = i3;
        this.a = fvaVar;
        this.b = d(i, i2 == 2 ? 1667497984 : 1651965952);
        this.c = i2 == 2 ? d(i, 1650720768) : -1;
        this.k = new long[512];
        this.l = new int[512];
    }

    public static int d(int i, int i2) {
        return (((i % 10) + 48) << 8) | ((i / 10) + 48) | i2;
    }

    public void a() {
        this.h++;
    }

    public void b(long j) {
        if (this.j == this.l.length) {
            long[] jArr = this.k;
            this.k = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
            int[] iArr = this.l;
            this.l = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
        }
        long[] jArr2 = this.k;
        int i = this.j;
        jArr2[i] = j;
        this.l[i] = this.i;
        this.j = i + 1;
    }

    public void c() {
        this.k = Arrays.copyOf(this.k, this.j);
        this.l = Arrays.copyOf(this.l, this.j);
    }

    public final long e(int i) {
        return (this.d * ((long) i)) / ((long) this.e);
    }

    public long f() {
        return e(this.h);
    }

    public long g() {
        return e(1);
    }

    public final la9 h(int i) {
        return new la9(((long) this.l[i]) * g(), this.k[i]);
    }

    public ja9.a i(long j) {
        int iG = (int) (j / g());
        int iH = blb.h(this.l, iG, true, true);
        if (this.l[iH] == iG) {
            return new ja9.a(h(iH));
        }
        la9 la9VarH = h(iH);
        int i = iH + 1;
        return i < this.k.length ? new ja9.a(la9VarH, h(i)) : new ja9.a(la9VarH);
    }

    public boolean j(int i) {
        return this.b == i || this.c == i;
    }

    public void k() {
        this.i++;
    }

    public boolean l() {
        return Arrays.binarySearch(this.l, this.h) >= 0;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean m(pk3 pk3Var) {
        int i = this.g;
        int iC = i - this.a.c(pk3Var, i, false);
        this.g = iC;
        boolean z = iC == 0;
        if (z) {
            if (this.f > 0) {
                this.a.e(f(), l() ? 1 : 0, this.f, 0, null);
            }
            a();
        }
        return z;
    }

    public void n(int i) {
        this.f = i;
        this.g = i;
    }

    public void o(long j) {
        if (this.j == 0) {
            this.h = 0;
        } else {
            this.h = this.l[blb.i(this.k, j, true, true)];
        }
    }
}
