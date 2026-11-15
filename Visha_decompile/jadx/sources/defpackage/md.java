package defpackage;

import java.util.Iterator;
import java.util.List;

public interface md extends Iterable, qe5 {
    public static final a u1 = a.a;

    public static final class a {
        public static final a a = new a();
        public static final md b = new C0423a();

        public static final class C0423a implements md {
            @Override
            public gd a(o54 o54Var) {
                return (gd) b(o54Var);
            }

            public Void b(o54 o54Var) {
                y45.j(o54Var, "fqName");
                return null;
            }

            @Override
            public boolean h(o54 o54Var) {
                return b.b(this, o54Var);
            }

            @Override
            public boolean isEmpty() {
                return true;
            }

            @Override
            public Iterator iterator() {
                return y71.k().iterator();
            }

            public String toString() {
                return "EMPTY";
            }
        }

        public final md a(List list) {
            y45.j(list, "annotations");
            return list.isEmpty() ? b : new nd(list);
        }

        public final md b() {
            return b;
        }
    }

    public static final class b {
        public static gd a(md mdVar, o54 o54Var) {
            Object next;
            y45.j(o54Var, "fqName");
            Iterator it = mdVar.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (y45.e(((gd) next).d(), o54Var)) {
                    return (gd) next;
                }
            }
            next = null;
            return (gd) next;
        }

        public static boolean b(md mdVar, o54 o54Var) {
            y45.j(o54Var, "fqName");
            return mdVar.a(o54Var) != null;
        }
    }

    gd a(o54 o54Var);

    boolean h(o54 o54Var);

    boolean isEmpty();
}
