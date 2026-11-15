package com.transsion.rewardscenter.utils;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final b f49288a = new b();

    private static final Lazy f49289b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return b.f();
        }
    });

    public static final int f49290c = 8;

    private b() {
    }

    private final MMKV b() {
        return (MMKV) f49289b.getValue();
    }

    public static final MMKV f() {
        return MMKV.I("RewardsCenterCache");
    }

    public final String c() {
        String strK = b().k("phone_cc");
        return strK == null ? "" : strK;
    }

    public final String d() {
        String strK = b().k("phone_iso");
        return strK == null ? "" : strK;
    }

    public final String e() {
        String strK = b().k("phone_number");
        return strK == null ? "" : strK;
    }

    public final void g(String cc2, String iso, String number) {
        Intrinsics.h(cc2, "cc");
        Intrinsics.h(iso, "iso");
        Intrinsics.h(number, "number");
        b().putString("phone_cc", cc2);
        b().putString("phone_iso", iso);
        b().putString("phone_number", number);
    }
}
