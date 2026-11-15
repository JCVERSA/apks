package defpackage;

import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.json.b;
import org.mozilla.javascript.ES6Iterator;

public final class xa5 implements ef5 {
    public static final xa5 a = new xa5();
    public static final a b = SerialDescriptorsKt.a("kotlinx.serialization.json.JsonLiteral", ef8.i.a);

    @Override
    public wa5 deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        b bVarS = ma5.d(hu1Var).s();
        if (bVarS instanceof wa5) {
            return (wa5) bVarS;
        }
        throw oa5.e(-1, "Unexpected JSON element, expected JsonLiteral, had " + xq8.b(bVarS.getClass()), bVarS.toString());
    }

    @Override
    public void serialize(ca3 ca3Var, wa5 wa5Var) {
        y45.j(ca3Var, "encoder");
        y45.j(wa5Var, ES6Iterator.VALUE_PROPERTY);
        ma5.h(ca3Var);
        if (wa5Var.f()) {
            ca3Var.v(wa5Var.b());
            return;
        }
        if (wa5Var.c() != null) {
            ca3Var.g(wa5Var.c()).v(wa5Var.b());
            return;
        }
        Long lN = la5.n(wa5Var);
        if (lN != null) {
            ca3Var.z(lN.longValue());
            return;
        }
        qeb qebVarH = hfb.h(wa5Var.b());
        if (qebVarH != null) {
            ca3Var.g(qn0.G(qeb.c).getDescriptor()).z(qebVarH.g());
            return;
        }
        Double dH = la5.h(wa5Var);
        if (dH != null) {
            ca3Var.x(dH.doubleValue());
            return;
        }
        Boolean boolE = la5.e(wa5Var);
        if (boolE != null) {
            ca3Var.l(boolE.booleanValue());
        } else {
            ca3Var.v(wa5Var.b());
        }
    }

    @Override
    public a getDescriptor() {
        return b;
    }
}
