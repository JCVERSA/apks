package androidx.collection;

import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class x0 {
    private Object[] array;
    private int[] hashes;
    private int size;

    @JvmOverloads
    public x0() {
        this(0, 1, null);
    }

    private final int a(Object obj, int i10) {
        int i11 = this.size;
        if (i11 == 0) {
            return -1;
        }
        int iA = n.a.a(this.hashes, i11, i10);
        if (iA < 0 || Intrinsics.c(obj, this.array[iA << 1])) {
            return iA;
        }
        int i12 = iA + 1;
        while (i12 < i11 && this.hashes[i12] == i10) {
            if (Intrinsics.c(obj, this.array[i12 << 1])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iA - 1; i13 >= 0 && this.hashes[i13] == i10; i13--) {
            if (Intrinsics.c(obj, this.array[i13 << 1])) {
                return i13;
            }
        }
        return ~i12;
    }

    private final int c() {
        int i10 = this.size;
        if (i10 == 0) {
            return -1;
        }
        int iA = n.a.a(this.hashes, i10, 0);
        if (iA < 0 || this.array[iA << 1] == null) {
            return iA;
        }
        int i11 = iA + 1;
        while (i11 < i10 && this.hashes[i11] == 0) {
            if (this.array[i11 << 1] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iA - 1; i12 >= 0 && this.hashes[i12] == 0; i12--) {
            if (this.array[i12 << 1] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    @JvmName
    public final int __restricted$indexOfValue(Object obj) {
        int i10 = this.size * 2;
        Object[] objArr = this.array;
        if (obj == null) {
            for (int i11 = 1; i11 < i10; i11 += 2) {
                if (objArr[i11] == null) {
                    return i11 >> 1;
                }
            }
            return -1;
        }
        for (int i12 = 1; i12 < i10; i12 += 2) {
            if (Intrinsics.c(obj, objArr[i12])) {
                return i12 >> 1;
            }
        }
        return -1;
    }

    public void clear() {
        if (this.size > 0) {
            this.hashes = n.a.f66842a;
            this.array = n.a.f66844c;
            this.size = 0;
        }
        if (this.size > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return indexOfKey(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return __restricted$indexOfValue(obj) >= 0;
    }

    public void ensureCapacity(int i10) {
        int i11 = this.size;
        int[] iArr = this.hashes;
        if (iArr.length < i10) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, i10);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.hashes = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.array, i10 * 2);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.array = objArrCopyOf;
        }
        if (this.size != i11) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof x0) {
                if (size() != ((x0) obj).size()) {
                    return false;
                }
                x0 x0Var = (x0) obj;
                int i10 = this.size;
                for (int i11 = 0; i11 < i10; i11++) {
                    Object objKeyAt = keyAt(i11);
                    Object objValueAt = valueAt(i11);
                    Object obj2 = x0Var.get(objKeyAt);
                    if (objValueAt == null) {
                        if (obj2 != null || !x0Var.containsKey(objKeyAt)) {
                            return false;
                        }
                    } else if (!Intrinsics.c(objValueAt, obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || size() != ((Map) obj).size()) {
                return false;
            }
            int i12 = this.size;
            for (int i13 = 0; i13 < i12; i13++) {
                Object objKeyAt2 = keyAt(i13);
                Object objValueAt2 = valueAt(i13);
                Object obj3 = ((Map) obj).get(objKeyAt2);
                if (objValueAt2 == null) {
                    if (obj3 != null || !((Map) obj).containsKey(objKeyAt2)) {
                        return false;
                    }
                } else if (!Intrinsics.c(objValueAt2, obj3)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public Object get(Object obj) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey >= 0) {
            return this.array[(iIndexOfKey << 1) + 1];
        }
        return null;
    }

    public Object getOrDefault(Object obj, Object obj2) {
        int iIndexOfKey = indexOfKey(obj);
        return iIndexOfKey >= 0 ? this.array[(iIndexOfKey << 1) + 1] : obj2;
    }

    public int hashCode() {
        int[] iArr = this.hashes;
        Object[] objArr = this.array;
        int i10 = this.size;
        int i11 = 1;
        int i12 = 0;
        int iHashCode = 0;
        while (i12 < i10) {
            Object obj = objArr[i11];
            iHashCode += (obj != null ? obj.hashCode() : 0) ^ iArr[i12];
            i12++;
            i11 += 2;
        }
        return iHashCode;
    }

    public int indexOfKey(Object obj) {
        return obj == null ? c() : a(obj, obj.hashCode());
    }

    public boolean isEmpty() {
        return this.size <= 0;
    }

    public Object keyAt(int i10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.size) {
            z10 = true;
        }
        if (!z10) {
            n.d.a("Expected index to be within 0..size()-1, but was " + i10);
        }
        return this.array[i10 << 1];
    }

    public Object put(Object obj, Object obj2) {
        int i10 = this.size;
        int iHashCode = obj != null ? obj.hashCode() : 0;
        int iA = obj != null ? a(obj, iHashCode) : c();
        if (iA >= 0) {
            int i11 = (iA << 1) + 1;
            Object[] objArr = this.array;
            Object obj3 = objArr[i11];
            objArr[i11] = obj2;
            return obj3;
        }
        int i12 = ~iA;
        int[] iArr = this.hashes;
        if (i10 >= iArr.length) {
            int i13 = 8;
            if (i10 >= 8) {
                i13 = (i10 >> 1) + i10;
            } else if (i10 < 4) {
                i13 = 4;
            }
            int[] iArrCopyOf = Arrays.copyOf(iArr, i13);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.hashes = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.array, i13 << 1);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.array = objArrCopyOf;
            if (i10 != this.size) {
                throw new ConcurrentModificationException();
            }
        }
        if (i12 < i10) {
            int[] iArr2 = this.hashes;
            int i14 = i12 + 1;
            ArraysKt.j(iArr2, iArr2, i14, i12, i10);
            Object[] objArr2 = this.array;
            ArraysKt.l(objArr2, objArr2, i14 << 1, i12 << 1, this.size << 1);
        }
        int i15 = this.size;
        if (i10 == i15) {
            int[] iArr3 = this.hashes;
            if (i12 < iArr3.length) {
                iArr3[i12] = iHashCode;
                Object[] objArr3 = this.array;
                int i16 = i12 << 1;
                objArr3[i16] = obj;
                objArr3[i16 + 1] = obj2;
                this.size = i15 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public void putAll(x0 map) {
        Intrinsics.h(map, "map");
        int i10 = map.size;
        ensureCapacity(this.size + i10);
        if (this.size != 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                put(map.keyAt(i11), map.valueAt(i11));
            }
        } else if (i10 > 0) {
            ArraysKt.j(map.hashes, this.hashes, 0, 0, i10);
            ArraysKt.l(map.array, this.array, 0, 0, i10 << 1);
            this.size = i10;
        }
    }

    public Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? put(obj, obj2) : obj3;
    }

    public Object remove(Object obj) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey >= 0) {
            return removeAt(iIndexOfKey);
        }
        return null;
    }

    public Object removeAt(int i10) {
        if (!(i10 >= 0 && i10 < this.size)) {
            n.d.a("Expected index to be within 0..size()-1, but was " + i10);
        }
        Object[] objArr = this.array;
        int i11 = i10 << 1;
        Object obj = objArr[i11 + 1];
        int i12 = this.size;
        if (i12 <= 1) {
            clear();
        } else {
            int i13 = i12 - 1;
            int[] iArr = this.hashes;
            if (iArr.length <= 8 || i12 >= iArr.length / 3) {
                if (i10 < i13) {
                    int i14 = i10 + 1;
                    ArraysKt.j(iArr, iArr, i10, i14, i12);
                    Object[] objArr2 = this.array;
                    ArraysKt.l(objArr2, objArr2, i11, i14 << 1, i12 << 1);
                }
                Object[] objArr3 = this.array;
                int i15 = i13 << 1;
                objArr3[i15] = null;
                objArr3[i15 + 1] = null;
            } else {
                int i16 = i12 > 8 ? i12 + (i12 >> 1) : 8;
                int[] iArrCopyOf = Arrays.copyOf(iArr, i16);
                Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
                this.hashes = iArrCopyOf;
                Object[] objArrCopyOf = Arrays.copyOf(this.array, i16 << 1);
                Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
                this.array = objArrCopyOf;
                if (i12 != this.size) {
                    throw new ConcurrentModificationException();
                }
                if (i10 > 0) {
                    ArraysKt.j(iArr, this.hashes, 0, 0, i10);
                    ArraysKt.l(objArr, this.array, 0, 0, i11);
                }
                if (i10 < i13) {
                    int i17 = i10 + 1;
                    ArraysKt.j(iArr, this.hashes, i10, i17, i12);
                    ArraysKt.l(objArr, this.array, i11, i17 << 1, i12 << 1);
                }
            }
            if (i12 != this.size) {
                throw new ConcurrentModificationException();
            }
            this.size = i13;
        }
        return obj;
    }

    public Object replace(Object obj, Object obj2) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey >= 0) {
            return setValueAt(iIndexOfKey, obj2);
        }
        return null;
    }

    public Object setValueAt(int i10, Object obj) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.size) {
            z10 = true;
        }
        if (!z10) {
            n.d.a("Expected index to be within 0..size()-1, but was " + i10);
        }
        int i11 = (i10 << 1) + 1;
        Object[] objArr = this.array;
        Object obj2 = objArr[i11];
        objArr[i11] = obj;
        return obj2;
    }

    public int size() {
        return this.size;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.size * 28);
        sb2.append('{');
        int i10 = this.size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            Object objKeyAt = keyAt(i11);
            if (objKeyAt != sb2) {
                sb2.append(objKeyAt);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            Object objValueAt = valueAt(i11);
            if (objValueAt != sb2) {
                sb2.append(objValueAt);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public Object valueAt(int i10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.size) {
            z10 = true;
        }
        if (!z10) {
            n.d.a("Expected index to be within 0..size()-1, but was " + i10);
        }
        return this.array[(i10 << 1) + 1];
    }

    public x0(int i10) {
        this.hashes = i10 == 0 ? n.a.f66842a : new int[i10];
        this.array = i10 == 0 ? n.a.f66844c : new Object[i10 << 1];
    }

    public boolean remove(Object obj, Object obj2) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey < 0 || !Intrinsics.c(obj2, valueAt(iIndexOfKey))) {
            return false;
        }
        removeAt(iIndexOfKey);
        return true;
    }

    public boolean replace(Object obj, Object obj2, Object obj3) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey < 0 || !Intrinsics.c(obj2, valueAt(iIndexOfKey))) {
            return false;
        }
        setValueAt(iIndexOfKey, obj3);
        return true;
    }

    public x0(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }

    public x0(x0 x0Var) {
        this(0, 1, null);
        if (x0Var != null) {
            putAll(x0Var);
        }
    }
}
