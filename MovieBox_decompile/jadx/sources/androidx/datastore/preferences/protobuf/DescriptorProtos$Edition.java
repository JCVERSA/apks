package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$Edition implements w.a {
    EDITION_UNKNOWN(0),
    EDITION_LEGACY(EDITION_LEGACY_VALUE),
    EDITION_PROTO2(EDITION_PROTO2_VALUE),
    EDITION_PROTO3(EDITION_PROTO3_VALUE),
    EDITION_2023(1000),
    EDITION_2024(1001),
    EDITION_1_TEST_ONLY(1),
    EDITION_2_TEST_ONLY(2),
    EDITION_99997_TEST_ONLY(EDITION_99997_TEST_ONLY_VALUE),
    EDITION_99998_TEST_ONLY(EDITION_99998_TEST_ONLY_VALUE),
    EDITION_99999_TEST_ONLY(EDITION_99999_TEST_ONLY_VALUE),
    EDITION_MAX(Integer.MAX_VALUE);

    public static final int EDITION_1_TEST_ONLY_VALUE = 1;
    public static final int EDITION_2023_VALUE = 1000;
    public static final int EDITION_2024_VALUE = 1001;
    public static final int EDITION_2_TEST_ONLY_VALUE = 2;
    public static final int EDITION_99997_TEST_ONLY_VALUE = 99997;
    public static final int EDITION_99998_TEST_ONLY_VALUE = 99998;
    public static final int EDITION_99999_TEST_ONLY_VALUE = 99999;
    public static final int EDITION_LEGACY_VALUE = 900;
    public static final int EDITION_MAX_VALUE = Integer.MAX_VALUE;
    public static final int EDITION_PROTO2_VALUE = 998;
    public static final int EDITION_PROTO3_VALUE = 999;
    public static final int EDITION_UNKNOWN_VALUE = 0;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8374a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$Edition.forNumber(i10) != null;
        }
    }

    DescriptorProtos$Edition(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$Edition forNumber(int i10) {
        if (i10 == 0) {
            return EDITION_UNKNOWN;
        }
        if (i10 == 1) {
            return EDITION_1_TEST_ONLY;
        }
        if (i10 == 2) {
            return EDITION_2_TEST_ONLY;
        }
        if (i10 == 900) {
            return EDITION_LEGACY;
        }
        if (i10 == Integer.MAX_VALUE) {
            return EDITION_MAX;
        }
        switch (i10) {
            case EDITION_PROTO2_VALUE:
                return EDITION_PROTO2;
            case EDITION_PROTO3_VALUE:
                return EDITION_PROTO3;
            case 1000:
                return EDITION_2023;
            case 1001:
                return EDITION_2024;
            default:
                switch (i10) {
                    case EDITION_99997_TEST_ONLY_VALUE:
                        return EDITION_99997_TEST_ONLY;
                    case EDITION_99998_TEST_ONLY_VALUE:
                        return EDITION_99998_TEST_ONLY;
                    case EDITION_99999_TEST_ONLY_VALUE:
                        return EDITION_99999_TEST_ONLY;
                    default:
                        return null;
                }
        }
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8374a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$Edition valueOf(int i10) {
        return forNumber(i10);
    }
}
