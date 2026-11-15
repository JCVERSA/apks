package androidx.datastore.preferences.protobuf;

public enum JavaFeaturesProto$JavaFeatures$Utf8Validation implements w.a {
    UTF8_VALIDATION_UNKNOWN(0),
    DEFAULT(1),
    VERIFY(2);

    public static final int DEFAULT_VALUE = 1;
    public static final int UTF8_VALIDATION_UNKNOWN_VALUE = 0;
    public static final int VERIFY_VALUE = 2;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8399a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return JavaFeaturesProto$JavaFeatures$Utf8Validation.forNumber(i10) != null;
        }
    }

    JavaFeaturesProto$JavaFeatures$Utf8Validation(int i10) {
        this.value = i10;
    }

    public static JavaFeaturesProto$JavaFeatures$Utf8Validation forNumber(int i10) {
        if (i10 == 0) {
            return UTF8_VALIDATION_UNKNOWN;
        }
        if (i10 == 1) {
            return DEFAULT;
        }
        if (i10 != 2) {
            return null;
        }
        return VERIFY;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8399a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static JavaFeaturesProto$JavaFeatures$Utf8Validation valueOf(int i10) {
        return forNumber(i10);
    }
}
