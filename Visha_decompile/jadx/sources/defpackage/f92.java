package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.b;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.checker.e;

public final class f92 {
    public static final a b = new a(null);
    public final e92 a;

    public static final class a {

        public static final class C0342a {
            public final f92 a;
            public final DeserializedDescriptorResolver b;

            public C0342a(f92 f92Var, DeserializedDescriptorResolver deserializedDescriptorResolver) {
                y45.j(f92Var, "deserializationComponentsForJava");
                y45.j(deserializedDescriptorResolver, "deserializedDescriptorResolver");
                this.a = f92Var;
                this.b = deserializedDescriptorResolver;
            }

            public final f92 a() {
                return this.a;
            }

            public final DeserializedDescriptorResolver b() {
                return this.b;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C0342a a(vg5 vg5Var, vg5 vg5Var2, x65 x65Var, String str, ed3 ed3Var, j85 j85Var) {
            y45.j(vg5Var, "kotlinClassFinder");
            y45.j(vg5Var2, "jvmBuiltInsKotlinClassFinder");
            y45.j(x65Var, "javaClassFinder");
            y45.j(str, "moduleName");
            y45.j(ed3Var, "errorReporter");
            y45.j(j85Var, "javaSourceElementFactory");
            LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("DeserializationComponentsForJava.ModuleData");
            JvmBuiltIns jvmBuiltIns = new JvmBuiltIns(lockBasedStorageManager, JvmBuiltIns.Kind.FROM_DEPENDENCIES);
            by6 by6VarJ = by6.j('<' + str + '>');
            y45.i(by6VarJ, "special(\"<$moduleName>\")");
            ModuleDescriptorImpl moduleDescriptorImpl = new ModuleDescriptorImpl(by6VarJ, lockBasedStorageManager, jvmBuiltIns, null, null, null, 56, null);
            jvmBuiltIns.E0(moduleDescriptorImpl);
            jvmBuiltIns.J0(moduleDescriptorImpl, true);
            DeserializedDescriptorResolver deserializedDescriptorResolver = new DeserializedDescriptorResolver();
            hn9 hn9Var = new hn9();
            NotFoundClasses notFoundClasses = new NotFoundClasses(lockBasedStorageManager, moduleDescriptorImpl);
            LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProviderB = g92.b(x65Var, moduleDescriptorImpl, lockBasedStorageManager, notFoundClasses, vg5Var, deserializedDescriptorResolver, ed3Var, j85Var, hn9Var, (512 & 512) != 0 ? lv7.a.a : null);
            f92 f92VarA = g92.a(moduleDescriptorImpl, lockBasedStorageManager, notFoundClasses, lazyJavaPackageFragmentProviderB, vg5Var, deserializedDescriptorResolver, ed3Var, jd5.i);
            deserializedDescriptorResolver.n(f92VarA);
            d85 d85Var = d85.a;
            y45.i(d85Var, "EMPTY");
            h75 h75Var = new h75(lazyJavaPackageFragmentProviderB, d85Var);
            hn9Var.c(h75Var);
            cd5 cd5Var = new cd5(lockBasedStorageManager, vg5Var2, moduleDescriptorImpl, notFoundClasses, jvmBuiltIns.I0(), jvmBuiltIns.I0(), h92.a.a, e.b.a(), new f19(lockBasedStorageManager, y71.k()));
            moduleDescriptorImpl.T0(moduleDescriptorImpl);
            moduleDescriptorImpl.N0(new md1(y71.n(h75Var.a(), cd5Var), "CompositeProvider@RuntimeModuleData for " + moduleDescriptorImpl));
            return new C0342a(f92VarA, deserializedDescriptorResolver);
        }

        public a() {
        }
    }

    public f92(vx9 vx9Var, qq6 qq6Var, h92 h92Var, u65 u65Var, b bVar, LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider, NotFoundClasses notFoundClasses, ed3 ed3Var, qr5 qr5Var, zh1 zh1Var, e eVar, kbb kbbVar) {
        v18 v18VarI0;
        n8 n8VarI0;
        y45.j(vx9Var, "storageManager");
        y45.j(qq6Var, "moduleDescriptor");
        y45.j(h92Var, "configuration");
        y45.j(u65Var, "classDataFinder");
        y45.j(bVar, "annotationAndConstantLoader");
        y45.j(lazyJavaPackageFragmentProvider, "packageFragmentProvider");
        y45.j(notFoundClasses, "notFoundClasses");
        y45.j(ed3Var, "errorReporter");
        y45.j(qr5Var, "lookupTracker");
        y45.j(zh1Var, "contractDeserializer");
        y45.j(eVar, "kotlinTypeChecker");
        y45.j(kbbVar, "typeAttributeTranslators");
        d dVarO = qq6Var.o();
        JvmBuiltIns jvmBuiltIns = dVarO instanceof JvmBuiltIns ? (JvmBuiltIns) dVarO : null;
        this.a = new e92(vx9Var, qq6Var, h92Var, u65Var, bVar, lazyJavaPackageFragmentProvider, on5.a.a, ed3Var, qr5Var, n75.a, y71.k(), notFoundClasses, zh1Var, (jvmBuiltIns == null || (n8VarI0 = jvmBuiltIns.I0()) == null) ? n8.a.a : n8VarI0, (jvmBuiltIns == null || (v18VarI0 = jvmBuiltIns.I0()) == null) ? v18.b.a : v18VarI0, od5.a.a(), eVar, new f19(vx9Var, y71.k()), null, kbbVar.a(), 262144, null);
    }

    public final e92 a() {
        return this.a;
    }
}
