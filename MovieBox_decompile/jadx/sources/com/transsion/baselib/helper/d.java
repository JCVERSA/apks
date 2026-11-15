package com.transsion.baselib.helper;

import com.tencent.mmkv.MMKV;
import com.transsion.player.p007enum.ScaleMode;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f42124a = new d();

    private static final Lazy f42125b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.e();
        }
    });

    private d() {
    }

    private final MMKV b() {
        return (MMKV) f42125b.getValue();
    }

    public static final MMKV e() {
        MMKV mmkvI = MMKV.I("LocalVideoPlayerConfig");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final ScaleMode c() {
        int i10 = b().getInt("ScaleMode", 0);
        ScaleMode scaleMode = ScaleMode.SCALE_ASPECT_FIT;
        if (scaleMode.getValue() == i10) {
            return scaleMode;
        }
        ScaleMode scaleMode2 = ScaleMode.SCALE_ASPECT_FILL;
        return scaleMode2.getValue() == i10 ? scaleMode2 : ScaleMode.SCALE_TO_FILL;
    }

    public final float d() {
        return b().getFloat("speed", 1.0f);
    }

    public final void f(ScaleMode mode) {
        Intrinsics.h(mode, "mode");
        b().putInt("ScaleMode", mode.getValue());
    }

    public final void g(float f10) {
        b().putFloat("speed", f10);
    }
}
