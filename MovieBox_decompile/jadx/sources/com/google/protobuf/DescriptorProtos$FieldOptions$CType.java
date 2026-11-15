package com.google.protobuf;

public enum DescriptorProtos$FieldOptions$CType implements y.c {
    STRING(0),
    CORD(1),
    STRING_PIECE(2);

    public static final int CORD_VALUE = 1;
    public static final int STRING_PIECE_VALUE = 2;
    public static final int STRING_VALUE = 0;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public DescriptorProtos$FieldOptions$CType findValueByNumber(int i10) {
            return DescriptorProtos$FieldOptions$CType.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$FieldOptions$CType.forNumber(i10) != null;
        }
    }

    DescriptorProtos$FieldOptions$CType(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$FieldOptions$CType forNumber(int i10) {
        if (i10 == 0) {
            return STRING;
        }
        if (i10 == 1) {
            return CORD;
        }
        if (i10 != 2) {
            return null;
        }
        return STRING_PIECE;
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
    public static DescriptorProtos$FieldOptions$CType valueOf(int i10) {
        return forNumber(i10);
    }
}
