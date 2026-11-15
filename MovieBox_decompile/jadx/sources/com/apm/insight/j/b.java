package com.apm.insight.j;

import android.content.Context;
import android.os.Handler;
import com.apm.insight.e;
import com.apm.insight.runtime.m;
import com.apm.insight.runtime.o;
import java.util.Map;

public final class b extends a {

    private static Runnable f18952b = new Runnable() {
        @Override
        public final void run() {
            m.a().a().removeCallbacks(this);
            m.a().a(new b(m.a().a(), e.g()));
        }
    };

    private Context f18953a;

    public b(Handler handler, Context context) {
        super(handler, 30000L);
        this.f18953a = context;
    }

    public static void c() {
        m.a().a(f18952b, 100L);
    }

    @Override
    public final void run() {
        Map<String, Object> commonParams;
        try {
            commonParams = e.a().c().getCommonParams();
        } catch (Throwable unused) {
            commonParams = null;
        }
        if (commonParams != null) {
            try {
                if (com.apm.insight.nativecrash.b.a(commonParams)) {
                    a(b());
                    return;
                }
            } catch (Throwable unused2) {
                return;
            }
        }
        o.a().a(commonParams, com.apm.insight.entity.b.b());
    }
}
