package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.f;

public enum ProtoBuf$MemberKind implements f.a {
    DECLARATION(0, 0),
    FAKE_OVERRIDE(1, 1),
    DELEGATION(2, 2),
    SYNTHESIZED(3, 3);

    private static f.b internalValueMap = new f.b() {
        @Override
        public ProtoBuf$MemberKind findValueByNumber(int i) {
            return ProtoBuf$MemberKind.valueOf(i);
        }
    };
    private final int value;

    ProtoBuf$MemberKind(int i, int i2) {
        this.value = i2;
    }

    @Override
    public final int getNumber() {
        return this.value;
    }

    public static ProtoBuf$MemberKind valueOf(int i) {
        if (i == 0) {
            return DECLARATION;
        }
        if (i == 1) {
            return FAKE_OVERRIDE;
        }
        if (i == 2) {
            return DELEGATION;
        }
        if (i != 3) {
            return null;
        }
        return SYNTHESIZED;
    }
}
