package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import defpackage.af5;
import defpackage.bu1;
import defpackage.c74;
import defpackage.dv7;
import defpackage.gv7;
import defpackage.i81;
import defpackage.md;
import defpackage.o54;
import defpackage.pv7;
import defpackage.u1a;
import defpackage.ux9;
import defpackage.vx9;
import defpackage.x17;
import defpackage.xq8;
import defpackage.y45;
import defpackage.yt1;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

public class LazyPackageViewDescriptorImpl extends yt1 implements pv7 {
    public static final af5[] i = {xq8.j(new PropertyReference1Impl(xq8.b(LazyPackageViewDescriptorImpl.class), "fragments", "getFragments()Ljava/util/List;")), xq8.j(new PropertyReference1Impl(xq8.b(LazyPackageViewDescriptorImpl.class), "empty", "getEmpty()Z"))};
    public final ModuleDescriptorImpl d;
    public final o54 e;
    public final x17 f;
    public final x17 g;
    public final MemberScope h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyPackageViewDescriptorImpl(ModuleDescriptorImpl moduleDescriptorImpl, o54 o54Var, vx9 vx9Var) {
        super(md.u1.b(), o54Var.h());
        y45.j(moduleDescriptorImpl, "module");
        y45.j(o54Var, "fqName");
        y45.j(vx9Var, "storageManager");
        this.d = moduleDescriptorImpl;
        this.e = o54Var;
        this.f = vx9Var.c(new c74() {
            {
                super(0);
            }

            @Override
            public final List<dv7> invoke() {
                return gv7.c(this.this$0.A0().L0(), this.this$0.d());
            }
        });
        this.g = vx9Var.c(new c74() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() {
                return Boolean.valueOf(gv7.b(this.this$0.A0().L0(), this.this$0.d()));
            }
        });
        this.h = new LazyScopeAdapter(vx9Var, new c74() {
            {
                super(0);
            }

            @Override
            public final MemberScope invoke() {
                if (this.this$0.isEmpty()) {
                    return MemberScope.a.b;
                }
                List listH = this.this$0.H();
                ArrayList arrayList = new ArrayList(z71.v(listH, 10));
                Iterator it = listH.iterator();
                while (it.hasNext()) {
                    arrayList.add(((dv7) it.next()).p());
                }
                List listK0 = i81.K0(arrayList, new u1a(this.this$0.A0(), this.this$0.d()));
                return kotlin.reflect.jvm.internal.impl.resolve.scopes.a.d.a("package view scope for " + this.this$0.d() + " in " + this.this$0.A0().getName(), listK0);
            }
        });
    }

    public final boolean C0() {
        return ((Boolean) ux9.a(this.g, this, i[1])).booleanValue();
    }

    @Override
    public ModuleDescriptorImpl A0() {
        return this.d;
    }

    @Override
    public List H() {
        return (List) ux9.a(this.f, this, i[0]);
    }

    @Override
    public o54 d() {
        return this.e;
    }

    public boolean equals(Object obj) {
        pv7 pv7Var = obj instanceof pv7 ? (pv7) obj : null;
        return pv7Var != null && y45.e(d(), pv7Var.d()) && y45.e(A0(), pv7Var.A0());
    }

    public int hashCode() {
        return (A0().hashCode() * 31) + d().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return C0();
    }

    @Override
    public pv7 b() {
        if (d().d()) {
            return null;
        }
        ModuleDescriptorImpl moduleDescriptorImplA0 = A0();
        o54 o54VarE = d().e();
        y45.i(o54VarE, "fqName.parent()");
        return moduleDescriptorImplA0.C(o54VarE);
    }

    @Override
    public MemberScope p() {
        return this.h;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        y45.j(bu1Var, "visitor");
        return bu1Var.j(this, obj);
    }
}
