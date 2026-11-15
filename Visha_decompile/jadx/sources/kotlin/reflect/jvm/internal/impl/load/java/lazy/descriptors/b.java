package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.by6;
import defpackage.eh5;
import defpackage.gj5;
import defpackage.ro8;
import defpackage.s75;
import defpackage.y45;
import defpackage.y71;
import java.util.Collection;
import java.util.List;

public abstract class b extends LazyJavaScope {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(gj5 gj5Var) {
        super(gj5Var, null, 2, 0 == true ? 1 : 0);
        y45.j(gj5Var, "c");
    }

    @Override
    public LazyJavaScope.a H(s75 s75Var, List list, eh5 eh5Var, List list2) {
        y45.j(s75Var, "method");
        y45.j(list, "methodTypeParameters");
        y45.j(eh5Var, "returnType");
        y45.j(list2, "valueParameters");
        return new LazyJavaScope.a(eh5Var, null, list2, list, false, y71.k());
    }

    @Override
    public void s(by6 by6Var, Collection collection) {
        y45.j(by6Var, "name");
        y45.j(collection, "result");
    }

    @Override
    public ro8 z() {
        return null;
    }
}
