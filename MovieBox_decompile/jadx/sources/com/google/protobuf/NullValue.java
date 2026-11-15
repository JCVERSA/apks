package com.google.protobuf;

public enum NullValue implements y.c {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);

    public static final int NULL_VALUE_VALUE = 0;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public NullValue findValueByNumber(int i10) {
            return NullValue.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return NullValue.forNumber(i10) != null;
        }
    }

    NullValue(int i10) {
        this.value = i10;
    }

    public static NullValue forNumber(int i10) {
        if (i10 != 0) {
            return null;
        }
        return NULL_VALUE;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.INSTANCE;
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Deprecated
    public static NullValue valueOf(int i10) {
        return forNumber(i10);
    }
}
