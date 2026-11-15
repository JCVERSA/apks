package androidx.datastore.preferences.protobuf;

public enum DescriptorProtos$ExtensionRangeOptions$VerificationState implements w.a {
    DECLARATION(0),
    UNVERIFIED(1);

    public static final int DECLARATION_VALUE = 0;
    public static final int UNVERIFIED_VALUE = 1;
    private static final w.b internalValueMap = new w.b() {
    };
    private final int value;

    private static final class b implements w.c {

        static final w.c f8375a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return DescriptorProtos$ExtensionRangeOptions$VerificationState.forNumber(i10) != null;
        }
    }

    DescriptorProtos$ExtensionRangeOptions$VerificationState(int i10) {
        this.value = i10;
    }

    public static DescriptorProtos$ExtensionRangeOptions$VerificationState forNumber(int i10) {
        if (i10 == 0) {
            return DECLARATION;
        }
        if (i10 != 1) {
            return null;
        }
        return UNVERIFIED;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8375a;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DescriptorProtos$ExtensionRangeOptions$VerificationState valueOf(int i10) {
        return forNumber(i10);
    }
}
