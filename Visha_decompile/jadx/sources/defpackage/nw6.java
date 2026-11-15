package defpackage;

public interface nw6 {

    public static final class a {
        public static boolean a(nw6 nw6Var, Object obj, int i, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryLock");
            }
            if ((i & 1) != 0) {
                obj = null;
            }
            return nw6Var.a(obj);
        }

        public static void b(nw6 nw6Var, Object obj, int i, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unlock");
            }
            if ((i & 1) != 0) {
                obj = null;
            }
            nw6Var.b(obj);
        }
    }

    boolean a(Object obj);

    void b(Object obj);

    Object c(Object obj, wh1 wh1Var);
}
