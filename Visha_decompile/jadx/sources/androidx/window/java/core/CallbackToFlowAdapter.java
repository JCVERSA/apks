package androidx.window.java.core;

import androidx.core.util.Consumer;
import defpackage.ef3;
import defpackage.el0;
import defpackage.nz3;
import defpackage.y45;
import defpackage.zfb;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlinx.coroutines.d;
import kotlinx.coroutines.j;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J;\u0010\f\u001a\u00020\u000b\"\b\b\u0000\u0010\u0004*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000e\u001a\u00020\u000b2\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R$\u0010\u0015\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\u00140\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/window/java/core/CallbackToFlowAdapter;", "", MethodDecl.initName, "()V", "T", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/core/util/Consumer;", "consumer", "Lnz3;", "flow", "Lzfb;", "connect", "(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;Lnz3;)V", "disconnect", "(Landroidx/core/util/Consumer;)V", "Ljava/util/concurrent/locks/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "", "Lkotlinx/coroutines/j;", "consumerToJobMap", "Ljava/util/Map;", "window-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CallbackToFlowAdapter {
    private final ReentrantLock lock = new ReentrantLock();
    private final Map<Consumer<?>, j> consumerToJobMap = new LinkedHashMap();

    public final <T> void connect(Executor executor, Consumer<T> consumer, nz3 flow) {
        y45.j(executor, "executor");
        y45.j(consumer, "consumer");
        y45.j(flow, "flow");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.consumerToJobMap.get(consumer) == null) {
                this.consumerToJobMap.put(consumer, el0.d(d.a(ef3.a(executor)), null, null, new CallbackToFlowAdapter$connect$1$1(flow, consumer, null), 3, null));
            }
            zfb zfbVar = zfb.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void disconnect(Consumer<?> consumer) {
        y45.j(consumer, "consumer");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            j jVar = this.consumerToJobMap.get(consumer);
            if (jVar != null) {
                j.a.b(jVar, null, 1, null);
            }
            this.consumerToJobMap.remove(consumer);
        } finally {
            reentrantLock.unlock();
        }
    }
}
