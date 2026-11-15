package defpackage;

import android.media.metrics.LogSessionId;

public final class ta8 {
    public static final ta8 b;
    public final a a;

    public static final class a {
        public static final a b = new a(LogSessionId.LOG_SESSION_ID_NONE);
        public final LogSessionId a;

        public a(LogSessionId logSessionId) {
            this.a = logSessionId;
        }
    }

    static {
        b = blb.a < 31 ? new ta8() : new ta8(a.b);
    }

    public ta8() {
        this((a) null);
        zi.g(blb.a < 31);
    }

    public LogSessionId a() {
        return ((a) zi.e(this.a)).a;
    }

    public ta8(LogSessionId logSessionId) {
        this(new a(logSessionId));
    }

    public ta8(a aVar) {
        this.a = aVar;
    }
}
