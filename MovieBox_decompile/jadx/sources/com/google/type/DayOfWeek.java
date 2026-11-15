package com.google.type;

import com.google.protobuf.y;

public enum DayOfWeek implements y.c {
    DAY_OF_WEEK_UNSPECIFIED(0),
    MONDAY(1),
    TUESDAY(2),
    WEDNESDAY(3),
    THURSDAY(4),
    FRIDAY(5),
    SATURDAY(6),
    SUNDAY(7),
    UNRECOGNIZED(-1);

    public static final int DAY_OF_WEEK_UNSPECIFIED_VALUE = 0;
    public static final int FRIDAY_VALUE = 5;
    public static final int MONDAY_VALUE = 1;
    public static final int SATURDAY_VALUE = 6;
    public static final int SUNDAY_VALUE = 7;
    public static final int THURSDAY_VALUE = 4;
    public static final int TUESDAY_VALUE = 2;
    public static final int WEDNESDAY_VALUE = 3;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public DayOfWeek findValueByNumber(int i10) {
            return DayOfWeek.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {

        static final y.e f31988a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DayOfWeek.forNumber(i10) != null;
        }
    }

    DayOfWeek(int i10) {
        this.value = i10;
    }

    public static DayOfWeek forNumber(int i10) {
        switch (i10) {
            case 0:
                return DAY_OF_WEEK_UNSPECIFIED;
            case 1:
                return MONDAY;
            case 2:
                return TUESDAY;
            case 3:
                return WEDNESDAY;
            case 4:
                return THURSDAY;
            case 5:
                return FRIDAY;
            case 6:
                return SATURDAY;
            case 7:
                return SUNDAY;
            default:
                return null;
        }
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f31988a;
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Deprecated
    public static DayOfWeek valueOf(int i10) {
        return forNumber(i10);
    }
}
