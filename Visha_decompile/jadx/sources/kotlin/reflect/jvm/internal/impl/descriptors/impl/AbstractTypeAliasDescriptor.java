package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import defpackage.au1;
import defpackage.bu1;
import defpackage.by6;
import defpackage.c92;
import defpackage.dbb;
import defpackage.du1;
import defpackage.e74;
import defpackage.ebb;
import defpackage.fh5;
import defpackage.hcb;
import defpackage.md;
import defpackage.mgb;
import defpackage.px0;
import defpackage.qw0;
import defpackage.sbb;
import defpackage.sm9;
import defpackage.vx9;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y71;
import defpackage.yt9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.n;

public abstract class AbstractTypeAliasDescriptor extends au1 implements ebb {
    public final c92 f;
    public List g;
    public final a h;

    public static final class a implements sbb {
        public a() {
        }

        @Override
        public sbb a(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
            y45.j(cVar, "kotlinTypeRefiner");
            return this;
        }

        @Override
        public boolean d() {
            return true;
        }

        @Override
        public ebb c() {
            return AbstractTypeAliasDescriptor.this;
        }

        @Override
        public List getParameters() {
            return AbstractTypeAliasDescriptor.this.H0();
        }

        @Override
        public Collection k() {
            Collection collectionK = c().w0().I0().k();
            y45.i(collectionK, "declarationDescriptor.un…pe.constructor.supertypes");
            return collectionK;
        }

        @Override
        public kotlin.reflect.jvm.internal.impl.builtins.d o() {
            return DescriptorUtilsKt.j(c());
        }

        public String toString() {
            return "[typealias " + c().getName().b() + ']';
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeAliasDescriptor(xt1 xt1Var, md mdVar, by6 by6Var, yt9 yt9Var, c92 c92Var) {
        super(xt1Var, mdVar, by6Var, yt9Var);
        y45.j(xt1Var, "containingDeclaration");
        y45.j(mdVar, "annotations");
        y45.j(by6Var, "name");
        y45.j(yt9Var, "sourceElement");
        y45.j(c92Var, "visibilityImpl");
        this.f = c92Var;
        this.h = new a();
    }

    public final sm9 C0() {
        MemberScope memberScopeE;
        qw0 qw0VarK = k();
        if (qw0VarK == null || (memberScopeE = qw0VarK.E()) == null) {
            memberScopeE = MemberScope.a.b;
        }
        sm9 sm9VarU = n.u(this, memberScopeE, new e74() {
            {
                super(1);
            }

            @Override
            public final sm9 invoke(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
                px0 px0VarF = cVar.f(this.this$0);
                if (px0VarF != null) {
                    return px0VarF.q();
                }
                return null;
            }
        });
        y45.i(sm9VarU, "@OptIn(TypeRefinement::c…s)?.defaultType\n        }");
        return sm9VarU;
    }

    @Override
    public ebb a() {
        du1 du1VarA = super.a();
        y45.h(du1VarA, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeAliasDescriptor");
        return (ebb) du1VarA;
    }

    public final Collection G0() {
        qw0 qw0VarK = k();
        if (qw0VarK == null) {
            return y71.k();
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.b> collectionN = qw0VarK.n();
        y45.i(collectionN, "classDescriptor.constructors");
        ArrayList arrayList = new ArrayList();
        for (kotlin.reflect.jvm.internal.impl.descriptors.b bVar : collectionN) {
            TypeAliasConstructorDescriptorImpl.a aVar = TypeAliasConstructorDescriptorImpl.J;
            vx9 vx9VarA0 = a0();
            y45.i(bVar, "it");
            dbb dbbVarB = aVar.b(vx9VarA0, this, bVar);
            if (dbbVarB != null) {
                arrayList.add(dbbVarB);
            }
        }
        return arrayList;
    }

    public abstract List H0();

    public final void I0(List list) {
        y45.j(list, "declaredTypeParameters");
        this.g = list;
    }

    public abstract vx9 a0();

    @Override
    public boolean f0() {
        return false;
    }

    @Override
    public boolean g() {
        return n.c(w0(), new e74() {
            {
                super(1);
            }

            /* JADX WARN: Code duplicated, block: B:9:0x0027  */
            @Override
            public final Boolean invoke(mgb mgbVar) {
                boolean z;
                y45.i(mgbVar, "type");
                if (fh5.a(mgbVar)) {
                    z = false;
                } else {
                    AbstractTypeAliasDescriptor abstractTypeAliasDescriptor = this.this$0;
                    px0 px0VarC = mgbVar.I0().c();
                    if (!(px0VarC instanceof hcb) || y45.e(((hcb) px0VarC).b(), abstractTypeAliasDescriptor)) {
                        z = false;
                    } else {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        });
    }

    @Override
    public c92 getVisibility() {
        return this.f;
    }

    @Override
    public boolean isExternal() {
        return false;
    }

    @Override
    public sbb m() {
        return this.h;
    }

    @Override
    public boolean m0() {
        return false;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        y45.j(bu1Var, "visitor");
        return bu1Var.k(this, obj);
    }

    @Override
    public List r() {
        List list = this.g;
        if (list != null) {
            return list;
        }
        y45.B("declaredTypeParametersImpl");
        return null;
    }

    @Override
    public String toString() {
        return "typealias " + getName().b();
    }
}
