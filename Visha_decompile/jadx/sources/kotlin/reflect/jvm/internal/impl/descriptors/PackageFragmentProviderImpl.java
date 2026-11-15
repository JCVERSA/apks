package kotlin.reflect.jvm.internal.impl.descriptors;

import defpackage.dv7;
import defpackage.e74;
import defpackage.hv7;
import defpackage.i81;
import defpackage.o54;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class PackageFragmentProviderImpl implements hv7 {
    public final Collection a;

    public PackageFragmentProviderImpl(Collection collection) {
        y45.j(collection, "packageFragments");
        this.a = collection;
    }

    @Override
    public void a(o54 o54Var, Collection collection) {
        y45.j(o54Var, "fqName");
        y45.j(collection, "packageFragments");
        for (Object obj : this.a) {
            if (y45.e(((dv7) obj).d(), o54Var)) {
                collection.add(obj);
            }
        }
    }

    @Override
    public boolean b(o54 o54Var) {
        y45.j(o54Var, "fqName");
        Collection collection = this.a;
        if ((collection instanceof Collection) && collection.isEmpty()) {
            return true;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (y45.e(((dv7) it.next()).d(), o54Var)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public List c(o54 o54Var) {
        y45.j(o54Var, "fqName");
        Collection collection = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (y45.e(((dv7) obj).d(), o54Var)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override
    public Collection i(final o54 o54Var, e74 e74Var) {
        y45.j(o54Var, "fqName");
        y45.j(e74Var, "nameFilter");
        return SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.F(SequencesKt___SequencesKt.R(i81.b0(this.a), new e74() {
            @Override
            public final o54 invoke(dv7 dv7Var) {
                y45.j(dv7Var, "it");
                return dv7Var.d();
            }
        }), new e74() {
            {
                super(1);
            }

            @Override
            public final Boolean invoke(o54 o54Var2) {
                y45.j(o54Var2, "it");
                return Boolean.valueOf(!o54Var2.d() && y45.e(o54Var2.e(), o54Var));
            }
        }));
    }
}
