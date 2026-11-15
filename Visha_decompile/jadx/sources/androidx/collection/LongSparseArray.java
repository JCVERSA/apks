package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.exifinterface.media.ExifInterface;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.gslb.NetResponse;
import defpackage.fi;
import defpackage.y45;
import java.util.Arrays;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001a\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\"\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\u000b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\n\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000b\u001a\u00028\u00002\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000b\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\tH\u0017¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u001f\u0010\u0012\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0012\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0017\u0010\u0006J!\u0010\u0018\u001a\u0004\u0018\u00018\u00002\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0018\u0010\u000eJ'\u0010\u0018\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0018\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u000f2\u000e\u0010\u001e\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0000H\u0016¢\u0006\u0004\b\u001f\u0010 J!\u0010!\u001a\u0004\u0018\u00018\u00002\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b!\u0010\u000eJ\u000f\u0010\"\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0014H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0003H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u0003H\u0016¢\u0006\u0004\b(\u0010)J\u001f\u0010*\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010,\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u000fH\u0016¢\u0006\u0004\b4\u00105J\u001f\u00106\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b6\u0010\u001dJ\u000f\u00108\u001a\u000207H\u0016¢\u0006\u0004\b8\u00109R\u0016\u0010:\u001a\u00020\u00148\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010=\u001a\u00020<8\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u001e\u0010A\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010@0?8\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010\"\u001a\u00020\u00038\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b\"\u0010C¨\u0006D"}, d2 = {"Landroidx/collection/LongSparseArray;", ExifInterface.LONGITUDE_EAST, "", "", "initialCapacity", MethodDecl.initName, "(I)V", "clone", "()Landroidx/collection/LongSparseArray;", "", "key", "get", "(J)Ljava/lang/Object;", "defaultValue", "(JLjava/lang/Object;)Ljava/lang/Object;", "Lzfb;", "delete", "(J)V", "remove", ES6Iterator.VALUE_PROPERTY, "", "(JLjava/lang/Object;)Z", "index", "removeAt", "replace", "oldValue", "newValue", "(JLjava/lang/Object;Ljava/lang/Object;)Z", "put", "(JLjava/lang/Object;)V", "other", "putAll", "(Landroidx/collection/LongSparseArray;)V", "putIfAbsent", PlayAudioData.TAG_SIZE, "()I", "isEmpty", "()Z", "keyAt", "(I)J", "valueAt", "(I)Ljava/lang/Object;", "setValueAt", "(ILjava/lang/Object;)V", "indexOfKey", "(J)I", "indexOfValue", "(Ljava/lang/Object;)I", "containsKey", "(J)Z", "containsValue", "(Ljava/lang/Object;)Z", "clear", "()V", "append", "", "toString", "()Ljava/lang/String;", "garbage", "Z", "", "keys", "[J", "", "", "values", "[Ljava/lang/Object;", "I", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class LongSparseArray<E> implements Cloneable {
    public boolean garbage;
    public long[] keys;
    public int size;
    public Object[] values;

    public LongSparseArray() {
        this(0, 1, null);
    }

    public void append(long key, E value) {
        int i = this.size;
        if (i != 0 && key <= this.keys[i - 1]) {
            put(key, value);
            return;
        }
        if (this.garbage) {
            long[] jArr = this.keys;
            if (i >= jArr.length) {
                Object[] objArr = this.values;
                int i2 = 0;
                for (int i3 = 0; i3 < i; i3++) {
                    Object obj = objArr[i3];
                    if (obj != LongSparseArrayKt.DELETED) {
                        if (i3 != i2) {
                            jArr[i2] = jArr[i3];
                            objArr[i2] = obj;
                            objArr[i3] = null;
                        }
                        i2++;
                    }
                }
                this.garbage = false;
                this.size = i2;
            }
        }
        int i4 = this.size;
        if (i4 >= this.keys.length) {
            int iIdealLongArraySize = ContainerHelpersKt.idealLongArraySize(i4 + 1);
            long[] jArrCopyOf = Arrays.copyOf(this.keys, iIdealLongArraySize);
            y45.i(jArrCopyOf, "copyOf(this, newSize)");
            this.keys = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.values, iIdealLongArraySize);
            y45.i(objArrCopyOf, "copyOf(this, newSize)");
            this.values = objArrCopyOf;
        }
        this.keys[i4] = key;
        this.values[i4] = value;
        this.size = i4 + 1;
    }

    public void clear() {
        int i = this.size;
        Object[] objArr = this.values;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.size = 0;
        this.garbage = false;
    }

    public boolean containsKey(long key) {
        return indexOfKey(key) >= 0;
    }

    public boolean containsValue(E value) {
        return indexOfValue(value) >= 0;
    }

    public void delete(long key) {
        int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, key);
        if (iBinarySearch < 0 || this.values[iBinarySearch] == LongSparseArrayKt.DELETED) {
            return;
        }
        this.values[iBinarySearch] = LongSparseArrayKt.DELETED;
        this.garbage = true;
    }

    public E get(long key) {
        int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, key);
        if (iBinarySearch < 0 || this.values[iBinarySearch] == LongSparseArrayKt.DELETED) {
            return null;
        }
        return (E) this.values[iBinarySearch];
    }

    public int indexOfKey(long key) {
        if (this.garbage) {
            int i = this.size;
            long[] jArr = this.keys;
            Object[] objArr = this.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != LongSparseArrayKt.DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            this.garbage = false;
            this.size = i2;
        }
        return ContainerHelpersKt.binarySearch(this.keys, this.size, key);
    }

    public int indexOfValue(E value) {
        if (this.garbage) {
            int i = this.size;
            long[] jArr = this.keys;
            Object[] objArr = this.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != LongSparseArrayKt.DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            this.garbage = false;
            this.size = i2;
        }
        int i4 = this.size;
        for (int i5 = 0; i5 < i4; i5++) {
            if (this.values[i5] == value) {
                return i5;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public long keyAt(int index) {
        int i;
        if (index < 0 || index >= (i = this.size)) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + index).toString());
        }
        if (this.garbage) {
            long[] jArr = this.keys;
            Object[] objArr = this.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != LongSparseArrayKt.DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            this.garbage = false;
            this.size = i2;
        }
        return this.keys[index];
    }

    public void put(long key, E value) {
        int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, key);
        if (iBinarySearch >= 0) {
            this.values[iBinarySearch] = value;
            return;
        }
        int i = ~iBinarySearch;
        if (i < this.size && this.values[i] == LongSparseArrayKt.DELETED) {
            this.keys[i] = key;
            this.values[i] = value;
            return;
        }
        if (this.garbage) {
            int i2 = this.size;
            long[] jArr = this.keys;
            if (i2 >= jArr.length) {
                Object[] objArr = this.values;
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    Object obj = objArr[i4];
                    if (obj != LongSparseArrayKt.DELETED) {
                        if (i4 != i3) {
                            jArr[i3] = jArr[i4];
                            objArr[i3] = obj;
                            objArr[i4] = null;
                        }
                        i3++;
                    }
                }
                this.garbage = false;
                this.size = i3;
                i = ~ContainerHelpersKt.binarySearch(this.keys, i3, key);
            }
        }
        int i5 = this.size;
        if (i5 >= this.keys.length) {
            int iIdealLongArraySize = ContainerHelpersKt.idealLongArraySize(i5 + 1);
            long[] jArrCopyOf = Arrays.copyOf(this.keys, iIdealLongArraySize);
            y45.i(jArrCopyOf, "copyOf(this, newSize)");
            this.keys = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.values, iIdealLongArraySize);
            y45.i(objArrCopyOf, "copyOf(this, newSize)");
            this.values = objArrCopyOf;
        }
        int i6 = this.size;
        if (i6 - i != 0) {
            long[] jArr2 = this.keys;
            int i7 = i + 1;
            fi.k(jArr2, jArr2, i7, i, i6);
            Object[] objArr2 = this.values;
            fi.l(objArr2, objArr2, i7, i, this.size);
        }
        this.keys[i] = key;
        this.values[i] = value;
        this.size++;
    }

    public void putAll(LongSparseArray<? extends E> other) {
        y45.j(other, "other");
        int size = other.size();
        for (int i = 0; i < size; i++) {
            put(other.keyAt(i), other.valueAt(i));
        }
    }

    public E putIfAbsent(long key, E value) {
        E e = get(key);
        if (e == null) {
            put(key, value);
        }
        return e;
    }

    public void remove(long key) {
        int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, key);
        if (iBinarySearch < 0 || this.values[iBinarySearch] == LongSparseArrayKt.DELETED) {
            return;
        }
        this.values[iBinarySearch] = LongSparseArrayKt.DELETED;
        this.garbage = true;
    }

    public void removeAt(int index) {
        if (this.values[index] != LongSparseArrayKt.DELETED) {
            this.values[index] = LongSparseArrayKt.DELETED;
            this.garbage = true;
        }
    }

    public E replace(long key, E value) {
        int iIndexOfKey = indexOfKey(key);
        if (iIndexOfKey < 0) {
            return null;
        }
        Object[] objArr = this.values;
        E e = (E) objArr[iIndexOfKey];
        objArr[iIndexOfKey] = value;
        return e;
    }

    public void setValueAt(int index, E value) {
        int i;
        if (index < 0 || index >= (i = this.size)) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + index).toString());
        }
        if (this.garbage) {
            long[] jArr = this.keys;
            Object[] objArr = this.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != LongSparseArrayKt.DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            this.garbage = false;
            this.size = i2;
        }
        this.values[index] = value;
    }

    public int size() {
        if (this.garbage) {
            int i = this.size;
            long[] jArr = this.keys;
            Object[] objArr = this.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != LongSparseArrayKt.DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            this.garbage = false;
            this.size = i2;
        }
        return this.size;
    }

    public String toString() {
        if (size() <= 0) {
            return NetResponse.EMPTY_RESPONSE;
        }
        StringBuilder sb = new StringBuilder(this.size * 28);
        sb.append('{');
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i2));
            sb.append('=');
            E eValueAt = valueAt(i2);
            if (eValueAt != sb) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        y45.i(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public E valueAt(int index) {
        int i;
        if (index < 0 || index >= (i = this.size)) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + index).toString());
        }
        if (this.garbage) {
            long[] jArr = this.keys;
            Object[] objArr = this.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != LongSparseArrayKt.DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            this.garbage = false;
            this.size = i2;
        }
        return (E) this.values[index];
    }

    public LongSparseArray(int i) {
        if (i == 0) {
            this.keys = ContainerHelpersKt.EMPTY_LONGS;
            this.values = ContainerHelpersKt.EMPTY_OBJECTS;
        } else {
            int iIdealLongArraySize = ContainerHelpersKt.idealLongArraySize(i);
            this.keys = new long[iIdealLongArraySize];
            this.values = new Object[iIdealLongArraySize];
        }
    }

    public LongSparseArray<E> m31clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        y45.h(objClone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        LongSparseArray<E> longSparseArray = (LongSparseArray) objClone;
        longSparseArray.keys = (long[]) this.keys.clone();
        longSparseArray.values = (Object[]) this.values.clone();
        return longSparseArray;
    }

    public E get(long key, E defaultValue) {
        int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, key);
        return (iBinarySearch < 0 || this.values[iBinarySearch] == LongSparseArrayKt.DELETED) ? defaultValue : (E) this.values[iBinarySearch];
    }

    public boolean replace(long key, E oldValue, E newValue) {
        int iIndexOfKey = indexOfKey(key);
        if (iIndexOfKey < 0 || !y45.e(this.values[iIndexOfKey], oldValue)) {
            return false;
        }
        this.values[iIndexOfKey] = newValue;
        return true;
    }

    public boolean remove(long key, E value) {
        int iIndexOfKey = indexOfKey(key);
        if (iIndexOfKey < 0 || !y45.e(value, valueAt(iIndexOfKey))) {
            return false;
        }
        removeAt(iIndexOfKey);
        return true;
    }

    public LongSparseArray(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 10 : i);
    }
}
