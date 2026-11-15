package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.exifinterface.media.ExifInterface;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.gslb.NetResponse;
import defpackage.c74;
import defpackage.fi;
import defpackage.fr5;
import defpackage.qe5;
import defpackage.s74;
import defpackage.y45;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b#\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\u001a*\u0010\u0004\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b\u0004\u0010\u0005\u001a0\u0010\u0004\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\u0004\u0010\u0007\u001a<\u0010\t\u001a\u00028\u0000\"\n\b\u0000\u0010\b*\u0004\u0018\u00018\u0001\"\u0004\b\u0001\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\t\u0010\u0007\u001a(\u0010\u000b\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b\u000b\u0010\f\u001a0\u0010\u000b\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\u000b\u0010\u000f\u001a(\u0010\u0012\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0011\u001a\u00020\u0010H\u0080\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a2\u0010\u0014\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\u0014\u0010\u0007\u001a8\u0010\u0014\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\u0014\u0010\u0017\u001a \u0010\u0018\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0080\b¢\u0006\u0004\b\u0018\u0010\u0019\u001a0\u0010\u001a\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\u001a\u0010\u001b\u001a0\u0010\u001d\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u000e\u0010\u001c\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0001H\u0080\b¢\u0006\u0004\b\u001d\u0010\u001e\u001a2\u0010\u001f\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\u001f\u0010\u0007\u001a \u0010 \u001a\u00020\u0010\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0080\b¢\u0006\u0004\b \u0010!\u001a \u0010\"\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0080\b¢\u0006\u0004\b\"\u0010#\u001a(\u0010$\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0011\u001a\u00020\u0010H\u0080\b¢\u0006\u0004\b$\u0010%\u001a(\u0010&\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0011\u001a\u00020\u0010H\u0080\b¢\u0006\u0004\b&\u0010'\u001a0\u0010(\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b(\u0010)\u001a(\u0010*\u001a\u00020\u0010\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b*\u0010+\u001a(\u0010,\u001a\u00020\u0010\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b,\u0010-\u001a(\u0010.\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b.\u0010/\u001a(\u00100\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b0\u00101\u001a \u00102\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0080\b¢\u0006\u0004\b2\u0010\u0019\u001a0\u00103\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b3\u0010\u001b\u001a \u00105\u001a\u000204\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0080\b¢\u0006\u0004\b5\u00106\u001a(\u00107\u001a\u00020\u000e\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\n¢\u0006\u0004\b7\u0010/\u001a0\u00108\u001a\u00020\n\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00028\u0000H\u0086\n¢\u0006\u0004\b8\u0010\u001b\u001a4\u00109\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\u0002¢\u0006\u0004\b9\u0010:\u001a0\u0010;\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00028\u0000H\u0086\b¢\u0006\u0004\b;\u0010\u0007\u001a9\u0010=\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000<H\u0086\bø\u0001\u0000¢\u0006\u0004\b=\u0010>\u001a \u0010?\u001a\u00020\u000e\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\b¢\u0006\u0004\b?\u0010#\u001a/\u0010@\u001a\u00020\u000e\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00028\u0000H\u0007¢\u0006\u0004\b@\u0010\u000f\u001a=\u0010C\u001a\u00020\n\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0018\u0010B\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\n0AH\u0086\bø\u0001\u0000¢\u0006\u0004\bC\u0010D\u001a\u001d\u0010F\u001a\u00020E\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u0001¢\u0006\u0004\bF\u0010G\u001a#\u0010I\u001a\b\u0012\u0004\u0012\u00028\u00000H\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u0001¢\u0006\u0004\bI\u0010J\"\u0014\u0010L\u001a\u00020K8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010M\"(\u0010P\u001a\u00020\u0010\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\u00018Æ\u0002¢\u0006\f\u0012\u0004\bO\u0010\u0019\u001a\u0004\bN\u0010!\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006Q"}, d2 = {ExifInterface.LONGITUDE_EAST, "Landroidx/collection/LongSparseArray;", "", "key", "commonGet", "(Landroidx/collection/LongSparseArray;J)Ljava/lang/Object;", "defaultValue", "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Ljava/lang/Object;", "T", "commonGetInternal", "Lzfb;", "commonRemove", "(Landroidx/collection/LongSparseArray;J)V", ES6Iterator.VALUE_PROPERTY, "", "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Z", "", "index", "commonRemoveAt", "(Landroidx/collection/LongSparseArray;I)V", "commonReplace", "oldValue", "newValue", "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;Ljava/lang/Object;)Z", "commonGc", "(Landroidx/collection/LongSparseArray;)V", "commonPut", "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)V", "other", "commonPutAll", "(Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V", "commonPutIfAbsent", "commonSize", "(Landroidx/collection/LongSparseArray;)I", "commonIsEmpty", "(Landroidx/collection/LongSparseArray;)Z", "commonKeyAt", "(Landroidx/collection/LongSparseArray;I)J", "commonValueAt", "(Landroidx/collection/LongSparseArray;I)Ljava/lang/Object;", "commonSetValueAt", "(Landroidx/collection/LongSparseArray;ILjava/lang/Object;)V", "commonIndexOfKey", "(Landroidx/collection/LongSparseArray;J)I", "commonIndexOfValue", "(Landroidx/collection/LongSparseArray;Ljava/lang/Object;)I", "commonContainsKey", "(Landroidx/collection/LongSparseArray;J)Z", "commonContainsValue", "(Landroidx/collection/LongSparseArray;Ljava/lang/Object;)Z", "commonClear", "commonAppend", "", "commonToString", "(Landroidx/collection/LongSparseArray;)Ljava/lang/String;", "contains", "set", "plus", "(Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)Landroidx/collection/LongSparseArray;", "getOrDefault", "Lkotlin/Function0;", "getOrElse", "(Landroidx/collection/LongSparseArray;JLc74;)Ljava/lang/Object;", "isNotEmpty", "remove", "Lkotlin/Function2;", "action", "forEach", "(Landroidx/collection/LongSparseArray;Ls74;)V", "Lfr5;", "keyIterator", "(Landroidx/collection/LongSparseArray;)Lfr5;", "", "valueIterator", "(Landroidx/collection/LongSparseArray;)Ljava/util/Iterator;", "", "DELETED", "Ljava/lang/Object;", "getSize", "getSize$annotations", PlayAudioData.TAG_SIZE, "collection"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class LongSparseArrayKt {
    private static final Object DELETED = new Object();

    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\t\u0010\b\u001a\u00020\tH\u0096\u0002J\u000e\u0010\n\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"androidx/collection/LongSparseArrayKt$valueIterator$1", "", "index", "", "getIndex", "()I", "setIndex", "(I)V", "hasNext", "", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class C04691<T> implements Iterator<T>, qe5 {
        final LongSparseArray<T> $this_valueIterator;
        private int index;

        public C04691(LongSparseArray<T> longSparseArray) {
            this.$this_valueIterator = longSparseArray;
        }

        public final int getIndex() {
            return this.index;
        }

        @Override
        public boolean hasNext() {
            return this.index < this.$this_valueIterator.size();
        }

        @Override
        public T next() {
            LongSparseArray<T> longSparseArray = this.$this_valueIterator;
            int i = this.index;
            this.index = i + 1;
            return longSparseArray.valueAt(i);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final void setIndex(int i) {
            this.index = i;
        }
    }

    public static final <E> void commonAppend(LongSparseArray<E> longSparseArray, long j, E e) {
        y45.j(longSparseArray, "<this>");
        int i = longSparseArray.size;
        if (i != 0 && j <= longSparseArray.keys[i - 1]) {
            longSparseArray.put(j, e);
            return;
        }
        if (longSparseArray.garbage) {
            long[] jArr = longSparseArray.keys;
            if (i >= jArr.length) {
                Object[] objArr = longSparseArray.values;
                int i2 = 0;
                for (int i3 = 0; i3 < i; i3++) {
                    Object obj = objArr[i3];
                    if (obj != DELETED) {
                        if (i3 != i2) {
                            jArr[i2] = jArr[i3];
                            objArr[i2] = obj;
                            objArr[i3] = null;
                        }
                        i2++;
                    }
                }
                longSparseArray.garbage = false;
                longSparseArray.size = i2;
            }
        }
        int i4 = longSparseArray.size;
        if (i4 >= longSparseArray.keys.length) {
            int iIdealLongArraySize = ContainerHelpersKt.idealLongArraySize(i4 + 1);
            long[] jArrCopyOf = Arrays.copyOf(longSparseArray.keys, iIdealLongArraySize);
            y45.i(jArrCopyOf, "copyOf(this, newSize)");
            longSparseArray.keys = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(longSparseArray.values, iIdealLongArraySize);
            y45.i(objArrCopyOf, "copyOf(this, newSize)");
            longSparseArray.values = objArrCopyOf;
        }
        longSparseArray.keys[i4] = j;
        longSparseArray.values[i4] = e;
        longSparseArray.size = i4 + 1;
    }

    public static final <E> void commonClear(LongSparseArray<E> longSparseArray) {
        y45.j(longSparseArray, "<this>");
        int i = longSparseArray.size;
        Object[] objArr = longSparseArray.values;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        longSparseArray.size = 0;
        longSparseArray.garbage = false;
    }

    public static final <E> boolean commonContainsKey(LongSparseArray<E> longSparseArray, long j) {
        y45.j(longSparseArray, "<this>");
        return longSparseArray.indexOfKey(j) >= 0;
    }

    public static final <E> boolean commonContainsValue(LongSparseArray<E> longSparseArray, E e) {
        y45.j(longSparseArray, "<this>");
        return longSparseArray.indexOfValue(e) >= 0;
    }

    public static final <E> void commonGc(LongSparseArray<E> longSparseArray) {
        y45.j(longSparseArray, "<this>");
        int i = longSparseArray.size;
        long[] jArr = longSparseArray.keys;
        Object[] objArr = longSparseArray.values;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != DELETED) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        longSparseArray.garbage = false;
        longSparseArray.size = i2;
    }

    public static final <E> E commonGet(LongSparseArray<E> longSparseArray, long j) {
        y45.j(longSparseArray, "<this>");
        int iBinarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
        if (iBinarySearch < 0 || longSparseArray.values[iBinarySearch] == DELETED) {
            return null;
        }
        return (E) longSparseArray.values[iBinarySearch];
    }

    public static final <T extends E, E> T commonGetInternal(LongSparseArray<E> longSparseArray, long j, T t) {
        y45.j(longSparseArray, "<this>");
        int iBinarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
        return (iBinarySearch < 0 || longSparseArray.values[iBinarySearch] == DELETED) ? t : (T) longSparseArray.values[iBinarySearch];
    }

    public static final <E> int commonIndexOfKey(LongSparseArray<E> longSparseArray, long j) {
        y45.j(longSparseArray, "<this>");
        if (longSparseArray.garbage) {
            int i = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i2;
        }
        return ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
    }

    public static final <E> int commonIndexOfValue(LongSparseArray<E> longSparseArray, E e) {
        y45.j(longSparseArray, "<this>");
        if (longSparseArray.garbage) {
            int i = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i2;
        }
        int i4 = longSparseArray.size;
        for (int i5 = 0; i5 < i4; i5++) {
            if (longSparseArray.values[i5] == e) {
                return i5;
            }
        }
        return -1;
    }

    public static final <E> boolean commonIsEmpty(LongSparseArray<E> longSparseArray) {
        y45.j(longSparseArray, "<this>");
        return longSparseArray.size() == 0;
    }

    public static final <E> long commonKeyAt(LongSparseArray<E> longSparseArray, int i) {
        int i2;
        y45.j(longSparseArray, "<this>");
        if (i < 0 || i >= (i2 = longSparseArray.size)) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i).toString());
        }
        if (longSparseArray.garbage) {
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != DELETED) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i3;
        }
        return longSparseArray.keys[i];
    }

    public static final <E> void commonPut(LongSparseArray<E> longSparseArray, long j, E e) {
        y45.j(longSparseArray, "<this>");
        int iBinarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
        if (iBinarySearch >= 0) {
            longSparseArray.values[iBinarySearch] = e;
            return;
        }
        int i = ~iBinarySearch;
        if (i < longSparseArray.size && longSparseArray.values[i] == DELETED) {
            longSparseArray.keys[i] = j;
            longSparseArray.values[i] = e;
            return;
        }
        if (longSparseArray.garbage) {
            int i2 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            if (i2 >= jArr.length) {
                Object[] objArr = longSparseArray.values;
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    Object obj = objArr[i4];
                    if (obj != DELETED) {
                        if (i4 != i3) {
                            jArr[i3] = jArr[i4];
                            objArr[i3] = obj;
                            objArr[i4] = null;
                        }
                        i3++;
                    }
                }
                longSparseArray.garbage = false;
                longSparseArray.size = i3;
                i = ~ContainerHelpersKt.binarySearch(longSparseArray.keys, i3, j);
            }
        }
        int i5 = longSparseArray.size;
        if (i5 >= longSparseArray.keys.length) {
            int iIdealLongArraySize = ContainerHelpersKt.idealLongArraySize(i5 + 1);
            long[] jArrCopyOf = Arrays.copyOf(longSparseArray.keys, iIdealLongArraySize);
            y45.i(jArrCopyOf, "copyOf(this, newSize)");
            longSparseArray.keys = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(longSparseArray.values, iIdealLongArraySize);
            y45.i(objArrCopyOf, "copyOf(this, newSize)");
            longSparseArray.values = objArrCopyOf;
        }
        int i6 = longSparseArray.size;
        if (i6 - i != 0) {
            long[] jArr2 = longSparseArray.keys;
            int i7 = i + 1;
            fi.k(jArr2, jArr2, i7, i, i6);
            Object[] objArr2 = longSparseArray.values;
            fi.l(objArr2, objArr2, i7, i, longSparseArray.size);
        }
        longSparseArray.keys[i] = j;
        longSparseArray.values[i] = e;
        longSparseArray.size++;
    }

    public static final <E> void commonPutAll(LongSparseArray<E> longSparseArray, LongSparseArray<? extends E> longSparseArray2) {
        y45.j(longSparseArray, "<this>");
        y45.j(longSparseArray2, "other");
        int size = longSparseArray2.size();
        for (int i = 0; i < size; i++) {
            longSparseArray.put(longSparseArray2.keyAt(i), longSparseArray2.valueAt(i));
        }
    }

    public static final <E> E commonPutIfAbsent(LongSparseArray<E> longSparseArray, long j, E e) {
        y45.j(longSparseArray, "<this>");
        E e2 = longSparseArray.get(j);
        if (e2 == null) {
            longSparseArray.put(j, e);
        }
        return e2;
    }

    public static final <E> void commonRemove(LongSparseArray<E> longSparseArray, long j) {
        y45.j(longSparseArray, "<this>");
        int iBinarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
        if (iBinarySearch < 0 || longSparseArray.values[iBinarySearch] == DELETED) {
            return;
        }
        longSparseArray.values[iBinarySearch] = DELETED;
        longSparseArray.garbage = true;
    }

    public static final <E> void commonRemoveAt(LongSparseArray<E> longSparseArray, int i) {
        y45.j(longSparseArray, "<this>");
        if (longSparseArray.values[i] != DELETED) {
            longSparseArray.values[i] = DELETED;
            longSparseArray.garbage = true;
        }
    }

    public static final <E> E commonReplace(LongSparseArray<E> longSparseArray, long j, E e) {
        y45.j(longSparseArray, "<this>");
        int iIndexOfKey = longSparseArray.indexOfKey(j);
        if (iIndexOfKey < 0) {
            return null;
        }
        Object[] objArr = longSparseArray.values;
        E e2 = (E) objArr[iIndexOfKey];
        objArr[iIndexOfKey] = e;
        return e2;
    }

    public static final <E> void commonSetValueAt(LongSparseArray<E> longSparseArray, int i, E e) {
        int i2;
        y45.j(longSparseArray, "<this>");
        if (i < 0 || i >= (i2 = longSparseArray.size)) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i).toString());
        }
        if (longSparseArray.garbage) {
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != DELETED) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i3;
        }
        longSparseArray.values[i] = e;
    }

    public static final <E> int commonSize(LongSparseArray<E> longSparseArray) {
        y45.j(longSparseArray, "<this>");
        if (longSparseArray.garbage) {
            int i = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != DELETED) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i2;
        }
        return longSparseArray.size;
    }

    public static final <E> String commonToString(LongSparseArray<E> longSparseArray) {
        y45.j(longSparseArray, "<this>");
        if (longSparseArray.size() <= 0) {
            return NetResponse.EMPTY_RESPONSE;
        }
        StringBuilder sb = new StringBuilder(longSparseArray.size * 28);
        sb.append('{');
        int i = longSparseArray.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(longSparseArray.keyAt(i2));
            sb.append('=');
            E eValueAt = longSparseArray.valueAt(i2);
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

    public static final <E> E commonValueAt(LongSparseArray<E> longSparseArray, int i) {
        int i2;
        y45.j(longSparseArray, "<this>");
        if (i < 0 || i >= (i2 = longSparseArray.size)) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i).toString());
        }
        if (longSparseArray.garbage) {
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != DELETED) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i3;
        }
        return (E) longSparseArray.values[i];
    }

    public static final <T> boolean contains(LongSparseArray<T> longSparseArray, long j) {
        y45.j(longSparseArray, "<this>");
        return longSparseArray.containsKey(j);
    }

    public static final <T> void forEach(LongSparseArray<T> longSparseArray, s74 s74Var) {
        y45.j(longSparseArray, "<this>");
        y45.j(s74Var, "action");
        int size = longSparseArray.size();
        for (int i = 0; i < size; i++) {
            s74Var.invoke(Long.valueOf(longSparseArray.keyAt(i)), longSparseArray.valueAt(i));
        }
    }

    public static final <T> T getOrDefault(LongSparseArray<T> longSparseArray, long j, T t) {
        y45.j(longSparseArray, "<this>");
        return longSparseArray.get(j, t);
    }

    public static final <T> T getOrElse(LongSparseArray<T> longSparseArray, long j, c74 c74Var) {
        y45.j(longSparseArray, "<this>");
        y45.j(c74Var, "defaultValue");
        T t = longSparseArray.get(j);
        return t == null ? (T) c74Var.invoke() : t;
    }

    public static final <T> int getSize(LongSparseArray<T> longSparseArray) {
        y45.j(longSparseArray, "<this>");
        return longSparseArray.size();
    }

    public static void getSize$annotations(LongSparseArray longSparseArray) {
    }

    public static final <T> boolean isNotEmpty(LongSparseArray<T> longSparseArray) {
        y45.j(longSparseArray, "<this>");
        return !longSparseArray.isEmpty();
    }

    public static final <T> fr5 keyIterator(final LongSparseArray<T> longSparseArray) {
        y45.j(longSparseArray, "<this>");
        return new fr5() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < longSparseArray.size();
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override
            public long nextLong() {
                LongSparseArray<T> longSparseArray2 = longSparseArray;
                int i = this.index;
                this.index = i + 1;
                return longSparseArray2.keyAt(i);
            }

            public final void setIndex(int i) {
                this.index = i;
            }
        };
    }

    public static final <T> LongSparseArray<T> plus(LongSparseArray<T> longSparseArray, LongSparseArray<T> longSparseArray2) {
        y45.j(longSparseArray, "<this>");
        y45.j(longSparseArray2, "other");
        LongSparseArray<T> longSparseArray3 = new LongSparseArray<>(longSparseArray.size() + longSparseArray2.size());
        longSparseArray3.putAll(longSparseArray);
        longSparseArray3.putAll(longSparseArray2);
        return longSparseArray3;
    }

    public static final boolean remove(LongSparseArray longSparseArray, long j, Object obj) {
        y45.j(longSparseArray, "<this>");
        return longSparseArray.remove(j, obj);
    }

    public static final <T> void set(LongSparseArray<T> longSparseArray, long j, T t) {
        y45.j(longSparseArray, "<this>");
        longSparseArray.put(j, t);
    }

    public static final <T> Iterator<T> valueIterator(LongSparseArray<T> longSparseArray) {
        y45.j(longSparseArray, "<this>");
        return new C04691(longSparseArray);
    }

    public static final <E> E commonGet(LongSparseArray<E> longSparseArray, long j, E e) {
        y45.j(longSparseArray, "<this>");
        int iBinarySearch = ContainerHelpersKt.binarySearch(longSparseArray.keys, longSparseArray.size, j);
        return (iBinarySearch < 0 || longSparseArray.values[iBinarySearch] == DELETED) ? e : (E) longSparseArray.values[iBinarySearch];
    }

    public static final <E> boolean commonReplace(LongSparseArray<E> longSparseArray, long j, E e, E e2) {
        y45.j(longSparseArray, "<this>");
        int iIndexOfKey = longSparseArray.indexOfKey(j);
        if (iIndexOfKey < 0 || !y45.e(longSparseArray.values[iIndexOfKey], e)) {
            return false;
        }
        longSparseArray.values[iIndexOfKey] = e2;
        return true;
    }

    public static final <E> boolean commonRemove(LongSparseArray<E> longSparseArray, long j, E e) {
        y45.j(longSparseArray, "<this>");
        int iIndexOfKey = longSparseArray.indexOfKey(j);
        if (iIndexOfKey < 0 || !y45.e(e, longSparseArray.valueAt(iIndexOfKey))) {
            return false;
        }
        longSparseArray.removeAt(iIndexOfKey);
        return true;
    }
}
