package defpackage;

public abstract class xf5 {
    public static byte[] a(dj djVar, t1 t1Var) {
        if (!djVar.a()) {
            throw new IllegalArgumentException("public key found");
        }
        try {
            return b(pg8.a(djVar, t1Var));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] b(og8 og8Var) {
        try {
            return og8Var.l("DER");
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] c(dj djVar) {
        if (djVar.a()) {
            throw new IllegalArgumentException("private key found");
        }
        try {
            return d(t1a.a(djVar));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] d(s1a s1aVar) {
        try {
            return s1aVar.l("DER");
        } catch (Exception unused) {
            return null;
        }
    }
}
