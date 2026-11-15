package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.backport.Function;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Set;

public final class Jg implements Function {
    public final C3000y0 a;

    public Jg(C3000y0 c3000y0) {
        this.a = c3000y0;
    }

    @Override
    public final Object apply(Object obj) {
        String str = (String) obj;
        C3000y0 c3000y0 = this.a;
        String str2 = c3000y0.c;
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(c3000y0.f.a);
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        Bundle bundle = new Bundle();
        bundle.putString("payload_crash_id", str2);
        C2506e4 c2506e4 = new C2506e4("", "", 5898, 0, orCreatePublicLogger);
        if (str != null) {
            c2506e4.f(str);
        }
        c2506e4.m = bundle;
        c2506e4.c = this.a.f.f;
        return c2506e4;
    }
}
