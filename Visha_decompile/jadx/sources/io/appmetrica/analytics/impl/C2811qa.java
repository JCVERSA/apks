package io.appmetrica.analytics.impl;

import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class C2811qa implements InterfaceC2414ac {
    @Override
    public final C2536f9 a(C2808q7 c2808q7) {
        C2536f9 c2536f9 = null;
        if ((c2808q7 != null ? c2808q7.b : null) != null && c2808q7.c != null) {
            c2536f9 = new C2536f9();
            c2536f9.b = c2808q7.b.doubleValue();
            c2536f9.a = c2808q7.c.doubleValue();
            Integer num = c2808q7.d;
            if (num != null) {
                c2536f9.g = num.intValue();
            }
            Integer num2 = c2808q7.e;
            if (num2 != null) {
                c2536f9.e = num2.intValue();
            }
            Integer num3 = c2808q7.f;
            if (num3 != null) {
                c2536f9.d = num3.intValue();
            }
            Integer num4 = c2808q7.g;
            if (num4 != null) {
                c2536f9.f = num4.intValue();
            }
            Long l = c2808q7.h;
            if (l != null) {
                c2536f9.c = TimeUnit.MILLISECONDS.toSeconds(l.longValue());
            }
            String str = c2808q7.i;
            if (str != null) {
                if (y45.e(str, DownloadFacadeEnum.USER_GPS)) {
                    c2536f9.h = 1;
                } else if (y45.e(str, "network")) {
                    c2536f9.h = 2;
                }
            }
            String str2 = c2808q7.j;
            if (str2 != null) {
                c2536f9.i = str2;
            }
        }
        return c2536f9;
    }
}
