package com.google.protobuf;

public enum DescriptorProtos$MethodOptions$IdempotencyLevel implements y.c {
    IDEMPOTENCY_UNKNOWN(0),
    NO_SIDE_EFFECTS(1),
    IDEMPOTENT(2);

    public static final int IDEMPOTENCY_UNKNOWN_VALUE = 0;
    public static final int IDEMPOTENT_VALUE = 2;
    public static final int NO_SIDE_EFFECTS_VALUE = 1;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public DescriptorProtos$MethodOptions$IdempotencyLevel findValueByNumber(int i10) {
            return DescriptorProtos$MethodOptions$IdempotencyLevel.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$MethodOptions$IdempotencyLevel.forNumber(i10) != null;
        }
    }

    DescriptorProtos$MethodOptions$IdempotencyLevel(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$MethodOptions$IdempotencyLevel forNumber(int i10) {
        if (i10 == 0) {
            return IDEMPOTENCY_UNKNOWN;
        }
        if (i10 == 1) {
            return NO_SIDE_EFFECTS;
        }
        if (i10 != 2) {
            return null;
        }
        return IDEMPOTENT;
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
    public static DescriptorProtos$MethodOptions$IdempotencyLevel valueOf(int i10) {
        return forNumber(i10);
    }
}
