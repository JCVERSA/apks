package com.google.common.hash;

import defpackage.xq5;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

final class LongAdder extends Striped64 implements Serializable, xq5 {
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
    public void add(long j) {
        int length;
        Striped64.b bVar;
        Striped64.b[] bVarArr = this.cells;
        if (bVarArr == null) {
            long j2 = this.base;
            if (casBase(j2, j2 + j)) {
                return;
            }
        }
        int[] iArr = Striped64.threadHashCode.get();
        boolean zA = true;
        if (iArr != null && bVarArr != null && (length = bVarArr.length) >= 1 && (bVar = bVarArr[(length - 1) & iArr[0]]) != null) {
            long j3 = bVar.a;
            zA = bVar.a(j3, j3 + j);
            if (zA) {
                return;
            }
        }
        retryUpdate(j, iArr, zA);
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
    public final long fn(long j, long j2) {
        return j + j2;
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
        long j = this.base;
        Striped64.b[] bVarArr = this.cells;
        if (bVarArr != null) {
            for (Striped64.b bVar : bVarArr) {
                if (bVar != null) {
                    j += bVar.a;
                }
            }
        }
        return j;
    }

    public long sumThenReset() {
        long j = this.base;
        Striped64.b[] bVarArr = this.cells;
        this.base = 0L;
        if (bVarArr != null) {
            for (Striped64.b bVar : bVarArr) {
                if (bVar != null) {
                    j += bVar.a;
                    bVar.a = 0L;
                }
            }
        }
        return j;
    }

    public String toString() {
        return Long.toString(sum());
    }
}
