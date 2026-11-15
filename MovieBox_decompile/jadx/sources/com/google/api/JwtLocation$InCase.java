package com.google.api;

public enum JwtLocation$InCase {
    HEADER(1),
    QUERY(2),
    IN_NOT_SET(0);

    private final int value;

    JwtLocation$InCase(int i10) {
        this.value = i10;
    }

    public static JwtLocation$InCase forNumber(int i10) {
        if (i10 == 0) {
            return IN_NOT_SET;
        }
        if (i10 == 1) {
            return HEADER;
        }
        if (i10 != 2) {
            return null;
        }
        return QUERY;
    }

    public int getNumber() {
        return this.value;
    }

    @Deprecated
    public static JwtLocation$InCase valueOf(int i10) {
        return forNumber(i10);
    }
}
