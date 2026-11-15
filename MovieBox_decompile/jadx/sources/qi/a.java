package qi;

import android.os.SystemClock;

public interface a {

    public static final class C0863a {
        public static b a(a aVar) {
            return null;
        }

        public static void b(a aVar) {
            b logViewConfig = aVar.getLogViewConfig();
            if (logViewConfig == null || !logViewConfig.d()) {
                return;
            }
            h.f69682a.x(logViewConfig);
        }

        public static void c(a aVar) {
            b logViewConfig = aVar.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.o(SystemClock.elapsedRealtime());
                if (logViewConfig.c()) {
                    h.f69682a.y(logViewConfig);
                }
            }
        }
    }

    b getLogViewConfig();
}
