package androidx.window.layout.adapter.extensions;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.core.util.Consumer;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExtensionsUtil;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.adapter.WindowBackend;
import defpackage.y45;
import java.util.concurrent.Executor;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u0097\u0001¢\u0006\u0004\b\u0006\u0010\u0007J.\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0096\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001e\u0010\u0012\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0096\u0001¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0014¨\u0006\u0016"}, d2 = {"Landroidx/window/layout/adapter/extensions/ExtensionWindowBackend;", "Landroidx/window/layout/adapter/WindowBackend;", "backend", MethodDecl.initName, "(Landroidx/window/layout/adapter/WindowBackend;)V", "", "hasRegisteredListeners", "()Z", "Landroid/content/Context;", "context", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/core/util/Consumer;", "Landroidx/window/layout/WindowLayoutInfo;", "callback", "Lzfb;", "registerLayoutChangeCallback", "(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V", "unregisterLayoutChangeCallback", "(Landroidx/core/util/Consumer;)V", "Landroidx/window/layout/adapter/WindowBackend;", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ExtensionWindowBackend implements WindowBackend {

    public static final Companion INSTANCE = new Companion(null);
    private final WindowBackend backend;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Landroidx/window/layout/adapter/extensions/ExtensionWindowBackend$Companion;", "", "()V", "newInstance", "Landroidx/window/layout/adapter/WindowBackend;", "component", "Landroidx/window/extensions/layout/WindowLayoutComponent;", "adapter", "Landroidx/window/core/ConsumerAdapter;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final WindowBackend newInstance(WindowLayoutComponent component, ConsumerAdapter adapter) {
            y45.j(component, "component");
            y45.j(adapter, "adapter");
            int safeVendorApiLevel = ExtensionsUtil.INSTANCE.getSafeVendorApiLevel();
            if (safeVendorApiLevel >= 2) {
                return new ExtensionWindowBackendApi2(component);
            }
            return safeVendorApiLevel == 1 ? new ExtensionWindowBackendApi1(component, adapter) : new ExtensionWindowBackendApi0();
        }

        private Companion() {
        }
    }

    public ExtensionWindowBackend(WindowBackend windowBackend) {
        y45.j(windowBackend, "backend");
        this.backend = windowBackend;
    }

    @Override
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean hasRegisteredListeners() {
        return this.backend.hasRegisteredListeners();
    }

    @Override
    public void registerLayoutChangeCallback(Context context, Executor executor, Consumer<WindowLayoutInfo> callback) {
        y45.j(context, "context");
        y45.j(executor, "executor");
        y45.j(callback, "callback");
        this.backend.registerLayoutChangeCallback(context, executor, callback);
    }

    @Override
    public void unregisterLayoutChangeCallback(Consumer<WindowLayoutInfo> callback) {
        y45.j(callback, "callback");
        this.backend.unregisterLayoutChangeCallback(callback);
    }
}
