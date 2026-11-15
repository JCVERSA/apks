package defpackage;

import kotlin.reflect.jvm.internal.impl.load.kotlin.c;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;

public final class ch5 implements p92 {
    public final c b;
    public final cz4 c;
    public final boolean d;
    public final DeserializedContainerAbiStability e;

    public ch5(c cVar, cz4 cz4Var, boolean z, DeserializedContainerAbiStability deserializedContainerAbiStability) {
        y45.j(cVar, "binaryClass");
        y45.j(deserializedContainerAbiStability, "abiStability");
        this.b = cVar;
        this.c = cz4Var;
        this.d = z;
        this.e = deserializedContainerAbiStability;
    }

    @Override
    public String a() {
        return "Class '" + this.b.c().b().b() + '\'';
    }

    @Override
    public zt9 b() {
        zt9 zt9Var = zt9.a;
        y45.i(zt9Var, "NO_SOURCE_FILE");
        return zt9Var;
    }

    public final c d() {
        return this.b;
    }

    public String toString() {
        return ch5.class.getSimpleName() + ": " + this.b;
    }
}
