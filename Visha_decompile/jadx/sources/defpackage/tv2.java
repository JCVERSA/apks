package defpackage;

import androidx.core.view.ViewCompat;
import java.util.Map;

public final class tv2 {
    public final Map a = w71.b();

    public final int a(String str) {
        if (str == null) {
            return -1;
        }
        Map map = this.a;
        Object objValueOf = map.get(str);
        if (objValueOf == null) {
            objValueOf = Integer.valueOf(ViewCompat.generateViewId());
            map.put(str, objValueOf);
        }
        return ((Number) objValueOf).intValue();
    }
}
