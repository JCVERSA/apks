package kotlin.reflect.jvm.internal.impl.load.java.components;

import defpackage.abb;
import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.gj5;
import defpackage.k65;
import defpackage.ky5;
import defpackage.l65;
import defpackage.l75;
import defpackage.n65;
import defpackage.p65;
import defpackage.pf1;
import defpackage.ux9;
import defpackage.x17;
import defpackage.x71;
import defpackage.xq8;
import defpackage.y45;
import java.util.Map;
import kotlin.collections.a;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.builtins.e;

public final class JavaTargetAnnotationDescriptor extends JavaAnnotationDescriptor {
    public static final af5[] h = {xq8.j(new PropertyReference1Impl(xq8.b(JavaTargetAnnotationDescriptor.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    public final x17 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaTargetAnnotationDescriptor(k65 k65Var, gj5 gj5Var) {
        super(gj5Var, k65Var, e.a.H);
        y45.j(k65Var, "annotation");
        y45.j(gj5Var, "c");
        this.g = gj5Var.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final Map<by6, pf1> invoke() {
                pf1 pf1VarC;
                l65 l65VarA = this.this$0.a();
                if (l65VarA instanceof p65) {
                    pf1VarC = JavaAnnotationTargetMapper.a.c(((p65) this.this$0.a()).b());
                } else {
                    pf1VarC = l65VarA instanceof l75 ? JavaAnnotationTargetMapper.a.c(x71.e(this.this$0.a())) : null;
                }
                Map<by6, pf1> mapH = pf1VarC != null ? ky5.h(abb.a(n65.a.d(), pf1VarC)) : null;
                return mapH == null ? a.l() : mapH;
            }
        });
    }

    @Override
    public Map f() {
        return (Map) ux9.a(this.g, this, h[0]);
    }
}
