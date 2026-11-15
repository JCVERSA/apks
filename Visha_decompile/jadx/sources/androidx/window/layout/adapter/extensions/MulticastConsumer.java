package androidx.window.layout.adapter.extensions;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.core.util.Consumer;
import androidx.window.extensions.layout.WindowLayoutInfo;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u000e\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0001¢\u0006\u0004\b\u0010\u0010\u000fJ\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R \u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00010\u001a8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroidx/window/layout/adapter/extensions/MulticastConsumer;", "Landroidx/core/util/Consumer;", "Landroidx/window/extensions/layout/WindowLayoutInfo;", "Landroidx/window/extensions/core/util/function/Consumer;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "accept", "(Landroidx/window/extensions/layout/WindowLayoutInfo;)V", "Landroidx/window/layout/WindowLayoutInfo;", "listener", "addListener", "(Landroidx/core/util/Consumer;)V", "removeListener", "", "isEmpty", "()Z", "Landroid/content/Context;", "Ljava/util/concurrent/locks/ReentrantLock;", "multicastConsumerLock", "Ljava/util/concurrent/locks/ReentrantLock;", "lastKnownValue", "Landroidx/window/layout/WindowLayoutInfo;", "", "registeredListeners", "Ljava/util/Set;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MulticastConsumer implements Consumer<WindowLayoutInfo>, androidx.window.extensions.core.util.function.Consumer<WindowLayoutInfo> {
    private final Context context;

    @GuardedBy("lock")
    private androidx.window.layout.WindowLayoutInfo lastKnownValue;
    private final ReentrantLock multicastConsumerLock;

    @GuardedBy("lock")
    private final Set<Consumer<androidx.window.layout.WindowLayoutInfo>> registeredListeners;

    public MulticastConsumer(Context context) {
        y45.j(context, "context");
        this.context = context;
        this.multicastConsumerLock = new ReentrantLock();
        this.registeredListeners = new LinkedHashSet();
    }

    public final void addListener(Consumer<androidx.window.layout.WindowLayoutInfo> listener) {
        y45.j(listener, "listener");
        ReentrantLock reentrantLock = this.multicastConsumerLock;
        reentrantLock.lock();
        try {
            androidx.window.layout.WindowLayoutInfo windowLayoutInfo = this.lastKnownValue;
            if (windowLayoutInfo != null) {
                listener.accept(windowLayoutInfo);
            }
            this.registeredListeners.add(listener);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean isEmpty() {
        return this.registeredListeners.isEmpty();
    }

    public final void removeListener(Consumer<androidx.window.layout.WindowLayoutInfo> listener) {
        y45.j(listener, "listener");
        ReentrantLock reentrantLock = this.multicastConsumerLock;
        reentrantLock.lock();
        try {
            this.registeredListeners.remove(listener);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    public void accept(WindowLayoutInfo value) {
        y45.j(value, ES6Iterator.VALUE_PROPERTY);
        ReentrantLock reentrantLock = this.multicastConsumerLock;
        reentrantLock.lock();
        try {
            this.lastKnownValue = ExtensionsWindowLayoutInfoAdapter.INSTANCE.translate$window_release(this.context, value);
            Iterator<T> it = this.registeredListeners.iterator();
            while (it.hasNext()) {
                ((Consumer) it.next()).accept(this.lastKnownValue);
            }
            zfb zfbVar = zfb.a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
