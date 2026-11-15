package kotlin.reflect.jvm.internal.impl.util;

import defpackage.e74;
import defpackage.eh5;
import defpackage.sm9;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public abstract class ReturnsCheck implements b {
    public final String a;
    public final e74 b;
    public final String c;

    public static final class ReturnsBoolean extends ReturnsCheck {
        public static final ReturnsBoolean d = new ReturnsBoolean();

        public ReturnsBoolean() {
            super("Boolean", new e74() {
                @Override
                public final eh5 invoke(kotlin.reflect.jvm.internal.impl.builtins.d dVar) {
                    y45.j(dVar, "$this$null");
                    sm9 sm9VarN = dVar.n();
                    y45.i(sm9VarN, "booleanType");
                    return sm9VarN;
                }
            }, null);
        }
    }

    public static final class ReturnsInt extends ReturnsCheck {
        public static final ReturnsInt d = new ReturnsInt();

        public ReturnsInt() {
            super("Int", new e74() {
                @Override
                public final eh5 invoke(kotlin.reflect.jvm.internal.impl.builtins.d dVar) {
                    y45.j(dVar, "$this$null");
                    sm9 sm9VarD = dVar.D();
                    y45.i(sm9VarD, "intType");
                    return sm9VarD;
                }
            }, null);
        }
    }

    public static final class ReturnsUnit extends ReturnsCheck {
        public static final ReturnsUnit d = new ReturnsUnit();

        public ReturnsUnit() {
            super("Unit", new e74() {
                @Override
                public final eh5 invoke(kotlin.reflect.jvm.internal.impl.builtins.d dVar) {
                    y45.j(dVar, "$this$null");
                    sm9 sm9VarZ = dVar.Z();
                    y45.i(sm9VarZ, "unitType");
                    return sm9VarZ;
                }
            }, null);
        }
    }

    public ReturnsCheck(String str, e74 e74Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, e74Var);
    }

    @Override
    public String a(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        return b.a.a(this, eVar);
    }

    @Override
    public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        y45.j(eVar, "functionDescriptor");
        return y45.e(eVar.getReturnType(), this.b.invoke(DescriptorUtilsKt.j(eVar)));
    }

    @Override
    public String getDescription() {
        return this.c;
    }

    public ReturnsCheck(String str, e74 e74Var) {
        this.a = str;
        this.b = e74Var;
        this.c = "must return " + str;
    }
}
