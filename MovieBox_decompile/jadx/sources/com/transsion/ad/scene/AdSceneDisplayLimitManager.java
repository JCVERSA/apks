package com.transsion.ad.scene;

import android.app.Application;
import ci.p;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.scene.AdSceneLimitDao;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class AdSceneDisplayLimitManager {

    public static final AdSceneDisplayLimitManager f41150a = new AdSceneDisplayLimitManager();

    private AdSceneDisplayLimitManager() {
    }

    public final Object a(String str, Continuation continuation) {
        MbAdDatabase.Companion mVar = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        AdSceneLimitDao adSceneLimitDaoU0 = mVar.b(applicationA).u0();
        String strC = p.f16947a.c();
        long jCurrentTimeMillis = System.currentTimeMillis();
        a aVar = a.f41152a;
        return adSceneLimitDaoU0.b(str, strC, jCurrentTimeMillis, ((long) aVar.f(str)) * 1000, aVar.d(str), continuation);
    }

    public final void b(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        k.d(o0.a(y0.b()), null, null, new AdSceneDisplayLimitManager$recordDisplay$1(sceneId, null), 3, null);
    }
}
