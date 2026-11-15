package hr;

public final class d {

    public static final d f61483a = new d();

    private static long f61484b;

    private static int f61485c;

    private d() {
    }

    public final boolean a(int i10, long j10) {
        if (f61485c != i10) {
            f61485c = i10;
            f61484b = System.currentTimeMillis();
            return false;
        }
        if (System.currentTimeMillis() - f61484b <= j10) {
            return true;
        }
        f61485c = i10;
        f61484b = System.currentTimeMillis();
        return false;
    }
}
