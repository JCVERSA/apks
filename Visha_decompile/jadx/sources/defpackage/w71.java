package defpackage;

import androidx.collection.ArrayMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public abstract class w71 {
    public static final boolean a(List... listArr) {
        y45.j(listArr, "items");
        for (List list : listArr) {
            if (list != null && !list.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public static final Map b() {
        return new ArrayMap();
    }

    public static final List c(List list) {
        y45.j(list, "<this>");
        if (!ccb.n(list)) {
            return list;
        }
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        y45.i(listUnmodifiableList, "{\n        Collections.un…st(ArrayList(this))\n    }");
        return listUnmodifiableList;
    }
}
