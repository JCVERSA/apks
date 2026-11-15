package defpackage;

import kotlinx.serialization.descriptors.a;
import org.mozilla.javascript.ES6Iterator;

public final class c0a implements ef5 {
    public static final c0a a = new c0a();
    public static final a b = new gf8("kotlin.String", ef8.i.a);

    @Override
    public String deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return hu1Var.o();
    }

    @Override
    public void serialize(ca3 ca3Var, String str) {
        y45.j(ca3Var, "encoder");
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        ca3Var.v(str);
    }

    @Override
    public a getDescriptor() {
        return b;
    }
}
