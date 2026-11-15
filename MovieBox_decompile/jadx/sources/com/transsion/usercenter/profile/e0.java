package com.transsion.usercenter.profile;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public final class e0 {

    public static final e0 f54991a = new e0();

    private static final Lazy f54992b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return e0.c();
        }
    });

    private e0() {
    }

    public static final MMKV c() {
        return MMKV.I("profile_kv");
    }

    public final MMKV b() {
        return (MMKV) f54992b.getValue();
    }
}
