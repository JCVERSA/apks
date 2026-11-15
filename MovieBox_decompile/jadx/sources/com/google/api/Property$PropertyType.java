package com.google.api;

import com.google.protobuf.y;

public enum Property$PropertyType implements y.c {
    UNSPECIFIED(0),
    INT64(1),
    BOOL(2),
    STRING(3),
    DOUBLE(4),
    UNRECOGNIZED(-1);

    public static final int BOOL_VALUE = 2;
    public static final int DOUBLE_VALUE = 4;
    public static final int INT64_VALUE = 1;
    public static final int STRING_VALUE = 3;
    public static final int UNSPECIFIED_VALUE = 0;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public Property$PropertyType findValueByNumber(int i10) {
            return Property$PropertyType.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {

        static final y.e f29374a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return Property$PropertyType.forNumber(i10) != null;
        }
    }

    Property$PropertyType(int i10) {
        this.value = i10;
    }

    public static Property$PropertyType forNumber(int i10) {
        if (i10 == 0) {
            return UNSPECIFIED;
        }
        if (i10 == 1) {
            return INT64;
        }
        if (i10 == 2) {
            return BOOL;
        }
        if (i10 == 3) {
            return STRING;
        }
        if (i10 != 4) {
            return null;
        }
        return DOUBLE;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f29374a;
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Deprecated
    public static Property$PropertyType valueOf(int i10) {
        return forNumber(i10);
    }
}
