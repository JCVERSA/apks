package androidx.compose.runtime.collection;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;

public final class b implements RandomAccess {

    public static final int f3371d = 8;

    private Object[] f3372a;

    private List f3373b;

    private int f3374c;

    private static final class a implements List, KMutableList {

        private final b f3375a;

        public a(b bVar) {
            this.f3375a = bVar;
        }

        public int a() {
            return this.f3375a.n();
        }

        @Override
        public boolean add(Object obj) {
            return this.f3375a.b(obj);
        }

        @Override
        public boolean addAll(int i10, Collection collection) {
            return this.f3375a.d(i10, collection);
        }

        public Object c(int i10) {
            androidx.compose.runtime.collection.c.c(this, i10);
            return this.f3375a.v(i10);
        }

        @Override
        public void clear() {
            this.f3375a.h();
        }

        @Override
        public boolean contains(Object obj) {
            return this.f3375a.i(obj);
        }

        @Override
        public boolean containsAll(Collection collection) {
            return this.f3375a.j(collection);
        }

        @Override
        public Object get(int i10) {
            androidx.compose.runtime.collection.c.c(this, i10);
            return this.f3375a.m()[i10];
        }

        @Override
        public int indexOf(Object obj) {
            return this.f3375a.o(obj);
        }

        @Override
        public boolean isEmpty() {
            return this.f3375a.p();
        }

        @Override
        public Iterator iterator() {
            return new c(this, 0);
        }

        @Override
        public int lastIndexOf(Object obj) {
            return this.f3375a.s(obj);
        }

        @Override
        public ListIterator listIterator() {
            return new c(this, 0);
        }

        @Override
        public final Object remove(int i10) {
            return c(i10);
        }

        @Override
        public boolean removeAll(Collection collection) {
            return this.f3375a.u(collection);
        }

        @Override
        public boolean retainAll(Collection collection) {
            return this.f3375a.x(collection);
        }

        @Override
        public Object set(int i10, Object obj) {
            androidx.compose.runtime.collection.c.c(this, i10);
            return this.f3375a.y(i10, obj);
        }

        @Override
        public final int size() {
            return a();
        }

        @Override
        public List subList(int i10, int i11) {
            androidx.compose.runtime.collection.c.d(this, i10, i11);
            return new C0032b(this, i10, i11);
        }

        @Override
        public Object[] toArray() {
            return CollectionToArray.a(this);
        }

        @Override
        public void add(int i10, Object obj) {
            this.f3375a.a(i10, obj);
        }

        @Override
        public boolean addAll(Collection collection) {
            return this.f3375a.f(collection);
        }

        @Override
        public ListIterator listIterator(int i10) {
            return new c(this, i10);
        }

        @Override
        public boolean remove(Object obj) {
            return this.f3375a.t(obj);
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return CollectionToArray.b(this, objArr);
        }
    }

    private static final class C0032b implements List, KMutableList {

        private final List f3376a;

        private final int f3377b;

        private int f3378c;

        public C0032b(List list, int i10, int i11) {
            this.f3376a = list;
            this.f3377b = i10;
            this.f3378c = i11;
        }

        public int a() {
            return this.f3378c - this.f3377b;
        }

        @Override
        public boolean add(Object obj) {
            List list = this.f3376a;
            int i10 = this.f3378c;
            this.f3378c = i10 + 1;
            list.add(i10, obj);
            return true;
        }

        @Override
        public boolean addAll(int i10, Collection collection) {
            this.f3376a.addAll(i10 + this.f3377b, collection);
            this.f3378c += collection.size();
            return collection.size() > 0;
        }

        public Object c(int i10) {
            androidx.compose.runtime.collection.c.c(this, i10);
            Object objRemove = this.f3376a.remove(i10 + this.f3377b);
            this.f3378c--;
            return objRemove;
        }

        @Override
        public void clear() {
            int i10 = this.f3378c - 1;
            int i11 = this.f3377b;
            if (i11 <= i10) {
                while (true) {
                    this.f3376a.remove(i10);
                    if (i10 == i11) {
                        break;
                    } else {
                        i10--;
                    }
                }
            }
            this.f3378c = this.f3377b;
        }

        @Override
        public boolean contains(Object obj) {
            int i10 = this.f3378c;
            for (int i11 = this.f3377b; i11 < i10; i11++) {
                if (Intrinsics.c(this.f3376a.get(i11), obj)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public Object get(int i10) {
            androidx.compose.runtime.collection.c.c(this, i10);
            return this.f3376a.get(i10 + this.f3377b);
        }

        @Override
        public int indexOf(Object obj) {
            int i10 = this.f3378c;
            for (int i11 = this.f3377b; i11 < i10; i11++) {
                if (Intrinsics.c(this.f3376a.get(i11), obj)) {
                    return i11 - this.f3377b;
                }
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return this.f3378c == this.f3377b;
        }

        @Override
        public Iterator iterator() {
            return new c(this, 0);
        }

        @Override
        public int lastIndexOf(Object obj) {
            int i10 = this.f3378c - 1;
            int i11 = this.f3377b;
            if (i11 > i10) {
                return -1;
            }
            while (!Intrinsics.c(this.f3376a.get(i10), obj)) {
                if (i10 == i11) {
                    return -1;
                }
                i10--;
            }
            return i10 - this.f3377b;
        }

        @Override
        public ListIterator listIterator() {
            return new c(this, 0);
        }

        @Override
        public final Object remove(int i10) {
            return c(i10);
        }

        @Override
        public boolean removeAll(Collection collection) {
            int i10 = this.f3378c;
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                remove(it.next());
            }
            return i10 != this.f3378c;
        }

        @Override
        public boolean retainAll(Collection collection) {
            int i10 = this.f3378c;
            int i11 = i10 - 1;
            int i12 = this.f3377b;
            if (i12 <= i11) {
                while (true) {
                    if (!collection.contains(this.f3376a.get(i11))) {
                        this.f3376a.remove(i11);
                        this.f3378c--;
                    }
                    if (i11 == i12) {
                        break;
                    }
                    i11--;
                }
            }
            return i10 != this.f3378c;
        }

        @Override
        public Object set(int i10, Object obj) {
            androidx.compose.runtime.collection.c.c(this, i10);
            return this.f3376a.set(i10 + this.f3377b, obj);
        }

        @Override
        public final int size() {
            return a();
        }

        @Override
        public List subList(int i10, int i11) {
            androidx.compose.runtime.collection.c.d(this, i10, i11);
            return new C0032b(this, i10, i11);
        }

        @Override
        public Object[] toArray() {
            return CollectionToArray.a(this);
        }

        @Override
        public void add(int i10, Object obj) {
            this.f3376a.add(i10 + this.f3377b, obj);
            this.f3378c++;
        }

        @Override
        public ListIterator listIterator(int i10) {
            return new c(this, i10);
        }

        @Override
        public boolean remove(Object obj) {
            int i10 = this.f3378c;
            for (int i11 = this.f3377b; i11 < i10; i11++) {
                if (Intrinsics.c(this.f3376a.get(i11), obj)) {
                    this.f3376a.remove(i11);
                    this.f3378c--;
                    return true;
                }
            }
            return false;
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return CollectionToArray.b(this, objArr);
        }

        @Override
        public boolean addAll(Collection collection) {
            this.f3376a.addAll(this.f3378c, collection);
            this.f3378c += collection.size();
            return collection.size() > 0;
        }
    }

    private static final class c implements ListIterator, KMutableListIterator {

        private final List f3379a;

        private int f3380b;

        public c(List list, int i10) {
            this.f3379a = list;
            this.f3380b = i10;
        }

        @Override
        public void add(Object obj) {
            this.f3379a.add(this.f3380b, obj);
            this.f3380b++;
        }

        @Override
        public boolean hasNext() {
            return this.f3380b < this.f3379a.size();
        }

        @Override
        public boolean hasPrevious() {
            return this.f3380b > 0;
        }

        @Override
        public Object next() {
            List list = this.f3379a;
            int i10 = this.f3380b;
            this.f3380b = i10 + 1;
            return list.get(i10);
        }

        @Override
        public int nextIndex() {
            return this.f3380b;
        }

        @Override
        public Object previous() {
            int i10 = this.f3380b - 1;
            this.f3380b = i10;
            return this.f3379a.get(i10);
        }

        @Override
        public int previousIndex() {
            return this.f3380b - 1;
        }

        @Override
        public void remove() {
            int i10 = this.f3380b - 1;
            this.f3380b = i10;
            this.f3379a.remove(i10);
        }

        @Override
        public void set(Object obj) {
            this.f3379a.set(this.f3380b, obj);
        }
    }

    public b(Object[] objArr, int i10) {
        this.f3372a = objArr;
        this.f3374c = i10;
    }

    public final void A(Comparator comparator) {
        ArraysKt.F(this.f3372a, comparator, 0, this.f3374c);
    }

    public final void a(int i10, Object obj) {
        k(this.f3374c + 1);
        Object[] objArr = this.f3372a;
        int i11 = this.f3374c;
        if (i10 != i11) {
            ArraysKt.l(objArr, objArr, i10 + 1, i10, i11);
        }
        objArr[i10] = obj;
        this.f3374c++;
    }

    public final boolean b(Object obj) {
        k(this.f3374c + 1);
        Object[] objArr = this.f3372a;
        int i10 = this.f3374c;
        objArr[i10] = obj;
        this.f3374c = i10 + 1;
        return true;
    }

    public final boolean c(int i10, b bVar) {
        if (bVar.p()) {
            return false;
        }
        k(this.f3374c + bVar.f3374c);
        Object[] objArr = this.f3372a;
        int i11 = this.f3374c;
        if (i10 != i11) {
            ArraysKt.l(objArr, objArr, bVar.f3374c + i10, i10, i11);
        }
        ArraysKt.l(bVar.f3372a, objArr, i10, 0, bVar.f3374c);
        this.f3374c += bVar.f3374c;
        return true;
    }

    public final boolean d(int i10, Collection collection) {
        int i11 = 0;
        if (collection.isEmpty()) {
            return false;
        }
        k(this.f3374c + collection.size());
        Object[] objArr = this.f3372a;
        if (i10 != this.f3374c) {
            ArraysKt.l(objArr, objArr, collection.size() + i10, i10, this.f3374c);
        }
        for (Object obj : collection) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            objArr[i11 + i10] = obj;
            i11 = i12;
        }
        this.f3374c += collection.size();
        return true;
    }

    public final boolean e(int i10, List list) {
        if (list.isEmpty()) {
            return false;
        }
        k(this.f3374c + list.size());
        Object[] objArr = this.f3372a;
        if (i10 != this.f3374c) {
            ArraysKt.l(objArr, objArr, list.size() + i10, i10, this.f3374c);
        }
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i10 + i11] = list.get(i11);
        }
        this.f3374c += list.size();
        return true;
    }

    public final boolean f(Collection collection) {
        return d(this.f3374c, collection);
    }

    public final List g() {
        List list = this.f3373b;
        if (list != null) {
            return list;
        }
        a aVar = new a(this);
        this.f3373b = aVar;
        return aVar;
    }

    public final void h() {
        Object[] objArr = this.f3372a;
        int iN = n();
        while (true) {
            iN--;
            if (-1 >= iN) {
                this.f3374c = 0;
                return;
            }
            objArr[iN] = null;
        }
    }

    public final boolean i(Object obj) {
        int iN = n() - 1;
        if (iN >= 0) {
            for (int i10 = 0; !Intrinsics.c(m()[i10], obj); i10++) {
                if (i10 != iN) {
                }
            }
            return true;
        }
        return false;
    }

    public final boolean j(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!i(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final void k(int i10) {
        Object[] objArr = this.f3372a;
        if (objArr.length < i10) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, Math.max(i10, objArr.length * 2));
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f3372a = objArrCopyOf;
        }
    }

    public final Object l() {
        if (p()) {
            throw new NoSuchElementException("MutableVector is empty.");
        }
        return m()[0];
    }

    public final Object[] m() {
        return this.f3372a;
    }

    public final int n() {
        return this.f3374c;
    }

    public final int o(Object obj) {
        int i10 = this.f3374c;
        if (i10 <= 0) {
            return -1;
        }
        Object[] objArr = this.f3372a;
        int i11 = 0;
        while (!Intrinsics.c(obj, objArr[i11])) {
            i11++;
            if (i11 >= i10) {
                return -1;
            }
        }
        return i11;
    }

    public final boolean p() {
        return this.f3374c == 0;
    }

    public final boolean q() {
        return this.f3374c != 0;
    }

    public final Object r() {
        if (p()) {
            throw new NoSuchElementException("MutableVector is empty.");
        }
        return m()[n() - 1];
    }

    public final int s(Object obj) {
        int i10 = this.f3374c;
        if (i10 <= 0) {
            return -1;
        }
        int i11 = i10 - 1;
        Object[] objArr = this.f3372a;
        while (!Intrinsics.c(obj, objArr[i11])) {
            i11--;
            if (i11 < 0) {
                return -1;
            }
        }
        return i11;
    }

    public final boolean t(Object obj) {
        int iO = o(obj);
        if (iO < 0) {
            return false;
        }
        v(iO);
        return true;
    }

    public final boolean u(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int i10 = this.f3374c;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            t(it.next());
        }
        return i10 != this.f3374c;
    }

    public final Object v(int i10) {
        Object[] objArr = this.f3372a;
        Object obj = objArr[i10];
        if (i10 != n() - 1) {
            ArraysKt.l(objArr, objArr, i10, i10 + 1, this.f3374c);
        }
        int i11 = this.f3374c - 1;
        this.f3374c = i11;
        objArr[i11] = null;
        return obj;
    }

    public final void w(int i10, int i11) {
        if (i11 > i10) {
            int i12 = this.f3374c;
            if (i11 < i12) {
                Object[] objArr = this.f3372a;
                ArraysKt.l(objArr, objArr, i10, i11, i12);
            }
            int i13 = this.f3374c - (i11 - i10);
            int iN = n() - 1;
            if (i13 <= iN) {
                int i14 = i13;
                while (true) {
                    this.f3372a[i14] = null;
                    if (i14 == iN) {
                        break;
                    } else {
                        i14++;
                    }
                }
            }
            this.f3374c = i13;
        }
    }

    public final boolean x(Collection collection) {
        int i10 = this.f3374c;
        for (int iN = n() - 1; -1 < iN; iN--) {
            if (!collection.contains(m()[iN])) {
                v(iN);
            }
        }
        return i10 != this.f3374c;
    }

    public final Object y(int i10, Object obj) {
        Object[] objArr = this.f3372a;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        return obj2;
    }

    public final void z(int i10) {
        this.f3374c = i10;
    }
}
