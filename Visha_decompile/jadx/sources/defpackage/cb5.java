package defpackage;

import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.internal.JsonDecodingException;
import org.mozilla.javascript.ES6Iterator;

public final class cb5 implements ef5 {
    public static final cb5 a = new cb5();
    public static final a b = SerialDescriptorsKt.d("kotlinx.serialization.json.JsonNull", id9.b.a, new a[0], null, 8, null);

    @Override
    public JsonNull deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        ma5.g(hu1Var);
        if (hu1Var.E()) {
            throw new JsonDecodingException("Expected 'null' literal");
        }
        hu1Var.g();
        return JsonNull.INSTANCE;
    }

    @Override
    public void serialize(ca3 ca3Var, JsonNull jsonNull) {
        y45.j(ca3Var, "encoder");
        y45.j(jsonNull, ES6Iterator.VALUE_PROPERTY);
        ma5.h(ca3Var);
        ca3Var.A();
    }

    @Override
    public a getDescriptor() {
        return b;
    }
}
