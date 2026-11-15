package vz;

public abstract class r {

    protected final int f73986a;

    protected r f73987b;

    public r(int i10) {
        this(i10, null);
    }

    public abstract void A(int i10, int i11, q qVar, q... qVarArr);

    public abstract a B(int i10, z zVar, String str, boolean z10);

    public abstract void C(q qVar, q qVar2, q qVar3, String str);

    public abstract a D(int i10, z zVar, String str, boolean z10);

    public abstract void E(int i10, String str);

    public abstract void F(int i10, int i11);

    public abstract void a(int i10, boolean z10);

    public abstract a b(String str, boolean z10);

    public abstract a c();

    public abstract void d(c cVar);

    public abstract void e();

    public abstract void f();

    public abstract void g(int i10, String str, String str2, String str3);

    public abstract void h(int i10, int i11, Object[] objArr, int i12, Object[] objArr2);

    public abstract void i(int i10, int i11);

    public abstract void j(int i10);

    public abstract a k(int i10, z zVar, String str, boolean z10);

    public abstract void l(int i10, int i11);

    public abstract void m(String str, String str2, o oVar, Object... objArr);

    public abstract void n(int i10, q qVar);

    public abstract void o(q qVar);

    public abstract void p(Object obj);

    public abstract void q(int i10, q qVar);

    public abstract void r(String str, String str2, String str3, q qVar, q qVar2, int i10);

    public abstract a s(int i10, z zVar, q[] qVarArr, q[] qVarArr2, int[] iArr, String str, boolean z10);

    public abstract void t(q qVar, int[] iArr, q[] qVarArr);

    public abstract void u(int i10, int i11);

    public void v(int i10, String str, String str2, String str3) {
        if (this.f73986a >= 327680) {
            w(i10, str, str2, str3, i10 == 185);
            return;
        }
        r rVar = this.f73987b;
        if (rVar != null) {
            rVar.v(i10, str, str2, str3);
        }
    }

    public abstract void w(int i10, String str, String str2, String str3, boolean z10);

    public abstract void x(String str, int i10);

    public abstract void y(String str, int i10);

    public abstract a z(int i10, String str, boolean z10);

    public r(int i10, r rVar) {
        if (i10 != 393216 && i10 != 327680 && i10 != 262144 && i10 != 458752) {
            throw new IllegalArgumentException();
        }
        this.f73986a = i10;
        this.f73987b = rVar;
    }
}
