package defpackage;

import android.util.SparseArray;
import com.google.android.datatransport.Priority;
import java.util.HashMap;

public abstract class mf8 {
    public static SparseArray a = new SparseArray();
    public static HashMap b;

    static {
        HashMap map = new HashMap();
        b = map;
        map.put(Priority.DEFAULT, 0);
        b.put(Priority.VERY_LOW, 1);
        b.put(Priority.HIGHEST, 2);
        for (Priority priority : b.keySet()) {
            a.append(((Integer) b.get(priority)).intValue(), priority);
        }
    }

    public static int a(Priority priority) {
        Integer num = (Integer) b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    public static Priority b(int i) {
        Priority priority = (Priority) a.get(i);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i);
    }
}
