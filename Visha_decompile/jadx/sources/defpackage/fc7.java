package defpackage;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Map;

public abstract class fc7 {
    public static boolean a(Object obj) {
        if (obj == null) {
            return true;
        }
        if (obj.getClass().isArray() && Array.getLength(obj) == 0) {
            return true;
        }
        if ((obj instanceof CharSequence) && obj.toString().length() == 0) {
            return true;
        }
        if ((obj instanceof Collection) && ((Collection) obj).isEmpty()) {
            return true;
        }
        if ((obj instanceof Map) && ((Map) obj).isEmpty()) {
            return true;
        }
        if ((obj instanceof SimpleArrayMap) && ((SimpleArrayMap) obj).isEmpty()) {
            return true;
        }
        if ((obj instanceof SparseArray) && ((SparseArray) obj).size() == 0) {
            return true;
        }
        if ((obj instanceof SparseBooleanArray) && ((SparseBooleanArray) obj).size() == 0) {
            return true;
        }
        if ((obj instanceof SparseIntArray) && ((SparseIntArray) obj).size() == 0) {
            return true;
        }
        if ((obj instanceof SparseLongArray) && ((SparseLongArray) obj).size() == 0) {
            return true;
        }
        if ((obj instanceof LongSparseArray) && ((LongSparseArray) obj).size() == 0) {
            return true;
        }
        return (obj instanceof android.util.LongSparseArray) && ((android.util.LongSparseArray) obj).size() == 0;
    }

    public static boolean b(Collection collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean c(Object obj) {
        return !a(obj);
    }

    public static boolean d(Collection collection) {
        return !b(collection);
    }

    public static Object e(Object obj) {
        obj.getClass();
        return obj;
    }

    public static Object f(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }
}
