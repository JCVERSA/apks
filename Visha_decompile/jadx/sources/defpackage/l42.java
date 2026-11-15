package defpackage;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.storage.a;

public class l42 implements a {
    public final Lock b;

    public l42(Lock lock) {
        y45.j(lock, "lock");
        this.b = lock;
    }

    public final Lock a() {
        return this.b;
    }

    @Override
    public void lock() {
        this.b.lock();
    }

    @Override
    public void unlock() {
        this.b.unlock();
    }

    public l42(Lock lock, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ReentrantLock() : lock);
    }
}
