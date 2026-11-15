package kotlin.reflect.jvm.internal.impl.load.java;

import defpackage.e74;
import defpackage.gn6;
import defpackage.k37;
import defpackage.o54;
import defpackage.y45;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

public final class NullabilityAnnotationStatesImpl implements k37 {
    public final Map b;
    public final LockBasedStorageManager c;
    public final gn6 d;

    public NullabilityAnnotationStatesImpl(Map map) {
        y45.j(map, "states");
        this.b = map;
        LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("Java nullability annotation states");
        this.c = lockBasedStorageManager;
        gn6 gn6VarA = lockBasedStorageManager.a(new e74() {
            {
                super(1);
            }

            @Override
            public final Object invoke(o54 o54Var) {
                y45.i(o54Var, "it");
                return kotlin.reflect.jvm.internal.impl.name.a.a(o54Var, this.this$0.b());
            }
        });
        y45.i(gn6VarA, "storageManager.createMem…cificFqname(states)\n    }");
        this.d = gn6VarA;
    }

    @Override
    public Object a(o54 o54Var) {
        y45.j(o54Var, "fqName");
        return this.d.invoke(o54Var);
    }

    public final Map b() {
        return this.b;
    }
}
