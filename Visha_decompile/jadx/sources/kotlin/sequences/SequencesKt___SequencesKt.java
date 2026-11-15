package kotlin.sequences;

import defpackage.abb;
import defpackage.ad9;
import defpackage.bd2;
import defpackage.cy3;
import defpackage.e74;
import defpackage.i81;
import defpackage.j7b;
import defpackage.k33;
import defpackage.mv3;
import defpackage.nn6;
import defpackage.o33;
import defpackage.pc9;
import defpackage.qe5;
import defpackage.s74;
import defpackage.uda;
import defpackage.w0a;
import defpackage.x71;
import defpackage.xe9;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye9;
import defpackage.zc9;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Pair;
import kotlin.sequences.SequencesKt___SequencesKt;

public abstract class SequencesKt___SequencesKt extends ad9 {

    public static final class a implements Iterable, qe5 {
        public final pc9 b;

        public a(pc9 pc9Var) {
            this.b = pc9Var;
        }

        @Override
        public Iterator iterator() {
            return this.b.iterator();
        }
    }

    public static int A(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        Iterator it = pc9Var.iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next();
            i++;
            if (i < 0) {
                y71.t();
            }
        }
        return i;
    }

    public static pc9 B(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        return D(pc9Var, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SequencesKt___SequencesKt.C(obj);
            }
        });
    }

    public static final Object C(Object obj) {
        return obj;
    }

    public static final pc9 D(pc9 pc9Var, e74 e74Var) {
        y45.j(pc9Var, "<this>");
        y45.j(e74Var, "selector");
        return new bd2(pc9Var, e74Var);
    }

    public static pc9 E(pc9 pc9Var, int i) {
        y45.j(pc9Var, "<this>");
        if (i >= 0) {
            if (i == 0) {
                return pc9Var;
            }
            return pc9Var instanceof o33 ? ((o33) pc9Var).a(i) : new k33(pc9Var, i);
        }
        throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
    }

    public static pc9 F(pc9 pc9Var, e74 e74Var) {
        y45.j(pc9Var, "<this>");
        y45.j(e74Var, "predicate");
        return new mv3(pc9Var, true, e74Var);
    }

    public static pc9 G(pc9 pc9Var, e74 e74Var) {
        y45.j(pc9Var, "<this>");
        y45.j(e74Var, "predicate");
        return new mv3(pc9Var, false, e74Var);
    }

    public static pc9 H(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        pc9 pc9VarG = G(pc9Var, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(SequencesKt___SequencesKt.I(obj));
            }
        });
        y45.h(pc9VarG, "null cannot be cast to non-null type kotlin.sequences.Sequence<T of kotlin.sequences.SequencesKt___SequencesKt.filterNotNull>");
        return pc9VarG;
    }

    public static final boolean I(Object obj) {
        return obj == null;
    }

    public static Object J(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        Iterator it = pc9Var.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static pc9 K(pc9 pc9Var, e74 e74Var) {
        y45.j(pc9Var, "<this>");
        y45.j(e74Var, "transform");
        return new cy3(pc9Var, e74Var, SequencesKt___SequencesKt$flatMap$2.INSTANCE);
    }

    public static pc9 L(pc9 pc9Var, e74 e74Var) {
        y45.j(pc9Var, "<this>");
        y45.j(e74Var, "transform");
        return new cy3(pc9Var, e74Var, SequencesKt___SequencesKt$flatMap$1.INSTANCE);
    }

    public static final int M(pc9 pc9Var, Object obj) {
        y45.j(pc9Var, "<this>");
        int i = 0;
        for (Object obj2 : pc9Var) {
            if (i < 0) {
                y71.u();
            }
            if (y45.e(obj, obj2)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static final Appendable N(pc9 pc9Var, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var) throws IOException {
        y45.j(pc9Var, "<this>");
        y45.j(appendable, "buffer");
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(charSequence4, "truncated");
        appendable.append(charSequence2);
        int i2 = 0;
        for (Object obj : pc9Var) {
            i2++;
            if (i2 > 1) {
                appendable.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            w0a.a(appendable, obj, e74Var);
        }
        if (i >= 0 && i2 > i) {
            appendable.append(charSequence4);
        }
        appendable.append(charSequence3);
        return appendable;
    }

    public static final String O(pc9 pc9Var, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var) {
        y45.j(pc9Var, "<this>");
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(charSequence4, "truncated");
        return ((StringBuilder) N(pc9Var, new StringBuilder(), charSequence, charSequence2, charSequence3, i, charSequence4, e74Var)).toString();
    }

    public static String P(pc9 pc9Var, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i2 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i2 & 4) == 0 ? charSequence3 : "";
        if ((i2 & 8) != 0) {
            i = -1;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i2 & 32) != 0) {
            e74Var = null;
        }
        return O(pc9Var, charSequence, charSequence5, charSequence6, i3, charSequence7, e74Var);
    }

    public static Object Q(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        Iterator it = pc9Var.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Sequence is empty.");
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static pc9 R(pc9 pc9Var, e74 e74Var) {
        y45.j(pc9Var, "<this>");
        y45.j(e74Var, "transform");
        return new j7b(pc9Var, e74Var);
    }

    public static pc9 S(pc9 pc9Var, e74 e74Var) {
        y45.j(pc9Var, "<this>");
        y45.j(e74Var, "transform");
        return H(new j7b(pc9Var, e74Var));
    }

    public static Object T(pc9 pc9Var, Comparator comparator) {
        y45.j(pc9Var, "<this>");
        y45.j(comparator, "comparator");
        Iterator it = pc9Var.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        while (it.hasNext()) {
            Object next2 = it.next();
            if (comparator.compare(next, next2) > 0) {
                next = next2;
            }
        }
        return next;
    }

    public static pc9 U(pc9 pc9Var, final e74 e74Var) {
        y45.j(pc9Var, "<this>");
        y45.j(e74Var, "action");
        return R(pc9Var, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SequencesKt___SequencesKt.V(e74Var, obj);
            }
        });
    }

    public static final Object V(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
        return obj;
    }

    public static pc9 W(pc9 pc9Var, pc9 pc9Var2) {
        y45.j(pc9Var, "<this>");
        y45.j(pc9Var2, "elements");
        return zc9.j(zc9.s(pc9Var, pc9Var2));
    }

    public static pc9 X(pc9 pc9Var, Iterable iterable) {
        y45.j(pc9Var, "<this>");
        y45.j(iterable, "elements");
        return zc9.j(zc9.s(pc9Var, i81.b0(iterable)));
    }

    public static pc9 Y(pc9 pc9Var, Object obj) {
        y45.j(pc9Var, "<this>");
        return zc9.j(zc9.s(pc9Var, zc9.s(obj)));
    }

    public static pc9 Z(pc9 pc9Var, e74 e74Var) {
        y45.j(pc9Var, "<this>");
        y45.j(e74Var, "predicate");
        return new uda(pc9Var, e74Var);
    }

    public static final Collection a0(pc9 pc9Var, Collection collection) {
        y45.j(pc9Var, "<this>");
        y45.j(collection, "destination");
        Iterator it = pc9Var.iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
        return collection;
    }

    public static HashSet b0(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        return (HashSet) a0(pc9Var, new HashSet());
    }

    public static List c0(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        Iterator it = pc9Var.iterator();
        if (!it.hasNext()) {
            return y71.k();
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return x71.e(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static List d0(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        return (List) a0(pc9Var, new ArrayList());
    }

    public static Set e0(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        Iterator it = pc9Var.iterator();
        if (!it.hasNext()) {
            return ye9.f();
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return xe9.d(next);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(next);
        while (it.hasNext()) {
            linkedHashSet.add(it.next());
        }
        return linkedHashSet;
    }

    public static pc9 f0(pc9 pc9Var, pc9 pc9Var2) {
        y45.j(pc9Var, "<this>");
        y45.j(pc9Var2, "other");
        return new nn6(pc9Var, pc9Var2, new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SequencesKt___SequencesKt.g0(obj, obj2);
            }
        });
    }

    public static final Pair g0(Object obj, Object obj2) {
        return abb.a(obj, obj2);
    }

    public static Iterable y(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        return new a(pc9Var);
    }

    public static boolean z(pc9 pc9Var, Object obj) {
        y45.j(pc9Var, "<this>");
        return M(pc9Var, obj) >= 0;
    }
}
