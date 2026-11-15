package defpackage;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class abd {
    public final Map a = new HashMap();
    public final c b = new c(null);

    public static class b {
        public final Lock a = new ReentrantLock();
        public int b;

        public b(a aVar) {
        }
    }

    public static class c {
        public final Queue a = new ArrayDeque();

        public c(a aVar) {
        }

        public b a() {
            b bVar;
            synchronized (this.a) {
                bVar = (b) this.a.poll();
            }
            return bVar == null ? new b(null) : bVar;
        }

        public void b(b bVar) {
            synchronized (this.a) {
                try {
                    if (this.a.size() < 10) {
                        this.a.offer(bVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void a(zad zadVar) {
        b bVarA;
        synchronized (this) {
            try {
                bVarA = (b) this.a.get(zadVar);
                if (bVarA == null) {
                    bVarA = this.b.a();
                    this.a.put(zadVar, bVarA);
                }
                bVarA.b++;
            } catch (Throwable th) {
                throw th;
            }
        }
        bVarA.a.lock();
    }

    public void b(zad zadVar) {
        b bVar;
        synchronized (this) {
            try {
                bVar = (b) this.a.get(zadVar);
                int i = bVar.b;
                if (i < 1) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Cannot release a lock that is not held, key: ");
                    sb.append(zadVar);
                    sb.append(", interestedThreads: ");
                    sb.append(bVar.b);
                    throw new IllegalStateException(sb.toString());
                }
                int i2 = i - 1;
                bVar.b = i2;
                if (i2 == 0) {
                    b bVar2 = (b) this.a.remove(zadVar);
                    if (!bVar2.equals(bVar)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Removed the wrong lock, expected to remove: ");
                        sb2.append(bVar);
                        sb2.append(", but actually removed: ");
                        sb2.append(bVar2);
                        sb2.append(", key: ");
                        sb2.append(zadVar);
                        throw new IllegalStateException(sb2.toString());
                    }
                    this.b.b(bVar2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        bVar.a.unlock();
    }
}
