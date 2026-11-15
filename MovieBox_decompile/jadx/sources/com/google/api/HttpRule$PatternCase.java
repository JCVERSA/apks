package com.google.api;

public enum HttpRule$PatternCase {
    GET(2),
    PUT(3),
    POST(4),
    DELETE(5),
    PATCH(6),
    CUSTOM(8),
    PATTERN_NOT_SET(0);

    private final int value;

    HttpRule$PatternCase(int i10) {
        this.value = i10;
    }

    public static HttpRule$PatternCase forNumber(int i10) {
        if (i10 == 0) {
            return PATTERN_NOT_SET;
        }
        if (i10 == 8) {
            return CUSTOM;
        }
        if (i10 == 2) {
            return GET;
        }
        if (i10 == 3) {
            return PUT;
        }
        if (i10 == 4) {
            return POST;
        }
        if (i10 == 5) {
            return DELETE;
        }
        if (i10 != 6) {
            return null;
        }
        return PATCH;
    }

    public int getNumber() {
        return this.value;
    }

    @Deprecated
    public static HttpRule$PatternCase valueOf(int i10) {
        return forNumber(i10);
    }
}
