package com.google.common.util.concurrent;

import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;

public abstract class AbstractScheduledService {

    private static final q f30169a = new q(AbstractScheduledService.class);

    private final class ServiceDelegate extends b {

        class Task implements Runnable {
            final ServiceDelegate this$1;

            Task(ServiceDelegate serviceDelegate) {
            }

            @Override
            public void run() {
                ServiceDelegate.c(null).lock();
                try {
                    ServiceDelegate.d(null);
                    throw null;
                } catch (Throwable th2) {
                    try {
                        w.b(th2);
                        try {
                            throw null;
                        } catch (Exception e10) {
                            w.b(e10);
                            AbstractScheduledService.f30169a.a().log(Level.WARNING, "Error while attempting to shut down the service after failure.", (Throwable) e10);
                            throw null;
                        }
                    } catch (Throwable th3) {
                        ServiceDelegate.c(null).unlock();
                        throw th3;
                    }
                }
            }
        }

        static ReentrantLock c(ServiceDelegate serviceDelegate) {
            throw null;
        }

        static a d(ServiceDelegate serviceDelegate) {
            throw null;
        }
    }

    interface a {
    }
}
