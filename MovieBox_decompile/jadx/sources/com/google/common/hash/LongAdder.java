package com.google.common.hash;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

final class LongAdder extends Striped64 implements Serializable, h {
    private static final long serialVersionUID = 7249069246863182397L;

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.busy = 0;
        this.cells = null;
        this.base = objectInputStream.readLong();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(sum());
    }

    @Override
    public void add(long j10) {
        int length;
        Striped64.b bVar;
        Striped64.b[] bVarArr = this.cells;
        if (bVarArr == null) {
            long j11 = this.base;
            if (casBase(j11, j11 + j10)) {
                return;
            }
        }
        int[] iArr = Striped64.threadHashCode.get();
        boolean zA = true;
        if (iArr != null && bVarArr != null && (length = bVarArr.length) >= 1 && (bVar = bVarArr[(length - 1) & iArr[0]]) != null) {
            long j12 = bVar.f30051a;
            zA = bVar.a(j12, j12 + j10);
            if (zA) {
                return;
            }
        }
        retryUpdate(j10, iArr, zA);
    }

    public void decrement() {
        add(-1L);
    }

    @Override
    public double doubleValue() {
        return sum();
    }

    @Override
    public float floatValue() {
        return sum();
    }

    @Override
    final long fn(long j10, long j11) {
        return j10 + j11;
    }

    @Override
    public void increment() {
        add(1L);
    }

    @Override
    public int intValue() {
        return (int) sum();
    }

    @Override
    public long longValue() {
        return sum();
    }

    public void reset() {
        internalReset(0L);
    }

    @Override
    public long sum() {
        long j10 = this.base;
        Striped64.b[] bVarArr = this.cells;
        if (bVarArr != null) {
            for (Striped64.b bVar : bVarArr) {
                if (bVar != null) {
                    j10 += bVar.f30051a;
                }
            }
        }
        return j10;
    }

    public long sumThenReset() {
        long j10 = this.base;
        Striped64.b[] bVarArr = this.cells;
        this.base = 0L;
        if (bVarArr != null) {
            for (Striped64.b bVar : bVarArr) {
                if (bVar != null) {
                    j10 += bVar.f30051a;
                    bVar.f30051a = 0L;
                }
            }
        }
        return j10;
    }

    public String toString() {
        return Long.toString(sum());
    }
}
