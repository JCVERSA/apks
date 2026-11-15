package androidx.window.layout.adapter.extensions;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Consumer;
import androidx.window.core.ConsumerAdapter;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.adapter.WindowBackend;
import defpackage.e74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0012\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0017¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR \u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u001d0\u001c8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR&\u0010 \u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0004\u0012\u00020\b0\u001c8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b \u0010\u001fR \u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020!0\u001c8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\"\u0010\u001f¨\u0006#"}, d2 = {"Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;", "Landroidx/window/layout/adapter/WindowBackend;", "Landroidx/window/extensions/layout/WindowLayoutComponent;", "component", "Landroidx/window/core/ConsumerAdapter;", "consumerAdapter", MethodDecl.initName, "(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V", "Landroid/content/Context;", "context", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/core/util/Consumer;", "Landroidx/window/layout/WindowLayoutInfo;", "callback", "Lzfb;", "registerLayoutChangeCallback", "(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V", "unregisterLayoutChangeCallback", "(Landroidx/core/util/Consumer;)V", "", "hasRegisteredListeners", "()Z", "Landroidx/window/extensions/layout/WindowLayoutComponent;", "Landroidx/window/core/ConsumerAdapter;", "Ljava/util/concurrent/locks/ReentrantLock;", "extensionWindowBackendLock", "Ljava/util/concurrent/locks/ReentrantLock;", "", "Landroidx/window/layout/adapter/extensions/MulticastConsumer;", "contextToListeners", "Ljava/util/Map;", "listenerToContext", "Landroidx/window/core/ConsumerAdapter$Subscription;", "consumerToToken", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ExtensionWindowBackendApi1 implements WindowBackend {
    private final WindowLayoutComponent component;
    private final ConsumerAdapter consumerAdapter;

    @GuardedBy("lock")
    private final Map<MulticastConsumer, ConsumerAdapter.Subscription> consumerToToken;

    @GuardedBy("lock")
    private final Map<Context, MulticastConsumer> contextToListeners;
    private final ReentrantLock extensionWindowBackendLock;

    @GuardedBy("lock")
    private final Map<Consumer<WindowLayoutInfo>, Context> listenerToContext;

    public ExtensionWindowBackendApi1(WindowLayoutComponent windowLayoutComponent, ConsumerAdapter consumerAdapter) {
        y45.j(windowLayoutComponent, "component");
        y45.j(consumerAdapter, "consumerAdapter");
        this.component = windowLayoutComponent;
        this.consumerAdapter = consumerAdapter;
        this.extensionWindowBackendLock = new ReentrantLock();
        this.contextToListeners = new LinkedHashMap();
        this.listenerToContext = new LinkedHashMap();
        this.consumerToToken = new LinkedHashMap();
    }

    @Override
    @VisibleForTesting
    public boolean hasRegisteredListeners() {
        return (this.contextToListeners.isEmpty() && this.listenerToContext.isEmpty() && this.consumerToToken.isEmpty()) ? false : true;
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
                if (!(context instanceof Activity)) {
                    multicastConsumer2.accept(new androidx.window.extensions.layout.WindowLayoutInfo(y71.k()));
                    return;
                } else {
                    this.consumerToToken.put(multicastConsumer2, this.consumerAdapter.createSubscription((Object) this.component, xq8.b(androidx.window.extensions.layout.WindowLayoutInfo.class), "addWindowLayoutInfoListener", "removeWindowLayoutInfoListener", (Activity) context, (e74) new ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1(multicastConsumer2)));
                }
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
                ConsumerAdapter.Subscription subscriptionRemove = this.consumerToToken.remove(multicastConsumer);
                if (subscriptionRemove != null) {
                    subscriptionRemove.dispose();
                }
            }
            zfb zfbVar = zfb.a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
