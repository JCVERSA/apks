package kotlin.reflect.jvm.internal.impl.load.java.components;

import defpackage.abb;
import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.gj5;
import defpackage.k65;
import defpackage.ky5;
import defpackage.n65;
import defpackage.pf1;
import defpackage.ux9;
import defpackage.x17;
import defpackage.xq8;
import defpackage.y45;
import java.util.Map;
import kotlin.collections.a;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.builtins.e;

public final class JavaRetentionAnnotationDescriptor extends JavaAnnotationDescriptor {
    public static final af5[] h = {xq8.j(new PropertyReference1Impl(xq8.b(JavaRetentionAnnotationDescriptor.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    public final x17 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaRetentionAnnotationDescriptor(k65 k65Var, gj5 gj5Var) {
        super(gj5Var, k65Var, e.a.L);
        y45.j(k65Var, "annotation");
        y45.j(gj5Var, "c");
        this.g = gj5Var.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final Map<by6, pf1> invoke() {
                pf1 pf1VarA = JavaAnnotationTargetMapper.a.a(this.this$0.a());
                Map<by6, pf1> mapH = pf1VarA != null ? ky5.h(abb.a(n65.a.c(), pf1VarA)) : null;
                return mapH == null ? a.l() : mapH;
            }
        });
    }

    @Override
    public Map f() {
        return (Map) ux9.a(this.g, this, h[0]);
    }
}
