package d7;

public class a {

    private String f58909a;

    private int f58910b;

    private int f58911c;

    private String f58912d;

    private double f58913e;

    private boolean f58914f;

    public static class b {

        private final a f58915a = new a();

        public a a() {
            return this.f58915a;
        }
    }

    public static b a() {
        return new b();
    }

    public double b() {
        return this.f58913e;
    }

    public String c() {
        return this.f58909a;
    }

    public int d() {
        return this.f58910b;
    }

    public int e() {
        return this.f58911c;
    }

    public String f() {
        return this.f58912d;
    }

    public boolean g() {
        return this.f58914f;
    }

    public void h(double d10) {
        this.f58913e = d10;
    }

    public void i(boolean z10) {
        this.f58914f = z10;
    }

    public void j(String str) {
        this.f58909a = str;
    }

    public void k(int i10) {
        this.f58910b = i10;
    }

    public void l(String str) {
        this.f58912d = str;
    }

    private a() {
        this.f58909a = null;
        this.f58910b = -1;
        this.f58911c = 0;
        this.f58912d = null;
        this.f58914f = false;
    }
}
