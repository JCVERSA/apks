package defpackage;

import java.math.BigInteger;
import java.util.Hashtable;

public abstract class n0 {
    public static rqc a = new a();
    public static final Hashtable b = new Hashtable();
    public static final Hashtable c = new Hashtable();
    public static final Hashtable d = new Hashtable();

    public static class a extends rqc {
        @Override
        public t43 a() {
            return n0.e(new t43.f(n0.g("F1FD178C0B3AD58F10126DE8CE42435B3961ADBCABC8CA6DE8FCF353D86E9C03"), n0.g("F1FD178C0B3AD58F10126DE8CE42435B3961ADBCABC8CA6DE8FCF353D86E9C00"), n0.g("EE353FCA5428A9300D4ABA754A44C00FDFEC0C9AE4B1A1803075ED967B7BB73F"), n0.g("F1FD178C0B3AD58F10126DE8CE42435B53DC67E140D2BF941FFDD459C6D655E1"), BigInteger.valueOf(1L), true));
        }

        @Override
        public qqc b() {
            t43 t43VarA = a();
            return new qqc(t43VarA, n0.d(t43VarA, "04B6B3D4C356C139EB31183D4749D423958C27D2DCAF98B70164C97A2DD98F5CFF6142E0F7C8B204911F9271F0F3ECEF8C2701C307E8E4C9E183115A1554062CFB"), t43VarA.u(), t43VarA.o(), null);
        }
    }

    static {
        f("FRP256v1", o0.a, a);
    }

    public static sqc d(t43 t43Var, String str) {
        sqc sqcVar = new sqc(t43Var, jp4.b(str));
        fgc.a(sqcVar.m());
        return sqcVar;
    }

    public static t43 e(t43 t43Var) {
        return t43Var;
    }

    public static void f(String str, l1 l1Var, rqc rqcVar) {
        b.put(u0a.f(str), l1Var);
        d.put(l1Var, str);
        c.put(l1Var, rqcVar);
    }

    public static BigInteger g(String str) {
        return new BigInteger(1, jp4.b(str));
    }

    public static rqc h(String str) {
        l1 l1VarL = l(str);
        if (l1VarL == null) {
            return null;
        }
        return j(l1VarL);
    }

    public static qqc i(l1 l1Var) {
        rqc rqcVarJ = j(l1Var);
        if (rqcVarJ == null) {
            return null;
        }
        return rqcVarJ.d();
    }

    public static rqc j(l1 l1Var) {
        return (rqc) c.get(l1Var);
    }

    public static String k(l1 l1Var) {
        return (String) d.get(l1Var);
    }

    public static l1 l(String str) {
        return (l1) b.get(u0a.f(str));
    }
}
