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

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001a\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b!\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\n\u001a\u0004\u0018\u00018\u00002\u0006\u0010\t\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\n\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\n\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u0003H\u0017¢\u0006\u0004\b\u000f\u0010\u0006J\u0017\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0006J!\u0010\u0010\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0010\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0016\u0010\u0006J\u001f\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001a\u001a\u0004\u0018\u00018\u00002\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001a\u0010\rJ'\u0010\u001a\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001a\u0010\u001dJ\u001f\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010!\u001a\u00020\u000e2\u000e\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0000H\u0016¢\u0006\u0004\b!\u0010\"J!\u0010#\u001a\u0004\u0018\u00018\u00002\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0004\b#\u0010\rJ\u000f\u0010\u0017\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0017\u0010$J\u000f\u0010%\u001a\u00020\u0013H\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010'\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0003H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u0003H\u0016¢\u0006\u0004\b)\u0010\u000bJ\u001f\u0010*\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0004\b*\u0010\u001fJ\u0017\u0010+\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0016¢\u0006\u0004\b+\u0010(J\u0017\u0010,\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0003H\u0016¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u000eH\u0016¢\u0006\u0004\b2\u00103J\u001f\u00104\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0004\b4\u0010\u001fJ\u000f\u00106\u001a\u000205H\u0016¢\u0006\u0004\b6\u00107R\u0016\u00108\u001a\u00020\u00138\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010;\u001a\u00020:8\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u001e\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110=8\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010\u0017\u001a\u00020\u00038\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010@R\u0011\u0010%\u001a\u00020\u00138G¢\u0006\u0006\u001a\u0004\bA\u0010&¨\u0006B"}, d2 = {"Landroidx/collection/SparseArrayCompat;", ExifInterface.LONGITUDE_EAST, "", "", "initialCapacity", MethodDecl.initName, "(I)V", "clone", "()Landroidx/collection/SparseArrayCompat;", "key", "get", "(I)Ljava/lang/Object;", "defaultValue", "(ILjava/lang/Object;)Ljava/lang/Object;", "Lzfb;", "delete", "remove", "", ES6Iterator.VALUE_PROPERTY, "", "(ILjava/lang/Object;)Z", "index", "removeAt", PlayAudioData.TAG_SIZE, "removeAtRange", "(II)V", "replace", "oldValue", "newValue", "(ILjava/lang/Object;Ljava/lang/Object;)Z", "put", "(ILjava/lang/Object;)V", "other", "putAll", "(Landroidx/collection/SparseArrayCompat;)V", "putIfAbsent", "()I", "isEmpty", "()Z", "keyAt", "(I)I", "valueAt", "setValueAt", "indexOfKey", "indexOfValue", "(Ljava/lang/Object;)I", "containsKey", "(I)Z", "containsValue", "(Ljava/lang/Object;)Z", "clear", "()V", "append", "", "toString", "()Ljava/lang/String;", "garbage", "Z", "", "keys", "[I", "", "values", "[Ljava/lang/Object;", "I", "getIsEmpty", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class SparseArrayCompat<E> implements Cloneable {
    public boolean garbage;
    public int[] keys;
    public int size;
    public Object[] values;

    public SparseArrayCompat() {
        this(0, 1, null);
    }

    public void append(int key, E value) {
        int i = this.size;
        if (i != 0 && key <= this.keys[i - 1]) {
            put(key, value);
            return;
        }
        if (this.garbage && i >= this.keys.length) {
            SparseArrayCompatKt.gc(this);
        }
        int i2 = this.size;
        if (i2 >= this.keys.length) {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i2 + 1);
            int[] iArrCopyOf = Arrays.copyOf(this.keys, iIdealIntArraySize);
            y45.i(iArrCopyOf, "copyOf(this, newSize)");
            this.keys = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.values, iIdealIntArraySize);
            y45.i(objArrCopyOf, "copyOf(this, newSize)");
            this.values = objArrCopyOf;
        }
        this.keys[i2] = key;
        this.values[i2] = value;
        this.size = i2 + 1;
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

    public boolean containsKey(int key) {
        return indexOfKey(key) >= 0;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
    public boolean containsValue(E value) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        int i = this.size;
        int i2 = 0;
        while (i2 < i) {
            if (this.values[i2] == value) {
                if (i2 >= 0) {
                    return true;
                }
                return false;
            }
            i2++;
        }
        i2 = -1;
        if (i2 >= 0) {
            return true;
        }
        return false;
    }

    public void delete(int key) {
        remove(key);
    }

    public E get(int key) {
        return (E) SparseArrayCompatKt.commonGet(this, key);
    }

    public final boolean getIsEmpty() {
        return isEmpty();
    }

    public int indexOfKey(int key) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return ContainerHelpersKt.binarySearch(this.keys, this.size, key);
    }

    public int indexOfValue(E value) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.values[i2] == value) {
                return i2;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int keyAt(int index) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return this.keys[index];
    }

    public void put(int key, E value) {
        int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, key);
        if (iBinarySearch >= 0) {
            this.values[iBinarySearch] = value;
            return;
        }
        int i = ~iBinarySearch;
        if (i < this.size && this.values[i] == SparseArrayCompatKt.DELETED) {
            this.keys[i] = key;
            this.values[i] = value;
            return;
        }
        if (this.garbage && this.size >= this.keys.length) {
            SparseArrayCompatKt.gc(this);
            i = ~ContainerHelpersKt.binarySearch(this.keys, this.size, key);
        }
        int i2 = this.size;
        if (i2 >= this.keys.length) {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i2 + 1);
            int[] iArrCopyOf = Arrays.copyOf(this.keys, iIdealIntArraySize);
            y45.i(iArrCopyOf, "copyOf(this, newSize)");
            this.keys = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.values, iIdealIntArraySize);
            y45.i(objArrCopyOf, "copyOf(this, newSize)");
            this.values = objArrCopyOf;
        }
        int i3 = this.size;
        if (i3 - i != 0) {
            int[] iArr = this.keys;
            int i4 = i + 1;
            fi.j(iArr, iArr, i4, i, i3);
            Object[] objArr = this.values;
            fi.l(objArr, objArr, i4, i, this.size);
        }
        this.keys[i] = key;
        this.values[i] = value;
        this.size++;
    }

    public void putAll(SparseArrayCompat<? extends E> other) {
        y45.j(other, "other");
        int size = other.size();
        for (int i = 0; i < size; i++) {
            int iKeyAt = other.keyAt(i);
            E eValueAt = other.valueAt(i);
            int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, iKeyAt);
            if (iBinarySearch >= 0) {
                this.values[iBinarySearch] = eValueAt;
            } else {
                int i2 = ~iBinarySearch;
                if (i2 >= this.size || this.values[i2] != SparseArrayCompatKt.DELETED) {
                    if (this.garbage && this.size >= this.keys.length) {
                        SparseArrayCompatKt.gc(this);
                        i2 = ~ContainerHelpersKt.binarySearch(this.keys, this.size, iKeyAt);
                    }
                    int i3 = this.size;
                    if (i3 >= this.keys.length) {
                        int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i3 + 1);
                        int[] iArrCopyOf = Arrays.copyOf(this.keys, iIdealIntArraySize);
                        y45.i(iArrCopyOf, "copyOf(this, newSize)");
                        this.keys = iArrCopyOf;
                        Object[] objArrCopyOf = Arrays.copyOf(this.values, iIdealIntArraySize);
                        y45.i(objArrCopyOf, "copyOf(this, newSize)");
                        this.values = objArrCopyOf;
                    }
                    int i4 = this.size;
                    if (i4 - i2 != 0) {
                        int[] iArr = this.keys;
                        int i5 = i2 + 1;
                        fi.j(iArr, iArr, i5, i2, i4);
                        Object[] objArr = this.values;
                        fi.l(objArr, objArr, i5, i2, this.size);
                    }
                    this.keys[i2] = iKeyAt;
                    this.values[i2] = eValueAt;
                    this.size++;
                } else {
                    this.keys[i2] = iKeyAt;
                    this.values[i2] = eValueAt;
                }
            }
        }
    }

    public E putIfAbsent(int key, E value) {
        E e = (E) SparseArrayCompatKt.commonGet(this, key);
        if (e == null) {
            int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, key);
            if (iBinarySearch >= 0) {
                this.values[iBinarySearch] = value;
            } else {
                int i = ~iBinarySearch;
                if (i >= this.size || this.values[i] != SparseArrayCompatKt.DELETED) {
                    if (this.garbage && this.size >= this.keys.length) {
                        SparseArrayCompatKt.gc(this);
                        i = ~ContainerHelpersKt.binarySearch(this.keys, this.size, key);
                    }
                    int i2 = this.size;
                    if (i2 >= this.keys.length) {
                        int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i2 + 1);
                        int[] iArrCopyOf = Arrays.copyOf(this.keys, iIdealIntArraySize);
                        y45.i(iArrCopyOf, "copyOf(this, newSize)");
                        this.keys = iArrCopyOf;
                        Object[] objArrCopyOf = Arrays.copyOf(this.values, iIdealIntArraySize);
                        y45.i(objArrCopyOf, "copyOf(this, newSize)");
                        this.values = objArrCopyOf;
                    }
                    int i3 = this.size;
                    if (i3 - i != 0) {
                        int[] iArr = this.keys;
                        int i4 = i + 1;
                        fi.j(iArr, iArr, i4, i, i3);
                        Object[] objArr = this.values;
                        fi.l(objArr, objArr, i4, i, this.size);
                    }
                    this.keys[i] = key;
                    this.values[i] = value;
                    this.size++;
                } else {
                    this.keys[i] = key;
                    this.values[i] = value;
                }
            }
        }
        return e;
    }

    public void remove(int key) {
        SparseArrayCompatKt.commonRemove(this, key);
    }

    public void removeAt(int index) {
        if (this.values[index] != SparseArrayCompatKt.DELETED) {
            this.values[index] = SparseArrayCompatKt.DELETED;
            this.garbage = true;
        }
    }

    public void removeAtRange(int index, int size) {
        int iMin = Math.min(size, index + size);
        while (index < iMin) {
            removeAt(index);
            index++;
        }
    }

    public E replace(int key, E value) {
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
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        this.values[index] = value;
    }

    public int size() {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
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
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        y45.i(string, "buffer.toString()");
        return string;
    }

    public E valueAt(int index) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return (E) this.values[index];
    }

    public SparseArrayCompat(int i) {
        if (i == 0) {
            this.keys = ContainerHelpersKt.EMPTY_INTS;
            this.values = ContainerHelpersKt.EMPTY_OBJECTS;
        } else {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i);
            this.keys = new int[iIdealIntArraySize];
            this.values = new Object[iIdealIntArraySize];
        }
    }

    public SparseArrayCompat<E> m32clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        y45.h(objClone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) objClone;
        sparseArrayCompat.keys = (int[]) this.keys.clone();
        sparseArrayCompat.values = (Object[]) this.values.clone();
        return sparseArrayCompat;
    }

    public E get(int key, E defaultValue) {
        return (E) SparseArrayCompatKt.commonGet(this, key, defaultValue);
    }

    public boolean remove(int key, Object value) {
        int iIndexOfKey = indexOfKey(key);
        if (iIndexOfKey < 0 || !y45.e(value, valueAt(iIndexOfKey))) {
            return false;
        }
        removeAt(iIndexOfKey);
        return true;
    }

    public boolean replace(int key, E oldValue, E newValue) {
        int iIndexOfKey = indexOfKey(key);
        if (iIndexOfKey < 0 || !y45.e(this.values[iIndexOfKey], oldValue)) {
            return false;
        }
        this.values[iIndexOfKey] = newValue;
        return true;
    }

    public SparseArrayCompat(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 10 : i);
    }
}
