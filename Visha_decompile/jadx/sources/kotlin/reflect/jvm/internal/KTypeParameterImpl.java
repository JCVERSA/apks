package kotlin.reflect.jvm.internal;

import defpackage.af5;
import defpackage.c74;
import defpackage.clb;
import defpackage.de5;
import defpackage.ed5;
import defpackage.eh5;
import defpackage.el1;
import defpackage.hcb;
import defpackage.hf5;
import defpackage.ie5;
import defpackage.if5;
import defpackage.lcb;
import defpackage.nd5;
import defpackage.p92;
import defpackage.q92;
import defpackage.qq8;
import defpackage.qw0;
import defpackage.xq8;
import defpackage.xt1;
import defpackage.y45;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public final class KTypeParameterImpl implements hf5, ie5 {
    public static final af5[] e = {xq8.j(new PropertyReference1Impl(xq8.b(KTypeParameterImpl.class), "upperBounds", "getUpperBounds()Ljava/util/List;"))};
    public final hcb b;
    public final e.a c;
    public final if5 d;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Variance.values().length];
            try {
                iArr[Variance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public KTypeParameterImpl(if5 if5Var, hcb hcbVar) {
        KClassImpl kClassImplD;
        Object objQ0;
        y45.j(hcbVar, "descriptor");
        this.b = hcbVar;
        this.c = e.c(new c74() {
            {
                super(0);
            }

            @Override
            public final List<KTypeImpl> invoke() {
                List upperBounds = this.this$0.getDescriptor().getUpperBounds();
                y45.i(upperBounds, "descriptor.upperBounds");
                List list = upperBounds;
                ArrayList arrayList = new ArrayList(z71.v(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new KTypeImpl((eh5) it.next(), null, 2, null));
                }
                return arrayList;
            }
        });
        if (if5Var == null) {
            xt1 xt1VarB = getDescriptor().b();
            y45.i(xt1VarB, "descriptor.containingDeclaration");
            if (xt1VarB instanceof qw0) {
                objQ0 = d((qw0) xt1VarB);
            } else {
                if (!(xt1VarB instanceof CallableMemberDescriptor)) {
                    throw new KotlinReflectionInternalError("Unknown type parameter container: " + xt1VarB);
                }
                xt1 xt1VarB2 = ((CallableMemberDescriptor) xt1VarB).b();
                y45.i(xt1VarB2, "declaration.containingDeclaration");
                if (xt1VarB2 instanceof qw0) {
                    kClassImplD = d((qw0) xt1VarB2);
                } else {
                    q92 q92Var = xt1VarB instanceof q92 ? (q92) xt1VarB : null;
                    if (q92Var == null) {
                        throw new KotlinReflectionInternalError("Non-class callable descriptor must be deserialized: " + xt1VarB);
                    }
                    de5 de5VarE = ed5.e(a(q92Var));
                    y45.h(de5VarE, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>");
                    kClassImplD = (KClassImpl) de5VarE;
                }
                objQ0 = xt1VarB.q0(new el1(kClassImplD), zfb.a);
            }
            y45.i(objQ0, "when (val declaration = … $declaration\")\n        }");
            if5Var = (if5) objQ0;
        }
        this.d = if5Var;
    }

    public final Class a(q92 q92Var) {
        Class clsE;
        p92 p92VarY = q92Var.Y();
        nd5 nd5Var = p92VarY instanceof nd5 ? (nd5) p92VarY : null;
        kotlin.reflect.jvm.internal.impl.load.kotlin.c cVarG = nd5Var != null ? nd5Var.g() : null;
        qq8 qq8Var = cVarG instanceof qq8 ? (qq8) cVarG : null;
        if (qq8Var != null && (clsE = qq8Var.e()) != null) {
            return clsE;
        }
        throw new KotlinReflectionInternalError("Container of deserialized member is not resolved: " + q92Var);
    }

    @Override
    public hcb getDescriptor() {
        return this.b;
    }

    public final KClassImpl d(qw0 qw0Var) {
        Class clsP = clb.p(qw0Var);
        KClassImpl kClassImpl = (KClassImpl) (clsP != null ? ed5.e(clsP) : null);
        if (kClassImpl != null) {
            return kClassImpl;
        }
        throw new KotlinReflectionInternalError("Type parameter container is not resolved: " + qw0Var.b());
    }

    public boolean equals(Object obj) {
        if (obj instanceof KTypeParameterImpl) {
            KTypeParameterImpl kTypeParameterImpl = (KTypeParameterImpl) obj;
            if (y45.e(this.d, kTypeParameterImpl.d) && y45.e(getName(), kTypeParameterImpl.getName())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public String getName() {
        String strB = getDescriptor().getName().b();
        y45.i(strB, "descriptor.name.asString()");
        return strB;
    }

    @Override
    public List getUpperBounds() {
        Object objB = this.c.b(this, e[0]);
        y45.i(objB, "<get-upperBounds>(...)");
        return (List) objB;
    }

    @Override
    public KVariance h() {
        int i = a.a[getDescriptor().h().ordinal()];
        if (i == 1) {
            return KVariance.INVARIANT;
        }
        if (i == 2) {
            return KVariance.IN;
        }
        if (i == 3) {
            return KVariance.OUT;
        }
        throw new NoWhenBranchMatchedException();
    }

    public int hashCode() {
        return (this.d.hashCode() * 31) + getName().hashCode();
    }

    public String toString() {
        return lcb.b.a(this);
    }
}
