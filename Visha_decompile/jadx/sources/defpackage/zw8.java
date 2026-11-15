package defpackage;

public abstract class zw8 {

    public static class a implements ie8 {
        public final Object b;

        public a(Object obj) {
            this.b = obj;
        }

        @Override
        public boolean test(Object obj) {
            return obj.equals(this.b);
        }
    }

    public static class b implements be0 {
        @Override
        public Boolean apply(Object obj, Object obj2) {
            return Boolean.valueOf(obj2.equals(obj));
        }
    }

    public static yk5 a(mc7 mc7Var) {
        return new yk5(mc7Var);
    }

    public static yk5 b(mc7 mc7Var, t74 t74Var) {
        zd8.a(mc7Var, "lifecycle == null");
        zd8.a(t74Var, "correspondingEvents == null");
        return a(d(mc7Var.U(), t74Var));
    }

    public static yk5 c(mc7 mc7Var, Object obj) {
        zd8.a(mc7Var, "lifecycle == null");
        zd8.a(obj, "event == null");
        return a(e(mc7Var, obj));
    }

    public static mc7 d(mc7 mc7Var, t74 t74Var) {
        return mc7.e(mc7Var.e0(1L).L(t74Var), mc7Var.X(1L), new b()).P(g94.a).u(g94.b);
    }

    public static mc7 e(mc7 mc7Var, Object obj) {
        return mc7Var.u(new a(obj));
    }
}
