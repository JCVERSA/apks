package defpackage;

public abstract class u33 {
    public static final boolean a = false;
    public static final ThreadLocal[] b;

    static {
        ThreadLocal[] threadLocalArr = new ThreadLocal[4];
        for (int i = 0; i < 4; i++) {
            threadLocalArr[i] = new ThreadLocal();
        }
        b = threadLocalArr;
    }

    public static final boolean a() {
        return a;
    }
}
