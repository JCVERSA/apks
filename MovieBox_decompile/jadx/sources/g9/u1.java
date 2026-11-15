package g9;

import android.media.metrics.LogSessionId;

public final class u1 {

    public static final u1 f60915b;

    private final a f60916a;

    private static final class a {

        public static final a f60917b = new a(LogSessionId.LOG_SESSION_ID_NONE);

        public final LogSessionId f60918a;

        public a(LogSessionId logSessionId) {
            this.f60918a = logSessionId;
        }
    }

    static {
        f60915b = com.google.android.exoplayer2.util.p0.f26854a < 31 ? new u1() : new u1(a.f60917b);
    }

    public u1() {
        this((a) null);
        com.google.android.exoplayer2.util.a.g(com.google.android.exoplayer2.util.p0.f26854a < 31);
    }

    public LogSessionId a() {
        return ((a) com.google.android.exoplayer2.util.a.e(this.f60916a)).f60918a;
    }

    public u1(LogSessionId logSessionId) {
        this(new a(logSessionId));
    }

    private u1(a aVar) {
        this.f60916a = aVar;
    }
}
