package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import defpackage.e74;
import defpackage.e92;
import defpackage.ed3;
import defpackage.f19;
import defpackage.fv7;
import defpackage.gy3;
import defpackage.h92;
import defpackage.n8;
import defpackage.nl0;
import defpackage.o54;
import defpackage.o92;
import defpackage.on5;
import defpackage.pn0;
import defpackage.qq6;
import defpackage.qr5;
import defpackage.v18;
import defpackage.vx9;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import defpackage.zh1;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.b;

public final class BuiltInsLoaderImpl implements BuiltInsLoader {
    public final pn0 b = new pn0();

    @Override
    public fv7 a(vx9 vx9Var, qq6 qq6Var, Iterable iterable, v18 v18Var, n8 n8Var, boolean z) {
        y45.j(vx9Var, "storageManager");
        y45.j(qq6Var, "builtInsModule");
        y45.j(iterable, "classDescriptorFactories");
        y45.j(v18Var, "platformDependentDeclarationFilter");
        y45.j(n8Var, "additionalClassPartsProvider");
        return b(vx9Var, qq6Var, e.C, iterable, v18Var, n8Var, z, new BuiltInsLoaderImpl$createPackageFragmentProvider$1(this.b));
    }

    public final fv7 b(vx9 vx9Var, qq6 qq6Var, Set set, Iterable iterable, v18 v18Var, n8 n8Var, boolean z, e74 e74Var) {
        y45.j(vx9Var, "storageManager");
        y45.j(qq6Var, "module");
        y45.j(set, "packageFqNames");
        y45.j(iterable, "classDescriptorFactories");
        y45.j(v18Var, "platformDependentDeclarationFilter");
        y45.j(n8Var, "additionalClassPartsProvider");
        y45.j(e74Var, "loadResource");
        Set<o54> set2 = set;
        ArrayList arrayList = new ArrayList(z71.v(set2, 10));
        for (o54 o54Var : set2) {
            String strR = nl0.r.r(o54Var);
            InputStream inputStream = (InputStream) e74Var.invoke(strR);
            if (inputStream == null) {
                throw new IllegalStateException("Resource not found in classpath: " + strR);
            }
            arrayList.add(a.p.a(o54Var, vx9Var, qq6Var, inputStream, z));
        }
        PackageFragmentProviderImpl packageFragmentProviderImpl = new PackageFragmentProviderImpl(arrayList);
        NotFoundClasses notFoundClasses = new NotFoundClasses(vx9Var, qq6Var);
        h92.a aVar = h92.a.a;
        o92 o92Var = new o92(packageFragmentProviderImpl);
        nl0 nl0Var = nl0.r;
        b bVar = new b(qq6Var, notFoundClasses, nl0Var);
        on5.a aVar2 = on5.a.a;
        ed3 ed3Var = ed3.a;
        y45.i(ed3Var, "DO_NOTHING");
        e92 e92Var = new e92(vx9Var, qq6Var, aVar, o92Var, bVar, packageFragmentProviderImpl, aVar2, ed3Var, qr5.a.a, gy3.a.a, iterable, notFoundClasses, zh1.a.a(), n8Var, v18Var, nl0Var.e(), null, new f19(vx9Var, y71.k()), null, null, 851968, null);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((a) it.next()).G0(e92Var);
        }
        return packageFragmentProviderImpl;
    }
}
