package defpackage;

public abstract class kp8 {

    public static class b {
        public static final kp8 a = new a();

        public class a extends kp8 {
            public a() {
                super();
            }

            @Override
            public boolean b() {
                return true;
            }

            @Override
            public int c() {
                return 16;
            }
        }
    }

    public static kp8 a() {
        return b.a;
    }

    public abstract boolean b();

    public abstract int c();

    public kp8() {
    }
}
