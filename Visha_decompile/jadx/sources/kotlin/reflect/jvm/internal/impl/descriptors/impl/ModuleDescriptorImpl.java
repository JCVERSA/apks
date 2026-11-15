package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import defpackage.bu1;
import defpackage.by6;
import defpackage.c74;
import defpackage.e74;
import defpackage.f55;
import defpackage.fn6;
import defpackage.fv7;
import defpackage.hi;
import defpackage.i81;
import defpackage.md;
import defpackage.md1;
import defpackage.mq6;
import defpackage.o54;
import defpackage.oq6;
import defpackage.pq6;
import defpackage.pv7;
import defpackage.qq6;
import defpackage.vda;
import defpackage.vx9;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye9;
import defpackage.yi5;
import defpackage.yt1;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ModuleDescriptorImpl extends yt1 implements qq6 {
    public final vx9 d;
    public final kotlin.reflect.jvm.internal.impl.builtins.d e;
    public final by6 f;
    public final Map g;
    public final b h;
    public oq6 i;
    public fv7 j;
    public boolean k;
    public final fn6 l;
    public final yi5 m;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ModuleDescriptorImpl(by6 by6Var, vx9 vx9Var, kotlin.reflect.jvm.internal.impl.builtins.d dVar, vda vdaVar) {
        this(by6Var, vx9Var, dVar, vdaVar, null, null, 48, null);
        y45.j(by6Var, "moduleName");
        y45.j(vx9Var, "storageManager");
        y45.j(dVar, "builtIns");
    }

    public final boolean O0() {
        return this.j != null;
    }

    @Override
    public pv7 C(o54 o54Var) {
        y45.j(o54Var, "fqName");
        J0();
        return (pv7) this.l.invoke(o54Var);
    }

    public void J0() {
        if (P0()) {
            return;
        }
        f55.a(this);
    }

    public final String K0() {
        String string = getName().toString();
        y45.i(string, "name.toString()");
        return string;
    }

    public final fv7 L0() {
        J0();
        return M0();
    }

    @Override
    public List M() {
        oq6 oq6Var = this.i;
        if (oq6Var != null) {
            return oq6Var.a();
        }
        throw new AssertionError("Dependencies of module " + K0() + " were not set");
    }

    public final md1 M0() {
        return (md1) this.m.getValue();
    }

    public final void N0(fv7 fv7Var) {
        y45.j(fv7Var, "providerForModuleContent");
        O0();
        this.j = fv7Var;
    }

    public boolean P0() {
        return this.k;
    }

    public final void Q0(oq6 oq6Var) {
        y45.j(oq6Var, "dependencies");
        this.i = oq6Var;
    }

    public final void R0(List list) {
        y45.j(list, "descriptors");
        S0(list, ye9.f());
    }

    @Override
    public boolean S(qq6 qq6Var) {
        y45.j(qq6Var, "targetModule");
        if (y45.e(this, qq6Var)) {
            return true;
        }
        oq6 oq6Var = this.i;
        y45.g(oq6Var);
        return i81.d0(oq6Var.b(), qq6Var) || M().contains(qq6Var) || qq6Var.M().contains(this);
    }

    public final void S0(List list, Set set) {
        y45.j(list, "descriptors");
        y45.j(set, "friends");
        Q0(new pq6(list, set, y71.k(), ye9.f()));
    }

    public final void T0(ModuleDescriptorImpl... moduleDescriptorImplArr) {
        y45.j(moduleDescriptorImplArr, "descriptors");
        R0(hi.c1(moduleDescriptorImplArr));
    }

    @Override
    public xt1 b() {
        return qq6.a.b(this);
    }

    @Override
    public Collection i(o54 o54Var, e74 e74Var) {
        y45.j(o54Var, "fqName");
        y45.j(e74Var, "nameFilter");
        J0();
        return L0().i(o54Var, e74Var);
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.builtins.d o() {
        return this.e;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        return qq6.a.a(this, bu1Var, obj);
    }

    @Override
    public Object s0(mq6 mq6Var) {
        y45.j(mq6Var, "capability");
        Object obj = this.g.get(mq6Var);
        if (obj == null) {
            return null;
        }
        return obj;
    }

    @Override
    public String toString() {
        String string = super.toString();
        y45.i(string, "super.toString()");
        if (P0()) {
            return string;
        }
        return string + " !isValid";
    }

    public ModuleDescriptorImpl(by6 by6Var, vx9 vx9Var, kotlin.reflect.jvm.internal.impl.builtins.d dVar, vda vdaVar, Map map, by6 by6Var2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(by6Var, vx9Var, dVar, (i & 8) != 0 ? null : vdaVar, (i & 16) != 0 ? kotlin.collections.a.l() : map, (i & 32) != 0 ? null : by6Var2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModuleDescriptorImpl(by6 by6Var, vx9 vx9Var, kotlin.reflect.jvm.internal.impl.builtins.d dVar, vda vdaVar, Map map, by6 by6Var2) {
        super(md.u1.b(), by6Var);
        y45.j(by6Var, "moduleName");
        y45.j(vx9Var, "storageManager");
        y45.j(dVar, "builtIns");
        y45.j(map, "capabilities");
        this.d = vx9Var;
        this.e = dVar;
        this.f = by6Var2;
        if (by6Var.h()) {
            this.g = map;
            b bVar = (b) s0(b.a.a());
            this.h = bVar == null ? b.C0381b.b : bVar;
            this.k = true;
            this.l = vx9Var.i(new e74() {
                {
                    super(1);
                }

                @Override
                public final pv7 invoke(o54 o54Var) {
                    y45.j(o54Var, "fqName");
                    b bVar2 = this.this$0.h;
                    ModuleDescriptorImpl moduleDescriptorImpl = this.this$0;
                    return bVar2.a(moduleDescriptorImpl, o54Var, moduleDescriptorImpl.d);
                }
            });
            this.m = kotlin.b.a(new c74() {
                {
                    super(0);
                }

                @Override
                public final md1 invoke() {
                    oq6 oq6Var = this.this$0.i;
                    ModuleDescriptorImpl moduleDescriptorImpl = this.this$0;
                    if (oq6Var == null) {
                        throw new AssertionError("Dependencies of module " + moduleDescriptorImpl.K0() + " were not set before querying module content");
                    }
                    List listC = oq6Var.c();
                    this.this$0.J0();
                    listC.contains(this.this$0);
                    List list = listC;
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((ModuleDescriptorImpl) it.next()).O0();
                    }
                    ArrayList arrayList = new ArrayList(z71.v(list, 10));
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        fv7 fv7Var = ((ModuleDescriptorImpl) it2.next()).j;
                        y45.g(fv7Var);
                        arrayList.add(fv7Var);
                    }
                    return new md1(arrayList, "CompositeProvider@ModuleDescriptor for " + this.this$0.getName());
                }
            });
            return;
        }
        throw new IllegalArgumentException("Module name must be special: " + by6Var);
    }
}
