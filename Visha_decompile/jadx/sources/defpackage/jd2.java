package defpackage;

public final class jd2 {
    public static final jd2 a = new jd2();

    public static final vq2 a(boolean z, oj8 oj8Var, oj8 oj8Var2) {
        Object obj;
        String str;
        y45.j(oj8Var, "joinedStateSwitcher");
        y45.j(oj8Var2, "multipleStateSwitcher");
        if (z) {
            obj = oj8Var2.get();
            str = "multipleStateSwitcher.get()";
        } else {
            obj = oj8Var.get();
            str = "joinedStateSwitcher.get()";
        }
        y45.i(obj, str);
        return (vq2) obj;
    }
}
