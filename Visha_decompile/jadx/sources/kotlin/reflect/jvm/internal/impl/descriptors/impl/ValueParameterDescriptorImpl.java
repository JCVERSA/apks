package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import defpackage.b92;
import defpackage.bu1;
import defpackage.by6;
import defpackage.c74;
import defpackage.c92;
import defpackage.eh5;
import defpackage.md;
import defpackage.pf1;
import defpackage.xnb;
import defpackage.xt1;
import defpackage.y45;
import defpackage.yi5;
import defpackage.yt9;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

public class ValueParameterDescriptorImpl extends c implements h {
    public static final a m = new a(null);
    public final int g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final eh5 k;
    public final h l;

    public static final class WithDestructuringDeclaration extends ValueParameterDescriptorImpl {
        public final yi5 n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithDestructuringDeclaration(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, h hVar, int i, md mdVar, by6 by6Var, eh5 eh5Var, boolean z, boolean z2, boolean z3, eh5 eh5Var2, yt9 yt9Var, c74 c74Var) {
            super(aVar, hVar, i, mdVar, by6Var, eh5Var, z, z2, z3, eh5Var2, yt9Var);
            y45.j(aVar, "containingDeclaration");
            y45.j(mdVar, "annotations");
            y45.j(by6Var, "name");
            y45.j(eh5Var, "outType");
            y45.j(yt9Var, "source");
            y45.j(c74Var, "destructuringVariables");
            this.n = kotlin.b.a(c74Var);
        }

        @Override
        public h D0(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, by6 by6Var, int i) {
            y45.j(aVar, "newOwner");
            y45.j(by6Var, "newName");
            md annotations = getAnnotations();
            y45.i(annotations, "annotations");
            eh5 type = getType();
            y45.i(type, "type");
            boolean zN = N();
            boolean zU0 = u0();
            boolean zR0 = r0();
            eh5 eh5VarX0 = x0();
            yt9 yt9Var = yt9.a;
            y45.i(yt9Var, "NO_SOURCE");
            return new WithDestructuringDeclaration(aVar, null, i, annotations, by6Var, type, zN, zU0, zR0, eh5VarX0, yt9Var, new c74() {
                {
                    super(0);
                }

                @Override
                public final List<xnb> invoke() {
                    return this.this$0.I0();
                }
            });
        }

        public final List I0() {
            return (List) this.n.getValue();
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ValueParameterDescriptorImpl a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, h hVar, int i, md mdVar, by6 by6Var, eh5 eh5Var, boolean z, boolean z2, boolean z3, eh5 eh5Var2, yt9 yt9Var, c74 c74Var) {
            y45.j(aVar, "containingDeclaration");
            y45.j(mdVar, "annotations");
            y45.j(by6Var, "name");
            y45.j(eh5Var, "outType");
            y45.j(yt9Var, "source");
            return c74Var == null ? new ValueParameterDescriptorImpl(aVar, hVar, i, mdVar, by6Var, eh5Var, z, z2, z3, eh5Var2, yt9Var) : new WithDestructuringDeclaration(aVar, hVar, i, mdVar, by6Var, eh5Var, z, z2, z3, eh5Var2, yt9Var, c74Var);
        }

        public a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ValueParameterDescriptorImpl(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, h hVar, int i, md mdVar, by6 by6Var, eh5 eh5Var, boolean z, boolean z2, boolean z3, eh5 eh5Var2, yt9 yt9Var) {
        super(aVar, mdVar, by6Var, eh5Var, yt9Var);
        y45.j(aVar, "containingDeclaration");
        y45.j(mdVar, "annotations");
        y45.j(by6Var, "name");
        y45.j(eh5Var, "outType");
        y45.j(yt9Var, "source");
        this.g = i;
        this.h = z;
        this.i = z2;
        this.j = z3;
        this.k = eh5Var2;
        this.l = hVar == null ? this : hVar;
    }

    public static final ValueParameterDescriptorImpl F0(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, h hVar, int i, md mdVar, by6 by6Var, eh5 eh5Var, boolean z, boolean z2, boolean z3, eh5 eh5Var2, yt9 yt9Var, c74 c74Var) {
        return m.a(aVar, hVar, i, mdVar, by6Var, eh5Var, z, z2, z3, eh5Var2, yt9Var, c74Var);
    }

    @Override
    public h D0(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, by6 by6Var, int i) {
        y45.j(aVar, "newOwner");
        y45.j(by6Var, "newName");
        md annotations = getAnnotations();
        y45.i(annotations, "annotations");
        eh5 type = getType();
        y45.i(type, "type");
        boolean zN = N();
        boolean zU0 = u0();
        boolean zR0 = r0();
        eh5 eh5VarX0 = x0();
        yt9 yt9Var = yt9.a;
        y45.i(yt9Var, "NO_SOURCE");
        return new ValueParameterDescriptorImpl(aVar, null, i, annotations, by6Var, type, zN, zU0, zR0, eh5VarX0, yt9Var);
    }

    public Void G0() {
        return null;
    }

    @Override
    public h c(TypeSubstitutor typeSubstitutor) {
        y45.j(typeSubstitutor, "substitutor");
        if (typeSubstitutor.k()) {
            return this;
        }
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean N() {
        if (this.h) {
            kotlin.reflect.jvm.internal.impl.descriptors.a aVarB = b();
            y45.h(aVarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableMemberDescriptor");
            if (((CallableMemberDescriptor) aVarB).getKind().isReal()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Collection e() {
        Collection collectionE = b().e();
        y45.i(collectionE, "containingDeclaration.overriddenDescriptors");
        Collection collection = collectionE;
        ArrayList arrayList = new ArrayList(z71.v(collection, 10));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add((h) ((kotlin.reflect.jvm.internal.impl.descriptors.a) it.next()).f().get(getIndex()));
        }
        return arrayList;
    }

    @Override
    public int getIndex() {
        return this.g;
    }

    @Override
    public c92 getVisibility() {
        c92 c92Var = b92.f;
        y45.i(c92Var, "LOCAL");
        return c92Var;
    }

    @Override
    public pf1 p0() {
        return (pf1) G0();
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        y45.j(bu1Var, "visitor");
        return bu1Var.a(this, obj);
    }

    @Override
    public boolean r0() {
        return this.j;
    }

    @Override
    public boolean u0() {
        return this.i;
    }

    @Override
    public eh5 x0() {
        return this.k;
    }

    @Override
    public boolean y() {
        return false;
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.descriptors.a b() {
        xt1 xt1VarB = super.b();
        y45.h(xt1VarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor");
        return (kotlin.reflect.jvm.internal.impl.descriptors.a) xt1VarB;
    }

    @Override
    public h a() {
        h hVar = this.l;
        return hVar == this ? this : hVar.a();
    }
}
