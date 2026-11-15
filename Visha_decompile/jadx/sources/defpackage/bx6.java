package defpackage;

import java.util.Hashtable;

public abstract class bx6 {
    public static final Hashtable a = new Hashtable();
    public static final Hashtable b = new Hashtable();

    static {
        a("B-571", sx8.F);
        a("B-409", sx8.D);
        a("B-283", sx8.n);
        a("B-233", sx8.t);
        a("B-163", sx8.l);
        a("K-571", sx8.E);
        a("K-409", sx8.C);
        a("K-283", sx8.m);
        a("K-233", sx8.s);
        a("K-163", sx8.b);
        a("P-521", sx8.B);
        a("P-384", sx8.A);
        a("P-256", sx8.H);
        a("P-224", sx8.z);
        a("P-192", sx8.G);
    }

    public static void a(String str, l1 l1Var) {
        a.put(str, l1Var);
        b.put(l1Var, str);
    }

    public static rqc b(String str) {
        l1 l1VarD = d(str);
        if (l1VarD != null) {
            return rx8.l(l1VarD);
        }
        return null;
    }

    public static String c(l1 l1Var) {
        return (String) b.get(l1Var);
    }

    public static l1 d(String str) {
        return (l1) a.get(u0a.j(str));
    }
}
