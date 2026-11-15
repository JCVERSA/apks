package defpackage;

public interface lx7 {
    public static final lx7 a = new lx7() {
        @Override
        public final void c(Exception exc) {
            lx7.b(exc);
        }
    };
    public static final lx7 b = new lx7() {
        @Override
        public final void c(Exception exc) {
            lx7.d(exc);
        }
    };

    static void b(Exception exc) {
        if (pp5.e()) {
            pp5.c("ParsingErrorLogger", "An error occurred during parsing process", exc);
        }
    }

    static void d(Exception exc) {
        if (xi.o()) {
            xi.j(exc.getMessage(), exc);
        }
    }

    void c(Exception exc);

    default void e(Exception exc, String str) {
        c(exc);
    }
}
