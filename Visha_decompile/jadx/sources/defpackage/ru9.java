package defpackage;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.reflect.jvm.internal.impl.load.kotlin.c;

public final class ru9 {
    public static final ru9 a = new ru9();
    public static final Set b;
    public static final xw0 c;

    public static final class a implements c.InterfaceC0394c {
        public final Ref$BooleanRef a;

        public a(Ref$BooleanRef ref$BooleanRef) {
            this.a = ref$BooleanRef;
        }

        @Override
        public c.a a(xw0 xw0Var, yt9 yt9Var) {
            y45.j(xw0Var, "classId");
            y45.j(yt9Var, "source");
            if (!y45.e(xw0Var, xc5.a.a())) {
                return null;
            }
            this.a.element = true;
            return null;
        }

        @Override
        public void visitEnd() {
        }
    }

    static {
        List listN = y71.n(yc5.a, yc5.k, yc5.l, yc5.d, yc5.f, yc5.i);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = listN.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(xw0.m((o54) it.next()));
        }
        b = linkedHashSet;
        xw0 xw0VarM = xw0.m(yc5.j);
        y45.i(xw0VarM, "topLevel(JvmAnnotationNames.REPEATABLE_ANNOTATION)");
        c = xw0VarM;
    }

    public final xw0 a() {
        return c;
    }

    public final Set b() {
        return b;
    }

    public final boolean c(c cVar) {
        y45.j(cVar, "klass");
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        cVar.d(new a(ref$BooleanRef), null);
        return ref$BooleanRef.element;
    }
}
