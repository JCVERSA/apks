package defpackage;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public final class c {

    public static final c f16360a = new c();

    private static final Lazy f16361b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return c.c();
        }
    });

    private c() {
    }

    public static final MMKV c() {
        return MMKV.I("palm_pay_kv");
    }

    public final MMKV b() {
        return (MMKV) f16361b.getValue();
    }
}
