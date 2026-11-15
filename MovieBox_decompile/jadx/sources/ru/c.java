package ru;

import android.util.Log;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.j0;
import tu.l;

public final class c implements retrofit2.f {

    public final d f71348a;

    public final Function1 f71349b;

    public c(d dVar, com.transsion.upgradesdk.manager.h hVar) {
        this.f71348a = dVar;
        this.f71349b = hVar;
    }

    @Override
    public final void a(retrofit2.d call, Throwable t10) {
        Intrinsics.h(call, "call");
        Intrinsics.h(t10, "t");
        String msg = "升级信息 - request failure: " + t10;
        Intrinsics.h("UpgradeSdkManager", "tag");
        Intrinsics.h(msg, "msg");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!tu.g.f72839a && jCurrentTimeMillis - tu.g.f72840b >= 5000) {
            tu.g.f72840b = jCurrentTimeMillis;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                tu.g.f72839a = true;
            }
            boolean z10 = tu.g.f72839a;
        }
        boolean z11 = qu.f.f70259o.a().f70264d;
        this.f71348a.f71353c = 6;
        l.c(2, 3, t10.getMessage(), "2", null, null, null, 112);
        this.f71349b.invoke(null);
    }

    @Override
    public final void b(retrofit2.d call, j0 response) {
        Intrinsics.h(call, "call");
        Intrinsics.h(response, "response");
        if (response.e()) {
            this.f71348a.f71353c = 5;
            this.f71349b.invoke(response.a());
            return;
        }
        this.f71348a.f71353c = 6;
        l.a(2, 3, response.b() + '-' + response.f(), "2", 16);
        this.f71349b.invoke(null);
    }
}
