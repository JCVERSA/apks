package kotlin.reflect.jvm.internal.impl.resolve.constants;

import defpackage.e74;
import defpackage.eh5;
import defpackage.ei9;
import defpackage.ez3;
import defpackage.gi0;
import defpackage.hi;
import defpackage.i37;
import defpackage.i81;
import defpackage.kv0;
import defpackage.nr5;
import defpackage.pf1;
import defpackage.qo0;
import defpackage.qq6;
import defpackage.s0a;
import defpackage.sm9;
import defpackage.ux2;
import defpackage.vh;
import defpackage.x15;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import org.mozilla.javascript.ES6Iterator;

public final class ConstantValueFactory {
    public static final ConstantValueFactory a = new ConstantValueFactory();

    public static pf1 d(ConstantValueFactory constantValueFactory, Object obj, qq6 qq6Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            qq6Var = null;
        }
        return constantValueFactory.c(obj, qq6Var);
    }

    public final vh a(List list, eh5 eh5Var) {
        y45.j(list, ES6Iterator.VALUE_PROPERTY);
        y45.j(eh5Var, "type");
        return new TypedArrayValue(list, eh5Var);
    }

    public final vh b(List list, qq6 qq6Var, final PrimitiveType primitiveType) {
        List listB1 = i81.b1(list);
        ArrayList arrayList = new ArrayList();
        Iterator it = listB1.iterator();
        while (it.hasNext()) {
            pf1 pf1VarD = d(this, it.next(), null, 2, null);
            if (pf1VarD != null) {
                arrayList.add(pf1VarD);
            }
        }
        if (qq6Var == null) {
            return new vh(arrayList, new e74() {
                {
                    super(1);
                }

                @Override
                public final eh5 invoke(qq6 qq6Var2) {
                    y45.j(qq6Var2, "it");
                    sm9 sm9VarO = qq6Var2.o().O(primitiveType);
                    y45.i(sm9VarO, "it.builtIns.getPrimitive…KotlinType(componentType)");
                    return sm9VarO;
                }
            });
        }
        sm9 sm9VarO = qq6Var.o().O(primitiveType);
        y45.i(sm9VarO, "module.builtIns.getPrimi…KotlinType(componentType)");
        return new TypedArrayValue(arrayList, sm9VarO);
    }

    public final pf1 c(Object obj, qq6 qq6Var) {
        if (obj instanceof Byte) {
            return new qo0(((Number) obj).byteValue());
        }
        if (obj instanceof Short) {
            return new ei9(((Number) obj).shortValue());
        }
        if (obj instanceof Integer) {
            return new x15(((Number) obj).intValue());
        }
        if (obj instanceof Long) {
            return new nr5(((Number) obj).longValue());
        }
        if (obj instanceof Character) {
            return new kv0(((Character) obj).charValue());
        }
        if (obj instanceof Float) {
            return new ez3(((Number) obj).floatValue());
        }
        if (obj instanceof Double) {
            return new ux2(((Number) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            return new gi0(((Boolean) obj).booleanValue());
        }
        if (obj instanceof String) {
            return new s0a((String) obj);
        }
        if (obj instanceof byte[]) {
            return b(hi.W0((byte[]) obj), qq6Var, PrimitiveType.BYTE);
        }
        if (obj instanceof short[]) {
            return b(hi.d1((short[]) obj), qq6Var, PrimitiveType.SHORT);
        }
        if (obj instanceof int[]) {
            return b(hi.a1((int[]) obj), qq6Var, PrimitiveType.INT);
        }
        if (obj instanceof long[]) {
            return b(hi.b1((long[]) obj), qq6Var, PrimitiveType.LONG);
        }
        if (obj instanceof char[]) {
            return b(hi.X0((char[]) obj), qq6Var, PrimitiveType.CHAR);
        }
        if (obj instanceof float[]) {
            return b(hi.Z0((float[]) obj), qq6Var, PrimitiveType.FLOAT);
        }
        if (obj instanceof double[]) {
            return b(hi.Y0((double[]) obj), qq6Var, PrimitiveType.DOUBLE);
        }
        if (obj instanceof boolean[]) {
            return b(hi.e1((boolean[]) obj), qq6Var, PrimitiveType.BOOLEAN);
        }
        if (obj == null) {
            return new i37();
        }
        return null;
    }
}
