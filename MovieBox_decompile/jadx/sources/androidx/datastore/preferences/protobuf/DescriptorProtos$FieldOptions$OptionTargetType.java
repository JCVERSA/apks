package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$FieldOptions$OptionTargetType implements w.a {
    TARGET_TYPE_UNKNOWN(0),
    TARGET_TYPE_FILE(1),
    TARGET_TYPE_EXTENSION_RANGE(2),
    TARGET_TYPE_MESSAGE(3),
    TARGET_TYPE_FIELD(4),
    TARGET_TYPE_ONEOF(5),
    TARGET_TYPE_ENUM(6),
    TARGET_TYPE_ENUM_ENTRY(7),
    TARGET_TYPE_SERVICE(8),
    TARGET_TYPE_METHOD(9);

    public static final int TARGET_TYPE_ENUM_ENTRY_VALUE = 7;
    public static final int TARGET_TYPE_ENUM_VALUE = 6;
    public static final int TARGET_TYPE_EXTENSION_RANGE_VALUE = 2;
    public static final int TARGET_TYPE_FIELD_VALUE = 4;
    public static final int TARGET_TYPE_FILE_VALUE = 1;
    public static final int TARGET_TYPE_MESSAGE_VALUE = 3;
    public static final int TARGET_TYPE_METHOD_VALUE = 9;
    public static final int TARGET_TYPE_ONEOF_VALUE = 5;
    public static final int TARGET_TYPE_SERVICE_VALUE = 8;
    public static final int TARGET_TYPE_UNKNOWN_VALUE = 0;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8387a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$FieldOptions$OptionTargetType.forNumber(i10) != null;
        }
    }

    DescriptorProtos$FieldOptions$OptionTargetType(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$FieldOptions$OptionTargetType forNumber(int i10) {
        switch (i10) {
            case 0:
                return TARGET_TYPE_UNKNOWN;
            case 1:
                return TARGET_TYPE_FILE;
            case 2:
                return TARGET_TYPE_EXTENSION_RANGE;
            case 3:
                return TARGET_TYPE_MESSAGE;
            case 4:
                return TARGET_TYPE_FIELD;
            case 5:
                return TARGET_TYPE_ONEOF;
            case 6:
                return TARGET_TYPE_ENUM;
            case 7:
                return TARGET_TYPE_ENUM_ENTRY;
            case 8:
                return TARGET_TYPE_SERVICE;
            case 9:
                return TARGET_TYPE_METHOD;
            default:
                return null;
        }
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8387a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$FieldOptions$OptionTargetType valueOf(int i10) {
        return forNumber(i10);
    }
}
