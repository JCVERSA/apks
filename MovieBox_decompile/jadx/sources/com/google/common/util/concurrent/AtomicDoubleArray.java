package com.google.common.util.concurrent;

import com.google.common.primitives.ImmutableLongArray;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongArray;

public class AtomicDoubleArray implements Serializable {
    private static final long serialVersionUID = 0;
    private transient AtomicLongArray longs;

    public AtomicDoubleArray(int i10) {
        this.longs = new AtomicLongArray(i10);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i10 = objectInputStream.readInt();
        ImmutableLongArray.b bVarBuilder = ImmutableLongArray.builder();
        for (int i11 = 0; i11 < i10; i11++) {
            bVarBuilder.a(Double.doubleToRawLongBits(objectInputStream.readDouble()));
        }
        this.longs = new AtomicLongArray(bVarBuilder.d().toArray());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        int length = length();
        objectOutputStream.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            objectOutputStream.writeDouble(get(i10));
        }
    }

    public double addAndGet(int i10, double d10) {
        long j10;
        double dLongBitsToDouble;
        do {
            j10 = this.longs.get(i10);
            dLongBitsToDouble = Double.longBitsToDouble(j10) + d10;
        } while (!this.longs.compareAndSet(i10, j10, Double.doubleToRawLongBits(dLongBitsToDouble)));
        return dLongBitsToDouble;
    }

    public final boolean compareAndSet(int i10, double d10, double d11) {
        return this.longs.compareAndSet(i10, Double.doubleToRawLongBits(d10), Double.doubleToRawLongBits(d11));
    }

    public final double get(int i10) {
        return Double.longBitsToDouble(this.longs.get(i10));
    }

    public final double getAndAdd(int i10, double d10) {
        long j10;
        double dLongBitsToDouble;
        do {
            j10 = this.longs.get(i10);
            dLongBitsToDouble = Double.longBitsToDouble(j10);
        } while (!this.longs.compareAndSet(i10, j10, Double.doubleToRawLongBits(dLongBitsToDouble + d10)));
        return dLongBitsToDouble;
    }

    public final double getAndSet(int i10, double d10) {
        return Double.longBitsToDouble(this.longs.getAndSet(i10, Double.doubleToRawLongBits(d10)));
    }

    public final void lazySet(int i10, double d10) {
        this.longs.lazySet(i10, Double.doubleToRawLongBits(d10));
    }

    public final int length() {
        return this.longs.length();
    }

    public final void set(int i10, double d10) {
        this.longs.set(i10, Double.doubleToRawLongBits(d10));
    }

    public String toString() {
        int length = length();
        int i10 = length - 1;
        if (i10 == -1) {
            return "[]";
        }
        StringBuilder sb2 = new StringBuilder(length * 19);
        sb2.append('[');
        int i11 = 0;
        while (true) {
            sb2.append(Double.longBitsToDouble(this.longs.get(i11)));
            if (i11 == i10) {
                sb2.append(']');
                return sb2.toString();
            }
            sb2.append(',');
            sb2.append(' ');
            i11++;
        }
    }

    public final boolean weakCompareAndSet(int i10, double d10, double d11) {
        return this.longs.weakCompareAndSet(i10, Double.doubleToRawLongBits(d10), Double.doubleToRawLongBits(d11));
    }

    public AtomicDoubleArray(double[] dArr) {
        int length = dArr.length;
        long[] jArr = new long[length];
        for (int i10 = 0; i10 < length; i10++) {
            jArr[i10] = Double.doubleToRawLongBits(dArr[i10]);
        }
        this.longs = new AtomicLongArray(jArr);
    }
}
