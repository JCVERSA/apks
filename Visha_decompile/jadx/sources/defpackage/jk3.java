package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

public final class jk3 {
    public static final a b = new a(null);
    public final ns7 a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final jk3 a() {
            return new jk3(ns7.b.a());
        }

        public final jk3 b(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            return new jk3(ns7.b.b(obj));
        }

        public final jk3 c(Object obj) {
            return obj != null ? b(obj) : a();
        }

        public a() {
        }
    }

    public jk3(ns7 ns7Var) {
        y45.j(ns7Var, "optional");
        this.a = ns7Var;
    }

    public static final jk3 a() {
        return b.a();
    }

    public static final jk3 c(Object obj) {
        return b.b(obj);
    }

    public final ns7 b() {
        return this.a;
    }
}
