package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public final class ij5 extends f3 {
    public final gj5 l;
    public final s85 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ij5(gj5 gj5Var, s85 s85Var, int i, xt1 xt1Var) {
        super(gj5Var.e(), xt1Var, new LazyJavaAnnotations(gj5Var, s85Var, false, 4, null), s85Var.getName(), Variance.INVARIANT, false, i, yt9.a, gj5Var.a().v());
        y45.j(gj5Var, "c");
        y45.j(s85Var, "javaTypeParameter");
        y45.j(xt1Var, "containingDeclaration");
        this.l = gj5Var;
        this.m = s85Var;
    }

    @Override
    public List C0(List list) {
        y45.j(list, "bounds");
        return this.l.a().r().i(this, list, this.l);
    }

    @Override
    public void F0(eh5 eh5Var) {
        y45.j(eh5Var, "type");
    }

    @Override
    public List G0() {
        return H0();
    }

    public final List H0() {
        Collection upperBounds = this.m.getUpperBounds();
        if (upperBounds.isEmpty()) {
            sm9 sm9VarI = this.l.d().o().i();
            y45.i(sm9VarI, "c.module.builtIns.anyType");
            sm9 sm9VarI2 = this.l.d().o().I();
            y45.i(sm9VarI2, "c.module.builtIns.nullableAnyType");
            return x71.e(KotlinTypeFactory.d(sm9VarI, sm9VarI2));
        }
        Collection collection = upperBounds;
        ArrayList arrayList = new ArrayList(z71.v(collection, 10));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(this.l.g().o((b75) it.next(), q85.b(TypeUsage.COMMON, false, false, this, 3, null)));
        }
        return arrayList;
    }
}
