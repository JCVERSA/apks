package com.google.android.exoplayer2.util;

import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;

public final class PriorityTaskManager {

    private final Object f26779a = new Object();

    private final PriorityQueue f26780b = new PriorityQueue(10, Collections.reverseOrder());

    private int f26781c = Integer.MIN_VALUE;

    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i10, int i11) {
            super("Priority too low [priority=" + i10 + ", highest=" + i11 + "]");
        }
    }

    public void a(int i10) {
        synchronized (this.f26779a) {
            this.f26780b.add(Integer.valueOf(i10));
            this.f26781c = Math.max(this.f26781c, i10);
        }
    }

    public void b(int i10) {
        synchronized (this.f26779a) {
            while (this.f26781c != i10) {
                try {
                    this.f26779a.wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void c(int i10) {
        synchronized (this.f26779a) {
            try {
                if (this.f26781c != i10) {
                    throw new PriorityTooLowException(i10, this.f26781c);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void d(int i10) {
        synchronized (this.f26779a) {
            this.f26780b.remove(Integer.valueOf(i10));
            this.f26781c = this.f26780b.isEmpty() ? Integer.MIN_VALUE : ((Integer) p0.j((Integer) this.f26780b.peek())).intValue();
            this.f26779a.notifyAll();
        }
    }
}
