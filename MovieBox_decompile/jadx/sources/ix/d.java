package ix;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f62813a = new d();

    private static final Lazy f62814b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.c();
        }
    });

    private d() {
    }

    public static final MMKV c() {
        MMKV mmkvJ = MMKV.J("kv_login", 2);
        Intrinsics.g(mmkvJ, "mmkvWithID(...)");
        return mmkvJ;
    }

    public final MMKV b() {
        return (MMKV) f62814b.getValue();
    }
}
