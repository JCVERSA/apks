package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import defpackage.mq6;
import defpackage.o54;
import defpackage.pv7;
import defpackage.vx9;
import defpackage.y45;

public interface b {
    public static final a a = a.a;

    public static final class a {
        public static final a a = new a();
        public static final mq6 b = new mq6("PackageViewDescriptorFactory");

        public final mq6 a() {
            return b;
        }
    }

    public static final class C0381b implements b {
        public static final C0381b b = new C0381b();

        @Override
        public pv7 a(ModuleDescriptorImpl moduleDescriptorImpl, o54 o54Var, vx9 vx9Var) {
            y45.j(moduleDescriptorImpl, "module");
            y45.j(o54Var, "fqName");
            y45.j(vx9Var, "storageManager");
            return new LazyPackageViewDescriptorImpl(moduleDescriptorImpl, o54Var, vx9Var);
        }
    }

    pv7 a(ModuleDescriptorImpl moduleDescriptorImpl, o54 o54Var, vx9 vx9Var);
}
