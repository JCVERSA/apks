package m2;

import androidx.media3.common.util.a1;
import java.util.Arrays;
import k2.m0;
import k2.n0;
import k2.s;
import k2.s0;

final class e {

    private final d f66223a;

    private final s0 f66224b;

    private final int f66225c;

    private final int f66226d;

    private final long f66227e;

    private int f66228f;

    private int f66229g;

    private int f66230h;

    private int f66231i;

    private int f66232j;

    private int f66233k;

    private long f66234l;

    private long[] f66235m;

    private int[] f66236n;

    public e(int i10, d dVar, s0 s0Var) {
        this.f66223a = dVar;
        int iB = dVar.b();
        boolean z10 = true;
        if (iB != 1 && iB != 2) {
            z10 = false;
        }
        androidx.media3.common.util.a.a(z10);
        this.f66225c = d(i10, iB == 2 ? 1667497984 : 1651965952);
        this.f66227e = dVar.a();
        this.f66224b = s0Var;
        this.f66226d = iB == 2 ? d(i10, 1650720768) : -1;
        this.f66234l = -1L;
        this.f66235m = new long[512];
        this.f66236n = new int[512];
        this.f66228f = dVar.f66220e;
    }

    private static int d(int i10, int i11) {
        return (((i10 % 10) + 48) << 8) | ((i10 / 10) + 48) | i11;
    }

    private long e(int i10) {
        return (this.f66227e * ((long) i10)) / ((long) this.f66228f);
    }

    private n0 h(int i10) {
        return new n0(((long) this.f66236n[i10]) * g(), this.f66235m[i10]);
    }

    public void a() {
        this.f66231i++;
    }

    public void b(long j10, boolean z10) {
        if (this.f66234l == -1) {
            this.f66234l = j10;
        }
        if (z10) {
            if (this.f66233k == this.f66236n.length) {
                long[] jArr = this.f66235m;
                this.f66235m = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                int[] iArr = this.f66236n;
                this.f66236n = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
            }
            long[] jArr2 = this.f66235m;
            int i10 = this.f66233k;
            jArr2[i10] = j10;
            this.f66236n[i10] = this.f66232j;
            this.f66233k = i10 + 1;
        }
        this.f66232j++;
    }

    public void c() {
        int i10;
        this.f66235m = Arrays.copyOf(this.f66235m, this.f66233k);
        this.f66236n = Arrays.copyOf(this.f66236n, this.f66233k);
        if (!k() || this.f66223a.f66222g == 0 || (i10 = this.f66233k) <= 0) {
            return;
        }
        this.f66228f = i10;
    }

    public long f() {
        return e(this.f66231i);
    }

    public long g() {
        return e(1);
    }

    public m0.a i(long j10) {
        if (this.f66233k == 0) {
            return new m0.a(new n0(0L, this.f66234l));
        }
        int iG = (int) (j10 / g());
        int iG2 = a1.g(this.f66236n, iG, true, true);
        if (this.f66236n[iG2] == iG) {
            return new m0.a(h(iG2));
        }
        n0 n0VarH = h(iG2);
        int i10 = iG2 + 1;
        return i10 < this.f66235m.length ? new m0.a(n0VarH, h(i10)) : new m0.a(n0VarH);
    }

    public boolean j(int i10) {
        return this.f66225c == i10 || this.f66226d == i10;
    }

    public boolean k() {
        return (this.f66225c & 1651965952) == 1651965952;
    }

    public boolean l() {
        return Arrays.binarySearch(this.f66236n, this.f66231i) >= 0;
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
    public boolean m(s sVar) {
        int i10 = this.f66230h;
        int iE = i10 - this.f66224b.e(sVar, i10, false);
        this.f66230h = iE;
        boolean z10 = iE == 0;
        if (z10) {
            if (this.f66229g > 0) {
                this.f66224b.b(f(), l() ? 1 : 0, this.f66229g, 0, null);
            }
            a();
        }
        return z10;
    }

    public void n(int i10) {
        this.f66229g = i10;
        this.f66230h = i10;
    }

    public void o(long j10) {
        if (this.f66233k == 0) {
            this.f66231i = 0;
        } else {
            this.f66231i = this.f66236n[a1.h(this.f66235m, j10, true, true)];
        }
    }
}
