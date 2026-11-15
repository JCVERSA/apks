package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$FeatureSet$JsonFormat implements w.a {
    JSON_FORMAT_UNKNOWN(0),
    ALLOW(1),
    LEGACY_BEST_EFFORT(2);

    public static final int ALLOW_VALUE = 1;
    public static final int JSON_FORMAT_UNKNOWN_VALUE = 0;
    public static final int LEGACY_BEST_EFFORT_VALUE = 2;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8378a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$FeatureSet$JsonFormat.forNumber(i10) != null;
        }
    }

    DescriptorProtos$FeatureSet$JsonFormat(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$FeatureSet$JsonFormat forNumber(int i10) {
        if (i10 == 0) {
            return JSON_FORMAT_UNKNOWN;
        }
        if (i10 == 1) {
            return ALLOW;
        }
        if (i10 != 2) {
            return null;
        }
        return LEGACY_BEST_EFFORT;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8378a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$FeatureSet$JsonFormat valueOf(int i10) {
        return forNumber(i10);
    }
}
