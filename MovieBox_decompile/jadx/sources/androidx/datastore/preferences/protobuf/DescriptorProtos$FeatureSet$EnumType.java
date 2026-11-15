package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$FeatureSet$EnumType implements w.a {
    ENUM_TYPE_UNKNOWN(0),
    OPEN(1),
    CLOSED(2);

    public static final int CLOSED_VALUE = 2;
    public static final int ENUM_TYPE_UNKNOWN_VALUE = 0;
    public static final int OPEN_VALUE = 1;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8376a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$FeatureSet$EnumType.forNumber(i10) != null;
        }
    }

    DescriptorProtos$FeatureSet$EnumType(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$FeatureSet$EnumType forNumber(int i10) {
        if (i10 == 0) {
            return ENUM_TYPE_UNKNOWN;
        }
        if (i10 == 1) {
            return OPEN;
        }
        if (i10 != 2) {
            return null;
        }
        return CLOSED;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8376a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$FeatureSet$EnumType valueOf(int i10) {
        return forNumber(i10);
    }
}
