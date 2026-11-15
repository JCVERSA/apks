package com.google.type;

public enum DateTime$TimeOffsetCase {
    UTC_OFFSET(8),
    TIME_ZONE(9),
    TIMEOFFSET_NOT_SET(0);

    private final int value;

    DateTime$TimeOffsetCase(int i10) {
        this.value = i10;
    }

    public static DateTime$TimeOffsetCase forNumber(int i10) {
        if (i10 == 0) {
            return TIMEOFFSET_NOT_SET;
        }
        if (i10 == 8) {
            return UTC_OFFSET;
        }
        if (i10 != 9) {
            return null;
        }
        return TIME_ZONE;
    }

    public int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DateTime$TimeOffsetCase valueOf(int i10) {
        return forNumber(i10);
    }
}
