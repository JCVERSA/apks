package defpackage;

import freemarker.core.Environment;
import freemarker.template.Template;

public abstract class wt1 {
    public static final wt1 a = a();

    public static class a extends wt1 {
        public a() {
        }

        @Override
        public void c(Template template) {
        }

        @Override
        public boolean e(Environment environment, String str, int i) {
            throw new UnsupportedOperationException();
        }
    }

    public static wt1 a() {
        return ha9.c("freemarker.debug.password", null) == null ? new a() : new qv8();
    }

    public static void b(Template template) {
        a.c(template);
    }

    public static boolean d(Environment environment, String str, int i) {
        return a.e(environment, str, i);
    }

    public abstract void c(Template template);

    public abstract boolean e(Environment environment, String str, int i);
}
