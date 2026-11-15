package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.collections.SlidingWindowKt;
import kotlin.random.Random;

public abstract class i81 extends f81 {

    public static final class a implements pc9 {
        public final Iterable a;

        public a(Iterable iterable) {
            this.a = iterable;
        }

        @Override
        public Iterator iterator() {
            return this.a.iterator();
        }
    }

    public static Object A0(List list) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(y71.m(list));
    }

    public static Object B0(Iterable iterable) {
        y45.j(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return list.get(list.size() - 1);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static Object C0(List list) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static List D0(Iterable iterable, e74 e74Var) {
        y45.j(iterable, "<this>");
        y45.j(e74Var, "transform");
        ArrayList arrayList = new ArrayList(z71.v(iterable, 10));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(e74Var.invoke(it.next()));
        }
        return arrayList;
    }

    public static Comparable E0(Iterable iterable) {
        y45.j(iterable, "<this>");
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) > 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static List F0(Iterable iterable, Iterable iterable2) {
        y45.j(iterable, "<this>");
        y45.j(iterable2, "elements");
        Collection collectionE = d81.E(iterable2);
        if (collectionE.isEmpty()) {
            return b1(iterable);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (!collectionE.contains(obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static List G0(Iterable iterable, Object obj) {
        y45.j(iterable, "<this>");
        ArrayList arrayList = new ArrayList(z71.v(iterable, 10));
        boolean z = false;
        for (Object obj2 : iterable) {
            boolean z2 = true;
            if (!z && y45.e(obj2, obj)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                arrayList.add(obj2);
            }
        }
        return arrayList;
    }

    public static List H0(Iterable iterable, Iterable iterable2) {
        y45.j(iterable, "<this>");
        y45.j(iterable2, "elements");
        if (iterable instanceof Collection) {
            return J0((Collection) iterable, iterable2);
        }
        ArrayList arrayList = new ArrayList();
        d81.C(arrayList, iterable);
        d81.C(arrayList, iterable2);
        return arrayList;
    }

    public static List I0(Iterable iterable, Object obj) {
        y45.j(iterable, "<this>");
        if (iterable instanceof Collection) {
            return K0((Collection) iterable, obj);
        }
        ArrayList arrayList = new ArrayList();
        d81.C(arrayList, iterable);
        arrayList.add(obj);
        return arrayList;
    }

    public static List J0(Collection collection, Iterable iterable) {
        y45.j(collection, "<this>");
        y45.j(iterable, "elements");
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            d81.C(arrayList, iterable);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection.size() + collection2.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static List K0(Collection collection, Object obj) {
        y45.j(collection, "<this>");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(obj);
        return arrayList;
    }

    public static Object L0(Collection collection, Random random) {
        y45.j(collection, "<this>");
        y45.j(random, "random");
        if (collection.isEmpty()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        return h0(collection, random.nextInt(collection.size()));
    }

    public static List M0(Iterable iterable) {
        y45.j(iterable, "<this>");
        if ((iterable instanceof Collection) && ((Collection) iterable).size() <= 1) {
            return b1(iterable);
        }
        List listD1 = d1(iterable);
        f81.X(listD1);
        return listD1;
    }

    public static Object N0(Iterable iterable) {
        y45.j(iterable, "<this>");
        if (iterable instanceof List) {
            return O0((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        Object next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static Object O0(List list) {
        y45.j(list, "<this>");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }

    public static Object P0(Iterable iterable) {
        y45.j(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.size() == 1) {
                return list.get(0);
            }
            return null;
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        if (it.hasNext()) {
            return null;
        }
        return next;
    }

    public static Object Q0(List list) {
        y45.j(list, "<this>");
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    public static List R0(Iterable iterable) {
        y45.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            List listD1 = d1(iterable);
            c81.A(listD1);
            return listD1;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return b1(iterable);
        }
        Object[] array = collection.toArray(new Comparable[0]);
        fi.F((Comparable[]) array);
        return fi.f(array);
    }

    public static List S0(Iterable iterable) {
        y45.j(iterable, "<this>");
        return T0(iterable, kotlin.comparisons.a.h());
    }

    public static List T0(Iterable iterable, Comparator comparator) {
        y45.j(iterable, "<this>");
        y45.j(comparator, "comparator");
        if (!(iterable instanceof Collection)) {
            List listD1 = d1(iterable);
            c81.B(listD1, comparator);
            return listD1;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return b1(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        fi.G(array, comparator);
        return fi.f(array);
    }

    public static List U0(Iterable iterable, int i) {
        y45.j(iterable, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
        }
        if (i == 0) {
            return y71.k();
        }
        if (iterable instanceof Collection) {
            if (i >= ((Collection) iterable).size()) {
                return b1(iterable);
            }
            if (i == 1) {
                return x71.e(n0(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i);
        Iterator it = iterable.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i2++;
            if (i2 == i) {
                break;
            }
        }
        return y71.r(arrayList);
    }

    public static List V0(List list, int i) {
        y45.j(list, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
        }
        if (i == 0) {
            return y71.k();
        }
        int size = list.size();
        if (i >= size) {
            return b1(list);
        }
        if (i == 1) {
            return x71.e(A0(list));
        }
        ArrayList arrayList = new ArrayList(i);
        if (list instanceof RandomAccess) {
            for (int i2 = size - i; i2 < size; i2++) {
                arrayList.add(list.get(i2));
            }
        } else {
            ListIterator listIterator = list.listIterator(size - i);
            while (listIterator.hasNext()) {
                arrayList.add(listIterator.next());
            }
        }
        return arrayList;
    }

    public static boolean[] W0(Collection collection) {
        y45.j(collection, "<this>");
        boolean[] zArr = new boolean[collection.size()];
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            zArr[i] = ((Boolean) it.next()).booleanValue();
            i++;
        }
        return zArr;
    }

    public static Collection X0(Iterable iterable, Collection collection) {
        y45.j(iterable, "<this>");
        y45.j(collection, "destination");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
        return collection;
    }

    public static float[] Y0(Collection collection) {
        y45.j(collection, "<this>");
        float[] fArr = new float[collection.size()];
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            fArr[i] = ((Number) it.next()).floatValue();
            i++;
        }
        return fArr;
    }

    public static HashSet Z0(Iterable iterable) {
        y45.j(iterable, "<this>");
        return (HashSet) X0(iterable, new HashSet(ky5.g(z71.v(iterable, 12))));
    }

    public static boolean a0(Iterable iterable, e74 e74Var) {
        y45.j(iterable, "<this>");
        y45.j(e74Var, "predicate");
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return true;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (!((Boolean) e74Var.invoke(it.next())).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static int[] a1(Collection collection) {
        y45.j(collection, "<this>");
        int[] iArr = new int[collection.size()];
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Number) it.next()).intValue();
            i++;
        }
        return iArr;
    }

    public static pc9 b0(Iterable iterable) {
        y45.j(iterable, "<this>");
        return new a(iterable);
    }

    public static List b1(Iterable iterable) {
        y45.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return y71.r(d1(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return y71.k();
        }
        if (size != 1) {
            return e1(collection);
        }
        return x71.e(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static List c0(Iterable iterable, int i) {
        y45.j(iterable, "<this>");
        return i1(iterable, i, i, true);
    }

    public static long[] c1(Collection collection) {
        y45.j(collection, "<this>");
        long[] jArr = new long[collection.size()];
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            jArr[i] = ((Number) it.next()).longValue();
            i++;
        }
        return jArr;
    }

    public static boolean d0(Iterable iterable, Object obj) {
        y45.j(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        return s0(iterable, obj) >= 0;
    }

    public static final List d1(Iterable iterable) {
        y45.j(iterable, "<this>");
        return iterable instanceof Collection ? e1((Collection) iterable) : (List) X0(iterable, new ArrayList());
    }

    public static List e0(Iterable iterable) {
        y45.j(iterable, "<this>");
        return b1(f1(iterable));
    }

    public static List e1(Collection collection) {
        y45.j(collection, "<this>");
        return new ArrayList(collection);
    }

    public static List f0(Iterable iterable, int i) {
        ArrayList arrayList;
        y45.j(iterable, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
        }
        if (i == 0) {
            return b1(iterable);
        }
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size() - i;
            if (size <= 0) {
                return y71.k();
            }
            if (size == 1) {
                return x71.e(z0(iterable));
            }
            arrayList = new ArrayList(size);
            if (iterable instanceof List) {
                if (iterable instanceof RandomAccess) {
                    List list = (List) iterable;
                    int size2 = list.size();
                    while (i < size2) {
                        arrayList.add(list.get(i));
                        i++;
                    }
                } else {
                    ListIterator listIterator = ((List) iterable).listIterator(i);
                    while (listIterator.hasNext()) {
                        arrayList.add(listIterator.next());
                    }
                }
                return arrayList;
            }
        } else {
            arrayList = new ArrayList();
        }
        int i2 = 0;
        for (Object obj : iterable) {
            if (i2 >= i) {
                arrayList.add(obj);
            } else {
                i2++;
            }
        }
        return y71.r(arrayList);
    }

    public static Set f1(Iterable iterable) {
        y45.j(iterable, "<this>");
        return iterable instanceof Collection ? new LinkedHashSet((Collection) iterable) : (Set) X0(iterable, new LinkedHashSet());
    }

    public static List g0(List list, int i) {
        y45.j(list, "<this>");
        if (i >= 0) {
            return U0(list, wn8.d(list.size() - i, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
    }

    public static Set g1(Iterable iterable) {
        y45.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return ye9.i((Set) X0(iterable, new LinkedHashSet()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return ye9.f();
        }
        if (size != 1) {
            return (Set) X0(iterable, new LinkedHashSet(ky5.g(collection.size())));
        }
        return xe9.d(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static final Object h0(Iterable iterable, final int i) {
        y45.j(iterable, "<this>");
        return iterable instanceof List ? ((List) iterable).get(i) : j0(iterable, i, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return i81.i0(i, ((Integer) obj).intValue());
            }
        });
    }

    public static Set h1(Iterable iterable, Iterable iterable2) {
        y45.j(iterable, "<this>");
        y45.j(iterable2, "other");
        Set setF1 = f1(iterable);
        d81.C(setF1, iterable2);
        return setF1;
    }

    public static final Object i0(int i, int i2) {
        throw new IndexOutOfBoundsException("Collection doesn't contain element at index " + i + '.');
    }

    public static final List i1(Iterable iterable, int i, int i2, boolean z) {
        y45.j(iterable, "<this>");
        SlidingWindowKt.a(i, i2);
        if (!(iterable instanceof RandomAccess) || !(iterable instanceof List)) {
            ArrayList arrayList = new ArrayList();
            Iterator itB = SlidingWindowKt.b(iterable.iterator(), i, i2, z, false);
            while (itB.hasNext()) {
                arrayList.add((List) itB.next());
            }
            return arrayList;
        }
        List list = (List) iterable;
        int size = list.size();
        ArrayList arrayList2 = new ArrayList((size / i2) + (size % i2 == 0 ? 0 : 1));
        int i3 = 0;
        while (i3 >= 0 && i3 < size) {
            int iG = wn8.g(i, size - i3);
            if (iG < i && !z) {
                break;
            }
            ArrayList arrayList3 = new ArrayList(iG);
            for (int i4 = 0; i4 < iG; i4++) {
                arrayList3.add(list.get(i4 + i3));
            }
            arrayList2.add(arrayList3);
            i3 += i2;
        }
        return arrayList2;
    }

    public static final Object j0(Iterable iterable, int i, e74 e74Var) {
        y45.j(iterable, "<this>");
        y45.j(e74Var, "defaultValue");
        if (iterable instanceof List) {
            List list = (List) iterable;
            return (i < 0 || i >= list.size()) ? e74Var.invoke(Integer.valueOf(i)) : list.get(i);
        }
        if (i < 0) {
            return e74Var.invoke(Integer.valueOf(i));
        }
        int i2 = 0;
        for (Object obj : iterable) {
            int i3 = i2 + 1;
            if (i == i2) {
                return obj;
            }
            i2 = i3;
        }
        return e74Var.invoke(Integer.valueOf(i));
    }

    public static Iterable j1(final Iterable iterable) {
        y45.j(iterable, "<this>");
        return new nz4(new c74() {
            @Override
            public final Object invoke() {
                return i81.k1(iterable);
            }
        });
    }

    public static List k0(Iterable iterable, e74 e74Var) {
        y45.j(iterable, "<this>");
        y45.j(e74Var, "predicate");
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (((Boolean) e74Var.invoke(obj)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final Iterator k1(Iterable iterable) {
        return iterable.iterator();
    }

    public static List l0(Iterable iterable) {
        y45.j(iterable, "<this>");
        return (List) m0(iterable, new ArrayList());
    }

    public static List l1(Iterable iterable, Iterable iterable2) {
        y45.j(iterable, "<this>");
        y45.j(iterable2, "other");
        Iterator it = iterable.iterator();
        Iterator it2 = iterable2.iterator();
        ArrayList arrayList = new ArrayList(Math.min(z71.v(iterable, 10), z71.v(iterable2, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(abb.a(it.next(), it2.next()));
        }
        return arrayList;
    }

    public static final Collection m0(Iterable iterable, Collection collection) {
        y45.j(iterable, "<this>");
        y45.j(collection, "destination");
        for (Object obj : iterable) {
            if (obj != null) {
                collection.add(obj);
            }
        }
        return collection;
    }

    public static Object n0(Iterable iterable) {
        y45.j(iterable, "<this>");
        if (iterable instanceof List) {
            return o0((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static Object o0(List list) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static Object p0(Iterable iterable) {
        y45.j(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return list.get(0);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static Object q0(List list) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static Object r0(List list, int i) {
        y45.j(list, "<this>");
        if (i < 0 || i >= list.size()) {
            return null;
        }
        return list.get(i);
    }

    public static final int s0(Iterable iterable, Object obj) {
        y45.j(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(obj);
        }
        int i = 0;
        for (Object obj2 : iterable) {
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

    public static int t0(List list, Object obj) {
        y45.j(list, "<this>");
        return list.indexOf(obj);
    }

    public static Set u0(Iterable iterable, Iterable iterable2) {
        y45.j(iterable, "<this>");
        y45.j(iterable2, "other");
        Set setF1 = f1(iterable);
        d81.M(setF1, iterable2);
        return setF1;
    }

    public static final Appendable v0(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var) throws IOException {
        y45.j(iterable, "<this>");
        y45.j(appendable, "buffer");
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(charSequence4, "truncated");
        appendable.append(charSequence2);
        int i2 = 0;
        for (Object obj : iterable) {
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

    public static final String x0(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var) {
        y45.j(iterable, "<this>");
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(charSequence4, "truncated");
        return ((StringBuilder) v0(iterable, new StringBuilder(), charSequence, charSequence2, charSequence3, i, charSequence4, e74Var)).toString();
    }

    public static String y0(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var, int i2, Object obj) {
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
        return x0(iterable, charSequence, charSequence5, charSequence6, i3, charSequence7, e74Var);
    }

    public static Object z0(Iterable iterable) {
        y45.j(iterable, "<this>");
        if (iterable instanceof List) {
            return A0((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }
}
