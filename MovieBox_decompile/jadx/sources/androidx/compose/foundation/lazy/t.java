package androidx.compose.foundation.lazy;

import kotlin.jvm.functions.Function3;

public abstract class t {
    public static void a(u uVar, Object obj, Object obj2, Function3 function3, int i10, Object obj3) {
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: item");
        }
        if ((i10 & 1) != 0) {
            obj = null;
        }
        if ((i10 & 2) != 0) {
            obj2 = null;
        }
        uVar.a(obj, obj2, function3);
    }
}
