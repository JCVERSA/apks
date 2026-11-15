package com.transsion.shorttv_pugc.utils;

import androidx.p009lifecycle.b0;
import com.tencent.mmkv.MMKV;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

public final class h {

    private static int f52439d;

    private static int f52440e;

    private static vs.b f52444i;

    public static final h f52436a = new h();

    private static final Lazy f52437b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return h.i();
        }
    });

    private static final Lazy f52438c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return h.j();
        }
    });

    private static final int f52441f = 20;

    private static final int f52442g = 3;

    private static CopyOnWriteArrayList f52443h = new CopyOnWriteArrayList();

    private static final b0 f52445j = new b0();

    private h() {
    }

    private final vs.b c() {
        vs.b bVarH = f52444i;
        if (bVarH == null) {
            ws.a aVarB = cs.a.f58651a.b();
            bVarH = aVarB != null ? aVarB.h() : null;
            f52444i = bVarH;
        }
        return bVarH;
    }

    private final int d() {
        int iOptInt;
        String strA;
        if (f52439d <= 0) {
            try {
                vs.b bVarC = c();
                iOptInt = (bVarC == null || (strA = bVarC.a()) == null) ? f52441f : new JSONObject(strA).optInt("maxUnlockCount");
            } catch (Exception unused) {
                iOptInt = f52441f;
            }
            f52439d = iOptInt;
        }
        return f52439d;
    }

    public static final MMKV i() {
        MMKV mmkvI = MMKV.I("short_tv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public static final MMKV j() {
        MMKV mmkvI = MMKV.I("kv_app");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final int e(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        return f().getInt(subjectId, d());
    }

    public final MMKV f() {
        return (MMKV) f52437b.getValue();
    }

    public final MMKV g() {
        return (MMKV) f52438c.getValue();
    }

    public final int h() {
        int iOptInt;
        String strA;
        if (f52440e <= 0) {
            try {
                vs.b bVarC = c();
                iOptInt = (bVarC == null || (strA = bVarC.a()) == null) ? f52442g : new JSONObject(strA).optInt("perUnlockCount");
            } catch (Exception unused) {
                iOptInt = f52442g;
            }
            f52440e = iOptInt;
        }
        return f52440e;
    }

    public final void k(String subjectId, int i10) {
        Intrinsics.h(subjectId, "subjectId");
        f().putInt(subjectId, i10);
        Iterator it = f52443h.iterator();
        while (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
        }
    }
}
