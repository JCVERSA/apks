package androidx.room.util;

import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.exifinterface.media.ExifInterface;
import defpackage.e74;
import defpackage.y45;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;

@Metadata(d1 = {"\u00004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ay\u0010\u000b\u001a\u00020\t\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\u0004\b\u0001\u0010\u00022\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u00042\u0006\u0010\u0007\u001a\u00020\u00062.\u0010\n\u001a*\u0012 \u0012\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u0004\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\f\u001aC\u0010\u000e\u001a\u00020\t\"\u0004\b\u0000\u0010\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0018\u0010\n\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000e\u0010\u000f\u001aY\u0010\u0011\u001a\u00020\t\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\u0004\b\u0001\u0010\u00022\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u001e\u0010\n\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0010\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "map", "", "isRelationCollection", "Lkotlin/Function1;", "Lzfb;", "fetchBlock", "recursiveFetchHashMap", "(Ljava/util/HashMap;ZLe74;)V", "Landroidx/collection/LongSparseArray;", "recursiveFetchLongSparseArray", "(Landroidx/collection/LongSparseArray;ZLe74;)V", "Landroidx/collection/ArrayMap;", "recursiveFetchArrayMap", "(Landroidx/collection/ArrayMap;ZLe74;)V", "room-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public final class RelationUtil {
    public static final <K, V> void recursiveFetchArrayMap(ArrayMap<K, V> arrayMap, boolean z, e74 e74Var) {
        y45.j(arrayMap, "map");
        y45.j(e74Var, "fetchBlock");
        ArrayMap arrayMap2 = new ArrayMap(999);
        int size = arrayMap.getSize();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (z) {
                arrayMap2.put(arrayMap.keyAt(i), arrayMap.valueAt(i));
            } else {
                arrayMap2.put(arrayMap.keyAt(i), null);
            }
            i++;
            i2++;
            if (i2 == 999) {
                e74Var.invoke(arrayMap2);
                if (!z) {
                    arrayMap.putAll((Map) arrayMap2);
                }
                arrayMap2.clear();
                i2 = 0;
            }
        }
        if (i2 > 0) {
            e74Var.invoke(arrayMap2);
            if (z) {
                return;
            }
            arrayMap.putAll((Map) arrayMap2);
        }
    }

    public static final <K, V> void recursiveFetchHashMap(HashMap<K, V> map, boolean z, e74 e74Var) {
        int i;
        y45.j(map, "map");
        y45.j(e74Var, "fetchBlock");
        HashMap map2 = new HashMap(999);
        Iterator<K> it = map.keySet().iterator();
        loop0: while (true) {
            i = 0;
            do {
                if (!it.hasNext()) {
                    break loop0;
                }
                K next = it.next();
                if (z) {
                    y45.i(next, "key");
                    map2.put(next, map.get(next));
                } else {
                    y45.i(next, "key");
                    map2.put(next, null);
                }
                i++;
            } while (i != 999);
            e74Var.invoke(map2);
            if (!z) {
                map.putAll(map2);
            }
            map2.clear();
        }
        if (i > 0) {
            e74Var.invoke(map2);
            if (z) {
                return;
            }
            map.putAll(map2);
        }
    }

    public static final <V> void recursiveFetchLongSparseArray(LongSparseArray<V> longSparseArray, boolean z, e74 e74Var) {
        y45.j(longSparseArray, "map");
        y45.j(e74Var, "fetchBlock");
        LongSparseArray<? extends V> longSparseArray2 = new LongSparseArray<>(999);
        int size = longSparseArray.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (z) {
                longSparseArray2.put(longSparseArray.keyAt(i), longSparseArray.valueAt(i));
            } else {
                longSparseArray2.put(longSparseArray.keyAt(i), null);
            }
            i++;
            i2++;
            if (i2 == 999) {
                e74Var.invoke(longSparseArray2);
                if (!z) {
                    longSparseArray.putAll(longSparseArray2);
                }
                longSparseArray2.clear();
                i2 = 0;
            }
        }
        if (i2 > 0) {
            e74Var.invoke(longSparseArray2);
            if (z) {
                return;
            }
            longSparseArray.putAll(longSparseArray2);
        }
    }
}
