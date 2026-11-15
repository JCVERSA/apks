package f9;

import android.util.SparseArray;
import com.google.android.datatransport.Priority;
import java.util.HashMap;

public final class a {

    private static SparseArray f60050a = new SparseArray();

    private static HashMap f60051b;

    static {
        HashMap map = new HashMap();
        f60051b = map;
        map.put(Priority.DEFAULT, 0);
        f60051b.put(Priority.VERY_LOW, 1);
        f60051b.put(Priority.HIGHEST, 2);
        for (Priority priority : f60051b.keySet()) {
            f60050a.append(((Integer) f60051b.get(priority)).intValue(), priority);
        }
    }

    public static int a(Priority priority) {
        Integer num = (Integer) f60051b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    public static Priority b(int i10) {
        Priority priority = (Priority) f60050a.get(i10);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i10);
    }
}
