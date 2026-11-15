package tx;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final b f72876a = new b();

    private static final Lazy f72877b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return b.c();
        }
    });

    private b() {
    }

    public static final MMKV c() {
        MMKV mmkvJ = MMKV.J("dyso_config", 2);
        Intrinsics.g(mmkvJ, "mmkvWithID(...)");
        return mmkvJ;
    }

    public final MMKV b() {
        return (MMKV) f72877b.getValue();
    }
}
