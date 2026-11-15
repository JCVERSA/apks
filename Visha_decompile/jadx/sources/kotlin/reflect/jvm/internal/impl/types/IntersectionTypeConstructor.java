package kotlin.reflect.jvm.internal.impl.types;

import defpackage.e74;
import defpackage.eh5;
import defpackage.i81;
import defpackage.px0;
import defpackage.q45;
import defpackage.sbb;
import defpackage.sm9;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope;
import org.apache.commons.text.StringSubstitutor;

public final class IntersectionTypeConstructor implements sbb, q45 {
    public eh5 a;
    public final LinkedHashSet b;
    public final int c;

    public IntersectionTypeConstructor(Collection collection) {
        y45.j(collection, "typesToIntersect");
        collection.isEmpty();
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        this.b = linkedHashSet;
        this.c = linkedHashSet.hashCode();
    }

    public static String i(IntersectionTypeConstructor intersectionTypeConstructor, e74 e74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            e74Var = new e74() {
                @Override
                public final String invoke(eh5 eh5Var) {
                    y45.j(eh5Var, "it");
                    return eh5Var.toString();
                }
            };
        }
        return intersectionTypeConstructor.h(e74Var);
    }

    @Override
    public px0 c() {
        return null;
    }

    @Override
    public boolean d() {
        return false;
    }

    public final MemberScope e() {
        return TypeIntersectionScope.d.a("member scope for intersection type", this.b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IntersectionTypeConstructor) {
            return y45.e(this.b, ((IntersectionTypeConstructor) obj).b);
        }
        return false;
    }

    public final sm9 f() {
        return KotlinTypeFactory.l(j.c.h(), this, y71.k(), false, e(), new e74() {
            {
                super(1);
            }

            @Override
            public final sm9 invoke(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
                y45.j(cVar, "kotlinTypeRefiner");
                return this.this$0.a(cVar).f();
            }
        });
    }

    public final eh5 g() {
        return this.a;
    }

    @Override
    public List getParameters() {
        return y71.k();
    }

    public final String h(final e74 e74Var) {
        y45.j(e74Var, "getProperTypeRelatedToStringify");
        return i81.y0(i81.T0(this.b, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                eh5 eh5Var = (eh5) t;
                e74 e74Var2 = e74Var;
                y45.i(eh5Var, "it");
                String string = e74Var2.invoke(eh5Var).toString();
                eh5 eh5Var2 = (eh5) t2;
                e74 e74Var3 = e74Var;
                y45.i(eh5Var2, "it");
                return kotlin.comparisons.a.d(string, e74Var3.invoke(eh5Var2).toString());
            }
        }), " & ", "{", StringSubstitutor.DEFAULT_VAR_END, 0, null, new e74() {
            {
                super(1);
            }

            @Override
            public final CharSequence invoke(eh5 eh5Var) {
                e74 e74Var2 = e74Var;
                y45.i(eh5Var, "it");
                return e74Var2.invoke(eh5Var).toString();
            }
        }, 24, null);
    }

    public int hashCode() {
        return this.c;
    }

    @Override
    public IntersectionTypeConstructor a(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        Collection collectionK = k();
        ArrayList arrayList = new ArrayList(z71.v(collectionK, 10));
        Iterator it = collectionK.iterator();
        boolean z = false;
        while (it.hasNext()) {
            arrayList.add(((eh5) it.next()).S0(cVar));
            z = true;
        }
        IntersectionTypeConstructor intersectionTypeConstructorL = null;
        if (z) {
            eh5 eh5VarG = g();
            intersectionTypeConstructorL = new IntersectionTypeConstructor(arrayList).l(eh5VarG != null ? eh5VarG.S0(cVar) : null);
        }
        return intersectionTypeConstructorL == null ? this : intersectionTypeConstructorL;
    }

    @Override
    public Collection k() {
        return this.b;
    }

    public final IntersectionTypeConstructor l(eh5 eh5Var) {
        return new IntersectionTypeConstructor(this.b, eh5Var);
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.builtins.d o() {
        kotlin.reflect.jvm.internal.impl.builtins.d dVarO = ((eh5) this.b.iterator().next()).I0().o();
        y45.i(dVarO, "intersectedTypes.iterato…xt().constructor.builtIns");
        return dVarO;
    }

    public String toString() {
        return i(this, null, 1, null);
    }

    public IntersectionTypeConstructor(Collection collection, eh5 eh5Var) {
        this(collection);
        this.a = eh5Var;
    }
}
