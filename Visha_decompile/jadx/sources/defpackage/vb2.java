package defpackage;

public abstract class vb2 {
    public static l1 a(String str) {
        if (str.equals("SHA-256")) {
            return cx6.c;
        }
        if (str.equals("SHA-512")) {
            return cx6.e;
        }
        if (str.equals("SHAKE128")) {
            return cx6.m;
        }
        if (str.equals("SHAKE256")) {
            return cx6.n;
        }
        throw new IllegalArgumentException("unrecognized digest: " + str);
    }

    public static String b(l1 l1Var) {
        if (l1Var.s(cx6.c)) {
            return "SHA256";
        }
        if (l1Var.s(cx6.e)) {
            return "SHA512";
        }
        if (l1Var.s(cx6.m)) {
            return "SHAKE128";
        }
        if (l1Var.s(cx6.n)) {
            return "SHAKE256";
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + l1Var);
    }
}
