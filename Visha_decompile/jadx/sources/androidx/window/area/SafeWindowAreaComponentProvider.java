package androidx.window.area;

import androidx.window.SafeWindowExtensionsProvider;
import androidx.window.area.reflectionguard.WindowAreaComponentValidator;
import androidx.window.core.ExtensionsUtil;
import androidx.window.extensions.WindowExtensions;
import androidx.window.extensions.area.WindowAreaComponent;
import androidx.window.reflection.ReflectionUtils;
import androidx.window.reflection.WindowExtensionsConstants;
import defpackage.c74;
import defpackage.y45;
import java.lang.reflect.Method;
import kotlin.Metadata;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0001H\u0002R\u0018\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\bR\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Landroidx/window/area/SafeWindowAreaComponentProvider;", "", "loader", "Ljava/lang/ClassLoader;", "(Ljava/lang/ClassLoader;)V", "extensionWindowAreaPresentationClass", "Ljava/lang/Class;", "getExtensionWindowAreaPresentationClass", "()Ljava/lang/Class;", "extensionWindowAreaStatusClass", "getExtensionWindowAreaStatusClass", "windowAreaComponent", "Landroidx/window/extensions/area/WindowAreaComponent;", "getWindowAreaComponent", "()Landroidx/window/extensions/area/WindowAreaComponent;", "windowAreaComponentClass", "getWindowAreaComponentClass", "windowExtensions", "Landroidx/window/extensions/WindowExtensions;", "isValidExtensionWindowPresentation", "", "isWindowAreaProviderValid", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SafeWindowAreaComponentProvider {
    private final ClassLoader loader;
    private final WindowExtensions windowExtensions;

    public SafeWindowAreaComponentProvider(ClassLoader classLoader) {
        y45.j(classLoader, "loader");
        this.loader = classLoader;
        this.windowExtensions = new SafeWindowExtensionsProvider(classLoader).getWindowExtensions();
    }

    private final Class<?> getExtensionWindowAreaPresentationClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.EXTENSION_WINDOW_AREA_PRESENTATION_CLASS);
        y45.i(clsLoadClass, "loader.loadClass(\n      …ATION_CLASS\n            )");
        return clsLoadClass;
    }

    private final Class<?> getExtensionWindowAreaStatusClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.EXTENSION_WINDOW_AREA_STATUS_CLASS);
        y45.i(clsLoadClass, "loader.loadClass(WindowE…WINDOW_AREA_STATUS_CLASS)");
        return clsLoadClass;
    }

    public final Class<?> getWindowAreaComponentClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.WINDOW_AREA_COMPONENT_CLASS);
        y45.i(clsLoadClass, "loader.loadClass(WindowE…DOW_AREA_COMPONENT_CLASS)");
        return clsLoadClass;
    }

    private final boolean isValidExtensionWindowPresentation() {
        ExtensionsUtil extensionsUtil = ExtensionsUtil.INSTANCE;
        return extensionsUtil.getSafeVendorApiLevel() <= 2 || WindowAreaComponentValidator.INSTANCE.isExtensionWindowAreaPresentationValid$window_release(getExtensionWindowAreaPresentationClass(), extensionsUtil.getSafeVendorApiLevel());
    }

    private final boolean isWindowAreaProviderValid(final Object windowExtensions) {
        return ReflectionUtils.validateReflection$window_release("WindowExtensions#getWindowAreaComponent is not valid", new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Boolean invoke() throws NoSuchMethodException {
                Method method = windowExtensions.getClass().getMethod("getWindowAreaComponent", null);
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                y45.i(method, "getWindowAreaComponentMethod");
                return Boolean.valueOf(reflectionUtils.isPublic$window_release(method) && reflectionUtils.doesReturn$window_release(method, this.getWindowAreaComponentClass()));
            }
        });
    }

    public final WindowAreaComponent getWindowAreaComponent() {
        try {
            WindowExtensions windowExtensions = this.windowExtensions;
            if (windowExtensions == null || !isWindowAreaProviderValid(windowExtensions)) {
                return null;
            }
            WindowAreaComponentValidator windowAreaComponentValidator = WindowAreaComponentValidator.INSTANCE;
            Class<?> windowAreaComponentClass = getWindowAreaComponentClass();
            ExtensionsUtil extensionsUtil = ExtensionsUtil.INSTANCE;
            if (windowAreaComponentValidator.isWindowAreaComponentValid$window_release(windowAreaComponentClass, extensionsUtil.getSafeVendorApiLevel()) && windowAreaComponentValidator.isExtensionWindowAreaStatusValid$window_release(getExtensionWindowAreaStatusClass(), extensionsUtil.getSafeVendorApiLevel()) && isValidExtensionWindowPresentation()) {
                return this.windowExtensions.getWindowAreaComponent();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
