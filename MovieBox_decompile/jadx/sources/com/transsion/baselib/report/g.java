package com.transsion.baselib.report;

import android.os.SystemClock;

public interface g {

    public static final class a {
        public static qi.b a(g gVar) {
            return null;
        }

        public static void b(g gVar) {
            qi.b logViewConfig = gVar.getLogViewConfig();
            if (logViewConfig == null || !logViewConfig.d()) {
                return;
            }
            qi.h.f69682a.x(logViewConfig);
        }

        public static void c(g gVar) {
            qi.b logViewConfig = gVar.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.o(SystemClock.elapsedRealtime());
                if (logViewConfig.c()) {
                    qi.h.f69682a.y(logViewConfig);
                }
            }
        }
    }

    qi.b getLogViewConfig();
}
