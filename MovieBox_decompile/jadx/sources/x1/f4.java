package x1;

import android.media.metrics.LogSessionId;
import java.util.Objects;

public final class f4 {

    public static final f4 f74892d = new f4("");

    public final String f74893a;

    private final a f74894b;

    private final Object f74895c;

    private static final class a {

        public LogSessionId f74896a = LogSessionId.LOG_SESSION_ID_NONE;

        public void a(LogSessionId logSessionId) {
            androidx.media3.common.util.a.g(this.f74896a.equals(LogSessionId.LOG_SESSION_ID_NONE));
            this.f74896a = logSessionId;
        }
    }

    public f4(String str) {
        this.f74893a = str;
        this.f74894b = androidx.media3.common.util.a1.f10038a >= 31 ? new a() : null;
        this.f74895c = new Object();
    }

    public synchronized LogSessionId a() {
        return ((a) androidx.media3.common.util.a.e(this.f74894b)).f74896a;
    }

    public synchronized void b(LogSessionId logSessionId) {
        ((a) androidx.media3.common.util.a.e(this.f74894b)).a(logSessionId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f4)) {
            return false;
        }
        f4 f4Var = (f4) obj;
        return Objects.equals(this.f74893a, f4Var.f74893a) && Objects.equals(this.f74894b, f4Var.f74894b) && Objects.equals(this.f74895c, f4Var.f74895c);
    }

    public int hashCode() {
        return Objects.hash(this.f74893a, this.f74894b, this.f74895c);
    }
}
