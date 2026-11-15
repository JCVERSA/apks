package com.google.api;

import com.google.protobuf.y;

public enum FieldBehavior implements y.c {
    FIELD_BEHAVIOR_UNSPECIFIED(0),
    OPTIONAL(1),
    REQUIRED(2),
    OUTPUT_ONLY(3),
    INPUT_ONLY(4),
    IMMUTABLE(5),
    UNRECOGNIZED(-1);

    public static final int FIELD_BEHAVIOR_UNSPECIFIED_VALUE = 0;
    public static final int IMMUTABLE_VALUE = 5;
    public static final int INPUT_ONLY_VALUE = 4;
    public static final int OPTIONAL_VALUE = 1;
    public static final int OUTPUT_ONLY_VALUE = 3;
    public static final int REQUIRED_VALUE = 2;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public FieldBehavior findValueByNumber(int i10) {
            return FieldBehavior.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {

        static final y.e f29369a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return FieldBehavior.forNumber(i10) != null;
        }
    }

    FieldBehavior(int i10) {
        this.value = i10;
    }

    public static FieldBehavior forNumber(int i10) {
        if (i10 == 0) {
            return FIELD_BEHAVIOR_UNSPECIFIED;
        }
        if (i10 == 1) {
            return OPTIONAL;
        }
        if (i10 == 2) {
            return REQUIRED;
        }
        if (i10 == 3) {
            return OUTPUT_ONLY;
        }
        if (i10 == 4) {
            return INPUT_ONLY;
        }
        if (i10 != 5) {
            return null;
        }
        return IMMUTABLE;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f29369a;
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Deprecated
    public static FieldBehavior valueOf(int i10) {
        return forNumber(i10);
    }
}
