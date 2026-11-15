package k9;

import com.google.android.exoplayer2.util.p0;
import i9.b0;
import i9.c0;
import i9.e0;
import i9.m;
import java.util.Arrays;

final class e {

    protected final e0 f63834a;

    private final int f63835b;

    private final int f63836c;

    private final long f63837d;

    private final int f63838e;

    private int f63839f;

    private int f63840g;

    private int f63841h;

    private int f63842i;

    private int f63843j;

    private long[] f63844k;

    private int[] f63845l;

    public e(int i10, int i11, long j10, int i12, e0 e0Var) {
        boolean z10 = true;
        if (i11 != 1 && i11 != 2) {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.a(z10);
        this.f63837d = j10;
        this.f63838e = i12;
        this.f63834a = e0Var;
        this.f63835b = d(i10, i11 == 2 ? 1667497984 : 1651965952);
        this.f63836c = i11 == 2 ? d(i10, 1650720768) : -1;
        this.f63844k = new long[512];
        this.f63845l = new int[512];
    }

    private static int d(int i10, int i11) {
        return (((i10 % 10) + 48) << 8) | ((i10 / 10) + 48) | i11;
    }

    private long e(int i10) {
        return (this.f63837d * ((long) i10)) / ((long) this.f63838e);
    }

    private c0 h(int i10) {
        return new c0(((long) this.f63845l[i10]) * g(), this.f63844k[i10]);
    }

    public void a() {
        this.f63841h++;
    }

    public void b(long j10) {
        if (this.f63843j == this.f63845l.length) {
            long[] jArr = this.f63844k;
            this.f63844k = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
            int[] iArr = this.f63845l;
            this.f63845l = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
        }
        long[] jArr2 = this.f63844k;
        int i10 = this.f63843j;
        jArr2[i10] = j10;
        this.f63845l[i10] = this.f63842i;
        this.f63843j = i10 + 1;
    }

    public void c() {
        this.f63844k = Arrays.copyOf(this.f63844k, this.f63843j);
        this.f63845l = Arrays.copyOf(this.f63845l, this.f63843j);
    }

    public long f() {
        return e(this.f63841h);
    }

    public long g() {
        return e(1);
    }

    public b0.a i(long j10) {
        int iG = (int) (j10 / g());
        int iH = p0.h(this.f63845l, iG, true, true);
        if (this.f63845l[iH] == iG) {
            return new b0.a(h(iH));
        }
        c0 c0VarH = h(iH);
        int i10 = iH + 1;
        return i10 < this.f63844k.length ? new b0.a(c0VarH, h(i10)) : new b0.a(c0VarH);
    }

    public boolean j(int i10) {
        return this.f63835b == i10 || this.f63836c == i10;
    }

    public void k() {
        this.f63842i++;
    }

    public boolean l() {
        return Arrays.binarySearch(this.f63845l, this.f63841h) >= 0;
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
    public boolean m(m mVar) {
        int i10 = this.f63840g;
        int iB = i10 - this.f63834a.b(mVar, i10, false);
        this.f63840g = iB;
        boolean z10 = iB == 0;
        if (z10) {
            if (this.f63839f > 0) {
                this.f63834a.e(f(), l() ? 1 : 0, this.f63839f, 0, null);
            }
            a();
        }
        return z10;
    }

    public void n(int i10) {
        this.f63839f = i10;
        this.f63840g = i10;
    }

    public void o(long j10) {
        if (this.f63843j == 0) {
            this.f63841h = 0;
        } else {
            this.f63841h = this.f63845l[p0.i(this.f63844k, j10, true, true)];
        }
    }
}
