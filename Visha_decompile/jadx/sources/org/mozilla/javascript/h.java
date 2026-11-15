package org.mozilla.javascript;

import java.util.Iterator;
import java.util.concurrent.locks.StampedLock;

public class h extends g {
    public final StampedLock c;

    public h(int i) {
        super(i);
        this.c = new StampedLock();
    }

    @Override
    public void addSlot(ScriptableObject.Slot slot) {
        long jWriteLock = this.c.writeLock();
        try {
            b();
            this.b.addSlot(slot);
        } finally {
            this.c.unlockWrite(jWriteLock);
        }
    }

    @Override
    public void b() {
        super.b();
    }

    @Override
    public int c() {
        return this.b.size();
    }

    @Override
    public long f() {
        return this.c.readLock();
    }

    @Override
    public ScriptableObject.Slot get(Object obj, int i, ScriptableObject.SlotAccess slotAccess) {
        long jWriteLock = this.c.writeLock();
        try {
            if (slotAccess != ScriptableObject.SlotAccess.QUERY) {
                b();
            }
            return this.b.get(obj, i, slotAccess);
        } finally {
            this.c.unlockWrite(jWriteLock);
        }
    }

    @Override
    public void i(long j) {
        this.c.unlockRead(j);
    }

    @Override
    public boolean isEmpty() {
        long jTryOptimisticRead = this.c.tryOptimisticRead();
        boolean zIsEmpty = this.b.isEmpty();
        if (this.c.validate(jTryOptimisticRead)) {
            return zIsEmpty;
        }
        long lock = this.c.readLock();
        try {
            return this.b.isEmpty();
        } finally {
            this.c.unlockRead(lock);
        }
    }

    @Override
    public Iterator<ScriptableObject.Slot> iterator() {
        return this.b.iterator();
    }

    @Override
    public ScriptableObject.Slot query(Object obj, int i) {
        long jTryOptimisticRead = this.c.tryOptimisticRead();
        ScriptableObject.Slot slotQuery = this.b.query(obj, i);
        if (this.c.validate(jTryOptimisticRead)) {
            return slotQuery;
        }
        long lock = this.c.readLock();
        try {
            return this.b.query(obj, i);
        } finally {
            this.c.unlockRead(lock);
        }
    }

    @Override
    public void remove(Object obj, int i) {
        long jWriteLock = this.c.writeLock();
        try {
            this.b.remove(obj, i);
        } finally {
            this.c.unlockWrite(jWriteLock);
        }
    }

    @Override
    public int size() {
        long jTryOptimisticRead = this.c.tryOptimisticRead();
        int size = this.b.size();
        if (this.c.validate(jTryOptimisticRead)) {
            return size;
        }
        long lock = this.c.readLock();
        try {
            return this.b.size();
        } finally {
            this.c.unlockRead(lock);
        }
    }
}
