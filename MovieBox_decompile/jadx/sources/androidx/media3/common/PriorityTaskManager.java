package androidx.media3.common;

import androidx.media3.common.util.a1;
import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;

public final class PriorityTaskManager {

    private final Object f9471a = new Object();

    private final PriorityQueue f9472b = new PriorityQueue(10, Collections.reverseOrder());

    private int f9473c = Integer.MIN_VALUE;

    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i10, int i11) {
            super("Priority too low [priority=" + i10 + ", highest=" + i11 + "]");
        }
    }

    public void a(int i10) {
        synchronized (this.f9471a) {
            this.f9472b.add(Integer.valueOf(i10));
            this.f9473c = Math.max(this.f9473c, i10);
        }
    }

    public void b(int i10) {
        synchronized (this.f9471a) {
            while (this.f9473c != i10) {
                try {
                    this.f9471a.wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void c(int i10) {
        synchronized (this.f9471a) {
            try {
                if (this.f9473c != i10) {
                    throw new PriorityTooLowException(i10, this.f9473c);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void d(int i10) {
        synchronized (this.f9471a) {
            this.f9472b.remove(Integer.valueOf(i10));
            this.f9473c = this.f9472b.isEmpty() ? Integer.MIN_VALUE : ((Integer) a1.i((Integer) this.f9472b.peek())).intValue();
            this.f9471a.notifyAll();
        }
    }
}
