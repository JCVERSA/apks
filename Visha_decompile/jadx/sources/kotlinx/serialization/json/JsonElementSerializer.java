package kotlinx.serialization.json;

import defpackage.c74;
import defpackage.ca3;
import defpackage.cb5;
import defpackage.dx0;
import defpackage.e74;
import defpackage.ef5;
import defpackage.hu1;
import defpackage.jb5;
import defpackage.ma5;
import defpackage.mc8;
import defpackage.rb5;
import defpackage.xa5;
import defpackage.y45;
import defpackage.y95;
import defpackage.zfb;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import org.mozilla.javascript.ES6Iterator;

public final class JsonElementSerializer implements ef5 {
    public static final JsonElementSerializer a = new JsonElementSerializer();
    public static final kotlinx.serialization.descriptors.a b = SerialDescriptorsKt.c("kotlinx.serialization.json.JsonElement", mc8.b.a, new kotlinx.serialization.descriptors.a[0], new e74() {
        @Override
        public Object invoke(Object obj) {
            invoke((dx0) obj);
            return zfb.a;
        }

        public final void invoke(dx0 dx0Var) {
            y45.j(dx0Var, "$this$buildSerialDescriptor");
            dx0.b(dx0Var, "JsonPrimitive", ma5.f(new c74() {
                @Override
                public final kotlinx.serialization.descriptors.a invoke() {
                    return rb5.a.getDescriptor();
                }
            }), null, false, 12, null);
            dx0.b(dx0Var, "JsonNull", ma5.f(new c74() {
                @Override
                public final kotlinx.serialization.descriptors.a invoke() {
                    return cb5.a.getDescriptor();
                }
            }), null, false, 12, null);
            dx0.b(dx0Var, "JsonLiteral", ma5.f(new c74() {
                @Override
                public final kotlinx.serialization.descriptors.a invoke() {
                    return xa5.a.getDescriptor();
                }
            }), null, false, 12, null);
            dx0.b(dx0Var, "JsonObject", ma5.f(new c74() {
                @Override
                public final kotlinx.serialization.descriptors.a invoke() {
                    return jb5.a.getDescriptor();
                }
            }), null, false, 12, null);
            dx0.b(dx0Var, "JsonArray", ma5.f(new c74() {
                @Override
                public final kotlinx.serialization.descriptors.a invoke() {
                    return y95.a.getDescriptor();
                }
            }), null, false, 12, null);
        }
    });

    @Override
    public b deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return ma5.d(hu1Var).s();
    }

    @Override
    public void serialize(ca3 ca3Var, b bVar) {
        y45.j(ca3Var, "encoder");
        y45.j(bVar, ES6Iterator.VALUE_PROPERTY);
        ma5.h(ca3Var);
        if (bVar instanceof c) {
            ca3Var.C(rb5.a, bVar);
        } else if (bVar instanceof JsonObject) {
            ca3Var.C(jb5.a, bVar);
        } else if (bVar instanceof a) {
            ca3Var.C(y95.a, bVar);
        }
    }

    @Override
    public kotlinx.serialization.descriptors.a getDescriptor() {
        return b;
    }
}
