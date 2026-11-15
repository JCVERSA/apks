package ls;

import android.os.SystemClock;
import qi.h;

public interface d {

    public static final class a {
        public static qi.b a(d dVar) {
            return null;
        }

        public static void b(d dVar) {
            qi.b logViewConfig = dVar.getLogViewConfig();
            if (logViewConfig == null || !logViewConfig.d()) {
                return;
            }
            h.f69682a.x(logViewConfig);
        }

        public static void c(d dVar) {
            qi.b logViewConfig = dVar.getLogViewConfig();
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
