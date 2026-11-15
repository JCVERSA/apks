package com.google.logging.type;

import com.google.protobuf.y;

public enum LogSeverity implements y.c {
    DEFAULT(0),
    DEBUG(100),
    INFO(200),
    NOTICE(300),
    WARNING(400),
    ERROR(500),
    CRITICAL(600),
    ALERT(ALERT_VALUE),
    EMERGENCY(EMERGENCY_VALUE),
    UNRECOGNIZED(-1);

    public static final int ALERT_VALUE = 700;
    public static final int CRITICAL_VALUE = 600;
    public static final int DEBUG_VALUE = 100;
    public static final int DEFAULT_VALUE = 0;
    public static final int EMERGENCY_VALUE = 800;
    public static final int ERROR_VALUE = 500;
    public static final int INFO_VALUE = 200;
    public static final int NOTICE_VALUE = 300;
    public static final int WARNING_VALUE = 400;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public LogSeverity findValueByNumber(int i10) {
            return LogSeverity.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {

        static final y.e f31925a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return LogSeverity.forNumber(i10) != null;
        }
    }

    LogSeverity(int i10) {
        this.value = i10;
    }

    public static LogSeverity forNumber(int i10) {
        if (i10 == 0) {
            return DEFAULT;
        }
        if (i10 == 100) {
            return DEBUG;
        }
        if (i10 == 200) {
            return INFO;
        }
        if (i10 == 300) {
            return NOTICE;
        }
        if (i10 == 400) {
            return WARNING;
        }
        if (i10 == 500) {
            return ERROR;
        }
        if (i10 == 600) {
            return CRITICAL;
        }
        if (i10 == 700) {
            return ALERT;
        }
        if (i10 != 800) {
            return null;
        }
        return EMERGENCY;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f31925a;
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Deprecated
    public static LogSeverity valueOf(int i10) {
        return forNumber(i10);
    }
}
