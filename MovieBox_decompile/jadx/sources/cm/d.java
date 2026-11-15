package cm;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f17015a = new d();

    private static final Lazy f17016b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.i();
        }
    });

    private static final Lazy f17017c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.h();
        }
    });

    private static final Lazy f17018d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.d();
        }
    });

    private d() {
    }

    public static final MMKV d() {
        MMKV mmkvI = MMKV.I("kv_bucket_config");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public static final MMKV h() {
        MMKV mmkvI = MMKV.I("kv_local_config");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public static final MMKV i() {
        MMKV mmkvI = MMKV.I("kv_app_config");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV e() {
        return (MMKV) f17018d.getValue();
    }

    public final MMKV f() {
        return (MMKV) f17017c.getValue();
    }

    public final MMKV g() {
        return (MMKV) f17016b.getValue();
    }
}
