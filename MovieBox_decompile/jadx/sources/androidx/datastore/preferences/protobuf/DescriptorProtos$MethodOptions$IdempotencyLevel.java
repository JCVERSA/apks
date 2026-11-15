package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$MethodOptions$IdempotencyLevel implements w.a {
    IDEMPOTENCY_UNKNOWN(0),
    NO_SIDE_EFFECTS(1),
    IDEMPOTENT(2);

    public static final int IDEMPOTENCY_UNKNOWN_VALUE = 0;
    public static final int IDEMPOTENT_VALUE = 2;
    public static final int NO_SIDE_EFFECTS_VALUE = 1;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8390a = new b();

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

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8390a;
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
