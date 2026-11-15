package defpackage;

import java.util.Iterator;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;

public abstract class tc9 {

    public static final class a implements pc9 {
        public final s74 a;

        public a(s74 s74Var) {
            this.a = s74Var;
        }

        @Override
        public Iterator iterator() {
            return tc9.a(this.a);
        }
    }

    public static Iterator a(s74 s74Var) {
        y45.j(s74Var, "block");
        rc9 rc9Var = new rc9();
        rc9Var.g(IntrinsicsKt__IntrinsicsJvmKt.a(s74Var, rc9Var, rc9Var));
        return rc9Var;
    }

    public static pc9 b(s74 s74Var) {
        y45.j(s74Var, "block");
        return new a(s74Var);
    }
}
