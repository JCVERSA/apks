package defpackage;

import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.internal.ObjectSerializer;
import org.mozilla.javascript.ES6Iterator;

public final class agb implements ef5 {
    public static final agb b = new agb();
    public final ObjectSerializer a = new ObjectSerializer("kotlin.Unit", zfb.a);

    public void a(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        this.a.deserialize(hu1Var);
    }

    @Override
    public void serialize(ca3 ca3Var, zfb zfbVar) {
        y45.j(ca3Var, "encoder");
        y45.j(zfbVar, ES6Iterator.VALUE_PROPERTY);
        this.a.serialize(ca3Var, zfbVar);
    }

    @Override
    public Object deserialize(hu1 hu1Var) {
        a(hu1Var);
        return zfb.a;
    }

    @Override
    public a getDescriptor() {
        return this.a.getDescriptor();
    }
}
