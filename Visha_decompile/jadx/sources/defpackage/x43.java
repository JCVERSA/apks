package defpackage;

public abstract class x43 {
    public static d53 a(String str) {
        qqc qqcVarI = y43.i(str);
        if (qqcVarI == null) {
            try {
                qqcVarI = y43.k(new l1(str));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        if (qqcVarI == null) {
            return null;
        }
        return new d53(str, qqcVarI.m(), qqcVarI.n(), qqcVarI.q(), qqcVarI.o(), qqcVarI.r());
    }
}
