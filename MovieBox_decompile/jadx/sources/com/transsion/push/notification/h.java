package com.transsion.push.notification;

import android.app.Activity;
import android.os.Build;
import androidx.core.app.ActivityCompat;
import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final h f48824a = new h();

    private static final Lazy f48825b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return h.b();
        }
    });

    private static long f48826c;

    private h() {
    }

    public static final MMKV b() {
        MMKV mmkvI = MMKV.I("NoticePermission");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public static void d(h hVar, Activity activity, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 530;
        }
        hVar.c(activity, i10);
    }

    public final void c(Activity activity, int i10) {
        Intrinsics.h(activity, "activity");
        if (Build.VERSION.SDK_INT >= 33) {
            f48826c = System.currentTimeMillis();
            ActivityCompat.g(activity, new String[]{"android.permission.POST_NOTIFICATIONS"}, i10);
        }
    }
}
