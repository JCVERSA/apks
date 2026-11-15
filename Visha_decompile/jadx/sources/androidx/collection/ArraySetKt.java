package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.exifinterface.media.ExifInterface;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.gslb.NetResponse;
import defpackage.fi;
import defpackage.i81;
import defpackage.y45;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0007\u001a\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000H\u0086\b¢\u0006\u0004\b\u0002\u0010\u0003\u001a-\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0004\"\u00028\u0000¢\u0006\u0004\b\u0002\u0010\u0006\u001a'\u0010\n\u001a\u00020\b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a1\u0010\u000e\u001a\u00020\b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001f\u0010\u0010\u001a\u00020\b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a'\u0010\u0014\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0012\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a \u0010\u0016\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0080\b¢\u0006\u0004\b\u0016\u0010\u0017\u001a(\u0010\u0019\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0018\u001a\u00020\bH\u0080\b¢\u0006\u0004\b\u0019\u0010\u0015\u001a(\u0010\u001c\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u001a\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\u001c\u0010\u001d\u001a*\u0010\u001e\u001a\u00020\b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0080\b¢\u0006\u0004\b\u001e\u0010\u001f\u001a(\u0010!\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010 \u001a\u00020\bH\u0080\b¢\u0006\u0004\b!\u0010\"\u001a \u0010#\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0080\b¢\u0006\u0004\b#\u0010$\u001a(\u0010%\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u001a\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b%\u0010\u001d\u001a0\u0010'\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\u000e\u0010&\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0001H\u0080\b¢\u0006\u0004\b'\u0010(\u001a(\u0010)\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u001a\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b)\u0010\u001d\u001a(\u0010*\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010 \u001a\u00020\bH\u0080\b¢\u0006\u0004\b*\u0010\"\u001a0\u0010+\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\u000e\u0010&\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0001H\u0080\b¢\u0006\u0004\b+\u0010,\u001a*\u0010.\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\u0010-\u001a\u0004\u0018\u00010\fH\u0080\b¢\u0006\u0004\b.\u0010\u001d\u001a \u0010/\u001a\u00020\b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0080\b¢\u0006\u0004\b/\u0010\u0011\u001a \u00101\u001a\u000200\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0080\b¢\u0006\u0004\b1\u00102\u001a.\u00105\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u00104\u001a\b\u0012\u0004\u0012\u00028\u000003H\u0080\b¢\u0006\u0004\b5\u00106\u001a.\u0010'\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u00104\u001a\b\u0012\u0004\u0012\u00028\u000003H\u0080\b¢\u0006\u0004\b'\u00106\u001a.\u0010+\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u00104\u001a\b\u0012\u0004\u0012\u00028\u000003H\u0080\b¢\u0006\u0004\b+\u00106\u001a.\u00107\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u00104\u001a\b\u0012\u0004\u0012\u00028\u000003H\u0080\b¢\u0006\u0004\b7\u00106\"\u0014\u00108\u001a\u00020\b8\u0000X\u0080T¢\u0006\u0006\n\u0004\b8\u00109¨\u0006:"}, d2 = {"T", "Landroidx/collection/ArraySet;", "arraySetOf", "()Landroidx/collection/ArraySet;", "", "values", "([Ljava/lang/Object;)Landroidx/collection/ArraySet;", ExifInterface.LONGITUDE_EAST, "", "hash", "binarySearchInternal", "(Landroidx/collection/ArraySet;I)I", "", "key", "indexOf", "(Landroidx/collection/ArraySet;Ljava/lang/Object;I)I", "indexOfNull", "(Landroidx/collection/ArraySet;)I", PlayAudioData.TAG_SIZE, "Lzfb;", "allocArrays", "(Landroidx/collection/ArraySet;I)V", "clearInternal", "(Landroidx/collection/ArraySet;)V", "minimumCapacity", "ensureCapacityInternal", "element", "", "containsInternal", "(Landroidx/collection/ArraySet;Ljava/lang/Object;)Z", "indexOfInternal", "(Landroidx/collection/ArraySet;Ljava/lang/Object;)I", "index", "valueAtInternal", "(Landroidx/collection/ArraySet;I)Ljava/lang/Object;", "isEmptyInternal", "(Landroidx/collection/ArraySet;)Z", "addInternal", "array", "addAllInternal", "(Landroidx/collection/ArraySet;Landroidx/collection/ArraySet;)V", "removeInternal", "removeAtInternal", "removeAllInternal", "(Landroidx/collection/ArraySet;Landroidx/collection/ArraySet;)Z", "other", "equalsInternal", "hashCodeInternal", "", "toStringInternal", "(Landroidx/collection/ArraySet;)Ljava/lang/String;", "", "elements", "containsAllInternal", "(Landroidx/collection/ArraySet;Ljava/util/Collection;)Z", "retainAllInternal", "ARRAY_SET_BASE_SIZE", "I", "collection"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ArraySetKt {
    public static final int ARRAY_SET_BASE_SIZE = 4;

    public static final <E> void addAllInternal(ArraySet<E> arraySet, ArraySet<? extends E> arraySet2) {
        y45.j(arraySet, "<this>");
        y45.j(arraySet2, "array");
        int i = arraySet2.get_size$collection();
        arraySet.ensureCapacity(arraySet.get_size$collection() + i);
        if (arraySet.get_size$collection() != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                arraySet.add(arraySet2.valueAt(i2));
            }
            return;
        }
        if (i > 0) {
            fi.o(arraySet2.getHashes(), arraySet.getHashes(), 0, 0, i, 6, null);
            fi.q(arraySet2.getArray(), arraySet.getArray(), 0, 0, i, 6, null);
            if (arraySet.get_size$collection() != 0) {
                throw new ConcurrentModificationException();
            }
            arraySet.set_size$collection(i);
        }
    }

    public static final <E> boolean addInternal(ArraySet<E> arraySet, E e) {
        int i;
        int iIndexOf;
        y45.j(arraySet, "<this>");
        int i2 = arraySet.get_size$collection();
        if (e == null) {
            iIndexOf = indexOfNull(arraySet);
            i = 0;
        } else {
            int iHashCode = e.hashCode();
            i = iHashCode;
            iIndexOf = indexOf(arraySet, e, iHashCode);
        }
        if (iIndexOf >= 0) {
            return false;
        }
        int i3 = ~iIndexOf;
        if (i2 >= arraySet.getHashes().length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            int[] hashes = arraySet.getHashes();
            Object[] array = arraySet.getArray();
            allocArrays(arraySet, i4);
            if (i2 != arraySet.get_size$collection()) {
                throw new ConcurrentModificationException();
            }
            if (!(arraySet.getHashes().length == 0)) {
                fi.o(hashes, arraySet.getHashes(), 0, 0, hashes.length, 6, null);
                fi.q(array, arraySet.getArray(), 0, 0, array.length, 6, null);
            }
        }
        if (i3 < i2) {
            int i5 = i3 + 1;
            fi.j(arraySet.getHashes(), arraySet.getHashes(), i5, i3, i2);
            fi.l(arraySet.getArray(), arraySet.getArray(), i5, i3, i2);
        }
        if (i2 != arraySet.get_size$collection() || i3 >= arraySet.getHashes().length) {
            throw new ConcurrentModificationException();
        }
        arraySet.getHashes()[i3] = i;
        arraySet.getArray()[i3] = e;
        arraySet.set_size$collection(arraySet.get_size$collection() + 1);
        return true;
    }

    public static final <E> void allocArrays(ArraySet<E> arraySet, int i) {
        y45.j(arraySet, "<this>");
        arraySet.setHashes$collection(new int[i]);
        arraySet.setArray$collection(new Object[i]);
    }

    public static final <T> ArraySet<T> arraySetOf() {
        return new ArraySet<>(0, 1, null);
    }

    public static final <E> int binarySearchInternal(ArraySet<E> arraySet, int i) {
        y45.j(arraySet, "<this>");
        try {
            return ContainerHelpersKt.binarySearch(arraySet.getHashes(), arraySet.get_size$collection(), i);
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static final <E> void clearInternal(ArraySet<E> arraySet) {
        y45.j(arraySet, "<this>");
        if (arraySet.get_size$collection() != 0) {
            arraySet.setHashes$collection(ContainerHelpersKt.EMPTY_INTS);
            arraySet.setArray$collection(ContainerHelpersKt.EMPTY_OBJECTS);
            arraySet.set_size$collection(0);
        }
        if (arraySet.get_size$collection() != 0) {
            throw new ConcurrentModificationException();
        }
    }

    public static final <E> boolean containsAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        y45.j(arraySet, "<this>");
        y45.j(collection, "elements");
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            if (!arraySet.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static final <E> boolean containsInternal(ArraySet<E> arraySet, E e) {
        y45.j(arraySet, "<this>");
        return arraySet.indexOf(e) >= 0;
    }

    public static final <E> void ensureCapacityInternal(ArraySet<E> arraySet, int i) {
        y45.j(arraySet, "<this>");
        int i2 = arraySet.get_size$collection();
        if (arraySet.getHashes().length < i) {
            int[] hashes = arraySet.getHashes();
            Object[] array = arraySet.getArray();
            allocArrays(arraySet, i);
            if (arraySet.get_size$collection() > 0) {
                fi.o(hashes, arraySet.getHashes(), 0, 0, arraySet.get_size$collection(), 6, null);
                fi.q(array, arraySet.getArray(), 0, 0, arraySet.get_size$collection(), 6, null);
            }
        }
        if (arraySet.get_size$collection() != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public static final <E> boolean equalsInternal(ArraySet<E> arraySet, Object obj) {
        y45.j(arraySet, "<this>");
        if (arraySet == obj) {
            return true;
        }
        if (!(obj instanceof Set) || arraySet.size() != ((Set) obj).size()) {
            return false;
        }
        try {
            int i = arraySet.get_size$collection();
            for (int i2 = 0; i2 < i; i2++) {
                if (!((Set) obj).contains(arraySet.valueAt(i2))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static final <E> int hashCodeInternal(ArraySet<E> arraySet) {
        y45.j(arraySet, "<this>");
        int[] hashes = arraySet.getHashes();
        int i = arraySet.get_size$collection();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += hashes[i3];
        }
        return i2;
    }

    public static final <E> int indexOf(ArraySet<E> arraySet, Object obj, int i) {
        y45.j(arraySet, "<this>");
        int i2 = arraySet.get_size$collection();
        if (i2 == 0) {
            return -1;
        }
        int iBinarySearchInternal = binarySearchInternal(arraySet, i);
        if (iBinarySearchInternal < 0 || y45.e(obj, arraySet.getArray()[iBinarySearchInternal])) {
            return iBinarySearchInternal;
        }
        int i3 = iBinarySearchInternal + 1;
        while (i3 < i2 && arraySet.getHashes()[i3] == i) {
            if (y45.e(obj, arraySet.getArray()[i3])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iBinarySearchInternal - 1; i4 >= 0 && arraySet.getHashes()[i4] == i; i4--) {
            if (y45.e(obj, arraySet.getArray()[i4])) {
                return i4;
            }
        }
        return ~i3;
    }

    public static final <E> int indexOfInternal(ArraySet<E> arraySet, Object obj) {
        y45.j(arraySet, "<this>");
        return obj == null ? indexOfNull(arraySet) : indexOf(arraySet, obj, obj.hashCode());
    }

    public static final <E> int indexOfNull(ArraySet<E> arraySet) {
        y45.j(arraySet, "<this>");
        return indexOf(arraySet, null, 0);
    }

    public static final <E> boolean isEmptyInternal(ArraySet<E> arraySet) {
        y45.j(arraySet, "<this>");
        return arraySet.get_size$collection() <= 0;
    }

    public static final <E> boolean removeAllInternal(ArraySet<E> arraySet, ArraySet<? extends E> arraySet2) {
        y45.j(arraySet, "<this>");
        y45.j(arraySet2, "array");
        int i = arraySet2.get_size$collection();
        int i2 = arraySet.get_size$collection();
        for (int i3 = 0; i3 < i; i3++) {
            arraySet.remove(arraySet2.valueAt(i3));
        }
        return i2 != arraySet.get_size$collection();
    }

    public static final <E> E removeAtInternal(ArraySet<E> arraySet, int i) {
        y45.j(arraySet, "<this>");
        int i2 = arraySet.get_size$collection();
        E e = (E) arraySet.getArray()[i];
        if (i2 <= 1) {
            arraySet.clear();
        } else {
            int i3 = i2 - 1;
            if (arraySet.getHashes().length <= 8 || arraySet.get_size$collection() >= arraySet.getHashes().length / 3) {
                if (i < i3) {
                    int i4 = i + 1;
                    fi.j(arraySet.getHashes(), arraySet.getHashes(), i, i4, i2);
                    fi.l(arraySet.getArray(), arraySet.getArray(), i, i4, i2);
                }
                arraySet.getArray()[i3] = null;
            } else {
                int i5 = arraySet.get_size$collection() > 8 ? arraySet.get_size$collection() + (arraySet.get_size$collection() >> 1) : 8;
                int[] hashes = arraySet.getHashes();
                Object[] array = arraySet.getArray();
                allocArrays(arraySet, i5);
                if (i > 0) {
                    fi.o(hashes, arraySet.getHashes(), 0, 0, i, 6, null);
                    fi.q(array, arraySet.getArray(), 0, 0, i, 6, null);
                }
                if (i < i3) {
                    int i6 = i + 1;
                    fi.j(hashes, arraySet.getHashes(), i, i6, i2);
                    fi.l(array, arraySet.getArray(), i, i6, i2);
                }
            }
            if (i2 != arraySet.get_size$collection()) {
                throw new ConcurrentModificationException();
            }
            arraySet.set_size$collection(i3);
        }
        return e;
    }

    public static final <E> boolean removeInternal(ArraySet<E> arraySet, E e) {
        y45.j(arraySet, "<this>");
        int iIndexOf = arraySet.indexOf(e);
        if (iIndexOf < 0) {
            return false;
        }
        arraySet.removeAt(iIndexOf);
        return true;
    }

    public static final <E> boolean retainAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        y45.j(arraySet, "<this>");
        y45.j(collection, "elements");
        boolean z = false;
        for (int i = arraySet.get_size$collection() - 1; -1 < i; i--) {
            if (!i81.d0(collection, arraySet.getArray()[i])) {
                arraySet.removeAt(i);
                z = true;
            }
        }
        return z;
    }

    public static final <E> String toStringInternal(ArraySet<E> arraySet) {
        y45.j(arraySet, "<this>");
        if (arraySet.isEmpty()) {
            return NetResponse.EMPTY_RESPONSE;
        }
        StringBuilder sb = new StringBuilder(arraySet.get_size$collection() * 14);
        sb.append('{');
        int i = arraySet.get_size$collection();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E eValueAt = arraySet.valueAt(i2);
            if (eValueAt != arraySet) {
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

    public static final <E> E valueAtInternal(ArraySet<E> arraySet, int i) {
        y45.j(arraySet, "<this>");
        return (E) arraySet.getArray()[i];
    }

    public static final <T> ArraySet<T> arraySetOf(T... tArr) {
        y45.j(tArr, "values");
        ArraySet<T> arraySet = new ArraySet<>(tArr.length);
        for (T t : tArr) {
            arraySet.add(t);
        }
        return arraySet;
    }

    public static final <E> boolean removeAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        y45.j(arraySet, "<this>");
        y45.j(collection, "elements");
        Iterator<? extends E> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= arraySet.remove(it.next());
        }
        return zRemove;
    }

    public static final <E> boolean addAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        y45.j(arraySet, "<this>");
        y45.j(collection, "elements");
        arraySet.ensureCapacity(arraySet.get_size$collection() + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= arraySet.add(it.next());
        }
        return zAdd;
    }
}
