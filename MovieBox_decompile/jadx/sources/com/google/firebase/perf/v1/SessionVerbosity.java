package com.google.firebase.perf.v1;

import com.google.protobuf.y;

public enum SessionVerbosity implements y.c {
    SESSION_VERBOSITY_NONE(0),
    GAUGES_AND_SYSTEM_EVENTS(1);

    public static final int GAUGES_AND_SYSTEM_EVENTS_VALUE = 1;
    public static final int SESSION_VERBOSITY_NONE_VALUE = 0;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public SessionVerbosity findValueByNumber(int i10) {
            return SessionVerbosity.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {

        static final y.e f31564a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return SessionVerbosity.forNumber(i10) != null;
        }
    }

    SessionVerbosity(int i10) {
        this.value = i10;
    }

    public static SessionVerbosity forNumber(int i10) {
        if (i10 == 0) {
            return SESSION_VERBOSITY_NONE;
        }
        if (i10 != 1) {
            return null;
        }
        return GAUGES_AND_SYSTEM_EVENTS;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f31564a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static SessionVerbosity valueOf(int i10) {
        return forNumber(i10);
    }
}
