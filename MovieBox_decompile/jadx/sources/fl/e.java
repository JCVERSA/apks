package fl;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class e {

    private final Map f60194a = new HashMap();

    private final c f60195b = new c(null);

    private static class b {

        final Lock f60196a = new ReentrantLock();

        int f60197b;

        b(a aVar) {
        }
    }

    private static class c {

        private final Queue f60198a = new ArrayDeque();

        c(a aVar) {
        }

        b a() {
            b bVar;
            synchronized (this.f60198a) {
                bVar = (b) this.f60198a.poll();
            }
            return bVar == null ? new b(null) : bVar;
        }

        void b(b bVar) {
            synchronized (this.f60198a) {
                try {
                    if (this.f60198a.size() < 10) {
                        this.f60198a.offer(bVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void a(el.e eVar) {
        b bVarA;
        synchronized (this) {
            try {
                bVarA = (b) this.f60194a.get(eVar);
                if (bVarA == null) {
                    bVarA = this.f60195b.a();
                    this.f60194a.put(eVar, bVarA);
                }
                bVarA.f60197b++;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        bVarA.f60196a.lock();
    }

    public void b(el.e eVar) {
        b bVar;
        synchronized (this) {
            try {
                bVar = (b) this.f60194a.get(eVar);
                int i10 = bVar.f60197b;
                if (i10 < 1) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Cannot release a lock that is not held, key: ");
                    sb2.append(eVar);
                    sb2.append(", interestedThreads: ");
                    sb2.append(bVar.f60197b);
                    throw new IllegalStateException(sb2.toString());
                }
                int i11 = i10 - 1;
                bVar.f60197b = i11;
                if (i11 == 0) {
                    b bVar2 = (b) this.f60194a.remove(eVar);
                    if (!bVar2.equals(bVar)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Removed the wrong lock, expected to remove: ");
                        sb3.append(bVar);
                        sb3.append(", but actually removed: ");
                        sb3.append(bVar2);
                        sb3.append(", key: ");
                        sb3.append(eVar);
                        throw new IllegalStateException(sb3.toString());
                    }
                    this.f60195b.b(bVar2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        bVar.f60196a.unlock();
    }
}
