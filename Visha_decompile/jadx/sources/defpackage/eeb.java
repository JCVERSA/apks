package defpackage;

import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;

public final class eeb extends lgb {
    public eeb(byte b) {
        super(Byte.valueOf(b));
    }

    @Override
    public eh5 a(qq6 qq6Var) {
        y45.j(qq6Var, "module");
        qw0 qw0VarA = FindClassInModuleKt.a(qq6Var, e.a.z0);
        sm9 sm9VarQ = qw0VarA != null ? qw0VarA.q() : null;
        return sm9VarQ == null ? id3.d(ErrorTypeKind.NOT_FOUND_UNSIGNED_TYPE, "UByte") : sm9VarQ;
    }

    @Override
    public String toString() {
        return ((Number) b()).intValue() + ".toUByte()";
    }
}
