package kx;

public class a {

    private Object f65496a;

    private boolean f65497b = false;

    public a(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("null values in Event are not allowed.");
        }
        this.f65496a = obj;
    }

    public Object a() {
        if (this.f65497b) {
            return null;
        }
        this.f65497b = true;
        return this.f65496a;
    }
}
