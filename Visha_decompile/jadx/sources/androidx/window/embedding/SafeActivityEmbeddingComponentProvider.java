package androidx.window.embedding;

import android.app.Activity;
import androidx.annotation.VisibleForTesting;
import androidx.window.SafeWindowExtensionsProvider;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExtensionsUtil;
import androidx.window.extensions.WindowExtensions;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.extensions.core.util.function.Function;
import androidx.window.extensions.embedding.ActivityEmbeddingComponent;
import androidx.window.reflection.ReflectionUtils;
import androidx.window.reflection.WindowExtensionsConstants;
import defpackage.c74;
import defpackage.y45;
import java.lang.reflect.Method;
import java.util.Set;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0013\u001a\u00020\u0014H\u0002J\r\u0010\u0015\u001a\u00020\u0014H\u0001¢\u0006\u0002\b\u0016J\r\u0010\u0017\u001a\u00020\u0014H\u0001¢\u0006\u0002\b\u0018J\r\u0010\u0019\u001a\u00020\u0014H\u0001¢\u0006\u0002\b\u001aJ\b\u0010\u001b\u001a\u00020\u0014H\u0002J\b\u0010\u001c\u001a\u00020\u0014H\u0002J\b\u0010\u001d\u001a\u00020\u0014H\u0002J\b\u0010\u001e\u001a\u00020\u0014H\u0002J\b\u0010\u001f\u001a\u00020\u0014H\u0002J\b\u0010 \u001a\u00020\u0014H\u0002J\b\u0010!\u001a\u00020\u0014H\u0002R\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;", "", "loader", "Ljava/lang/ClassLoader;", "consumerAdapter", "Landroidx/window/core/ConsumerAdapter;", "windowExtensions", "Landroidx/window/extensions/WindowExtensions;", "(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;Landroidx/window/extensions/WindowExtensions;)V", "activityEmbeddingComponent", "Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;", "getActivityEmbeddingComponent", "()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;", "activityEmbeddingComponentClass", "Ljava/lang/Class;", "getActivityEmbeddingComponentClass", "()Ljava/lang/Class;", "safeWindowExtensionsProvider", "Landroidx/window/SafeWindowExtensionsProvider;", "canUseActivityEmbeddingComponent", "", "hasValidVendorApiLevel1", "hasValidVendorApiLevel1$window_release", "hasValidVendorApiLevel2", "hasValidVendorApiLevel2$window_release", "isActivityEmbeddingComponentAccessible", "isActivityEmbeddingComponentAccessible$window_release", "isActivityEmbeddingComponentValid", "isMethodClearSplitInfoCallbackValid", "isMethodIsActivityEmbeddedValid", "isMethodSetEmbeddingRulesValid", "isMethodSetSplitInfoCallbackJavaConsumerValid", "isMethodSetSplitInfoCallbackWindowConsumerValid", "isMethodSplitAttributesCalculatorValid", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SafeActivityEmbeddingComponentProvider {
    private final ConsumerAdapter consumerAdapter;
    private final ClassLoader loader;
    private final SafeWindowExtensionsProvider safeWindowExtensionsProvider;
    private final WindowExtensions windowExtensions;

    public SafeActivityEmbeddingComponentProvider(ClassLoader classLoader, ConsumerAdapter consumerAdapter, WindowExtensions windowExtensions) {
        y45.j(classLoader, "loader");
        y45.j(consumerAdapter, "consumerAdapter");
        y45.j(windowExtensions, "windowExtensions");
        this.loader = classLoader;
        this.consumerAdapter = consumerAdapter;
        this.windowExtensions = windowExtensions;
        this.safeWindowExtensionsProvider = new SafeWindowExtensionsProvider(classLoader);
    }

    private final boolean canUseActivityEmbeddingComponent() {
        if (!isActivityEmbeddingComponentAccessible$window_release()) {
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

    public final Class<?> getActivityEmbeddingComponentClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.ACTIVITY_EMBEDDING_COMPONENT_CLASS);
        y45.i(clsLoadClass, "loader.loadClass(ACTIVIT…MBEDDING_COMPONENT_CLASS)");
        return clsLoadClass;
    }

    private final boolean isActivityEmbeddingComponentValid() {
        return ReflectionUtils.validateReflection$window_release("WindowExtensions#getActivityEmbeddingComponent is not valid", new c74() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() throws NoSuchMethodException, ClassNotFoundException {
                Method method = SafeActivityEmbeddingComponentProvider.this.safeWindowExtensionsProvider.getWindowExtensionsClass$window_release().getMethod("getActivityEmbeddingComponent", null);
                Class<?> activityEmbeddingComponentClass = SafeActivityEmbeddingComponentProvider.this.getActivityEmbeddingComponentClass();
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                y45.i(method, "getActivityEmbeddingComponentMethod");
                return Boolean.valueOf(reflectionUtils.isPublic$window_release(method) && reflectionUtils.doesReturn$window_release(method, activityEmbeddingComponentClass));
            }
        });
    }

    private final boolean isMethodClearSplitInfoCallbackValid() {
        return ReflectionUtils.validateReflection$window_release("ActivityEmbeddingComponent#clearSplitInfoCallback is not valid", new c74() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() throws NoSuchMethodException {
                Method method = SafeActivityEmbeddingComponentProvider.this.getActivityEmbeddingComponentClass().getMethod("clearSplitInfoCallback", null);
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                y45.i(method, "clearSplitInfoCallbackMethod");
                return Boolean.valueOf(reflectionUtils.isPublic$window_release(method));
            }
        });
    }

    private final boolean isMethodIsActivityEmbeddedValid() {
        return ReflectionUtils.validateReflection$window_release("ActivityEmbeddingComponent#isActivityEmbedded is not valid", new c74() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() throws NoSuchMethodException {
                Method method = SafeActivityEmbeddingComponentProvider.this.getActivityEmbeddingComponentClass().getMethod("isActivityEmbedded", Activity.class);
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                y45.i(method, "isActivityEmbeddedMethod");
                return Boolean.valueOf(reflectionUtils.isPublic$window_release(method) && reflectionUtils.doesReturn$window_release(method, Boolean.TYPE));
            }
        });
    }

    private final boolean isMethodSetEmbeddingRulesValid() {
        return ReflectionUtils.validateReflection$window_release("ActivityEmbeddingComponent#setEmbeddingRules is not valid", new c74() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() throws NoSuchMethodException {
                Method method = SafeActivityEmbeddingComponentProvider.this.getActivityEmbeddingComponentClass().getMethod("setEmbeddingRules", Set.class);
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                y45.i(method, "setEmbeddingRulesMethod");
                return Boolean.valueOf(reflectionUtils.isPublic$window_release(method));
            }
        });
    }

    private final boolean isMethodSetSplitInfoCallbackJavaConsumerValid() {
        return ReflectionUtils.validateReflection$window_release("ActivityEmbeddingComponent#setSplitInfoCallback is not valid", new c74() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() throws NoSuchMethodException {
                Class<?> clsConsumerClassOrNull$window_release = SafeActivityEmbeddingComponentProvider.this.consumerAdapter.consumerClassOrNull$window_release();
                if (clsConsumerClassOrNull$window_release == null) {
                    return Boolean.FALSE;
                }
                Method method = SafeActivityEmbeddingComponentProvider.this.getActivityEmbeddingComponentClass().getMethod("setSplitInfoCallback", clsConsumerClassOrNull$window_release);
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                y45.i(method, "setSplitInfoCallbackMethod");
                return Boolean.valueOf(reflectionUtils.isPublic$window_release(method));
            }
        });
    }

    private final boolean isMethodSetSplitInfoCallbackWindowConsumerValid() {
        return ReflectionUtils.validateReflection$window_release("ActivityEmbeddingComponent#setSplitInfoCallback is not valid", new c74() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() throws NoSuchMethodException {
                Method method = SafeActivityEmbeddingComponentProvider.this.getActivityEmbeddingComponentClass().getMethod("setSplitInfoCallback", Consumer.class);
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                y45.i(method, "setSplitInfoCallbackMethod");
                return Boolean.valueOf(reflectionUtils.isPublic$window_release(method));
            }
        });
    }

    private final boolean isMethodSplitAttributesCalculatorValid() {
        return ReflectionUtils.validateReflection$window_release("ActivityEmbeddingComponent#setSplitAttributesCalculator is not valid", new c74() {
            {
                super(0);
            }

            /* JADX WARN: Code duplicated, block: B:7:0x003b  */
            @Override
            public final Boolean invoke() throws NoSuchMethodException {
                boolean z;
                Method method = SafeActivityEmbeddingComponentProvider.this.getActivityEmbeddingComponentClass().getMethod("setSplitAttributesCalculator", Function.class);
                Method method2 = SafeActivityEmbeddingComponentProvider.this.getActivityEmbeddingComponentClass().getMethod("clearSplitAttributesCalculator", null);
                ReflectionUtils reflectionUtils = ReflectionUtils.INSTANCE;
                y45.i(method, "setSplitAttributesCalculatorMethod");
                if (reflectionUtils.isPublic$window_release(method)) {
                    y45.i(method2, "clearSplitAttributesCalculatorMethod");
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

    public final ActivityEmbeddingComponent getActivityEmbeddingComponent() {
        if (!canUseActivityEmbeddingComponent()) {
            return null;
        }
        try {
            return this.windowExtensions.getActivityEmbeddingComponent();
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }

    @VisibleForTesting
    public final boolean hasValidVendorApiLevel1$window_release() {
        return isMethodSetEmbeddingRulesValid() && isMethodIsActivityEmbeddedValid() && isMethodSetSplitInfoCallbackJavaConsumerValid();
    }

    @VisibleForTesting
    public final boolean hasValidVendorApiLevel2$window_release() {
        return hasValidVendorApiLevel1$window_release() && isMethodSetSplitInfoCallbackWindowConsumerValid() && isMethodClearSplitInfoCallbackValid() && isMethodSplitAttributesCalculatorValid();
    }

    @VisibleForTesting
    public final boolean isActivityEmbeddingComponentAccessible$window_release() {
        return this.safeWindowExtensionsProvider.isWindowExtensionsValid$window_release() && isActivityEmbeddingComponentValid();
    }
}
