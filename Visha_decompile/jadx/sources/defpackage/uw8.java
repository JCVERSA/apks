package defpackage;

public final class uw8 implements j85 {
    public static final uw8 a = new uw8();

    public static final class a implements i85 {
        public final bq8 b;

        public a(bq8 bq8Var) {
            y45.j(bq8Var, "javaElement");
            this.b = bq8Var;
        }

        @Override
        public zt9 b() {
            zt9 zt9Var = zt9.a;
            y45.i(zt9Var, "NO_SOURCE_FILE");
            return zt9Var;
        }

        @Override
        public bq8 c() {
            return this.b;
        }

        public String toString() {
            return a.class.getName() + ": " + c();
        }
    }

    @Override
    public i85 a(k75 k75Var) {
        y45.j(k75Var, "javaElement");
        return new a((bq8) k75Var);
    }
}
