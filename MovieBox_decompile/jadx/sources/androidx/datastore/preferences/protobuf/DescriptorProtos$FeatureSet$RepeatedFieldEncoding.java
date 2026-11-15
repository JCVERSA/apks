package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$FeatureSet$RepeatedFieldEncoding implements w.a {
    REPEATED_FIELD_ENCODING_UNKNOWN(0),
    PACKED(1),
    EXPANDED(2);

    public static final int EXPANDED_VALUE = 2;
    public static final int PACKED_VALUE = 1;
    public static final int REPEATED_FIELD_ENCODING_UNKNOWN_VALUE = 0;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8380a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$FeatureSet$RepeatedFieldEncoding.forNumber(i10) != null;
        }
    }

    DescriptorProtos$FeatureSet$RepeatedFieldEncoding(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$FeatureSet$RepeatedFieldEncoding forNumber(int i10) {
        if (i10 == 0) {
            return REPEATED_FIELD_ENCODING_UNKNOWN;
        }
        if (i10 == 1) {
            return PACKED;
        }
        if (i10 != 2) {
            return null;
        }
        return EXPANDED;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8380a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$FeatureSet$RepeatedFieldEncoding valueOf(int i10) {
        return forNumber(i10);
    }
}
