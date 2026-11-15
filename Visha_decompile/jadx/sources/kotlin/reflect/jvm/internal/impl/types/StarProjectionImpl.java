package kotlin.reflect.jvm.internal.impl.types;

import defpackage.c74;
import defpackage.eh5;
import defpackage.gw9;
import defpackage.hcb;
import defpackage.mcb;
import defpackage.ncb;
import defpackage.y45;
import defpackage.yi5;
import kotlin.LazyThreadSafetyMode;

public final class StarProjectionImpl extends ncb {
    public final hcb a;
    public final yi5 b;

    public StarProjectionImpl(hcb hcbVar) {
        y45.j(hcbVar, "typeParameter");
        this.a = hcbVar;
        this.b = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final eh5 invoke() {
                return gw9.b(this.this$0.a);
            }
        });
    }

    @Override
    public mcb a(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        return this;
    }

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public Variance c() {
        return Variance.OUT_VARIANCE;
    }

    public final eh5 e() {
        return (eh5) this.b.getValue();
    }

    @Override
    public eh5 getType() {
        return e();
    }
}
