package com.google.common.util.concurrent;

import defpackage.kj5;
import defpackage.s18;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;

public abstract class AbstractScheduledService {
    public static final kj5 a = new kj5(AbstractScheduledService.class);

    public final class ServiceDelegate extends b {

        public class Task implements Runnable {
            final ServiceDelegate this$1;

            public Task(ServiceDelegate serviceDelegate) {
            }

            @Override
            public void run() {
                ServiceDelegate.c(null).lock();
                try {
                    ServiceDelegate.d(null);
                    throw null;
                } catch (Throwable th) {
                    try {
                        s18.b(th);
                        try {
                            throw null;
                        } catch (Exception e) {
                            s18.b(e);
                            AbstractScheduledService.a.a().log(Level.WARNING, "Error while attempting to shut down the service after failure.", (Throwable) e);
                            throw null;
                        }
                    } catch (Throwable th2) {
                        ServiceDelegate.c(null).unlock();
                        throw th2;
                    }
                }
            }
        }

        public static ReentrantLock c(ServiceDelegate serviceDelegate) {
            throw null;
        }

        public static a d(ServiceDelegate serviceDelegate) {
            throw null;
        }
    }

    public interface a {
    }
}
