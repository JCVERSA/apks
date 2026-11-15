package defpackage;

public interface qw4 {

    public static final class a {
        public static boolean a(qw4 qw4Var, String[] strArr, String[] strArr2, String[] strArr3, byte[][] bArr) {
            y45.j(qw4Var, "this");
            return true;
        }

        public static boolean b(qw4 qw4Var, String[] strArr, String[] strArr2, String[] strArr3, byte[][] bArr, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: globalArgChkDelegate");
            }
            if ((i & 1) != 0) {
                strArr = null;
            }
            if ((i & 2) != 0) {
                strArr2 = null;
            }
            if ((i & 4) != 0) {
                strArr3 = null;
            }
            if ((i & 8) != 0) {
                bArr = null;
            }
            return qw4Var.a(strArr, strArr2, strArr3, bArr);
        }
    }

    boolean a(String[] strArr, String[] strArr2, String[] strArr3, byte[][] bArr);
}
