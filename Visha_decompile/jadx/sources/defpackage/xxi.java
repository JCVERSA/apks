package defpackage;

public abstract class xxi {
    public static xxi b(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new sxi(cls.getSimpleName()) : new uxi(cls.getSimpleName());
    }

    public abstract void a(String str);
}
