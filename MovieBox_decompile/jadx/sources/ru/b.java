package ru;

import android.util.Log;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.j0;
import tu.l;

public final class b implements retrofit2.f {

    public final d f71346a;

    public final Function1 f71347b;

    public b(d dVar, com.transsion.upgradesdk.manager.g gVar) {
        this.f71346a = dVar;
        this.f71347b = gVar;
    }

    @Override
    public final void a(retrofit2.d call, Throwable t10) {
        Intrinsics.h(call, "call");
        Intrinsics.h(t10, "t");
        this.f71346a.f71353c = 3;
        new StringBuilder("CDN - 请求CDN配置失败:").append(t10.getMessage());
        l.c(2, 3, t10.getMessage(), "1", null, null, null, 112);
        this.f71347b.invoke(null);
    }

    @Override
    public final void b(retrofit2.d call, j0 response) {
        Intrinsics.h(call, "call");
        Intrinsics.h(response, "response");
        String msg = "CDN - requestSuccess: " + response;
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
        if (response.e()) {
            this.f71346a.f71353c = 2;
            this.f71347b.invoke(response.a());
            return;
        }
        this.f71346a.f71353c = 3;
        l.a(2, 3, response.b() + '-' + response.f(), "1", 16);
        this.f71347b.invoke(null);
    }
}
