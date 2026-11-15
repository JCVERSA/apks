package com.sun.jna;

import com.sun.jna.internal.Cleaner;
import defpackage.ahc;
import java.io.Closeable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class Memory extends Pointer implements Closeable {
    public static final Map e = new ConcurrentHashMap();
    public static final ahc f = new ahc();
    public final Cleaner.a c;
    public long d;

    public static final class MemoryDisposer implements Runnable {
        private long peer;

        public MemoryDisposer(long j) {
            this.peer = j;
        }

        @Override
        public synchronized void run() {
            try {
                Memory.n(this.peer);
                Memory.e.remove(Long.valueOf(this.peer));
                this.peer = 0L;
            } catch (Throwable th) {
                Memory.e.remove(Long.valueOf(this.peer));
                this.peer = 0L;
                throw th;
            }
        }
    }

    public Memory(long j) {
        this.d = j;
        if (j <= 0) {
            throw new IllegalArgumentException("Allocation size must be greater than zero");
        }
        long jO = o(j);
        this.b = jO;
        if (jO != 0) {
            e.put(Long.valueOf(jO), new WeakReference(this));
            this.c = Cleaner.d().e(this, new MemoryDisposer(this.b));
        } else {
            throw new OutOfMemoryError("Cannot allocate " + j + " bytes");
        }
    }

    public static void k() {
        Iterator it = new ArrayList(e.values()).iterator();
        while (it.hasNext()) {
            Memory memory = (Memory) ((Reference) it.next()).get();
            if (memory != null) {
                memory.close();
            }
        }
    }

    public static void n(long j) {
        if (j != 0) {
            Native.free(j);
        }
    }

    public static long o(long j) {
        return Native.malloc(j);
    }

    @Override
    public void b(long j, byte[] bArr, int i, int i2) {
        g(j, i2);
        super.b(j, bArr, i, i2);
    }

    @Override
    public void close() {
        this.b = 0L;
        Cleaner.a aVar = this.c;
        if (aVar != null) {
            aVar.clean();
        }
    }

    public void g(long j, long j2) {
        if (j < 0) {
            throw new IndexOutOfBoundsException("Invalid offset: " + j);
        }
        long j3 = j + j2;
        if (j3 <= this.d) {
            return;
        }
        throw new IndexOutOfBoundsException("Bounds exceeds available space : size=" + this.d + ", offset=" + j3);
    }

    public void h() {
        a(this.d);
    }

    @Override
    public String toString() {
        return "allocated@0x" + Long.toHexString(this.b) + " (" + this.d + " bytes)";
    }
}
