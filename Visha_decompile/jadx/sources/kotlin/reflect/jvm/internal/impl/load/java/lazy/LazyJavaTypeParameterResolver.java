package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import defpackage.e74;
import defpackage.gj5;
import defpackage.gn6;
import defpackage.hcb;
import defpackage.ij5;
import defpackage.s85;
import defpackage.t85;
import defpackage.v71;
import defpackage.xt1;
import defpackage.y45;
import java.util.Map;

public final class LazyJavaTypeParameterResolver implements a {
    public final gj5 a;
    public final xt1 b;
    public final int c;
    public final Map d;
    public final gn6 e;

    public LazyJavaTypeParameterResolver(gj5 gj5Var, xt1 xt1Var, t85 t85Var, int i) {
        y45.j(gj5Var, "c");
        y45.j(xt1Var, "containingDeclaration");
        y45.j(t85Var, "typeParameterOwner");
        this.a = gj5Var;
        this.b = xt1Var;
        this.c = i;
        this.d = v71.d(t85Var.getTypeParameters());
        this.e = gj5Var.e().a(new e74() {
            {
                super(1);
            }

            @Override
            public final ij5 invoke(s85 s85Var) {
                y45.j(s85Var, "typeParameter");
                Integer num = (Integer) this.this$0.d.get(s85Var);
                if (num == null) {
                    return null;
                }
                LazyJavaTypeParameterResolver lazyJavaTypeParameterResolver = this.this$0;
                return new ij5(ContextKt.h(ContextKt.b(lazyJavaTypeParameterResolver.a, lazyJavaTypeParameterResolver), lazyJavaTypeParameterResolver.b.getAnnotations()), s85Var, lazyJavaTypeParameterResolver.c + num.intValue(), lazyJavaTypeParameterResolver.b);
            }
        });
    }

    @Override
    public hcb a(s85 s85Var) {
        y45.j(s85Var, "javaTypeParameter");
        ij5 ij5Var = (ij5) this.e.invoke(s85Var);
        return ij5Var != null ? ij5Var : this.a.f().a(s85Var);
    }
}
