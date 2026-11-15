package com.google.common.util.concurrent;

import java.util.logging.Logger;

final class q {

    private final Object f30210a = new Object();

    private final String f30211b;

    private volatile Logger f30212c;

    q(Class cls) {
        this.f30211b = cls.getName();
    }

    Logger a() {
        Logger logger = this.f30212c;
        if (logger != null) {
            return logger;
        }
        synchronized (this.f30210a) {
            try {
                Logger logger2 = this.f30212c;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.f30211b);
                this.f30212c = logger3;
                return logger3;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
