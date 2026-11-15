package defpackage;

import java.util.Iterator;
import kotlin.reflect.jvm.internal.impl.util.TypeRegistry;

public abstract class n2 implements Iterable, qe5 {

    public static abstract class a {
        public final de5 a;
        public final int b;

        public a(de5 de5Var, int i) {
            y45.j(de5Var, "key");
            this.a = de5Var;
            this.b = i;
        }

        public final Object a(n2 n2Var) {
            y45.j(n2Var, "thisRef");
            return n2Var.b().get(this.b);
        }
    }

    public abstract ah b();

    public abstract TypeRegistry c();

    public final boolean isEmpty() {
        return b().b() == 0;
    }

    @Override
    public final Iterator iterator() {
        return b().iterator();
    }
}
