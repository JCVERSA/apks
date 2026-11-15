package androidx.datastore.preferences.protobuf;

public enum Field$Cardinality implements w.a {
    CARDINALITY_UNKNOWN(0),
    CARDINALITY_OPTIONAL(1),
    CARDINALITY_REQUIRED(2),
    CARDINALITY_REPEATED(3),
    UNRECOGNIZED(-1);

    public static final int CARDINALITY_OPTIONAL_VALUE = 1;
    public static final int CARDINALITY_REPEATED_VALUE = 3;
    public static final int CARDINALITY_REQUIRED_VALUE = 2;
    public static final int CARDINALITY_UNKNOWN_VALUE = 0;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8391a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return Field$Cardinality.forNumber(i10) != null;
        }
    }

    Field$Cardinality(int i10) {
        this.value = i10;
    }

    public static Field$Cardinality forNumber(int i10) {
        if (i10 == 0) {
            return CARDINALITY_UNKNOWN;
        }
        if (i10 == 1) {
            return CARDINALITY_OPTIONAL;
        }
        if (i10 == 2) {
            return CARDINALITY_REQUIRED;
        }
        if (i10 != 3) {
            return null;
        }
        return CARDINALITY_REPEATED;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8391a;
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Deprecated
    public static Field$Cardinality valueOf(int i10) {
        return forNumber(i10);
    }
}
