package com.google.api;

import com.google.protobuf.y;

public enum MetricDescriptor$ValueType implements y.c {
    VALUE_TYPE_UNSPECIFIED(0),
    BOOL(1),
    INT64(2),
    DOUBLE(3),
    STRING(4),
    DISTRIBUTION(5),
    MONEY(6),
    UNRECOGNIZED(-1);

    public static final int BOOL_VALUE = 1;
    public static final int DISTRIBUTION_VALUE = 5;
    public static final int DOUBLE_VALUE = 3;
    public static final int INT64_VALUE = 2;
    public static final int MONEY_VALUE = 6;
    public static final int STRING_VALUE = 4;
    public static final int VALUE_TYPE_UNSPECIFIED_VALUE = 0;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public MetricDescriptor$ValueType findValueByNumber(int i10) {
            return MetricDescriptor$ValueType.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {

        static final y.e f29373a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return MetricDescriptor$ValueType.forNumber(i10) != null;
        }
    }

    MetricDescriptor$ValueType(int i10) {
        this.value = i10;
    }

    public static MetricDescriptor$ValueType forNumber(int i10) {
        switch (i10) {
            case 0:
                return VALUE_TYPE_UNSPECIFIED;
            case 1:
                return BOOL;
            case 2:
                return INT64;
            case 3:
                return DOUBLE;
            case 4:
                return STRING;
            case 5:
                return DISTRIBUTION;
            case 6:
                return MONEY;
            default:
                return null;
        }
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f29373a;
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Deprecated
    public static MetricDescriptor$ValueType valueOf(int i10) {
        return forNumber(i10);
    }
}
