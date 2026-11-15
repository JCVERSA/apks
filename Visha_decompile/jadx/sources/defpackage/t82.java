package defpackage;

public abstract class t82 {

    public static final class a extends t82 {
        public static final a a = new a();
        public static final int b;

        static {
            u82.a aVar = u82.c;
            b = (~(aVar.i() | aVar.d())) & aVar.b();
        }

        @Override
        public int a() {
            return b;
        }
    }

    public static final class b extends t82 {
        public static final b a = new b();

        @Override
        public int a() {
            return 0;
        }
    }

    public abstract int a();

    public String toString() {
        return getClass().getSimpleName();
    }
}
