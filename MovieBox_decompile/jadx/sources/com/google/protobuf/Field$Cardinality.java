package com.google.protobuf;

public enum Field$Cardinality implements y.c {
    CARDINALITY_UNKNOWN(0),
    CARDINALITY_OPTIONAL(1),
    CARDINALITY_REQUIRED(2),
    CARDINALITY_REPEATED(3),
    UNRECOGNIZED(-1);

    public static final int CARDINALITY_OPTIONAL_VALUE = 1;
    public static final int CARDINALITY_REPEATED_VALUE = 3;
    public static final int CARDINALITY_REQUIRED_VALUE = 2;
    public static final int CARDINALITY_UNKNOWN_VALUE = 0;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public Field$Cardinality findValueByNumber(int i10) {
            return Field$Cardinality.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return Field$Cardinality.forNumber(i10) != null;
        }
    }

    Field$Cardinality(int i10) {
        this.value = i10;
    }

    public static Field$Cardinality forNumber(int i10) {
        if (i10 == 0) {
            return CARDINALITY_UNKNOWN;
        }
        if (i10 == 1) {
            return CARDINALITY_OPTIONAL;
        }
        if (i10 == 2) {
            return CARDINALITY_REQUIRED;
        }
        if (i10 != 3) {
            return null;
        }
        return CARDINALITY_REPEATED;
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
    public static Field$Cardinality valueOf(int i10) {
        return forNumber(i10);
    }
}
