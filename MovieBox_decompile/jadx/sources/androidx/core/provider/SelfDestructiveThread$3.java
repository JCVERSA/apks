package androidx.core.provider;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

class SelfDestructiveThread$3 implements Runnable {
    final l this$0;
    final Callable val$callable;
    final Condition val$cond;
    final AtomicReference val$holder;
    final ReentrantLock val$lock;
    final AtomicBoolean val$running;

    SelfDestructiveThread$3(l lVar, AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
        this.val$holder = atomicReference;
        this.val$callable = callable;
        this.val$lock = reentrantLock;
        this.val$running = atomicBoolean;
        this.val$cond = condition;
    }

    @Override
    public void run() {
        try {
            this.val$holder.set(this.val$callable.call());
        } catch (Exception unused) {
        }
        this.val$lock.lock();
        try {
            this.val$running.set(false);
            this.val$cond.signal();
        } finally {
            this.val$lock.unlock();
        }
    }
}
