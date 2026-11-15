package q;

public abstract class g {

    private static final f f69321a = a(50);

    public static final f a(int i10) {
        return b(c.a(i10));
    }

    public static final f b(b bVar) {
        return new f(bVar, bVar, bVar, bVar);
    }

    public static final f c(float f10) {
        return b(c.b(f10));
    }

    public static final f d(float f10, float f11, float f12, float f13) {
        return new f(c.b(f10), c.b(f11), c.b(f12), c.b(f13));
    }

    public static final f e() {
        return f69321a;
    }
}
