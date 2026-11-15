package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$FieldOptions$OptionRetention implements w.a {
    RETENTION_UNKNOWN(0),
    RETENTION_RUNTIME(1),
    RETENTION_SOURCE(2);

    public static final int RETENTION_RUNTIME_VALUE = 1;
    public static final int RETENTION_SOURCE_VALUE = 2;
    public static final int RETENTION_UNKNOWN_VALUE = 0;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8386a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$FieldOptions$OptionRetention.forNumber(i10) != null;
        }
    }

    DescriptorProtos$FieldOptions$OptionRetention(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$FieldOptions$OptionRetention forNumber(int i10) {
        if (i10 == 0) {
            return RETENTION_UNKNOWN;
        }
        if (i10 == 1) {
            return RETENTION_RUNTIME;
        }
        if (i10 != 2) {
            return null;
        }
        return RETENTION_SOURCE;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8386a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$FieldOptions$OptionRetention valueOf(int i10) {
        return forNumber(i10);
    }
}
