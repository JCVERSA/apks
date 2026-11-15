package x4;

public class j {

    private float f75095a;

    private int f75096b;

    public void a(float f10) {
        float f11 = this.f75095a + f10;
        this.f75095a = f11;
        int i10 = this.f75096b + 1;
        this.f75096b = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.f75095a = f11 / 2.0f;
            this.f75096b = i10 / 2;
        }
    }
}
