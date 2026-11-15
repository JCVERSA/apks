package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.exifinterface.media.ExifInterface;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.gslb.NetResponse;
import defpackage.fi;
import defpackage.i81;
import defpackage.re5;
import defpackage.xg;
import defpackage.y45;
import defpackage.ze5;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0002\u0010#\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0016\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010)\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u0011\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001IB\u0013\b\u0007\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u001b\b\u0016\u0012\u0010\u0010\b\u001a\f\u0012\u0006\b\u0001\u0012\u00028\u0000\u0018\u00010\u0000¢\u0006\u0004\b\u0006\u0010\tB\u0019\b\u0016\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\u000bB\u001b\b\u0016\u0012\u0010\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u00028\u0000\u0018\u00010\f¢\u0006\u0004\b\u0006\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0004¢\u0006\u0004\b\u0013\u0010\u0007J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\u0004¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00028\u0000H\u0016¢\u0006\u0004\b!\u0010\u0017J\u001d\u0010\"\u001a\u00020\u000f2\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0000¢\u0006\u0004\b\"\u0010\tJ\u0017\u0010#\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00028\u0000H\u0016¢\u0006\u0004\b#\u0010\u0017J\u0015\u0010$\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\u0004¢\u0006\u0004\b$\u0010\u001eJ\u001d\u0010%\u001a\u00020\u00152\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0000¢\u0006\u0004\b%\u0010&J\u0015\u0010'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\f¢\u0006\u0004\b'\u0010(J'\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00010\f\"\u0004\b\u0001\u0010)2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\f¢\u0006\u0004\b'\u0010*J\u001a\u0010,\u001a\u00020\u00152\b\u0010+\u001a\u0004\u0018\u00010\u0018H\u0096\u0002¢\u0006\u0004\b,\u0010\u0017J\u000f\u0010-\u001a\u00020\u0004H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b0\u00101J\u0016\u00103\u001a\b\u0012\u0004\u0012\u00028\u000002H\u0096\u0002¢\u0006\u0004\b3\u00104J\u001d\u00106\u001a\u00020\u00152\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b6\u00107J\u001d\u0010\"\u001a\u00020\u00152\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b\"\u00107J\u001d\u0010%\u001a\u00020\u00152\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b%\u00107J\u001d\u00108\u001a\u00020\u00152\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b8\u00107R\"\u0010:\u001a\u0002098\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R*\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\r\u0010@\u001a\u0004\bA\u0010(\"\u0004\bB\u0010\u000eR\"\u0010C\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010.\"\u0004\bF\u0010\u0007R\u0014\u0010H\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010.¨\u0006J"}, d2 = {"Landroidx/collection/ArraySet;", ExifInterface.LONGITUDE_EAST, "", "", "", "capacity", MethodDecl.initName, "(I)V", "set", "(Landroidx/collection/ArraySet;)V", "", "(Ljava/util/Collection;)V", "", "array", "([Ljava/lang/Object;)V", "Lzfb;", "clear", "()V", "minimumCapacity", "ensureCapacity", "element", "", "contains", "(Ljava/lang/Object;)Z", "", "key", "indexOf", "(Ljava/lang/Object;)I", "index", "valueAt", "(I)Ljava/lang/Object;", "isEmpty", "()Z", "add", "addAll", "remove", "removeAt", "removeAll", "(Landroidx/collection/ArraySet;)Z", "toArray", "()[Ljava/lang/Object;", "T", "([Ljava/lang/Object;)[Ljava/lang/Object;", "other", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "", "iterator", "()Ljava/util/Iterator;", "elements", "containsAll", "(Ljava/util/Collection;)Z", "retainAll", "", "hashes", "[I", "getHashes$collection", "()[I", "setHashes$collection", "([I)V", "[Ljava/lang/Object;", "getArray$collection", "setArray$collection", "_size", "I", "get_size$collection", "set_size$collection", "getSize", PlayAudioData.TAG_SIZE, "ElementIterator", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ArraySet<E> implements Collection<E>, Set<E>, re5, ze5 {
    private int _size;
    private Object[] array;
    private int[] hashes;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/collection/ArraySet$ElementIterator;", "Landroidx/collection/IndexBasedArrayIterator;", MethodDecl.initName, "(Landroidx/collection/ArraySet;)V", "", "index", "elementAt", "(I)Ljava/lang/Object;", "Lzfb;", "removeAt", "(I)V", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class ElementIterator extends IndexBasedArrayIterator<E> {
        public ElementIterator() {
            super(ArraySet.this.get_size$collection());
        }

        @Override
        public E elementAt(int index) {
            return ArraySet.this.valueAt(index);
        }

        @Override
        public void removeAt(int index) {
            ArraySet.this.removeAt(index);
        }
    }

    public ArraySet() {
        this(0, 1, null);
    }

    @Override
    public boolean add(E element) {
        int i;
        int iIndexOf;
        int i2 = get_size$collection();
        if (element == null) {
            iIndexOf = ArraySetKt.indexOfNull(this);
            i = 0;
        } else {
            int iHashCode = element.hashCode();
            i = iHashCode;
            iIndexOf = ArraySetKt.indexOf(this, element, iHashCode);
        }
        if (iIndexOf >= 0) {
            return false;
        }
        int i3 = ~iIndexOf;
        if (i2 >= getHashes().length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            int[] hashes = getHashes();
            Object[] array = getArray();
            ArraySetKt.allocArrays(this, i4);
            if (i2 != get_size$collection()) {
                throw new ConcurrentModificationException();
            }
            if (!(getHashes().length == 0)) {
                fi.o(hashes, getHashes(), 0, 0, hashes.length, 6, null);
                fi.q(array, getArray(), 0, 0, array.length, 6, null);
            }
        }
        if (i3 < i2) {
            int i5 = i3 + 1;
            fi.j(getHashes(), getHashes(), i5, i3, i2);
            fi.l(getArray(), getArray(), i5, i3, i2);
        }
        if (i2 != get_size$collection() || i3 >= getHashes().length) {
            throw new ConcurrentModificationException();
        }
        getHashes()[i3] = i;
        getArray()[i3] = element;
        set_size$collection(get_size$collection() + 1);
        return true;
    }

    public final void addAll(ArraySet<? extends E> array) {
        y45.j(array, "array");
        int i = array.get_size$collection();
        ensureCapacity(get_size$collection() + i);
        if (get_size$collection() != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                add(array.valueAt(i2));
            }
            return;
        }
        if (i > 0) {
            fi.o(array.getHashes(), getHashes(), 0, 0, i, 6, null);
            fi.q(array.getArray(), getArray(), 0, 0, i, 6, null);
            if (get_size$collection() != 0) {
                throw new ConcurrentModificationException();
            }
            set_size$collection(i);
        }
    }

    @Override
    public void clear() {
        if (get_size$collection() != 0) {
            setHashes$collection(ContainerHelpersKt.EMPTY_INTS);
            setArray$collection(ContainerHelpersKt.EMPTY_OBJECTS);
            set_size$collection(0);
        }
        if (get_size$collection() != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override
    public boolean contains(Object element) {
        return indexOf(element) >= 0;
    }

    @Override
    public boolean containsAll(Collection<? extends Object> elements) {
        y45.j(elements, "elements");
        Iterator<? extends Object> it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final void ensureCapacity(int minimumCapacity) {
        int i = get_size$collection();
        if (getHashes().length < minimumCapacity) {
            int[] hashes = getHashes();
            Object[] array = getArray();
            ArraySetKt.allocArrays(this, minimumCapacity);
            if (get_size$collection() > 0) {
                fi.o(hashes, getHashes(), 0, 0, get_size$collection(), 6, null);
                fi.q(array, getArray(), 0, 0, get_size$collection(), 6, null);
            }
        }
        if (get_size$collection() != i) {
            throw new ConcurrentModificationException();
        }
    }

    @Override
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if ((other instanceof Set) && size() == ((Set) other).size()) {
            try {
                int i = get_size$collection();
                for (int i2 = 0; i2 < i; i2++) {
                    if (((Set) other).contains(valueAt(i2))) {
                    }
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public final Object[] getArray() {
        return this.array;
    }

    public final int[] getHashes() {
        return this.hashes;
    }

    public int get_size() {
        return this._size;
    }

    public final int get_size$collection() {
        return this._size;
    }

    @Override
    public int hashCode() {
        int[] hashes = getHashes();
        int i = get_size$collection();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += hashes[i3];
        }
        return i2;
    }

    public final int indexOf(Object key) {
        return key == null ? ArraySetKt.indexOfNull(this) : ArraySetKt.indexOf(this, key, key.hashCode());
    }

    @Override
    public boolean isEmpty() {
        return get_size$collection() <= 0;
    }

    @Override
    public Iterator<E> iterator() {
        return new ElementIterator();
    }

    @Override
    public boolean remove(Object element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final boolean removeAll(ArraySet<? extends E> array) {
        y45.j(array, "array");
        int i = array.get_size$collection();
        int i2 = get_size$collection();
        for (int i3 = 0; i3 < i; i3++) {
            remove(array.valueAt(i3));
        }
        return i2 != get_size$collection();
    }

    public final E removeAt(int index) {
        int i = get_size$collection();
        E e = (E) getArray()[index];
        if (i <= 1) {
            clear();
        } else {
            int i2 = i - 1;
            if (getHashes().length <= 8 || get_size$collection() >= getHashes().length / 3) {
                if (index < i2) {
                    int i3 = index + 1;
                    fi.j(getHashes(), getHashes(), index, i3, i);
                    fi.l(getArray(), getArray(), index, i3, i);
                }
                getArray()[i2] = null;
            } else {
                int i4 = get_size$collection() > 8 ? get_size$collection() + (get_size$collection() >> 1) : 8;
                int[] hashes = getHashes();
                Object[] array = getArray();
                ArraySetKt.allocArrays(this, i4);
                if (index > 0) {
                    fi.o(hashes, getHashes(), 0, 0, index, 6, null);
                    fi.q(array, getArray(), 0, 0, index, 6, null);
                }
                if (index < i2) {
                    int i5 = index + 1;
                    fi.j(hashes, getHashes(), index, i5, i);
                    fi.l(array, getArray(), index, i5, i);
                }
            }
            if (i != get_size$collection()) {
                throw new ConcurrentModificationException();
            }
            set_size$collection(i2);
        }
        return e;
    }

    @Override
    public boolean retainAll(Collection<? extends Object> elements) {
        y45.j(elements, "elements");
        boolean z = false;
        for (int i = get_size$collection() - 1; -1 < i; i--) {
            if (!i81.d0(elements, getArray()[i])) {
                removeAt(i);
                z = true;
            }
        }
        return z;
    }

    public final void setArray$collection(Object[] objArr) {
        y45.j(objArr, "<set-?>");
        this.array = objArr;
    }

    public final void setHashes$collection(int[] iArr) {
        y45.j(iArr, "<set-?>");
        this.hashes = iArr;
    }

    public final void set_size$collection(int i) {
        this._size = i;
    }

    @Override
    public final int size() {
        return get_size();
    }

    @Override
    public final Object[] toArray() {
        return fi.s(this.array, 0, this._size);
    }

    public String toString() {
        if (isEmpty()) {
            return NetResponse.EMPTY_RESPONSE;
        }
        StringBuilder sb = new StringBuilder(get_size$collection() * 14);
        sb.append('{');
        int i = get_size$collection();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E eValueAt = valueAt(i2);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        y45.i(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public final E valueAt(int index) {
        return (E) getArray()[index];
    }

    public ArraySet(int i) {
        this.hashes = ContainerHelpersKt.EMPTY_INTS;
        this.array = ContainerHelpersKt.EMPTY_OBJECTS;
        if (i > 0) {
            ArraySetKt.allocArrays(this, i);
        }
    }

    @Override
    public final <T> T[] toArray(T[] array) {
        y45.j(array, "array");
        T[] tArr = (T[]) ArraySetJvmUtil.resizeForToArray(array, this._size);
        fi.l(this.array, tArr, 0, 0, this._size);
        y45.i(tArr, "result");
        return tArr;
    }

    @Override
    public boolean removeAll(Collection<? extends Object> elements) {
        y45.j(elements, "elements");
        Iterator<? extends Object> it = elements.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    public ArraySet(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    public ArraySet(ArraySet<? extends E> arraySet) {
        this(0);
        if (arraySet != null) {
            addAll((ArraySet) arraySet);
        }
    }

    public ArraySet(Collection<? extends E> collection) {
        this(0);
        if (collection != null) {
            addAll(collection);
        }
    }

    @Override
    public boolean addAll(Collection<? extends E> elements) {
        y45.j(elements, "elements");
        ensureCapacity(get_size$collection() + elements.size());
        Iterator<? extends E> it = elements.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(E[] eArr) {
        this(0);
        if (eArr != null) {
            Iterator itA = xg.a(eArr);
            while (itA.hasNext()) {
                add(itA.next());
            }
        }
    }
}
