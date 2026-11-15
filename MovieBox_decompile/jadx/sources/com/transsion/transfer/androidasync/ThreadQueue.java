package com.transsion.transfer.androidasync;

import java.util.LinkedList;
import java.util.WeakHashMap;
import java.util.concurrent.Semaphore;

class ThreadQueue extends LinkedList<Runnable> {

    private static final WeakHashMap f53101a = new WeakHashMap();
    Semaphore queueSemaphore = new Semaphore(0);
    c waiter;

    ThreadQueue() {
    }

    static ThreadQueue getOrCreateThreadQueue(Thread thread) {
        ThreadQueue threadQueue;
        WeakHashMap weakHashMap = f53101a;
        synchronized (weakHashMap) {
            try {
                threadQueue = (ThreadQueue) weakHashMap.get(thread);
                if (threadQueue == null) {
                    threadQueue = new ThreadQueue();
                    weakHashMap.put(thread, threadQueue);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return threadQueue;
    }

    static void release(c cVar) {
        WeakHashMap weakHashMap = f53101a;
        synchronized (weakHashMap) {
            try {
                for (ThreadQueue threadQueue : weakHashMap.values()) {
                    if (threadQueue.waiter == cVar) {
                        threadQueue.queueSemaphore.release();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean add(Runnable runnable) {
        boolean zAdd;
        synchronized (this) {
            zAdd = super.add(runnable);
        }
        return zAdd;
    }

    @Override
    public boolean remove(Object obj) {
        boolean zRemove;
        synchronized (this) {
            zRemove = super.remove(obj);
        }
        return zRemove;
    }

    @Override
    public Runnable remove() {
        synchronized (this) {
            try {
                if (isEmpty()) {
                    return null;
                }
                return (Runnable) super.remove();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
