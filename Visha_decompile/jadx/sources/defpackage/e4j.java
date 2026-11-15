package defpackage;

public abstract class e4j {
    public static Object a(Class cls, String str, k1j... k1jVarArr) {
        return b(cls, "isIsolated", null, false, k1jVarArr);
    }

    public static Object b(Class cls, String str, Object obj, boolean z, k1j... k1jVarArr) {
        int length = k1jVarArr.length;
        Class<?>[] clsArr = new Class[length];
        Object[] objArr = new Object[length];
        Object obj2 = null;
        if (k1jVarArr.length <= 0) {
            return cls.getDeclaredMethod(str, clsArr).invoke(null, objArr);
        }
        k1j k1jVar = k1jVarArr[0];
        obj2.getClass();
        throw null;
    }
}
