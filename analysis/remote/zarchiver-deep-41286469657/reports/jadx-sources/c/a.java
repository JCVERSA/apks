package c;

public final class a {

    public static boolean f308g = false;

    public final c f309a;

    public final C0002a f310b = new C0002a();

    public final C0002a f311c = new C0002a();

    public final C0002a f312d = new C0002a();

    public long f313e = 0;

    public boolean f314f = false;

    public static class C0002a {

        public int f315a;

        public int f316b;

        public int f317c;

        public int f318d;
    }

    public a(c cVar) {
        this.f309a = cVar;
    }

    public static int a(float f2, float f3, float f4) {
        double d2;
        double d3 = f2;
        double d4 = f3;
        double d5 = f4;
        Double.isNaN(d5);
        Double.isNaN(d4);
        double d6 = (d5 - d4) / 2.0d;
        Double.isNaN(d3);
        double d7 = d3 * 2.0d;
        if (d7 < 1.0d) {
            Double.isNaN(d4);
            d2 = (d6 * d7 * d7) + d4;
        } else {
            double d8 = d7 - 1.0d;
            Double.isNaN(d4);
            d2 = ((((d8 - 2.0d) * d8) - 1.0d) * (-d6)) + d4;
        }
        return (int) d2;
    }
}
