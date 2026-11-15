package defpackage;

public final class vk8 {
    public final Class a;
    public final Class b;

    public @interface a {
    }

    public vk8(Class cls, Class cls2) {
        this.a = cls;
        this.b = cls2;
    }

    public static vk8 a(Class cls, Class cls2) {
        return new vk8(cls, cls2);
    }

    public static vk8 b(Class cls) {
        return new vk8(a.class, cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || vk8.class != obj.getClass()) {
            return false;
        }
        vk8 vk8Var = (vk8) obj;
        if (this.b.equals(vk8Var.b)) {
            return this.a.equals(vk8Var.a);
        }
        return false;
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + this.a.hashCode();
    }

    public String toString() {
        if (this.a == a.class) {
            return this.b.getName();
        }
        return "@" + this.a.getName() + " " + this.b.getName();
    }
}
