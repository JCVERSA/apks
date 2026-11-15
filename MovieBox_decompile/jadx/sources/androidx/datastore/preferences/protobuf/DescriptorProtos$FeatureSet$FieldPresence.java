package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$FeatureSet$FieldPresence implements w.a {
    FIELD_PRESENCE_UNKNOWN(0),
    EXPLICIT(1),
    IMPLICIT(2),
    LEGACY_REQUIRED(3);

    public static final int EXPLICIT_VALUE = 1;
    public static final int FIELD_PRESENCE_UNKNOWN_VALUE = 0;
    public static final int IMPLICIT_VALUE = 2;
    public static final int LEGACY_REQUIRED_VALUE = 3;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8377a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$FeatureSet$FieldPresence.forNumber(i10) != null;
        }
    }

    DescriptorProtos$FeatureSet$FieldPresence(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$FeatureSet$FieldPresence forNumber(int i10) {
        if (i10 == 0) {
            return FIELD_PRESENCE_UNKNOWN;
        }
        if (i10 == 1) {
            return EXPLICIT;
        }
        if (i10 == 2) {
            return IMPLICIT;
        }
        if (i10 != 3) {
            return null;
        }
        return LEGACY_REQUIRED;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8377a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$FeatureSet$FieldPresence valueOf(int i10) {
        return forNumber(i10);
    }
}
