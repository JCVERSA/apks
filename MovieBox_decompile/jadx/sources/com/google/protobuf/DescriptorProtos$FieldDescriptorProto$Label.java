package com.google.protobuf;

public enum DescriptorProtos$FieldDescriptorProto$Label implements y.c {
    LABEL_OPTIONAL(1),
    LABEL_REQUIRED(2),
    LABEL_REPEATED(3);

    public static final int LABEL_OPTIONAL_VALUE = 1;
    public static final int LABEL_REPEATED_VALUE = 3;
    public static final int LABEL_REQUIRED_VALUE = 2;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public DescriptorProtos$FieldDescriptorProto$Label findValueByNumber(int i10) {
            return DescriptorProtos$FieldDescriptorProto$Label.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

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

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.INSTANCE;
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
