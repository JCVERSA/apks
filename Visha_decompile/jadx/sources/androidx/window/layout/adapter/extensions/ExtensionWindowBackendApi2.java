package androidx.window.layout.adapter.extensions;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Consumer;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.adapter.WindowBackend;
import defpackage.y45;
import defpackage.zfb;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J-\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0010\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0017¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R \u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00198\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR&\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0004\u0012\u00020\u00060\u00198\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001c¨\u0006\u001e"}, d2 = {"Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi2;", "Landroidx/window/layout/adapter/WindowBackend;", "Landroidx/window/extensions/layout/WindowLayoutComponent;", "component", MethodDecl.initName, "(Landroidx/window/extensions/layout/WindowLayoutComponent;)V", "Landroid/content/Context;", "context", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/core/util/Consumer;", "Landroidx/window/layout/WindowLayoutInfo;", "callback", "Lzfb;", "registerLayoutChangeCallback", "(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V", "unregisterLayoutChangeCallback", "(Landroidx/core/util/Consumer;)V", "", "hasRegisteredListeners", "()Z", "Landroidx/window/extensions/layout/WindowLayoutComponent;", "Ljava/util/concurrent/locks/ReentrantLock;", "extensionWindowBackendLock", "Ljava/util/concurrent/locks/ReentrantLock;", "", "Landroidx/window/layout/adapter/extensions/MulticastConsumer;", "contextToListeners", "Ljava/util/Map;", "listenerToContext", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ExtensionWindowBackendApi2 implements WindowBackend {
    private final WindowLayoutComponent component;

    @GuardedBy("lock")
    private final Map<Context, MulticastConsumer> contextToListeners;
    private final ReentrantLock extensionWindowBackendLock;

    @GuardedBy("lock")
    private final Map<Consumer<WindowLayoutInfo>, Context> listenerToContext;

    public ExtensionWindowBackendApi2(WindowLayoutComponent windowLayoutComponent) {
        y45.j(windowLayoutComponent, "component");
        this.component = windowLayoutComponent;
        this.extensionWindowBackendLock = new ReentrantLock();
        this.contextToListeners = new LinkedHashMap();
        this.listenerToContext = new LinkedHashMap();
    }

    @Override
    @VisibleForTesting
    public boolean hasRegisteredListeners() {
        return (this.contextToListeners.isEmpty() && this.listenerToContext.isEmpty()) ? false : true;
    }

    @Override
    public void registerLayoutChangeCallback(Context context, Executor executor, Consumer<WindowLayoutInfo> callback) {
        zfb zfbVar;
        y45.j(context, "context");
        y45.j(executor, "executor");
        y45.j(callback, "callback");
        ReentrantLock reentrantLock = this.extensionWindowBackendLock;
        reentrantLock.lock();
        try {
            MulticastConsumer multicastConsumer = this.contextToListeners.get(context);
            if (multicastConsumer != null) {
                multicastConsumer.addListener(callback);
                this.listenerToContext.put(callback, context);
                zfbVar = zfb.a;
            } else {
                zfbVar = null;
            }
            if (zfbVar == null) {
                MulticastConsumer multicastConsumer2 = new MulticastConsumer(context);
                this.contextToListeners.put(context, multicastConsumer2);
                this.listenerToContext.put(callback, context);
                multicastConsumer2.addListener(callback);
                this.component.addWindowLayoutInfoListener(context, multicastConsumer2);
            }
            zfb zfbVar2 = zfb.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    public void unregisterLayoutChangeCallback(Consumer<WindowLayoutInfo> callback) {
        y45.j(callback, "callback");
        ReentrantLock reentrantLock = this.extensionWindowBackendLock;
        reentrantLock.lock();
        try {
            Context context = this.listenerToContext.get(callback);
            if (context == null) {
                return;
            }
            MulticastConsumer multicastConsumer = this.contextToListeners.get(context);
            if (multicastConsumer == null) {
                return;
            }
            multicastConsumer.removeListener(callback);
            this.listenerToContext.remove(callback);
            if (multicastConsumer.isEmpty()) {
                this.contextToListeners.remove(context);
                this.component.removeWindowLayoutInfoListener(multicastConsumer);
            }
            zfb zfbVar = zfb.a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
