package ix;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    public static final f f62815a = new f();

    private static final Lazy f62816b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.c();
        }
    });

    private f() {
    }

    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("kv_login_sms");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return (MMKV) f62816b.getValue();
    }
}
