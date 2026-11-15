package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import defpackage.e74;
import defpackage.gd;
import defpackage.gj5;
import defpackage.gn6;
import defpackage.i81;
import defpackage.k65;
import defpackage.md;
import defpackage.n65;
import defpackage.o54;
import defpackage.o65;
import defpackage.y45;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class LazyJavaAnnotations implements md {
    public final gj5 b;
    public final o65 c;
    public final boolean d;
    public final gn6 e;

    public LazyJavaAnnotations(gj5 gj5Var, o65 o65Var, boolean z) {
        y45.j(gj5Var, "c");
        y45.j(o65Var, "annotationOwner");
        this.b = gj5Var;
        this.c = o65Var;
        this.d = z;
        this.e = gj5Var.a().u().a(new e74() {
            {
                super(1);
            }

            @Override
            public final gd invoke(k65 k65Var) {
                y45.j(k65Var, "annotation");
                return n65.a.e(k65Var, this.this$0.b, this.this$0.d);
            }
        });
    }

    @Override
    public gd a(o54 o54Var) {
        gd gdVar;
        y45.j(o54Var, "fqName");
        k65 k65VarA = this.c.a(o54Var);
        return (k65VarA == null || (gdVar = (gd) this.e.invoke(k65VarA)) == null) ? n65.a.a(o54Var, this.c, this.b) : gdVar;
    }

    @Override
    public boolean h(o54 o54Var) {
        return md.b.b(this, o54Var);
    }

    @Override
    public boolean isEmpty() {
        return this.c.getAnnotations().isEmpty() && !this.c.x();
    }

    @Override
    public Iterator iterator() {
        return SequencesKt___SequencesKt.H(SequencesKt___SequencesKt.Y(SequencesKt___SequencesKt.R(i81.b0(this.c.getAnnotations()), this.e), n65.a.a(e.a.y, this.c, this.b))).iterator();
    }

    public LazyJavaAnnotations(gj5 gj5Var, o65 o65Var, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(gj5Var, o65Var, (i & 4) != 0 ? false : z);
    }
}
