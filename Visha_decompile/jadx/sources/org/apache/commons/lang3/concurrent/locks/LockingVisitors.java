package org.apache.commons.lang3.concurrent.locks;

import java.util.Objects;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.StampedLock;
import java.util.function.Supplier;
import org.apache.commons.lang3.function.Failable;
import org.apache.commons.lang3.function.FailableConsumer;
import org.apache.commons.lang3.function.FailableFunction;

public class LockingVisitors {

    public static class LockVisitor<O, L> {
        private final L lock;
        private final O object;
        private final Supplier<Lock> readLockSupplier;
        private final Supplier<Lock> writeLockSupplier;

        public LockVisitor(O o, L l, Supplier<Lock> supplier, Supplier<Lock> supplier2) {
            Objects.requireNonNull(o, "object");
            this.object = o;
            Objects.requireNonNull(l, "lock");
            this.lock = l;
            Objects.requireNonNull(supplier, "readLockSupplier");
            this.readLockSupplier = supplier;
            Objects.requireNonNull(supplier2, "writeLockSupplier");
            this.writeLockSupplier = supplier2;
        }

        public void acceptReadLocked(FailableConsumer<O, ?> failableConsumer) {
            lockAcceptUnlock(this.readLockSupplier, failableConsumer);
        }

        public void acceptWriteLocked(FailableConsumer<O, ?> failableConsumer) {
            lockAcceptUnlock(this.writeLockSupplier, failableConsumer);
        }

        public <T> T applyReadLocked(FailableFunction<O, T, ?> failableFunction) {
            return (T) lockApplyUnlock(this.readLockSupplier, failableFunction);
        }

        public <T> T applyWriteLocked(FailableFunction<O, T, ?> failableFunction) {
            return (T) lockApplyUnlock(this.writeLockSupplier, failableFunction);
        }

        public L getLock() {
            return this.lock;
        }

        public O getObject() {
            return this.object;
        }

        public void lockAcceptUnlock(Supplier<Lock> supplier, FailableConsumer<O, ?> failableConsumer) {
            Lock lock = supplier.get();
            lock.lock();
            try {
                failableConsumer.accept(this.object);
                lock.unlock();
            } catch (Throwable th) {
                try {
                    throw Failable.rethrow(th);
                } catch (Throwable th2) {
                    lock.unlock();
                    throw th2;
                }
            }
        }

        public <T> T lockApplyUnlock(Supplier<Lock> supplier, FailableFunction<O, T, ?> failableFunction) {
            Lock lock = supplier.get();
            lock.lock();
            try {
                T tApply = failableFunction.apply(this.object);
                lock.unlock();
                return tApply;
            } catch (Throwable th) {
                try {
                    throw Failable.rethrow(th);
                } catch (Throwable th2) {
                    lock.unlock();
                    throw th2;
                }
            }
        }
    }

    public static class ReadWriteLockVisitor<O> extends LockVisitor<O, ReadWriteLock> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReadWriteLockVisitor(O o, final ReadWriteLock readWriteLock) {
            super(o, readWriteLock, new Supplier() {
                @Override
                public final Object get() {
                    return readWriteLock.readLock();
                }
            }, new Supplier() {
                @Override
                public final Object get() {
                    return readWriteLock.writeLock();
                }
            });
            readWriteLock.getClass();
        }
    }

    public static class StampedLockVisitor<O> extends LockVisitor<O, StampedLock> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StampedLockVisitor(O o, final StampedLock stampedLock) {
            super(o, stampedLock, new Supplier() {
                @Override
                public final Object get() {
                    return stampedLock.asReadLock();
                }
            }, new Supplier() {
                @Override
                public final Object get() {
                    return stampedLock.asWriteLock();
                }
            });
            stampedLock.getClass();
        }
    }

    public static <O> ReadWriteLockVisitor<O> reentrantReadWriteLockVisitor(O o) {
        return new ReadWriteLockVisitor<>(o, new ReentrantReadWriteLock());
    }

    public static <O> StampedLockVisitor<O> stampedLockVisitor(O o) {
        return new StampedLockVisitor<>(o, new StampedLock());
    }
}
