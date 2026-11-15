package com.google.android.datatransport.runtime.firebase.transport;

import defpackage.fj8;

public final class LogEventDropped {
    public static final LogEventDropped c = new a().a();
    public final long a;
    public final Reason b;

    public enum Reason implements fj8 {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);

        private final int number_;

        Reason(int i) {
            this.number_ = i;
        }

        @Override
        public int getNumber() {
            return this.number_;
        }
    }

    public static final class a {
        public long a = 0;
        public Reason b = Reason.REASON_UNKNOWN;

        public LogEventDropped a() {
            return new LogEventDropped(this.a, this.b);
        }

        public a b(long j) {
            this.a = j;
            return this;
        }

        public a c(Reason reason) {
            this.b = reason;
            return this;
        }
    }

    public LogEventDropped(long j, Reason reason) {
        this.a = j;
        this.b = reason;
    }

    public static a c() {
        return new a();
    }

    public long a() {
        return this.a;
    }

    public Reason b() {
        return this.b;
    }
}
