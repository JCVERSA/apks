package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.f;

public enum ProtoBuf$Modality implements f.a {
    FINAL(0, 0),
    OPEN(1, 1),
    ABSTRACT(2, 2),
    SEALED(3, 3);

    private static f.b internalValueMap = new f.b() {
        @Override
        public ProtoBuf$Modality findValueByNumber(int i) {
            return ProtoBuf$Modality.valueOf(i);
        }
    };
    private final int value;

    ProtoBuf$Modality(int i, int i2) {
        this.value = i2;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    public static ProtoBuf$Modality valueOf(int i) {
        if (i == 0) {
            return FINAL;
        }
        if (i == 1) {
            return OPEN;
        }
        if (i == 2) {
            return ABSTRACT;
        }
        if (i != 3) {
            return null;
        }
        return SEALED;
    }
}
