package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$FieldDescriptorProto$Label implements w.a {
    LABEL_OPTIONAL(1),
    LABEL_REPEATED(3),
    LABEL_REQUIRED(2);

    public static final int LABEL_OPTIONAL_VALUE = 1;
    public static final int LABEL_REPEATED_VALUE = 3;
    public static final int LABEL_REQUIRED_VALUE = 2;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8382a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$FieldDescriptorProto$Label.forNumber(i10) != null;
        }
    }

    DescriptorProtos$FieldDescriptorProto$Label(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$FieldDescriptorProto$Label forNumber(int i10) {
        if (i10 == 1) {
            return LABEL_OPTIONAL;
        }
        if (i10 == 2) {
            return LABEL_REQUIRED;
        }
        if (i10 != 3) {
            return null;
        }
        return LABEL_REPEATED;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8382a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$FieldDescriptorProto$Label valueOf(int i10) {
        return forNumber(i10);
    }
}
