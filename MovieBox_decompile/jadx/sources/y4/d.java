package y4;

public class d {

    private float f76160a;

    private float f76161b;

    public d(float f10, float f11) {
        this.f76160a = f10;
        this.f76161b = f11;
    }

    public boolean a(float f10, float f11) {
        return this.f76160a == f10 && this.f76161b == f11;
    }

    public float b() {
        return this.f76160a;
    }

    public float c() {
        return this.f76161b;
    }

    public void d(float f10, float f11) {
        this.f76160a = f10;
        this.f76161b = f11;
    }

    public String toString() {
        return b() + "x" + c();
    }

    public d() {
        this(1.0f, 1.0f);
    }
}
