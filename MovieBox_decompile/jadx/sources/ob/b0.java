package ob;

public final class b0 {

    private final Class f67727a;

    private final Class f67728b;

    private @interface a {
    }

    public b0(Class cls, Class cls2) {
        this.f67727a = cls;
        this.f67728b = cls2;
    }

    public static b0 a(Class cls, Class cls2) {
        return new b0(cls, cls2);
    }

    public static b0 b(Class cls) {
        return new b0(a.class, cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b0.class != obj.getClass()) {
            return false;
        }
        b0 b0Var = (b0) obj;
        if (this.f67728b.equals(b0Var.f67728b)) {
            return this.f67727a.equals(b0Var.f67727a);
        }
        return false;
    }

    public int hashCode() {
        return (this.f67728b.hashCode() * 31) + this.f67727a.hashCode();
    }

    public String toString() {
        if (this.f67727a == a.class) {
            return this.f67728b.getName();
        }
        return "@" + this.f67727a.getName() + " " + this.f67728b.getName();
    }
}
