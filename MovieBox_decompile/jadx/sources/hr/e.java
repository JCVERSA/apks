package hr;

import android.os.SystemClock;
import qi.h;

public interface e {

    public static final class a {
        public static qi.b a(e eVar) {
            return null;
        }

        public static void b(e eVar) {
            qi.b logViewConfig = eVar.getLogViewConfig();
            if (logViewConfig == null || !logViewConfig.d()) {
                return;
            }
            h.f69682a.x(logViewConfig);
        }

        public static void c(e eVar) {
            qi.b logViewConfig = eVar.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.o(SystemClock.elapsedRealtime());
                if (logViewConfig.c()) {
                    h.f69682a.y(logViewConfig);
                }
            }
        }
    }

    qi.b getLogViewConfig();
}
