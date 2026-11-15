package zk;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f76812a = new e();

    private static final Lazy f76813b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return e.c();
        }
    });

    public static final int f76814c = 8;

    private e() {
    }

    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("home_mmkv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return (MMKV) f76813b.getValue();
    }
}
