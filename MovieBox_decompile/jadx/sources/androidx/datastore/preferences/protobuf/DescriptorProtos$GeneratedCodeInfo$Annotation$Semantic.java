package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$GeneratedCodeInfo$Annotation$Semantic implements w.a {
    NONE(0),
    SET(1),
    ALIAS(2);

    public static final int ALIAS_VALUE = 2;
    public static final int NONE_VALUE = 0;
    public static final int SET_VALUE = 1;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8389a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$GeneratedCodeInfo$Annotation$Semantic.forNumber(i10) != null;
        }
    }

    DescriptorProtos$GeneratedCodeInfo$Annotation$Semantic(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$GeneratedCodeInfo$Annotation$Semantic forNumber(int i10) {
        if (i10 == 0) {
            return NONE;
        }
        if (i10 == 1) {
            return SET;
        }
        if (i10 != 2) {
            return null;
        }
        return ALIAS;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8389a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$GeneratedCodeInfo$Annotation$Semantic valueOf(int i10) {
        return forNumber(i10);
    }
}
