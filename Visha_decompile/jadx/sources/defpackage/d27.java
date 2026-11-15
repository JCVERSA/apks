package defpackage;

import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.a;
import org.mozilla.javascript.ES6Iterator;

public final class d27 implements ef5 {
    public static final d27 a = new d27();
    public static final a b = c27.a;

    @Override
    public Void deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        throw new SerializationException("'kotlin.Nothing' does not have instances");
    }

    @Override
    public void serialize(ca3 ca3Var, Void r2) {
        y45.j(ca3Var, "encoder");
        y45.j(r2, ES6Iterator.VALUE_PROPERTY);
        throw new SerializationException("'kotlin.Nothing' cannot be serialized");
    }

    @Override
    public a getDescriptor() {
        return b;
    }
}
