package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;

public abstract class hj8 {

    public class a {
        public static final int[] a;
        public static final int[] b;
        public static final int[] c;

        static {
            int[] iArr = new int[ProtoBuf$MemberKind.values().length];
            try {
                iArr[ProtoBuf$MemberKind.DECLARATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProtoBuf$MemberKind.FAKE_OVERRIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ProtoBuf$MemberKind.DELEGATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ProtoBuf$MemberKind.SYNTHESIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
            int[] iArr2 = new int[CallableMemberDescriptor.Kind.values().length];
            try {
                iArr2[CallableMemberDescriptor.Kind.DECLARATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[CallableMemberDescriptor.Kind.FAKE_OVERRIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[CallableMemberDescriptor.Kind.DELEGATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[CallableMemberDescriptor.Kind.SYNTHESIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            b = iArr2;
            int[] iArr3 = new int[ProtoBuf$Visibility.values().length];
            try {
                iArr3[ProtoBuf$Visibility.INTERNAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[ProtoBuf$Visibility.PRIVATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[ProtoBuf$Visibility.PRIVATE_TO_THIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr3[ProtoBuf$Visibility.PROTECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr3[ProtoBuf$Visibility.PUBLIC.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr3[ProtoBuf$Visibility.LOCAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused14) {
            }
            c = iArr3;
        }
    }

    public static final c92 a(gj8 gj8Var, ProtoBuf$Visibility protoBuf$Visibility) {
        y45.j(gj8Var, "<this>");
        switch (protoBuf$Visibility == null ? -1 : a.c[protoBuf$Visibility.ordinal()]) {
            case 1:
                c92 c92Var = b92.d;
                y45.i(c92Var, "INTERNAL");
                return c92Var;
            case 2:
                c92 c92Var2 = b92.a;
                y45.i(c92Var2, "PRIVATE");
                return c92Var2;
            case 3:
                c92 c92Var3 = b92.b;
                y45.i(c92Var3, "PRIVATE_TO_THIS");
                return c92Var3;
            case 4:
                c92 c92Var4 = b92.c;
                y45.i(c92Var4, "PROTECTED");
                return c92Var4;
            case 5:
                c92 c92Var5 = b92.e;
                y45.i(c92Var5, "PUBLIC");
                return c92Var5;
            case 6:
                c92 c92Var6 = b92.f;
                y45.i(c92Var6, "LOCAL");
                return c92Var6;
            default:
                c92 c92Var7 = b92.a;
                y45.i(c92Var7, "PRIVATE");
                return c92Var7;
        }
    }

    public static final CallableMemberDescriptor.Kind b(gj8 gj8Var, ProtoBuf$MemberKind protoBuf$MemberKind) {
        y45.j(gj8Var, "<this>");
        int i = protoBuf$MemberKind == null ? -1 : a.a[protoBuf$MemberKind.ordinal()];
        if (i == 1) {
            return CallableMemberDescriptor.Kind.DECLARATION;
        }
        if (i == 2) {
            return CallableMemberDescriptor.Kind.FAKE_OVERRIDE;
        }
        if (i != 3) {
            return i != 4 ? CallableMemberDescriptor.Kind.DECLARATION : CallableMemberDescriptor.Kind.SYNTHESIZED;
        }
        return CallableMemberDescriptor.Kind.DELEGATION;
    }
}
