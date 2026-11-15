package androidx.compose.ui.layout;

import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;

public abstract class w {
    public static v a(x xVar, int i10, int i11, Map map, Function1 function1) {
        return xVar.L0(i10, i11, map, null, function1);
    }

    public static v b(x xVar, int i10, int i11, Map map, Function1 function1, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: layout");
        }
        if ((i12 & 4) != 0) {
            map = MapsKt.h();
        }
        return xVar.p0(i10, i11, map, function1);
    }
}
