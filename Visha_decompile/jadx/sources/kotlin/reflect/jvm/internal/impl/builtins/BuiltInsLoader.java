package kotlin.reflect.jvm.internal.impl.builtins;

import defpackage.c74;
import defpackage.fv7;
import defpackage.i81;
import defpackage.n8;
import defpackage.qq6;
import defpackage.v18;
import defpackage.vx9;
import defpackage.y45;
import defpackage.yi5;
import java.util.ServiceLoader;
import kotlin.LazyThreadSafetyMode;

public interface BuiltInsLoader {
    public static final Companion a = Companion.a;

    public static final class Companion {
        public static final Companion a = new Companion();
        public static final yi5 b = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            @Override
            public final BuiltInsLoader invoke() {
                ServiceLoader serviceLoaderLoad = ServiceLoader.load(BuiltInsLoader.class, BuiltInsLoader.class.getClassLoader());
                y45.i(serviceLoaderLoad, "implementations");
                BuiltInsLoader builtInsLoader = (BuiltInsLoader) i81.p0(serviceLoaderLoad);
                if (builtInsLoader != null) {
                    return builtInsLoader;
                }
                throw new IllegalStateException("No BuiltInsLoader implementation was found. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager");
            }
        });

        public final BuiltInsLoader a() {
            return (BuiltInsLoader) b.getValue();
        }
    }

    fv7 a(vx9 vx9Var, qq6 qq6Var, Iterable iterable, v18 v18Var, n8 n8Var, boolean z);
}
