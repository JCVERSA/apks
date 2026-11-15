package defpackage;

public abstract class qab {
    public static Object a(String str, Class cls) throws Exception {
        if (str == null) {
            throw new Exception("The Json is Null: ");
        }
        try {
            return new gkd().a(str, cls);
        } catch (Exception unused) {
            throw new Exception("error json:" + str);
        }
    }

    public static String b(Object obj) {
        return c(obj, false);
    }

    public static String c(Object obj, boolean z) {
        if (obj != null) {
            return new dmd().d("*.class").c(z).a(obj);
        }
        throw new IllegalStateException("The Object is Null: ");
    }
}
