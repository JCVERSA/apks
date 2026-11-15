package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$FileOptions$OptimizeMode implements w.a {
    SPEED(1),
    CODE_SIZE(2),
    LITE_RUNTIME(3);

    public static final int CODE_SIZE_VALUE = 2;
    public static final int LITE_RUNTIME_VALUE = 3;
    public static final int SPEED_VALUE = 1;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8388a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$FileOptions$OptimizeMode.forNumber(i10) != null;
        }
    }

    DescriptorProtos$FileOptions$OptimizeMode(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$FileOptions$OptimizeMode forNumber(int i10) {
        if (i10 == 1) {
            return SPEED;
        }
        if (i10 == 2) {
            return CODE_SIZE;
        }
        if (i10 != 3) {
            return null;
        }
        return LITE_RUNTIME;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8388a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$FileOptions$OptimizeMode valueOf(int i10) {
        return forNumber(i10);
    }
}
