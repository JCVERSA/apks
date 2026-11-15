package defpackage;

import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.b;
import kotlinx.serialization.json.c;
import org.mozilla.javascript.ES6Iterator;

public final class rb5 implements ef5 {
    public static final rb5 a = new rb5();
    public static final a b = SerialDescriptorsKt.d("kotlinx.serialization.json.JsonPrimitive", ef8.i.a, new a[0], null, 8, null);

    @Override
    public c deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        b bVarS = ma5.d(hu1Var).s();
        if (bVarS instanceof c) {
            return (c) bVarS;
        }
        throw oa5.e(-1, "Unexpected JSON element, expected JsonPrimitive, had " + xq8.b(bVarS.getClass()), bVarS.toString());
    }

    @Override
    public void serialize(ca3 ca3Var, c cVar) {
        y45.j(ca3Var, "encoder");
        y45.j(cVar, ES6Iterator.VALUE_PROPERTY);
        ma5.h(ca3Var);
        if (cVar instanceof JsonNull) {
            ca3Var.C(cb5.a, JsonNull.INSTANCE);
        } else {
            ca3Var.C(xa5.a, (wa5) cVar);
        }
    }

    @Override
    public a getDescriptor() {
        return b;
    }
}
