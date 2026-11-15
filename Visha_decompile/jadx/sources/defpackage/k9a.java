package defpackage;

public class k9a implements gy0 {
    public static k9a a;

    public static k9a a() {
        if (a == null) {
            a = new k9a();
        }
        return a;
    }

    @Override
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }
}
