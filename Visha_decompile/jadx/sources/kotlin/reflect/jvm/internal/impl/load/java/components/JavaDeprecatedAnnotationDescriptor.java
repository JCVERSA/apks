package kotlin.reflect.jvm.internal.impl.load.java.components;

import defpackage.abb;
import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.gj5;
import defpackage.k65;
import defpackage.ky5;
import defpackage.n65;
import defpackage.s0a;
import defpackage.ux9;
import defpackage.x17;
import defpackage.xq8;
import defpackage.y45;
import java.util.Map;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.builtins.e;

public final class JavaDeprecatedAnnotationDescriptor extends JavaAnnotationDescriptor {
    public static final af5[] h = {xq8.j(new PropertyReference1Impl(xq8.b(JavaDeprecatedAnnotationDescriptor.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    public final x17 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaDeprecatedAnnotationDescriptor(k65 k65Var, gj5 gj5Var) {
        super(gj5Var, k65Var, e.a.y);
        y45.j(gj5Var, "c");
        this.g = gj5Var.e().c(new c74() {
            @Override
            public final Map<by6, s0a> invoke() {
                return ky5.h(abb.a(n65.a.b(), new s0a("Deprecated in Java")));
            }
        });
    }

    @Override
    public Map f() {
        return (Map) ux9.a(this.g, this, h[0]);
    }
}
