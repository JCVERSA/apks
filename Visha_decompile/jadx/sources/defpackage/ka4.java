package defpackage;

import java.security.spec.AlgorithmParameterSpec;

public class ka4 implements AlgorithmParameterSpec, ma4 {
    public qa4 a;
    public String b;
    public String c;
    public String d;

    public ka4(qa4 qa4Var) {
        this.a = qa4Var;
        this.c = wl1.p.B();
        this.d = null;
    }

    public static ka4 e(pa4 pa4Var) {
        if (pa4Var.n() != null) {
            return new ka4(pa4Var.p().B(), pa4Var.m().B(), pa4Var.n().B());
        }
        return pa4Var.m() != null ? new ka4(pa4Var.p().B(), pa4Var.m().B()) : new ka4(pa4Var.p().B(), null);
    }

    @Override
    public qa4 a() {
        return this.a;
    }

    @Override
    public String b() {
        return this.b;
    }

    @Override
    public String c() {
        return this.d;
    }

    @Override
    public String d() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ka4)) {
            return false;
        }
        ka4 ka4Var = (ka4) obj;
        if (!this.a.equals(ka4Var.a)) {
            return false;
        }
        String str = this.c;
        String str2 = ka4Var.c;
        if (str != str2 && (str == null || !str.equals(str2))) {
            return false;
        }
        String str3 = this.d;
        String str4 = ka4Var.d;
        return str3 == str4 || (str3 != null && str3.equals(str4));
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() ^ this.c.hashCode();
        String str = this.d;
        return (str != null ? str.hashCode() : 0) ^ iHashCode;
    }

    public ka4(String str, String str2) {
        this(str, str2, null);
    }

    public ka4(String str, String str2, String str3) {
        ja4 ja4VarA;
        try {
            ja4VarA = ia4.a(new l1(str));
        } catch (IllegalArgumentException unused) {
            l1 l1VarB = ia4.b(str);
            if (l1VarB != null) {
                str = l1VarB.B();
                ja4VarA = ia4.a(l1VarB);
            } else {
                ja4VarA = null;
            }
        }
        if (ja4VarA == null) {
            throw new IllegalArgumentException("no key parameter set for passed in name/OID.");
        }
        this.a = new qa4(ja4VarA.n(), ja4VarA.o(), ja4VarA.m());
        this.b = str;
        this.c = str2;
        this.d = str3;
    }
}
