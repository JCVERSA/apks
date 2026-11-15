package org.bouncycastle.jcajce.provider.drbg;

import defpackage.fz4;
import defpackage.qi8;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;

class EntropyGatherer implements Runnable {
    private static final Logger LOG = Logger.getLogger(EntropyGatherer.class.getName());
    private final fz4 baseRandom;
    private final AtomicReference<byte[]> entropy;
    private final long pause = getPause();
    private final AtomicBoolean seedAvailable;

    public EntropyGatherer(fz4 fz4Var, AtomicBoolean atomicBoolean, AtomicReference<byte[]> atomicReference) {
        this.baseRandom = fz4Var;
        this.seedAvailable = atomicBoolean;
        this.entropy = atomicReference;
    }

    private static long getPause() {
        String strB = qi8.b("org.bouncycastle.drbg.gather_pause_secs");
        if (strB != null) {
            try {
                return Long.parseLong(strB) * 1000;
            } catch (Exception unused) {
            }
        }
        return 5000L;
    }

    @Override
    public void run() {
        try {
            this.entropy.set(this.baseRandom.a(this.pause));
            this.seedAvailable.set(true);
        } catch (InterruptedException unused) {
            Logger logger = LOG;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine("entropy request interrupted - exiting");
            }
            Thread.currentThread().interrupt();
        }
    }
}
