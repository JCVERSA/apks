package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;

public final class fb3 extends pf1 {
    public final xw0 b;
    public final by6 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fb3(xw0 xw0Var, by6 by6Var) {
        super(abb.a(xw0Var, by6Var));
        y45.j(xw0Var, "enumClassId");
        y45.j(by6Var, "enumEntryName");
        this.b = xw0Var;
        this.c = by6Var;
    }

    @Override
    public eh5 a(qq6 qq6Var) {
        y45.j(qq6Var, "module");
        qw0 qw0VarA = FindClassInModuleKt.a(qq6Var, this.b);
        sm9 sm9VarQ = null;
        if (qw0VarA != null) {
            if (!y82.A(qw0VarA)) {
                qw0VarA = null;
            }
            if (qw0VarA != null) {
                sm9VarQ = qw0VarA.q();
            }
        }
        if (sm9VarQ != null) {
            return sm9VarQ;
        }
        ErrorTypeKind errorTypeKind = ErrorTypeKind.ERROR_ENUM_TYPE;
        String string = this.b.toString();
        y45.i(string, "enumClassId.toString()");
        String string2 = this.c.toString();
        y45.i(string2, "enumEntryName.toString()");
        return id3.d(errorTypeKind, string, string2);
    }

    public final by6 c() {
        return this.c;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.b.j());
        sb.append('.');
        sb.append(this.c);
        return sb.toString();
    }
}
