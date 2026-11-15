package com.transsnet.downloader.util;

import com.tencent.mmkv.MMKV;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

public final class a0 {

    private static int f57698c;

    private static int f57699d;

    public static final a0 f57696a = new a0();

    private static final Lazy f57697b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return a0.f();
        }
    });

    private static final int f57700e = 20;

    private static final int f57701f = 3;

    private static CopyOnWriteArrayList f57702g = new CopyOnWriteArrayList();

    private static final androidx.p009lifecycle.b0 f57703h = new androidx.p009lifecycle.b0();

    private a0() {
    }

    private final int b() {
        int iOptInt;
        String value;
        if (f57698c <= 0) {
            try {
                ConfigBean configBeanC = cm.f.f17019c.a().c("shorts_unlock_config", true);
                iOptInt = (configBeanC == null || (value = configBeanC.getValue()) == null) ? f57700e : new JSONObject(value).optInt("maxUnlockCount");
            } catch (Exception unused) {
                iOptInt = f57700e;
            }
            f57698c = iOptInt;
        }
        return f57698c;
    }

    private final MMKV d() {
        return (MMKV) f57697b.getValue();
    }

    public static final MMKV f() {
        MMKV mmkvI = MMKV.I("short_tv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final int c(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        return d().getInt(subjectId, b());
    }

    public final int e() {
        int iOptInt;
        String value;
        if (f57699d <= 0) {
            try {
                ConfigBean configBeanC = cm.f.f17019c.a().c("shorts_unlock_config", true);
                iOptInt = (configBeanC == null || (value = configBeanC.getValue()) == null) ? f57701f : new JSONObject(value).optInt("perUnlockCount");
            } catch (Exception unused) {
                iOptInt = f57701f;
            }
            f57699d = iOptInt;
        }
        return f57699d;
    }

    public final void g(String subjectId, int i10) {
        Intrinsics.h(subjectId, "subjectId");
        d().putInt(subjectId, i10);
        Iterator it = f57702g.iterator();
        while (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
        }
    }
}
