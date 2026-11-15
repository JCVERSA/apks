package androidx.window.layout;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.layout.WindowLayoutComponent;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

public final class SafeWindowLayoutComponentProvider {

    public static final SafeWindowLayoutComponentProvider f14977a = new SafeWindowLayoutComponentProvider();

    private static final Lazy f14978b = LazyKt.b(new Function0<WindowLayoutComponent>() {
        @Override
        public final WindowLayoutComponent invoke() {
            ClassLoader classLoader = SafeWindowLayoutComponentProvider.class.getClassLoader();
            if (classLoader == null || !SafeWindowLayoutComponentProvider.f14977a.i(classLoader)) {
                return null;
            }
            try {
                return WindowExtensionsProvider.getWindowExtensions().getWindowLayoutComponent();
            } catch (UnsupportedOperationException unused) {
                return null;
            }
        }
    });

    private SafeWindowLayoutComponentProvider() {
    }

    public final boolean i(ClassLoader classLoader) {
        return Build.VERSION.SDK_INT >= 24 && r(classLoader) && p(classLoader) && q(classLoader) && n(classLoader);
    }

    public final boolean j(Method method, Class cls) {
        return method.getReturnType().equals(cls);
    }

    public final boolean k(Method method, KClass kClass) {
        return j(method, JvmClassMappingKt.a(kClass));
    }

    public final Class l(ClassLoader classLoader) {
        return classLoader.loadClass("androidx.window.extensions.layout.FoldingFeature");
    }

    private final boolean n(final ClassLoader classLoader) {
        return s(new Function0<Boolean>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Code duplicated, block: B:15:0x0060  */
            @Override
            public final Boolean invoke() throws NoSuchMethodException {
                boolean z10;
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.f14977a;
                Class clsL = safeWindowLayoutComponentProvider.l(classLoader);
                Method getBoundsMethod = clsL.getMethod("getBounds", null);
                Method getTypeMethod = clsL.getMethod("getType", null);
                Method getStateMethod = clsL.getMethod("getState", null);
                Intrinsics.g(getBoundsMethod, "getBoundsMethod");
                if (safeWindowLayoutComponentProvider.k(getBoundsMethod, Reflection.b(Rect.class)) && safeWindowLayoutComponentProvider.o(getBoundsMethod)) {
                    Intrinsics.g(getTypeMethod, "getTypeMethod");
                    Class cls = Integer.TYPE;
                    if (safeWindowLayoutComponentProvider.k(getTypeMethod, Reflection.b(cls)) && safeWindowLayoutComponentProvider.o(getTypeMethod)) {
                        Intrinsics.g(getStateMethod, "getStateMethod");
                        if (safeWindowLayoutComponentProvider.k(getStateMethod, Reflection.b(cls)) && safeWindowLayoutComponentProvider.o(getStateMethod)) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    } else {
                        z10 = false;
                    }
                } else {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
        });
    }

    public final boolean o(Method method) {
        return Modifier.isPublic(method.getModifiers());
    }

    private final boolean p(final ClassLoader classLoader) {
        return s(new Function0<Boolean>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Code duplicated, block: B:7:0x002d  */
            @Override
            public final Boolean invoke() throws NoSuchMethodException {
                boolean z10;
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.f14977a;
                Method getWindowLayoutComponentMethod = safeWindowLayoutComponentProvider.t(classLoader).getMethod("getWindowLayoutComponent", null);
                Class windowLayoutComponentClass = safeWindowLayoutComponentProvider.v(classLoader);
                Intrinsics.g(getWindowLayoutComponentMethod, "getWindowLayoutComponentMethod");
                if (safeWindowLayoutComponentProvider.o(getWindowLayoutComponentMethod)) {
                    Intrinsics.g(windowLayoutComponentClass, "windowLayoutComponentClass");
                    if (safeWindowLayoutComponentProvider.j(getWindowLayoutComponentMethod, windowLayoutComponentClass)) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
        });
    }

    private final boolean q(final ClassLoader classLoader) {
        return s(new Function0<Boolean>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Boolean invoke() throws NoSuchMethodException {
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.f14977a;
                Class clsV = safeWindowLayoutComponentProvider.v(classLoader);
                boolean z10 = false;
                Method addListenerMethod = clsV.getMethod("addWindowLayoutInfoListener", Activity.class, s.a());
                Method removeListenerMethod = clsV.getMethod("removeWindowLayoutInfoListener", s.a());
                Intrinsics.g(addListenerMethod, "addListenerMethod");
                if (safeWindowLayoutComponentProvider.o(addListenerMethod)) {
                    Intrinsics.g(removeListenerMethod, "removeListenerMethod");
                    if (safeWindowLayoutComponentProvider.o(removeListenerMethod)) {
                        z10 = true;
                    }
                }
                return Boolean.valueOf(z10);
            }
        });
    }

    private final boolean r(final ClassLoader classLoader) {
        return s(new Function0<Boolean>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Boolean invoke() throws NoSuchMethodException {
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.f14977a;
                Method getWindowExtensionsMethod = safeWindowLayoutComponentProvider.u(classLoader).getDeclaredMethod("getWindowExtensions", null);
                Class windowExtensionsClass = safeWindowLayoutComponentProvider.t(classLoader);
                Intrinsics.g(getWindowExtensionsMethod, "getWindowExtensionsMethod");
                Intrinsics.g(windowExtensionsClass, "windowExtensionsClass");
                return Boolean.valueOf(safeWindowLayoutComponentProvider.j(getWindowExtensionsMethod, windowExtensionsClass) && safeWindowLayoutComponentProvider.o(getWindowExtensionsMethod));
            }
        });
    }

    private final boolean s(Function0 function0) {
        try {
            return ((Boolean) function0.invoke()).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return false;
        }
    }

    public final Class t(ClassLoader classLoader) {
        return classLoader.loadClass("androidx.window.extensions.WindowExtensions");
    }

    public final Class u(ClassLoader classLoader) {
        return classLoader.loadClass("androidx.window.extensions.WindowExtensionsProvider");
    }

    public final Class v(ClassLoader classLoader) {
        return classLoader.loadClass("androidx.window.extensions.layout.WindowLayoutComponent");
    }

    public final WindowLayoutComponent m() {
        return (WindowLayoutComponent) f14978b.getValue();
    }
}
