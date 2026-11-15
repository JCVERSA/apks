package com.transsion.member;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public final class w {

    public static final w f45184a = new w();

    private static final Lazy f45185b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return w.c();
        }
    });

    public static final int f45186c = 8;

    private w() {
    }

    public static final MMKV c() {
        return MMKV.I("member_kv");
    }

    public final MMKV b() {
        return (MMKV) f45185b.getValue();
    }
}
