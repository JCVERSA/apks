package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$FieldOptions$JSType implements w.a {
    JS_NORMAL(0),
    JS_STRING(1),
    JS_NUMBER(2);

    public static final int JS_NORMAL_VALUE = 0;
    public static final int JS_NUMBER_VALUE = 2;
    public static final int JS_STRING_VALUE = 1;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8385a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$FieldOptions$JSType.forNumber(i10) != null;
        }
    }

    DescriptorProtos$FieldOptions$JSType(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$FieldOptions$JSType forNumber(int i10) {
        if (i10 == 0) {
            return JS_NORMAL;
        }
        if (i10 == 1) {
            return JS_STRING;
        }
        if (i10 != 2) {
            return null;
        }
        return JS_NUMBER;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8385a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$FieldOptions$JSType valueOf(int i10) {
        return forNumber(i10);
    }
}
