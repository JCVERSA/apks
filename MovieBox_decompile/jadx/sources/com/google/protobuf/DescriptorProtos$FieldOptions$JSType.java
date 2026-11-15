package com.google.protobuf;

public enum DescriptorProtos$FieldOptions$JSType implements y.c {
    JS_NORMAL(0),
    JS_STRING(1),
    JS_NUMBER(2);

    public static final int JS_NORMAL_VALUE = 0;
    public static final int JS_NUMBER_VALUE = 2;
    public static final int JS_STRING_VALUE = 1;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public DescriptorProtos$FieldOptions$JSType findValueByNumber(int i10) {
            return DescriptorProtos$FieldOptions$JSType.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$FieldOptions$JSType.forNumber(i10) != null;
        }
    }

    DescriptorProtos$FieldOptions$JSType(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$FieldOptions$JSType forNumber(int i10) {
        if (i10 == 0) {
            return JS_NORMAL;
        }
        if (i10 == 1) {
            return JS_STRING;
        }
        if (i10 != 2) {
            return null;
        }
        return JS_NUMBER;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.INSTANCE;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$FieldOptions$JSType valueOf(int i10) {
        return forNumber(i10);
    }
}
