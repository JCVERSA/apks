package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class h extends AbstractPersistentList implements t.d {

    public static final a f3409b = new a(null);

    public static final int f3410c = 8;

    private static final h f3411d = new h(new Object[0]);

    private final Object[] f3412a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            return h.f3411d;
        }

        private a() {
        }
    }

    public h(Object[] objArr) {
        this.f3412a = objArr;
        w.a.a(objArr.length <= 32);
    }

    private final Object[] i(int i10) {
        return new Object[i10];
    }

    @Override
    public t.f add(Object obj) {
        if (size() >= 32) {
            return new d(this.f3412a, j.c(obj), size() + 1, 0);
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.f3412a, size() + 1);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        objArrCopyOf[size()] = obj;
        return new h(objArrCopyOf);
    }

    @Override
    public t.f addAll(Collection collection) {
        if (size() + collection.size() > 32) {
            t.f.a aVarBuilder = builder();
            aVarBuilder.addAll(collection);
            return aVarBuilder.build();
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.f3412a, size() + collection.size());
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        int size = size();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            objArrCopyOf[size] = it.next();
            size++;
        }
        return new h(objArrCopyOf);
    }

    @Override
    public t.f.a builder() {
        return new PersistentVectorBuilder(this, null, this.f3412a, 0);
    }

    @Override
    public t.f d(int i10) {
        w.d.a(i10, size());
        if (size() == 1) {
            return f3411d;
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.f3412a, size() - 1);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        ArraysKt.l(this.f3412a, objArrCopyOf, i10, i10 + 1, size());
        return new h(objArrCopyOf);
    }

    @Override
    public Object get(int i10) {
        w.d.a(i10, size());
        return this.f3412a[i10];
    }

    @Override
    public int get_size() {
        return this.f3412a.length;
    }

    @Override
    public int indexOf(Object obj) {
        return ArraysKt.e0(this.f3412a, obj);
    }

    @Override
    public t.f k(Function1 function1) {
        Object[] objArrCopyOf = this.f3412a;
        int size = size();
        int size2 = size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size2; i10++) {
            Object obj = this.f3412a[i10];
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                if (!z10) {
                    Object[] objArr = this.f3412a;
                    objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
                    Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
                    z10 = true;
                    size = i10;
                }
            } else if (z10) {
                objArrCopyOf[size] = obj;
                size++;
            }
        }
        if (size == size()) {
            return this;
        }
        return size == 0 ? f3411d : new h(ArraysKt.r(objArrCopyOf, 0, size));
    }

    @Override
    public int lastIndexOf(Object obj) {
        return ArraysKt.s0(this.f3412a, obj);
    }

    @Override
    public ListIterator listIterator(int i10) {
        w.d.b(i10, size());
        return new b(this.f3412a, i10, size());
    }

    @Override
    public t.f set(int i10, Object obj) {
        w.d.a(i10, size());
        Object[] objArr = this.f3412a;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i10] = obj;
        return new h(objArrCopyOf);
    }

    @Override
    public t.f add(int i10, Object obj) {
        w.d.b(i10, size());
        if (i10 == size()) {
            return add(obj);
        }
        if (size() < 32) {
            Object[] objArrI = i(size() + 1);
            ArraysKt.p(this.f3412a, objArrI, 0, 0, i10, 6, null);
            ArraysKt.l(this.f3412a, objArrI, i10 + 1, i10, size());
            objArrI[i10] = obj;
            return new h(objArrI);
        }
        Object[] objArr = this.f3412a;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
        ArraysKt.l(this.f3412a, objArrCopyOf, i10 + 1, i10, size() - 1);
        objArrCopyOf[i10] = obj;
        return new d(objArrCopyOf, j.c(this.f3412a[31]), size() + 1, 0);
    }
}
