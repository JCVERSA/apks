package ls;

public final class c {

    public static final c f66110a = new c();

    private static long f66111b;

    private static int f66112c;

    private c() {
    }

    public final boolean a(int i10, long j10) {
        if (f66112c != i10) {
            f66112c = i10;
            f66111b = System.currentTimeMillis();
            return false;
        }
        if (System.currentTimeMillis() - f66111b <= j10) {
            return true;
        }
        f66112c = i10;
        f66111b = System.currentTimeMillis();
        return false;
    }
}
