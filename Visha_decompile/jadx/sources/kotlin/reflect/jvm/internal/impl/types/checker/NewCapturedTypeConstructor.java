package kotlin.reflect.jvm.internal.impl.types.checker;

import defpackage.c74;
import defpackage.eh5;
import defpackage.hcb;
import defpackage.mcb;
import defpackage.mgb;
import defpackage.or0;
import defpackage.px0;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public final class NewCapturedTypeConstructor implements or0 {
    public final mcb a;
    public c74 b;
    public final NewCapturedTypeConstructor c;
    public final hcb d;
    public final yi5 e;

    public NewCapturedTypeConstructor(mcb mcbVar, c74 c74Var, NewCapturedTypeConstructor newCapturedTypeConstructor, hcb hcbVar) {
        y45.j(mcbVar, "projection");
        this.a = mcbVar;
        this.b = c74Var;
        this.c = newCapturedTypeConstructor;
        this.d = hcbVar;
        this.e = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final List<mgb> invoke() {
                c74 c74Var2 = this.this$0.b;
                if (c74Var2 != null) {
                    return (List) c74Var2.invoke();
                }
                return null;
            }
        });
    }

    @Override
    public mcb b() {
        return this.a;
    }

    @Override
    public px0 c() {
        return null;
    }

    @Override
    public boolean d() {
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!y45.e(NewCapturedTypeConstructor.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        y45.h(obj, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor");
        NewCapturedTypeConstructor newCapturedTypeConstructor = (NewCapturedTypeConstructor) obj;
        NewCapturedTypeConstructor newCapturedTypeConstructor2 = this.c;
        if (newCapturedTypeConstructor2 != null) {
            this = newCapturedTypeConstructor2;
        }
        NewCapturedTypeConstructor newCapturedTypeConstructor3 = newCapturedTypeConstructor.c;
        if (newCapturedTypeConstructor3 != null) {
            newCapturedTypeConstructor = newCapturedTypeConstructor3;
        }
        return this == newCapturedTypeConstructor;
    }

    @Override
    public List k() {
        List listG = g();
        return listG == null ? y71.k() : listG;
    }

    public final List g() {
        return (List) this.e.getValue();
    }

    @Override
    public List getParameters() {
        return y71.k();
    }

    public final void h(final List list) {
        y45.j(list, "supertypes");
        this.b = new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override
            public final List<mgb> invoke() {
                return list;
            }
        };
    }

    public int hashCode() {
        NewCapturedTypeConstructor newCapturedTypeConstructor = this.c;
        return newCapturedTypeConstructor != null ? newCapturedTypeConstructor.hashCode() : super.hashCode();
    }

    @Override
    public NewCapturedTypeConstructor a(final c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        mcb mcbVarA = b().a(cVar);
        y45.i(mcbVarA, "projection.refine(kotlinTypeRefiner)");
        c74 c74Var = this.b != null ? new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<mgb> invoke() {
                List listK = this.this$0.k();
                c cVar2 = cVar;
                ArrayList arrayList = new ArrayList(z71.v(listK, 10));
                Iterator it = listK.iterator();
                while (it.hasNext()) {
                    arrayList.add(((mgb) it.next()).S0(cVar2));
                }
                return arrayList;
            }
        } : null;
        NewCapturedTypeConstructor newCapturedTypeConstructor = this.c;
        if (newCapturedTypeConstructor == null) {
            newCapturedTypeConstructor = this;
        }
        return new NewCapturedTypeConstructor(mcbVarA, c74Var, newCapturedTypeConstructor, this.d);
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.builtins.d o() {
        eh5 type = b().getType();
        y45.i(type, "projection.type");
        return TypeUtilsKt.i(type);
    }

    public String toString() {
        return "CapturedType(" + b() + ')';
    }

    public NewCapturedTypeConstructor(mcb mcbVar, c74 c74Var, NewCapturedTypeConstructor newCapturedTypeConstructor, hcb hcbVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mcbVar, (i & 2) != 0 ? null : c74Var, (i & 4) != 0 ? null : newCapturedTypeConstructor, (i & 8) != 0 ? null : hcbVar);
    }

    public NewCapturedTypeConstructor(mcb mcbVar, List list, NewCapturedTypeConstructor newCapturedTypeConstructor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mcbVar, list, (i & 4) != 0 ? null : newCapturedTypeConstructor);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NewCapturedTypeConstructor(mcb mcbVar, final List list, NewCapturedTypeConstructor newCapturedTypeConstructor) {
        this(mcbVar, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override
            public final List<mgb> invoke() {
                return list;
            }
        }, newCapturedTypeConstructor, null, 8, null);
        y45.j(mcbVar, "projection");
        y45.j(list, "supertypes");
    }
}
