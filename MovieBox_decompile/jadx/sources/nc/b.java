package nc;

public class b implements a {

    private static b f67162a;

    private b() {
    }

    public static b a() {
        if (f67162a == null) {
            f67162a = new b();
        }
        return f67162a;
    }

    @Override
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }
}
