package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import com.lzy.okgo.model.Progress;
import defpackage.by6;
import defpackage.c74;
import defpackage.e74;
import defpackage.gj5;
import defpackage.gn6;
import defpackage.j92;
import defpackage.jd5;
import defpackage.o37;
import defpackage.o54;
import defpackage.or5;
import defpackage.qw0;
import defpackage.s65;
import defpackage.su9;
import defpackage.u82;
import defpackage.vg5;
import defpackage.wg5;
import defpackage.x65;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.y75;
import defpackage.ye9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.reflect.jvm.internal.impl.load.kotlin.c;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.utils.FunctionsKt;

public final class LazyJavaPackageScope extends kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b {
    public final y75 n;
    public final LazyJavaPackageFragment o;
    public final o37 p;
    public final gn6 q;

    public static final class a {
        public final by6 a;
        public final s65 b;

        public a(by6 by6Var, s65 s65Var) {
            y45.j(by6Var, "name");
            this.a = by6Var;
            this.b = s65Var;
        }

        public final s65 a() {
            return this.b;
        }

        public final by6 b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && y45.e(this.a, ((a) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    public static abstract class b {

        public static final class a extends b {
            public final qw0 a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(qw0 qw0Var) {
                super(null);
                y45.j(qw0Var, "descriptor");
                this.a = qw0Var;
            }

            public final qw0 a() {
                return this.a;
            }
        }

        public static final class C0385b extends b {
            public static final C0385b a = new C0385b();

            public C0385b() {
                super(null);
            }
        }

        public static final class c extends b {
            public static final c a = new c();

            public c() {
                super(null);
            }
        }

        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public b() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaPackageScope(final gj5 gj5Var, y75 y75Var, LazyJavaPackageFragment lazyJavaPackageFragment) {
        super(gj5Var);
        y45.j(gj5Var, "c");
        y45.j(y75Var, "jPackage");
        y45.j(lazyJavaPackageFragment, "ownerDescriptor");
        this.n = y75Var;
        this.o = lazyJavaPackageFragment;
        this.p = gj5Var.e().b(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Set<String> invoke() {
                return gj5Var.a().d().c(this.C().d());
            }
        });
        this.q = gj5Var.e().a(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final qw0 invoke(LazyJavaPackageScope.a aVar) {
                y45.j(aVar, Progress.REQUEST);
                xw0 xw0Var = new xw0(this.this$0.C().d(), aVar.b());
                vg5.a aVarB = aVar.a() != null ? gj5Var.a().j().b(aVar.a(), this.this$0.R()) : gj5Var.a().j().c(xw0Var, this.this$0.R());
                c cVarA = aVarB != null ? aVarB.a() : null;
                xw0 xw0VarC = cVarA != null ? cVarA.c() : null;
                if (xw0VarC != null && (xw0VarC.l() || xw0VarC.k())) {
                    return null;
                }
                LazyJavaPackageScope.b bVarT = this.this$0.T(cVarA);
                if (bVarT instanceof LazyJavaPackageScope.b.a) {
                    return ((LazyJavaPackageScope.b.a) bVarT).a();
                }
                if (bVarT instanceof LazyJavaPackageScope.b.c) {
                    return null;
                }
                if (!(bVarT instanceof LazyJavaPackageScope.b.C0385b)) {
                    throw new NoWhenBranchMatchedException();
                }
                s65 s65VarA = aVar.a();
                if (s65VarA == null) {
                    s65VarA = gj5Var.a().d().b(new x65.a(xw0Var, null, null, 4, null));
                }
                s65 s65Var = s65VarA;
                if ((s65Var != null ? s65Var.B() : null) != LightClassOriginKind.BINARY) {
                    o54 o54VarD = s65Var != null ? s65Var.d() : null;
                    if (o54VarD == null || o54VarD.d() || !y45.e(o54VarD.e(), this.this$0.C().d())) {
                        return null;
                    }
                    LazyJavaClassDescriptor lazyJavaClassDescriptor = new LazyJavaClassDescriptor(gj5Var, this.this$0.C(), s65Var, null, 8, null);
                    gj5Var.a().e().a(lazyJavaClassDescriptor);
                    return lazyJavaClassDescriptor;
                }
                throw new IllegalStateException("Couldn't find kotlin binary class for light class created by kotlin binary file\nJavaClass: " + s65Var + "\nClassId: " + xw0Var + "\nfindKotlinClass(JavaClass) = " + wg5.b(gj5Var.a().j(), s65Var, this.this$0.R()) + "\nfindKotlinClass(ClassId) = " + wg5.a(gj5Var.a().j(), xw0Var, this.this$0.R()) + '\n');
            }
        });
    }

    public final qw0 O(by6 by6Var, s65 s65Var) {
        if (!su9.a.a(by6Var)) {
            return null;
        }
        Set set = (Set) this.p.invoke();
        if (s65Var != null || set == null || set.contains(by6Var.b())) {
            return (qw0) this.q.invoke(new a(by6Var, s65Var));
        }
        return null;
    }

    public final qw0 P(s65 s65Var) {
        y45.j(s65Var, "javaClass");
        return O(s65Var.getName(), s65Var);
    }

    @Override
    public qw0 f(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return O(by6Var, null);
    }

    public final jd5 R() {
        return j92.a(w().a().b().d().g());
    }

    @Override
    public LazyJavaPackageFragment C() {
        return this.o;
    }

    public final b T(c cVar) {
        if (cVar == null) {
            return b.C0385b.a;
        }
        if (cVar.b().c() != KotlinClassHeader.Kind.CLASS) {
            return b.c.a;
        }
        qw0 qw0VarL = w().a().b().l(cVar);
        return qw0VarL != null ? new b.a(qw0VarL) : b.C0385b.a;
    }

    @Override
    public Collection b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return y71.k();
    }

    @Override
    public Collection g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        u82.a aVar = u82.c;
        if (!u82Var.a(aVar.e() | aVar.c())) {
            return y71.k();
        }
        Iterable iterable = (Iterable) v().invoke();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            xt1 xt1Var = (xt1) obj;
            if (xt1Var instanceof qw0) {
                by6 name = ((qw0) xt1Var).getName();
                y45.i(name, "it.name");
                if (((Boolean) e74Var.invoke(name)).booleanValue()) {
                    arrayList.add(obj);
                }
            }
        }
        return arrayList;
    }

    @Override
    public Set l(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        if (!u82Var.a(u82.c.e())) {
            return ye9.f();
        }
        Set set = (Set) this.p.invoke();
        if (set != null) {
            HashSet hashSet = new HashSet();
            Iterator it = set.iterator();
            while (it.hasNext()) {
                hashSet.add(by6.g((String) it.next()));
            }
            return hashSet;
        }
        y75 y75Var = this.n;
        if (e74Var == null) {
            e74Var = FunctionsKt.a();
        }
        Collection<s65> collectionQ = y75Var.q(e74Var);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (s65 s65Var : collectionQ) {
            by6 name = s65Var.B() == LightClassOriginKind.SOURCE ? null : s65Var.getName();
            if (name != null) {
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override
    public Set n(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        return ye9.f();
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a p() {
        return kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a.C0386a.a;
    }

    @Override
    public void r(Collection collection, by6 by6Var) {
        y45.j(collection, "result");
        y45.j(by6Var, "name");
    }

    @Override
    public Set t(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        return ye9.f();
    }
}
