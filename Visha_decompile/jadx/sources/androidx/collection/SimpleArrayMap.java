package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.exifinterface.media.ExifInterface;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.gslb.NetResponse;
import defpackage.fi;
import defpackage.y45;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b!\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B#\b\u0016\u0012\u0018\u0010\b\u001a\u0014\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0006\b\u0001\u0012\u00028\u0001\u0018\u00010\u0000¢\u0006\u0004\b\u0006\u0010\tJ\u001f\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ.\u0010\u0012\u001a\u00028\u0002\"\n\b\u0002\u0010\u0010*\u0004\u0018\u00018\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0011\u001a\u00028\u0002H\u0082\b¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0018\u0010\u0007J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00028\u0001H\u0001¢\u0006\u0004\b\u001f\u0010\u001dJ\u0017\u0010!\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00028\u0001H\u0016¢\u0006\u0004\b!\u0010\u001bJ\u001a\u0010\"\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\"\u0010#J!\u0010$\u001a\u00028\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0011\u001a\u00028\u0001H\u0016¢\u0006\u0004\b$\u0010\u0013J\u0017\u0010&\u001a\u00028\u00002\u0006\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00028\u00012\u0006\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0004\b(\u0010'J\u001f\u0010)\u001a\u00028\u00012\u0006\u0010%\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00028\u0001H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0019H\u0016¢\u0006\u0004\b+\u0010,J!\u0010-\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00028\u0001H\u0016¢\u0006\u0004\b-\u0010\u0013J'\u0010.\u001a\u00020\u00142\u0016\u0010\b\u001a\u0012\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0006\b\u0001\u0012\u00028\u00010\u0000H\u0016¢\u0006\u0004\b.\u0010\tJ!\u0010/\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00028\u0001H\u0016¢\u0006\u0004\b/\u0010\u0013J\u0019\u00100\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b0\u0010#J\u001f\u00100\u001a\u00020\u00192\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00028\u0001H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00028\u00012\u0006\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0004\b2\u0010'J!\u00103\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00028\u0001H\u0016¢\u0006\u0004\b3\u0010\u0013J'\u00103\u001a\u00020\u00192\u0006\u0010\n\u001a\u00028\u00002\u0006\u00104\u001a\u00028\u00012\u0006\u00105\u001a\u00028\u0001H\u0016¢\u0006\u0004\b3\u00106J\u000f\u00107\u001a\u00020\u0004H\u0016¢\u0006\u0004\b7\u0010\u000fJ\u001a\u00109\u001a\u00020\u00192\b\u00108\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b9\u0010\u001bJ\u000f\u0010:\u001a\u00020\u0004H\u0016¢\u0006\u0004\b:\u0010\u000fJ\u000f\u0010<\u001a\u00020;H\u0016¢\u0006\u0004\b<\u0010=R\u0016\u0010?\u001a\u00020>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u001e\u0010B\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u00107\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u0010D¨\u0006E"}, d2 = {"Landroidx/collection/SimpleArrayMap;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "", "capacity", MethodDecl.initName, "(I)V", "map", "(Landroidx/collection/SimpleArrayMap;)V", "key", "hash", "indexOf", "(Ljava/lang/Object;I)I", "indexOfNull", "()I", "T", "defaultValue", "getOrDefaultInternal", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "Lzfb;", "clear", "()V", "minimumCapacity", "ensureCapacity", "", "containsKey", "(Ljava/lang/Object;)Z", "indexOfKey", "(Ljava/lang/Object;)I", ES6Iterator.VALUE_PROPERTY, "__restricted$indexOfValue", "indexOfValue", "containsValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "getOrDefault", "index", "keyAt", "(I)Ljava/lang/Object;", "valueAt", "setValueAt", "(ILjava/lang/Object;)Ljava/lang/Object;", "isEmpty", "()Z", "put", "putAll", "putIfAbsent", "remove", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "removeAt", "replace", "oldValue", "newValue", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z", PlayAudioData.TAG_SIZE, "other", "equals", "hashCode", "", "toString", "()Ljava/lang/String;", "", "hashes", "[I", "", "array", "[Ljava/lang/Object;", "I", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class SimpleArrayMap<K, V> {
    private Object[] array;
    private int[] hashes;
    private int size;

    public SimpleArrayMap() {
        this(0, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T extends V> T getOrDefaultInternal(Object key, T defaultValue) {
        int iIndexOfKey = indexOfKey(key);
        return iIndexOfKey >= 0 ? (T) this.array[(iIndexOfKey << 1) + 1] : defaultValue;
    }

    private final int indexOf(K key, int hash) {
        int i = this.size;
        if (i == 0) {
            return -1;
        }
        int iBinarySearch = ContainerHelpersKt.binarySearch(this.hashes, i, hash);
        if (iBinarySearch < 0 || y45.e(key, this.array[iBinarySearch << 1])) {
            return iBinarySearch;
        }
        int i2 = iBinarySearch + 1;
        while (i2 < i && this.hashes[i2] == hash) {
            if (y45.e(key, this.array[i2 << 1])) {
                return i2;
            }
            i2++;
        }
        for (int i3 = iBinarySearch - 1; i3 >= 0 && this.hashes[i3] == hash; i3--) {
            if (y45.e(key, this.array[i3 << 1])) {
                return i3;
            }
        }
        return ~i2;
    }

    private final int indexOfNull() {
        int i = this.size;
        if (i == 0) {
            return -1;
        }
        int iBinarySearch = ContainerHelpersKt.binarySearch(this.hashes, i, 0);
        if (iBinarySearch < 0 || this.array[iBinarySearch << 1] == null) {
            return iBinarySearch;
        }
        int i2 = iBinarySearch + 1;
        while (i2 < i && this.hashes[i2] == 0) {
            if (this.array[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = iBinarySearch - 1; i3 >= 0 && this.hashes[i3] == 0; i3--) {
            if (this.array[i3 << 1] == null) {
                return i3;
            }
        }
        return ~i2;
    }

    public final int __restricted$indexOfValue(V value) {
        int i = this.size * 2;
        Object[] objArr = this.array;
        if (value == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (y45.e(value, objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public void clear() {
        if (this.size > 0) {
            this.hashes = ContainerHelpersKt.EMPTY_INTS;
            this.array = ContainerHelpersKt.EMPTY_OBJECTS;
            this.size = 0;
        }
        if (this.size > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(K key) {
        return indexOfKey(key) >= 0;
    }

    public boolean containsValue(V value) {
        return __restricted$indexOfValue(value) >= 0;
    }

    public void ensureCapacity(int minimumCapacity) {
        int i = this.size;
        int[] iArr = this.hashes;
        if (iArr.length < minimumCapacity) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, minimumCapacity);
            y45.i(iArrCopyOf, "copyOf(this, newSize)");
            this.hashes = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.array, minimumCapacity * 2);
            y45.i(objArrCopyOf, "copyOf(this, newSize)");
            this.array = objArrCopyOf;
        }
        if (this.size != i) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        try {
            if (other instanceof SimpleArrayMap) {
                if (getSize() != ((SimpleArrayMap) other).getSize()) {
                    return false;
                }
                SimpleArrayMap simpleArrayMap = (SimpleArrayMap) other;
                int i = this.size;
                for (int i2 = 0; i2 < i; i2++) {
                    K kKeyAt = keyAt(i2);
                    V vValueAt = valueAt(i2);
                    Object obj = simpleArrayMap.get(kKeyAt);
                    if (vValueAt == null) {
                        if (obj != null || !simpleArrayMap.containsKey(kKeyAt)) {
                            return false;
                        }
                    } else if (!y45.e(vValueAt, obj)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(other instanceof Map) || getSize() != ((Map) other).size()) {
                return false;
            }
            int i3 = this.size;
            for (int i4 = 0; i4 < i3; i4++) {
                K kKeyAt2 = keyAt(i4);
                V vValueAt2 = valueAt(i4);
                Object obj2 = ((Map) other).get(kKeyAt2);
                if (vValueAt2 == null) {
                    if (obj2 != null || !((Map) other).containsKey(kKeyAt2)) {
                        return false;
                    }
                } else if (!y45.e(vValueAt2, obj2)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public V get(K key) {
        int iIndexOfKey = indexOfKey(key);
        if (iIndexOfKey >= 0) {
            return (V) this.array[(iIndexOfKey << 1) + 1];
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public V getOrDefault(Object key, V defaultValue) {
        int iIndexOfKey = indexOfKey(key);
        return iIndexOfKey >= 0 ? (V) this.array[(iIndexOfKey << 1) + 1] : defaultValue;
    }

    public int hashCode() {
        int[] iArr = this.hashes;
        Object[] objArr = this.array;
        int i = this.size;
        int i2 = 1;
        int i3 = 0;
        int iHashCode = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            iHashCode += (obj != null ? obj.hashCode() : 0) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return iHashCode;
    }

    public int indexOfKey(K key) {
        return key == null ? indexOfNull() : indexOf(key, key.hashCode());
    }

    public boolean isEmpty() {
        return this.size <= 0;
    }

    public K keyAt(int index) {
        if (index >= 0 && index < this.size) {
            return (K) this.array[index << 1];
        }
        throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + index).toString());
    }

    public V put(K key, V value) {
        int i = this.size;
        int iHashCode = key != null ? key.hashCode() : 0;
        int iIndexOf = key != null ? indexOf(key, iHashCode) : indexOfNull();
        if (iIndexOf >= 0) {
            int i2 = (iIndexOf << 1) + 1;
            Object[] objArr = this.array;
            V v = (V) objArr[i2];
            objArr[i2] = value;
            return v;
        }
        int i3 = ~iIndexOf;
        int[] iArr = this.hashes;
        if (i >= iArr.length) {
            int i4 = 8;
            if (i >= 8) {
                i4 = (i >> 1) + i;
            } else if (i < 4) {
                i4 = 4;
            }
            int[] iArrCopyOf = Arrays.copyOf(iArr, i4);
            y45.i(iArrCopyOf, "copyOf(this, newSize)");
            this.hashes = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.array, i4 << 1);
            y45.i(objArrCopyOf, "copyOf(this, newSize)");
            this.array = objArrCopyOf;
            if (i != this.size) {
                throw new ConcurrentModificationException();
            }
        }
        if (i3 < i) {
            int[] iArr2 = this.hashes;
            int i5 = i3 + 1;
            fi.j(iArr2, iArr2, i5, i3, i);
            Object[] objArr2 = this.array;
            fi.l(objArr2, objArr2, i5 << 1, i3 << 1, this.size << 1);
        }
        int i6 = this.size;
        if (i == i6) {
            int[] iArr3 = this.hashes;
            if (i3 < iArr3.length) {
                iArr3[i3] = iHashCode;
                Object[] objArr3 = this.array;
                int i7 = i3 << 1;
                objArr3[i7] = key;
                objArr3[i7 + 1] = value;
                this.size = i6 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public void putAll(SimpleArrayMap<? extends K, ? extends V> map) {
        y45.j(map, "map");
        int i = map.size;
        ensureCapacity(this.size + i);
        if (this.size != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(map.keyAt(i2), map.valueAt(i2));
            }
        } else if (i > 0) {
            fi.j(map.hashes, this.hashes, 0, 0, i);
            fi.l(map.array, this.array, 0, 0, i << 1);
            this.size = i;
        }
    }

    public V putIfAbsent(K key, V value) {
        V v = get(key);
        return v == null ? put(key, value) : v;
    }

    public V remove(K key) {
        int iIndexOfKey = indexOfKey(key);
        if (iIndexOfKey >= 0) {
            return removeAt(iIndexOfKey);
        }
        return null;
    }

    public V removeAt(int index) {
        int i;
        if (index < 0 || index >= (i = this.size)) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + index).toString());
        }
        Object[] objArr = this.array;
        int i2 = index << 1;
        V v = (V) objArr[i2 + 1];
        if (i <= 1) {
            clear();
        } else {
            int i3 = i - 1;
            int[] iArr = this.hashes;
            if (iArr.length <= 8 || i >= iArr.length / 3) {
                if (index < i3) {
                    int i4 = index + 1;
                    fi.j(iArr, iArr, index, i4, i);
                    Object[] objArr2 = this.array;
                    fi.l(objArr2, objArr2, i2, i4 << 1, i << 1);
                }
                Object[] objArr3 = this.array;
                int i5 = i3 << 1;
                objArr3[i5] = null;
                objArr3[i5 + 1] = null;
            } else {
                int i6 = i > 8 ? i + (i >> 1) : 8;
                int[] iArrCopyOf = Arrays.copyOf(iArr, i6);
                y45.i(iArrCopyOf, "copyOf(this, newSize)");
                this.hashes = iArrCopyOf;
                Object[] objArrCopyOf = Arrays.copyOf(this.array, i6 << 1);
                y45.i(objArrCopyOf, "copyOf(this, newSize)");
                this.array = objArrCopyOf;
                if (i != this.size) {
                    throw new ConcurrentModificationException();
                }
                if (index > 0) {
                    fi.j(iArr, this.hashes, 0, 0, index);
                    fi.l(objArr, this.array, 0, 0, i2);
                }
                if (index < i3) {
                    int i7 = index + 1;
                    fi.j(iArr, this.hashes, index, i7, i);
                    fi.l(objArr, this.array, i2, i7 << 1, i << 1);
                }
            }
            if (i != this.size) {
                throw new ConcurrentModificationException();
            }
            this.size = i3;
        }
        return v;
    }

    public V replace(K key, V value) {
        int iIndexOfKey = indexOfKey(key);
        if (iIndexOfKey >= 0) {
            return setValueAt(iIndexOfKey, value);
        }
        return null;
    }

    public V setValueAt(int index, V value) {
        if (index < 0 || index >= this.size) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + index).toString());
        }
        int i = (index << 1) + 1;
        Object[] objArr = this.array;
        V v = (V) objArr[i];
        objArr[i] = value;
        return v;
    }

    public int getSize() {
        return this.size;
    }

    public String toString() {
        if (isEmpty()) {
            return NetResponse.EMPTY_RESPONSE;
        }
        StringBuilder sb = new StringBuilder(this.size * 28);
        sb.append('{');
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            K kKeyAt = keyAt(i2);
            if (kKeyAt != sb) {
                sb.append(kKeyAt);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vValueAt = valueAt(i2);
            if (vValueAt != sb) {
                sb.append(vValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        y45.i(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public V valueAt(int index) {
        if (index >= 0 && index < this.size) {
            return (V) this.array[(index << 1) + 1];
        }
        throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + index).toString());
    }

    public SimpleArrayMap(int i) {
        this.hashes = i == 0 ? ContainerHelpersKt.EMPTY_INTS : new int[i];
        this.array = i == 0 ? ContainerHelpersKt.EMPTY_OBJECTS : new Object[i << 1];
    }

    public boolean remove(K key, V value) {
        int iIndexOfKey = indexOfKey(key);
        if (iIndexOfKey < 0 || !y45.e(value, valueAt(iIndexOfKey))) {
            return false;
        }
        removeAt(iIndexOfKey);
        return true;
    }

    public boolean replace(K key, V oldValue, V newValue) {
        int iIndexOfKey = indexOfKey(key);
        if (iIndexOfKey < 0 || !y45.e(oldValue, valueAt(iIndexOfKey))) {
            return false;
        }
        setValueAt(iIndexOfKey, newValue);
        return true;
    }

    public SimpleArrayMap(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    public SimpleArrayMap(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this(0, 1, null);
        if (simpleArrayMap != null) {
            putAll(simpleArrayMap);
        }
    }
}
