package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$FeatureSet$MessageEncoding implements w.a {
    MESSAGE_ENCODING_UNKNOWN(0),
    LENGTH_PREFIXED(1),
    DELIMITED(2);

    public static final int DELIMITED_VALUE = 2;
    public static final int LENGTH_PREFIXED_VALUE = 1;
    public static final int MESSAGE_ENCODING_UNKNOWN_VALUE = 0;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8379a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$FeatureSet$MessageEncoding.forNumber(i10) != null;
        }
    }

    DescriptorProtos$FeatureSet$MessageEncoding(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$FeatureSet$MessageEncoding forNumber(int i10) {
        if (i10 == 0) {
            return MESSAGE_ENCODING_UNKNOWN;
        }
        if (i10 == 1) {
            return LENGTH_PREFIXED;
        }
        if (i10 != 2) {
            return null;
        }
        return DELIMITED;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8379a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$FeatureSet$MessageEncoding valueOf(int i10) {
        return forNumber(i10);
    }
}
