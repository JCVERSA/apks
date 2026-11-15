package com.google.longrunning;

public enum Operation$ResultCase {
    ERROR(4),
    RESPONSE(5),
    RESULT_NOT_SET(0);

    private final int value;

    Operation$ResultCase(int i10) {
        this.value = i10;
    }

    public static Operation$ResultCase forNumber(int i10) {
        if (i10 == 0) {
            return RESULT_NOT_SET;
        }
        if (i10 == 4) {
            return ERROR;
        }
        if (i10 != 5) {
            return null;
        }
        return RESPONSE;
    }

    public int getNumber() {
        return this.value;
    }

    @Deprecated
    public static Operation$ResultCase valueOf(int i10) {
        return forNumber(i10);
    }
}
