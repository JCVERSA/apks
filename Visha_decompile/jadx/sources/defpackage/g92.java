package defpackage;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.types.c;
import kotlin.reflect.jvm.internal.impl.types.checker.e;

public abstract class g92 {

    public static final class a implements u75 {
        @Override
        public List a(xw0 xw0Var) {
            y45.j(xw0Var, "classId");
            return null;
        }
    }

    public static final f92 a(qq6 qq6Var, vx9 vx9Var, NotFoundClasses notFoundClasses, LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider, vg5 vg5Var, DeserializedDescriptorResolver deserializedDescriptorResolver, ed3 ed3Var, jd5 jd5Var) {
        y45.j(qq6Var, "module");
        y45.j(vx9Var, "storageManager");
        y45.j(notFoundClasses, "notFoundClasses");
        y45.j(lazyJavaPackageFragmentProvider, "lazyJavaPackageFragmentProvider");
        y45.j(vg5Var, "reflectKotlinClassFinder");
        y45.j(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        y45.j(ed3Var, "errorReporter");
        y45.j(jd5Var, "jvmMetadataVersion");
        return new f92(vx9Var, qq6Var, h92.a.a, new u65(vg5Var, deserializedDescriptorResolver), qe0.a(qq6Var, notFoundClasses, vx9Var, vg5Var, jd5Var), lazyJavaPackageFragmentProvider, notFoundClasses, ed3Var, qr5.a.a, zh1.a.a(), e.b.a(), new kbb(x71.e(c.a)));
    }

    public static final LazyJavaPackageFragmentProvider b(x65 x65Var, qq6 qq6Var, vx9 vx9Var, NotFoundClasses notFoundClasses, vg5 vg5Var, DeserializedDescriptorResolver deserializedDescriptorResolver, ed3 ed3Var, j85 j85Var, nq6 nq6Var, lv7 lv7Var) {
        y45.j(x65Var, "javaClassFinder");
        y45.j(qq6Var, "module");
        y45.j(vx9Var, "storageManager");
        y45.j(notFoundClasses, "notFoundClasses");
        y45.j(vg5Var, "reflectKotlinClassFinder");
        y45.j(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        y45.j(ed3Var, "errorReporter");
        y45.j(j85Var, "javaSourceElementFactory");
        y45.j(nq6Var, "singleModuleClassResolver");
        y45.j(lv7Var, "packagePartProvider");
        aj9 aj9Var = aj9.a;
        y45.i(aj9Var, "DO_NOTHING");
        d85 d85Var = d85.a;
        y45.i(d85Var, "EMPTY");
        b85.a aVar = b85.a.a;
        f19 f19Var = new f19(vx9Var, y71.k());
        t6a.a aVar2 = t6a.a.a;
        qr5.a aVar3 = qr5.a.a;
        ReflectionTypes reflectionTypes = new ReflectionTypes(qq6Var, notFoundClasses);
        JavaTypeEnhancementState.a aVar4 = JavaTypeEnhancementState.d;
        kd kdVar = new kd(aVar4.a());
        f85.a aVar5 = f85.a.a;
        return new LazyJavaPackageFragmentProvider(new e85(vx9Var, x65Var, vg5Var, deserializedDescriptorResolver, aj9Var, ed3Var, d85Var, aVar, f19Var, j85Var, nq6Var, lv7Var, aVar2, aVar3, qq6Var, reflectionTypes, kdVar, new SignatureEnhancement(new r85(aVar5)), z65.a.a, aVar5, e.b.a(), aVar4.a(), new a(), null, 8388608, null));
    }
}
