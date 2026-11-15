package defpackage;

import org.greenrobot.greendao.generator.Schema;
import org.mozilla.javascript.ES6Iterator;

public interface zbb {
    public static final a a = a.a;

    public static final class a {
        public static final a a = new a();

        public static final class C0462a implements zbb {
            public final Object b;
            public final e74 c;

            public C0462a(Object obj, e74 e74Var) {
                this.c = e74Var;
                this.b = obj;
            }

            @Override
            public Object a() {
                return this.b;
            }

            @Override
            public boolean b(Object obj) {
                y45.j(obj, ES6Iterator.VALUE_PROPERTY);
                return ((Boolean) this.c.invoke(obj)).booleanValue();
            }
        }

        public final zbb a(Object obj, e74 e74Var) {
            y45.j(obj, Schema.DEFAULT_NAME);
            y45.j(e74Var, "validator");
            return new C0462a(obj, e74Var);
        }
    }

    Object a();

    boolean b(Object obj);
}
