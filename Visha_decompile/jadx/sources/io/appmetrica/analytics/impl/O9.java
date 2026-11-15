package io.appmetrica.analytics.impl;

import defpackage.qv0;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.Map;
import org.json.JSONObject;

public final class O9 extends Gg {
    public final P9 b;

    public O9(C2706m5 c2706m5, TimeProvider timeProvider) {
        super(c2706m5);
        this.b = new P9(c2706m5, timeProvider);
    }

    @Override
    public final boolean a(C2408a6 c2408a6) {
        long jOptLong;
        P9 p9 = this.b;
        I9 i9 = p9.a.s().C;
        Long lValueOf = i9 != null ? Long.valueOf(i9.a) : null;
        if (lValueOf != null) {
            Un un = p9.a.t;
            synchronized (un) {
                jOptLong = un.a.a().optLong("external_attribution_window_start", -1L);
            }
            if (jOptLong < 0) {
                jOptLong = p9.b.currentTimeMillis();
                p9.a.t.a(jOptLong);
            }
            if (p9.b.currentTimeMillis() - jOptLong <= lValueOf.longValue()) {
                H9 h9 = (H9) MessageNano.mergeFrom(new H9(), c2408a6.getValueBytes());
                int i = h9.a;
                String str = new String(h9.b, qv0.b);
                String str2 = this.b.a.c.j().get(Integer.valueOf(i));
                if (str2 != null) {
                    try {
                        if (JsonUtils.isEqualTo(new JSONObject(str), new JSONObject(str2))) {
                            this.a.m.info("Ignoring attribution of type `" + R9.a(i) + "` with value `" + str + "` since it is not new", new Object[0]);
                            return true;
                        }
                    } catch (Throwable unused) {
                    }
                }
                P9 p10 = this.b;
                Map<Integer, String> mapJ = p10.a.c.j();
                mapJ.put(Integer.valueOf(i), str);
                p10.a.c.a(mapJ);
                this.a.m.info("Handling attribution of type `" + R9.a(i) + '`', new Object[0]);
                return false;
            }
        }
        this.a.m.info("Ignoring attribution since out of collecting interval", new Object[0]);
        return true;
    }
}
