package y;

public final class e {

    private float f75995a;

    private float f75996b;

    private float f75997c;

    private float f75998d;

    public e(float f10, float f11, float f12, float f13) {
        this.f75995a = f10;
        this.f75996b = f11;
        this.f75997c = f12;
        this.f75998d = f13;
    }

    public final float a() {
        return this.f75998d;
    }

    public final float b() {
        return this.f75995a;
    }

    public final float c() {
        return this.f75997c;
    }

    public final float d() {
        return this.f75996b;
    }

    public final void e(float f10, float f11, float f12, float f13) {
        this.f75995a = Math.max(f10, this.f75995a);
        this.f75996b = Math.max(f11, this.f75996b);
        this.f75997c = Math.min(f12, this.f75997c);
        this.f75998d = Math.min(f13, this.f75998d);
    }

    public final boolean f() {
        return this.f75995a >= this.f75997c || this.f75996b >= this.f75998d;
    }

    public final void g(float f10, float f11, float f12, float f13) {
        this.f75995a = f10;
        this.f75996b = f11;
        this.f75997c = f12;
        this.f75998d = f13;
    }

    public final void h(float f10) {
        this.f75998d = f10;
    }

    public final void i(float f10) {
        this.f75995a = f10;
    }

    public final void j(float f10) {
        this.f75997c = f10;
    }

    public final void k(float f10) {
        this.f75996b = f10;
    }

    public String toString() {
        return "MutableRect(" + c.a(this.f75995a, 1) + ", " + c.a(this.f75996b, 1) + ", " + c.a(this.f75997c, 1) + ", " + c.a(this.f75998d, 1) + ')';
    }
}
