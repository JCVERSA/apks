package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import defpackage.e74;
import defpackage.gd;
import defpackage.hi;
import defpackage.i81;
import defpackage.md;
import defpackage.o54;
import defpackage.pc9;
import defpackage.y45;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class CompositeAnnotations implements md {
    public final List b;

    public CompositeAnnotations(List list) {
        y45.j(list, "delegates");
        this.b = list;
    }

    @Override
    public gd a(final o54 o54Var) {
        y45.j(o54Var, "fqName");
        return (gd) SequencesKt___SequencesKt.J(SequencesKt___SequencesKt.S(i81.b0(this.b), new e74() {
            {
                super(1);
            }

            @Override
            public final gd invoke(md mdVar) {
                y45.j(mdVar, "it");
                return mdVar.a(o54Var);
            }
        }));
    }

    @Override
    public boolean h(o54 o54Var) {
        y45.j(o54Var, "fqName");
        Iterator it = i81.b0(this.b).iterator();
        while (it.hasNext()) {
            if (((md) it.next()).h(o54Var)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isEmpty() {
        List list = this.b;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!((md) it.next()).isEmpty()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public Iterator iterator() {
        return SequencesKt___SequencesKt.K(i81.b0(this.b), new e74() {
            @Override
            public final pc9 invoke(md mdVar) {
                y45.j(mdVar, "it");
                return i81.b0(mdVar);
            }
        }).iterator();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CompositeAnnotations(md... mdVarArr) {
        this(hi.c1(mdVarArr));
        y45.j(mdVarArr, "delegates");
    }
}
