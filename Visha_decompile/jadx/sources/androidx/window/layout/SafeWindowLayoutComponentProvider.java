package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import androidx.annotation.VisibleForTesting;
import androidx.window.SafeWindowExtensionsProvider;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExtensionsUtil;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.reflection.ReflectionUtils;
import androidx.window.reflection.WindowExtensionsConstants;
import defpackage.c74;
import defpackage.xq8;
import defpackage.y45;
import java.lang.reflect.Method;
import kotlin.Metadata;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\r\u0010\u0015\u001a\u00020\u0014H\u0001¢\u0006\u0002\b\u0016J\r\u0010\u0017\u001a\u00020\u0014H\u0001¢\u0006\u0002\b\u0018J\b\u0010\u0019\u001a\u00020\u0014H\u0002J\b\u0010\u001a\u001a\u00020\u0014H\u0002J\b\u0010\u001b\u001a\u00020\u0014H\u0002J\r\u0010\u001c\u001a\u00020\u0014H\u0001¢\u0006\u0002\b\u001dJ\b\u0010\u001e\u001a\u00020\u0014H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\n¨\u0006\u001f"}, d2 = {"Landroidx/window/layout/SafeWindowLayoutComponentProvider;", "", "loader", "Ljava/lang/ClassLoader;", "consumerAdapter", "Landroidx/window/core/ConsumerAdapter;", "(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;)V", "foldingFeatureClass", "Ljava/lang/Class;", "getFoldingFeatureClass", "()Ljava/lang/Class;", "safeWindowExtensionsProvider", "Landroidx/window/SafeWindowExtensionsProvider;", "windowLayoutComponent", "Landroidx/window/extensions/layout/WindowLayoutComponent;", "getWindowLayoutComponent", "()Landroidx/window/extensions/layout/WindowLayoutComponent;", "windowLayoutComponentClass", "getWindowLayoutComponentClass", "canUseWindowLayoutComponent", "", "hasValidVendorApiLevel1", "hasValidVendorApiLevel1$window_release", "hasValidVendorApiLevel2", "hasValidVendorApiLevel2$window_release", "isFoldingFeatureValid", "isMethodWindowLayoutInfoListenerJavaConsumerValid", "isMethodWindowLayoutInfoListenerWindowConsumerValid", "isWindowLayoutComponentAccessible", "isWindowLayoutComponentAccessible$window_release", "isWindowLayoutProviderValid", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SafeWindowLayoutComponentProvider {
    private final ConsumerAdapter consumerAdapter;
    private final ClassLoader loader;
    private final SafeWindowExtensionsProvider safeWindowExtensionsProvider;

    public SafeWindowLayoutComponentProvider(ClassLoader classLoader, ConsumerAdapter consumerAdapter) {
        y45.j(classLoader, "loader");
        y45.j(consumerAdapter, "consumerAdapter");
        this.loader = classLoader;
        this.consumerAdapter = consumerAdapter;
        this.safeWindowExtensionsProvider = new SafeWindowExtensionsProvider(classLoader);
    }

    private final boolean canUseWindowLayoutComponent() {
        if (!isWindowLayoutComponentAccessible$window_release()) {
            return false;
        }
        int safeVendorApiLevel = ExtensionsUtil.INSTANCE.getSafeVendorApiLevel();
        if (safeVendorApiLevel == 1) {
            return hasValidVendorApiLevel1$window_release();
        }
        if (2 > safeVendorApiLevel || safeVendorApiLevel > Integer.MAX_VALUE) {
            return false;
        }
        return hasValidVendorApiLevel2$window_release();
    }

    public final Class<?> getFoldingFeatureClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.FOLDING_FEATURE_CLASS);
        y45.i(clsLoadClass, "loader.loadClass(FOLDING_FEATURE_CLASS)");
        return clsLoadClass;
    }

    public final Class<?> getWindowLayoutComponentClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.WINDOW_LAYOUT_COMPONENT_CLASS);
        y45.i(clsLoadClass, "loader.loadClass(WINDOW_LAYOUT_COMPONENT_CLASS)");
        return clsLoadClass;
    }

    private final boolean isFoldingFeatureValid() {
        return ReflectionUtils.validateReflection$window_release("FoldingFeature class is not valid", new c74() {
            {
                super(0);
            }

            /* JADX WARN: Code duplicated, block: B:15:0x0060  */
            @Override
            public final Boolean invoke() throws NoSuchMethodException, ClassNotFoundException {
                boolean z;
                Class foldingFeatureClass = SafeWindowLayoutComponentProvider.this.getFoldingFeatureClass();
                Method method = foldingFeatureClass.getMethod("getBounds", null);
                Method method2 = foldingFeatureClass.getMethod("getType", null);
                Method method3 = foldingFeatureClass.getMethod("getState", null);
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                y45.i(method, "getBoundsMethod");
                if (reflectionUtils.doesReturn$window_release(method, xq8.b(Rect.class)) && reflectionUtils.isPublic$window_release(method)) {
                    y45.i(method2, "getTypeMethod");
                    Class cls = Integer.TYPE;
                    if (reflectionUtils.doesReturn$window_release(method2, xq8.b(cls)) && reflectionUtils.isPublic$window_release(method2)) {
                        y45.i(method3, "getStateMethod");
                        if (reflectionUtils.doesReturn$window_release(method3, xq8.b(cls)) && reflectionUtils.isPublic$window_release(method3)) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        });
    }

    private final boolean isMethodWindowLayoutInfoListenerJavaConsumerValid() {
        return ReflectionUtils.validateReflection$window_release("WindowLayoutComponent#addWindowLayoutInfoListener(" + Activity.class.getName() + ", java.util.function.Consumer) is not valid", new c74() {
            {
                super(0);
            }

            /* JADX WARN: Code duplicated, block: B:11:0x0045  */
            @Override
            public final Boolean invoke() throws NoSuchMethodException, ClassNotFoundException {
                boolean z;
                Class<?> clsConsumerClassOrNull$window_release = SafeWindowLayoutComponentProvider.this.consumerAdapter.consumerClassOrNull$window_release();
                if (clsConsumerClassOrNull$window_release == null) {
                    return Boolean.FALSE;
                }
                Class windowLayoutComponentClass = SafeWindowLayoutComponentProvider.this.getWindowLayoutComponentClass();
                Method method = windowLayoutComponentClass.getMethod("addWindowLayoutInfoListener", Activity.class, clsConsumerClassOrNull$window_release);
                Method method2 = windowLayoutComponentClass.getMethod("removeWindowLayoutInfoListener", clsConsumerClassOrNull$window_release);
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                y45.i(method, "addListenerMethod");
                if (reflectionUtils.isPublic$window_release(method)) {
                    y45.i(method2, "removeListenerMethod");
                    if (reflectionUtils.isPublic$window_release(method2)) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        });
    }

    private final boolean isMethodWindowLayoutInfoListenerWindowConsumerValid() {
        return ReflectionUtils.validateReflection$window_release("WindowLayoutComponent#addWindowLayoutInfoListener(" + Context.class.getName() + ", androidx.window.extensions.core.util.function.Consumer) is not valid", new c74() {
            {
                super(0);
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0038  */
            @Override
            public final Boolean invoke() throws NoSuchMethodException, ClassNotFoundException {
                boolean z;
                Class windowLayoutComponentClass = SafeWindowLayoutComponentProvider.this.getWindowLayoutComponentClass();
                Method method = windowLayoutComponentClass.getMethod("addWindowLayoutInfoListener", Context.class, Consumer.class);
                Method method2 = windowLayoutComponentClass.getMethod("removeWindowLayoutInfoListener", Consumer.class);
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                y45.i(method, "addListenerMethod");
                if (reflectionUtils.isPublic$window_release(method)) {
                    y45.i(method2, "removeListenerMethod");
                    if (reflectionUtils.isPublic$window_release(method2)) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        });
    }

    private final boolean isWindowLayoutProviderValid() {
        return ReflectionUtils.validateReflection$window_release("WindowExtensions#getWindowLayoutComponent is not valid", new c74() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() throws NoSuchMethodException, ClassNotFoundException {
                Method method = SafeWindowLayoutComponentProvider.this.safeWindowExtensionsProvider.getWindowExtensionsClass$window_release().getMethod("getWindowLayoutComponent", null);
                Class<?> windowLayoutComponentClass = SafeWindowLayoutComponentProvider.this.getWindowLayoutComponentClass();
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                y45.i(method, "getWindowLayoutComponentMethod");
                return Boolean.valueOf(reflectionUtils.isPublic$window_release(method) && reflectionUtils.doesReturn$window_release(method, windowLayoutComponentClass));
            }
        });
    }

    public final WindowLayoutComponent getWindowLayoutComponent() {
        if (!canUseWindowLayoutComponent()) {
            return null;
        }
        try {
            return WindowExtensionsProvider.getWindowExtensions().getWindowLayoutComponent();
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }

    @VisibleForTesting
    public final boolean hasValidVendorApiLevel1$window_release() {
        return isMethodWindowLayoutInfoListenerJavaConsumerValid();
    }

    @VisibleForTesting
    public final boolean hasValidVendorApiLevel2$window_release() {
        return hasValidVendorApiLevel1$window_release() && isMethodWindowLayoutInfoListenerWindowConsumerValid();
    }

    @VisibleForTesting
    public final boolean isWindowLayoutComponentAccessible$window_release() {
        return this.safeWindowExtensionsProvider.isWindowExtensionsValid$window_release() && isWindowLayoutProviderValid() && isFoldingFeatureValid();
    }
}
