package com.google.android.datatransport.runtime.firebase.transport;

public final class LogEventDropped {

    private static final LogEventDropped f23739c = new a().a();

    private final long f23740a;

    private final Reason f23741b;

    public enum Reason implements gc.a {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);

        private final int number_;

        Reason(int i10) {
            this.number_ = i10;
        }

        @Override
        public int getNumber() {
            return this.number_;
        }
    }

    public static final class a {

        private long f23742a = 0;

        private Reason f23743b = Reason.REASON_UNKNOWN;

        a() {
        }

        public LogEventDropped a() {
            return new LogEventDropped(this.f23742a, this.f23743b);
        }

        public a b(long j10) {
            this.f23742a = j10;
            return this;
        }

        public a c(Reason reason) {
            this.f23743b = reason;
            return this;
        }
    }

    LogEventDropped(long j10, Reason reason) {
        this.f23740a = j10;
        this.f23741b = reason;
    }

    public static a c() {
        return new a();
    }

    public long a() {
        return this.f23740a;
    }

    public Reason b() {
        return this.f23741b;
    }
}
