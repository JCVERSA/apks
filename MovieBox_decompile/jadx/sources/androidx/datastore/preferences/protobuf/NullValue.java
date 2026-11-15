package androidx.datastore.preferences.protobuf;

public enum NullValue implements w.a {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);

    public static final int NULL_VALUE_VALUE = 0;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8400a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return NullValue.forNumber(i10) != null;
        }
    }

    NullValue(int i10) {
        this.value = i10;
    }

    public static NullValue forNumber(int i10) {
        if (i10 != 0) {
            return null;
        }
        return NULL_VALUE;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8400a;
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Deprecated
    public static NullValue valueOf(int i10) {
        return forNumber(i10);
    }
}
