package com.google.api;

import com.google.protobuf.y;

public enum LabelDescriptor$ValueType implements y.c {
    STRING(0),
    BOOL(1),
    INT64(2),
    UNRECOGNIZED(-1);

    public static final int BOOL_VALUE = 1;
    public static final int INT64_VALUE = 2;
    public static final int STRING_VALUE = 0;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public LabelDescriptor$ValueType findValueByNumber(int i10) {
            return LabelDescriptor$ValueType.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {

        static final y.e f29370a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return LabelDescriptor$ValueType.forNumber(i10) != null;
        }
    }

    LabelDescriptor$ValueType(int i10) {
        this.value = i10;
    }

    public static LabelDescriptor$ValueType forNumber(int i10) {
        if (i10 == 0) {
            return STRING;
        }
        if (i10 == 1) {
            return BOOL;
        }
        if (i10 != 2) {
            return null;
        }
        return INT64;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f29370a;
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Deprecated
    public static LabelDescriptor$ValueType valueOf(int i10) {
        return forNumber(i10);
    }
}
