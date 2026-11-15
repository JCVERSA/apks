package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import defpackage.c74;
import defpackage.eh5;
import defpackage.gd;
import defpackage.o54;
import defpackage.sm9;
import defpackage.y45;
import defpackage.yi5;
import defpackage.yt9;
import java.util.Map;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;
import kotlin.reflect.jvm.internal.impl.builtins.d;

public final class BuiltInAnnotationDescriptor implements gd {
    public final d a;
    public final o54 b;
    public final Map c;
    public final yi5 d;

    public BuiltInAnnotationDescriptor(d dVar, o54 o54Var, Map map) {
        y45.j(dVar, "builtIns");
        y45.j(o54Var, "fqName");
        y45.j(map, "allValueArguments");
        this.a = dVar;
        this.b = o54Var;
        this.c = map;
        this.d = b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final sm9 invoke() {
                return this.this$0.a.o(this.this$0.d()).q();
            }
        });
    }

    @Override
    public o54 d() {
        return this.b;
    }

    @Override
    public Map f() {
        return this.c;
    }

    @Override
    public yt9 getSource() {
        yt9 yt9Var = yt9.a;
        y45.i(yt9Var, "NO_SOURCE");
        return yt9Var;
    }

    @Override
    public eh5 getType() {
        Object value = this.d.getValue();
        y45.i(value, "<get-type>(...)");
        return (eh5) value;
    }
}
