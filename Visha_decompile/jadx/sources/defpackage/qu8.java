package defpackage;

public abstract class qu8 {
    public static Object a(int i, Object obj, d84 d84Var, vu8 vu8Var) {
        Object objApply;
        if (i < 1) {
            return d84Var.apply(obj);
        }
        do {
            objApply = d84Var.apply(obj);
            obj = vu8Var.a(obj, objApply);
            if (obj == null) {
                break;
            }
            i--;
        } while (i >= 1);
        return objApply;
    }
}
