package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public class a extends x0 implements Map {

    @Nullable
    androidx.collection.a.a mEntrySet;

    @Nullable
    androidx.collection.a.c mKeySet;

    @Nullable
    androidx.collection.a.e mValues;

    final class C0019a extends AbstractSet {
        C0019a() {
        }

        @Override
        public Iterator iterator() {
            return a.this.new d();
        }

        @Override
        public int size() {
            return a.this.size();
        }
    }

    final class b extends k {
        b() {
            super(a.this.size());
        }

        @Override
        protected Object a(int i10) {
            return a.this.keyAt(i10);
        }

        @Override
        protected void c(int i10) {
            a.this.removeAt(i10);
        }
    }

    final class d implements Iterator, Map.Entry {

        int f1945a;

        int f1946b = -1;

        boolean f1947c;

        d() {
            this.f1945a = a.this.size() - 1;
        }

        @Override
        public Map.Entry next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f1946b++;
            this.f1947c = true;
            return this;
        }

        @Override
        public boolean equals(Object obj) {
            if (!this.f1947c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return n.a.c(entry.getKey(), a.this.keyAt(this.f1946b)) && n.a.c(entry.getValue(), a.this.valueAt(this.f1946b));
        }

        @Override
        public Object getKey() {
            if (this.f1947c) {
                return a.this.keyAt(this.f1946b);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override
        public Object getValue() {
            if (this.f1947c) {
                return a.this.valueAt(this.f1946b);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override
        public boolean hasNext() {
            return this.f1946b < this.f1945a;
        }

        @Override
        public int hashCode() {
            if (!this.f1947c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object objKeyAt = a.this.keyAt(this.f1946b);
            Object objValueAt = a.this.valueAt(this.f1946b);
            return (objKeyAt == null ? 0 : objKeyAt.hashCode()) ^ (objValueAt != null ? objValueAt.hashCode() : 0);
        }

        @Override
        public void remove() {
            if (!this.f1947c) {
                throw new IllegalStateException();
            }
            a.this.removeAt(this.f1946b);
            this.f1946b--;
            this.f1945a--;
            this.f1947c = false;
        }

        @Override
        public Object setValue(Object obj) {
            if (this.f1947c) {
                return a.this.setValueAt(this.f1946b, obj);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + UrlUtils.EQUAL_MARK + getValue();
        }
    }

    final class f extends k {
        f() {
            super(a.this.size());
        }

        @Override
        protected Object a(int i10) {
            return a.this.valueAt(i10);
        }

        @Override
        protected void c(int i10) {
            a.this.removeAt(i10);
        }
    }

    public a() {
    }

    static <T> boolean equalsSetHelper(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean containsKey(@Nullable Object obj) {
        return super.containsKey(obj);
    }

    @Override
    public boolean containsValue(@Nullable Object obj) {
        return super.containsValue(obj);
    }

    @Override
    @NonNull
    public Set<Map.Entry<Object, Object>> entrySet() {
        androidx.collection.a.a aVar = this.mEntrySet;
        if (aVar != null) {
            return aVar;
        }
        C0019a c0019a = new C0019a();
        this.mEntrySet = c0019a;
        return c0019a;
    }

    @Override
    public Object get(@Nullable Object obj) {
        return super.get(obj);
    }

    @Override
    @NonNull
    public Set<Object> keySet() {
        androidx.collection.a.c cVar = this.mKeySet;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c();
        this.mKeySet = cVar2;
        return cVar2;
    }

    @Override
    public void putAll(@NonNull Map<Object, Object> map) {
        ensureCapacity(size() + map.size());
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public Object remove(@Nullable Object obj) {
        return super.remove(obj);
    }

    public boolean removeAll(@NonNull Collection<?> collection) {
        int size = size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
        return size != size();
    }

    public boolean retainAll(@NonNull Collection<?> collection) {
        int size = size();
        for (int size2 = size() - 1; size2 >= 0; size2--) {
            if (!collection.contains(keyAt(size2))) {
                removeAt(size2);
            }
        }
        return size != size();
    }

    @Override
    @NonNull
    public Collection<Object> values() {
        androidx.collection.a.e eVar = this.mValues;
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e();
        this.mValues = eVar2;
        return eVar2;
    }

    public a(int i10) {
        super(i10);
    }

    final class c implements Set {
        c() {
        }

        @Override
        public boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            a.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return a.this.containsKey(obj);
        }

        @Override
        public boolean containsAll(Collection collection) {
            return a.this.containsAll(collection);
        }

        @Override
        public boolean equals(Object obj) {
            return a.equalsSetHelper(this, obj);
        }

        @Override
        public int hashCode() {
            int iHashCode = 0;
            for (int size = a.this.size() - 1; size >= 0; size--) {
                Object objKeyAt = a.this.keyAt(size);
                iHashCode += objKeyAt == null ? 0 : objKeyAt.hashCode();
            }
            return iHashCode;
        }

        @Override
        public boolean isEmpty() {
            return a.this.isEmpty();
        }

        @Override
        public Iterator iterator() {
            return a.this.new b();
        }

        @Override
        public boolean remove(Object obj) {
            int iIndexOfKey = a.this.indexOfKey(obj);
            if (iIndexOfKey < 0) {
                return false;
            }
            a.this.removeAt(iIndexOfKey);
            return true;
        }

        @Override
        public boolean removeAll(Collection collection) {
            return a.this.removeAll(collection);
        }

        @Override
        public boolean retainAll(Collection collection) {
            return a.this.retainAll(collection);
        }

        @Override
        public int size() {
            return a.this.size();
        }

        @Override
        public Object[] toArray() {
            int size = a.this.size();
            Object[] objArr = new Object[size];
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = a.this.keyAt(i10);
            }
            return objArr;
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            int size = size();
            if (objArr.length < size) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), size);
            }
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = a.this.keyAt(i10);
            }
            if (objArr.length > size) {
                objArr[size] = null;
            }
            return objArr;
        }
    }

    final class e implements Collection {
        e() {
        }

        @Override
        public boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            a.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return a.this.__restricted$indexOfValue(obj) >= 0;
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
        public boolean isEmpty() {
            return a.this.isEmpty();
        }

        @Override
        public Iterator iterator() {
            return a.this.new f();
        }

        @Override
        public boolean remove(Object obj) {
            int i__restricted$indexOfValue = a.this.__restricted$indexOfValue(obj);
            if (i__restricted$indexOfValue < 0) {
                return false;
            }
            a.this.removeAt(i__restricted$indexOfValue);
            return true;
        }

        @Override
        public boolean removeAll(Collection collection) {
            int size = a.this.size();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < size) {
                if (collection.contains(a.this.valueAt(i10))) {
                    a.this.removeAt(i10);
                    i10--;
                    size--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection collection) {
            int size = a.this.size();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < size) {
                if (!collection.contains(a.this.valueAt(i10))) {
                    a.this.removeAt(i10);
                    i10--;
                    size--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override
        public int size() {
            return a.this.size();
        }

        @Override
        public Object[] toArray() {
            int size = a.this.size();
            Object[] objArr = new Object[size];
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = a.this.valueAt(i10);
            }
            return objArr;
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            int size = size();
            if (objArr.length < size) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), size);
            }
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = a.this.valueAt(i10);
            }
            if (objArr.length > size) {
                objArr[size] = null;
            }
            return objArr;
        }
    }

    public a(x0 x0Var) {
        super(x0Var);
    }
}
