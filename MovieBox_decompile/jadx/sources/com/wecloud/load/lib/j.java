package com.wecloud.load.lib;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class j {

    public static final j f58610a = new j();

    private static final AtomicReference f58611b = new AtomicReference(null);

    public interface a {
        void a(String str, Map map);
    }

    private j() {
    }

    public final void a(List results) {
        Intrinsics.h(results, "results");
        a aVar = (a) f58611b.get();
        if (aVar == null) {
            return;
        }
        Iterator it = results.iterator();
        while (it.hasNext()) {
            aVar.a("network_probe", c((n) it.next()));
        }
    }

    public final void b(a aVar) {
        f58611b.set(aVar);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c  */
    public final Map c(n result) {
        Map mapG;
        Intrinsics.h(result, "result");
        String strK = result.k();
        String str = null;
        if (StringsKt.q0(strK)) {
            strK = null;
        }
        boolean z10 = result.l() != 200;
        if (z10) {
            mapG = result.g();
            if (mapG.isEmpty()) {
                mapG = null;
            }
        } else {
            mapG = null;
        }
        if (z10) {
            String strF = result.f();
            if (!StringsKt.q0(strF)) {
                str = strF;
            }
        }
        return MapsKt.k(TuplesKt.a("url", result.n()), TuplesKt.a("method", result.i()), TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, Boolean.valueOf(result.m())), TuplesKt.a("status_code", Integer.valueOf(result.l())), TuplesKt.a("duration", Long.valueOf(result.c())), TuplesKt.a(TrackingKey.REQUEST_TIME, Long.valueOf(result.j())), TuplesKt.a("error_code", Integer.valueOf(result.d())), TuplesKt.a(TrackingKey.ERROR_MESSAGE, result.e()), TuplesKt.a("server_ip", strK), TuplesKt.a("http_headers", mapG), TuplesKt.a("http_body", str), TuplesKt.a("http_protocol", result.h()));
    }
}
