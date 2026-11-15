package com.sun.jna.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Cleaner {
    public static final Cleaner d = new Cleaner();
    public final ReferenceQueue a = new ReferenceQueue();
    public final Thread b;
    public b c;

    public interface a {
        void clean();
    }

    public static class b extends PhantomReference implements a {
        public final Cleaner b;
        public final Runnable c;
        public b d;
        public b e;

        public b(Cleaner cleaner, Object obj, ReferenceQueue referenceQueue, Runnable runnable) {
            super(obj, referenceQueue);
            this.b = cleaner;
            this.c = runnable;
        }

        public b a() {
            return this.e;
        }

        public b b() {
            return this.d;
        }

        public void c(b bVar) {
            this.e = bVar;
        }

        @Override
        public void clean() {
            if (this.b.f(this)) {
                this.c.run();
            }
        }

        public void d(b bVar) {
            this.d = bVar;
        }
    }

    public Cleaner() {
        Thread thread = new Thread() {
            @Override
            public void run() {
                while (true) {
                    try {
                        Reference referenceRemove = Cleaner.this.a.remove();
                        if (referenceRemove instanceof b) {
                            ((b) referenceRemove).clean();
                        }
                    } catch (InterruptedException unused) {
                        return;
                    } catch (Exception e) {
                        Logger.getLogger(Cleaner.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                    }
                }
            }
        };
        this.b = thread;
        thread.setName("JNA Cleaner");
        thread.setDaemon(true);
        thread.start();
    }

    public static Cleaner d() {
        return d;
    }

    public final synchronized b c(b bVar) {
        try {
            b bVar2 = this.c;
            if (bVar2 == null) {
                this.c = bVar;
            } else {
                bVar.c(bVar2);
                this.c.d(bVar);
                this.c = bVar;
            }
        } catch (Throwable th) {
            throw th;
        }
        return bVar;
    }

    public synchronized a e(Object obj, Runnable runnable) {
        return c(new b(this, obj, this.a, runnable));
    }

    public final synchronized boolean f(b bVar) {
        boolean z;
        boolean z2;
        try {
            z = true;
            if (bVar == this.c) {
                this.c = bVar.a();
                z2 = true;
            } else {
                z2 = false;
            }
            if (bVar.b() != null) {
                bVar.b().c(bVar.a());
            }
            if (bVar.a() != null) {
                bVar.a().d(bVar.b());
            }
            if (bVar.b() == null && bVar.a() == null) {
                z = z2;
            }
            bVar.c(null);
            bVar.d(null);
        } catch (Throwable th) {
            throw th;
        }
        return z;
    }
}
