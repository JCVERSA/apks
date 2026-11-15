package defpackage;

public interface yt9 {
    public static final yt9 a = new a();

    public static class a implements yt9 {
        public static void d(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/descriptors/SourceElement$1", "getContainingFile"));
        }

        @Override
        public zt9 b() {
            zt9 zt9Var = zt9.a;
            if (zt9Var == null) {
                d(0);
            }
            return zt9Var;
        }

        public String toString() {
            return "NO_SOURCE";
        }
    }

    zt9 b();
}
